---
name: exec-thrive-assessment
description: "Run a formal THRIVE values assessment for MBL Partners decisions, people, and portfolio companies. Use when the user says 'THRIVE assessment', 'THRIVE check', 'THRIVE filter', 'THRIVE evaluation', 'apply the THRIVE filter', 'run the THRIVE assessment', 'does this pass THRIVE', 'THRIVE alignment', 'THRIVE score', 'evaluate against THRIVE', 'THRIVE values check', 'assess against our values', 'values alignment check', 'does this fit our values', 'THRIVE go-no-go', 'values-based decision', 'THRIVE review', 'THRIVE analysis', 'values assessment', 'culture values check', 'assess for THRIVE', 'THRIVE compatibility', 'screen for THRIVE', 'THRIVE audit', 'THRIVE report', 'THRIVE dashboard', or 'how do we score on THRIVE'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--subject <decision|company|person|initiative>] [--context <acquisition|hiring|investment|strategy|culture>] [--depth <quick|full>]"
---

# Exec THRIVE Assessment

Run a formal THRIVE values assessment for MBL Partners decisions, people, portfolio companies, and initiatives — applying the THRIVE filter systematically to ensure that MBL's decisions and investments are aligned with its core values. THRIVE is not a marketing construct at MBL — it is a kill criterion: a decision that fails the Integrity dimension does not proceed regardless of the financial return; a person who cannot demonstrate Truth does not join or stay on the leadership team; an acquisition target that conflicts with THRIVE is not pursued. The THRIVE Assessment skill is the formal governance tool that applies this filter consistently and produces a documented assessment for any decision that matters.

## When to Use
- An acquisition target needs THRIVE screening (exec-deal-thesis-builder Stage 2)
- An executive hire needs THRIVE evaluation (exec-ceo-hiring Stage 3)
- A strategic initiative is being evaluated for values alignment
- A leadership team behavior pattern needs to be assessed against THRIVE
- Matt Mathison asks "does this pass our THRIVE filter?"
- A quick values gut-check on a decision or opportunity

## THRIVE Assessment Framework

```
THRIVE DIMENSIONS — ASSESSMENT CRITERIA:

  T — TRUTH (The ability and willingness to face and communicate reality)
  
    Evidence that a person/company demonstrates TRUTH:
      □ Surfaces bad news quickly; doesn't wait until it becomes a crisis
      □ Updates forecasts proactively when assumptions change
      □ Reports failures with as much candor as successes
      □ Seeks accurate information before making decisions (doesn't rely on what they want to hear)
      □ Holds themselves and others accountable to facts, not narratives
      
    Evidence of TRUTH DEFICIT (concern signals):
      ⚠️ Information is delayed, filtered, or withheld from leadership
      ⚠️ Problems are minimized or explained away rather than owned
      ⚠️ Financial data doesn't reconcile with operational reality
      
    TRUTH failure signals (approaching kill criteria):
      🔴 Deliberate misrepresentation of facts to stakeholders
      🔴 Known problems actively concealed from Matt Mathison or LPs
      
  H — HUSTLE (Execution velocity; bias toward action; getting things done)
  
    Evidence that a person/company demonstrates HUSTLE:
      □ Decisions are made at the appropriate level without escalation delays
      □ Action items close on schedule (>85% completion rate)
      □ The team moves fast; doesn't over-deliberate
      □ Progress is reported proactively, not waited for
      □ Problems are solved, not studied indefinitely
      
    Evidence of HUSTLE DEFICIT:
      ⚠️ Recurring "in progress" status on items that should be closed
      ⚠️ Escalation of decisions that should be made at a lower level
      ⚠️ Analysis paralysis: too much deliberation; not enough execution
      
  R — RESPECT (Building trust; treating people with dignity; creating psychological safety)
  
    Evidence:
      □ Candid feedback is given directly (not behind someone's back)
      □ Team members feel heard; concerns are taken seriously
      □ Difficult conversations happen; conflict is resolved, not avoided
      □ Customer/partner relationships are treated with long-term care, not transactional extraction
      
    Evidence of RESPECT DEFICIT:
      ⚠️ Team morale problems; high turnover in key positions
      ⚠️ Customer complaints about how they're treated
      ⚠️ Leadership avoids difficult conversations; lets conflict fester
      
  I — INTEGRITY (Doing what you say; zero gap between stated values and actual behavior)
  
    Evidence:
      □ Commitments are honored; when they can't be, they are renegotiated proactively
      □ No conflict of interest issues
      □ Financial records are clean and accurately represent the business
      □ Regulatory and compliance obligations are met without shortcuts
      □ Consistent behavior regardless of who is watching
      
    INTEGRITY KILL CRITERIA (automatic disqualification if confirmed):
      🔴 Deliberate misrepresentation to MBL, LPs, customers, or regulators
      🔴 Financial fraud or material misstatement
      🔴 Regulatory violation with evidence of knowing concealment
      🔴 Discriminatory or harassing behavior at the leadership level
      🔴 Kickback or conflicts of interest with financial benefit
      ONE CONFIRMED INTEGRITY FAILURE = KILL. NO EXCEPTIONS. NO SECOND CHANCES.
      
  V — VALUE (Creating measurable returns; ROI discipline; eliminating waste)
  
    Evidence:
      □ Investment decisions are backed by ROI analysis
      □ Resources are allocated to highest-return activities
      □ Waste is identified and eliminated; not tolerated
      □ The entity creates clear, measurable value for its customers
      □ EBITDA margins are improving or at target
      
    Evidence of VALUE DEFICIT:
      ⚠️ Spending without measurable ROI
      ⚠️ EBITDA margins declining without explanation or plan
      ⚠️ Customer outcomes are not improving despite MBL investment
      
  E — ENJOY (Sustainable energy; people are energized by the work)
  
    Evidence:
      □ Leadership team is engaged and energized (not depleted and cynical)
      □ A-player retention is high
      □ There is something specific and authentic the leadership enjoys about this work
      □ The culture supports sustainable performance (not burnout-driven output)
      
    Evidence of ENJOY DEFICIT:
      ⚠️ Leadership team appears burned out; high turnover in key roles
      ⚠️ The leader cannot articulate what they enjoy about the role

ASSESSMENT TYPES:

  QUICK THRIVE CHECK (5 minutes; conversational; for routine decisions):
    Go through each dimension in 1-2 sentences: "On T — what's my evidence this is true?"
    Output: 6-line table (dimension; evidence; status: GREEN/YELLOW/RED)
    Kill criteria: did any dimension hit a kill criterion? If yes → KILL before proceeding.
    
  FULL THRIVE ASSESSMENT (30-60 minutes; for acquisitions; major hires; strategic initiatives):
    Evidence gathering (interviews; documents; data)
    Structured assessment per dimension
    Written report with specific evidence per finding
    Matt Mathison review required before GO decision
```

