---
name: exec-decision-framework
description: "Apply the MBL executive decision-making framework to high-stakes choices. Use when the user says 'decision framework', 'how do I decide', 'help me decide', 'decision matrix', 'should we do this', 'evaluate this option', 'decision criteria', 'THRIVE filter', 'apply THRIVE', 'run it through THRIVE', 'is this THRIVE-aligned', 'strategic decision', 'make a decision', 'decision analysis', 'evaluate this investment', 'evaluate this hire', 'evaluate this initiative', 'kill or continue', 'go or no-go', 'approve or reject', 'what criteria do we use', 'options analysis', 'decision framework for MBL', 'executive decision', 'how should we think about this', or 'evaluate this choice'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--decision <description of the choice>] [--threshold <amount or size>] [--deadline <date>] [--type <investment|hire|initiative|partnership|strategic>]"
---

# Exec Decision Framework

Apply the MBL executive decision-making framework to high-stakes choices — using THRIVE as the primary filter, bet-sizing as the resource calibration, and reversibility as the urgency guide. At MBL, decision speed is a competitive advantage; the framework is designed to produce a clear answer in minutes for most decisions and a structured analysis for the 10% of decisions that are genuinely hard. The enemy of good decisions at MBL is not bad information — it is decision avoidance, which often masquerades as "needing more data."

## When to Use
- A financial commitment >$50K or a hire requires Matt Mathison approval
- An initiative or investment has failed its initial returns and a kill/continue call is needed
- A new opportunity arrives and the team needs a rapid screening decision
- A THRIVE alignment question arises (does this initiative compromise our values?)
- A strategic bet requires structured analysis before Matt Mathison presentation

## Decision Framework

```
STEP 1 — CLASSIFY THE DECISION (30 seconds):

  Is this reversible or irreversible?
    Reversible: Can be undone within 30 days at low cost (e.g., pricing test, trial hire, pilot).
      → Decide faster. Delegate where possible. Move.
    Irreversible: Creates a commitment that is expensive or impossible to reverse (e.g., acquisition,
      permanent headcount, long-term contract, IP commitment).
      → Move carefully. Apply full framework. Get Matt Mathison alignment before committing.
      
  Decision size:
    <$10K or low-stakes: Dr. Lewis decides independently
    $10K-$50K: Dr. Lewis with CEO concurrence (entity level)
    $50K-$250K: Matt Mathison notification (can proceed unless Matt objects within 24hr)
    >$250K: Matt Mathison explicit approval required
    Existential risk to portfolio: Matt Mathison + Board-level conversation

STEP 2 — THRIVE FILTER (required for all decisions >$50K or involving people):

  T — TRUTH: Is our assessment of the situation honest?
    Are we facing reality as it is, or as we wish it to be?
    Does the data support the decision, or are we reasoning backward from a preferred outcome?
    → If truth fails: stop. Get honest data first.
    
  H — HUSTLE: Does this require real work, or is it an excuse to avoid something harder?
    Are we choosing this option because it creates leverage, or because it is comfortable?
    Is the team truly committed to executing this, or are they reluctantly agreeable?
    → If hustle fails: this is the wrong move or the wrong timing.
    
  R — RESPECT: Does this decision respect the dignity of everyone it affects?
    Employees, customers, landowners, LPs, community?
    Does it treat people as means to an end, or as stakeholders who matter?
    → If respect fails: redesign the decision or don't do it.
    
  I — INTEGRITY: Is this the right thing to do?
    Would we be comfortable if this appeared in tomorrow's news?
    Does this create a short-term gain at the expense of long-term trust?
    → If integrity fails: DO NOT PROCEED. This is the kill criterion. No exceptions at MBL.
    
  V — VALUE: Will this create demonstrable value for LPs, employees, customers, or the portfolio?
    Is the expected value clear and credible?
    Is the cost (capital, time, attention) proportional to the potential return?
    → If value fails: look for a better alternative or walk away.
    
  E — ENJOY: Will this energize the team, or drain them?
    Is there genuine enthusiasm, or resigned compliance?
    If it has to be done but nobody wants to do it, who will own it and how?
    → Enjoy can be overridden by I, V, or T — not everything enjoyable is worth doing,
       and not everything worth doing is enjoyable. But a team that is consistently
       doing things they don't believe in will underperform.

STEP 3 — BET SIZING:

  What is the expected upside if this decision works?
  What is the expected downside if this decision fails?
  What is our confidence level that this decision is correct?
  
  Expected value = (Probability × Upside) - (1 - Probability) × Downside)
  
  Rule: Only make bets where EV > 0 AND the downside is survivable.
    "Survivable" = losing this bet doesn't harm another portfolio entity or LP relationship.
    A bet with positive EV but catastrophic downside is still a bad bet at MBL's scale.
    
  Asymmetric bets (limited downside, large upside): pursue aggressively.
  Symmetric bets (equal upside and downside): require high confidence (>70%).
  Negative-asymmetric bets (large downside, limited upside): avoid or restructure.

STEP 4 — DECISION:

  GO: THRIVE passes, EV positive, downside survivable, resources available.
  NO-GO: Any THRIVE filter fails, or EV negative, or downside is existential.
  MORE DATA: Specific unknown would change the decision; can gather within 72 hours; worth the delay.
    (Note: "more data" is acceptable for the 10% of genuinely uncertain decisions;
     it is not acceptable as a default pattern — most decisions don't need more data)
  DELEGATE: Decision is within someone else's authority level per the threshold matrix above.

MBL DECISION DEFAULTS (use when the framework would otherwise be overkill):
  Hire decision: Use exec-hiring-scorecard thresholds + THRIVE + reversibility
    (90-day trial = reversible; permanent offer = commit carefully)
  Investment decision: Use strategy-irr-model thresholds + THRIVE + bet sizing
  Partnership decision: THRIVE Integrity filter first; terms second; deal structure third
  Technology purchase: Value (does it create leverage?) + Respect (vendor relationship integrity)
    + ROI >1.5× within 12 months
```

