# Syllabus-to-Content Coverage Audit

Source of truth: `syllabus/SPPH-381H-Course-Outline-v4.qmd` and `syllabus/syllabus-inventory-completion-matrix.md`.

Scope scanned: `_quarto.yml`, `weeks/**.qmd`, `references/**.qmd`, `assignments/**`, and `milestones/**`.

Decision rule: **Complete** requires both narrative coverage and a runnable example, activity, exercise, or concrete student output. **Needs Improvement** means content exists but is incomplete, scaffold-only, draft-heavy, or missing the exercise/example needed by the syllabus. **Needs Review** means evidence is weak, ambiguous, or outside the primary week/module.

## 1) Executive Summary

### Status Counts

- **Complete:** 8 topics
- **Needs Improvement:** 6 topics
- **Not Covered:** 0 topics
- **Needs Review:** 1 topic

### Top 10 Highest-Priority Gaps

1. **Milestone briefs M0, M3-M5, and Final Portfolio need fuller student-facing instructions.** M1 and M2 are now surfaced and complete.
2. **Weeks 12-13 need the next presentation pass.** Assignment briefs are complete, but presentation logistics, timing, and rubric materials still need refinement.
3. **Final portfolio materials need a dedicated checklist.** The syllabus has a strong reproducibility contract, but the final portfolio brief should become a first-class page.
4. **`renv` is promised in Week 3 but not taught with an activity.** Evidence is limited to assignment focus text and syllabus wording.
5. **Week 2 workflow mismatch: syllabus says fork a template, current content emphasizes GitHub Classroom.**
6. **Week 5 polyglot workflow should be tested in Codespaces.** The R-first and Python parity materials are now specified, but the notebook and dependency path should be run before release.
7. **Week 9 communication should be tested after A8.** The assignment now specifies the slide/peer-feedback product; the rendered workflow should be checked before release.
8. **Week 10 reporting/publishing should be tested after A9.** The assignment now specifies report, BibTeX, publishing check, and grounding audit; GitHub Pages/private preview should be tested end to end.
9. **Week 11 portfolio surgery needs routine fresh-environment testing.** A10 now specifies the failure log, peer review, and risk list; the protocol should be rerun before release.
10. **Presentation weeks lack full rubric/timing/submission details.** Weeks 12-13 contain overviews but still need final presentation logistics and rubric links.

## 2) Coverage Matrix

### Week 0

- **Topic name (exact from syllabus):** Onboarding
- **Status:** Needs Improvement
- **Evidence:**
  - `syllabus/syllabus-inventory-completion-matrix.md` / `Extracted Schedule`: "GitHub account, orientation video, pre-course survey."
  - `weeks/week00-onboarding/index.qmd` / `Required Student Tasks`: "Create a GitHub account"; "Watch the orientation video"; "Complete the pre-course survey".
  - `weeks/week00-onboarding/index.qmd` / `Release Prep`: actual Canvas orientation video link or release link still needs to be added.
- **What's missing:**
  - Actual orientation video link or durable release link.
  - Pre-course survey link or instructions.
  - Clear confirmation/submission route.
- **Recommended next additions:**
  - Add a Canvas release link with instructions.
  - Add a short completion checklist students can self-verify.
  - Add expected support/contact path for account setup failures.

### Week 1

- **Topic name (exact from syllabus):** Health Data, KT & Ethics
- **Status:** Complete
- **Evidence:**
  - `weeks/week01-health-data-ethics/index.qmd` / `Objectives`: open portals, provenance, privacy/security, responsible AI, Indigenous Data Sovereignty, file formats, metadata, and KT framing.
  - `weeks/week01-health-data-ethics/index.qmd` / `In-Class Activity`: students choose an approved portal, complete a Data Intake Card, and write a KT framing sentence.
  - `weeks/week01-health-data-ethics/index.qmd` / `What Students Leave With`: "a completed Data Intake Card".
  - `weeks/week01-health-data-ethics/activity-data-intake-card.qmd` / `Student Template`: copyable template with provenance, metadata, privacy/security, stewardship, Indigenous data relevance, KT framing, citation, and AI-use fields.
  - `weeks/week01-health-data-ethics/activity-data-intake-card.qmd` / `Completed NHANES Example`: complete classroom example.
  - `weeks/week01-health-data-ethics/activity-data-intake-card.qmd` / `Scoring Guide`: complete/needs-work criteria.
  - `references/data-sources/nhis.qmd` / `Data Source: NHIS`; `references/data-sources/nhanes.qmd` / `Data Source: NHANES`; plus other data-source reference pages.
