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

Status key: **Ready** = source is substantial and surfaced in navigation; **Partial** = source exists but has gaps, placeholders, or navigation mismatch; **Missing** = no clear source content found.

| Week | Syllabus need | Current matching inventory | Status | Gap / action |
|---|---|---|---|---|
| 0 | Async onboarding module | Syllabus-only; no dedicated onboarding `.qmd` found | Missing | Add `week00-onboarding/` or an onboarding chapter with GitHub setup, orientation link placeholder, and survey instructions. |
| 1 | Health data, ethics, KT, Data Intake Card | `data.qmd`; `data1.qmd`; extra `data2.qmd`-`data12.qmd`; `assets/images/data1`-`data12` | Partial | Strong content exists, but only `data1.qmd` is in `_quarto.yml`; decide whether data-source pages are Week 1 references or a separate data appendix. |
| 2 | Codespaces, Quarto basics, reproducible structure, commits | `workflows.qmd`; `workflows1.qmd`-`workflows11.qmd`; `assets/images/workflow*` | Ready | Good coverage. Normalize file naming and keep the parent/child relationship explicit. |
| 3 | R with AI, tidyverse, functions, debugging, `renv` | `r.qmd`; `r1.qmd`-`r10.qmd`; `assets/images/r*`; `examples/` NHANES files | Ready | Add explicit `renv` activity/checkpoint if not already embedded in assignment materials. |
| 4 | Git collaboration, PRs, repo hygiene, group setup | `git.qmd`; `git1.qmd`-`git10.qmd`; `assets/images/git*` | Ready | Looks aligned; M0 group setup should be made visibly tied to Week 4. |
| 5 | Python/pandas awareness and R deepening | `python.qmd`; `python1.qmd`-`python14.qmd`; `assets/images/python*` | Partial | `python.qmd` is substantial, but `_quarto.yml` only exposes `python1.qmd`; surface or consolidate the rest. R-deepening assignment materials are not obvious. |
| 6 | Data visualization with ggplot2/plotly and AI visual audit | `viz.qmd`; `viz1.qmd` | Missing | Current files are placeholders. Add real tutorial/activity content and assets. |
| 7 | EDA, Table 1, planted-error AI audit, provenance update | `eda.qmd`; `eda1.qmd`; NHANES example data/scripts | Missing | Current EDA files are placeholders. Build the activity around the existing NHANES examples and add audit materials. |
| 8 | Dashboard-style KT prototype, Quarto/Shiny concepts | `dashboards.qmd`; `dashboards1.qmd` | Missing | Current files are placeholders. Need a minimal dashboard path, starter template, and testing instructions. |
| 9 | Scientific communication, revealjs slides, peer feedback | `comms.qmd`; `comms1.qmd` | Missing | Current files are placeholders. Add revealjs tutorial, plain-language summary activity, and peer review template. |
| 10 | Reproducible reporting, publishing, citations, GitHub Pages | `reports.qmd`; `reports1.qmd`; `references.bib` empty | Missing | Current files are placeholders. Need report template, citation workflow, bibliography example, and publishing checklist. |
| 11 | Portfolio reproducibility stress test, optional deployment | `advanced.qmd`; `advanced1.qmd`; maybe `reports`/`dashboards` overlap | Missing | Current advanced files are placeholders. Create a portfolio surgery checklist and fresh Codespace test protocol. |
| 12 | Presentations Part 1 | No dedicated presentation week materials beyond `comms*` placeholders | Missing | Add presentation rubric/checklist and peer feedback form. |
| 13 | Presentations Part 2 | No dedicated presentation week materials beyond `comms*` placeholders | Missing | Add repeat presentation logistics or combine with Week 12 materials. |
| Final | Final portfolio | Syllabus has reproducibility contract; no dedicated portfolio submission package found | Partial | Convert the syllabus reproducibility contract into a student-facing final portfolio checklist/template. |

## Key Mismatches

1. The source tree is organized as topic families (`data`, `workflows`, `r`, `git`, `python`, etc.), while the syllabus is organized as weeks.
2. The first five technical weeks are substantially developed; Weeks 6-13 are mostly placeholders.
3. Several developed files are not surfaced in `_quarto.yml`: `data2.qmd`-`data12.qmd` and most `python*.qmd` files.
4. Parent files such as `data.qmd`, `workflows.qmd`, `r.qmd`, `git.qmd`, and `python.qmd` contain substantial chapter content but are used as Quarto `part:` pages, while many child pages are short fragments. This creates duplication and discoverability friction.
5. Assignment and milestone deliverables are present in the syllabus, but there is no obvious normalized assignment template folder.

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
| `viz.qmd`, `eda.qmd`, `dashboards.qmd`, `comms.qmd`, `reports.qmd`, `advanced.qmd` | Expand into Weeks 6-11 modules |
| `examples/bmi39.R`, `examples/demo5.R`, `examples/data/*.rds` | Keep under `examples/`, but add week references in activities |

## Immediate Build Priorities

1. Decide whether the Quarto book should be navigated by week or by topic. For syllabus alignment, week-based navigation is the cleaner primary structure.
2. Surface existing developed content currently missing from `_quarto.yml`, especially `data2.qmd`-`data12.qmd` and `python2.qmd`-`python14.qmd`, or move it into a reference appendix.
3. Build Weeks 6-11, because those are the largest content gaps.
4. Add assignment and milestone folders so deliverables are first-class artifacts rather than only syllabus text.
5. Create a final portfolio checklist from the syllabus reproducibility contract.
