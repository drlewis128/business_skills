---
name: finance-allevio-revenue-recognition
description: "Manage revenue recognition for Allevio's MSO/healthcare business. Use when the user says 'Allevio revenue', 'Allevio revenue recognition', 'PMPM revenue', 'per member per month revenue', 'Allevio billing revenue', 'recognize revenue Allevio', 'employer revenue Allevio', 'monthly recurring revenue Allevio', 'Allevio MRR', 'Allevio ARR', 'Allevio revenue in QuickBooks', 'revenue recognition healthcare', 'MSO revenue recognition', 'when is Allevio revenue recognized', 'Allevio deferred revenue', 'Allevio revenue vs. cash', 'Allevio revenue accrual', 'revenue from employers', 'employer PMPM revenue', 'enrolled employee revenue', 'Allevio annual contract revenue', 'Allevio contract start', 'Allevio revenue ramp', 'new employer revenue', 'employer renewal revenue', 'Allevio revenue accounting', or 'Allevio revenue recognition policy'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--employer <name>] [--action <recognize|accrue|reconcile|report>] [--period <monthly|quarterly>]"
---

# Finance Allevio Revenue Recognition

Manage revenue recognition for Allevio's MSO/healthcare business — applying the PMPM revenue recognition policy consistently, reconciling AdvancedMD billing data to QuickBooks revenue entries, handling partial-month proration, deferred revenue for pre-payments, and retroactive adjustments for enrollment changes. Revenue recognition accuracy is the foundation of Allevio's financial reporting and LP valuation.

## When to Use
- Monthly close: recognize PMPM revenue for all enrolled employers
- New employer added: revenue recognition start date
- Enrollment change: enrolled employee count changes mid-month
- Annual contract renewal: revenue continuity vs. gap

## Allevio Revenue Recognition Framework

```
REVENUE RECOGNITION POLICY:

  Revenue Model: PMPM (per member per month) × enrolled employees
    "Member" = enrolled employee (not employee's dependents; PMPM is per enrolled employee)
    Revenue recognized: when services are delivered, not when invoiced or when cash received
    
  MONTHLY RECOGNITION:
    Recognition date: 1st of each month for that full month's services
    Amount: enrolled employee count (as of 1st of month) × PMPM rate (per employer agreement)
    Multiple employers: each employer contract has its own PMPM rate; sum = total monthly revenue
    
  NEW EMPLOYER PRORATION:
    Start date = January 15: recognize 16/31 days of January PMPM (half-month proration)
    Proration formula: (days remaining in month ÷ days in month) × monthly PMPM × enrolled EE count
    Recognition: in the month services begin
    
  MID-MONTH ENROLLMENT CHANGES:
    If employer adds employees on March 10: additional employees recognized from March 10 forward
    If employer removes employees on March 10: departed employees not recognized after March 10
    Dr. Lewis tracks enrollment changes and adjusts the recognition entries accordingly
    
  DEFERRED REVENUE:
    If employer pre-pays quarterly or annually: cash received → deferred revenue liability (not revenue)
    Revenue recognized monthly as services delivered (deferred revenue decreases each month)
    
  RETROACTIVE ADJUSTMENTS:
    Employer reports enrollment count retroactively (common with group health): adjust prior month revenue
    Adjustment threshold: >5% change → retroactive revenue adjustment in next period
    
HIPAA ABSOLUTE BOUNDARY:
  Revenue recognition entries show: employer code + enrolled employee count + PMPM rate + total
  Never: individual employee names; health conditions; utilization data; per-member clinical cost
  QuickBooks entries: employer-level revenue lines only (never individual member level)
  AdvancedMD billing summary: aggregate PMPM × enrolled EE = invoice total (aggregate format only)
  No PHI, ever, in any financial record
  
MONTHLY CLOSE PROCESS:
  Day 1-3: pull enrollment counts from Allevio's enrollment system (HR portal or CS lead)
  Day 3-5: calculate PMPM revenue for each employer
  Day 5: book revenue recognition entries in QuickBooks (employer by employer; aggregate)
  Day 7: compare to invoices sent (revenue should match invoiced PMPM; any differences flagged)
  Day 10: Dr. Lewis confirms monthly revenue total in entity P&L for portfolio dashboard
  
KEY METRICS:
  MRR: sum of all employer PMPM × enrolled EE counts
  ARR: MRR × 12
  GRR (Gross Revenue Retention): starting ARR − churned ARR ÷ starting ARR; target ≥91%
  NRR (Net Revenue Retention): same as GRR + expansion ÷ starting ARR; target ≥105%
```

## Output Format

```markdown
# Allevio Revenue Recognition — [Month Year]
**Prepared by:** Dr. Lewis | **Source:** Enrollment system + AdvancedMD | **HIPAA:** Aggregate-only ✅

---

## Monthly Revenue Recognition

| Employer Code | Enrolled EE | PMPM Rate | Monthly Revenue | Notes |
|--------------|------------|---------|----------------|-------|
| [EMP-001] | XX | $XXX | $X,XXX | |
| [EMP-002] | XX | $XXX | $X,XXX | New Q1; full month |
| **Total** | **XX** | | **$XX,XXX** | |

**MRR: $X,XXX | Enrolled employers: N**
*All figures are aggregate employer-level. No PHI. Individual employee data excluded.*

---

## QuickBooks Entry Summary
Revenue recognized: $X | Posted [Date] ✅

---

## Deferred Revenue
[If applicable: pre-payment balance and monthly recognition draw-down]
```

