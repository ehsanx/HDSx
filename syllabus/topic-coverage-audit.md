# Syllabus-to-Content Coverage Audit

Source of truth: `syllabus/SPPH-381H-Course-Outline-v4.qmd` and `syllabus/syllabus-inventory-completion-matrix.md`.

Scope scanned: `_quarto.yml`, `weeks/**.qmd`, `references/**.qmd`, `assignments/**`, and `milestones/**`.

Decision rule: **Complete** requires both narrative coverage and a runnable example, activity, exercise, or concrete student output. **Needs Improvement** means content exists but is incomplete, scaffold-only, TODO-heavy, or missing the exercise/example needed by the syllabus. **Needs Review** means evidence is weak, ambiguous, or outside the primary week/module.

## 1) Executive Summary

### Status Counts

- **Complete:** 3 topics
- **Needs Improvement:** 11 topics
- **Not Covered:** 0 topics
- **Needs Review:** 1 topic

### Top 10 Highest-Priority Gaps

1. **Weeks 6-11 are scaffold-heavy.** Each has an overview, but most pages still contain `TODO Before Release` / `Content TODO` blocks rather than worked examples.
2. **Assignment briefs A1-A10 are stubs.** Every assignment README says `TODO: Build from assignments/assignment-template.qmd`.
3. **Milestone briefs M0-M5 and Final Portfolio are stubs and not in the Quarto TOC.** The milestone index is in the book, but the individual README briefs are orphaned.
4. **`renv` is promised in Week 3 but not taught with an activity.** Evidence is limited to assignment focus text and syllabus wording.
5. **Week 2 workflow mismatch: syllabus says fork a template, current content emphasizes GitHub Classroom.**
6. **Week 5 R deepening is weak.** Python/pandas coverage is substantial, but the syllabus promise of R mastery exercises on `dplyr` and functions is not clearly implemented in Week 5.
7. **Visualization lacks runnable ggplot2/plotly examples.** Week 6 explicitly says to add worked examples and flawed/corrected AI plots.
8. **Dashboard pathway is undecided.** Week 8 says to decide between Quarto dashboard, Shiny, or static HTML/JS.
9. **Reporting/publishing lacks concrete citation and GitHub Pages workflow.** Week 10 lists these as TODOs.
10. **Presentation weeks lack rubric/timing/submission details.** Weeks 12-13 contain overviews but still call for presentation timing rules, peer feedback forms, and rubric links.

## 2) Coverage Matrix

### Week 0

- **Topic name (exact from syllabus):** Onboarding
- **Status:** Needs Improvement
- **Evidence:**
  - `syllabus/syllabus-inventory-completion-matrix.md` / `Extracted Schedule`: "GitHub account, orientation video, pre-course survey."
  - `weeks/week00-onboarding/index.qmd` / `Required Student Tasks`: "Create a GitHub account"; "Watch the orientation video"; "Complete the pre-course survey".
  - `weeks/week00-onboarding/index.qmd` / `Content TODO`: "Add the actual Canvas orientation video link or placeholder."
- **What's missing:**
  - Actual orientation video link or durable placeholder.
  - Pre-course survey link or instructions.
  - Clear confirmation/submission route.
- **Recommended next additions:**
  - Add a Canvas-link placeholder with release instructions.
  - Add a short completion checklist students can self-verify.
  - Add expected support/contact path for account setup failures.

### Week 1

- **Topic name (exact from syllabus):** Health Data, KT & Ethics
- **Status:** Complete
- **Evidence:**
  - `weeks/week01-health-data-ethics/index.qmd` / `Overview`: "Knowledge Translation (KT)" and "ethical landscape of modern health data".
  - `weeks/week01-health-data-ethics/index.qmd` / `The Open Data Landscape`: "Explore 2-3 portals".
  - `weeks/week01-health-data-ethics/index.qmd` / `The Data Intake Card`: fields for `dataset_name`, `portal_url`, `licence_terms`, and `stewardship_notes`.
  - `weeks/week01-health-data-ethics/activity-data-intake-card.qmd` / `Student Template`: copyable YAML-style template for the activity.
  - `references/data-sources/nhis.qmd` / `Data Source: NHIS`; `references/data-sources/nhanes.qmd` / `Data Source: NHANES`; plus other data-source reference pages.
- **What's missing:**
  - The activity page still has `TODO Before Release`.
  - A short rubric for provenance/licensing/stewardship is requested but not present.
- **Recommended next additions:**
  - Add a student-facing rubric to `activity-data-intake-card.qmd`.
  - Add one filled example Data Intake Card.
  - Link the Week 1 page directly to relevant reference data-source pages.

