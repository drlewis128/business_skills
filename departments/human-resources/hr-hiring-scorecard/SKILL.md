---
name: hr-hiring-scorecard
description: "Build and score a final hiring evaluation for MBL Partners portfolio company roles. Use when the user says 'hiring scorecard', 'hire scorecard', 'candidate scorecard', 'evaluate candidate', 'final evaluation', 'hire or no hire', 'hiring decision', 'should we hire', 'make the hire', 'who do we hire', 'hiring recommendation', 'candidate decision', 'final round decision', 'advance to offer', 'ready to offer', 'candidate assessment', 'overall assessment', 'reference check weight', 'aggregate scores', 'panel scores', 'debrief scorecard', 'should we make an offer', 'candidate ranking', 'compare candidates', 'which candidate', 'top candidate', 'finalist decision', 'THRIVE candidate score', or 'hiring gate'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--candidate <name>] [--role <role-title>] [--entity <mbl|allevio|hive|column6>] [--action <score|compare|decide>]"
---

# HR Hiring Scorecard

Aggregate panel interview scores, reference check signals, and THRIVE assessment into a final hiring recommendation — producing a defensible, criteria-based decision that Dr. Lewis approves before any offer is extended. The scorecard converts qualitative interview impressions into documented, comparable evidence; when multiple finalists are being compared, it provides an objective basis for the selection decision.

## When to Use
- Panel interviews are complete and scores need to be aggregated
- Multiple finalists need to be compared
- Final hiring recommendation needs to be documented before offer
- Reference checks are complete and need to be integrated

## Hiring Scorecard Framework

```
SCORECARD DIMENSIONS (100 points total):

  1. ROLE OUTCOMES FIT (25 pts):
     Evidence that the candidate has produced outcomes similar to those required in this role
     Score 0-25: 0=no evidence / 10=some evidence / 20=strong evidence / 25=exceptional evidence
     
  2. MUST-HAVE COMPETENCIES (35 pts):
     Average of per-competency interview scores × 35/[max possible]
     Weight: (total competency points scored / maximum possible) × 35
     Any competency scored 1 (weak) on critical competencies = automatic 0 for this dimension
     
  3. THRIVE ALIGNMENT (25 pts):
     Truth: 0-5 pts
     Hustle: 0-5 pts
     Respect: 0-5 pts
     Integrity: 0-10 pts (double-weighted — THRIVE Integrity is the absolute gate)
     
     INTEGRITY GATE: Score of 0 on Integrity (any confirmed violation) =
     AUTOMATIC DECLINE regardless of total score; no exceptions; Dr. Lewis signs off
     
  4. LOGISTICS FIT (10 pts):
     Comp alignment (expected vs. range): 0-4 pts
     Availability / start date: 0-3 pts
     Relocation / geography: 0-3 pts
     
  5. REFERENCE CHECK SIGNAL (5 pts):
     Strong endorsement: 5 pts
     Qualified endorsement: 3 pts
     Neutral / tepid: 1 pt
     Negative or refused: 0 pts (flag to Dr. Lewis)

SCORING THRESHOLDS:
  85-100: Strong hire — offer authorized
  75-84: Hire with conditions — Dr. Lewis reviews specific gaps before offer
  60-74: Conditional hold — additional round or reference before decision
  <60: Decline

REFERENCE CHECK PROTOCOL (for final candidates; before offer):
  Minimum: 2 professional references (prior manager preferred)
  Ask: "On a scale of 1-10, how strongly would you recommend this person for [role]?" (numbers anchor)
  Ask: "What's the one thing they should focus on developing in this next role?"
  Ask: "If you were hiring for this type of role, would you re-hire them?" (direct question)
  Red flags: reference who seems guarded; refuses to answer specifics; mentions integrity issues
  Any reference who gives an unprompted integrity concern → Dr. Lewis reviews before offer

MULTI-CANDIDATE COMPARISON:
  If 2+ finalists: build side-by-side scorecard
  Tie-breaker: Dimension 3 (THRIVE Alignment) scores
  Final selection: Dr. Lewis + hiring manager joint decision
```

## Output Format

