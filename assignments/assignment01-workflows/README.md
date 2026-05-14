# Assignment 1: Modern Workflows

## Purpose

This assignment checks that your fork-based course workflow is working before the analysis weeks begin. You will fork the course template repository, launch or reopen a GitHub Codespace from your fork, edit a Quarto document, render output, commit and sync your work, and stop the Codespace when you are finished.

## Learning Objectives

- Fork the course template repository under your GitHub account.
- Launch or reopen the correct Codespace from your fork.
- Edit a Quarto document using YAML, Markdown, and a simple code chunk.
- Render a Quarto document and locate the output file.
- Commit and sync a small reproducible change.
- Stop the Codespace to conserve free monthly hours.

## Inputs

- Week 2 page: `weeks/week02-modern-workflows/index.qmd`
- Course data example: `examples/nhanes-equity/data/nhanes_equity_v6.csv`
- Submission folder: `assignments/assignment01-workflows/submission/`

## Tasks

1. Open the course template repository linked from Canvas.
2. Click **Fork** and create a personal fork under your GitHub account.
3. Launch Codespaces from your forked repository.
4. Create the folder `assignments/assignment01-workflows/submission/`.
5. Create a Quarto file named `workflow-check.qmd` in that folder.
6. Add a YAML title, your name, and the date.
7. Add one short paragraph explaining why relative paths matter in this course.
8. Add one code chunk that prints the current working directory or lists the files in the submission folder.
9. Render `workflow-check.qmd` to HTML.
10. Use the Source Control panel to inspect the diff.
11. Commit with a clear message such as `Complete Assignment 1 workflow check`.
12. Sync/push the commit to your fork on GitHub.
13. Stop the Codespace after confirming the commit appears on GitHub.
14. Write a short reflection naming one workflow step that felt solid and one step you want to practice.

## AI-Use Expectations

AI may help you understand an error message or explain Quarto syntax. You must personally verify that the file renders and that the commit is visible on GitHub. If AI helped, include one sentence in `reflection.md` saying what it helped with and how you checked the result.

## Reproducibility Requirements

- The Quarto file must render in GitHub Codespaces.
- Paths must be relative to the repository.
- The rendered HTML must be generated from the submitted `.qmd` file.
- The final files must be committed and synced to your fork.

## What To Submit

Place all submission files in:

```text
assignments/assignment01-workflows/submission/
```

Submit these files:

- `workflow-check.qmd`: edited Quarto source.
- `workflow-check.html`: rendered output.
- `reflection.md`: 150-250 words on the workflow, including any AI-use sentence if relevant.
- `commit-evidence.md`: the commit hash or GitHub URL showing the final synced commit.

## Submission Route

Submit your forked GitHub repository link on Canvas after committing and syncing the required files.

## Grading Checklist

Complete:

- Personal fork was created or located successfully.
- Codespace was launched or reopened from the fork.
- `workflow-check.qmd` exists in the required submission folder.
- `workflow-check.html` renders from the source file.
- Reflection names one solid step and one step to practice.
- Commit evidence is included.
- Work is committed and synced to the fork on GitHub.
- Codespace was stopped after work was complete.

Incomplete:

- Required files are missing.
- Rendered output does not match the source file.
- Work is not committed or not synced.
- Reflection or commit evidence is missing.
- Submission uses machine-specific paths.

## Definition of Done

You are done when the fork repository link on Canvas points to a synced commit containing `workflow-check.qmd`, `workflow-check.html`, `reflection.md`, and `commit-evidence.md` in the Assignment 1 submission folder.