### Week 2

- **Topic name (exact from syllabus):** Modern Workflows
- **Status:** Complete
- **Evidence:**
  - `weeks/week02-modern-workflows/index.qmd` / `Getting Started: GitHub Account and Classroom`: account and repository setup steps.
  - `weeks/week02-modern-workflows/index.qmd` / `Launching Your Codespace`: "Create Codespace".
  - `weeks/week02-modern-workflows/index.qmd` / `Concepts: IDE, Notebook, Script`: compares IDE, script, notebook.
  - `weeks/week02-modern-workflows/index.qmd` / `Concepts: Literate Programming`: "Quarto documents mix Markdown text with code chunks."
  - `weeks/week02-modern-workflows/index.qmd` / `Tutorial: Stage, Commit, and Sync`: staged commit workflow.
  - `weeks/week02-modern-workflows/index.qmd` / `Assignment 1: Your First Quarto Report`: concrete student task.
- **What's missing:**
  - Syllabus says "Fork course template repo"; current content says GitHub Classroom/repository.
  - Individual assignment folder is a stub even though the week page has a full assignment section.
- **Recommended next additions:**
  - Decide whether the official workflow is fork-based or GitHub Classroom, then align Week 2 and syllabus language.
  - Move or mirror the Week 2 assignment instructions into `assignments/assignment01-workflows/README.md`.

### Week 3

- **Topic name (exact from syllabus):** R with AI
- **Status:** Needs Improvement
- **Evidence:**
  - `weeks/week03-r-with-ai/index.qmd` / `Core Constructs`: variables, functions, and pipes.
  - `weeks/week03-r-with-ai/index.qmd` / `Data Import and First Contact`: `read_csv("data/patients.csv")`.
  - `weeks/week03-r-with-ai/index.qmd` / `Data Transformation: The Five dplyr Verbs`: `filter`, `select`, `mutate`, `summarise`, `group_by`.
  - `weeks/week03-r-with-ai/index.qmd` / `Writing a Simple Function`: reusable summary function.
  - `weeks/week03-r-with-ai/index.qmd` / `Debugging: Reading the Red Text`: "Fix It" loop.
  - `weeks/week03-r-with-ai/index.qmd` / `Assignment: The "Mad Libs" Report`: step-by-step workflow and deliverable.
  - `assignments/assignment02-r-with-ai/README.md`: "R basics, tidyverse transformations, custom functions, AI debugging, and `renv` awareness."
- **What's missing:**
  - `renv` is promised in the syllabus as "intro to renv for dependency management" and "initialize renv", but no worked `renv::init()` / restore activity was found.
  - Assignment 2 README is still a TODO stub.
- **Recommended next additions:**
  - Add a short `renv` tutorial/checkpoint to Week 3.
  - Add `renv.lock` expectations and a recovery note.
  - Expand `assignments/assignment02-r-with-ai/README.md` from the template.

### Week 4

- **Topic name (exact from syllabus):** Git & Collaboration
- **Status:** Complete
- **Evidence:**
  - `weeks/week04-git-collaboration/index.qmd` / `Save Game of Reproducible Science`: Git as provenance.
  - `weeks/week04-git-collaboration/index.qmd` / `Repo Hygiene`: `.gitignore` and relative paths.
  - `weeks/week04-git-collaboration/index.qmd` / `Branching: Safe Experimentation`: branch creation/merge tutorial.
  - `weeks/week04-git-collaboration/index.qmd` / `Pull Requests: The Peer Review Gateway`: PR concept and tutorial.
  - `weeks/week04-git-collaboration/index.qmd` / `Setting Up Your Group Repository`: term project group repository steps.
  - `weeks/week04-git-collaboration/index.qmd` / `Practice Exercise: The Full Workflow Drill`: concrete exercise.
- **What's missing:**
  - M0 brief exists but is a TODO stub.
  - Assignment 3 README exists but is a TODO stub.
- **Recommended next additions:**
  - Expand `milestones/m0-group-formation/README.md` with submission evidence.
  - Expand `assignments/assignment03-git/README.md` with branch/PR screenshots or required proof.

### Week 5

