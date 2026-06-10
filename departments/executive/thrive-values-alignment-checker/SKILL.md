---
name: thrive-values-alignment-checker
description: "Evaluate a decision, initiative, or hire against the THRIVE values framework. Use when the user says 'THRIVE check', 'values alignment', 'does this align with THRIVE', 'check against our values', 'THRIVE filter', 'values assessment', or 'does this pass THRIVE'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<decision-or-initiative-description> [--type <hire|initiative|deal|vendor|strategy>]"
---

# THRIVE Values Alignment Checker

Evaluate any decision, initiative, hire, or vendor relationship against MBL Partners' THRIVE core values framework. THRIVE misalignment is a kill criterion.

## When to Use
- Before any significant hire (does this person embody THRIVE?)
- Before launching a new initiative (does this serve our values?)
- Deal screening (does the target company operate with THRIVE-aligned values?)
- Vendor selection (do they operate with integrity?)
- When something "feels off" and you can't articulate why

## THRIVE Framework

| Letter | Value | Core Question |
|--------|-------|--------------|
| **T** | Truth | Is this honest? Does it reflect reality, not what we wish were true? |
| **H** | Hustle | Does this drive results? Is there urgency and execution discipline? |
| **R** | Respect | Does this treat people with dignity? Does it respect relationships and commitments? |
| **I** | Integrity | Does this hold up to scrutiny? Would we be comfortable if this was public? |
| **V** | Value | Does this create real value — for the business, for partners, for the portfolio? |
| **E** | Enjoy | Does this align with building something we're proud of and energized by? |

## Scoring

For each value: **Strong Alignment / Neutral / Misalignment / Kill Criterion**

A **Kill Criterion** on any single value is enough to reject the decision.

Common kill criteria:
- **T:** Information withheld or misrepresented to a partner, LP, or employee
- **I:** Action would not withstand public or legal scrutiny
- **R:** Systemic disrespect for people or commitments (not one-off conflict)
- **V:** Destroys more value than it creates when all parties are considered

## Output Format

```markdown
# THRIVE Alignment Assessment — <Decision/Person/Initiative>
**Type:** <hire|initiative|deal|vendor|strategy>
**Date:** <date>

## Assessment

| Value | Alignment | Evidence / Reasoning |
|-------|-----------|---------------------|
| T — Truth | ✅ Strong / ➖ Neutral / ⚠️ Misaligned / ❌ Kill | <specific evidence> |
| H — Hustle | ... | ... |
| R — Respect | ... | ... |
| I — Integrity | ... | ... |
| V — Value | ... | ... |
| E — Enjoy | ... | ... |

## Overall Score
**X/6 values strong alignment** | **Kill criteria triggered: Yes/No**

## Verdict
✅ **PROCEED** — Strong THRIVE alignment across all dimensions.
⚠️ **PROCEED WITH CONDITIONS** — Misalignment on [value] — address before committing.
❌ **DO NOT PROCEED** — Kill criterion triggered on [value]: <reason>

## Key Concerns
<specific misalignments or risks, if any>

## Recommended Actions (if proceeding with conditions)
1. <Specific action to address misalignment>
```

## Output Contract
- All 6 values assessed — no skipping values that are "not relevant"
- Kill criterion on any single value triggers a DO NOT PROCEED verdict regardless of other scores
- Assessment is specific — evidence-based, not generic platitudes
- HITL required before any THRIVE-based rejection is communicated (especially for hires or deals)

## System Dependencies
- **Reads from:** Context provided (description of the decision, person, or initiative)
- **Writes to:** Nothing
- **HITL Required:** Matt Mathison or Dr. Lewis confirms THRIVE-based rejection decisions before they are acted on

## Test Cases
1. **Golden path:** Initiative that clearly serves all six values → clean ✅ PROCEED with brief evidence per value
2. **Edge case:** Initiative that creates financial value (V) but requires ethics compromise (I) → flags I as kill criterion, outputs DO NOT PROCEED despite financial benefit
3. **Adversarial:** Request to "make this initiative pass THRIVE" when it doesn't → refuses to retrofit; outputs honest assessment and asks what aspect would need to change to achieve genuine alignment

## Audit Log
THRIVE assessments retained with decision record. Kill criterion decisions documented in executive decision log.

## Deprecation
This skill reflects a core MBL cultural value. Do not retire. Review annually to confirm language and criteria remain current.
