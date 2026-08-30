# Tuesday reschedule — book-wide change list (TODO)

**Created:** 2026-07-08 · **Scope of this doc:** everything *outside* the standalone
course outline that the Thu→Tue move affects. The outline itself
(`syllabus/SPPH-381H-Course-Outline-v4.qmd`) is **already updated and re-rendered**
(PDF + DOCX). This file is the checklist for propagating the same change through the
rest of the book. Nothing below has been edited yet.

Related repo records: this is the resolution of **R3-01 / OPS-002** (see
`assistant-playbook/instructor-decisions.md` Round-3 and `assistant-playbook/handoff.md`),
which were left **DEFERRED pending SPPH**. Those records should be closed/updated to
point here once the plan is final.

---

## Decision (2026-07-08)

Course meeting day moved **Thursday → Tuesday, 11:00 AM–2:00 PM**.

- **First class = Tue Sep 15.** Tue **Sep 8 is Imagine UBC** (undergrad classes replaced
  by orientation) → not a teaching day.
- **Tue Nov 10 = mid-term break** (Nov 9–11) → no class.
- Net: **11 teaching Tuesdays** (Sep 15 → Dec 1), which exactly hold **content Weeks 1–11**.
- **In-class presentations removed, and Milestone 5 folded into the Final Portfolio.** The
  old Weeks 12–13 (Presentations Part 1/2) are gone as class sessions. The presentation
  (former M5) is now a **narrated 5–7 slide deck submitted online as a required part of the
  Final Portfolio** — kept visible as **Presentation 10% + Final Portfolio 35%**, a single
  **Dec 11** deadline. No separate presentation milestone or deadline remains.
- **Assignment 10 (Portfolio Surgery) dropped as a graded item.** It duplicated M4 (peer
  review) and the Final Portfolio reproducibility grade (down to its own `final-risk-list.md`)
  and was the assignment stranded after the last class. The scored weekly set is now
  **A4–A9 (Weeks 5–10), Best 4 of 6** — weight unchanged at **35%** (each 8.75%; drop your
  2 weakest, the same cushion as the old best-5-of-7). Portfolio Surgery stays as the
  **Week 11 in-class session** whose fresh-Codespace test feeds M4 and the Final Portfolio.

### ⚠️ OPEN items to confirm before release

1. **39 contact-hour rule (SPPH).** 11 live sessions × 3 h = **33 h**. UBC's requirement is
   39 h (13 × 3 h). Moving presentations online makes them async, so SPPH must confirm the
   online presentation + async peer-review (and async Week 0) count toward the remaining
   ~6 h — or accept the reduced hours given the two calendar losses. This is the same
   async-approval question already put to SPPH.
2. **A7 deadline lands on the break Monday.** "Monday after class" for Week 8 (Tue Nov 3)
   = **Mon Nov 9**, inside the Nov 9–11 break. Decide: move to Nov 12, or state the break
   deadline is intentional. (Pre-existing pattern — see `assistant-playbook/newplan.md`.)
3. **Peer-review flow (M3 → M4 → Dec 1 discussion) — one thing to be aware of.** Final
   structure: **M3 draft due Mon Nov 23 → peers review over the week → M4 due Mon Nov 30 →
   Dec 1 class is a deadline-free feedback-discussion + portfolio-surgery session → Final
   Portfolio Dec 11.** Full-week review window; nothing due after the last class. The one note:
   M3 is an **early rough draft** due the day before the Week 10 "Writing & Publishing Reports"
   class — a deliberate draft-first flow (draft → learn to polish + get feedback → revise).
   Peer review is now **async** (done over the week), not the in-class activity it used to be.
4. **Best-4-of-6 and unique-outcome coverage.** `assistant-playbook/newplan.md` (P1-4) already
   warns that a "best-N drop" can drop the only graded assessment of some learning outcomes.
   Dropping 2 of 6 has the same exposure as before (dropping 2 of 7) — worth a glance to
   confirm no outcome is assessed *only* by a droppable assignment.

---

## Final schedule (reference)

