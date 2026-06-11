# Syllabus Inventory Completion Matrix

Last updated after milestone/presentation/final-portfolio completion pass: 2026-05-14.

## Summary

- Week/module pages ready: 15 of 15 tracked entries (Week 0, Weeks 1-13, Final Portfolio).
- Weekly assignments ready: A1-A10.
- Project milestones ready: M0-M5 plus Final Portfolio.
- Navigation state: student-facing assignments, milestones, and final portfolio brief are surfaced in `_quarto.yml`; instructor-only keys remain hidden.
- Workflow decision: fork-based repository setup is the official student workflow. GitHub Classroom is not the default route for this book.

## Remaining Human-Only Release Items

These items require live course infrastructure rather than more drafting:

- Canvas orientation video link.
- Canvas pre-course survey link.
- Canvas course template repository link.
- Final presentation order, room, and live schedule.

## Week And Module Matrix

| Entry | Topic | Primary source | Status | Evidence and notes |
|---|---|---|---|---|
| Week 0 | Asynchronous onboarding | `weeks/week00-onboarding/index.qmd` | Ready | Includes Canvas-posted orientation video/survey instructions, GitHub account guidance, fork workflow, support path, and Week 1 preparation. |
| Week 1 | Health Data, KT & Ethics | `weeks/week01-health-data-ethics/index.qmd`; `activity-data-intake-card.qmd` | Ready | Data Intake Card and NHANES data spine frame provenance, ethics, stewardship, privacy, and KT. |
| Week 2 | Modern Workflows | `weeks/week02-modern-workflows/index.qmd`; workflow subpages; `assignments/assignment01-workflows/README.md` | Ready | Student path is template repo, Fork, Codespaces from fork, commit/sync, submit fork link on Canvas. |
| Week 3 | R with AI | `weeks/week03-r-with-ai/index.qmd`; `assignments/assignment02-r-with-ai/README.md` | Ready | Adds minimal `renv::status()`, `renv::snapshot()`, and `renv::restore()` awareness aligned with the dependency note. |
| Week 4 | Git & Collaboration | `weeks/week04-git-collaboration/index.qmd`; `assignments/assignment03-git/README.md`; `milestones/m0-group-formation/README.md` | Ready | Group repo setup now uses a forked group template and collaborator access; M0 is fully specified. |
| Week 5 | Polyglot Awareness & R Deepening | `weeks/week05-polyglot-r-deepening/index.qmd`; `assignments/assignment04-polyglot/README.md` | Ready | R-first parity workflow, Python awareness, dependency notes, and AI audit expectations are present. |
| Week 6 | Data Visualization | `weeks/week06-visualization/index.qmd`; `viz01`-`viz07` incremental pages; A5; M1 visual plan | Ready | Seven-page sequence (overview, grammar+first plot, worked example, misleading-design audit, AI prompts, studio, A5 walkthrough+reference). Answer keys live in the private HDSx-instructor repo (D-001); student-facing starter in `studio/`. <!-- AI-EDIT(2026-06-11): D-001 — needs review --> |
| Week 7 | EDA, Table 1 & AI Auditing | `weeks/week07-eda-ai-audit/index.qmd`; `eda01`-`eda07` incremental pages; A6; M2 | Ready | Seven-page sequence (overview, cohort+missingness, worked example, descriptive-statistic claims, four audit categories, planted-error studio, A6 walkthrough+reference). Planted-error key lives in the private HDSx-instructor repo (D-001); student-facing starter in `studio/`. <!-- AI-EDIT(2026-06-11): D-001 — needs review --> |
| Week 8 | Dashboard Prototypes for KT | `weeks/week08-dashboard-kt/index.qmd`; `dash01`-`dash07` incremental pages; A7 | Ready | Seven-page sequence with the Quarto starter dashboard as the required core artifact (`dash03`); Shiny exemplar covered as demonstration only (`dash05`); 1-1-1-1-1 prototype rule, allowed-vs-not-allowed adaptation guidance, testing/privacy routines, and A7 walkthrough are present. |
| Week 9 | Communication of Scientific Findings | `weeks/week09-science-communication/index.qmd`; `comm01`-`comm05`; `starter-slides.qmd`; A8 | Ready | Incremental sequence covers KT framing, claim-evidence-limitation discipline, revealjs starter workflow, peer feedback, and A8 walkthrough. |
| Week 10 | Writing & Publishing Reports | `weeks/week10-reporting-publishing/index.qmd`; `report01`-`report05`; `report-template.qmd`; A9; M3 | Ready | Incremental sequence covers report purpose, structure, runnable template, citation/grounding audit, private-preview default, and A9/M3 walkthrough. |
| Week 11 | Portfolio Surgery | `weeks/week11-portfolio-surgery/index.qmd`; `port01`-`port06`; A10; M4; Final Portfolio | Ready | Incremental sequence covers surgery goals, fresh Codespace runbook, README/repo hygiene, M4 peer review, optional pathways, and A10/final portfolio walkthrough. |
| Week 12 | Presentations Part 1 | `weeks/week12-presentations/index.qmd`; M5 | Ready | Timing rules, slide submission, rubric, peer feedback form, slide checklist, and portfolio reminder are present. |
| Week 13 | Presentations Part 2 | `weeks/week13-presentations/index.qmd`; M5; Final Portfolio | Ready | Presentation logistics, closing reflection, final portfolio reminders, and final revision priorities are present. |
| Final | Final Portfolio | `milestones/final-portfolio/README.md`; `final-portfolio-checklist.md`; `repository-sharing-guidance.md` | Ready | Portfolio checklist, public/private repository guidance, deliverables, Canvas route, AI-use expectations, and rubric are present. |

