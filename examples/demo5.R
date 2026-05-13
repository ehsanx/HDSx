library(shiny)
library(nhanesA)
library(DT)
library(bslib)
library(shinyWidgets) # <-- NEW: Required for the advanced checkbox dropdown

# Enable nhanesA local disk caching for faster subsequent runs
nhanesOptions(use.cache = TRUE)

# NHANES Cycle Mapping
nhanes_map <- data.frame(
  display = c("1999-2000", "2001-2002", "2003-2004", "2005-2006", "2007-2008", 
              "2009-2010", "2011-2012", "2013-2014", "2015-2016", "2017-2018"),
  table_name = c("DEMO", "DEMO_B", "DEMO_C", "DEMO_D", "DEMO_E", 
                 "DEMO_F", "DEMO_G", "DEMO_H", "DEMO_I", "DEMO_J"),
  stringsAsFactors = FALSE
)

ui <- page_sidebar(
  title = "NHANES Data Explorer",
  theme = bs_theme(version = 5, bootswatch = "litera", primary = "#2c3e50"),
  
  sidebar = sidebar(
    width = 340,
    bg = "#f8f9fa",
    h5("Data Configuration", class = "text-muted mt-2 mb-3"),
    
    selectInput("cycle", "Select Cycle:", choices = nhanes_map$display),
    actionButton("btn_load", "Fetch Data", icon = icon("cloud-download-alt"), 
                 class = "btn-primary w-100 mb-2"),
    
    uiOutput("toggles_ui"),
    uiOutput("col_select_ui"), # This will now render our advanced picker
    
    hr(),
    h6("Export Data", class = "text-muted"),
    downloadButton("download_subset_csv", "Download Selected Columns", class = "btn-outline-primary w-100 mb-2"),
    downloadButton("download_full_csv", "Download Full Dataset", class = "btn-outline-secondary w-100")
  ),
  
  card(
    full_screen = TRUE,
    card_header(
      class = "bg-dark text-white d-flex justify-content-between align-items-center",
      span(icon("table"), " Data Viewer"),
      uiOutput("status_badge")
    ),
    card_body(
      DTOutput("table_view")
    )
  )
)

