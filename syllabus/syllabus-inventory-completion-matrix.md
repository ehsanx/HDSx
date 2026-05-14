# Syllabus vs HDSx Inventory Completion Matrix

Status: baseline audit created before the normalized folder migration. The normalized structure described below has now been applied to the source tree.

Source syllabus: `syllabus/SPPH-381H-Course-Outline-v4.qmd` and `syllabus/SPPH-381H-Course-Outline-v4.pdf`.

Inventory checked: root `.qmd` source files, `_quarto.yml`, `assets/`, `examples/`, `images/`, and `syllabus/`. Generated `docs/`, `.git/`, and `.Rproj.user/` were excluded from the inventory assessment.

## Extracted Schedule

| Week | Topic | Activity / deliverable |
|---|---|---|
| 0 (Async) | Onboarding | GitHub account, orientation video, pre-course survey. Due before first class. |
| 1 (Sept 10) | Health Data, KT & Ethics | Open data portals, Data Intake Card, provenance, stewardship, responsible AI. No graded submission. |
| 2 (Sept 17) | Modern Workflows | Fork template, launch Codespace, edit/render Quarto, commit/sync. Assignment 1 due Mon 4 PM. |
| 3 (Sept 24) | R with AI | R basics, tidyverse, functions, debugging with LLMs, `renv`, Quarto documentation. Assignment 2 due Mon 4 PM. |
| 4 (Oct 1) | Git & Collaboration | Commits, branches, pull requests, repo hygiene, group repository setup. Assignment 3 and M0 due Mon 4 PM. |
| 5 (Oct 8) | Polyglot Awareness & R Deepening | Python/pandas comparison, R-to-Python translation, AI parity checks, R practice. Assignment 4 due Mon 4 PM. |
| 6 (Oct 15) | Data Visualization | AI-assisted ggplot2/plotly, visual clarity/bias/misrepresentation checks. Assignment 5 and M1 due Mon 4 PM. |
| 7 (Oct 22) | EDA, Table 1 & AI Auditing | EDA, Table 1, planted-error AI audit, provenance/stewardship revision. Assignment 6 and M2 due Mon 4 PM. |
| 8 (Oct 29) | Dashboard Prototypes for KT | Minimal dashboard-style KT product, Quarto/Shiny concepts, deployment pathway choice. Assignment 7 due Mon 4 PM. |
| 9 (Nov 5) | Communication of Scientific Findings | Audience-specific KT, plain-language summaries, revealjs slides, citations, peer review. Assignment 8 due Mon 4 PM. |
| 10 (Nov 12) | Writing & Publishing Reports | Quarto reports, citations, interactive elements, GitHub Pages, portfolio publishing. Assignment 9 and M3 due Mon Nov 16, 4 PM. |
| 11 (Nov 19) | Portfolio Surgery & Optional Advanced Deployment | Fresh Codespace reproducibility test, path/dependency/README fixes, optional deployment/Python pathway. Assignment 10 and M4 due Mon Nov 23, 4 PM. |
| 12 (Nov 26) | Term Project Presentations, Part 1 | M5 presentations, live Q&A, peer review. Slides due before class. |
| 13 (Dec 3) | Term Project Presentations, Part 2 | M5 presentations, live Q&A, peer review. Slides due before class. |
| Final | Final Portfolio | Final portfolio due Dec 11, Fri 4 PM. |

## Folder Inventory Snapshot

| Area | Current contents | Notes |
|---|---|---|
| Root Quarto source | `index.qmd`, `_quarto.yml`, 11 module part files, many numbered child `.qmd` files | Source is mostly flat, making week/module ownership hard to scan. |
| `syllabus/` | PDF and QMD syllabus source | Good source of truth for schedule and assessment logic. |
| `assets/data/` | `NHANES_Demo_Converted.csv` | Only one CSV data asset found under shared assets. |
| `assets/images/` | Image subfolders for `data1`-`data12`, `workflow*`, `git*`, `python*`, `r*`, plus `week3` | Assets are topic-fragment based, not normalized by course week. |
| `examples/` | `bmi39.R`, `demo5.R`, NHANES `.rds` files | Useful for R/EDA examples, but not tied to weeks or assignments. |
| `images/` | License/support images | Small global image folder separate from `assets/images`. |
| `docs/` | Rendered Quarto output | Treat as generated output, not source curriculum inventory. |

## Completion Matrix

Status key: **Ready** = source is substantial and surfaced in navigation; **Partial** = source exists but has gaps, thin drafts, or navigation mismatch; **Missing** = no clear source content found.