## Output Format

```markdown
# Decision Analysis — [Decision Name]
**Type:** Investment / Hire / Initiative / Partnership / Strategic
**Size:** $[X] / [Headcount] / [Resource]
**Reversibility:** Reversible (low cost to undo) / Irreversible
**Approval required:** Dr. Lewis only / CEO concurrence / Matt notification / Matt approval

---

## THRIVE Filter

| Filter | Pass/Fail | Notes |
|--------|----------|-------|
| Truth | ✅ / ❌ | Are we facing reality honestly? |
| Hustle | ✅ / ❌ | Does this require real work and create leverage? |
| Respect | ✅ / ❌ | Does this respect all stakeholders? |
| **Integrity** | **✅ / ❌** | **KILL criterion if ❌ — no exceptions** |
| Value | ✅ / ❌ | Does this create demonstrable value? |
| Enjoy | ✅ / ❌ | Will the team execute this with energy? |

**THRIVE verdict:** ✅ All pass / ❌ Killed — [which filter failed and why]

---

## Bet Sizing

**Expected upside:** $[X] or [qualitative outcome]
**Expected downside:** $[X] or [qualitative risk]
**Confidence level:** [%]
**Expected value:** [Positive / Negative / Near-zero]
**Downside survivable:** Yes / No — [explain if No]

---

## Decision

**Recommendation:** GO / NO-GO / MORE DATA / DELEGATE
**Rationale:** [One paragraph — BLUF]
**Next action:** [Who does what by when]
**Matt Mathison notification:** Required by [date] / Not required
```

## Output Contract
- Integrity is an absolute kill criterion — if the Integrity filter fails, the output is NO-GO, no further analysis needed, no exceptions; a decision that fails THRIVE Integrity at MBL is not a "complex situation requiring nuance"; it is a decision that Dr. Lewis will not bring to Matt Mathison for approval and will not recommend proceeding with; the value of the THRIVE framework is precisely that it prevents post-hoc rationalization of bad decisions by short-circuiting the analysis when the kill criterion is met
- Speed is a THRIVE H value — decision avoidance costs time and opportunity; if a decision has been "in analysis" for more than 2 weeks without new material information, Dr. Lewis calls it: either the analysis is complete and we decide, or the decision is being avoided for a non-analytical reason (fear, disagreement, political complexity); Dr. Lewis names the real reason and either resolves it or escalates to Matt Mathison
- "More data" is rarely the right answer — the framework allows for more data only when: a specific unknown would change the decision, that unknown can be gathered within 72 hours, and the delay is worth the cost; 80% confidence with a reversible decision beats 90% confidence achieved 2 weeks later with an irreversible outcome already in front of you
- HITL required: Matt Mathison notification for decisions $50K-$250K; Matt Mathison explicit approval for decisions >$250K; any decision with Integrity concerns requires Dr. Lewis escalation to Matt Mathison regardless of size; THRIVE filter results are logged for all >$50K decisions; reversibility assessment reviewed by Dr. Lewis for all irreversible decisions before commitment