- **What's missing:**
  - Nothing essential for the Week 1 syllabus topic.
- **Recommended next additions:**
  - Keep approved portal links current before each offering.
  - Update the NHANES example if the cached classroom dataset changes.

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
  - `assignments/assignment01-workflows/README.md` / `What To Submit`: `workflow-check.qmd`, rendered HTML, reflection, and commit evidence.
- **What's missing:**
  - Syllabus says "Fork course template repo"; current content says GitHub Classroom/repository.
- **Recommended next additions:**
  - Decide whether the official workflow is fork-based or GitHub Classroom, then align Week 2 and syllabus language.
  - Keep the A1 brief aligned if the official repository distribution workflow changes.

### Week 3

- **Topic name (exact from syllabus):** R with AI
- **Status:** Complete
- **Evidence:**
  - `weeks/week03-r-with-ai/index.qmd` / `Core Constructs`: variables, functions, and pipes.
  - `weeks/week03-r-with-ai/index.qmd` / `Data Import and First Contact`: `read_csv("data/patients.csv")`.
  - `weeks/week03-r-with-ai/index.qmd` / `Data Transformation: The Five dplyr Verbs`: `filter`, `select`, `mutate`, `summarise`, `group_by`.
  - `weeks/week03-r-with-ai/index.qmd` / `Writing a Simple Function`: reusable summary function.
  - `weeks/week03-r-with-ai/index.qmd` / `Debugging: Reading the Red Text`: "Fix It" loop.
  - `weeks/week03-r-with-ai/index.qmd` / `Assignment: The "Mad Libs" Report`: step-by-step workflow and deliverable.
  - `assignments/assignment02-r-with-ai/README.md` / `Tasks`: import data, inspect missingness, use `dplyr`, write one custom function, save output, and add AI audit comments.
  - `assignments/assignment02-r-with-ai/starter-analysis.qmd`: runnable starter with package loading, relative-path import, inspection, summary, function, and saved output.
- **What's missing:**
  - Full `renv::init()` / restore workflow remains introductory rather than a dedicated worked exercise.
- **Recommended next additions:**
  - Add a short `renv` tutorial/checkpoint if dependency management becomes a graded Week 3 requirement.
  - Keep A2 dependency-note expectations aligned with any future `renv.lock` workflow.

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
  - M0 milestone brief still needs a later pass.
- **Recommended next additions:**
  - Expand `milestones/m0-group-formation/README.md` with submission evidence.
  - Keep A3's pull-request evidence and M0 readiness note aligned with the eventual M0 brief.

### Week 5

- **Topic name (exact from syllabus):** Polyglot Awareness & R Deepening
- **Status:** Complete
- **Evidence:**
  - `weeks/week05-polyglot-r-deepening/index.qmd` / `Python vs R--When and Why?`: "R remains your primary analysis language."
  - `weeks/week05-polyglot-r-deepening/index.qmd` / `Loading and Viewing Data`: `pd.read_csv("data/patients.csv")`.
  - `weeks/week05-polyglot-r-deepening/index.qmd` / `Translation Traps`: zero-index, indentation, assignment/equality.
  - `weeks/week05-polyglot-r-deepening/index.qmd` / `The AI Workflow: One Step, One Cell`: parity audit rules.
  - `weeks/week05-polyglot-r-deepening/python13-translation-exercise.qmd` / `The Bilingual Translation Exercise`: practice exercise.
  - `weeks/week05-polyglot-r-deepening/index.qmd` / `R Deepening Studio`: R `dplyr` pipeline and reusable summary function.
  - `weeks/week05-polyglot-r-deepening/r-deepening-parity.qmd`: explicit R mastery and parity exercise.
  - `assignments/assignment04-polyglot/README.md` / `What To Submit`: `polyglot-parity.qmd`, rendered HTML, `translation.ipynb`, `helpers.py`, parity table, dependency note, and AI-use note.
- **What's missing:**
  - Nothing essential for the Week 5 assignment pathway.
- **Recommended next additions:**
  - Test the Python notebook workflow in Codespaces before release.
  - Keep R-first framing visible so Python remains an audit/translation skill rather than the default analysis path.

### Week 6

