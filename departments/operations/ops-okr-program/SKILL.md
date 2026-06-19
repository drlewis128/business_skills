---
name: ops-okr-program
description: "Design and manage the MBL Partners OKR program across all portfolio entities. Use when the user says 'OKR', 'OKRs', 'objectives and key results', 'set OKRs', 'OKR planning', 'OKR review', 'OKR scoring', 'OKR design', 'OKR process', 'OKR cadence', 'OKR scorecard', 'OKR update', 'OKR progress', 'quarterly OKRs', 'annual OKRs', 'company OKRs', 'entity OKRs', 'portfolio OKRs', 'OKR alignment', 'Matt OKRs', 'CEO OKRs', 'set goals', 'goal setting', 'quarterly goals', 'annual goals', 'key results', 'objective setting', 'strategic goals', 'priority setting', 'THRIVE OKRs', 'company priorities', 'entity priorities', 'how are we tracking on OKRs', 'OKR progress report', 'OKR performance', or 'goal tracking'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--period <q1|q2|q3|q4|annual>] [--action <design|score|review|update|present>] [--focus <set|progress|scoring|alignment>]"
---

# Ops OKR Program

Design and manage the MBL Partners OKR program across all portfolio entities — setting objectives and key results that connect Matt Mathison's strategic priorities to entity-level execution, scoring them quarterly with honest 0.0-1.0 ratings, and using the OKR scorecard as the anchor for the Quarterly Business Review. OKRs are MBL's primary goal-setting and accountability mechanism: they translate the investment thesis into measurable outcomes, create alignment between Matt's strategic vision and each entity CEO's execution priorities, and give Dr. Lewis a structured framework for tracking whether each entity is on the value creation trajectory the deal model assumed.

## When to Use
- Annual OKR planning (Q4 for next year; or at acquisition for new entities)
- Quarterly OKR scoring (within 2 weeks of quarter-end)
- A mid-quarter OKR needs to be revised (material change in circumstances)
- Quarterly Business Review preparation (OKR scorecard is the anchor)
- Matt Mathison asks how an entity is tracking on its goals

## OKR Framework

```
MBL OKR DESIGN PRINCIPLES:

  1. OBJECTIVES: Qualitative; inspiring; directional (no numbers in the O)
     "Establish Allevio as the employer health partner of choice in the Southwest"
     Not: "Grow Allevio revenue to $6M" (that's a key result)
     
  2. KEY RESULTS: Quantitative; measurable; binary at the end of the quarter
     "Add 3 new employer groups with ≥50 members each by September 30"
     "Improve employer group GRR from 91% to 94% by September 30"
     Not: "Work on employer group retention" (not measurable)
     
  3. QUANTITY: 3-5 Objectives per entity; 2-4 Key Results per Objective
     More than 5 Objectives = no priorities; everything is a priority = nothing is
     
  4. SCORING: 0.0 / 0.3 / 0.7 / 1.0
     0.0: Did not attempt or catastrophic failure
     0.3: Some progress but far short of target
     0.7: Made real progress; close to target; minor shortfall
     1.0: Achieved or exceeded
     Target average score: 0.7-0.8 (if everyone scores 1.0, the OKRs were too easy)
     
  5. THRIVE FILTER: Every objective is filtered against THRIVE
     Truth: Is this KR measuring reality or a proxy?
     Hustle: Does achieving this require real effort and execution?
     Respect: Does this respect the team's capacity to execute?
     Integrity: Can we measure this without gaming the metric?
     Value: Does this create genuine value for the entity and MBL?
     Enjoy: Is there something here that the team can get excited about?

ANNUAL OKR PLANNING PROCESS (Q4):

  STEP 1 — MATT MATHISON STRATEGIC PRIORITIES (November):
    Matt shares his top 3 portfolio-level priorities for next year
    These become the North Star for all entity OKR design
    
  STEP 2 — ENTITY CEO OKR DRAFT (December 1-10):
    Each entity CEO drafts their entity OKRs aligned to Matt's priorities
    CEO submits to Dr. Lewis for financial accuracy review
    
  STEP 3 — DR. LEWIS REVIEW (December 10-15):
    Verify: Are the KRs measurable and tracked in existing systems?
    Verify: Do the KRs align to the entity's North Star metrics?
    Verify: Are the KR targets consistent with the financial model?
    Flag: Any OKR that can be gamed without creating real value
    
  STEP 4 — MATT MATHISON APPROVAL (December 15-20):
    Dr. Lewis presents entity OKRs to Matt for approval
    Matt can add, modify, or reject objectives
    Matt's approval locks the OKRs for Q1
    
  STEP 5 — PUBLISH AND ALIGN (January 1):
    OKRs published on Monday.com boards by entity
    Entity CEOs share with their leadership teams

QUARTERLY OKR SCORING (within 2 weeks of quarter-end):

  STEP 1 — ENTITY CEO SELF-SCORES THEIR OKRS:
    Score: 0.0 / 0.3 / 0.7 / 1.0 for each KR
    Explanation: 1-2 sentences per KR explaining the score
    Deadline: within 5 days of quarter-end
    
  STEP 2 — DR. LEWIS VALIDATES SCORES:
    Financial KRs: validate against QuickBooks data
    Operational KRs: validate against system data (AdvancedMD; Covercy; DSP reports)
    Any score that doesn't match the data: Dr. Lewis adjusts and explains to CEO
    
  STEP 3 — SCORECARD FOR QUARTERLY QBR:
    Dr. Lewis compiles entity scorecards for the Quarterly QBR
    Format: OKR scorecard presented in the first 5 minutes of each entity's QBR section
    Pattern to look for: consistent miss <0.7 on same KR for 2 quarters → root cause conversation

MBL PORTFOLIO-LEVEL OKRS (Matt Mathison):

  Matt's annual OKRs cover the portfolio as a whole:
    O1: Build the MBL AI infrastructure that makes every entity measurably smarter
    O2: Improve portfolio EBITDA by $[X] through value creation (not just revenue growth)
    O3: Strengthen the LP relationship through transparency and above-target returns
    O4: Position MBL as the premier lower-middle-market PE partner in [sectors]
    
  Dr. Lewis's OKRs are aligned to O1 + O2:
    Support O1: AI strategy and implementation OKRs
    Support O2: Finance oversight and value creation OKRs
```

