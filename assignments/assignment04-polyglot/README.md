# Assignment 4: Polyglot Parity

## Purpose

This assignment strengthens R first, then translates a small descriptive task to Python/pandas and checks whether both languages produce the same answer. The goal is careful reading of code in both R and Python, not Python mastery. <!-- AI-EDIT(2026-06-11): MIT-123 — needs review -->

## Learning Objectives

- Build a trusted R `dplyr` summary before translating it.
- Refactor repeated R logic into a small function.
- Translate a simple summary to Python/pandas with AI support if useful.
- Run parity checks for row counts, group labels, and rounded statistics.
- Keep notebook outputs and dependency notes clean for review.

## Inputs

- Week 5 page: `weeks/week05-polyglot-r-deepening/index.qmd`
- R deepening page: `weeks/week05-polyglot-r-deepening/r-deepening-parity.qmd`
- Dataset: `examples/nhanes-equity/data/nhanes_equity_v6.csv`
- Parity template: `assignments/assignment04-polyglot/parity-table-template.csv`
- Submission folder: `assignments/assignment04-polyglot/submission/`

## Tasks

1. Create or use the folder `assignments/assignment04-polyglot/submission/`.
2. Create `polyglot-parity.qmd`.
3. In R, load the NHANES CSV with a relative path.
4. Produce a descriptive BMI summary by `IncomeGroup` and `Gender`.
5. Refactor the R summary into one small reusable function.
6. Create `translation.ipynb` and translate the same summary to Python/pandas.
7. Create `helpers.py` with at least one reusable Python helper called from the notebook.
8. Complete a parity table comparing row counts, filtered row counts, grouping labels, and rounded summary values.
9. Write a dependency note naming the R and Python packages used. If an
   instructor-approved Python package is added, also update the root
   `.devcontainer/requirements.txt`; do not create a second manifest in the
   submission folder.
10. Clear bulky notebook outputs before committing.
11. Render the Quarto file to HTML.
12. Commit and sync the assignment folder.

## AI-Use Expectations

AI may help translate R to Python, explain tracebacks, or suggest helper functions. You must verify that the translated code answers the same question, uses the same filters, handles missingness the same way, and returns matching grouped results after rounding. Include `ai-use-note.md`.

## Reproducibility Requirements

- R and Python files must run in GitHub Codespaces.
- Paths must be relative to the repository.
- The notebook must not contain large stale outputs.
- Dependencies must be documented in `dependency-note.md`.
- Differences between R and Python results must be explained before changing code.

## What To Submit

Place all submission files in:

```text
assignments/assignment04-polyglot/submission/
```

Submit these files:

- `polyglot-parity.qmd`: R analysis, R function, parity discussion, and rendered-output instructions.
- `polyglot-parity.html`: rendered Quarto output.
- `translation.ipynb`: Python/pandas translation notebook.
- `helpers.py`: reusable Python helper script called from the notebook.
- `parity-table.csv`: completed parity table.
- `dependency-note.md`: Python/R dependency note.
<!-- AI-EDIT(2026-06-11): WI-065 — needs review -->
- `ai-use-note.md`: what AI helped translate or debug and how you verified the result.

## Submission Route

Submit your GitHub repository link on Canvas after committing and syncing the required files.

## Grading Checklist

Canvas applies a 7-point rubric. This assignment is part of the best-4-of-6 set for Assignments 4-9:

| Criterion | Points |
|---|---:|
| R summary is correct, clear, and uses a relative data path | 1 |
| R function reproduces the summary logic | 1 |
| Python translation matches the same analytic question | 1 |
| Parity table checks row counts, groups, and rounded values | 1.5 |
| Dependency and notebook hygiene are documented | 1 |
| AI-use note explains generation, changes, and verification | 1 |
| Files render/run from the submission folder and are synced | 0.5 |

## Definition of Done

You are done when the R summary, Python translation, and parity table agree or any differences are clearly explained, and the required files are committed in the Assignment 4 submission folder.
