# M2: Preliminary Analysis

## Purpose

M2 turns the proposal into a reproducible preliminary analysis. The submission should show a documented cohort, missingness check, descriptive summary, and early visual or table output that can support the project direction.

## Inputs

- Project proposal: `milestones/m1-proposal/submission/`
- Week 6 visualization standard: `weeks/week06-visualization/worked-example-ggplot.qmd`
- Week 7 Table 1 standard: `weeks/week07-eda-ai-audit/worked-example-table1.qmd`
- Assignment 6 audit standard: `assignments/assignment06-eda-ai-audit/README.md`

## Step-by-Step Tasks

1. Load the project dataset with a relative path.
2. State the analysis cohort and any exclusions before showing results.
3. Report missingness for the variables used in the preliminary analysis.
4. Create at least one descriptive table, such as Table 1 or an equivalent grouped summary.
5. Create at least one descriptive visualization.
6. Write a methods note that explains whether the analysis is weighted or unweighted, descriptive or inferential, and complete-case or missingness-aware.
7. Update the provenance/stewardship note from M1 based on what the preliminary analysis revealed.
8. Identify one change to project scope, audience, or output based on the preliminary findings.

## What To Submit

Place all submission files in:

```text
milestones/m2-preliminary-analysis/submission/
```

Submit these files:

- `preliminary-analysis.qmd`: rerunnable Quarto analysis with data loading, cohort, missingness, table, figure, and notes.
- `preliminary-analysis.html`: rendered output.
- `table1-or-summary.csv`: exported descriptive table.
- `preliminary-figure.png`: exported descriptive figure.
- `scope-update.md`: short note naming what changed since M1 and why.
- `ai-use-note.md`: required if AI helped draft, revise, or debug; otherwise include a one-sentence note saying AI was not used.

## Submission Route

Submit a Canvas assignment entry that contains a link to the repository folder `milestones/m2-preliminary-analysis/submission/`.

## Grading Checklist

Complete:

- Data load uses a relative path and renders from the repository.
- Cohort and exclusions are stated before results.
- Missingness is reported for key variables.
- Table and figure labels match the statistics computed.
- Methods note avoids causal or population-level claims that the analysis cannot support.
- Provenance/stewardship note is updated from M1.
- Scope update names one realistic next step.

Needs work:

- Code uses absolute paths or does not render.
- Cohort definition is absent or inconsistent with the code.
- Rows are dropped without disclosure.
- Statistics are mislabeled or missing variability/context.
- Interpretation overclaims beyond descriptive evidence.
- Scope update does not respond to the preliminary analysis.