| Week | Syllabus need | Current matching inventory | Status | Gap / action |
|---|---|---|---|---|
| 0 | Async onboarding module | `weeks/week00-onboarding/index.qmd` | Ready | Keep GitHub setup, orientation, and pre-course survey links current. |
| 1 | Health data, ethics, KT, Data Intake Card | `weeks/week01-health-data-ethics/index.qmd`; `weeks/week01-health-data-ethics/activity-data-intake-card.qmd`; `examples/nhanes-equity/snippets/case-study-data-only.qmd`; `references/data-sources/` | Ready | Week 1 now covers portals, provenance, stewardship, responsible AI, privacy/security, Indigenous Data Sovereignty awareness, file formats/metadata, KT framing, and a complete Data Intake Card activity. |
| 2 | Codespaces, Quarto basics, reproducible structure, commits | `weeks/week02-modern-workflows/index.qmd`; `assignments/assignment01-workflows/README.md` | Ready | A1 now has exact files, Canvas route, reflection, commit evidence, and Complete/Incomplete checklist. |
| 3 | R with AI, tidyverse, functions, debugging, `renv` | `weeks/week03-r-with-ai/index.qmd`; `assignments/assignment02-r-with-ai/README.md`; `assignments/assignment02-r-with-ai/starter-analysis.qmd` | Ready | A2 now includes relative-path import, missingness, `dplyr`, custom function, AI audit comments, output CSV, and dependency note. |
| 4 | Git collaboration, PRs, repo hygiene, group setup | `weeks/week04-git-collaboration/index.qmd`; `assignments/assignment03-git/README.md`; `milestones/m0-group-formation/README.md` | Ready | A3 now assesses branches, diffs, `.gitignore`, PR evidence, documentation-only change, and M0 readiness. M0 milestone brief remains a separate improvement area. |
| 5 | Python/pandas awareness and R deepening | `weeks/week05-polyglot-r-deepening/index.qmd`; `r-deepening-parity.qmd`; `assignments/assignment04-polyglot/README.md`; `assignments/assignment04-polyglot/parity-table-template.csv` | Ready | A4 now requires R-first summary, R function, Python translation, parity table, dependency note, notebook hygiene, and AI-use note. |
| 6 | Data visualization with ggplot2/plotly and AI visual audit | `weeks/week06-visualization/index.qmd`; `worked-example-ggplot.qmd`; `activity-ai-visual-audit.qmd`; `instructor/flawed-plot-code.R`; `instructor/corrected-plot-code.R`; `instructor/answer-key-visual-audit.md`; `assignments/assignment05-visualization/README.md`; `milestones/m1-proposal/README.md` | Ready | Complete worked example, visual audit activity, instructor key, A5 brief, and M1 proposal brief are in place. Optional plotly is framed as an extension. |
| 7 | EDA, Table 1, planted-error AI audit, provenance update | `weeks/week07-eda-ai-audit/index.qmd`; `worked-example-table1.qmd`; `activity-table1-audit.qmd`; `instructor/planted-error-starter.qmd`; `instructor/planted-error-key.md`; `assignments/assignment06-eda-ai-audit/README.md`; `milestones/m2-preliminary-analysis/README.md` | Ready | Complete EDA/Table 1 workflow, planted-error audit, stewardship revision, A6 brief, and M2 preliminary analysis brief are in place. |
| 8 | Dashboard-style KT prototype, Quarto/Shiny concepts | `weeks/week08-dashboard-kt/index.qmd`; `starter-dashboard.qmd`; `examples/nhanes-equity/app/app.R`; `examples/nhanes-equity/snippets/case-study-dashboard.qmd`; `assignments/assignment07-dashboard/README.md` | Ready | Week 8 is the first app-forward week. Required work is local, Codespaces-friendly dashboard KT adaptation; static dashboard and deployment paths are optional demonstrations. |
| 9 | Scientific communication, revealjs slides, peer feedback | `weeks/week09-science-communication/index.qmd`; `assignments/assignment08-communication/README.md`; `assignments/assignment08-communication/slide-outline-template.qmd`; `peer-feedback-template.md` | Ready | A8 now specifies slides or outline, rendered output, plain-language summary, peer feedback, source note, and AI-use note. |
| 10 | Reproducible reporting, publishing, citations, GitHub Pages | `weeks/week10-reporting-publishing/index.qmd`; `weeks/week10-reporting-publishing/report-template.qmd`; `assignments/assignment09-reporting/README.md`; `references.bib` | Ready | A9 now requires a Quarto report, generated table/figure, BibTeX, limitations, publishing checklist, grounding audit, and M3 update note. |
| 11 | Portfolio reproducibility stress test, optional deployment | `weeks/week11-portfolio-surgery/index.qmd`; `reproducibility-test.qmd`; `static-dashboard-ojs.qmd`; `assignments/assignment10-portfolio-surgery/README.md` | Ready | A10 now requires fresh Codespace test, failure log, repair summary, peer review, final risk list, and AI-use note. |
| 12 | Presentations Part 1 | `weeks/week12-presentations/index.qmd` | Partial | Add presentation rubric/checklist and peer feedback form. |
| 13 | Presentations Part 2 | `weeks/week13-presentations/index.qmd` | Partial | Add repeat presentation logistics or combine with Week 12 materials. |
| Final | Final portfolio | Syllabus has reproducibility contract; no dedicated portfolio submission package found | Partial | Convert the syllabus reproducibility contract into a student-facing final portfolio checklist/template. |