## Output Format

```markdown
# OKR Scorecard — [Entity Name] — Q[N] [Year]
**Scored by:** [Entity CEO] | **Validated by:** Dr. Lewis | **For:** Matt Mathison QBR

---

| Objective | Key Result | Target | Actual | Score | Notes |
|-----------|-----------|--------|--------|-------|-------|
| O1: [Objective] | KR1: [Metric] | [X] | [X] | 0.7 | [Explanation] |
| | KR2: [Metric] | [X] | [X] | 1.0 | [Explanation] |
| O2: [Objective] | KR1: [Metric] | [X] | [X] | 0.3 | [Explanation — root cause] |

**Q[N] Average Score: [X.X]** | Target: 0.7-0.8

---

## Patterns and Flags

| KR | Quarters missed (<0.7) | Root cause | Matt Mathison awareness |
|----|----------------------|-----------|----------------------|
| [KR] | Q[N-1], Q[N] — 2 consecutive | [Root cause] | ✅ Notified |
```

## Output Contract
- 0.7 scores are the goal, not the shame — MBL's OKR scoring culture is calibrated at 0.7-0.8 as the "winning" average; an entity that consistently scores 1.0 on all KRs has OKRs that were too easy and needs to reset to harder targets next quarter; an entity that consistently scores 0.3 has either set unrealistic targets or has an execution problem; Dr. Lewis uses the scoring distribution as a diagnostic tool, not just a report card
- Consecutive misses require conversation, not just documentation — two consecutive quarters with a score of <0.7 on the same KR is a signal that something structural is wrong: the target is wrong, the underlying driver is broken, or the execution approach needs to change; Dr. Lewis flags this to Matt Mathison with a specific root cause and a proposed action; the "flag" is not punitive — it's the honesty mechanism that ensures OKRs don't become theatrical
- Dr. Lewis validates before scores are final — entity CEOs self-score, but the OKR scorecard that goes to Matt Mathison has been validated against the actual financial and operational data; a CEO who self-scores a 0.7 on "Improve GRR from 91% to 94%" when actual GRR is 89% is either rounding aggressively or making a calculation error; Dr. Lewis catches this before the QBR, corrects it (the actual score is 0.3), and has a direct conversation with the CEO about the discrepancy — this is not a performance punishment, it's data integrity
- HITL required: Matt Mathison approves annual OKRs for all entities before Q1 begins; Matt Mathison's portfolio-level OKRs are self-set (Dr. Lewis proposes; Matt decides); any mid-quarter OKR revision requires Matt Mathison approval (OKRs are not changed to make them easier after the fact — only if circumstances change materially); the QBR scorecard is presented to Matt in the first 5 minutes of each entity's section — it sets the factual baseline before any narrative