## System Dependencies
- **Reads from:** Financial data (QuickBooks — available capital; current entity P&L); prior THRIVE assessments (SharePoint/Governance/THRIVEDecisionLog/); exec-strategic-planning (do we have this decision in plan, or is it unplanned?); exec-capital-allocation (does this fit the capital allocation plan?); relevant entity data (does this decision align with entity OKRs and north star metrics?)
- **Writes to:** THRIVE decision log (SharePoint/Governance/THRIVEDecisionLog/[YYYY]/[Decision]_THRIVEAssessment.pdf); exec-action-tracker (next action from decision); exec-capital-allocation (if capital is committed); Monday.com (decision outcome and next step posted to relevant board)
- **HITL Required:** Matt Mathison notification $50K-$250K; Matt Mathison explicit approval >$250K; Integrity concerns escalated to Matt regardless of size; THRIVE filter logged for all >$50K decisions; irreversibility assessment reviewed by Dr. Lewis before commitment

## Test Cases
1. **Golden path:** Column6 CEO requests approval to offer a $185K/year senior CSM to support Priority A agency expansion; reversibility: offer accepted = effectively irreversible for 6 months minimum; THRIVE: T ✅ (we need the headcount), H ✅ (this is a real leverage play), R ✅ (treating the candidate fairly), I ✅ (straightforward hire), V ✅ (expected ARR per new CSM in Year 1 = $400K based on our model), E ✅ (the team wants this person); bet sizing: downside = $185K + onboarding cost if wrong hire; upside = $400K+ ARR from new agency portfolio; EV positive; downside survivable; decision: GO — Matt Mathison notification sent (>$50K threshold); offer extended.
2. **Edge case:** An entity CEO proposes a partnership with a vendor who offers a significant discount in exchange for exclusive data rights over customer health data (Allevio) → Dr. Lewis: THRIVE Integrity check — does sharing customer health data with a third-party vendor without customer consent meet the HIPAA BAA requirement? No. Does the partnership pass the THRIVE Respect check — are we respecting patients and employer groups? No. Decision: KILLED on Integrity. No further analysis. Dr. Lewis to entity CEO: "This fails Integrity — we cannot share member health data in exchange for a commercial discount. This is non-negotiable. If the vendor can restructure the offer without data rights, bring it back."
3. **Adversarial:** A team member pushes back: "The THRIVE filter is too subjective — anyone can claim something fails Integrity to kill a decision they personally disagree with." → Dr. Lewis: "You're right that it can be misused. The integrity test has a specific definition: would we be comfortable if this appeared in tomorrow's news? Would it violate a law or regulation? Would it break a commitment we've made to a customer, LP, or employee? If none of those are true, then Integrity should pass. If you believe a decision was killed on Integrity unfairly, bring the specific case to me with the specific integrity concern identified. I'll review it and either confirm the kill or reverse it. The framework is not a personal veto — it is a specific test that I can explain and defend."

## Audit Log
All THRIVE decision logs retained by year. GO/NO-GO/MORE DATA/DELEGATE decisions retained with rationale. Integrity kills retained (what the decision was; which filter failed; who made the call). Matt Mathison notification records retained. Capital commitment decisions retained. Reversibility assessments retained.

## Deprecation
Retire when MBL has a Chief Operating Officer or Chief of Staff who runs the decision framework — with Dr. Lewis retaining the THRIVE Integrity review role and Matt Mathison retaining final approval authority on all decisions above his threshold.