- **Topic name (exact from syllabus):** Polyglot Awareness & R Deepening
- **Status:** Needs Improvement
- **Evidence:**
  - `weeks/week05-polyglot-r-deepening/index.qmd` / `Python vs R--When and Why?`: "R remains your primary analysis language."
  - `weeks/week05-polyglot-r-deepening/index.qmd` / `Loading and Viewing Data`: `pd.read_csv("data/patients.csv")`.
  - `weeks/week05-polyglot-r-deepening/index.qmd` / `Translation Traps`: zero-index, indentation, assignment/equality.
  - `weeks/week05-polyglot-r-deepening/index.qmd` / `The AI Workflow: One Step, One Cell`: parity audit rules.
  - `weeks/week05-polyglot-r-deepening/python13-translation-exercise.qmd` / `The Bilingual Translation Exercise`: practice exercise.
  - `assignments/assignment04-polyglot/README.md`: "reading Python/pandas, translating a small R task, and verifying parity."
- **What's missing:**
  - Week 5 has strong Python coverage but weak explicit R-deepening exercises.
  - Assignment 4 README is a TODO stub.
  - Dependency documentation is covered for Python `requirements.txt`, but the syllabus framing of R deepening is not clearly tied to a student output.
- **Recommended next additions:**
  - Add one Week 5 exercise that repeats a task in R and Python and compares outputs.
  - Add a specific R `dplyr`/function refinement task.
  - Expand Assignment 4 into a concrete submission brief.

### Week 6

- **Topic name (exact from syllabus):** Data Visualization
- **Status:** Needs Improvement
- **Evidence:**
  - `weeks/week06-visualization/index.qmd` / `Overview`: "publication-quality visualizations" and "ggplot2 or plotly".
  - `weeks/week06-visualization/index.qmd` / `Content TODO`: "Add a worked ggplot2 example"; "Add one intentionally misleading AI-generated chart".
  - `weeks/week06-visualization/activity-ai-visual-audit.qmd` / `Goal`: evaluate "correctness, clarity, bias, aggregation choices, and misleading design."
  - `assignments/assignment05-visualization/README.md`: "original plot, revised plot, and audit note."
- **What's missing:**
  - Worked ggplot2 example.
  - Plotly or interactive extension.
  - Flawed AI chart plus corrected version.
  - Concrete starter data and prompt.
- **Recommended next additions:**
  - Add a runnable ggplot2 tutorial using shared data.
  - Add one intentionally flawed chart and student audit questions.
  - Add a small plotly extension as optional enrichment.

### Week 7

- **Topic name (exact from syllabus):** EDA, Table 1 & AI Auditing
- **Status:** Needs Improvement
- **Evidence:**
  - `weeks/week07-eda-ai-audit/index.qmd` / `Overview`: EDA and "standard Table 1".
  - `weeks/week07-eda-ai-audit/index.qmd` / `Content TODO`: "Build a worked EDA"; "Add Table 1 expectations"; "Add a planted-error AI audit exercise."
  - `weeks/week07-eda-ai-audit/activity-table1-audit.qmd` / `Goal`: "create a descriptive summary and audit AI-generated code".
  - `assignments/assignment06-eda-ai-audit/README.md`: "EDA, Table 1 or equivalent descriptive summary, planted-error audit, and provenance notes."
- **What's missing:**
  - Worked EDA with data path.
  - Table 1 variables and example output.
  - Planted-error code/summary/visualization.
  - Instructor key outside student page.
- **Recommended next additions:**
  - Build around `examples/data/` or a week-local starter dataset.
  - Add a runnable Table 1 example.
  - Add AI audit prompts and expected fixes.

### Week 8

- **Topic name (exact from syllabus):** Dashboard Prototypes for KT
- **Status:** Needs Improvement
- **Evidence:**
  - `weeks/week08-dashboard-kt/index.qmd` / `Overview`: Shiny apps, dashboards, and KT.
  - `weeks/week08-dashboard-kt/index.qmd` / `Content TODO`: "Decide the required core pathway"; "Add a minimal dashboard starter".
  - `weeks/week08-dashboard-kt/starter-dashboard.qmd` / `Required Elements`: audience-specific question, control, visualization, interpretation, limitation.
  - `assignments/assignment07-dashboard/README.md`: "minimal dashboard-style KT product from EDA outputs."
- **What's missing:**
  - Actual dashboard code.
  - Required pathway decision: Quarto dashboard, Shiny, or static HTML/JS.
  - Codespaces testing instructions.
  - Privacy-safe publishing guidance.
- **Recommended next additions:**
  - Add a minimal Quarto dashboard starter that renders.
  - Add a fallback static version.
  - State which pathway is required and which are optional.

### Week 9