## Key Mismatches

1. The source tree is organized as topic families (`data`, `workflows`, `r`, `git`, `python`, etc.), while the syllabus is organized as weeks.
2. Weekly assignment briefs A1-A10 are now complete and surfaced in the book; milestone briefs M0 and M3-M5 still need a later pass.
3. Several developed files are not surfaced in `_quarto.yml`: `data2.qmd`-`data12.qmd` and most `python*.qmd` files.
4. Parent files such as `data.qmd`, `workflows.qmd`, `r.qmd`, `git.qmd`, and `python.qmd` contain substantial chapter content but are used as Quarto `part:` pages, while many child pages are short fragments. This creates duplication and discoverability friction.
5. Assignment deliverables are normalized under `assignments/`; milestone deliverables are partially normalized and should be completed in a later pass.

## Proposed Normalized Structure

Recommended target: keep the Quarto book, but normalize source around syllabus weeks and move reusable references into appendices.

```text
/
  _quarto.yml
  index.qmd
  syllabus/
    SPPH-381H-Course-Outline-v4.qmd
    SPPH-381H-Course-Outline-v4.pdf
    syllabus-inventory-completion-matrix.md
  weeks/
    week00-onboarding/
      index.qmd
      assets/
    week01-health-data-ethics/
      index.qmd
      activity-data-intake-card.qmd
      assets/
    week02-modern-workflows/
      index.qmd
      tutorials/
      assets/
    week03-r-with-ai/
      index.qmd
      tutorials/
      assets/
    week04-git-collaboration/
      index.qmd
      tutorials/
      assets/
    week05-polyglot-r-deepening/
      index.qmd
      tutorials/
      assets/
    week06-visualization/
      index.qmd
      activity-ai-visual-audit.qmd
      assets/
    week07-eda-ai-audit/
      index.qmd
      activity-table1-audit.qmd
      assets/
    week08-dashboard-kt/
      index.qmd
      starter-dashboard/
      assets/
    week09-science-communication/
      index.qmd
      peer-feedback-template.qmd
      assets/
    week10-reporting-publishing/
      index.qmd
      report-template.qmd
      assets/
    week11-portfolio-surgery/
      index.qmd
      reproducibility-test.qmd
      assets/
    week12-presentations/
      index.qmd
      rubric.qmd
    week13-presentations/
      index.qmd
  assignments/
    assignment01-workflows/
    assignment02-r-with-ai/
    assignment03-git/
    assignment04-polyglot/
    assignment05-visualization/
    assignment06-eda-ai-audit/
    assignment07-dashboard/
    assignment08-communication/
    assignment09-reporting/
    assignment10-portfolio-surgery/
  milestones/
    m0-group-formation/
    m1-proposal/
    m2-preliminary-analysis/
    m3-project-update/
    m4-peer-review/
    m5-presentation/
    final-portfolio/
  references/
    data-sources/
      nhis.qmd
      nhanes.qmd
      brfss.qmd
      ccs.qmd
      cads.qmd
      ctns.qmd
      csads.qmd
      phac-infobase.qmd
      ccdss.qmd
      gho.qmd
      open-portal.qmd
      bc-data-catalogue.qmd
    cheatsheets/
    troubleshooting/
  examples/
    r/
    python/
    data/
  assets/
    shared/
```

## Migration Notes

| Current source | Proposed home |
|---|---|
| `data.qmd` | `weeks/week01-health-data-ethics/index.qmd` |
| `data1.qmd`-`data12.qmd` and `assets/images/data*` | `references/data-sources/` plus matching assets |
| `workflows.qmd`, `workflows1.qmd`-`workflows11.qmd` | `weeks/week02-modern-workflows/` |
| `r.qmd`, `r1.qmd`-`r10.qmd` | `weeks/week03-r-with-ai/` |
| `git.qmd`, `git1.qmd`-`git10.qmd` | `weeks/week04-git-collaboration/` |
| `python.qmd`, `python1.qmd`-`python14.qmd` | `weeks/week05-polyglot-r-deepening/` |
| `viz.qmd`, `eda.qmd`, `dashboards.qmd`, `comms.qmd`, `reports.qmd`, `advanced.qmd` | Historical sources; current modules live under `weeks/` |
| `examples/bmi39.R`, `examples/demo5.R`, `examples/data/*.rds` | Keep under `examples/`, but add week references in activities |

## Immediate Build Priorities

1. Decide whether the Quarto book should be navigated by week or by topic. For syllabus alignment, week-based navigation is the cleaner primary structure.
2. Surface existing developed content currently missing from `_quarto.yml`, especially `data2.qmd`-`data12.qmd` and `python2.qmd`-`python14.qmd`, or move it into a reference appendix.
3. Continue refining milestone briefs M0 and M3-M5 now that A1-A10 are complete.
4. Keep assignment and milestone folders surfaced in `_quarto.yml` as deliverables become first-class artifacts.
5. Maintain the final portfolio checklist from the syllabus reproducibility contract.
