---
name: thrive-decision-filter
description: "apply thrive values to decisions, thrive decision checklist, thrive filter major decisions, does this decision require dishonesty truth pillar, integrity kill criterion decision, respect stakeholders decision thrive, value creation vs activity decision, enjoy sustainability decision, hustle accountability decision, thrive vendor selection filter, thrive hiring decision filter, thrive acquisition filter, thrive pricing decision thrive, thrive product decision, strategic decision thrive alignment, thrive decision framework mbl, values filter business decision, thrive kill criterion decision, thrive decision review, decision integrity check"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "<decision-description> <entity> <decision-maker>"
---

# THRIVE Decision Filter

Every major business decision at MBL is also a culture decision — what gets approved signals what is actually valued, regardless of what the values statement says. This skill applies the THRIVE values filter to significant decisions before they are finalized, ensuring that strategy, operations, and culture are aligned rather than in conflict.

## When to Use

- A significant decision is being made at MBL or a portfolio company that has ethical, people, or strategic implications (vendor selection, hiring, pricing, acquisitions, product choices, partnerships)
- A leader wants to pressure-test a decision against THRIVE before bringing it to their CEO or Matt Mathison
- Dr. Lewis is reviewing a proposed action and needs a structured values-alignment check
- A decision has already been made and a post-hoc THRIVE audit is needed to understand alignment

## THRIVE Decision Filter Framework

```
THRIVE DECISION FILTER — [ENTITY] | [DECISION TITLE] | [DECISION MAKER] | [DATE]
══════════════════════════════════════════════════════════════════════════════════════

DECISION SUMMARY
─────────────────────────────────────────────────────
  Decision: _________________________________________________
  Stakes: [Financial / Operational / People / Strategic / All]
  Alternatives considered (list briefly): ___________________
  Recommended path before THRIVE filter: ___________________

THRIVE DECISION CHECKLIST
─────────────────────────────────────────────────────
Answer each question honestly. "Yes" to a disqualifying question = STOP.

  TRUTH FILTER
  ─────────────
  □ Does this decision require us to be dishonest with any stakeholder
    (employees, clients, LPs, partners, regulators)?          [YES / NO]
  □ Does this decision require us to hide, omit, or spin information
    in a way that would mislead someone who deserves the truth? [YES / NO]
  → YES to either = TRUTH FAILURE. Return to alternatives.

  HUSTLE FILTER
  ─────────────
  □ Does this decision require people to ignore their accountability —
    to let problems slide or avoid ownership of outcomes?      [YES / NO]
  □ Does this create a situation where effort isn't required because
    the decision shields someone from consequences?            [YES / NO]
  → YES to either = HUSTLE CONCERN. Redesign the decision or add accountability structures.

  RESPECT FILTER
  ─────────────
  □ Does this decision disrespect any group of stakeholders?
    (employees, clients, vendors, communities, field workers, patients) [YES / NO]
  □ Would the people affected by this decision feel they were treated
    with dignity if they knew how the decision was made?              [YES / NO — invert]
  → YES (disrespect) or NO (dignity test) = RESPECT FAILURE. Redesign required.

  INTEGRITY FILTER (KILL CRITERION)
  ─────────────
  □ Does this decision require us to act unethically, illegally, or
    in violation of our governance standards?                  [YES / NO]
  □ Does this decision compromise our financial reporting accuracy,
    regulatory compliance, or fiduciary duties?                [YES / NO]
  □ If this decision were on the front page of a trade publication,
    would we be comfortable with how it looks?                 [YES / NO — invert]
  → YES to either question, or NO to the front-page test = INTEGRITY FAILURE.
    AUTOMATIC KILL. Do not proceed. Escalate to Dr. Lewis immediately.

  VALUE FILTER
  ─────────────
  □ Does this decision create real, measurable value — or is it activity,
    busyness, or defensive maneuvering with no net positive?   [YES / NO]
  □ Is the expected return (financial, operational, or strategic) worth
    the investment of time, money, and organizational energy?  [YES / NO — must be YES]
  → NO to value creation or NO to ROI worthiness = VALUE CONCERN.
    Requires Dr. Lewis or entity CEO to confirm value case before proceeding.

  ENJOY FILTER
  ─────────────
  □ Is this decision sustainable for the team that will implement it?
    Does it create conditions for burnout, resentment, or disengagement? [YES = concern]
  □ Does this decision contribute to an environment where people can
    genuinely thrive — or does it trade long-term culture for short-term gain? [YES = good]
  → Burnout-creating decisions require explicit acknowledgment and mitigation plan.

KILL CRITERION SUMMARY
─────────────────────────────────────────────────────
  Integrity failure = AUTOMATIC KILL regardless of:
    - Financial upside
    - Strategic importance
    - Sponsor seniority
    - Timing pressure
    - Competitive necessity arguments

  Matt Mathison override authority: Matt may override a kill criterion ruling
  ONLY for extraordinary documented circumstances. Override must be:
    □ In writing
    □ Dated and signed
    □ Filed with Dr. Lewis
    □ Reviewed at next quarterly culture ops review

DECISION-TYPE QUICK GUIDES
─────────────────────────────────────────────────────
  VENDOR SELECTION: Truth (honest RFP process) + Integrity (vendor ethics check)
                    + Value (is this the best ROI?) + Respect (fair treatment of vendors)

  HIRING:           Integrity is kill criterion (thrive-kill-criterion-checker)
                    + Truth (honest representation of role) + Value (right hire for real need)

  PRICING:          Truth (honest to clients; no hidden fees) + Integrity (no margin fraud)
                    + Value (price reflects real value delivered) — Column6 gross margin ≥35%

  ACQUISITIONS:     All six pillars; Integrity culture deficit = deal risk or price discount
                    (thrive-kill-criterion-checker for M&A targets)

  PRODUCT DECISIONS: Value (does this feature create real user value or just add complexity?)
                     + Enjoy (will the team that builds this be energized or depleted?)

FILTER VERDICT
─────────────────────────────────────────────────────
  ALIGNED     — All pillars clear; decision may proceed
  CONCERNS    — 1-2 non-Integrity concerns flagged; mitigation required before proceeding
  REDESIGN    — Multiple pillar failures; decision must be redesigned
  KILL        — Integrity failure; do not proceed; escalate to Dr. Lewis
```