- **Topic name (exact from syllabus):** Communication of Scientific Findings
- **Status:** Needs Improvement
- **Evidence:**
  - `weeks/week09-science-communication/index.qmd` / `Overview`: "Audience-Specific KT", plain language, slide decks, peer review.
  - `weeks/week09-science-communication/index.qmd` / `Content TODO`: "Add a revealjs starter deck"; "Add a plain-language summary exercise."
  - `weeks/week09-science-communication/revealjs-peer-feedback.qmd` / `Peer Feedback Prompts`: main message, evidence, overclaiming, reproducibility/audience fit.
  - `assignments/assignment08-communication/README.md`: "revealjs slides, plain-language summary, citations, and peer feedback."
- **What's missing:**
  - Minimal `format: revealjs` example.
  - Three-slide starter structure.
  - Plain-language summary exercise.
  - Citation and accessibility expectations.
- **Recommended next additions:**
  - Add a renderable revealjs starter.
  - Add a before/after plain-language translation activity.
  - Convert peer prompts into a reusable feedback form.

### Week 10

- **Topic name (exact from syllabus):** Writing & Publishing Reports
- **Status:** Needs Improvement
- **Evidence:**
  - `weeks/week10-reporting-publishing/index.qmd` / `Overview`: dynamic report and publishing workflows.
  - `weeks/week10-reporting-publishing/index.qmd` / `Content TODO`: report skeleton, citation examples, GitHub Pages setup, grounding audit.
  - `weeks/week10-reporting-publishing/report-template.qmd` / `Suggested Sections`: question, data, methods, results, limitations, plain-language summary, AI-use note.
  - `assignments/assignment09-reporting/README.md`: "Quarto report, citations, GitHub Pages or private equivalent, and grounding audit."
- **What's missing:**
  - Copyable report starter with real YAML.
  - Bibliography setup and citation example.
  - GitHub Pages setup or private submission alternative.
  - Interactive element example.
- **Recommended next additions:**
  - Add a minimal report template that renders with `references.bib`.
  - Add a GitHub Pages checklist with screenshots or text-only steps.
  - Add citation grounding audit prompts.

### Week 11

- **Topic name (exact from syllabus):** Portfolio Surgery & Optional Advanced Deployment
- **Status:** Needs Improvement
- **Evidence:**
  - `weeks/week11-portfolio-surgery/index.qmd` / `Overview`: dependency management, auditability, and peer review.
  - `weeks/week11-portfolio-surgery/index.qmd` / `Content TODO`: fresh Codespace test, broken-project exercise, Assignment 10, Milestone 4, final checklist.
  - `weeks/week11-portfolio-surgery/reproducibility-test.qmd` / `Failure Log Template`: checks for repository, packages, report, dashboard, README.
  - `assignments/assignment10-portfolio-surgery/README.md`: "fresh Codespace test, dependency/path repair, README clarity".
  - `milestones/m4-peer-review/README.md`: peer review covering clarity, reproducibility, auditability, KT value.
- **What's missing:**
  - Step-by-step fresh Codespace protocol.
  - Broken-project debugging exercise.
  - Final portfolio readiness checklist.
  - Optional Python-flavoured pathway from syllabus is not clearly present here.
- **Recommended next additions:**
  - Expand `reproducibility-test.qmd` into a runbook.
  - Add a sample failure log with fixes.
  - Add a final portfolio checklist linked from Week 11 and final portfolio README.

### Week 12

- **Topic name (exact from syllabus):** Term Project Presentations, Part 1
- **Status:** Needs Improvement
- **Evidence:**
  - `weeks/week12-presentations/index.qmd` / `Overview`: first presentation block and peer review.
  - `weeks/week12-presentations/index.qmd` / `Content TODO`: timing rules, slide submission, peer feedback form, rubric.
  - `milestones/m5-presentation/README.md`: "presentation slides, live Q&A, and peer review feedback."
- **What's missing:**
  - Presentation timing rules.
  - Slide submission instructions.
  - Peer feedback form.
  - Presentation rubric.
- **Recommended next additions:**
  - Add a M5 rubric and link it from Week 12.
  - Add a slide checklist and submission timing.
  - Add a simple peer feedback form.

### Week 13

- **Topic name (exact from syllabus):** Term Project Presentations, Part 2
- **Status:** Needs Improvement
- **Evidence:**
  - `weeks/week13-presentations/index.qmd` / `Overview`: completes M5 and feedback before final portfolio.
  - `weeks/week13-presentations/index.qmd` / `Content TODO`: group schedule, final reminders, closing reflection prompt.
  - `milestones/m5-presentation/README.md`: "slides render before class and claims are grounded".
