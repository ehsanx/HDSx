library(shiny)
library(tidyverse)
library(nhanesA)
library(plotly)
library(bslib)
library(DT)
library(survey) 
library(srvyr) 

# Run from the repository root with:
# shiny::runApp("examples/nhanes-equity/app")

case_study_data_dir <- function() {
  candidates <- c(
    file.path("..", "data"),
    file.path("examples", "nhanes-equity", "data")
  )
  for (candidate in candidates) {
    if (dir.exists(candidate)) {
      return(normalizePath(candidate, winslash = "/", mustWork = TRUE))
    }
  }
  normalizePath(file.path("..", "data"), winslash = "/", mustWork = FALSE)
}

# --- UI ---
ui <- page_sidebar(
  title = "NHANES Health Equity Dashboard",
  theme = bs_theme(bootswatch = "flatly"), 
  
  sidebar = sidebar(
    title = "Analysis Settings",
    
    # 1. OUTCOME
    selectInput("outcome_var", "Health Metric (Y-Axis):",
                choices = c("Body Mass Index (kg/m²)" = "BMI",
                            "Weight (kg)" = "Weight",
                            "Height (cm)" = "Height",
                            "Waist Circumference (cm)" = "Waist",
                            "Waist-to-Height Ratio" = "WHtR"),
                selected = "BMI"),
    
    hr(),
    
    # 2. STATISTICAL METHOD
    h5("Statistical Method"),
    selectInput("survey_method", "Correction Level:",
                choices = c("Uncorrected (Raw Sample)" = "raw",
                            "Correct SE (Strata + Cluster)" = "design_se",
                            "Fully Weighted (Pop. Estimate)" = "weighted"),
                selected = "raw"),
    helpText(style="font-size: 0.75em; color: #666;",
             "Note: Correct SE & Weighted methods use Domain Estimation."),
    
    hr(),
    
    # 3. FILTERS
    h5("Population Filter"),
    sliderInput("age_range", "Age Range:",
                min = 20, max = 80, value = c(20, 80), step = 5),
    
    hr(),
    
    # 4. STRATA
    selectInput("strat_var1", "Primary Grouping (Rows):",
                choices = c("Education" = "Education",
                            "Marital Status" = "Marital",
                            "Sex" = "Gender",
                            "Race/Ethnicity" = "Race",
                            "Income Level" = "IncomeGroup"),
                selected = "Education"),
    
    selectInput("strat_var2", "Secondary Grouping (Cols/Panels):",
                choices = c("None" = "None",
                            "Education" = "Education",
                            "Marital Status" = "Marital",
                            "Sex" = "Gender",
                            "Race/Ethnicity" = "Race",
                            "Income Level" = "IncomeGroup"),
                selected = "None"),
    
    conditionalPanel(
      condition = "input.strat_var2 != 'None'",
      selectInput("facet_layout", "Panel Layout:",
                  choices = c("Auto Wrap" = "wrap",
                              "One Row (Side-by-Side)" = "row",
                              "One Column (Stacked)" = "col"))
    ),
    
    hr(),
    
    # 5. VISUAL OPTIONS
    h5("Visual Options"),
    selectInput("theme_color", "Color Palette:",
                choices = c("Default (Plotly)" = "default",
                            "Viridis (Colorblind Safe)" = "viridis",
                            "Magma (High Contrast)" = "magma")),
    
    selectInput("legend_pos", "Legend Position:",
                choices = c("Right", "Bottom", "Top")),
    
    checkboxInput("show_ci", "Show 95% Confidence Intervals", value = TRUE),
    
    hr(),
    
    # 6. TABLE OPTIONS (RESTORED ALL OPTIONS)
    h5("Table Options"),
    checkboxInput("show_cycle_dt", "Show Year-by-Year Details", value = TRUE),
    
    conditionalPanel(
      condition = "input.strat_var2 != 'None'",
      checkboxInput("pivot_table", "Pivot Table (Compare Columns)", value = FALSE),
      helpText(style="font-size: 0.75em; color: #666;",
               "Simplifies view by moving Secondary Group to columns (Mean values only).")
    ),
    
    hr(),
    
    actionButton("clearCache", "Reload Data (CDC)", 
                 icon = icon("sync"), 
                 class = "btn-outline-primary btn-block")
  ),
  
  navset_card_underline(
    nav_panel("Visualization", 
              plotlyOutput("trendPlot", height = "600px"),
              div(style = "text-align: right; font-size: 0.8em; color: #666; margin-top: 10px;",
                  "Source: CDC National Health and Nutrition Examination Survey")
    ),
    nav_panel("Data Table", 
              DTOutput("dataTable"),
              downloadButton("downloadData", "Download CSV")
    )
  )
)

