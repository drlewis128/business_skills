---
name: finance-ar-manager
description: "Manage accounts receivable for MBL Partners portfolio entities. Use when the user says 'accounts receivable', 'AR', 'collect payment', 'invoice clients', 'send invoice', 'client invoice', 'customer invoice', 'AR aging', 'overdue invoice', 'past due invoice', 'collect on invoice', 'invoice collections', 'unpaid invoice', 'AR management', 'AR process', 'AR workflow', 'revenue collection', 'billing and collections', 'invoice clients for services', 'employer billing', 'IO billing', 'invoice an agency', 'invoice an employer', 'AR reconciliation', 'AR audit', 'outstanding receivables', 'receivables aging', 'days sales outstanding', 'DSO', 'AR dashboard', 'invoice follow-up', 'payment reminder', 'client payment', 'collect from client', 'how long does it take to collect', 'collection efficiency', 'invoice sent', 'invoice paid', or 'collections status'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--action <invoice|age|collect|reconcile|report>] [--aging-threshold <30|60|90>]"
---

# Finance AR Manager

Manage accounts receivable for MBL Partners portfolio entities — generating client invoices in QuickBooks, tracking payment collections, managing AR aging, and escalating past-due accounts to the entity CEO for relationship-sensitive follow-up. Cash in the bank is the only cash that counts; AR on the books is revenue that hasn't been collected yet.

## When to Use
- Monthly billing cycle: generate and send employer/agency invoices
- AR aging review (monthly)
- Following up on a past-due invoice
- Reconciling collected payments to QuickBooks

## AR Management Framework

```
INVOICING BY ENTITY:

  ALLEVIO:
    Invoice trigger: PMPM billing run (1st of each month for prior month enrollment)
    Invoice amount: enrolled employees × PMPM rate × billing period
    HIPAA: invoices show employer name, enrolled EE count (aggregate), PMPM rate, total due
      NO individual employee names; NO health conditions; NO individual utilization on invoices
    Invoice delivery: QuickBooks → email to employer's HR/benefits contact
    Payment terms: net 30 (standard Allevio employer agreement)
    
  COLUMN6:
    Invoice trigger: IO campaign delivery milestone (50% delivery or 100% delivery, per IO contract)
    Invoice amount: IO value × delivery percentage achieved
    Payment terms: net 30-45 (agency-dependent; per signed IO)
    Invoice delivery: QuickBooks → email to agency finance/accounting contact
    
  HIVE PARTNERS:
    Revenue collection: production revenue → Covercy (operator handles; Dr. Lewis reconciles)
    Royalty income: mineral rights operator pays → tracked in Covercy → reconcile to QuickBooks
    Direct invoicing: minimal (most HIVE revenue is collected automatically through Covercy)
    
AR AGING MANAGEMENT:
  0-30 days: normal; monitor
  31-60 days: first reminder (polite email from entity CEO or CS lead)
  61-90 days: second reminder (entity CEO direct contact; propose payment plan if needed)
  90+ days: Dr. Lewis + entity CEO escalation; consider write-off threshold; legal review if >$20K
  
DAYS SALES OUTSTANDING (DSO) CALCULATION:
  DSO = (AR balance / Annual revenue) × 365
  Target: <40 days (Allevio); <50 days (Column6 — agency terms longer)
  Monitoring: calculated monthly; trend matters (is DSO improving or worsening?)
  
COLLECTION ESCALATION PROTOCOL:
  31-60 days past due:
    Email 1 (day 31): CS lead or entity CEO; "checking in on your invoice dated [X]"
    Email 2 (day 45): entity CEO; "wanted to follow up — please let us know if there's a question"
  61-90 days past due:
    Entity CEO direct phone call: "I want to make sure there's no issue with your account"
    Document call outcome in QuickBooks notes
  90+ days past due:
    Dr. Lewis + entity CEO decide: payment plan? dispute resolution? write-off? collections referral?
    Write-off threshold: >$15K → Dr. Lewis + entity CEO; >$30K → Matt Mathison informed
    
ALLEVIO HIPAA NOTE:
  Collections conversations with employers are about billing only — not clinical services
  No health condition discussion; no individual employee reference; employer-aggregate billing only
  If employer disputes based on enrollment count, CS lead provides aggregate count verification
  CS lead involvement in disputes: aggregate data only; no individual member data shared
```

## Output Format

```markdown
# AR Aging Report — [Entity] — [Month Year]
**Source:** QuickBooks | **Prepared by:** Dr. Lewis

---

## AR Aging Summary

| Bucket | Amount | Invoices | % of AR | DSO Impact |
|--------|--------|---------|---------|-----------|
| Current (0-30 days) | $X | N | X% | Normal |
| 31-60 days | $X | N | X% | Reminder sent |
| 61-90 days | $X | N | X% | CEO follow-up |
| 90+ days | $X | N | X% | Escalation |
| **Total AR** | **$X** | **N** | **100%** | |

**DSO: X days (target: <40 days Allevio / <50 days Column6)**

---

## Collection Actions This Month

| Account | Amount | Days Outstanding | Action Taken | Next Step |
|---------|--------|----------------|-------------|----------|
| [Employer/Agency] | $X | 47 | Email 1 sent | Email 2 on [Date] |
| [Employer/Agency] | $X | 92 | CEO called | Payment plan under discussion |
```

