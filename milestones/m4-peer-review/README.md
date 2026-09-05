# M4: Peer Review

## Purpose

M4 gives each team structured feedback on correctness, reproducibility, interpretation, and audience fit before final submission. The review should be specific, respectful, and useful enough that the receiving group can act on it.

## Due Timing

Submit by the Week 11 deadline posted in Canvas. Peer review supports the final presentation and final portfolio revision.

## Points and Score Ownership

M4 is worth **5 course points** and receives one group score. The checklist
below guides the direct 0–5 score; no contribution multiplier or performance-band
conversion is used.

The five points are allocated across these broad criteria:

| Criterion | Points |
|---|---:|
| Specific, prioritized peer review | 1 |
| Documented reproducibility attempt and stopping point | 1 |
| Auditability check and blocking-risk assessment | 1 |
| Audience-focused KT feedback | 1 |
| Reviewer reflection, AI disclosure, and complete, synced submission evidence | 1 |
| **Total** | **5** |

M4 grades the reviewing team's work, not the quality of the peer project it
received. A documented failed rerun can earn full credit when the attempt,
stopping point, evidence reviewed, and useful feedback are clear. The criteria
are broad judgments, not collections of micro-deductions.

## Required Deliverables

Create or update:

```text
milestones/m4-peer-review/submission/
```

<!-- AI-EDIT(2026-06-11): TF-043 — needs review -->
Include these files. All five are required; tags follow [How To Read Submission Lists](../../assignments/index.qmd#how-to-read-submission-lists).

- `peer-review.md` [required]
- `reproducibility-check.md` [required]
- `auditability-check.md` [required]
- `kt-feedback.md` [required]
- `ai-use-note.md` [required]

## What To Submit

Submit your GitHub repository link on Canvas after committing and syncing the files above. In the Canvas comment box, include the reviewed group name and the latest commit hash for your submission.

<!-- AI-EDIT(2026-06-11): MIT-156, TF-046 — needs review -->
::: {.callout-important title="Easy to miss: name the group you reviewed"}
Your Canvas comment must include the reviewed group's name and your latest commit hash. Without the group name, graders cannot match your review to a project.
:::

## Review Requirements

`peer-review.md` should include:

- reviewed project title
- two strengths
- three prioritized revision suggestions
- one question for the group
- one issue that would block final reproducibility if unfixed
- a short reviewer reflection answering: what changed in your own thinking after
  reviewing this project; which limitation, bias, or stewardship issue deserves
  the most attention; and one review habit you will apply to your own project

The reflection belongs at the end of `peer-review.md`; do not create a separate
`reviewer-reflection.md` file.

`reproducibility-check.md` should document:

- whether the report rendered
- whether paths were relative
- whether data access was clear
- whether figures and tables were generated from code
- any error messages or setup blockers

`auditability-check.md` should document:

- whether data provenance is clear
- whether AI use is disclosed
- whether claims are supported by evidence
- whether limitations are stated

`kt-feedback.md` should focus on:

- audience fit
- plain-language clarity
- visual clarity
- actionability
- privacy-safe communication

## Reproducibility Expectations

Run the reviewed project in GitHub Codespaces when possible. If a full rerun is not possible, document exactly where the process stopped and what evidence you reviewed instead.

<!-- AI-EDIT(2026-06-11): WI-072, MIT-154, TF-046 — needs review -->
If you cannot rerun the reviewed project in Codespaces, that is acceptable only if you document what you tried, where it failed, and what information the project owner would need to fix it. A documented failed rerun does not block completing M4 — an undocumented one does.

## AI-Use Expectations

AI may help organize feedback or identify unclear writing. Reviewers must independently inspect the files, outputs, and claims.

<!-- AI-EDIT(2026-06-11): MIT-155 — needs review -->
::: {.callout-warning title="Do not let AI invent evidence"}
Do not use AI to invent results or infer evidence that is not in the reviewed repository. Every claim in your review must point to something you actually saw in the files.
:::

## Full-Credit Preparation Checklist

A substantively complete submission should show:

- feedback is specific and actionable
- reproducibility check is documented
- auditability and KT feedback are included
- at least one blocking risk is named or the absence of blockers is justified
- AI use is disclosed
- files are committed, synced, and submitted through Canvas

## Definition Of Done

M4 is done when the reviewed group can use your comments to improve the final portfolio without needing a follow-up meeting to understand the feedback.