# --- SERVER ---
server <- function(input, output, session) {
  
  # 1. DATA LOADER
  data_dir  <- case_study_data_dir()
  data_file <- file.path(data_dir, "nhanes_equity_v6.rds")
  data_csv  <- file.path(data_dir, "nhanes_equity_v6.csv")
  if (!dir.exists(data_dir)) dir.create(data_dir)
  
  data_trigger <- reactiveVal(0)
  
  observeEvent(input$clearCache, {
    if (file.exists(data_file)) file.remove(data_file)
    data_trigger(data_trigger() + 1)
  })
  
  data_clean <- reactive({
    data_trigger() 
    if (file.exists(data_file)) return(readRDS(data_file))
    
    showNotification("Downloading Data... This may take 90s.", type = "warning", duration = 15)
    
    # Map Cycles
    cycles_map <- tibble(
      StartYear = seq(1999, 2017, by = 2),
      CycleName = paste(StartYear, StartYear + 1, sep = "-"),
      Suffix    = c("", paste0("_", LETTERS[2:10]))
    )
    post_pandemic <- tibble(StartYear = 2021, CycleName = "2021-2023", Suffix = "_L")
    cycles_map <- bind_rows(cycles_map, post_pandemic)
    
    all_years <- list()
    
    withProgress(message = 'Accessing CDC Database...', value = 0, {
      for(i in 1:nrow(cycles_map)) {
        c_name <- cycles_map$CycleName[i]
        sfx    <- cycles_map$Suffix[i]
        incProgress(1/nrow(cycles_map), detail = paste("Processing", c_name))
        tryCatch({
          demo <- nhanes(paste0("DEMO", sfx))
          bmx  <- nhanes(paste0("BMX", sfx))
          vars_to_trans <- c("RIAGENDR", "RIDRETH1", "DMDEDUC2", "DMDMARTL")
          vars_present <- vars_to_trans[vars_to_trans %in% names(demo)]
          if(length(vars_present) > 0) {
            demo_trans <- nhanesTranslate(paste0("DEMO", sfx), vars_present, data = demo)
          } else { demo_trans <- demo }
          merged <- inner_join(demo_trans, bmx, by = "SEQN")
          
          wt_mec <- if("WTMEC2YR" %in% names(merged)) as.numeric(merged$WTMEC2YR) else NA
          strata <- if("SDMVSTRA" %in% names(merged)) as.numeric(merged$SDMVSTRA) else NA
          psu    <- if("SDMVPSU" %in% names(merged)) as.numeric(merged$SDMVPSU) else NA
          
          wt_val <- if("BMXWT" %in% names(merged)) as.numeric(merged$BMXWT) else NA
          ht_val <- if("BMXHT" %in% names(merged)) as.numeric(merged$BMXHT) else NA
          waist_val <- if("BMXWAIST" %in% names(merged)) as.numeric(merged$BMXWAIST) else NA
          
          edu_val <- if("DMDEDUC2" %in% names(merged)) as.character(merged$DMDEDUC2) else NA
          mar_val <- if("DMDMARTL" %in% names(merged)) as.character(merged$DMDMARTL) else NA
          pir_val <- if("INDFMPIR" %in% names(merged)) as.numeric(merged$INDFMPIR) else NA
          
          clean_rows <- tibble(
            Cycle = as.character(c_name), BMI = as.numeric(merged$BMXBMI),
            Weight = wt_val, Height = ht_val, Waist = waist_val,
            WeightMEC = wt_mec, Strata = strata, PSU = psu,
            Gender = as.character(merged$RIAGENDR), Race = as.character(merged$RIDRETH1),
            Education = edu_val, Marital = mar_val,
            Age = as.numeric(merged$RIDAGEYR), PIR = pir_val
          )
          all_years[[length(all_years) + 1]] <- clean_rows
        }, error = function(e) { cat(paste("Error in cycle", c_name, ":", e$message, "\n")) })
      }
    })
    
    big_df <- bind_rows(all_years)
    if (nrow(big_df) == 0) {
      stop("No NHANES cycles were downloaded. Check your internet connection and CDC/nhanesA availability.")
    }

    final_df <- big_df %>%
      mutate(Education = str_to_title(Education)) %>%
      mutate(EducationClean = case_when(
        str_detect(Education, "College Graduate") ~ "College Grad",
        str_detect(Education, "Some College") ~ "Some College",
        str_detect(Education, "High School|9th|11th|12th|Elementary") ~ "HS or Less", 
        TRUE ~ NA_character_)) %>%
      mutate(MaritalClean = case_when(
        str_detect(Marital, "(?i)married|partner") & !str_detect(Marital, "(?i)never|widowed|divorced|separated") ~ "Married/Partner",
        str_detect(Marital, "(?i)widowed|divorced|separated") ~ "Previously Married",
        str_detect(Marital, "(?i)never|single") ~ "Never Married",
        TRUE ~ NA_character_)) %>%
      mutate(IncomeGroup = as.character(cut(PIR, breaks = c(-1, 1.3, 3.5, 99),
                                            labels = c("Low Income (<1.3)", "Middle Income", "High Income (>3.5)"), right = FALSE)),
             Education = EducationClean, Marital = MaritalClean, WHtR = Waist / Height)
    
    saveRDS(final_df, data_file)
    write.csv(final_df, data_csv, row.names = FALSE)
    return(final_df)
  })
  
  
  # --- HELPER: ROBUST SUMMARY STATS ---
  get_summary_data <- function(df, y_var, strat1, strat2, method, age_range, show_cycle) {
    
    # 1. Base Filter
    base_df <- df %>%
      rename(Outcome = all_of(y_var)) %>%
      filter(!is.na(Outcome), !is.na(WeightMEC), !is.na(Strata), !is.na(PSU)) %>% 
      filter(!is.na(.data[[strat1]]))
    
    # 2. Define Grouping (Dynamically include 'Cycle' based on input)
    group_vars <- c("Var1")
    if(strat2 != "None") group_vars <- c(group_vars, "Var2")
    if(show_cycle) group_vars <- c("Cycle", group_vars)
    
    # 3. Rename variables for processing
    if(strat2 != "None") {
      base_df <- base_df %>% 
        filter(!is.na(.data[[strat2]])) %>%
        select(Cycle, Outcome, WeightMEC, Strata, PSU, Age, Var1 = all_of(strat1), Var2 = all_of(strat2))
    } else {
      base_df <- base_df %>% 
        select(Cycle, Outcome, WeightMEC, Strata, PSU, Age, Var1 = all_of(strat1))
    }
    
    # 4. Calculation Logic
    if (method == "raw") {
      out <- base_df %>%
        filter(Age >= age_range[1], Age <= age_range[2]) %>%
        group_by(across(all_of(group_vars))) %>%
        summarise(MeanVal = mean(Outcome, na.rm=TRUE), 
                  SE = sd(Outcome, na.rm=TRUE)/sqrt(n()), 
                  Count = n(), .groups="drop")
      
    } else {
      # Use weight=1 for "Design SE" (Correct SE, Unweighted Mean)
      # Use weight=WeightMEC for "Weighted" (Correct SE, Weighted Mean)
      w_col <- if(method == "design_se") "FakeWeight" else "WeightMEC"
      if(method == "design_se") base_df$FakeWeight <- 1
      
      svy <- base_df %>%
        as_survey_design(ids = PSU, strata = Strata, weights = .data[[w_col]], nest = TRUE) %>%
        filter(Age >= age_range[1], Age <= age_range[2])
      
      out <- svy %>%
        group_by(across(all_of(group_vars))) %>%
        summarise(Res = survey_mean(Outcome, vartype = "se", na.rm = TRUE), Count = unweighted(n())) %>%
        rename(MeanVal = Res, SE = Res_se) %>%
        ungroup() %>% 
        as_tibble() # Force simple tibble to avoid DT crash
    }
    return(out)
  }
  
  
  # 2. PLOT LOGIC
  output$trendPlot <- renderPlotly({
    req(data_clean())
    
    # Plot always has Cycle
    summary_df <- get_summary_data(data_clean(), input$outcome_var, input$strat_var1, 
                                   input$strat_var2, input$survey_method, input$age_range, show_cycle = TRUE)
    
    y_label <- switch(input$outcome_var, "BMI"="BMI (kg/m²)", "Weight"="Weight (kg)", "Height"="Height (cm)", "Waist"="Waist (cm)", "WHtR"="Waist/Height")
    method_title <- switch(input$survey_method, "raw"="(Uncorrected)", "design_se"="(Design SE)", "weighted"="(Weighted)")
    full_title <- paste("Mean", y_label, "by", input$strat_var1, method_title)
    
    p <- ggplot(summary_df, aes(x = Cycle, y = MeanVal, color = Var1, group = Var1)) 
    if("Var2" %in% names(summary_df)) {
      if(input$facet_layout == "row") { p <- p + facet_wrap(~Var2, nrow = 1) }
      else if(input$facet_layout == "col") { p <- p + facet_wrap(~Var2, ncol = 1) }
      else { p <- p + facet_wrap(~Var2) }
    }
    
    if(input$show_ci) {
      p <- p + geom_ribbon(aes(ymin = MeanVal - 1.96 * SE, ymax = MeanVal + 1.96 * SE, fill = Var1), 
                           alpha = 0.2, color = NA, show.legend = FALSE)
    }
    
    p <- p + geom_line(linewidth = 1) + 
      geom_point(size = 2, aes(text = paste("Group:", Var1, "<br>N:", Count, "<br>Mean:", round(MeanVal, 2), "<br>SE:", round(SE, 3)))) +
      labs(title = full_title, y = paste("Mean", y_label), x = "NHANES Cycle", color = input$strat_var1) + 
      theme_minimal(base_size = 14) 
    
    if(input$theme_color == "viridis") { p <- p + scale_color_viridis_d(option="viridis") + scale_fill_viridis_d(option="viridis") }
    else if(input$theme_color == "magma") { p <- p + scale_color_viridis_d(option="magma") + scale_fill_viridis_d(option="magma") }
    
    margin_t <- if(input$legend_pos == "Top") 100 else 60
    margin_b <- if(input$legend_pos == "Bottom") 180 else 110 
    legend_y <- if(input$legend_pos == "Top") 1.15 else if(input$legend_pos == "Bottom") -0.6 else 0.5
    
    gp <- ggplotly(p, tooltip = "text") %>% config(displayModeBar = TRUE) %>%
      layout(margin = list(t = margin_t, b = margin_b, l = 60, r = 50),
             xaxis = list(tickangle = -45, automargin = TRUE, title = list(standoff = 20)),
             legend = list(title = list(text = input$strat_var1, font = list(size = 14)),
                           orientation = if(input$legend_pos %in% c("Top", "Bottom")) "h" else "v",
                           xanchor = if(input$legend_pos %in% c("Top", "Bottom")) "center" else "left",
                           yanchor = if(input$legend_pos == "Top") "bottom" else if(input$legend_pos == "Bottom") "top" else "center",
                           x = if(input$legend_pos %in% c("Top", "Bottom")) 0.5 else 1.02, y = legend_y))
    
    for(i in names(gp$x$layout)){ if(grepl("xaxis", i)){ gp$x$layout[[i]]$tickangle <- -45; gp$x$layout[[i]]$automargin <- TRUE } }
    
    seen_groups <- character()
    for (i in seq_along(gp$x$data)) {
      is_ribbon <- !is.null(gp$x$data[[i]]$fill)
      if (is_ribbon) { gp$x$data[[i]]$showlegend <- FALSE; gp$x$data[[i]]$hoverinfo <- "skip" } 
      else {
        if (!is.null(gp$x$data[[i]]$name)) {
          clean_name <- gsub("^\\((.*),\\d+\\)$", "\\1", gp$x$data[[i]]$name)
          gp$x$data[[i]]$name <- clean_name
          if (clean_name %in% seen_groups) { gp$x$data[[i]]$showlegend <- FALSE } 
          else { seen_groups <- c(seen_groups, clean_name); gp$x$data[[i]]$showlegend <- TRUE }
        }
      }
    }
    gp
  })
  
  
  # 3. TABLE LOGIC (RESTORED PIVOT & FIXES)
  output$dataTable <- renderDT({
    req(data_clean())
    
    # Get Data
    summary_df <- get_summary_data(
      data_clean(), input$outcome_var, input$strat_var1, input$strat_var2, 
      input$survey_method, input$age_range, show_cycle = input$show_cycle_dt
    )
    
    # --- PIVOT LOGIC ---
    if(input$pivot_table && input$strat_var2 != "None") {
      # PIVOT MODE
      cols_to_keep <- c("Var1", "Var2", "MeanVal")
      if(input$show_cycle_dt) cols_to_keep <- c("Cycle", cols_to_keep)
      
      final_table <- summary_df %>%
        select(any_of(cols_to_keep)) %>%
        mutate(MeanVal = round(MeanVal, 2)) %>%
        pivot_wider(names_from = Var2, values_from = MeanVal) %>%
        rename(!!input$strat_var1 := Var1) 
      
    } else {
      # NORMAL MODE
      final_table <- summary_df %>%
        rename(!!input$strat_var1 := Var1)
      
      if("Var2" %in% names(final_table)) {
        final_table <- final_table %>% rename(!!input$strat_var2 := Var2)
      }
      
      final_table <- final_table %>%
        mutate(MeanVal = round(MeanVal, 2), SE = round(SE, 3)) %>%
        rename(Mean = MeanVal, `Standard Error` = SE, `Sample Size` = Count)
    }
    
    datatable(final_table, 
              options = list(pageLength = 15, dom = 't', scrollX = TRUE),
              rownames = FALSE,
              caption = paste("Summary of", input$outcome_var, "by", input$strat_var1))
  })
  
  # 4. DOWNLOAD LOGIC
  output$downloadData <- downloadHandler(
    filename = function() { paste("nhanes_summary_", Sys.Date(), ".csv", sep = "") },
    content = function(file) {
      summary_df <- get_summary_data(data_clean(), input$outcome_var, input$strat_var1, 
                                     input$strat_var2, input$survey_method, input$age_range, 
                                     show_cycle = input$show_cycle_dt)
      
      # Match table logic for download
      if(input$pivot_table && input$strat_var2 != "None") {
        cols_to_keep <- c("Var1", "Var2", "MeanVal")
        if(input$show_cycle_dt) cols_to_keep <- c("Cycle", cols_to_keep)
        
        final_table <- summary_df %>%
          select(any_of(cols_to_keep)) %>%
          pivot_wider(names_from = Var2, values_from = MeanVal) %>%
          rename(!!input$strat_var1 := Var1)
      } else {
        final_table <- summary_df %>% rename(!!input$strat_var1 := Var1)
        if("Var2" %in% names(final_table)) final_table <- final_table %>% rename(!!input$strat_var2 := Var2)
      }
      
      write.csv(final_table, file) 
    }
  )
}

shinyApp(ui, server)
