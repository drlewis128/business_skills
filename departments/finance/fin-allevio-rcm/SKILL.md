---
name: fin-allevio-rcm
description: "Manage Allevio's revenue cycle management and AdvancedMD collections. Use when the user says 'Allevio RCM', 'revenue cycle', 'revenue cycle management', 'AdvancedMD collections', 'AdvancedMD billing', 'AdvancedMD AR', 'claim billing', 'insurance billing', 'payer collections', 'insurance collections', 'prior authorization', 'PA', 'denial management', 'claim denial', 'denied claim', 'claim resubmission', 'clean claim rate', 'first pass acceptance rate', 'RCM performance', 'billing collections', 'Marshall Medical Billing', 'medical billing', 'collections rate', 'Allevio billing', 'Allevio collections', 'insurance payer', 'payer mix', 'underpayment', 'underpayment audit', 'HIPAA billing', 'medical coding', 'CPT codes', 'ICD codes', 'claims adjudication', 'EOP', 'EOB', 'remittance', 'remittance advice', or 'billing reconciliation'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly>] [--action <review|analyze|escalate|reconcile|report>] [--focus <collections|denials|ar-aging|pmpm|clean-claim>] [--payer <all|specific>]"
---

# Fin Allevio RCM

Manage Allevio's revenue cycle management and AdvancedMD collections — ensuring that every service Allevio delivers to employer group members is billed accurately, collected efficiently, and reconciled completely. RCM is the financial engine of Allevio's healthcare operations: revenue earned in the clinic or via employer group agreements becomes cash in the bank only after a clean billing and collections process. RCM failures — denied claims, slow collections, underpayments — directly reduce the EBITDA that drives Allevio's value. Dr. Lewis provides the financial oversight layer; Marshall Medical Billing (if contracted) or the internal billing team executes the day-to-day RCM.

## When to Use
- Monthly RCM review (AdvancedMD collections data by the 10th)
- Denial rate or collection rate has deteriorated from prior month
- A payer-specific issue requires escalation
- Matt Mathison asks about Allevio's billing performance
- Preparing for an audit or compliance review

## Allevio RCM Framework

```
ALLEVIO REVENUE SOURCES AND BILLING APPROACH:

  SOURCE 1: EMPLOYER GROUP PMPM (primary):
    Billing: Monthly invoices to employer groups (net 30 terms)
    Amount: Members × PMPM rate per group
    Collection: Predictable; employer group pays the full monthly amount
    Risk: Group cancellation (GRR risk); billing disputes at OE renewal
    Note: This is NOT insurance billing — it's direct employer-to-MSO billing
    
  SOURCE 2: CLINICAL SERVICES BILLING (secondary):
    Billing: Via AdvancedMD (or Marshall Medical Billing)
    For: Clinical services provided to employer group members
    Payer: Primarily member's individual health insurance (or employer self-insured plan)
    Process: Service → charge capture → coding → claim → adjudication → payment → posting
    
  CLINICAL BILLING METRICS (monthly targets):
    Clean Claim Rate (% of claims accepted on first submission): ≥95%
    First Pass Acceptance Rate (FPAR): same as clean claim; measures billing quality
    Collection Rate (collected / billed): ≥93%
    Days in AR (clinical): insurance claims: target ≤60 days; patient balances: ≤90 days
    Denial Rate: <5% (measure separately by denial reason — coding vs. eligibility vs. coverage)
    
  DENIAL MANAGEMENT PROTOCOL:
    All denied claims reviewed within 5 business days
    Denial categorization:
      Soft denial: fixable (missing info; prior auth needed; eligibility issue)
      Hard denial: clinical/coverage denial (may require appeal or write-off)
    
    Soft denials: recode; resubmit within 30 days of denial receipt
    Hard denials: review for appeal (if medically appropriate); write off if not appealable
    Appeals: track success rate; if <40% success, reconsider the billing strategy
    
  HIPAA COMPLIANCE IN BILLING:
    □ All patient billing information handled per HIPAA Privacy Rule
    □ Patient statements do not include PHI beyond minimum necessary
    □ Payment information (credit card; ACH) handled per PCI-DSS
    □ Patient collection calls comply with FDCPA (Fair Debt Collection Practices Act)
    □ Any patient data sent to a collection agency requires BAA
    □ No PHI in billing reports to Dr. Lewis (aggregate data only)
    
  AR AGING (CLINICAL):
    0-30 days: Normal — insurance processing time
    31-60 days: Monitor — follow up if not adjudicated
    61-90 days: Flag — likely a denial or payment issue; investigate and resubmit/appeal
    90-120 days: Escalate — potential write-off; secondary billing if applicable
    120+ days: Write-off evaluation — with Dr. Lewis approval
    
    Write-off thresholds:
      <$150: Controller discretion if all follow-up steps completed
      $150-$500: Dr. Lewis approval
      >$500: Dr. Lewis approval + review of whether an appeal is viable

MONTHLY RCM REPORTING (AGGREGATE — no PHI):

  Metrics to report:
    Gross charges billed: $[X]
    Estimated contractual adjustments: $[X]
    Net revenue (gross - contractual): $[X]
    Collected: $[X]
    Collection rate: [%] (vs. ≥93% target)
    Denied claims: [N] ($[X]) — denial rate: [%]
    AR aging summary: current / 31-60 / 61-90 / 90+ as % of total AR
    Days in AR: [N] days
    Write-offs: $[X] (with Dr. Lewis approval documentation)
    
  Note: All reporting to Dr. Lewis and Matt Mathison is aggregate, de-identified data
    Individual patient billing information stays within the HIPAA-compliant billing system
    
UNDERPAYMENT AUDIT:
    
  Payers sometimes pay less than the contracted rate:
    Quarterly underpayment audit: compare payments received to contracted fee schedule
    Flag any payment <95% of the contracted rate
    Recover underpayments: rebill with the correct code; EOB dispute process
    Systematic underpayment (same payer, multiple claims): contact payer directly; escalate to Dr. Lewis
```