## Output Format

```markdown
# THRIVE Assessment — [Subject] — [Date]
**Type:** [Quick / Full] | **Context:** [Acquisition/Hiring/Strategy/Culture]
**Evaluated by:** Dr. Lewis | **Reviewed by:** Matt Mathison (if Full)

---

## Summary Verdict

**THRIVE Result:** [GO / CONDITIONAL GO / KILL]
**Basis:** [One sentence — the critical finding]

---

## Assessment by Dimension

| Dimension | Status | Key evidence | Kill criterion triggered? |
|-----------|--------|-------------|--------------------------|
| T — Truth | 🟢/🟡/🔴 | [Specific evidence] | No / YES |
| H — Hustle | 🟢/🟡/🔴 | [Evidence] | No |
| R — Respect | 🟢/🟡/🔴 | [Evidence] | No |
| I — Integrity | 🟢/🟡/🔴 | [Evidence] | No / YES |
| V — Value | 🟢/🟡/🔴 | [Evidence] | No |
| E — Enjoy | 🟢/🟡/🔴 | [Evidence] | No |

---

## Kill Criteria Status

**Integrity kill criterion:** [CLEAR / TRIGGERED: [Description]]
**Action if triggered:** [KILL — stop the evaluation; notify Matt Mathison immediately]

---

## Conditional Requirements (if Conditional GO)

1. [Condition that must be met before proceeding]
2. [Condition 2]
```

## Output Contract
- INTEGRITY kill criteria are absolute — one confirmed integrity failure triggers an immediate KILL recommendation regardless of the assessment on all other dimensions; there is no "overall score" that can offset an INTEGRITY failure; the THRIVE filter's I is not a dimension that can be "mostly good enough"; Dr. Lewis documents the kill and notifies Matt Mathison immediately with the specific finding; the decision to continue over a confirmed INTEGRITY failure is not within Dr. Lewis's authority — it would require an explicit Matt Mathison override with full awareness of the finding
- Evidence, not characterizations — "this person seems trustworthy" is not a TRUTH assessment; "in 3 reference calls, every reference gave an example of the candidate proactively surfacing a problem before being asked — and one reference said they once escalated a finding that was personally costly to them" is a TRUTH assessment; Dr. Lewis's THRIVE assessments use specific, observable evidence; the more specific the evidence, the more defensible the assessment; characterizations invite disagreement; evidence invites evaluation
- Quick checks have the same kill-criterion rigor as full assessments — a 5-minute quick THRIVE check still applies the integrity kill criteria; the quick format reduces the evidence-gathering depth, but it does not reduce the rigor of the kill criterion evaluation; if a quick check surfaces an INTEGRITY concern, it immediately upgrades to a full assessment or a KILL — it does not proceed
- HITL required: Full THRIVE assessments are reviewed by Matt Mathison before any GO decision; any kill criterion finding triggers immediate Matt Mathison notification; Quick checks for routine decisions can be completed by Dr. Lewis alone; any assessment involving an acquisition target, executive hire, or LP-significant initiative requires Matt's review; the THRIVE Assessment result is retained as documentation for every major decision