- **What's missing:**
  - Group schedule or placeholder.
  - Final portfolio reminders.
  - Closing reflection prompt.
- **Recommended next additions:**
  - Add a repeatable Part 2 logistics block.
  - Link to final portfolio checklist.
  - Add a reflection prompt on reproducibility and KT.

### Final

- **Topic name (exact from syllabus):** Final Portfolio
- **Status:** Needs Review
- **Evidence:**
  - `syllabus/syllabus-inventory-completion-matrix.md` / `Extracted Schedule`: "Final portfolio due Dec 11, Fri 4 PM."
  - `milestones/final-portfolio/README.md`: "complete repository, reproducible report, dashboard-style KT product, presentation materials, and AI-use audit note."
  - `milestones/final-portfolio/README.md`: `TODO: Build from milestones/milestone-template.qmd`.
  - `milestones/index.qmd` / milestone table: "Complete reproducible portfolio."
- **What's missing:**
  - Detailed final portfolio checklist.
  - Submission instructions.
  - Explicit mapping to reproducibility contract.
  - Public/private portfolio guidance from syllabus.
- **Recommended next additions:**
  - Convert the syllabus reproducibility contract into a final checklist.
  - Expand `milestones/final-portfolio/README.md`.
  - Add a source page to `_quarto.yml` or link from Week 13.

## 3) Deliverables Alignment

### Weekly Assignments A1-A10

| Deliverable | Syllabus expectation | Existing repo page(s) | Alignment | Mismatch / risk |
|---|---|---|---|---|
| A1 | Assignment 1 due Week 2; fork/template, Codespace, Quarto, commit/sync | `assignments/index.qmd`; `assignments/assignment01-workflows/README.md`; `weeks/week02-modern-workflows/index.qmd` / `Assignment 1` | Needs Improvement | Week page has useful task detail, but assignment README is a TODO stub. Syllabus says fork; Week 2 content says GitHub Classroom. |
| A2 | R basics, tidyverse, functions, debugging, `renv`, Quarto documentation | `assignments/assignment02-r-with-ai/README.md`; `weeks/week03-r-with-ai/index.qmd` | Needs Improvement | Week 3 content is strong, but assignment README is a TODO stub and `renv` lacks a worked activity. |
| A3 | Git collaboration and repo hygiene | `assignments/assignment03-git/README.md`; `weeks/week04-git-collaboration/index.qmd` | Needs Improvement | Week content is strong, but assignment README is a TODO stub. |
| A4 | Polyglot awareness and R deepening | `assignments/assignment04-polyglot/README.md`; `weeks/week05-polyglot-r-deepening/index.qmd` | Needs Improvement | Python coverage is strong; assignment README is a TODO stub; R deepening is not explicit enough. |
| A5 | Visualization and AI visual audit | `assignments/assignment05-visualization/README.md`; `weeks/week06-visualization/index.qmd`; `weeks/week06-visualization/activity-ai-visual-audit.qmd` | Needs Improvement | Assignment README and week pages identify outputs, but runnable examples and starter assets are TODO. |
| A6 | EDA, Table 1, planted-error audit | `assignments/assignment06-eda-ai-audit/README.md`; `weeks/week07-eda-ai-audit/index.qmd`; `weeks/week07-eda-ai-audit/activity-table1-audit.qmd` | Needs Improvement | Deliverable is named, but worked EDA, Table 1 variables, and planted-error materials are TODO. |
| A7 | Dashboard-style KT prototype | `assignments/assignment07-dashboard/README.md`; `weeks/week08-dashboard-kt/index.qmd`; `weeks/week08-dashboard-kt/starter-dashboard.qmd` | Needs Improvement | Required pathway and starter code are TODO. |
| A8 | Scientific communication and peer feedback | `assignments/assignment08-communication/README.md`; `weeks/week09-science-communication/index.qmd`; `weeks/week09-science-communication/revealjs-peer-feedback.qmd` | Needs Improvement | Peer prompts exist; revealjs starter, plain-language exercise, and assignment brief are TODO. |
| A9 | Reporting, citations, publishing | `assignments/assignment09-reporting/README.md`; `weeks/week10-reporting-publishing/index.qmd`; `weeks/week10-reporting-publishing/report-template.qmd` | Needs Improvement | Report sections exist; citations, GitHub Pages/private alternative, and assignment brief are TODO. |
| A10 | Portfolio surgery and reproducibility test | `assignments/assignment10-portfolio-surgery/README.md`; `weeks/week11-portfolio-surgery/index.qmd`; `weeks/week11-portfolio-surgery/reproducibility-test.qmd` | Needs Improvement | Failure log exists; step-by-step protocol and assignment brief are TODO. |

