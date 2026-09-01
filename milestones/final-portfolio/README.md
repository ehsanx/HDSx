# Final Portfolio

::: {.callout-tip title="See a worked example"}
The [the Final Portfolio submission in the NHANES worked example](../example-nhanes/final.qmd) shows one illustrative version of this milestone. Use it for structure and depth — your project must be your own.
:::


## Purpose

The final portfolio is the complete project record: report, code, data documentation, dashboard-style KT product, presentation materials, reproducibility evidence, and AI-use audit. It should let another person understand what was done, why it matters, and how to rerun or inspect the work.

## Due Timing

Submit by the final portfolio deadline posted in Canvas. The syllabus deadline is the course final submission deadline unless Canvas states a more specific time.

## Points and Score Ownership

The Final Portfolio is worth **35 course points** and receives one group score.
The existing portfolio and reproducibility checklists guide the direct 0–35
score; no contribution multiplier, complicated adjustment formula, or
performance-band conversion is used.

The 35 points are allocated across five broad categories:

| Criterion | Points |
|---|---:|
| Final report and evidence | 10 |
| Reproducibility and traceability | 10 |
| KT product and presentation alignment | 5 |
| Provenance, stewardship, and limitations | 5 |
| README, repository access, AI audit, risk list, and submission record | 5 |
| **Total** | **35** |

These categories are broad judgments, not containers for dozens of tiny
deductions. The portfolio rewards coherent evidence and a workflow another
person can understand and inspect. It does not reward statistical
sophistication, public deployment, Shiny, publication-quality prose, or
decorative polish. One underlying problem is assessed under the category that
most directly owns it unless it causes genuinely separate required failures.

The **narrated presentation deck** is a required part of the portfolio and is scored separately as the **Presentation** component (10 points); see [Presentation](../m5-presentation/README.md). It is submitted online with the portfolio on Dec 11 — there is no in-class presentation.

## Required Deliverables

Create or update:

```text
milestones/final-portfolio/submission/
```

Include these files:

- `final-portfolio-checklist.md`
- `repository-access-note.md`
- `final-risk-list.md`
- `ai-use-note.md`

Your project repository should also include:

- final report source and rendered output
- dashboard-style KT product or static preview
- data provenance and stewardship documentation
- reproducibility instructions
- narrated presentation slide deck (5-7 slides, recorded narration)
- clear README for the whole project

<!-- AI-EDIT(2026-06-11): MIT-160, WI-075 — needs review -->
A live dashboard is not required unless the assignment says so. A static preview, screenshot, or rendered HTML page is acceptable when it clearly shows the KT product and passes the privacy check.

<!-- AI-EDIT(2026-06-11): TF-050 — needs review -->
The three KT-product options, from heaviest to lightest:

- **Live dashboard** — an interactive page or app a reviewer can open and click (for example, a demo-only Shiny app). Never required.
- **Static preview** — a rendered, non-interactive HTML page committed to the repository that shows the KT product's current state.
- **Screenshot** — an image file of the product committed to the repository, with a note saying which file or app it shows.

Any of the three is acceptable for the final portfolio.

## Repository Access Note

Keep `repository-access-note.md` short. It must state:

- repository URL and whether it is public or private;
- latest submitted commit hash;
- confirmation that course staff can open the repository;
- if private, who granted staff access and the date access was checked;
- if public, confirmation that the safe-publishing check was completed;
- relative paths to the final report and dashboard/KT product.

This note records access facts only; it is not a new reflection or project
summary.

<!-- AI-EDIT(2026-06-11): R2-11/R2-12 — needs review -->
Revising earlier work is allowed and encouraged: the final portfolio is the right place to apply M4 feedback and improve assignments or milestone files you already submitted. Only the files listed above are prescribed. Beyond them, organize the repository however serves your project best, as long as the README explains the structure.

## What To Submit

Submit your GitHub repository link on Canvas after committing and syncing all final materials. In the Canvas comment box, include:

- latest commit hash
- final report path
- dashboard or KT product path
- final portfolio checklist path
- rendered public link if the repository is public and safe to publish

## Public And Private Repository Guidance

Use a public repository only when the data and outputs are allowed to be public. Do not publish restricted, private, identifiable, or culturally sensitive data. If the repository must stay private, keep it private, grant course staff access, and submit the private repository link on Canvas.

Public repositories should avoid raw restricted data and should use documented public data, simulated data, or aggregate outputs that are safe to share. Private repositories still require clear documentation and reproducibility instructions for course staff. See [Repository Sharing Guidance](repository-sharing-guidance.md) before changing repository visibility.

## Reproducibility Checklist

Use the [Final Portfolio Checklist](final-portfolio-checklist.md) to confirm:

- repository opens from a fresh clone or Codespace
- README explains the project, audience, and file structure
- all paths are relative
- required packages are documented
- report renders from source
- every rendered artifact explicitly required for the portfolio is committed
  with its source
- dashboard or KT product can be opened or rerun, or its static preview is committed <!-- AI-EDIT(2026-06-11): MIT-160 — needs review -->
- generated figures and tables can be traced to code
- data provenance and access rules are documented
- privacy and stewardship risks are addressed
- AI use is disclosed and audited
- final commit is synced before Canvas submission

## What A Strong Project README Looks Like

<!-- AI-EDIT(2026-06-11): TF-051 (D-007) — needs review -->
Weak: "Final project for SPPH 381H. See files."

Strong:

```text
# Income and Blood Pressure in NHANES Adults

Audience: community health planners (non-technical).
Question: how does average systolic blood pressure differ across income groups?

- report/    — final report source (report.qmd) and rendered report.html
- dashboard/ — KT product static preview (preview.html) and screenshot
- data/      — documented access script; no raw restricted data committed
- milestones/ — milestone submissions, including the final portfolio checklist

To rerun: open the repo in Codespaces, then render report/report.qmd.
Required packages are listed in reproducibility-note.md.
```

The strong version answers the four reader questions: what the project is, who it is for, where each artifact lives, and how to rerun it.

## AI-Use Expectations

AI may help polish writing, check code, create revision plans, or test explanations. Students must verify all outputs, citations, code, numeric results, and interpretations. The final `ai-use-note.md` should describe major AI uses across the project and the checks used to protect correctness.

## Grading Checklist

The final portfolio is ready for assessment when:

- report is complete and evidence-based
- dashboard-style KT product matches the intended audience
- data provenance and limitations are transparent
- repository is organized and reproducible
- final outputs are committed and synced
- narrated presentation deck aligns with the final project
- AI-use audit is complete
- repository access route is clear

## Definition Of Done

The final portfolio is done when course staff can open the submitted repository, locate the final artifacts, rerun or inspect the work, and understand the project without asking for missing files.