## Assignment Matrix

| Assignment | Week | Source | Status | Notes |
|---|---:|---|---|---|
| A1 | 2 | `assignments/assignment01-workflows/README.md` | Ready | Fork-based workflow, render, commit/sync, and fork link submission. |
| A2 | 3 | `assignments/assignment02-r-with-ai/README.md` | Ready | R import/inspection, dplyr, function, AI audit, dependency note, and `renv::status()` awareness. |
| A3 | 4 | `assignments/assignment03-git/README.md` | Ready | Git, branches, pull request evidence, documentation edit, and M0 readiness. |
| A4 | 5 | `assignments/assignment04-polyglot/README.md` | Ready | R/Python parity, helper files, dependency note, and AI-use note. |
| A5 | 6 | `assignments/assignment05-visualization/README.md` | Ready | Flawed plot audit, corrected plot, caption, and M1 link. |
| A6 | 7 | `assignments/assignment06-eda-ai-audit/README.md` | Ready | Table 1, planted-error audit, stewardship note, and M2 link. |
| A7 | 8 | `assignments/assignment07-dashboard/README.md` | Ready | Dashboard-style KT product, testing, audience note, limitation, and privacy check. |
| A8 | 9 | `assignments/assignment08-communication/README.md` | Ready | Slide deck/outline, plain-language summary, peer feedback, source note, and AI-use note. |
| A9 | 10 | `assignments/assignment09-reporting/README.md` | Ready | Quarto report, citation workflow, publishing checklist, grounding audit, and M3 link. |
| A10 | 11 | `assignments/assignment10-portfolio-surgery/README.md` | Ready | Fresh environment test, failure log, peer review, README repair, and final risk list. |

## Milestone Matrix

| Milestone | Source | Status | Notes |
|---|---|---|---|
| M0 | `milestones/m0-group-formation/README.md` | Ready | Group formation, shared fork, access evidence, communication plan, Codespace check, and AI-use note. |
| M1 | `milestones/m1-proposal/README.md` | Ready | Proposal, Data Intake Card, initial visual plan, reproducibility plan, and AI-use note. |
| M2 | `milestones/m2-preliminary-analysis/README.md` | Ready | Preliminary analysis, rendered output, Table 1, missingness, methods note, and AI audit. |
| M3 | `milestones/m3-project-update/README.md` | Ready | Report draft, dashboard preview, reproducibility note, feedback request, and AI-use note. |
| M4 | `milestones/m4-peer-review/README.md` | Ready | Peer review, reproducibility check, auditability check, KT feedback, and reviewer reflection. |
| M5 | `milestones/m5-presentation/README.md` | Ready | Slides, timing, rubric, source/limitations note, feedback record, and AI-use note. |
| Final Portfolio | `milestones/final-portfolio/README.md` | Ready | Final report, dashboard-style KT product, checklist, repository access, sharing guidance, and AI-use audit. |

## Navigation Notes

- `_quarto.yml` lists `assignments/index.qmd` and A1-A10 README pages directly.
- `_quarto.yml` lists `milestones/index.qmd`, M0-M5, and Final Portfolio.
- Instructor-only answer keys live in the private HDSx-instructor repository (D-001, 2026-06-11), not in this repo. <!-- AI-EDIT(2026-06-11): D-001 — needs review -->
- Starter templates may be linked from assignment/week pages without being separate navigation chapters.