```markdown
# Hiring Scorecard — [Candidate Name] | [Role] | [Entity] — [Date]
**Recommendation:** HIRE / CONDITIONAL / DECLINE | **Authorized by:** Dr. Lewis

---

## Dimension Scores

| Dimension | Max pts | Score | Notes |
|-----------|---------|-------|-------|
| 1. Role Outcomes Fit | 25 | [X] | [Evidence] |
| 2. Must-Have Competencies | 35 | [X] | [Aggregate of competency scores] |
| 3. THRIVE Alignment | 25 | [X] | Integrity: [X/10]; any concern flagged |
| 4. Logistics Fit | 10 | [X] | Comp: $[X] vs. range $[X]-$[X] |
| 5. Reference Signal | 5 | [X] | [Reference 1 summary; Reference 2 summary] |
| **TOTAL** | **100** | **[X]** | |

---

## THRIVE Integrity Status
☐ **CLEAR** — No integrity concerns raised in interviews or references
☐ **FLAGGED** — Concern raised; Dr. Lewis reviewed; [decision and rationale]

---

## Final Recommendation
**Decision:** [HIRE / CONDITIONAL / DECLINE]
**Rationale:** [2-3 sentences — specific evidence for decision]
**Next step:** [Extend offer via hr-offer-builder / Additional round / Decline and notify]

**Dr. Lewis authorization:** [Date / Initials]
```

## Output Contract
- THRIVE Integrity is the absolute gate with no override — a candidate who scores 0 on the Integrity dimension is declined regardless of total score, urgency of the role, or the strength of any other dimension; Dr. Lewis documents the specific integrity concern that triggered the zero and retains that record; the hiring manager is informed of the decline with a professional summary ("we're moving in a different direction") without disclosing the specific integrity concern; this protects the entity legally; the decline record and the specific integrity concern are retained internally
- Dr. Lewis authorizes all offers above bookkeeper level — no offer is extended before Dr. Lewis reviews the final hiring scorecard and authorizes the offer; "we'll loop Dr. Lewis in after we make the verbal offer" is not acceptable; the hiring manager communicates the hiring decision only after Dr. Lewis authorization; for VP+ roles, Matt Mathison is notified before the offer is extended
- Reference checks precede offers — extending an offer before reference checks are complete means hiring without complete information; a reference check that surfaces a serious concern after an offer is extended creates a difficult situation; Dr. Lewis requires reference checks on all finalist candidates before offer extension; the only exception is a time-critical role where a competing offer requires same-day decision, in which case Dr. Lewis may authorize an offer contingent on satisfactory reference checks with a 48-hour window
- HITL required: scorecard → Dr. Lewis reviews and authorizes before offer; Integrity concern → Dr. Lewis disposition; negative reference → Dr. Lewis reviews before offer; VP+ hire → Matt Mathison notified before offer; multi-candidate selection → Dr. Lewis + hiring manager joint decision

## System Dependencies
- **Reads from:** hr-interview-designer (panel scores per competency; interview guide); hr-candidate-screener (phone screen notes); hr-job-profiler (role outcomes; must-haves; comp range; disqualifiers); hr-background-check (background screen results — if available at decision stage)
- **Writes to:** Final hiring scorecard (SharePoint → HR → Decisions → [Entity] → [Role] → [Candidate]); hr-offer-builder (inputs for offer construction); Matt Mathison hire notification (VP+); hiring decision record (retained for 3 years)
- **HITL Required:** Scorecard authorization → Dr. Lewis; Integrity concern → Dr. Lewis disposition; negative reference → Dr. Lewis reviews; VP+ offer → Matt Mathison notified; multi-finalist selection → Dr. Lewis + hiring manager

## Test Cases
1. **Golden path:** Allevio Care Coordinator finalist. Scorecard: Outcomes Fit 22/25; Competencies 30/35; THRIVE 22/25 (Integrity 9/10); Logistics 9/10 (comp aligned; 2-week start); References 5/5 (prior manager re-hire yes). Total: 88/100. Recommendation: HIRE. Dr. Lewis authorizes. Offer extended.
2. **Edge case:** Two finalists with scores of 84 and 82 → Dr. Lewis runs THRIVE tie-breaker: Finalist A Integrity 9/10; Finalist B Integrity 7/10 (minor concern about "working around a process"). Dr. Lewis selects Finalist A. Decision documented.
3. **Adversarial:** Hiring manager wants to extend verbal offer before Dr. Lewis reviews → Dr. Lewis: "Send me the scorecards now. I'll review within 2 hours. No verbal offer before I've cleared it — if there's an Integrity concern we need to know before we commit."

## Audit Log
All hiring scorecards retained for 3 years (EEOC/FCRA). Dr. Lewis authorization records retained. Integrity concern records retained permanently. Reference check summaries retained. VP+ Matt Mathison notification records retained.

## Deprecation
Scoring thresholds reviewed annually. THRIVE dimension weights updated only if THRIVE framework is revised. Integrity gate is permanent with no review cycle.