## Output Format

```markdown
# Allevio RCM Monthly Report — [Month Year]
**Prepared by:** Dr. Lewis / Billing Team | **For:** Dr. Lewis → Matt Mathison | **HIPAA: Aggregate data only**

---

## PMPM Revenue Summary

| Employer group count | Active members | Total PMPM billed | PMPM collected | Collection rate |
|---------------------|--------------|-----------------|----------------|----------------|
| [N] | [N] | $[X] | $[X] | [%] |

---

## Clinical Billing Summary (AdvancedMD — Aggregate)

| Metric | This month | Target | Prior month | Trend |
|--------|-----------|--------|------------|-------|
| Gross charges | $[X] | — | $[X] | ↑/↓/→ |
| Net revenue (post adj.) | $[X] | — | $[X] | ↑/↓/→ |
| Collections | $[X] | — | $[X] | ↑/↓/→ |
| Collection rate | [%] | ≥93% | [%] | 🟢/🟡/🔴 |
| Denial rate | [%] | <5% | [%] | 🟢/🟡/🔴 |
| Days in AR | [N] | ≤60 | [N] | 🟢/🟡/🔴 |

---

## Denial Summary

| Denial reason | # Claims | Amount | Resolution |
|---------------|---------|--------|-----------|
| Eligibility | [N] | $[X] | Resubmit with corrected eligibility |
| Coding | [N] | $[X] | Recode and resubmit |
| Coverage | [N] | $[X] | Appeal / write-off evaluation |
| Prior auth | [N] | $[X] | Obtain auth retroactively / appeal |

---

## Flags for Dr. Lewis Action

| Issue | Amount | Action required |
|-------|--------|----------------|
| [Collection rate below 93%] | $[X] | Root cause analysis + escalation |
```

## Output Contract
- HIPAA is the absolute constraint — all RCM reporting that goes above the billing team level (to Dr. Lewis; to Matt Mathison; to the board) is aggregate data with no individual patient identifiers; Dr. Lewis does not receive, process, or report individual patient billing information; the billing team or Marshall Medical Billing handles PHI; Dr. Lewis sees only the aggregate metrics; if aggregate metrics indicate a problem, the investigation happens within the HIPAA-compliant environment, and only the resolution (not the individual patient data) is reported up
- Collection rate <93% triggers investigation — the 93% target is not aspirational; it is the minimum performance standard for a well-functioning billing operation; when collection rate falls below 93%, Dr. Lewis does not wait for the next monthly report to investigate; the denial log is reviewed, the billing process is audited, and the specific cause is identified within 72 hours of detection; common causes: coding errors (training issue); payer-specific eligibility problems (system issue); prior authorization failures (process issue); each has a specific fix
- Clean claim rate is the leading indicator — the collection rate is a lagging indicator; the clean claim rate (% accepted on first submission) is the leading indicator; a clean claim rate deteriorating from 96% to 93% in a given month will show up as a collection rate problem in 30-60 days; Dr. Lewis tracks the clean claim rate monthly to catch billing quality issues before they become cash flow problems
- HITL required: Dr. Lewis reviews monthly RCM report; write-offs >$150 require Dr. Lewis approval; write-offs >$500 require Dr. Lewis review + viability of appeal evaluation; collection rate <93% triggers Dr. Lewis investigation; systemic underpayment from a payer → Dr. Lewis escalates to Matt Mathison; any patient data request or HIPAA-related billing issue requires Allevio's Privacy Officer involvement before Dr. Lewis acts; Matt Mathison receives monthly RCM summary as part of exec-cfo-oversight financial summary