| Wk | Tuesday | Topic | Deadline (Mon after class, 4 PM) |
|----|---------|-------|----------------------------------|
| 0 | async | Onboarding | Complete before first class |
| 1 | Sep 15 | Health Data, KT & Ethics | — |
| 2 | Sep 22 | Modern Workflows | A1 → Mon Sep 28 |
| 3 | Sep 29 | R with AI | A2 → Mon Oct 5 |
| 4 | Oct 6 | Git & Collaboration | A3 · **M0** → Mon Oct 12 |
| 5 | Oct 13 | Polyglot & R Deepening | A4 → Mon Oct 19 |
| 6 | Oct 20 | Data Visualization | A5 · **M1** → Mon Oct 26 |
| 7 | Oct 27 | EDA, Table 1 & AI Audit | A6 · **M2** → Mon Nov 2 |
| 8 | Nov 3 | Dashboard Prototypes | A7 → Mon Nov 9 ⚠️ (break week) |
| — | ~~Nov 10~~ | *mid-term break* | — |
| 9 | Nov 17 | Communication | A8 · **M3 draft** → Mon Nov 23 |
| 10 | Nov 24 | Writing & Publishing | A9 · **M4** peer review → Mon Nov 30 |
| 11 | Dec 1 | Portfolio Surgery *(feedback discussion + surgery)* | *no deadline* |
| — | — | **Final Portfolio** *(incl. required narrated presentation deck)* | **Fri Dec 11** |

Weekly assignment Monday dates are all *new* vs. the printed Thursday syllabus because
every week shifted ~1 week later (old Week 1 = Thu Sep 10; new Week 1 = Tue Sep 15).
Only M3, M4, and the Final Portfolio carry explicit dates in the tables; A1–A8 stay
relative ("Mon 4 PM"). The presentation deck is submitted **with** the Final Portfolio (Dec 11).

---

## DONE

- [x] **`syllabus/SPPH-381H-Course-Outline-v4.qmd`** — Time cell → Tue; all week dates
  (Sep 15 → Dec 1); break note relocated to Week 8; in-class presentation rows removed;
  **presentation folded into the Final Portfolio** (Presentation 10% + Portfolio 35%, one
  Dec 11 deadline); M3 draft → Mon Nov 23, M4 peer review → Mon Nov 30, Dec 1 deadline-free;
  milestone + assessment tables updated;
  `pack_rows`/`rbind` re-scoped. **Assignment 10 dropped → weekly set A4–A9, Best 4 of 6
  (35% unchanged, 8.75% each)**; all A10 / best-5-of-7 / "Weeks 5-11" / "Weeks 2-11" wording
  updated across the schedule, grading policy, assessments table, and late-submission policy.
  PDF + DOCX re-rendered and verified.

---

## TODO — remaining book files

### 1. `syllabus/syllabus-body.qmd` — CRITICAL (near-verbatim duplicate)

This file is the **book's** syllabus page (included by `syllabus/index.qmd`); it mirrors
the outline's schedule/deadline/milestone content and will **silently diverge** until it
receives the identical edits. Apply the same changes as the outline:

- L14 — Time cell `Thu 11:00 AM - 2:00 PM` → `Tue …`.
- L153–165 — the 13 week-date labels → the new **12-row** set (Weeks 0–11; drop the old
  Week 13 row; presentations no longer a class week). Dates as in the table above.
- L179 — the stale break note (`class meets as usual on Thu Nov 12`) → move a "no class
  Tue Nov 10 (break); next class Nov 17" note onto **Week 8**.
- Week 9 deadline cell (currently `Assignment 8 (Mon 4 PM)`) → add M3:
  `Assignment 8 (Mon 4 PM); Milestone 3: Project Update draft due Mon Nov 23`.
- L213 (Week 10 cell `Assignment 9 and Milestone 3 … Mon Nov 16`) → `Assignment 9 (Mon 4 PM);
  Milestone 4: Peer Review due Mon Nov 30`.
- L214 (Week 11 cell `Assignment 10 and Milestone 4 … Mon Nov 23`) → `(No new submission;
  portfolio surgery + act on peer feedback in class)`; and the trailing deadline row →
  `Final Portfolio (with required narrated presentation slide deck) due Dec 11 (Fri 4 PM)`
  (no separate M5 / Dec 9 deadline).
- L289 — milestone table M3 `Week 10 (Mon Nov 16)` → `Mon Nov 23 (draft)`.
- L290 — M4 `Week 11 (Mon Nov 23)` → `Mon Nov 30`.
- Week 11 activity cell — replace the "swap repositories … peer review" text with own-project
  fresh-Codespace surgery + "act on the peer feedback received (M4)" (peer review is now
  **async**, not the in-class activity).
- L291 — M5 row `Weeks 12-13` → **fold into the portfolio**: a `Presentation (10%)` row due
  `With Final Portfolio (Dec 11)`, and add the narrated deck to the Final Portfolio row.