### Milestones M0-M5 and Final Portfolio

| Deliverable | Syllabus expectation | Existing repo page(s) | Alignment | Mismatch / risk |
|---|---|---|---|---|
| M0 | Group formation; one member forks template and adds teammates | `milestones/m0-group-formation/README.md`; `weeks/week04-git-collaboration/index.qmd` / `Setting Up Your Group Repository` | Needs Improvement | Week 4 has group setup steps; milestone README is a TODO stub and not in `_quarto.yml`. |
| M1 | Proposal: research question, dataset, feasibility, provenance/stewardship | `milestones/m1-proposal/README.md`; `weeks/week05-polyglot-r-deepening/python11-project-milestone.qmd` | Needs Improvement | M1 README is a TODO stub. Week 5 has a checklist, but syllabus places M1 due Week 6. |
| M2 | Preliminary analysis: cleaning, EDA, Table 1, runnable repo | `milestones/m2-preliminary-analysis/README.md`; `weeks/week07-eda-ai-audit/index.qmd` | Needs Improvement | Milestone README and Week 7 are TODO-heavy; no worked EDA/Table 1 example. |
| M3 | Project update: draft dashboard-style KT product + report draft | `milestones/m3-project-update/README.md`; `weeks/week10-reporting-publishing/index.qmd`; `weeks/week08-dashboard-kt/index.qmd` | Needs Improvement | M3 README is a TODO stub; Week 8/10 content is still scaffolded. |
| M4 | Peer review with reproducibility and auditability checks | `milestones/m4-peer-review/README.md`; `weeks/week11-portfolio-surgery/index.qmd` | Needs Improvement | M4 README is a TODO stub; Week 11 asks to add peer review instructions. |
| M5 | Presentations, live Q&A, peer review | `milestones/m5-presentation/README.md`; `weeks/week12-presentations/index.qmd`; `weeks/week13-presentations/index.qmd` | Needs Improvement | Presentation milestone exists but is a TODO stub; rubric and timing rules are missing. |
| Final Portfolio | Complete report, dashboard-style KT product, auditable repo | `milestones/final-portfolio/README.md`; `milestones/index.qmd` | Needs Review | Final portfolio README is a TODO stub and not referenced in `_quarto.yml`. |

## 4) Consistency Checks

### Topics Present in Repo but Not Explicitly in Syllabus

- `references/data-sources/*`: detailed standalone data-source tutorials for NHIS, NHANES, BRFSS, CCS, CADS, CTNS, CSADS, PHAC Infobase, CCDSS, GHO, Open Portal, and BC Data Catalogue. These support Week 1 but are more extensive than the syllabus schedule.
- `course-operations/index.qmd`: present in `_quarto.yml` as maintainer-facing course operations guidance; useful internally, but not a student topic from the syllabus schedule.
- `syllabus/syllabus-inventory-completion-matrix.md`: included in `_quarto.yml` under Course Operations; useful internally, but not a student topic from the syllabus schedule.
- Several Week 2-5 tutorial fragments are more granular than the syllabus topic names, especially `workflows01-*` through `workflows11-*`, `r01-*` through `r10-*`, `git01-*` through `git10-*`, and `python01-*` through `python14-*`.

### Syllabus Topics in TOC but Missing or Weak Content Pages

- Week 6 through Week 13 all have TOC pages, but each primary week page still contains `TODO Before Release` and `Content TODO`.
- Assignment and milestone index/template pages are in the TOC, but individual A1-A10 and M0-M5 README briefs are not.
- `syllabus/SPPH-381H-Course-Outline-v4.qmd` is a source-of-truth file but is not referenced in `_quarto.yml`; only `syllabus/syllabus-inventory-completion-matrix.md` is in the book.
- Final Portfolio appears in `milestones/index.qmd` and `milestones/final-portfolio/README.md`, but there is no dedicated TOC entry for the final portfolio brief.

### Orphan Pages Not Referenced in `_quarto.yml`

- `assignments/assignment01-workflows/README.md`
- `assignments/assignment02-r-with-ai/README.md`
- `assignments/assignment03-git/README.md`
- `assignments/assignment04-polyglot/README.md`
- `assignments/assignment05-visualization/README.md`
- `assignments/assignment06-eda-ai-audit/README.md`
- `assignments/assignment07-dashboard/README.md`
- `assignments/assignment08-communication/README.md`
- `assignments/assignment09-reporting/README.md`
- `assignments/assignment10-portfolio-surgery/README.md`
- `milestones/final-portfolio/README.md`
- `milestones/m0-group-formation/README.md`
- `milestones/m1-proposal/README.md`
- `milestones/m2-preliminary-analysis/README.md`
- `milestones/m3-project-update/README.md`
- `milestones/m4-peer-review/README.md`
- `milestones/m5-presentation/README.md`
- `syllabus/SPPH-381H-Course-Outline-v4.qmd`

