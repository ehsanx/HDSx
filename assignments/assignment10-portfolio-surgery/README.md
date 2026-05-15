# Assignment 10: Portfolio Surgery

## Purpose

This assignment stress-tests your project before the final portfolio. You will run the work in a fresh Codespace, repair dependency or path failures, improve the README, complete peer review, and document remaining risks for M4 and final submission.

## Learning Objectives

- Test a report and dashboard product in a clean environment.
- Diagnose broken paths, missing dependencies, unclear README steps, and stale outputs.
- Document failures and repairs in a reproducible audit trail.
- Give and receive peer feedback on clarity, auditability, and KT value.
- Create a final risk list before portfolio submission.

## Inputs

- Week 11 page: `weeks/week11-portfolio-surgery/index.qmd`
- Reproducibility protocol: `weeks/week11-portfolio-surgery/port02-fresh-codespace-test.qmd`
- Static dashboard exemplar: `weeks/week11-portfolio-surgery/static-dashboard-ojs.qmd`
- M4 connection: `milestones/m4-peer-review/README.md`
- Failure log template: `assignments/assignment10-portfolio-surgery/failure-log-template.md`
- Peer review template: `assignments/assignment10-portfolio-surgery/peer-review-template.md`

## Tasks

1. Create or use the folder `assignments/assignment10-portfolio-surgery/submission/`.
2. Open your project repository in a fresh Codespace or equivalent clean environment.
3. Follow only the README and documented setup instructions.
4. Render the report or book.
5. Run or render the dashboard-style product.
6. Check relative paths, package loading, citations, data availability, output freshness, and AI-use notes.
7. Log each failure before repairing it.
8. Repair dependency, path, README, citation, or stale-output issues.
9. Commit repairs with clear messages.
10. Exchange peer review focused on reproducibility, auditability, clarity, and KT value.
11. Write a final risk list naming remaining issues or stating that no known risks remain.

## AI-Use Expectations

AI may help interpret error messages, suggest README wording, or organize the failure log. You must verify every repair by rerunning the affected output in the clean environment. Include `ai-use-note.md`.

## Reproducibility Requirements

- The test must be performed in a fresh Codespace or clean equivalent environment.
- Repairs must be committed and synced.
- README instructions must match the tested workflow.
- Relative paths must work from the repository root.
- Any remaining risk must be documented rather than hidden.

## What To Submit

Place all submission files in:

```text
assignments/assignment10-portfolio-surgery/submission/
```

Submit these files:

- `reproducibility-test.md`: completed fresh-environment test protocol.
- `failure-log.md`: failures found, evidence, fix attempted, and result.
- `peer-review.md`: feedback received or given for M4 readiness.
- `repair-summary.md`: files changed and why.
- `final-risk-list.md`: remaining risks or a statement that no known risks remain.
- `ai-use-note.md`: what AI helped with and how you checked it, or a sentence saying AI was not used.

## Submission Route

Submit your GitHub repository link on Canvas after committing and syncing the required files. Include the final repair commit or pull request link in the Canvas comments.

## Grading Checklist

Canvas applies a 7-point rubric. This assignment is part of the best-5-of-7 set for Assignments 4-10:

| Criterion | Points |
|---|---:|
| Fresh-environment reproducibility test is documented | 1.25 |
| Failure log records errors before repairs | 1 |
| Repairs address paths, dependencies, README, citations, or outputs | 1.25 |
| Report and dashboard product are rerun or failure is clearly explained | 1 |
| Peer review is specific, actionable, and tied to evidence | 1 |
| Final risk list is honest and useful for final portfolio planning | 1 |
| AI-use note and synced repair evidence are complete | 0.5 |

## Definition of Done

You are done when a reviewer can open the submission folder, see what failed, see what was repaired, see what still needs attention, and follow the README to reproduce the core project outputs.
