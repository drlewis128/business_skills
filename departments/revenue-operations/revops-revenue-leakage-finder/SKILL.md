---
name: revops-revenue-leakage-finder
description: "Identify revenue leakage across MBL Partners portfolio entities. Use when the user says 'revenue leakage', 'leaking revenue', 'lost revenue', 'missed revenue', 'revenue gap', 'unconverted leads', 'dropped leads', 'missed renewals', 'expired trials', 'revenue we should have captured', 'where are we losing revenue', 'revenue opportunity gap', 'unworked leads', 'leads that fell through', 'deals that fell through', 'renewal that was missed', 'missed expansion', 'revenue leakage audit', 'revenue audit', 'revenue recovery', 'find lost revenue', 'money we left on the table', 'missed billing', 'billing gap', 'undercharged', 'contracts not billed', 'seat expansion not billed', 'revenue reconciliation', 'revenue opportunity', or 'find missing revenue'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--type <leads|renewals|billing|expansion>] [--period <30|60|90|180>] [--action <audit|recover|report>]"
---

# RevOps Revenue Leakage Finder

Identify and recover revenue leakage across MBL Partners portfolio entities — systematically auditing the pipeline, billing, renewal, and expansion process to find revenue that was earned but not captured, leads that were qualified but not followed up, and contracts that should have been billed but weren't. Revenue leakage is silent profit erosion; an annual leakage audit typically recovers more revenue than a new marketing campaign at similar cost.

## When to Use
- Quarterly or annual revenue leakage audit
- Investigating a gap between expected and actual revenue
- Allevio seat expansion not showing in billing
- Identified MQL that received no follow-up

## Revenue Leakage Framework

```
LEAKAGE CATEGORIES:

  1. PIPELINE LEAKAGE (LEADS NOT WORKED):
    What: MQLs that were created but never had a first contact attempt; leads that were worked but then abandoned
    Where: GoHighLevel — contacts with MQL tag but no activity log for >7 days
    Allevio targets: AZ employers ≥25 EE who submitted a form, attended an event, or were broker-referred — but AE never logged contact attempt
    Recovery: entity CEO or AE contacts the MQL immediately; treat as fresh lead regardless of age
    Prevention: SLA enforcement (revops-lead-routing-manager); weekly pipeline health check flags uncontacted MQLs
    
  2. RENEWAL LEAKAGE (MISSED OR AUTO-RENEWED AT WRONG RATE):
    What: contract expired without renewal contact; contract renewed without rate review; contract renewed without billing update
    Where: GoHighLevel renewal tracking; QuickBooks invoices vs. contract ACV
    Check: any employer contract where GoHighLevel renewal date passed without a "Renewed" stage update → investigate
    Check: QuickBooks invoices for Allevio employers — does invoice PMPM match current contract terms?
    Recovery: immediate renewal outreach; billing correction in QuickBooks; retroactive billing if applicable
    
  3. SEAT EXPANSION LEAKAGE (ALLEVIO — UNDERENROLLED):
    What: Allevio employer grew headcount but Allevio benefit was not extended to new employees; billing not updated
    Where: AdvancedMD enrollment data vs. employer reported headcount; quarterly employer headcount review
    Check: any employer where headcount grew >5% since last billing update but enrolled employees didn't increase
    Recovery: CS lead contacts employer; updates enrollment; QuickBooks billing updated; retroactive billing if appropriate
    Allevio HIPAA: headcount comparison is employer-reported (not PHI); enrollment counts are aggregate (not PHI)
    
  4. COLUMN6 BILLING LEAKAGE:
    What: IO signed and campaign ran but invoice not sent; IO value invoiced at wrong amount
    Where: GoHighLevel Closed Won → QuickBooks invoice cross-reference
    Check: any Closed Won deal in GoHighLevel without a corresponding QuickBooks invoice within 5 business days
    Recovery: invoice immediately; no more than 30-day gap between IO signature and invoice
    
  5. EXPANSION OPPORTUNITY LEAKAGE (NOT IDENTIFIED):
    What: employer or agency with clear expansion triggers but no expansion deal in GoHighLevel
    Where: CS lead quarterly review (revops-expansion-ops-manager) — but check for gaps
    Allevio: any employer with ≥15% headcount growth without an expansion deal in pipeline → leakage
    Column6: any agency that completed an IO >45 days ago without a new IO in pipeline → leakage
    
LEAKAGE AUDIT PROCESS:
  Step 1: Pull all MQLs created in the last 90 days → check for uncontacted MQLs (zero activity)
  Step 2: Pull all GHL renewal dates in the last 90 days → check for unrenewed or incorrectly billed
  Step 3: Cross-reference GHL Closed Won (last 90 days) vs. QuickBooks invoices → find missing invoices
  Step 4: Pull Allevio employer headcount vs. enrollment (CS lead provides quarterly) → check for underenrollment
  Step 5: Pull all Column6 completed IOs (last 45 days) → check for no next IO in pipeline
  Step 6: Quantify leakage ($ ARR not captured); prioritize recovery actions by dollar value
```

## Output Format

```markdown
# Revenue Leakage Audit — [Entity] — [Quarter/Year]
**Auditor:** Dr. Lewis | **Data sources:** GoHighLevel + QuickBooks + AdvancedMD (aggregate)

---

## Leakage Summary

| Category | Instances Found | Estimated ARR at Risk | Recovery Priority |
|----------|----------------|----------------------|-----------------|
| Uncontacted MQLs | [N] | $X (if closed at avg ACV) | High |
| Renewal gaps | [N] | $X | High |
| Billing errors (under-billed) | [N] | $X | High |
| Seat expansion not billed | [N] | $X | Medium |
| Missing next IO (Column6) | [N] | $X (estimated) | Medium |

**Total estimated leakage: $X**

---

## Top Recovery Actions

| Leakage item | Account | Estimated ARR | Action | Owner | Due |
|-------------|---------|--------------|--------|-------|-----|
| Uncontacted MQL | [Company] | $X (if closed) | AE contacts today | AE | Today |
| Under-billed enrollment | [Employer] | $X/yr | CS updates AdvancedMD billing | CS Lead | This week |
| Missing invoice | [Agency IO] | $X | Invoice immediately | Finance | 24 hours |
```

