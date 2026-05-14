# Assignment 7: Dashboard KT Prototype

## Purpose

Create a small dashboard-style Knowledge Translation artifact from the NHANES Health Equity classroom dataset. The goal is not to build a large app. The goal is to define an audience, improve one audience-facing element, test the result, and state a clear limitation.

## Inputs

- Shiny exemplar: `examples/nhanes-equity/app/app.R`
- Cached data: `examples/nhanes-equity/data/nhanes_equity_v6.rds`
- CSV snapshot: `examples/nhanes-equity/data/nhanes_equity_v6.csv`
- Week 8 page: `weeks/week08-dashboard-kt/index.qmd`
- Starter dashboard: `weeks/week08-dashboard-kt/starter-dashboard.qmd`

## Step-by-Step Tasks

1. From the repository root, run the NHANES Shiny exemplar locally.
2. Choose one audience, such as a public-health analyst, student project team, or briefing group.
3. Write one audience-specific dashboard question.
4. Identify one label, caption, help text, interpretation note, or README sentence that could be clearer for that audience.
5. Make one documentation-only or UI-text-only improvement. Do not change analytic logic for this assignment.
6. Rerun the dashboard or render the starter dashboard and record the test result.
7. Write one limitation statement that belongs in or beside the dashboard.
8. Complete the privacy-safe publishing check before sharing screenshots or rendered outputs.

## What To Submit

Place all submission files in:

```text
assignments/assignment07-dashboard/submission/
```

Submit these files:

- `dashboard-adaptation-note.md`: audience, question, changed element, and why the change improves KT.
- `before-after-text.md`: original text and revised text.
- `testing-log.md`: command or render path used, date tested, and result.
- `limitation-note.md`: one limitation or caution suitable for the dashboard.
- `privacy-check.md`: short checklist showing no row-level data, small-cell overclaim, or causal overclaim is shared.
- `dashboard-preview.png`: screenshot or exported preview of the affected dashboard area.
- `ai-use-note.md`: required if AI helped draft, revise, or debug; otherwise include a one-sentence note saying AI was not used.

## Submission Route

Submit a Canvas assignment entry that contains a link to the repository folder `assignments/assignment07-dashboard/submission/`.

## Grading Checklist

Complete:

- Audience and dashboard question are specific.
- The change is audience-facing and does not alter analytic logic.
- Before/after text shows a clear improvement in clarity, interpretation, or accessibility.
- Testing log shows the dashboard was run or rendered from the repository.
- Limitation note states that the output is descriptive and avoids causal overclaiming.
- Privacy check avoids row-level data sharing and small-cell claims.
- AI-use note is present and specific.

Needs work:

- Audience is vague or missing.
- Change is too broad, changes analytic logic, or cannot be located.
- Testing log is absent or does not show a successful local check.
- Limitation note is missing or overclaims what the dashboard can show.
- Preview exposes row-level data or unsupported small-cell interpretation.
