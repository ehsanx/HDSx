# Build the NHANES Health Equity Dashboard dataset.
#
# Provenance:
# - Data source: CDC National Health and Nutrition Examination Survey (NHANES)
#   retrieved with the nhanesA R package.
# - Retrieval method: nhanesA::nhanes() and nhanesA::nhanesTranslate().
# - Cycles included: 1999-2000 through 2017-2018, plus 2021-2023 when available.
# - Last built timestamp: recorded when this script is run; see console output and
#   the modification time of outputs in examples/nhanes-equity/data/.
#
# Run from the repository root:
# Rscript examples/nhanes-equity/scripts/build_nhanes_equity.R
#
# Internet is required. If CDC retrieval is unavailable, this script stops rather
# than writing an empty or partial dataset silently.

required_packages <- c("tidyverse", "nhanesA")
missing_packages <- required_packages[
  !vapply(required_packages, requireNamespace, logical(1), quietly = TRUE)
]

if (length(missing_packages) > 0) {
  stop(
    "Install required package(s) before rebuilding NHANES data: ",
    paste(missing_packages, collapse = ", "),
    call. = FALSE
  )
}

suppressPackageStartupMessages({
  library(tidyverse)
  library(nhanesA)
})

script_path <- commandArgs(trailingOnly = FALSE)
script_path <- sub("^--file=", "", script_path[grepl("^--file=", script_path)][1])

case_root <- if (!is.na(script_path) && nzchar(script_path)) {
  normalizePath(file.path(dirname(script_path), ".."), winslash = "/", mustWork = TRUE)
} else {
  normalizePath(file.path("examples", "nhanes-equity"), winslash = "/", mustWork = TRUE)
}

default_output_dir <- file.path(case_root, "data")

build_nhanes_equity <- function(output_dir = default_output_dir) {
  if (!dir.exists(output_dir)) {
    dir.create(output_dir, recursive = TRUE)
  }

  message("Building NHANES equity dataset at ", format(Sys.time(), "%Y-%m-%d %H:%M:%S %Z"))

  cycles_map <- tibble(
    StartYear = seq(1999, 2017, by = 2),
    CycleName = paste(StartYear, StartYear + 1, sep = "-"),
    Suffix = c("", paste0("_", LETTERS[2:10]))
  )

  post_pandemic <- tibble(StartYear = 2021, CycleName = "2021-2023", Suffix = "_L")
  cycles_map <- bind_rows(cycles_map, post_pandemic)

  all_years <- list()
  failed_cycles <- character()

  for (i in seq_len(nrow(cycles_map))) {
    c_name <- cycles_map$CycleName[i]
    sfx <- cycles_map$Suffix[i]
    message("Retrieving NHANES cycle ", c_name, "...")

    tryCatch({
      demo <- nhanes(paste0("DEMO", sfx))
      bmx <- nhanes(paste0("BMX", sfx))

      vars_to_trans <- c("RIAGENDR", "RIDRETH1", "DMDEDUC2", "DMDMARTL")
      vars_present <- vars_to_trans[vars_to_trans %in% names(demo)]

      demo_trans <- if (length(vars_present) > 0) {
        nhanesTranslate(paste0("DEMO", sfx), vars_present, data = demo)
      } else {
        demo
      }

      merged <- inner_join(demo_trans, bmx, by = "SEQN")

      wt_mec <- if ("WTMEC2YR" %in% names(merged)) as.numeric(merged$WTMEC2YR) else NA_real_
      strata <- if ("SDMVSTRA" %in% names(merged)) as.numeric(merged$SDMVSTRA) else NA_real_
      psu <- if ("SDMVPSU" %in% names(merged)) as.numeric(merged$SDMVPSU) else NA_real_

      wt_val <- if ("BMXWT" %in% names(merged)) as.numeric(merged$BMXWT) else NA_real_
      ht_val <- if ("BMXHT" %in% names(merged)) as.numeric(merged$BMXHT) else NA_real_
      waist_val <- if ("BMXWAIST" %in% names(merged)) as.numeric(merged$BMXWAIST) else NA_real_

      edu_val <- if ("DMDEDUC2" %in% names(merged)) as.character(merged$DMDEDUC2) else NA_character_
      mar_val <- if ("DMDMARTL" %in% names(merged)) as.character(merged$DMDMARTL) else NA_character_
      pir_val <- if ("INDFMPIR" %in% names(merged)) as.numeric(merged$INDFMPIR) else NA_real_

      clean_rows <- tibble(
        Cycle = as.character(c_name),
        BMI = as.numeric(merged$BMXBMI),
        Weight = wt_val,
        Height = ht_val,
        Waist = waist_val,
        WeightMEC = wt_mec,
        Strata = strata,
        PSU = psu,
        Gender = as.character(merged$RIAGENDR),
        Race = as.character(merged$RIDRETH1),
        Education = edu_val,
        Marital = mar_val,
        Age = as.numeric(merged$RIDAGEYR),
        PIR = pir_val
      )

      all_years[[length(all_years) + 1]] <- clean_rows
    }, error = function(e) {
      failed_cycles <<- c(failed_cycles, paste0(c_name, " (", e$message, ")"))
      warning("Could not retrieve cycle ", c_name, ": ", e$message, call. = FALSE)
    })
  }

  if (length(all_years) == 0) {
    stop(
      "No NHANES cycles were retrieved. Check your internet connection and CDC/nhanesA availability.",
      call. = FALSE
    )
  }

  big_df <- bind_rows(all_years)

  final_df <- big_df %>%
    mutate(Education = str_to_title(Education)) %>%
    mutate(EducationClean = case_when(
      str_detect(Education, "College Graduate") ~ "College Grad",
      str_detect(Education, "Some College") ~ "Some College",
      str_detect(Education, "High School|9th|11th|12th|Elementary") ~ "HS or Less",
      TRUE ~ NA_character_
    )) %>%
    mutate(MaritalClean = case_when(
      str_detect(Marital, "(?i)married|partner") &
        !str_detect(Marital, "(?i)never|widowed|divorced|separated") ~ "Married/Partner",
      str_detect(Marital, "(?i)widowed|divorced|separated") ~ "Previously Married",
      str_detect(Marital, "(?i)never|single") ~ "Never Married",
      TRUE ~ NA_character_
    )) %>%
    mutate(
      IncomeGroup = as.character(cut(
        PIR,
        breaks = c(-1, 1.3, 3.5, 99),
        labels = c("Low Income (<1.3)", "Middle Income", "High Income (>3.5)"),
        right = FALSE
      )),
      Education = EducationClean,
      Marital = MaritalClean,
      WHtR = Waist / Height
    )

  rds_path <- file.path(output_dir, "nhanes_equity_v6.rds")
  csv_path <- file.path(output_dir, "nhanes_equity_v6.csv")

  saveRDS(final_df, rds_path)
  write.csv(final_df, csv_path, row.names = FALSE)

  if (length(failed_cycles) > 0) {
    warning(
      "Some NHANES cycles were skipped: ",
      paste(failed_cycles, collapse = "; "),
      call. = FALSE
    )
  }

  message("Saved RDS: ", rds_path)
  message("Saved CSV: ", csv_path)
  message("Rows: ", nrow(final_df), "; Columns: ", ncol(final_df))

  invisible(final_df)
}

if (identical(environment(), globalenv())) {
  build_nhanes_equity()
}
