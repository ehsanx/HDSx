# Assignment 7: Dashboard KT Prototype

## Purpose

This assignment introduces dashboard-style Knowledge Translation. You will run or render a small dashboard product, identify the audience and question, document one control or interaction, improve one audience-facing element, test the product, and state a limitation.

<!-- AI-EDIT(2026-06-11): WI-066/WI-075 (D-002, R2-07) — needs review -->
**What you are not doing in A7:** you are not building a full Shiny app, deploying a live dashboard, changing the dataset, or adding new analysis. You are making a small documentation or audience-facing text improvement to the starter dashboard. A live dashboard is not required unless the assignment says so. A static preview, screenshot, or rendered HTML page is acceptable when it clearly shows the KT product and passes the privacy check.

## Learning Objectives

- Explain how a dashboard differs from a static report.
- Identify an audience-specific KT question.
- Document one control, filter, or dashboard-style interaction.
- Connect one visualization to a plain-language interpretation.
- Test a dashboard product in Codespaces and record the result.

## Inputs

- Week 8 index: `weeks/week08-dashboard-kt/index.qmd`
- Required core artifact in your personal workspace:
  `assignments/assignment07-dashboard/dashboard-starter.qmd`
- Walkthrough and reference: `weeks/week08-dashboard-kt/dash07-assignment-a7-and-reference.qmd`
- Shiny exemplar (instructor demonstration only; not an A7 submission pathway): `examples/nhanes-equity/app/app.R`
- Cached data in your personal workspace: `examples/nhanes-equity/data/nhanes_equity_v6.rds`
- CSV snapshot in your personal workspace: `examples/nhanes-equity/data/nhanes_equity_v6.csv`
- Adaptation template: `assignments/assignment07-dashboard/dashboard-adaptation-template.md`

## Tasks

1. Create or use the folder `assignments/assignment07-dashboard/submission/`.
2. Copy `assignments/assignment07-dashboard/dashboard-starter.qmd` to
   `assignments/assignment07-dashboard/submission/dashboard.qmd`. Adapt and
   render this copy from the repository root. The Shiny exemplar is a
   demonstration and is not an approved A7 submission pathway without prior
   instructor approval.
3. Choose one audience, such as a public-health analyst, student project team, or briefing group.
4. Write one audience-specific dashboard question.
5. Identify one control, filter, or dashboard-style interaction and the visualization it affects.
6. Identify one label, caption, help text, interpretation note, or README sentence that could be clearer for that audience.
7. Make one documentation-only or UI-text-only improvement. Do not change analytic logic for this assignment.
8. Re-render the starter dashboard with a different control value and record the test result.
9. Write one limitation statement that belongs in or beside the dashboard.
10. Complete the privacy-safe publishing check before sharing screenshots or rendered outputs.

## AI-Use Expectations

AI may help improve wording for labels, captions, or limitation statements. You must verify that the revised language still matches the dashboard output and does not imply causality, population inference, or access to row-level data. Include `ai-use-note.md`.

## Reproducibility Requirements

- The dashboard or starter dashboard must run or render in GitHub Codespaces.
- Paths must be relative.
- The testing log must name the command or render path used.
- Screenshots must avoid exposing row-level data.
- The submitted adaptation must not require private credentials or local-only files.

## What To Submit

Place all submission files in:

```text
assignments/assignment07-dashboard/submission/
```

Submit these files:

<!-- AI-EDIT(2026-06-11): TF-023/MIT-132/MIT-134 — brief/evidence labels so the log files are not over-built — needs review -->
- `dashboard-adaptation-note.md` [required]: audience, question, control/interaction, visualization, changed element, and KT rationale.
- `dashboard.qmd` [required]: the adapted Quarto source used to create the preview.
- `before-after-text.md` [required] [brief — 1-3 focused bullets or sentences are enough]: original text and revised text.
- `testing-log.md` [required] [brief — 1-3 focused bullets or sentences are enough]: command or render path used, date tested, and result. A few lines is enough.
- `limitation-note.md` [required] [brief — 1-3 focused bullets or sentences are enough]: one limitation or caution suitable for the dashboard. One clear sentence is enough.
- `privacy-check.md` [required] [brief — 1-3 focused bullets or sentences are enough]: evidence that no row-level data, small-cell overclaim, or causal overclaim is shared. Three short sentences are enough.
- `dashboard-preview.png` [required]: screenshot or exported preview of the affected dashboard area. This is evidence, not a designed product — a plain screenshot is fine.
- `reproducibility-note.md` [required] [brief — 1-3 focused bullets or sentences are enough]: how the dashboard was run or rendered in Codespaces. One short paragraph is enough.
- `ai-use-note.md` [required]: what AI helped with and how you checked it, or a sentence saying AI was not used.

## Submission Route

Submit your GitHub repository link on Canvas after committing and syncing the required files.

## Grading Checklist

Canvas applies a 7-point rubric. This assignment is part of the best-5-of-7 set for Assignments 4-10:

<!-- AI-EDIT(2026-06-11): MIT-133 — rubric restates documentation-only scope — needs review -->
| Criterion | Points |
|---|---:|
| Audience and dashboard question are specific | 1 |
| Control/filter or interaction and visualization are described accurately | 1 |
| Documentation-only or UI-text-only change improves clarity without changing analytic logic | 1.25 |
| Interpretation and limitation are descriptive and non-causal | 1 |
| Testing and reproducibility notes show a successful local check | 1 |
| Privacy-safe publishing check is complete | 0.75 |
| Dashboard source, preview, AI-use note, and required files are committed and synced | 1 |

## Definition of Done

You are done when the submitted `dashboard.qmd`, preview, and notes let a
reviewer identify the audience, control, visualization, text improvement, test
result, and limitation and reproduce the preview if needed.