## Appendix A: Files Scanned

- `_quarto.yml`
- `syllabus/SPPH-381H-Course-Outline-v4.qmd`
- `syllabus/syllabus-inventory-completion-matrix.md`
- `weeks/week00-onboarding/index.qmd`
- `weeks/week01-health-data-ethics/index.qmd`
- `weeks/week01-health-data-ethics/activity-data-intake-card.qmd`
- `weeks/week02-modern-workflows/index.qmd`
- `weeks/week02-modern-workflows/workflows01-cloud-drive.qmd`
- `weeks/week02-modern-workflows/workflows02-repository-tour.qmd`
- `weeks/week02-modern-workflows/workflows03-open-codespace.qmd`
- `weeks/week02-modern-workflows/workflows04-reopen-codespace.qmd`
- `weeks/week02-modern-workflows/workflows05-vscode-orientation.qmd`
- `weeks/week02-modern-workflows/workflows06-files-folders.qmd`
- `weeks/week02-modern-workflows/workflows07-render-quarto.qmd`
- `weeks/week02-modern-workflows/workflows08-commit-work.qmd`
- `weeks/week02-modern-workflows/workflows09-troubleshooting.qmd`
- `weeks/week02-modern-workflows/workflows10-stop-codespace.qmd`
- `weeks/week02-modern-workflows/workflows11-checklist.qmd`
- `weeks/week03-r-with-ai/index.qmd`
- `weeks/week03-r-with-ai/r01-setup.qmd`
- `weeks/week03-r-with-ai/r02-packages.qmd`
- `weeks/week03-r-with-ai/r03-basics.qmd`
- `weeks/week03-r-with-ai/r04-control-flow.qmd`
- `weeks/week03-r-with-ai/r05-data-import.qmd`
- `weeks/week03-r-with-ai/r06-debugging.qmd`
- `weeks/week03-r-with-ai/r07-ai-audit-checklist.qmd`
- `weeks/week03-r-with-ai/r08-comments.qmd`
- `weeks/week03-r-with-ai/r09-assignment-mad-libs.qmd`
- `weeks/week03-r-with-ai/r10-final-checklist.qmd`
- `weeks/week04-git-collaboration/index.qmd`
- `weeks/week04-git-collaboration/git01-concepts.qmd`
- `weeks/week04-git-collaboration/git02-tutorial.qmd`
- `weeks/week04-git-collaboration/git03-repo-hygiene.qmd`
- `weeks/week04-git-collaboration/git04-branching.qmd`
- `weeks/week04-git-collaboration/git05-pull-requests.qmd`
- `weeks/week04-git-collaboration/git06-ai-auditing.qmd`
- `weeks/week04-git-collaboration/git07-group-repository.qmd`
- `weeks/week04-git-collaboration/git08-knowledge-check.qmd`
- `weeks/week04-git-collaboration/git09-practice-exercise.qmd`
- `weeks/week04-git-collaboration/git10-quick-reference.qmd`
- `weeks/week05-polyglot-r-deepening/index.qmd`
- `weeks/week05-polyglot-r-deepening/python01-when-and-why.qmd`
- `weeks/week05-polyglot-r-deepening/python02-environment.qmd`
- `weeks/week05-polyglot-r-deepening/python03-packages-reproducibility.qmd`
- `weeks/week05-polyglot-r-deepening/python04-translation-traps.qmd`
- `weeks/week05-polyglot-r-deepening/python05-load-inspect-data.qmd`
- `weeks/week05-polyglot-r-deepening/python06-tracebacks.qmd`
- `weeks/week05-polyglot-r-deepening/python07-one-step-one-cell.qmd`
- `weeks/week05-polyglot-r-deepening/python08-mixing-r-python.qmd`
- `weeks/week05-polyglot-r-deepening/python09-reusable-scripts.qmd`
- `weeks/week05-polyglot-r-deepening/python10-git-progress.qmd`
- `weeks/week05-polyglot-r-deepening/python11-project-milestone.qmd`
- `weeks/week05-polyglot-r-deepening/python12-knowledge-check.qmd`
- `weeks/week05-polyglot-r-deepening/python13-translation-exercise.qmd`
- `weeks/week05-polyglot-r-deepening/python14-cheat-sheet.qmd`
- `weeks/week06-visualization/index.qmd`
- `weeks/week06-visualization/activity-ai-visual-audit.qmd`
- `weeks/week07-eda-ai-audit/index.qmd`
- `weeks/week07-eda-ai-audit/activity-table1-audit.qmd`
- `weeks/week08-dashboard-kt/index.qmd`
- `weeks/week08-dashboard-kt/starter-dashboard.qmd`
- `weeks/week09-science-communication/index.qmd`
- `weeks/week09-science-communication/revealjs-peer-feedback.qmd`
- `weeks/week10-reporting-publishing/index.qmd`
- `weeks/week10-reporting-publishing/report-template.qmd`
- `weeks/week11-portfolio-surgery/index.qmd`
- `weeks/week11-portfolio-surgery/reproducibility-test.qmd`
- `weeks/week12-presentations/index.qmd`
- `weeks/week13-presentations/index.qmd`
- `references/data-sources/nhis.qmd`
- `references/data-sources/nhanes.qmd`
- `references/data-sources/brfss.qmd`
- `references/data-sources/ccs.qmd`
- `references/data-sources/cads.qmd`
- `references/data-sources/ctns.qmd`
- `references/data-sources/csads.qmd`
- `references/data-sources/phac-infobase.qmd`
- `references/data-sources/ccdss.qmd`
- `references/data-sources/gho.qmd`
- `references/data-sources/open-portal.qmd`
- `references/data-sources/bc-data-catalogue.qmd`
- `assignments/index.qmd`
- `assignments/assignment-template.qmd`
- `assignments/assignment01-workflows/README.md`
- `assignments/assignment02-r-with-ai/README.md`
- `assignments/assignment03-git/README.md`
- `assignments/assignment04-polyglot/README.md`
- `assignments/assignment05-visualization/README.md`
- `assignments/assignment06-eda-ai-audit/README.md`
- `assignments/assignment07-dashboard/README.md`
- `assignments/assignment08-communication/README.md`
- `assignments/assignment09-reporting/README.md`
- `assignments/assignment10-portfolio-surgery/README.md`
- `milestones/index.qmd`
- `milestones/milestone-template.qmd`
- `milestones/m0-group-formation/README.md`
- `milestones/m1-proposal/README.md`
- `milestones/m2-preliminary-analysis/README.md`
- `milestones/m3-project-update/README.md`
- `milestones/m4-peer-review/README.md`
- `milestones/m5-presentation/README.md`
- `milestones/final-portfolio/README.md`