## Output Format

```markdown
## THRIVE Decision Filter Report
**Decision:** [Title] | **Entity:** [Entity] | **Maker:** [Name] | **Date:** [Date]

### Decision Summary
[2-3 sentences on what is being decided and the recommended path before THRIVE filter]

### Pillar Filter Results
| Pillar | Result | Notes |
|--------|--------|-------|
| Truth | Pass / Fail | |
| Hustle | Pass / Concern | |
| Respect | Pass / Fail | |
| Integrity | Pass / KILL | |
| Value | Pass / Concern | |
| Enjoy | Pass / Concern | |

### Verdict
**Status:** [Aligned / Concerns / Redesign / Kill]
**Kill criterion triggered:** [Yes / No]
**Escalated to Dr. Lewis:** [Yes / No / Date]
**Matt Mathison override:** [N/A / Requested / Approved — date, signed]

### Required Actions Before Proceeding
[None / List of specific mitigations or redesign requirements]
```

## Output Contract

- An Integrity failure verdict is a hard stop — the filter does not produce a "mostly aligned" output when Integrity fails, because the kill criterion principle has no partial application; the output is either KILL or it is not, and any softening of that language in the report undermines the entire culture architecture that the Integrity kill criterion is designed to uphold.

- The Matt Mathison override mechanism is documented in the framework not to make overrides easy but to make them auditable — an override that is not documented in writing and filed with Dr. Lewis did not happen for governance purposes, and the existence of a formal override path actually strengthens the kill criterion by making informal workarounds illegitimate.

- The decision-type quick guides exist because THRIVE filter application is not instinctive for leaders who are new to the framework — the guides reduce the friction of applying a six-pillar filter to a specific decision context, which increases actual filter usage; a values filter that feels burdensome gets skipped, and a skipped filter has no culture value.

## System Dependencies

### Reads from
- Entity THRIVE playbook (entity-specific pillar examples; Callie maintains)
- Prior THRIVE filter reports for the same entity (pattern context)
- thrive-kill-criterion-checker (for hiring and M&A decisions; called as companion skill)

### Writes to
- Dr. Lewis decision filter log (all KILL verdicts; date, decision, entity, escalation status)
- Matt Mathison override log (any documented override; filed by Dr. Lewis)
- Entity CEO record (CONCERNS or REDESIGN verdicts shared with entity CEO)

### HITL Required
- Dr. Lewis must be notified of any KILL verdict within 24 hours of the filter being run
- Matt Mathison override requires his personal written sign-off — no proxy or verbal approval
- Entity CEOs receive CONCERNS-level verdicts directly from Dr. Lewis, not from a report

## Test Cases

1. **Golden path:** Column6 is evaluating a new media measurement vendor. THRIVE filter applied: vendor has a documented history of data manipulation at a prior client (Integrity failure flagged via vendor reference check). Filter result: KILL. Dr. Lewis notified. Entity CEO directed to select an alternative vendor. Second vendor passes all six pillars. Decision proceeds.

2. **Edge case:** Allevio is considering a pricing increase for employer clients that would be retroactive to mid-contract. Truth filter: clients were not informed of retroactive increases at contract signing (partial Truth failure). Integrity filter: technically legal but feels extractive. Value filter: short-term revenue gain but likely client churn. Verdict: REDESIGN. Recommendation: prospective pricing increase only; clients notified 90 days in advance with clear rationale.

3. **Adversarial:** HIVE is under LP pressure to present WTI production estimates at $62/bbl in an LP update when current WTI is $58/bbl and internal models use $56/bbl. THRIVE filter: Truth failure (selective optimism that misleads LPs) + Integrity failure (fiduciary misrepresentation). Result: KILL. Dr. Lewis escalates to Matt Mathison same day. LP update is revised to use $56/bbl with a sensitivity range. Matt Mathison approves the revised communication.

## Audit Log

All THRIVE decision filter reports are retained by Dr. Lewis for seven years, consistent with governance record standards. KILL verdicts are logged in a separate register with date, entity, decision description, and resolution (redesigned, abandoned, or override). Matt Mathison override records are countersigned by Dr. Lewis and stored separately as material governance documents. No KILL verdict record may be deleted or modified after creation.

## Deprecation

This skill is reviewed annually during the THRIVE culture ops review. The kill criterion language and Integrity treatment are considered foundational to the MBL governance framework and cannot be softened in any revision without Matt Mathison's written authorization. The skill is deprecated only if MBL adopts a formal enterprise governance framework that supersedes and explicitly incorporates the THRIVE decision filter logic.
