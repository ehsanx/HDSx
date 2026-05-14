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
| Week 6 | Data Visualization | `weeks/week06-visualization/index.qmd`; worked example; activity; A5 | Ready | Worked ggplot example, flawed-plot audit, instructor key, M1 link, and final A5 brief are present. |
| Week 7 | EDA, Table 1 & AI Auditing | `weeks/week07-eda-ai-audit/index.qmd`; worked example; activity; A6 | Ready | Table 1 example, planted-error starter/key, M2 link, and final A6 brief are present. |
| Week 8 | Dashboard Prototypes for KT | `weeks/week08-dashboard-kt/index.qmd`; `starter-dashboard.qmd`; A7 | Ready | First app-forward week; Shiny exemplar, starter dashboard, testing, privacy-safe guidance, and A7 brief are present. |
| Week 9 | Communication of Scientific Findings | `weeks/week09-science-communication/index.qmd`; `revealjs-peer-feedback.qmd`; `starter-slides.qmd`; A8 | Ready | Renderable revealjs starter, three-slide structure, plain-language activity, peer feedback form, and accessibility/citation checklist are present. |
| Week 10 | Writing & Publishing Reports | `weeks/week10-reporting-publishing/index.qmd`; `report-template.qmd`; A9; M3 | Ready | Report template has YAML, citation workflow, generated figure/table, publishing/private preview checklist, and grounding audit. |
| Week 11 | Portfolio Surgery | `weeks/week11-portfolio-surgery/index.qmd`; `reproducibility-test.qmd`; A10; M4; Final Portfolio | Ready | Step-by-step runbook, sample failure log, final portfolio checklist link, and optional Python pathway note are present. |
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
- Instructor-only answer keys under week `instructor/` folders are intentionally not listed.
- Starter templates may be linked from assignment/week pages without being separate navigation chapters.