- **Topic name (exact from syllabus):** Data Visualization
- **Status:** Complete
- **Evidence:**
  - `weeks/week06-visualization/index.qmd` / `Objectives`: build a rerunnable `ggplot2` visualization, identify misleading visual choices, revise labels/scale/color/grouping/caption, and audit AI-assisted code.
  - `weeks/week06-visualization/worked-example-ggplot.qmd` / `Plot`: runnable mean BMI by income group across NHANES cycle.
  - `weeks/week06-visualization/worked-example-ggplot.qmd` / `Optional Plotly Check`: optional `plotly::ggplotly()` extension.
  - `weeks/week06-visualization/activity-ai-visual-audit.qmd` / `Audit Categories`: correctness, design, interpretation, bias and aggregation, reproducibility.
  - `weeks/week06-visualization/instructor/flawed-plot-code.R`: flawed plot with misleading design choices.
  - `weeks/week06-visualization/instructor/answer-key-visual-audit.md`: planted issues and acceptable corrections.
  - `assignments/assignment05-visualization/README.md` / `What To Submit`: `visualization.qmd`, rendered output, corrected plot, audit note, caption, AI-use note, and M1 link note.
- **What's missing:**
  - Nothing essential for the Week 6 syllabus topic.
- **Recommended next additions:**
  - Re-render the worked example before release after any data refresh.
  - Keep the optional plotly extension clearly secondary to the static ggplot submission.

### Week 7

- **Topic name (exact from syllabus):** EDA, Table 1 & AI Auditing
- **Status:** Complete
- **Evidence:**
  - `weeks/week07-eda-ai-audit/index.qmd` / `Objectives`: cohort definition, missingness, Table 1, descriptive limits, and audit categories.
  - `weeks/week07-eda-ai-audit/worked-example-table1.qmd` / `Define the Analysis Cohort`: age 20-80 cohort decision.
  - `weeks/week07-eda-ai-audit/worked-example-table1.qmd` / `Missingness Check`: key-variable missingness table.
  - `weeks/week07-eda-ai-audit/worked-example-table1.qmd` / `Table 1-Style Summary`: N, BMI mean (SD), and age mean (SD) by `IncomeGroup`.
  - `weeks/week07-eda-ai-audit/instructor/planted-error-starter.qmd`: starter with wrong cohort, hidden missingness, statistic label mismatch, missing SD, causal overclaim, and weak stewardship.
  - `weeks/week07-eda-ai-audit/instructor/planted-error-key.md`: corrected approach for each planted issue.
  - `assignments/assignment06-eda-ai-audit/README.md` / `What To Submit`: EDA note, rendered output, Table 1 CSV, audit note, stewardship note, and AI-use note.
- **What's missing:**
  - Nothing essential for the Week 7 syllabus topic.
- **Recommended next additions:**
  - Recheck all summary labels after any dataset refresh.
  - Keep the survey-design caution visible so students do not treat the unweighted example as a population estimate.

### Week 8

- **Topic name (exact from syllabus):** Dashboard Prototypes for KT
- **Status:** Complete
- **Evidence:**
  - `weeks/week08-dashboard-kt/index.qmd` / `Overview`: first app-forward week and Codespaces-friendly local Shiny exemplar.
  - `weeks/week08-dashboard-kt/index.qmd` / `Pathway Choice`: core local Shiny pathway and optional static dashboard demonstration.
  - `examples/nhanes-equity/snippets/case-study-dashboard.qmd`: `shiny::runApp("examples/nhanes-equity/app")` instruction.
  - `weeks/week08-dashboard-kt/starter-dashboard.qmd` / `Control`: static dashboard-style control value.
  - `weeks/week08-dashboard-kt/starter-dashboard.qmd` / `Visualization`: runnable plot from the NHANES CSV snapshot.
  - `weeks/week08-dashboard-kt/starter-dashboard.qmd` / `Privacy-Safe Publishing`: aggregate-only, small-cell, descriptive, and AI-upload cautions.
  - `assignments/assignment07-dashboard/README.md` / `What To Submit`: dashboard adaptation note, before/after text, testing log, limitation note, privacy check, preview, and AI-use note.
- **What's missing:**
  - Nothing essential for the Week 8 syllabus topic.
- **Recommended next additions:**
  - Test the local Shiny run path in Codespaces before release.
  - Keep deployment framed as a demonstration unless the assignment changes.

### Week 9