## System Dependencies
- **Reads from:** AdvancedMD (billing system — aggregate reports only; no PHI); Marshall Medical Billing (if contracted — their aggregate performance reports); fin-ar-manager (clinical AR aging is tracked here); fin-allevio-pmpm (employer group PMPM billing reconciliation)
- **Writes to:** RCM monthly reports (SharePoint → Finance → Allevio → RCM → [YYYY]-[MM] — HIPAA-protected folder); exec-cfo-oversight (clinical collection rate in the monthly financial summary); fin-kpi-dashboard (collection rate KPI); exec-action-tracker (RCM issues requiring escalation)
- **HITL Required:** All reporting is aggregate/de-identified (HIPAA); write-offs >$150 require Dr. Lewis; systemic payer issues escalate to Matt Mathison; HIPAA incidents involve Privacy Officer; monthly RCM summary to Matt via exec-cfo-oversight

## Test Cases
1. **Golden path:** May RCM report; PMPM: 12 groups × avg 85 members × $420 = $428K billed; $421K collected (98.4% — slightly below 100% due to one group with 3 member additions mid-month billed in June). Clinical billing: gross charges $185K; contractual adjustments $62K; net revenue $123K; collected $116K (94.3% — above 93% target); denial rate 3.8% (below 5% target); denial breakdown: eligibility 2.1% (billing team is resolving with employer group HR); coding 1.7% (2 complex visit codes; recoded and resubmitted). Days in AR: 47 days. All Green. No escalation required.
2. **Edge case:** Clean claim rate drops from 96% to 89% in a single month (June) → Dr. Lewis investigation: "This is a significant quality drop. Pulling the denial detail: the drop correlates exactly with a billing team member who returned from leave on June 5 — 73% of the denied claims were submitted by this individual. The denials are primarily coding errors (incorrect CPT code selection for the clinical service type). Action: (1) billing team lead does a coding review session with this individual this week; (2) all claims submitted by this individual in June are audited before the 60-day resubmission deadline; (3) a 30-day quality check-in is scheduled. Expected recovery: clean claim rate back to 94%+ by July 15. No patient data shared — this investigation was conducted within AdvancedMD."
3. **Adversarial:** Matt asks if we can reduce billing costs by cutting Marshall Medical Billing → Dr. Lewis: "Let me model the options before we decide. Marshall is billing at [cost]; they're achieving a 93-94% collection rate. If we bring billing in-house, we'd need to hire at least [N] billing specialists (fully-loaded $[X]/year) and invest in a coder or use AdvancedMD's automated tools (at $[Y]/month). The break-even is approximately $[Z] in annual billing cost savings vs. the in-house investment. The risk: if collection rate drops from 94% to 89% during a transition (common), that's a $[X] EBITDA hit that more than offsets the savings. My recommendation: before cutting Marshall, establish a 6-month in-house pilot on a subset of payers to test whether we can match their performance. If we can, then make the transition. If we can't, we have evidence that the cost is justified."

## Audit Log
All aggregate RCM reports retained. Write-off approval records retained (with HIPAA-compliant documentation). Collection rate trend data retained. Denial rate and root cause records retained. Underpayment audit records retained. Marshall Medical Billing performance records retained.

## Deprecation
Retire when Allevio has a dedicated Revenue Cycle Director who manages the RCM function — with Dr. Lewis reviewing the monthly aggregate performance and Matt Mathison receiving the quarterly RCM summary as part of the Allevio financial overview.
