# Render Blockers and Reference Audit

Updated after a real Quarto render on 2026-05-12.

## Summary

- `quarto render` completed successfully with Quarto 1.7.31.
- Output was created at `docs/index.html`.
- No mechanical render blockers remained in the render run.
- No temporary `eval: false` guards were added for this verification.
- Note: because `docs/` is configured as Quarto's `output-dir`, a full render may clean and rebuild this directory. This report was recreated after the successful render.

## Previously Resolved Items

| Page path | Referenced path | Status | Resolution |
|---|---|---|---|
| `weeks/week03-r-with-ai/index.qmd:90` | `data/patients.csv` | resolved | Placeholder CSV exists at `weeks/week03-r-with-ai/data/patients.csv`. |
| `weeks/week03-r-with-ai/index.qmd:393` | `data/file.csv` | resolved | Placeholder CSV exists at `weeks/week03-r-with-ai/data/file.csv`. |
| `weeks/week04-git-collaboration/index.qmd:88` | `data/nhanes.csv` | resolved | Placeholder CSV exists at `weeks/week04-git-collaboration/data/nhanes.csv`. |
| `weeks/week04-git-collaboration/git03-repo-hygiene.qmd:29` | `data/nhanes.csv` | resolved | Placeholder CSV exists at `weeks/week04-git-collaboration/data/nhanes.csv`. |
| `weeks/week05-polyglot-r-deepening/index.qmd:132` | `data/patients.csv` | resolved | Placeholder CSV exists at `weeks/week05-polyglot-r-deepening/data/patients.csv`. |
| `weeks/week05-polyglot-r-deepening/index.qmd:213` | `data/patients.csv` | resolved | Placeholder CSV exists at `weeks/week05-polyglot-r-deepening/data/patients.csv`. |
| `weeks/week05-polyglot-r-deepening/index.qmd:250` | `data/patients.csv` | resolved | Placeholder CSV exists at `weeks/week05-polyglot-r-deepening/data/patients.csv`. |
| `weeks/week05-polyglot-r-deepening/python05-load-inspect-data.qmd:9` | `data/patients.csv` | resolved | Placeholder CSV exists at `weeks/week05-polyglot-r-deepening/data/patients.csv`. |
| `weeks/week05-polyglot-r-deepening/python08-mixing-r-python.qmd:23` | `data/patients.csv` | resolved | Placeholder CSV exists at `weeks/week05-polyglot-r-deepening/data/patients.csv`. |
| `weeks/week05-polyglot-r-deepening/python09-reusable-scripts.qmd:24` | `data/patients.csv` | resolved | Placeholder CSV exists at `weeks/week05-polyglot-r-deepening/data/patients.csv`. |
| `weeks/week05-polyglot-r-deepening/index.qmd:327` | `f.csv` | resolved | Quick-reference path updated to `data/f.csv`; placeholder exists at `weeks/week05-polyglot-r-deepening/data/f.csv`. |
| `weeks/week05-polyglot-r-deepening/python14-cheat-sheet.qmd:6` | `f.csv` | resolved | Quick-reference path updated to `data/f.csv`; placeholder exists at `weeks/week05-polyglot-r-deepening/data/f.csv`. |

## Intentional Non-Blockers

| Page path | Referenced path | Status | Note |
|---|---|---|---|
| `weeks/week04-git-collaboration/index.qmd:88` | `/home/user/Documents/nhanes.csv` | intentional example | Non-executed example of an absolute path to avoid. |
| `weeks/week04-git-collaboration/git03-repo-hygiene.qmd:29` | `/home/user/Documents/nhanes.csv` | intentional example | Non-executed example of an absolute path to avoid. |
| `weeks/week05-polyglot-r-deepening/index.qmd:159` | `Data/patients.csv` | intentional example | Shown inside a traceback demonstrating a case-sensitive path failure. |
