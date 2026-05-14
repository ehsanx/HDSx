# Assignment 5: Visualization Audit and Revision

## Purpose

Create a clear, honest health-data visualization from the NHANES Health Equity classroom dataset. You will audit a flawed or AI-assisted plot, revise it, and explain why the revision is more accurate and useful for a non-technical audience.

## Inputs

- Dataset: `examples/nhanes-equity/data/nhanes_equity_v6.csv`
- Worked example: `weeks/week06-visualization/worked-example-ggplot.qmd`
- Activity prompt: `weeks/week06-visualization/activity-ai-visual-audit.qmd`
- Flawed plot starter: `weeks/week06-visualization/instructor/flawed-plot-code.R`
- Milestone connection: `milestones/m1-proposal/README.md`

## Step-by-Step Tasks

1. Review the Week 6 worked example.
2. Choose one comparison from the NHANES Health Equity CSV snapshot.
3. Draft an initial plot using R and `ggplot2`.
4. Audit the plot for scale choices, labels, missing context, and overclaiming.
5. Revise the plot so it supports descriptive interpretation.
6. Write a caption and short audit note.
7. Connect the same transparency standard to M1 by naming the dataset, audience, and limitation behind your project idea.
8. If AI helped you write or revise code, document what it did and how you checked it.

## What To Submit

Place all submission files in:

```text
assignments/assignment05-visualization/submission/
```

Submit these files:

- `visualization.qmd`: rerunnable Quarto file that loads the CSV with a relative path and creates the final plot.
- `visualization.html`: rendered output.
- `corrected-plot.png`: exported final plot.
- `audit-note.md`: at least three issues you checked or corrected.
- `caption.md`: final figure caption with data source, statistic, exclusions, and limitation.
- `ai-use-note.md`: required if AI was used; otherwise include a one-sentence note saying AI was not used.
- `m1-link-note.md`: two or three sentences connecting the visualization choices to the dataset, audience, or feasibility issue in your M1 proposal.

## Submission Route

Submit a Canvas assignment entry that contains a link to the repository folder `assignments/assignment05-visualization/submission/`.

## Grading Checklist

Complete:

- Uses `examples/nhanes-equity/data/nhanes_equity_v6.csv` with a relative path.
- Plot is rerunnable from the submitted Quarto file.
- Title, axes, legend, and caption match the statistic shown.
- Audit note identifies at least three meaningful issues.
- Caption states that the result is descriptive and non-causal.
- AI-use note is present and specific.
- M1 link note identifies a project dataset or audience implication.

Needs work:

- Uses an absolute or machine-specific path.
- Plot title or caption overclaims causality or population inference.
- Missing caption, audit note, or AI-use note.
- Code does not run from the repository.
- Revised plot is not materially different from the draft version.
- M1 link note is missing or disconnected from the visualization.
