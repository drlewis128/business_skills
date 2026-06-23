---
name: finance-allevio-insurance-reconciliation
description: "Reconcile insurance reimbursements for Allevio's healthcare operations. Use when the user says 'insurance reimbursement', 'insurance reconciliation', 'Allevio insurance', 'claim reimbursement', 'AdvancedMD reimbursement', 'Marshall Medical Billing', 'insurance payment', 'insurance AR', 'claim aging', 'insurance claim', 'payer reimbursement', 'payer reconciliation', 'payer payment', 'insurance payment received', 'denied claim', 'claim denial', 'insurance write-off', 'claim write-off', 'EOB', 'explanation of benefits', 'insurance EOB', 'ERA', 'electronic remittance advice', 'insurance collection', 'payer contract', 'payer rates', 'reimbursement rate', 'insurance collections ratio', 'net collection ratio', 'RCM reconciliation', 'revenue cycle reconciliation', 'Allevio RCM', 'reimbursement shortfall', or 'insurance underpayment'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly>] [--action <reconcile|analyze|write-off|escalate>] [--payer <name|all>]"
---

# Finance Allevio Insurance Reconciliation

Reconcile insurance reimbursements for Allevio's healthcare operations — receiving aggregate payer reimbursement summaries from AdvancedMD/Marshall Medical Billing, reconciling to expected collections, identifying systematic denial patterns, and booking insurance revenue and write-offs to QuickBooks. All data is handled in aggregate; no individual patient or member data enters financial records.

## When to Use
- Monthly: reconcile AdvancedMD insurance collections to QuickBooks
- Claim denial trends: identify a systematic denial pattern that reduces net collections
- Insurance write-off decision: Dr. Lewis books write-offs on aged uncollectable claims
- Quarterly: net collection ratio by payer

## Allevio Insurance Reconciliation Framework

```
DATA FLOW AND HIPAA BOUNDARY:

  AdvancedMD → Marshall Medical Billing → aggregate billing summary → Dr. Lewis
    AdvancedMD: Allevio's clinical billing system (claim submission; ERA/EOB receipt)
    Marshall Medical Billing: RCM/billing service partner
    Aggregate summary format: claims submitted by payer (total $) × collection rate = expected reimbursement
    Dr. Lewis receives: payer-level aggregate data only
    Dr. Lewis NEVER receives: individual patient names; diagnoses; procedure codes by patient; SSNs
    Individual-level claim data: lives in AdvancedMD; accessed only by clinical billing team
    
  AGGREGATE FORMAT EXPECTED:
    "Payer X: 142 claims submitted; $48,200 billed; $38,560 reimbursed (80%); $2,800 in appeals; $6,840 written off"
    Not: individual claim breakdowns by patient; claim-level detail; PHI of any kind
    
RECONCILIATION PROCESS (MONTHLY):
  Step 1: Request aggregate billing summary from Marshall Medical Billing (or AdvancedMD CS lead)
    Format requested: payer name; claims submitted (count); amount billed; amount reimbursed; denials; appeals
    No patient-identifying information
  Step 2: Compare to prior month (is collection rate by payer consistent? large swings → investigate)
  Step 3: Book insurance revenue collections to QuickBooks (aggregate by payer; not individual claims)
  Step 4: Book claim write-offs (uncollectable claims after appeals; aggregate by payer)
  Step 5: Calculate net collection ratio: reimbursed ÷ expected (after contractual adjustments)
  Step 6: Flag systematic issues to entity CEO (denial rate spike for a specific payer)
  
KEY METRICS:
  Net Collection Ratio (NCR): collections ÷ net collectible charges (after contractual write-offs)
    Target: ≥95% NCR; below 90% = systematic billing or denial problem
  Denial Rate by Payer: denied claims ÷ submitted claims
    Target: <5% first-pass denial rate; >10% = systematic issue requiring RCM review
  Days in A/R for insurance: average age of outstanding claims
    Target: <45 days for insurance A/R
    
DENIAL PATTERN ANALYSIS:
  Common denial reasons (from aggregate coding patterns; not individual diagnoses):
    Eligibility errors: employer enrollment data not updated with payer
    Authorization missing: prior authorization required but not obtained
    Code mismatch: billing code doesn't match payer's coverage rules
    Duplicate claim: payer has already paid or denied this claim
  Resolution: Dr. Lewis identifies pattern → refers to clinical billing team (AdvancedMD/Marshall) for resolution
  Dr. Lewis does NOT process individual claims; pattern identification is aggregate
```

## Output Format

```markdown
# Allevio Insurance Reconciliation — [Month Year]
**Source:** Marshall Medical Billing aggregate summary | **HIPAA:** Aggregate payer-level only ✅

---

## Insurance Collections Summary

| Payer | Claims Submitted | Amount Billed | Reimbursed | Denial Rate | Write-off |
|-------|----------------|--------------|-----------|------------|---------|
| [Payer A] | XXX | $X,XXX | $X,XXX | X% | $X |
| [Payer B] | XXX | $X,XXX | $X,XXX | X% | $X |
| **Total** | **XXX** | **$XX,XXX** | **$XX,XXX** | **X%** | **$X** |

**Net Collection Ratio: X% | A/R Days: XX | Target NCR: ≥95%**

---

## QuickBooks Entries
- Insurance revenue recognized: $X (aggregate; posted ✅)
- Write-offs booked: $X (aggregate; posted ✅)

---

## Flags
[Denial rate spike for Payer X / NCR below 95% / A/R days >45]
```