## Output Contract
- AR aging is where revenue recognition meets cash collection — an entity can have $1.2M in annual revenue and be cash-starved because 35% of invoices are collected in 60+ days; Dr. Lewis monitors DSO monthly and flags trends that indicate collection deterioration before it becomes a cash crisis; the early intervention protocol (day 31 email vs. day 90 crisis call) is designed to collect before the relationship becomes strained; the most effective collections are low-key check-ins at day 31, not aggressive demands at day 90
- Allevio employer billing disputes require careful handling — when an employer disputes an invoice because "we only have 28 employees, not 32 enrolled," this is a legitimate reconciliation question (the enrolled count should match the employer's benefit-eligible headcount); the CS lead resolves this by providing aggregate enrollment records (which are accurate and HIPAA-compliant); if the employer is correct and over-enrollment occurred, Allevio issues a credit; if the employer is incorrect (they hired without notifying Allevio), Allevio's billing is accurate and the CS lead explains the enrollment process; Dr. Lewis does not bring individual employee data into billing disputes — the resolution is always employer-aggregate
- HITL required: 61-90 day collections → entity CEO direct contact; 90+ day write-off consideration → entity CEO + Dr. Lewis; write-off >$30K → Matt Mathison informed; payment plan offer → entity CEO approves terms; Allevio enrollment dispute → CS lead (aggregate only) + entity CEO; legal referral for >$20K 90+ day → entity CEO + Dr. Lewis; DSO rising >10 days trend → entity CEO strategy review

## System Dependencies
- **Reads from:** QuickBooks (AR aging; invoice records; payment applications); GoHighLevel (Closed Won records → invoice trigger); AdvancedMD (Allevio enrollment counts — aggregate; CS lead provides); Covercy (HIVE production revenue receipts for reconciliation)
- **Writes to:** QuickBooks (invoices; payment applications; write-off records; collection notes); AR aging reports (SharePoint → [Entity] → Finance → AR → [YYYY-MM]); collection action records; entity CEO collection briefings; Matt Mathison write-off records (>$30K); DSO tracking
- **HITL Required:** 61-90 days → entity CEO; 90+ days → entity CEO + Dr. Lewis; write-off >$30K → Matt Mathison; payment plan → entity CEO approves; enrollment dispute → CS lead + entity CEO; >$20K 90+ → legal review; DSO rising → entity CEO review

## Test Cases
1. **Golden path:** Allevio July 2026 AR aging. 21 active employers; 21 invoices sent July 1 (total $94K). By July 31: 18 invoices paid (85.7% collection rate; $80K collected). 3 outstanding: (1) $8K Chandler employer — day 28 (still current; no action); (2) $6K Phoenix employer — day 34 (reminder email sent by entity CEO; responded "processing this week" ✅); (3) $4K Scottsdale employer — day 34 (reminder email sent; no response). DSO: $18K outstanding / $1.13M annualized revenue × 365 = 5.8 days DSO ✅ (well under 40-day target). Email 2 scheduled for Scottsdale employer on day 45.
2. **Edge case:** Column6 agency has $42K outstanding (net 45 payment terms; now day 52) and claims "our AP team changed software and some invoices got lost" → Dr. Lewis: "I appreciate the explanation — AP software migrations are real and can cause exactly this kind of delay. Here's what I need: (1) resend confirmation that the invoice has been found and entered in their new system; (2) a specific payment date commitment (not 'soon' — a date); (3) I'll remove this from the escalation queue for 7 days pending that commitment. If I don't have confirmation and a date by [Date], entity CEO and I will need to have a more direct conversation about the account. Column6 has a strong relationship with this agency and I want to resolve this without damaging it — a firm but friendly resolution in the next 7 days does that."
3. **Adversarial:** Entity CEO doesn't want to follow up on a 75-day past-due invoice from a large employer because "it's an important relationship and I don't want to seem desperate" → Dr. Lewis: "I completely respect protecting the relationship — and I think the framing matters. A 75-day past-due follow-up doesn't have to be a collections call; it can be the entity CEO calling to say 'hey, checking in on your experience — and also noticed invoice [X] from May hasn't been processed yet; anything I can help with on that end?' That's a relationship call that happens to resolve the billing. What we can't do is sit at 75 days and go silent — at 90 days, we're in formal escalation territory and the conversation gets harder, not easier. Let's do the relationship call this week."

## Audit Log
Monthly AR aging reports. Invoice generation records. Collection action records (emails; phone calls; dates; outcomes). Payment application records. Write-off records with entity CEO + Dr. Lewis approval. Matt Mathison write-off notification records. DSO monthly tracking. Allevio enrollment dispute resolution records.

## Deprecation
DSO targets reviewed when entity payment terms change. Collection escalation timeline reviewed when entity customer base matures. Write-off thresholds reviewed annually. Allevio HIPAA billing dispute process reviewed when regulations change. HIVE Covercy reconciliation reviewed when production revenue collection process changes.