## Output Contract
- PMPM revenue recognition discipline is the most important financial control in Allevio's reporting — recognizing revenue when earned (not when invoiced or paid) is the standard; but the more common failure mode is over-recognition (recognizing 12 months of revenue at contract signing) or under-recognition (only recognizing when cash received); Dr. Lewis applies the monthly recognition rule consistently: 1/12 of annual contract per month, with proration for partial months, regardless of billing timing or payment receipt; this produces a clean income statement that reflects the economics of the business rather than the timing of cash flows
- The HIPAA boundary in revenue recognition is absolute and non-negotiable — financial records for Allevio contain employer codes, enrolled employee counts, and PMPM rates; they never contain individual employee names, SSNs, health plan elections, health conditions, diagnoses, or any data that could identify a specific member; Dr. Lewis reviews every QuickBooks journal entry for Allevio revenue to confirm the format before posting; if the CS lead sends an enrollment report that includes individual employee names, Dr. Lewis aggregates to the employer-level before entering anything into QuickBooks; the PHI never enters the financial system
- HITL required: monthly revenue recognition → Dr. Lewis reviews before posting; any retroactive adjustment >5% → entity CEO informed; GRR calculation → Dr. Lewis + entity CEO review quarterly; new employer revenue recognition start date → CS lead confirms enrollment date; HIPAA format → Dr. Lewis verifies every entry before posting; employer churn (contract end) → entity CEO + Dr. Lewis model GRR impact; annual ARR update → portfolio dashboard (finance-portfolio-dashboard); Matt Mathison receives monthly Allevio revenue in portfolio dashboard

## System Dependencies
- **Reads from:** Allevio enrollment system (enrolled employee counts by employer; enrollment start/end dates); AdvancedMD (billing summary — aggregate PMPM by employer; not individual member data); employer contracts (PMPM rates; contract terms); QuickBooks (deferred revenue accounts; revenue GL accounts)
- **Writes to:** QuickBooks (monthly revenue recognition entries; deferred revenue entries; retroactive adjustment entries); Allevio monthly P&L (entity-level revenue); finance-portfolio-dashboard (Allevio MRR/ARR section); finance-kpi-financial-tracker (GRR; NRR inputs); finance-board-report-builder (Allevio revenue section)
- **HITL Required:** Monthly posting → Dr. Lewis reviews before QuickBooks entry; retroactive >5% → entity CEO informed; GRR → quarterly entity CEO + Dr. Lewis review; churn → entity CEO + Dr. Lewis GRR impact; HIPAA format → Dr. Lewis verifies; Matt Mathison → monthly portfolio dashboard

## Test Cases
1. **Golden path:** Allevio June 2026 revenue recognition. 8 enrolled employers; 1 new employer started June 1 (clean full month). Enrollment counts (from CS lead aggregate report): EMP-001: 42 EE; EMP-002: 18 EE; EMP-003: 31 EE; EMP-004: 7 EE; EMP-005: 22 EE; EMP-006: 14 EE; EMP-007: 9 EE (new June 1); EMP-008: 28 EE. PMPM rates vary: $285-$310/employee. Total June revenue calculated employer by employer: $48,240. QuickBooks: 8 journal lines (employer code; enrolled count; PMPM; total). HIPAA check: no individual employee names ✅; no health conditions ✅; aggregate only ✅. Posted June 5. MRR: $48,240 / ARR: $578,880. GRR tracking updated.
2. **Edge case:** Employer EMP-003 sends a corrected enrollment count for May (31 EE → actually 28 EE; they had 3 employees who were on leave and were mistakenly included) → Dr. Lewis: "EMP-003 enrollment correction for May: 31 → 28 EE, a 3 EE reduction. Revenue adjustment: -3 × $295 PMPM = -$885. This is a 2.9% revision — below the 5% threshold for retroactive QuickBooks adjustment, but I'll still post a correcting entry in June (memo: 'May enrollment adjustment — EMP-003 -3 EE'). The invoice for May was $9,145 (31 × $295); corrected invoice is $8,260 (28 × $295). I'll issue a credit memo for $885 against EMP-003's June invoice and note the reason (leave of absence employees removed). The correction is employer-aggregate only — no employee names, no leave reason identified in any financial record."
3. **Adversarial:** Entity CEO asks Dr. Lewis to recognize the full annual contract value for a new large employer at signing ($480K annually, employer signed in September) → Dr. Lewis: "I can't recognize the full $480K in September — that would be revenue recognition fraud (recognizing revenue before the services are delivered). The correct treatment: receive the pre-payment in September → book $480K as deferred revenue (liability); recognize $40K/month as services are delivered starting October. By December 31, we've recognized $120K (October through December, 3 months × $40K); $360K remains deferred going into the new year. This is both GAAP-compliant and HIPAA-compliant. I know it looks better on Q3 financials to recognize the full contract, but if we ever have an audit, outside investors, or an acquirer doing due diligence, improper revenue recognition will immediately disqualify Allevio from a transaction. We build the right habits now."

## Audit Log
Monthly revenue recognition records (permanent). QuickBooks journal entries (employer code; enrolled count; PMPM; monthly total). HIPAA compliance check records (Dr. Lewis verification that all entries are aggregate). Retroactive adjustment records. Deferred revenue balance tracking. GRR/NRR calculation records. Employer enrollment change records (effective dates; aggregate counts only). New employer revenue start date records.

## Deprecation
PMPM revenue recognition policy reviewed when Allevio's contract structure changes. Deferred revenue treatment reviewed when contract payment terms change. Proration methodology reviewed when new employer onboarding terms change. HIPAA format requirements reviewed when HIPAA regulations change. GRR/NRR targets reviewed with annual budget process.