## System Dependencies
- **Reads from:** fin-kpi-dashboard (KPI actuals validate OKR KR scores); QuickBooks by entity (financial KR validation); AdvancedMD / Covercy / DSP systems (operational KR validation); ops-portfolio-cadence (QBR structure where OKRs are scored)
- **Writes to:** Monday.com OKR boards (by entity); OKR scorecards (SharePoint → Operations → OKRs → [Entity] → Q[N]-[YYYY]); QBR decks (OKR scorecard is the opening slide); Matt Mathison briefings (consecutive miss flags); ops-action-tracker (improvement actions from OKR misses)
- **HITL Required:** Annual OKRs → Matt Mathison approval; mid-quarter revisions → Matt approval; consecutive misses → Matt notification; Matt's portfolio-level OKRs → Dr. Lewis proposes, Matt decides; OKR scoring methodology changes require Matt agreement

## Test Cases
1. **Golden path:** Q2 scoring for Allevio; CEO self-scores in 5 days of quarter-end. Dr. Lewis validates: O1 (Grow employer group revenue): KR1 "Add 3 employer groups" → actual: 2 added; score self-reported as 0.7 (close but missed) — validated correct; KR2 "GRR ≥91%" → actual: 91.3%; score self-reported as 1.0 — validated correct; KR3 "PMPM rate increase at OE for 80% of groups" → actual: 72% agreed to increase; score self-reported as 0.7 — Dr. Lewis adjusts to 0.3 (target was 80%; actual was 72%; that's a 0.3 miss, not a 0.7 near-miss; the difference is $35K of ARR). O2 (Reduce claim ratio to 87%): KR1 "Claim ratio ≤87%" → actual: 89.1%; score: 0.3 — this is the 2nd consecutive quarter below 0.7. Flag to Matt: "O2/KR1 claim ratio has missed 0.7 for 2 consecutive quarters. Root cause: PCP enrollment is slower than planned. Action: clinical team enrollment resources are being increased next quarter."
2. **Edge case:** An entity CEO wants to change a KR mid-quarter because the target is "clearly unachievable" → Dr. Lewis: "I need to understand the circumstances before recommending anything to Matt. Two scenarios: (1) The market changed materially (e.g., WTI dropped below our trigger, making the HIVE capex KR irrelevant) — this is a legitimate reason to revise the KR; I'll flag to Matt and propose a replacement that still holds HIVE accountable to something meaningful in the changed environment. (2) The target was always aggressive and the CEO is now finding it harder than expected — this is not a reason to change the KR; the difficulty is the point. OKRs that get changed when they're hard undermine the entire accountability mechanism. Which scenario are we in?"
3. **Adversarial:** Matt asks why OKRs consistently aren't being hit — is the team underperforming? → Dr. Lewis: "I want to give you an honest diagnosis rather than a narrative that makes things look better than they are. Pattern analysis across 3 quarters: Allevio hits an average of 0.72 (right in the target range — the team is executing); HIVE hits an average of 0.68 (slightly below target — WTI sensitivity is the primary driver, not execution quality; the KRs that WTI doesn't affect score 0.85+); Column6 hits an average of 0.55 — this is the real concern. Column6's misses are concentrated in agency growth and VCR performance — both are execution-dependent, not market-dependent. My assessment: Allevio is performing; HIVE is performing within its market constraints; Column6 has an execution gap that needs a different kind of conversation. Do you want me to prepare a specific Column6 executive performance analysis for your next call with the CEO?"

## Audit Log
Annual OKR records retained (with Matt Mathison approval dates). Quarterly scorecards retained. Mid-quarter revision records (with Matt approval). Validation documentation (data sources for each KR). Consecutive miss flags and actions retained. Portfolio-level OKR history retained.

## Deprecation
Retire specific OKR structures as entities mature and hire their own finance/operations leadership who maintain their own OKR programs — with Dr. Lewis validating financial KRs and Matt Mathison retaining approval authority over annual objectives.