- L352 — assessments component `Milestone 5: Presentation` → `Presentation (with Final
  Portfolio)`; note `In-class scientific seminar (Weeks 12-13)` → narrated deck submitted
  with the portfolio. **Keep the 10% weight.**
- Re-scope the schedule `pack_rows()` / `rbind` slices for the reduced row count (as in the
  outline: Part 3 → rows 11–13).
- **Assignment structure (A10 drop / Best 4 of 6):** L35 glance `best-5 weekly assignments`
  → `best-4`; the schedule Week 11 deadline cell → drop `Assignment 10 and` (leave
  `Milestone 4: Peer Review due Mon Dec 7`); L274 `Assignments 4-10 (Weeks 5-11): Best 5 of
  7` → `Assignments 4-9 (Weeks 5-10): Best 4 of 6`; the `Weekly Assignments (Weeks 2-11)`
  heading → `Weeks 2-10`; L325 assessments `Weekly Assignments (Best 5 of 7, Weeks 5-11)`
  → `Best 4 of 6, Weeks 5-10` and its note `Best 5 counted; each … 7%` → `Best 4 counted;
  each … 8.75%`; L383 late-submission `(4-10)` / `Best 5 of 7 policy` → `(4-9)` /
  `Best 4 of 6 policy`.

> Tip: the outline and body are close enough that diffing the outline's finished
> `data.frame`/tables against the body is the fastest way to port the edits.

### 2. `_quarto.yml` — navigation

- L152 — `- part: "Weeks 12-13: Project Presentations"` → e.g. `"Project Presentations (online)"`
  or fold into the Week 11 / Milestones area.
- L154–155 — the `week12-presentations/index.qmd` and `week13-presentations/index.qmd`
  nav entries: consolidate to a **single** presentations page (or move under Milestones),
  and remove the second.

### 3. `index.qmd` (landing page)

- L45 — topics-table label `"Weeks 12-13: Project Presentations"` → single online-presentation entry.

### 4. `weeks/week12-presentations/index.qmd` + `weeks/week13-presentations/index.qmd`

Both are in-class "Part 1 / Part 2" session pages. Presentations are now a **narrated deck
inside the Final Portfolio**:

- Consolidate into **one** page (or remove) describing the narrated presentation deck as a
  **required component of the Final Portfolio** — recorded narration over 5–7 slides,
  submitted with the portfolio on **Dec 11**; no in-class session. Or let
  `milestones/final-portfolio/README.md` carry it entirely.
