# Assignment 3: Git Collaboration

## Purpose

This assignment checks that you can make a small, reviewable change using Git. You will create a branch, make a documentation-only edit, inspect the diff, open a pull request, and connect the workflow to M0 group repository readiness.

## Learning Objectives

- Make meaningful commits with clear messages.
- Read a diff before committing.
- Use `.gitignore` to keep generated or sensitive files out of version control.
- Create a branch and open a pull request.
- Document a limited change so collaborators can review it.

## Inputs

- Week 4 page: `weeks/week04-git-collaboration/index.qmd`
- M0 connection: `milestones/m0-group-formation/README.md`
- Submission folder: `assignments/assignment03-git/submission/`

## Tasks

1. Create the folder `assignments/assignment03-git/submission/`.
2. Create a new branch with a short name such as `docs/git-audit-note`.
3. Make one documentation-only edit in your repository. Good choices include clarifying a README sentence, adding a path note, or improving a caption.
4. Inspect the diff and confirm the change is limited to documentation or text.
5. Check `.gitignore` and add a safe pattern if a generated or temporary file is being tracked.
6. Commit with a message that explains the change.
7. Push the branch and open a pull request.
<!-- AI-EDIT(2026-06-11): MIT-116 — needs review -->
8. If a pull request cannot be opened, do not stop: take a screenshot of your branch and diff, and write a short explanation instead. Both go in `pull-request-evidence.md`.
9. In the pull request description, explain what changed and how you verified the scope.
10. Add a short note on whether your group repository is ready for M0: members, access, communication plan, and Codespaces access.

## AI-Use Expectations

AI may help summarize a diff or draft a pull request description. You must verify the diff yourself and make sure the pull request does not include unrelated file changes. Include an AI-use sentence in `git-audit-note.md`.

## Reproducibility Requirements

- All changes must be visible in Git history.
- The pull request must show a focused diff.
- `.gitignore` must not hide source files needed to reproduce the work.
- Evidence files must use relative paths or GitHub URLs.

## What To Submit

Place all submission files in:

```text
assignments/assignment03-git/submission/
```

Submit these files:

<!-- AI-EDIT(2026-06-11): TF-042 — needs review -->
- `pull-request-evidence.md` [required]: pull request URL, branch name, and final commit hash. If a pull request cannot be opened, include screenshot filenames and a written explanation.
- `documentation-change.md` [required]: the before/after text or a link to the changed documentation file.
- `git-audit-note.md` [required]: diff summary, `.gitignore` check, AI-use sentence, and M0 readiness note.

## Submission Route

Submit your GitHub repository link on Canvas after committing and syncing the required files.

## Grading Checklist

Complete:

- Branch was created for the work.
- Documentation-only change is focused and reviewable.
- Diff was inspected and summarized.
- Commit message is clear.
- Pull request evidence or equivalent text evidence is included.
- `.gitignore` was checked.
- M0 readiness note names repository access and team communication status.

Incomplete:

- Work was committed directly without evidence of a branch or review step.
- Diff includes unrelated changes.
- Pull request evidence is missing.
- `.gitignore` check is absent.
- M0 readiness note is missing.
- Work is not synced to GitHub.

## Definition of Done

You are done when the Canvas submission links to a synced repository with pull request evidence, a documentation change summary, and a Git audit note in the Assignment 3 submission folder.