## Output Contract
- Dr. Lewis's role in Allevio insurance reconciliation is financial recording and trend identification, not clinical billing operations — the clinical billing team (Marshall Medical Billing + AdvancedMD) handles individual claim management; Dr. Lewis receives only the aggregate summary and uses it to record insurance revenue and write-offs in QuickBooks, and to flag systematic patterns (e.g., "denial rate for Payer X jumped from 4% to 18% this month") that the clinical billing team needs to investigate; Dr. Lewis does not pull individual claims, does not access patient-level data, and does not make coverage or billing decisions; the division of responsibility is clean and HIPAA-preserving by design
- The net collection ratio is Allevio's most important insurance efficiency metric — a NCR below 95% means Allevio is losing 5% or more of its collectible insurance revenue to denials and write-offs; at scale, a 5% NCR gap on $500K/year in insurance billing is $25K of lost revenue per year; Dr. Lewis monitors NCR monthly and escalates when it drops below 95% so the clinical billing team can investigate the root cause (usually a denial pattern that needs to be appealed or a billing code issue that needs to be corrected); left unmonitored, NCR degradation is one of the most common ways healthcare practices quietly lose revenue over time
- HITL required: monthly aggregate summary request → Dr. Lewis sends to Marshall Medical Billing; HIPAA format → Dr. Lewis verifies aggregate-only before use; NCR below 90% → entity CEO + clinical billing team investigation; denial rate spike → entity CEO + clinical billing team; QuickBooks insurance entries → Dr. Lewis posts; write-offs >$10K aggregate → entity CEO approves; >$30K aggregate → Matt Mathison notified; payer contract renegotiation → entity CEO + Dr. Lewis strategy; Matt Mathison receives Allevio insurance collections summary quarterly in board report

## System Dependencies
- **Reads from:** Marshall Medical Billing aggregate billing summary (monthly; payer-level aggregate; no PHI); AdvancedMD aggregate reporting (if available; payer-level collection summary); QuickBooks (insurance revenue accounts; AR accounts; write-off accounts); payer contract rates (for contractual adjustment calculation)
- **Writes to:** QuickBooks (insurance revenue entries; write-off entries; AR clearing); Allevio monthly P&L (insurance revenue section); finance-kpi-financial-tracker (NCR; denial rate metrics); entity CEO billing performance reports; Matt Mathison board report (insurance collections section); Marshall Medical Billing performance review records
- **HITL Required:** Aggregate summary → Dr. Lewis verifies HIPAA format; NCR <90% → entity CEO + clinical billing team; denial spike → entity CEO + clinical billing; write-offs >$10K → entity CEO; >$30K → Matt Mathison; payer contract → entity CEO + Dr. Lewis; Matt Mathison quarterly board report

## Test Cases
1. **Golden path:** Allevio June 2026 insurance reconciliation. Marshall Medical Billing sends aggregate June summary: Payer A (commercial): 89 claims; $32,400 billed; $28,700 collected (88.6%); $3,700 write-off (contractual adjustments — expected per payer contract; not errors); denial rate: 3.8% ✅. Payer B (commercial): 47 claims; $18,200 billed; $16,900 collected (92.9%); denial rate: 2.1% ✅. Payer C (government): 31 claims; $9,800 billed; $8,600 collected (87.8%). Total insurance: $58,400 billed; $54,200 reimbursed; NCR: 93% ✅ (above 90%; contractual write-offs are expected and acceptable). HIPAA check: aggregate payer data only ✅; no patient identifiers ✅. QuickBooks: insurance revenue $54,200; write-off $4,200. Posted June 7.
2. **Edge case:** Payer A denial rate jumps from 3.8% to 22% in July compared to June → Dr. Lewis: "Payer A's first-pass denial rate jumped from 3.8% in June to 22% in July — that's a significant spike that suggests a systematic billing issue, not random denials. I can see from the aggregate data that 38 of 172 claims were denied. This is not a number I can investigate at the individual claim level; that's Marshall Medical Billing's domain. I'm escalating this to the entity CEO and the clinical billing team today: 'Payer A denial rate jumped to 22% in July — likely a payer policy change, an eligibility issue, or a billing code discrepancy. Clinical billing team please investigate the common denial reason and report back within 5 business days. If this is not resolved, it will reduce Allevio's insurance collections by approximately $7,200 this month and should trigger a payer contract review.'"
3. **Adversarial:** Marshall Medical Billing includes individual patient names and claim-level detail in their summary report, claiming "Dr. Lewis needs this to do proper reconciliation" → Dr. Lewis: "I need Marshall Medical Billing to regenerate this report in aggregate format only — payer name; claim count; billed amount; collected amount; denial rate; write-off. Individual patient names, claim-level detail, and any patient-identifying information cannot be included in financial records per our HIPAA obligations. The financial reconciliation I perform works entirely from payer-level aggregate data — I don't process individual claims, and I don't need individual claim detail to calculate NCR, reconcile to QuickBooks, or identify denial patterns. If Marshall Medical Billing believes they need to share individual claim data with us for operational reasons, that requires a BAA review and a separate data transfer process with clinical leadership's involvement. For the billing summary I'm requesting, aggregate payer data is sufficient and required."

## Audit Log
Monthly aggregate billing summary receipt records (no PHI retained). HIPAA format verification records. QuickBooks insurance revenue entries. Write-off records and approvals. NCR monthly tracking series. Denial rate by payer tracking. Entity CEO and Matt Mathison escalation records. Marshall Medical Billing performance review records. Payer contract review records.

## Deprecation
NCR targets reviewed annually. Denial rate benchmarks reviewed when payer mix changes. HIPAA format requirements reviewed when regulations change. Marshall Medical Billing reporting format reviewed annually. Write-off thresholds reviewed when entity scale changes. Payer list reviewed when Allevio contracts with new payers.