- Remove in-class framing ("presentation order posted in Canvas", "before your
  presentation block", live Q&A/timing).
- Update the `_quarto.yml` nav (item 2) to match whatever page(s) remain.

### 5. `milestones/index.qmd`

- L29 — `| M5 | Weeks 12-13 | Final presentation | …` → reframe as a portfolio component,
  e.g. `| Presentation | With Final Portfolio (Dec 11) | Narrated slide deck (online) | … |`
  (or drop the row and mention the deck under the Final Portfolio row).
- L27–28 (M3 Week 10 / M4 Week 11) — labels are relative ("Week 10/11") and stay correct;
  no date edit needed here.

### 6. `milestones/m5-presentation/README.md` — reframe as a portfolio component

The presentation is no longer a standalone milestone. Either fold this file's guidance into
`milestones/final-portfolio/README.md`, or keep it as a helper page that clearly states the
deck is a **required part of the Final Portfolio** (Presentation, 10%):

- L9 — replace the in-class oral framing (`Presentation order and date are posted in
  Canvas. Submit slides before your presentation block. … 7 minutes of presentation, 3
  minutes of questions, 1 minute for transition`) with: **narrated 5–7 slide deck**
  (recorded narration over slides), submitted **with the Final Portfolio on Dec 11**; no
  in-class session.
- L22–25 deliverables — add the narrated recording (narrated `slides.pdf`/`.html` or a short
  screen recording) alongside `slides.qmd`; keep `presentation-checklist.md`.
- L58 — peer-feedback wording still works (M4 + Week 9 exchange); reframe "before the final
  presentation" for the online submission.
- `## Purpose`/title — reframe as the portfolio's presentation component, not a separate
  graded milestone.

### 6b. `milestones/final-portfolio/README.md` — make the narrated deck explicit

The portfolio README already lists `presentation slides or presentation summary` (Required
Deliverables) and `presentation materials align with the final project` (grading checklist).
Tighten both to require the **narrated presentation slide deck** (5–7 slides, recorded
narration) as the graded **Presentation (10%)** component of the portfolio.

### 7. Assignment / week deadline wording (low-risk — mostly relative)

**Note the M3/M4 reflow:** `milestones/m3-project-update/README.md` says "Submit by the Week 10
deadline" → now **Mon Nov 23** (a Week 9-timed draft); `milestones/m4-peer-review/README.md`
says "Submit by the Week 11 deadline" and frames peer review as the in-class Portfolio-Surgery
activity → now **Mon Nov 30, done asynchronously** over the week, with feedback *discussed*
in the Dec 1 class. Both use relative "Week N / Canvas" wording, so no hard date breaks, but
reframe the timing/async framing when propagating.

`assignments/assignment09-reporting/README.md`, `assignment10-portfolio-surgery/README.md`,
`milestones/m3-project-update/README.md`, `m4-peer-review/README.md` were checked and carry
**no hard-coded old dates** (they use relative "Week N" / "Monday after class" phrasing), so
they need no date edits — only a sanity read if you renumber anything. Same for the
"Monday after Week N class" references in `weeks/week06…09` assignment pages and
`assignments/assignment08-communication/README.md`: wording stands; resolved dates for
Weeks 8–11 shift automatically.

### 8. `course-operations/internal/summer-oer-work-plan.qmd` (internal, optional)

- Week-span references (`Weeks 0–13`, `Weeks 12–13`, the `week13/` tree entry at L109) →
  `Weeks 0–11`. **Do NOT touch** the Mon–Fri *production-cadence* table (it has "Thursday"
  and "Tuesday" rows that are the **team's** work rhythm, not the class day).

### 9. Assignment 10 removal + Best-4-of-6 (assignments area)

Dropping A10 as a *graded* assignment touches several pages. The **Portfolio Surgery
activity stays** (Week 11 in-class, feeding M4 + the portfolio); only its status as a
separate scored best-N assignment goes away.

- **`assignments/index.qmd`** — L3 `Assignments 4-10 … best-5-of-7` → `Assignments 4-9 …
  best-4-of-6`; table rows L12–17 `Best 5 of 7` → `Best 4 of 6`; **remove the Assignment 10
  row (L18)** or mark it "Week 11 in-class activity (not scored)"; L24 `best 5 of these 7` →
  `best 4 of these 6`.
- **Scored assignment READMEs** (`assignment04`…`assignment09`) — the line `part of the
  best-5-of-7 set for Assignments 4-10` → `best-4-of-6 set for Assignments 4-9`
  (A4:76, A5:75, A6:77, A7:79, A8:74, A9:77).
- **`assignments/assignment10-portfolio-surgery/README.md`** — reframe from a graded
  assignment to the **Week 11 in-class Portfolio Surgery activity** (outputs feed M4 and the
  Final Portfolio), or remove it; drop the "best-5-of-7 / 7-point rubric" framing (L73). The
  `failure-log-template.md` / `peer-review-template.md` helpers stay useful for class.
- **`_quarto.yml`** — the `assignments/assignment10-portfolio-surgery/README.md` nav entry:
  remove from the scored-assignments list (or keep only as a reference page).
- **`weeks/week11-portfolio-surgery/port06-assignment-a10-final-portfolio.qmd`** — reframe
  "Assignment 10" as the ungraded in-class activity; keep the M4 + Final Portfolio pointers.
- **`course-operations/index.qmd`** — L53 `A4-A10 … best-5-of-7` → `A4-A9 … best-4-of-6`.
- **`assignments/assignment-template.qmd`** (instructor scaffold) — L51 `Assignments 4-10` →
  `Assignments 4-9`.
- **Canvas (outside the repo)** — update the gradebook: drop the A10 column, count best 4 of 6.

---

## Notes

- **UTF-8 BOM.** `syllabus-body.qmd` and `syllabus/index.qmd` start with a UTF-8 BOM
  (`ef bb bf`). Harmless for the book HTML, but strip it if either is ever rendered to PDF
  on its own — a leading BOM makes Quarto silently drop `header-includes` (this is what had
  broken the standalone outline PDF; see the outline's history).
- **Playbook records.** Update `assistant-playbook/instructor-decisions.md` (R3-01),
  `handoff.md`, and `review-action-tracker.*` (OPS-002) to mark the decision **resolved**
  (Sep 15 start, 11 weeks, presentation folded into the portfolio) once SPPH confirms the
  contact-hour treatment.
- **Duplication risk going forward.** The outline and `syllabus-body.qmd` hold the same
  schedule twice. Consider, longer term, sourcing both from one shared `{{< include >}}`
  fragment so future edits can't drift.
