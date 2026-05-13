# Assignment 6: EDA, Table 1, and AI Audit

## Purpose

Produce a transparent descriptive EDA note and Table 1-style summary from the NHANES Health Equity classroom dataset. You will also audit a planted-error starter to practice catching correctness, reproducibility, and interpretation problems.

## Inputs

- Dataset: `examples/nhanes-equity/data/nhanes_equity_v6.csv`
- Worked example: `weeks/week07-eda-ai-audit/worked-example-table1.qmd`
- Activity prompt: `weeks/week07-eda-ai-audit/activity-table1-audit.qmd`
- Planted-error starter: `weeks/week07-eda-ai-audit/instructor/planted-error-starter.qmd`

## Step-by-Step Tasks

1. Load the CSV snapshot with a relative path.
2. Define and document an analysis cohort using age 20-80.
3. Create a missingness table for key variables.
4. Produce a Table 1-style summary by `IncomeGroup`.
5. Include N, BMI mean (SD), and age mean (SD).
6. Write a short methods note stating that the analysis is descriptive, unweighted, and non-causal.
7. Audit the planted-error starter and list at least five issues.
8. Categorize each issue as correctness, reproducibility, or interpretation.

## What To Submit

Place all submission files in:

```text
assignments/assignment06-eda-ai-audit/submission/
```

Submit these files:

- `eda-note.qmd`: rerunnable Quarto file with cohort definition, missingness table, Table 1, and methods note.
- `eda-note.html`: rendered output.
- `table1.csv`: exported Table 1 or equivalent descriptive summary.
- `audit-note.md`: at least five planted issues with category, why it matters, and corrected approach.
- `ai-use-note.md`: required if AI was used; otherwise include a one-sentence note saying AI was not used.

## Submission Route

Submit a Canvas assignment entry that contains a link to the repository folder `assignments/assignment06-eda-ai-audit/submission/`.

## Grading Checklist

Complete:

- Uses `examples/nhanes-equity/data/nhanes_equity_v6.csv` with a relative path.
- Cohort definition is stated before summarizing.
- Missingness is checked and reported.
- Table 1 includes N, BMI mean (SD), and age mean (SD) by group.
- Methods note avoids causal or population-level overclaims.
- Audit note identifies at least five issues across correctness, reproducibility, and interpretation.
- AI-use note is present and specific.

Needs work:

- Uses an absolute or machine-specific path.
- Cohort is unclear or inconsistent with the code.
- Rows are dropped silently without missingness documentation.
- Statistics are mislabeled or missing variability measures.
- Interpretation overclaims causality.
- Code does not render from the repository.
