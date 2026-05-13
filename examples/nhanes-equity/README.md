# NHANES Health Equity Dashboard Case Study

This folder contains the recurring NHANES Health Equity Dashboard case study used across Weeks 1-11.

The canonical app is adapted from `examples/bmi39.R`. The task brief referred to `examples/bmi.39.R`; that file was not present in this checkout, so `examples/bmi39.R` was treated as the canonical implementation.

## Folder Map

- `app/app.R`: runnable Shiny dashboard.
- `data/nhanes_equity_v6.rds`: cached app dataset loaded first for offline use.
- `data/nhanes_equity_v6.csv`: CSV snapshot for inspection, Python parity checks, and lightweight exercises.
- `scripts/build_nhanes_equity.R`: rebuilds the dataset from CDC NHANES using `nhanesA`.
- `snippets/case-study-data-only.qmd`: Weeks 1-2 data/provenance snippet.
- `snippets/case-study-data-analysis.qmd`: Weeks 3-7 data analysis snippet.
- `snippets/case-study-dashboard.qmd`: Weeks 8-11 dashboard-forward snippet.

## Quickstart

Run the dashboard from the repository root:

```r
shiny::runApp("examples/nhanes-equity/app")
```

Rebuild the dataset from CDC NHANES:

```bash
Rscript examples/nhanes-equity/scripts/build_nhanes_equity.R
```

## Offline-First Data Behavior

The app first looks for:

```text
examples/nhanes-equity/data/nhanes_equity_v6.rds
```

If the RDS exists, the app loads it directly. This is the normal classroom path and does not require internet.

If the RDS is missing, the app attempts to rebuild the dataset from CDC NHANES through `nhanesA`. That retrieval requires an active internet connection and can take time. If CDC retrieval fails, the app stops with a clear message rather than silently producing an empty dataset.

The **Reload Data (CDC)** button deletes the cached RDS file and triggers a rebuild. Use it only when internet access is available.

## Data Outputs

The build script writes both:

```text
examples/nhanes-equity/data/nhanes_equity_v6.rds
examples/nhanes-equity/data/nhanes_equity_v6.csv
```

The dashboard's **Download CSV** button downloads the currently summarized table output based on the selected filters and grouping. It does **not** download raw NHANES microdata.

## Course Decisions

- The canonical classroom dataset lives in `examples/nhanes-equity/data/`.
- Legacy copies outside this package are not used by the NHANES case-study thread.
- `examples/bmi39.R` remains the historical source used to create `app/app.R`.
- The cached CSV/RDS files are committed for offline-first teaching; CDC rebuilds are advanced reproducibility work.
