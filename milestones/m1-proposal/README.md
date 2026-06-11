# M1: Project Proposal

## Purpose

M1 turns a broad project idea into a scoped, feasible, and ethically grounded analytic plan. The proposal should make the audience, data source, question, reproducibility plan, and first visualization direction clear enough for feedback.

## Due Timing

Submit by the Week 6 deadline posted in Canvas. This milestone prepares the group for Week 7 preliminary analysis and Week 8 dashboard prototyping.

## Required Deliverables

Create or update:

```text
milestones/m1-proposal/submission/
```

<!-- AI-EDIT(2026-06-11): TF-043 — needs review -->
Include these files. All five are required; tags follow [How To Read Submission Lists](../../assignments/index.qmd#how-to-read-submission-lists).

- `proposal.md` [required]
- `data-intake-card.md` [required]
- `initial-visual-plan.md` [required]
- `reproducibility-plan.md` [required]
- `ai-use-note.md` [required]

## What To Submit

Submit your GitHub repository link on Canvas after committing and syncing the files above. In the Canvas comment box, include the latest commit hash and the folder path for the milestone.

## Proposal Guidance

<!-- AI-EDIT(2026-06-11): MIT-148, TF-043 — needs review -->
Every field below is [required] unless it carries its own tag.

`proposal.md` should include:

- project title
- group members
- audience and KT purpose
- one primary question
- one secondary question
- expected data source
- planned analytic output
- known limitations

<!-- AI-EDIT(2026-06-11): WI-068, MIT-146, TF-044 — needs review -->
KT purpose means the practical communication goal of your project: who needs to understand the result, what decision or conversation it supports, and what caution they need.

<!-- AI-EDIT(2026-06-11): MIT-147 — needs review -->
The secondary question is not the primary question in different words. It should narrow or extend the primary one. For example, primary: "How does average systolic blood pressure differ across income groups in NHANES adults?" Secondary: "Does that difference look similar for men and women?"

`data-intake-card.md` should summarize:

- data source and steward
- access method
- file format
- unit of analysis
- key variables
- privacy and stewardship considerations
- Indigenous Data Sovereignty or CARE/OCAP awareness [when relevant — required if your data involve Indigenous Peoples, communities, or services] <!-- AI-EDIT(2026-06-11): MIT-148 — needs review -->

<!-- AI-EDIT(2026-06-11): WI-069, MIT-146, TF-044 — needs review -->
CARE/OCAP are principles and frameworks for responsible governance of Indigenous data. If your dataset includes Indigenous identifiers, communities, territories, or services, link back to the [Week 1 guidance](../../weeks/week01-health-data-ethics/index.qmd) before proceeding.

`initial-visual-plan.md` should include:

- one planned figure
- what the figure should help the audience decide or understand
- one risk of misinterpretation

`reproducibility-plan.md` should include:

- expected repository folders
- data access plan
- package/dependency notes
- how another student could rerun the work

## Reproducibility Expectations

Use relative paths. Do not commit restricted, private, or identifiable data. If public data are too large for GitHub, commit a small sample or documented access script and explain how the full file is obtained.

## AI-Use Expectations

AI may help brainstorm wording, search terms, or code structure. Students must verify data-source claims, privacy considerations, citations, and feasibility. Include an `ai-use-note.md` describing what AI helped with and what was checked manually.

## Grading Checklist

This milestone is marked complete when:

- the question is specific and feasible
- the audience and KT purpose are named
- data provenance and access are documented
- privacy, stewardship, and equity risks are acknowledged
- at least one visualization direction is described
- reproducibility plan is concrete
- AI use is disclosed and audited

## Definition Of Done

M1 is done when another group can read the proposal and understand what you will analyze, why it matters, what data you will use, and how the work will be rerun.
