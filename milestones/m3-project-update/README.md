# M3: Project Update

## Purpose

M3 turns the preliminary analysis into a project draft that is ready for feedback. The update should show the current evidence, the intended KT product, and the main decisions that still need peer or instructor critique.

## Due Timing

Submit by the Week 10 deadline posted in Canvas. This milestone supports report drafting, publishing checks, and the Week 11 reproducibility review.

## Required Deliverables

Create or update:

```text
milestones/m3-project-update/submission/
```

<!-- AI-EDIT(2026-06-11): TF-043, TF-045 — needs review -->
Include these files. Seven files looks like a lot, but only `report-draft.qmd` involves substantial work, and it grows out of your M2 analysis; the `.md` files are short notes. Tags follow [How To Read Submission Lists](../../assignments/index.qmd#how-to-read-submission-lists).

- `project-update.md` [required]
- `report-draft.qmd` [required]
- `report-draft.html` [required]
- `dashboard-preview.md` [required] [brief — 1-3 focused bullets or sentences are enough]
- `reproducibility-note.md` [required]
- `feedback-request.md` [required]
- `ai-use-note.md` [required]

<!-- AI-EDIT(2026-06-11): MIT-100 (M3 portion, D-006) — needs review -->
Committing `report-draft.html` is a deliberate exception to the course rule that rendered outputs stay out of Git: the A8, A9, and M3 submission folders commit rendered HTML so reviewers can read the work without rendering it. Everywhere else, keep rendered outputs excluded by `.gitignore`.

## What To Submit

Submit your GitHub repository link on Canvas after committing and syncing the files above. In the Canvas comment box, include the latest commit hash, the folder path, and a rendered report link [optional — include only if relevant to your project]. A link only exists if you published or shared a rendered preview; the committed `report-draft.html` is enough on its own. <!-- AI-EDIT(2026-06-11): MIT-153 — needs review -->

## Update Requirements

`project-update.md` should include:

- current project title and audience
- refined research or KT question
- data source and analytic sample
- one finding that appears stable
- one finding or choice that needs review
- next steps before peer review

<!-- AI-EDIT(2026-06-11): WI-071, MIT-152, TF-045 — needs review -->
`dashboard-preview.md` is a lightweight preview file. Include a link, screenshot filename, or one short note describing where the current dashboard/KT draft can be found. It is not a full report.

`dashboard-preview.md` should include:

- link or screenshot path for the dashboard-style product
- intended audience
- one interaction, filter, or decision-support feature
- one limitation or privacy caution

`feedback-request.md` should ask for targeted feedback on:

- correctness
- interpretation
- visual clarity
- reproducibility
- audience fit

## Reproducibility Expectations

The report draft must render in GitHub Codespaces or a documented local environment. Relative paths are required. Generated figures and tables should come from code, not manual copying.

## AI-Use Expectations

AI may help revise prose, identify unclear sections, or suggest checks. Students must verify citations, numeric results, interpretations, and any code suggested by AI. The `ai-use-note.md` should name the main AI-assisted tasks and the verification steps.

## Grading Checklist

This milestone is marked complete when:

- report draft renders
- current findings are supported by code-generated evidence
- dashboard-style product is visible or clearly previewed
- feedback request is specific
- reproducibility note explains how to rerun the work
- AI use is disclosed and audited

## Definition Of Done

M3 is done when another student can open the repo, render the draft report, review the dashboard preview, and provide useful feedback without guessing what the project is trying to do.
