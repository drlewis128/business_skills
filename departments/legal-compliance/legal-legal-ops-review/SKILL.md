---
name: legal-legal-ops-review
description: "Conduct the quarterly legal function operations review for the MBL portfolio. Use when the user says 'legal ops review', 'legal function review', 'legal operations review', 'legal team review', 'legal department review', 'legal ops', 'how is the legal function performing', 'legal spend review', 'outside counsel review', 'contract review velocity', 'legal risk dashboard', 'quarterly legal review', 'annual legal review', 'legal capacity', 'legal workload', 'legal KPIs', 'legal metrics', 'review the legal function', 'legal function health', or 'legal ops dashboard'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--period <Q1|Q2|Q3|Q4|annual>] [--entity <company name|all>] [--action <review|report|plan>]"
---

# Legal Ops Review

Conduct the quarterly legal function operations review for MBL Partners and the portfolio — assessing legal spend, contract review velocity, compliance status, outside counsel performance, and open risk items. The legal function is Dr. Lewis's domain: he is responsible for ensuring that the portfolio companies are legally protected, compliant, and ready for their next transaction. The quarterly legal ops review is the mechanism for measuring how well the legal function is performing and identifying where to invest or improve.

## When to Use
- At the end of each quarter (Q1: April; Q2: July; Q3: October; Q4: January)
- Matt Mathison requests a legal function status update
- Planning the upcoming quarter's legal priorities
- Annual legal budget planning (Q4 review feeds the following year's budget)

## Legal Ops Review Framework

```
LEGAL OPS REVIEW DIMENSIONS:

  1. LEGAL SPEND (vs. budget):
     Track by: Entity; matter type (M&A; employment; corporate; regulatory; IP; litigation)
     Budget variance: Are we over or under? If over, is it justified (unplanned litigation; deal surge)?
     Outside counsel efficiency:
       Average billing rate by firm: Are we getting value at current rates?
       Billing guideline compliance: Are invoices meeting our billing standards?
       Preferred provider performance: How are our primary outside counsel performing?
     
  2. CONTRACT REVIEW VELOCITY:
     What to measure:
       Average days from contract receipt to review completion
       Average days from Dr. Lewis review to signature (how long does execution take after review?)
       Number of contracts reviewed this quarter vs. last quarter
     Target: All contracts <$50K reviewed within 5 business days of receipt
     Target: All contracts >$50K reviewed within 10 business days (requires outside counsel)
     Blockers: What slowed down contracts? (Negotiation volume; missing information; counterparty delays)
     
  3. COMPLIANCE CALENDAR PERFORMANCE:
     On-time compliance rate: What percentage of quarterly compliance obligations were met on time?
     Overdue items: Any items that were late this quarter? Cause? Prevention?
     Upcoming 90-day obligations: What is on the compliance calendar for the next 90 days?
     
  4. OUTSIDE COUNSEL MANAGEMENT:
     Active matters by firm: What are we managing with each firm this quarter?
     Billing review compliance: Were all invoices reviewed before payment?
     Performance issues: Any firms performing below expectations?
     New matter plans: Any new legal matters likely to require outside counsel next quarter?
     
  5. OPEN RISK REGISTER:
     Active litigation: Cases pending; reserves adequate?
     Regulatory matters: Any open regulatory inquiries?
     Contract disputes: Any active disputes not yet resolved?
     Compliance gaps: Any known compliance gaps not yet closed?
     Insurance claims: Any active insurance claims?
     
  6. M&A LEGAL STATUS (if applicable):
     Active deals: Deals in process; stage; legal tasks outstanding
     Deal pipeline: Anticipated deals that will require legal support next quarter
     Post-close obligations: NWC true-ups; earn-out tracking; escrow status
     
  QUARTERLY IMPROVEMENT ACTIONS (1-2 maximum):
    Based on the review, identify 1-2 specific improvements to the legal function
    Be specific: Not "improve compliance" but "implement the software license auto-renewal alert system by [Date]"
    Measure the improvement in the following quarter's review

LEGAL FUNCTION SELF-ASSESSMENT:
  Honesty is required — this is an internal review; sugarcoating serves no one
  Ask: Where did the legal function fail this quarter?
    Contract that slipped through without review?
    Compliance deadline that was almost missed?
    Outside counsel billing that was not reviewed before payment?
  Ask: Where did the legal function add value?
    Negotiation that saved the company money?
    Compliance action that prevented a regulatory issue?
    Contract review that caught a problematic clause?
```

## Output Format

```markdown
# Legal Ops Review — Q[X] [YYYY] | MBL Portfolio
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Delivered to:** Matt Mathison

---

## Legal Spend — Q[X] [YYYY]

| Entity | Budgeted | Actual | Variance | Largest Matter |
|--------|---------|--------|---------|---------------|
| MBL Partners | $[X]K | $[X]K | −$[X]K / +$[X]K | [Matter] |
| Allevio | $[X]K | $[X]K | −$[X]K / +$[X]K | [Matter] |
| HIVE | $[X]K | $[X]K | −$[X]K / +$[X]K | [Matter] |
| Column6 | $[X]K | $[X]K | −$[X]K / +$[X]K | [Matter] |
| **Total** | **$[X]K** | **$[X]K** | **+/−$[X]K** | |

---

## Contract Review Velocity — Q[X]

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| Average days to review (<$50K) | 5 BD | [X] BD | ✅ / ⚠️ / ❌ |
| Average days to review (>$50K) | 10 BD | [X] BD | ✅ / ⚠️ / ❌ |
| Contracts reviewed this quarter | — | [N] | — |
| Contracts reviewed on time | — | [N]/[N] | [X]% on time |

---

## Compliance Calendar Performance — Q[X]

**Obligations due this quarter:** [N]
**Completed on time:** [N] ([X]%)
**Late (with explanation):** [N] — [Brief description if any late items]

---

## Open Risk Register

| Risk | Entity | Exposure | Reserve | Status |
|------|--------|---------|---------|--------|
| [Employment claim] | Allevio | $[X]K | $[X]K | Mediation scheduled [Date] |
| [EPA inquiry] | HIVE | Unknown | $[X]K | Counsel engaged; response pending |
| **No open risks** | — | — | — | — |

---

## Q[X+1] Legal Priorities

1. [Top priority — e.g., "Complete HIVE trademark registration before exit process begins"]
2. [Second priority — e.g., "Resolve the Marshall Medical contract renewal by November 1"]
3. [Third priority — e.g., "Complete annual IP health check for all entities"]

---

## Q[X] Improvement Actions

| Improvement | Committed Date | Status |
|-------------|--------------|--------|
| [From last quarter's review] | [Date] | ✅ Completed / ⚠️ In progress / ❌ Delayed |

---

## Q[X+1] Improvement Target

**[Specific improvement action]:** [What; how; by when]

---

## Bottom Line

**Q[X] legal function assessment:** [2-3 sentences — honest, BLUF assessment of the quarter]
**Key action for Matt Mathison:** [One ask or decision needed from Matt Mathison, if any]
```

## Output Contract
- The legal ops review is an honest assessment — this is not a marketing document for the legal function; it is a management report intended to drive improvement; Dr. Lewis identifies where the legal function underperformed this quarter, not just where it succeeded; if a contract was missed, that goes in the report; if outside counsel overbilled and it was caught and corrected, that goes in the report; if a compliance deadline was close to being missed, that goes in the report; Matt Mathison can only address problems he knows about
- One to two improvement actions per quarter is the right cadence — a review that identifies 12 improvement areas results in zero improvements; a review that identifies 1-2 specific, measurable improvement actions with an owner and a deadline results in progress; Dr. Lewis commits to no more than 2 improvement actions per quarter and measures completion in the following quarter's review; the improvement program compounds over time — 8 improvements per year, consistently executed, transforms the legal function
- The risk register is never empty — there is always at least one open risk item in a portfolio company context; if the open risk register is empty, it means risks are not being tracked, not that they don't exist; Dr. Lewis maintains a conservative approach to the risk register: if there is any question about whether something is a material risk, it goes on the register; items are removed from the register only when they are fully resolved (claim settled; regulatory matter closed; dispute resolved)
- HITL required: Dr. Lewis prepares the review and delivers it to Matt Mathison; Matt Mathison reviews and provides direction; any open risk item requiring Matt Mathison's decision (litigation settlement >$25K; regulatory response authorization; outside counsel engagement >$25K) is escalated in the review; Dr. Lewis does not close risk register items without confirming resolution with outside counsel; Dr. Lewis does not approve settlement of risk register items without Matt Mathison's authorization per the HITL thresholds

## System Dependencies
- **Reads from:** Legal spend tracker (SharePoint/Legal/MBL/LegalSpend/ — QuickBooks integration or manual); contract tracker (how many contracts reviewed; timing); compliance calendar (all Q[X] obligations and completion status); open risk register (active litigation; regulatory matters; disputes); outside counsel invoices (reviewed before payment — billing guideline compliance); M&A deal status (fpa-ma-financial-support); escrow and earn-out tracker (legal-escrow-holdback-tracker); post-close integration checklist (legal-post-close-integration-legal); prior quarter review (to measure improvement action completion)
- **Writes to:** Quarterly legal ops review memo (SharePoint/Legal/MBL/LegalOps/[Quarter]_[Year]_LegalOpsReview.pdf); Matt Mathison quarterly packet (alongside fpa-ops-review); open risk register update; improvement action tracking log; outside counsel performance notes; Q[X+1] legal priorities list
- **HITL Required:** Dr. Lewis prepares; Matt Mathison reviews and provides direction; any risk register item requiring Matt Mathison's decision is escalated in the review; Dr. Lewis does not close risk items without confirmation; outside counsel changes (firm selection; engagement termination) require CEO + Dr. Lewis alignment and Matt Mathison awareness; Dr. Lewis presents the legal ops review at the appropriate management forum (quarterly review meeting; Matt Mathison 1:1) and solicits feedback

## Test Cases
1. **Golden path:** Q3 2027 legal ops review for MBL Portfolio → Dr. Lewis prepares: Legal spend: Budget $120K portfolio-wide; Actual $108K (−$12K favorable — below budget; M&A deal anticipated in Q4 will normalize); Contract review: 22 contracts reviewed; average 4.2 business days for <$50K; 8.5 business days for >$50K (within targets ✅); Compliance: 14 obligations due; 13 completed on time; 1 late (HIVE DOGM monthly production report — filed on day 2 instead of day 1 due to production data delay; disclosed in report); Open risks: 1 (Allevio employment claim — mediation scheduled; $50K reserve adequate); M&A: HIVE exit process initiated — LOI received from buyer; legal tasks: LOI review completed; diligence data room being assembled; Q4 priority: HIVE exit legal support (primary focus); Annual handbook reviews for all entities (Q4 target); Improvement action from Q2 (software license audit): ✅ Completed — 3 zombie subscriptions terminated; $28.8K annual savings; Q4 improvement target: Implement standard vendor onboarding checklist for all entities (by October 31); Report delivered to Matt Mathison by October 5 (within 5 days of Q3 close)
2. **Edge case:** Q2 review reveals that the outside counsel legal spend for Allevio significantly exceeded budget (+$35K vs. budget) — the cause is an EPLI claim that required 3 months of defense work → Dr. Lewis: "Q2 Allevio legal spend is $35K over budget due to the unexpected EPLI claim defense. The EPLI insurance carrier is reimbursing $25K of the defense costs (within the retention); net impact is $10K over budget. Forecast: If the claim settles at mediation in Q3 (as planned), the Q3 EPLI defense costs should be minimal (mediation fees only: ~$5K). Total EPLI matter cost: ~$28K after insurance recovery. Budget variance flag: Do we need a budget adjustment for Allevio? At $10K net over budget for a quarter, I recommend absorbing this within the annual budget rather than amending — Allevio is running under budget in other legal categories. Matt Mathison to confirm." Matt Mathison confirms: absorb within annual budget; no formal amendment needed
3. **Adversarial:** Matt Mathison reviews the Q1 legal ops review and notes that the contract review velocity metric shows average 8.2 business days for contracts under $50K — well above the 5 business day target → Dr. Lewis responds at the next management meeting: "You're right that contract review velocity slipped in Q1. Root cause: 3 of the 7 contracts that were late were submitted to me without the counterparty's most recent signed version (I received draft versions from the CEO's email but the vendor's countermarked version wasn't included); this added 3-4 days per contract waiting for the final version to be provided. Fix: I'm implementing a contract intake form — CEO submits the contract through a standard process (email to me with the signed counterparty version + deal context); contracts without the required information are flagged back within 24 hours for completion. This should bring velocity back to 4-5 business days. I'll report on the improvement in Q2." Intake form implemented; Q2 velocity: 4.8 business days (back on target)

## Audit Log
All quarterly legal ops reviews retained by quarter and year. Matt Mathison delivery and sign-off records retained. Open risk register snapshots retained by quarter. Improvement action tracking retained (commitment; completion or escalation). Legal spend variance reports retained. Outside counsel performance notes retained. Contract review velocity data retained.

## Deprecation
Retire and replace with a more structured legal function management framework (with in-house general counsel and a formal legal department) when MBL Partners has 10+ portfolio companies and legal operations require dedicated management infrastructure.