- **Topic name (exact from syllabus):** Communication of Scientific Findings
- **Status:** Needs Improvement
- **Evidence:**
  - `weeks/week09-science-communication/index.qmd` / `Overview`: "Audience-Specific KT", plain language, slide decks, peer review.
  - `weeks/week09-science-communication/index.qmd` / `Release Prep`: revealjs starter deck and plain-language summary exercise still need expansion.
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
  - `weeks/week10-reporting-publishing/index.qmd` / `Release Prep`: report skeleton, citation examples, GitHub Pages setup, grounding audit.
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
  - `weeks/week11-portfolio-surgery/index.qmd` / `Release Prep`: fresh Codespace test, broken-project exercise, Assignment 10, Milestone 4, final checklist.
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
  - `weeks/week12-presentations/index.qmd` / `Release Prep`: timing rules, slide submission, peer feedback form, rubric.
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
  - `weeks/week13-presentations/index.qmd` / `Release Prep`: group schedule, final reminders, closing reflection prompt.
  - `milestones/m5-presentation/README.md`: "slides render before class and claims are grounded".
- **What's missing:**
  - Group schedule or release-ready timing note.
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
  - `milestones/final-portfolio/README.md`: still uses the milestone template stub.
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
| A1 | Assignment 1 due Week 2; fork/template, Codespace, Quarto, commit/sync | `assignments/assignment01-workflows/README.md`; `weeks/week02-modern-workflows/index.qmd` | Complete | Brief now specifies source, rendered output, reflection, commit evidence, Canvas route, and Complete/Incomplete checklist. |
| A2 | R basics, tidyverse, functions, debugging, `renv`, Quarto documentation | `assignments/assignment02-r-with-ai/README.md`; `assignments/assignment02-r-with-ai/starter-analysis.qmd`; `weeks/week03-r-with-ai/index.qmd` | Complete | Brief now specifies package loading, relative-path import, missingness, `dplyr`, function, output CSV, AI-use note, and dependency note. |
| A3 | Git collaboration and repo hygiene | `assignments/assignment03-git/README.md`; `weeks/week04-git-collaboration/index.qmd` | Complete | Brief now specifies branch, diff, `.gitignore`, PR evidence, documentation-only change, Git audit note, and M0 readiness connection. |
| A4 | Polyglot awareness and R deepening | `assignments/assignment04-polyglot/README.md`; `assignments/assignment04-polyglot/parity-table-template.csv`; `weeks/week05-polyglot-r-deepening/index.qmd` | Complete | Brief now specifies R-first summary, R function, Python notebook, helper script, parity table, dependency note, notebook hygiene, and AI-use note. |
| A5 | Visualization and AI visual audit | `assignments/assignment05-visualization/README.md`; `assignments/assignment05-visualization/visual-audit-note-template.md`; `weeks/week06-visualization/index.qmd`; `weeks/week06-visualization/worked-example-ggplot.qmd`; `weeks/week06-visualization/activity-ai-visual-audit.qmd` | Complete | Brief now specifies `visualization-audit.qmd`, rendered HTML, corrected plot, visual audit note, caption, M1 link note, and AI-use note. |
| A6 | EDA, Table 1, planted-error audit | `assignments/assignment06-eda-ai-audit/README.md`; `assignments/assignment06-eda-ai-audit/audit-note-template.md`; `weeks/week07-eda-ai-audit/index.qmd`; `weeks/week07-eda-ai-audit/worked-example-table1.qmd` | Complete | Brief now specifies EDA note, rendered HTML, Table 1 CSV, planted-error audit, stewardship note, and AI-use note. |
| A7 | Dashboard-style KT prototype | `assignments/assignment07-dashboard/README.md`; `assignments/assignment07-dashboard/dashboard-adaptation-template.md`; `weeks/week08-dashboard-kt/index.qmd`; `weeks/week08-dashboard-kt/starter-dashboard.qmd`; `examples/nhanes-equity/app/app.R` | Complete | Required core path is local Shiny or starter dashboard KT adaptation with audience, control, visualization, test log, privacy check, and preview. |
| A8 | Scientific communication and peer feedback | `assignments/assignment08-communication/README.md`; `assignments/assignment08-communication/slide-outline-template.qmd`; `assignments/assignment08-communication/peer-feedback-template.md`; `weeks/week09-science-communication/index.qmd` | Complete | Brief now specifies slides or outline, rendered output, plain-language summary, peer feedback, source note, and AI-use note. |
| A9 | Reporting, citations, publishing | `assignments/assignment09-reporting/README.md`; `assignments/assignment09-reporting/publishing-checklist-template.md`; `assignments/assignment09-reporting/grounding-audit-template.md`; `weeks/week10-reporting-publishing/report-template.qmd` | Complete | Brief now specifies report, rendered output, bibliography, generated outputs, publishing checklist, grounding audit, M3 update note, and AI-use note. |
| A10 | Portfolio surgery and reproducibility test | `assignments/assignment10-portfolio-surgery/README.md`; `assignments/assignment10-portfolio-surgery/failure-log-template.md`; `assignments/assignment10-portfolio-surgery/peer-review-template.md`; `weeks/week11-portfolio-surgery/reproducibility-test.qmd` | Complete | Brief now specifies fresh-environment test, failure log, peer review, repair summary, final risk list, and AI-use note. |