server <- function(input, output, session) {
  
  vault <- reactiveValues()
  active_table_id <- reactiveVal(NULL)
  
  observeEvent(input$btn_load, {
    selected_name <- nhanes_map$table_name[nhanes_map$display == input$cycle]
    active_table_id(selected_name)
    
    if (is.null(vault[[paste0(selected_name, "_raw")]])) {
      withProgress(message = paste("Downloading", selected_name, "..."), value = 0.5, {
        tryCatch({
          vault[[paste0(selected_name, "_raw")]] <- nhanes(selected_name, translated = FALSE, includelabels = TRUE)
          showNotification(paste("Successfully cached", selected_name), type = "message")
        }, error = function(e) {
          showNotification("Download failed. Ensure you have an internet connection.", type = "error")
        })
      })
    }
  })
  
  observe({
    req(input$toggle_translate, active_table_id())
    name <- active_table_id() # FIXED: Removed the extra "active_"
    
    if (input$toggle_translate && is.null(vault[[paste0(name, "_trans")]])) {
      withProgress(message = "Translating labels via CDC...", value = 0.5, {
        vault[[paste0(name, "_trans")]] <- nhanesTranslate(name, data = vault[[paste0(name, "_raw")]])
      })
    }
  })
  
  output$toggles_ui <- renderUI({
    req(active_table_id())
    div(
      class = "mt-3 p-3 border rounded bg-white",
      checkboxInput("toggle_translate", strong("1. Translate Data Values"), value = FALSE),
      helpText("Changes numeric codes to text.", class = "text-muted small mb-3"),
      
      checkboxInput("toggle_colnames", strong("2. Human-Readable Columns"), value = FALSE),
      helpText("Appends CDC descriptions to variable names.", class = "text-muted small")
    )
  })
  
  processed_data <- reactive({
    req(active_table_id())
    name <- active_table_id()
    
    df <- if (isTRUE(input$toggle_translate)) {
      vault[[paste0(name, "_trans")]]
    } else {
      vault[[paste0(name, "_raw")]]
    }
    
    if (isTRUE(input$toggle_colnames)) {
      raw_df <- vault[[paste0(name, "_raw")]] 
      
      human_names <- sapply(colnames(df), function(col_name) {
        lbl <- attr(raw_df[[col_name]], "label")
        if (is.null(lbl) || lbl == "") col_name else paste0(col_name, ": ", lbl)
      })
      colnames(df) <- unname(human_names)
    }
    
    return(df)
  })
  
  # --- UPDATED: Bulletproof Column Selection UI ---
  output$col_select_ui <- renderUI({
    req(active_table_id(), vault[[paste0(active_table_id(), "_raw")]])
    
    # 1. Always anchor to the raw dataset's stable column names
    raw_df <- vault[[paste0(active_table_id(), "_raw")]]
    raw_cols <- colnames(raw_df)
    
    # 2. Determine what text the user actually sees in the dropdown
    if (isTRUE(input$toggle_colnames)) {
      display_names <- sapply(raw_cols, function(col) {
        lbl <- attr(raw_df[[col]], "label")
        if (is.null(lbl) || lbl == "") col else paste0(col, ": ", lbl)
      })
    } else {
      display_names <- raw_cols
    }
    
    # 3. Create a named list: The dropdown shows 'display_names', 
    # but the app secretly registers the stable 'raw_cols' when clicked.
    choices_list <- setNames(raw_cols, display_names)
    
    # 4. Use isolate() to remember what the user had selected before they 
    # clicked the translation toggles, preventing the annoying UI reset.
    current_selection <- isolate(input$selected_cols)
    if (is.null(current_selection)) current_selection <- raw_cols
    
    div(
      class = "mt-3 p-3 border rounded bg-white",
      pickerInput(
        inputId = "selected_cols",
        label = strong("3. Filter Columns"), 
        choices = choices_list,        # <--- Uses the stable named list
        selected = current_selection,  # <--- Remembers user choices
        multiple = TRUE,
        options = list(
          `actions-box` = TRUE,                 
          `live-search` = TRUE,                 
          `selected-text-format` = "count > 2", 
          `count-selected-text` = "{0} variables selected"
        )
      ),
      helpText("Use the Select/Deselect All buttons to quickly clear the board.", class = "text-muted small")
    )
  })
  
  # --- UPDATED: Subset Dataset Processing ---
  final_data <- reactive({
    req(processed_data(), active_table_id())
    df <- processed_data()
    raw_df <- vault[[paste0(active_table_id(), "_raw")]]
    
    # Handle the "Deselect All" scenario safely
    if (is.null(input$selected_cols)) {
      return(df[, FALSE, drop = FALSE])
    }
    
    # 5. Map the selected raw column names to their exact numeric index.
    # We use match() to ensure the columns stay in the exact order the user requested.
    selected_indices <- match(input$selected_cols, colnames(raw_df))
    
    # Subset by index. This guarantees it works whether the current dataset 
    # has short names (RIAGENDR) or long names (RIAGENDR: Gender).
    df <- df[, selected_indices, drop = FALSE]
    
    return(df)
  })
  
  output$status_badge <- renderUI({
    if (is.null(active_table_id())) return(tags$span(class = "badge bg-secondary", "Awaiting Data"))
    val_mode <- if(isTRUE(input$toggle_translate)) "Translated Vals" else "Raw Vals"
    col_mode <- if(isTRUE(input$toggle_colnames)) "Readable Cols" else "Raw Cols"
    tags$span(class = "badge bg-info", paste(input$cycle, "|", val_mode, "|", col_mode))
  })
  
  output$table_view <- renderDT({
    req(final_data())
    # Prevent DT from throwing an error if 0 columns are selected
    if(ncol(final_data()) == 0) return(datatable(data.frame(Message = "No columns selected.")))
    
    datatable(
      final_data(), 
      class = 'cell-border stripe hover',
      extensions = 'Scroller',
      options = list(
        deferRender = TRUE,                    
        scrollY = 250,                         
        scrollX = TRUE,
        scroller = TRUE,                       
        dom = 'Bfrti',                         
        language = list(info = "Showing _START_ to _END_ of _TOTAL_ total rows")
      ),
      rownames = FALSE
    )
  })
  
  output$download_subset_csv <- downloadHandler(
    filename = function() { paste0("NHANES_Demographics_Subset_", active_table_id(), ".csv") },
    content = function(file) { write.csv(final_data(), file, row.names = FALSE) }
  )
  
  output$download_full_csv <- downloadHandler(
    filename = function() { paste0("NHANES_Demographics_Full_", active_table_id(), ".csv") },
    content = function(file) { write.csv(processed_data(), file, row.names = FALSE) }
  )
}

shinyApp(ui, server)