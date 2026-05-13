# Assignment 4: Polyglot Awareness & R Deepening

## Purpose

This assignment asks you to strengthen an R analysis first, then translate a small piece of it to Python/pandas and verify that both languages give the same descriptive answer. The goal is not to become a Python expert. The goal is to become a careful bilingual reader who can audit AI-assisted translation.

## Inputs

Use the canonical NHANES case-study CSV:

```text
examples/nhanes-equity/data/nhanes_equity_v6.csv
```

If your notebook lives in `weeks/week05-polyglot-r-deepening/`, use:

```text
../../examples/nhanes-equity/data/nhanes_equity_v6.csv
```

## Step-By-Step Tasks

1. Create `assignments/assignment04-polyglot/submission/`.
2. In that folder, create `polyglot-parity.qmd`.
3. In R, load the NHANES CSV and produce a descriptive summary of BMI by `IncomeGroup` and `Gender`.
4. Refactor the R summary into one small function.
5. Create `translation.ipynb` and translate the same summary to Python/pandas.
6. Create `helpers.py` with at least one reusable Python helper and call it from the notebook.
7. Fill in a parity table comparing row counts, filtered row counts, grouping labels, and rounded summary values.
8. Add a short AI-use note describing what the tool helped with and how you verified the output.
9. Clear notebook outputs before committing.
10. Commit and sync your work.

## What To Submit

Submit the following files in `assignments/assignment04-polyglot/submission/`:

- `polyglot-parity.qmd`: your R analysis, R function, parity table, and AI-use note.
- `translation.ipynb`: your Python translation notebook.
- `helpers.py`: your reusable Python helper script.

Submission route: submit your repository link on Canvas after committing and syncing the files above.

## Grading Checklist

| Criterion | Complete | Needs work |
|---|:---:|:---:|
| R pipeline loads the canonical NHANES CSV with a relative path |  |  |
| R function correctly reproduces the summary task |  |  |
| Python notebook translates the same analysis without changing the analytic question |  |  |
| Parity table compares row counts, groups, and rounded summary values |  |  |
| Differences are explained before any code is changed |  |  |
| `helpers.py` contains a reusable function that is called from the notebook |  |  |
| AI-use note identifies what was generated, changed, and verified |  |  |
| Notebook outputs are cleared before commit |  |  |
| Files are committed and synced in the required submission folder |  |  |