### Milestones M0-M5 and Final Portfolio

| Deliverable | Syllabus expectation | Existing repo page(s) | Alignment | Mismatch / risk |
|---|---|---|---|---|
| M0 | Group formation; one member forks template and adds teammates | `milestones/m0-group-formation/README.md`; `weeks/week04-git-collaboration/index.qmd` / `Setting Up Your Group Repository` | Needs Improvement | Week 4 has group setup steps; milestone README is still a stub and not in `_quarto.yml`. |
| M1 | Proposal: research question, dataset, feasibility, provenance/stewardship | `milestones/m1-proposal/README.md`; `weeks/week06-visualization/index.qmd`; `assignments/assignment05-visualization/README.md` | Complete | M1 brief now specifies purpose, inputs, exact files, Canvas route, feasibility, provenance, stewardship, and Week 6 linkage. |
| M2 | Preliminary analysis: cleaning, EDA, Table 1, runnable repo | `milestones/m2-preliminary-analysis/README.md`; `weeks/week07-eda-ai-audit/index.qmd`; `weeks/week07-eda-ai-audit/worked-example-table1.qmd` | Complete | M2 brief now specifies cohort, missingness, table, figure, methods, stewardship update, and exact submission files. |
| M3 | Project update: draft dashboard-style KT product + report draft | `milestones/m3-project-update/README.md`; `weeks/week10-reporting-publishing/index.qmd`; `weeks/week08-dashboard-kt/index.qmd` | Needs Improvement | M3 README is still a stub; Week 10 content needs the next reporting/publishing pass. |
| M4 | Peer review with reproducibility and auditability checks | `milestones/m4-peer-review/README.md`; `weeks/week11-portfolio-surgery/index.qmd` | Needs Improvement | M4 README is still a stub; Week 11 asks to add peer review instructions. |
| M5 | Presentations, live Q&A, peer review | `milestones/m5-presentation/README.md`; `weeks/week12-presentations/index.qmd`; `weeks/week13-presentations/index.qmd` | Needs Improvement | Presentation milestone exists but is still a stub; rubric and timing rules are missing. |
| Final Portfolio | Complete report, dashboard-style KT product, auditable repo | `milestones/final-portfolio/README.md`; `milestones/index.qmd` | Needs Review | Final portfolio README is still a stub and not referenced in `_quarto.yml`. |

## 4) Consistency Checks

### Topics Present in Repo but Not Explicitly in Syllabus

- `references/data-sources/*`: detailed standalone data-source tutorials for NHIS, NHANES, BRFSS, CCS, CADS, CTNS, CSADS, PHAC Infobase, CCDSS, GHO, Open Portal, and BC Data Catalogue. These support Week 1 but are more extensive than the syllabus schedule.
- `course-operations/index.qmd`: present in `_quarto.yml` as maintainer-facing course operations guidance; useful internally, but not a student topic from the syllabus schedule.
- `syllabus/syllabus-inventory-completion-matrix.md`: included in `_quarto.yml` under Course Operations; useful internally, but not a student topic from the syllabus schedule.
- Several Week 2-5 tutorial fragments are more granular than the syllabus topic names, especially `workflows01-*` through `workflows11-*`, `r01-*` through `r10-*`, `git01-*` through `git10-*`, and `python01-*` through `python14-*`.

### Syllabus Topics in TOC but Missing or Weak Content Pages

- Weeks 1 and 6-8 now have complete TOC pages and NHANES-aligned student outputs; Weeks 9-13 remain the main area for continued polishing.
- Assignment index, template, and individual A1-A10 briefs are in the TOC. Milestone index/template plus M1 and M2 are in the TOC; M0 and M3-M5 are not yet surfaced.
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