## System Dependencies
- **Reads from:** exec-deal-thesis-builder (THRIVE assessment is Stage 2 of the thesis — integrated); exec-ceo-hiring (THRIVE behavioral interview is Stage 3 — integrated); exec-culture-builder (culture assessment uses the same THRIVE framework); exec-leadership-coaching (THRIVE coaching uses the same dimensions — synced); exec-performance-management (THRIVE assessment of behavior patterns)
- **Writes to:** THRIVE assessment reports (SharePoint → ExecutiveSupport → THRIVEAssessments → [Subject] → [YYYY]); exec-deal-thesis-builder (THRIVE result feeds into GO/NO GO); exec-ceo-hiring (THRIVE result feeds into candidate advancement); exec-culture-builder (culture assessments are THRIVE assessments — same data)
- **HITL Required:** Full assessments reviewed by Matt Mathison; any INTEGRITY kill trigger → immediate Matt notification; KILL decisions for acquisition or hire contexts are Matt Mathison's to confirm; Dr. Lewis documents; Matt decides on any edge cases; Quick checks for routine decisions can be Dr. Lewis-only

## Test Cases
1. **Golden path:** Full THRIVE assessment for an acquisition target (healthcare company); 45-minute assessment; T: 🟢 (financials match operations; CEO surfaced a bad Q2 result in our first call unprompted); H: 🟢 (exec-action-tracker equivalent shows >90% commitment delivery); R: 🟡 (one Glassdoor concern about management style; 2 positive references; 1 neutral); I: 🟢 (no regulatory issues; clean financials; reference check: "I would hire them again without hesitation"); V: 🟢 (EBITDA improving 3 consecutive years); E: 🟢 (CEO has been running this company for 8 years with clear passion for the work). Result: GO with one condition — address the R (management style) concern in the integration plan with a THRIVE orientation priority. Matt: "Agreed. Move to LOI."
2. **Edge case:** Quick THRIVE check on a vendor partnership that surfaces an INTEGRITY signal → During the quick check, Dr. Lewis notices the vendor's CEO was named in a regulatory action 3 years ago (disclosed only when Dr. Lewis searched public records — not mentioned by the vendor proactively). Quick check immediately upgrades to: "This is not a quick check anymore. I found a regulatory action that the vendor CEO didn't disclose. Before any further evaluation: (1) What was the regulatory action? (2) Was it resolved? (3) Why wasn't it disclosed proactively? Until I have answers, this is a YELLOW on Integrity — not a kill yet, but a full assessment is required before proceeding." Vendor responds with the full story (resolved; minor; not disclosed because it's public record). Dr. Lewis: "Still a miss on Truth — you should have disclosed proactively. This becomes a condition of any partnership: proactive disclosure going forward." Conditional GO.
3. **Adversarial:** Matt wants to proceed with an acquisition despite a THRIVE Integrity YELLOW → Dr. Lewis: "I want to make sure we're aligned on what a YELLOW means versus a kill. What I found is [specific finding]. My assessment: this is concerning but it doesn't rise to the kill criterion of a confirmed, deliberate integrity failure — it's a pattern of optimistic self-reporting, not active misrepresentation. If you want to proceed, my recommendation is: we add two conditions to the LOI. (1) Specific financial representation and warranty coverage on the areas where the optimism was most pronounced. (2) A 90-day earnout component tied to the Q4 numbers that are currently ahead of their trend. If you're comfortable with those guardrails, I'm comfortable with a conditional GO." Matt: "Those guardrails work. Proceed with conditional GO."

## Audit Log
All THRIVE assessments retained by subject, date, and context. Kill criterion findings retained (specific finding; notification to Matt; decision made). Full assessment reports retained. Matt Mathison review records retained. Quick check records retained (shorter form; same kill-criterion rigor). Conditional GO conditions retained (what was required; was it met?).

## Deprecation
The THRIVE Assessment skill is permanent to MBL's operating model. It evolves as the THRIVE framework is refined, but it does not retire. If MBL ever discontinues the THRIVE values framework, this skill is deprecated with that decision.