## Output Contract
- Revenue leakage audits pay for themselves in the first quarter — an audit that finds $40K in under-billed enrollment at Allevio (5 employers who grew headcount without billing updates) and $24K in uncontacted MQLs (2 qualified employers who never received follow-up) represents $64K in recoverable revenue from a 3-hour process; Dr. Lewis conducts the leakage audit quarterly; the discipline of the audit is itself a prevention mechanism — teams that know the audit is coming maintain tighter process throughout the quarter
- Seat expansion billing leakage is the most common Allevio revenue gap — when an Allevio employer hires 8 new employees without notifying Allevio, those 8 employees may enroll in the benefit; if AdvancedMD is tracking their appointments but billing is still based on the old headcount, Allevio is delivering care without receiving payment; this is not a malicious act by the employer — it's a process gap in both parties' enrollment management; Dr. Lewis's quarterly CS review specifically includes an employer headcount verification to catch this systematically; the recovery conversation is straightforward: "Your team has grown — here's the enrollment update and adjusted invoice"
- HITL required: billing error correction → entity CEO authorizes retroactive billing; uncontacted MQL >30 days old → entity CEO may contact directly (depending on relationship); Allevio enrollment billing correction → CS lead documents; any billing dispute from employer or agency → entity CEO + Dr. Lewis; leakage audit report → entity CEO receives; total leakage >$100K → Matt Mathison informed

## System Dependencies
- **Reads from:** GoHighLevel (MQL activity logs; renewal dates; Closed Won records); QuickBooks (invoice records — cross-reference vs. GHL); AdvancedMD (Allevio aggregate enrollment data — CS lead provides; not PHI); revops-renewal-ops-manager (renewal pipeline and health scores)
- **Writes to:** Leakage audit reports (SharePoint → [Entity] → RevOps → Leakage Audits → [Quarter]); QuickBooks (corrected invoices — entity CEO authorizes); GoHighLevel (leakage flag tags; recovery actions); entity CEO leakage summary; Dr. Lewis portfolio leakage tracking
- **HITL Required:** Billing error correction → entity CEO; retroactive billing → entity CEO; dispute from employer/agency → entity CEO + Dr. Lewis; leakage audit → entity CEO receives; >$100K leakage → Matt Mathison

## Test Cases
1. **Golden path:** Allevio Q3 leakage audit. Uncontacted MQLs (0-90 days): 3 found (1 Chandler employer who submitted a form 34 days ago; 1 broker-referred Phoenix employer from 22 days ago; 1 webinar attendee from 45 days ago). Estimated ARR if closed at avg $26K ACV: $78K opportunity. AE contacts all 3 this week; 2 of 3 are still interested; both enter Stage 2 pipeline. Renewal gap: 0. Billing check: 1 Allevio employer billing at $38K/year but enrolled employees grew from 30 to 37 (7 additional employees not billed). CS lead corrects in AdvancedMD; retroactive billing of $3,480 (7 EE × $42 PMPM × 12 months); entity CEO authorizes. Missing invoices: 0 (Column6 not applicable this quarter). Total leakage found: $3,480 billing error recovered immediately; $78K pipeline opportunity reopened.
2. **Edge case:** Allevio employer disputes a retroactive billing for 4 employees who enrolled in the benefit without being officially added to the headcount → Dr. Lewis: "The retroactive billing is correct — if 4 employees used the benefit without being added to the employer's official enrollment, Allevio delivered service that was not included in the contract. The right resolution: (1) entity CEO calls the employer directly to explain the situation (not a dunning call — a partnership conversation); (2) if the employer can confirm the headcount growth and the enrollment date, the invoice is accurate; (3) if there's a discrepancy (e.g., employees enrolled without HR authorization), we investigate whether the enrollment process was followed correctly; (4) entity CEO has discretion to offer a payment plan on the retroactive amount if the relationship is at risk; but we do not write off legitimate services delivered. THRIVE Integrity."
3. **Adversarial:** Entity CEO resists the quarterly leakage audit because "I trust our team to handle billing correctly" → Dr. Lewis: "The trust is good — but the leakage I find is almost never intentional. It's process gaps: an employer grows headcount and doesn't think to tell Allevio; an AE works an MQL, gets busy with late-stage deals, and forgets to follow up; an IO closes and the invoice request gets lost in the transition to the next campaign. These aren't trust failures — they're system failures. A 3-hour quarterly audit that finds $40K in missed revenue is a $40K return on 3 hours of work. That's not an audit of the team; it's an audit of the process. I do this audit across all entities precisely because it's never personal."

## Audit Log
Quarterly leakage audit reports (permanent). Recovery actions and outcomes. Billing correction records (entity CEO authorization — permanent). Allevio enrollment correction records. Retroactive billing records. MQL recovery records. Column6 IO gap records. Dr. Lewis portfolio leakage tracking.

## Deprecation
Leakage categories reviewed when entity revenue model changes. Allevio enrollment check reviewed when AdvancedMD billing integration matures. Audit frequency reviewed when entity process maturity increases (less frequent audits needed when leakage is consistently zero). Column6 categories reviewed when IO model changes.