## Appendix B: Keyword Patterns Used

- Week/module labels: `Week 0`, `Week 1`, `Week 2`, `Week 3`, `Week 4`, `Week 5`, `Week 6`, `Week 7`, `Week 8`, `Week 9`, `Week 10`, `Week 11`, `Week 12`, `Week 13`, `Final Portfolio`
- Workflow terms: `Codespaces`, `VS Code`, `Quarto`, `render`, `commit`, `sync`, `fork`, `GitHub Classroom`, `stage`, `stop Codespace`
- R terms: `R`, `tidyverse`, `dplyr`, `read_csv`, `filter`, `select`, `mutate`, `summarise`, `group_by`, `function`, `debugging`, `renv`
- Python terms: `Python`, `pandas`, `pd.read_csv`, `Jupyter`, `requirements.txt`, `reticulate`, `translation`, `parity`
- Ethics/data terms: `health data`, `open data`, `portal`, `metadata`, `provenance`, `stewardship`, `privacy`, `security`, `OCAP`, `CARE`, `AI hallucination`, `bias`
- Visualization terms: `ggplot2`, `plotly`, `visual audit`, `misleading`, `clarity`, `aggregation`, `caption`, `bias`
- EDA terms: `EDA`, `Exploratory Data Analysis`, `Table 1`, `descriptive summary`, `cleaning`, `planted-error`, `audit`
- Dashboard terms: `dashboard`, `KT`, `Knowledge Translation`, `Shiny`, `Shinylive`, `static HTML`, `GitHub Pages`, `filter`, `interactive`
- Communication/reporting terms: `plain language`, `revealjs`, `slides`, `peer feedback`, `citations`, `references`, `BibTeX`, `Zotero`, `report`, `publishing`, `grounding audit`
- Portfolio terms: `fresh Codespace`, `reproducibility`, `README`, `dependency`, `path`, `peer review`, `presentation`, `AI-use note`
