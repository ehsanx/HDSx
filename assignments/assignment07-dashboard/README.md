# Assignment 7: Dashboard KT Prototype

## Purpose

This assignment introduces dashboard-style Knowledge Translation. You will run or render a small dashboard product, identify the audience and question, document one control or interaction, improve one audience-facing element, test the product, and state a limitation.

## Learning Objectives

- Explain how a dashboard differs from a static report.
- Identify an audience-specific KT question.
- Document one control, filter, or dashboard-style interaction.
- Connect one visualization to a plain-language interpretation.
- Test a dashboard product in Codespaces and record the result.

## Inputs

- Week 8 index: `weeks/week08-dashboard-kt/index.qmd`
- Required core artifact (the file you adapt): `weeks/week08-dashboard-kt/dash03-starter-dashboard.qmd`
- Walkthrough and reference: `weeks/week08-dashboard-kt/dash07-assignment-a7-and-reference.qmd`
- Shiny exemplar (instructor demonstration only; not an A7 submission pathway): `examples/nhanes-equity/app/app.R`
- Cached data: `examples/nhanes-equity/data/nhanes_equity_v6.rds`
- CSV snapshot: `examples/nhanes-equity/data/nhanes_equity_v6.csv`
- Adaptation template: `assignments/assignment07-dashboard/dashboard-adaptation-template.md`

## Tasks

1. Create or use the folder `assignments/assignment07-dashboard/submission/`.
2. From the repository root, render the Quarto starter dashboard (`weeks/week08-dashboard-kt/dash03-starter-dashboard.qmd`). The Shiny exemplar is a demonstration and is not an approved A7 submission pathway without prior instructor approval.
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

- `dashboard-adaptation-note.md`: audience, question, control/interaction, visualization, changed element, and KT rationale.
- `before-after-text.md`: original text and revised text.
- `testing-log.md`: command or render path used, date tested, and result.
- `limitation-note.md`: one limitation or caution suitable for the dashboard.
- `privacy-check.md`: evidence that no row-level data, small-cell overclaim, or causal overclaim is shared.
- `dashboard-preview.png`: screenshot or exported preview of the affected dashboard area.
- `reproducibility-note.md`: how the dashboard was run or rendered in Codespaces.
- `ai-use-note.md`: what AI helped with and how you checked it, or a sentence saying AI was not used.

## Submission Route

Submit your GitHub repository link on Canvas after committing and syncing the required files.

## Grading Checklist

Canvas applies a 7-point rubric. This assignment is part of the best-5-of-7 set for Assignments 4-10:

| Criterion | Points |
|---|---:|
| Audience and dashboard question are specific | 1 |
| Control/filter or interaction and visualization are described accurately | 1 |
| Audience-facing change improves clarity without changing analytic logic | 1.25 |
| Interpretation and limitation are descriptive and non-causal | 1 |
| Testing and reproducibility notes show a successful local check | 1 |
| Privacy-safe publishing check is complete | 0.75 |
| Preview, AI-use note, and required files are committed and synced | 1 |

## Definition of Done

You are done when the submitted notes let a reviewer identify the audience, control, visualization, text improvement, test result, and limitation without rerunning the app first.
