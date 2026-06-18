---
name: fin-ar-manager
description: "Manage accounts receivable and collections for MBL Partners and portfolio companies. Use when the user says 'accounts receivable', 'AR', 'collections', 'collect the receivable', 'chase the payment', 'AR aging', 'AR aging report', 'overdue invoice', 'past due customer', 'customer payment', 'invoice overdue', 'collection call', 'collection process', 'AR management', 'AR review', 'AR dashboard', 'outstanding receivables', 'unpaid invoices', 'AR write-off', 'bad debt', 'bad debt expense', 'AR write off', 'DSO', 'days sales outstanding', 'collection rate', 'AR reconciliation', 'billing issues', 'invoice dispute', 'customer credit', 'credit terms', 'collections escalation', 'late payment', 'agency payment', 'employer payment', or 'royalty payment delayed'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--action <review|collect|escalate|write-off|reconcile>] [--focus <aging|dso|dispute|collections>] [--period <weekly|monthly>]"
---

# Fin AR Manager

Manage accounts receivable and collections for MBL Partners and portfolio companies — ensuring that revenue earned is actually collected, that AR aging is monitored continuously (not just at month-end), and that collections issues are escalated early enough to prevent cash flow surprises. Uncollected receivables are a silent cash drain: the P&L shows the revenue, but the cash isn't in the bank. At MBL's portfolio scale, a DSO that drifts by 15 days represents a material working capital impact; the AR management function is the mechanism that keeps DSO under control and cash flowing predictably.

## When to Use
- Weekly AR review (every Monday; part of the 13-week cash flow update)
- Monthly close AR reconciliation
- An account is past due and needs a collections escalation
- DSO is trending upward and requires root cause analysis
- An invoice dispute requires resolution

## AR Management Framework

```
ENTITY-SPECIFIC AR STRUCTURE:

  ALLEVIO:
    Revenue types and collection timing:
      1. PMPM (Employer Group): monthly invoices; due NET 30; most predictable
         Collection protocol: invoice on the 1st; follow up on Day 25; escalate Day 35
         High-risk: groups that are mid-OE transition (billing may lag by 30-60 days)
         Write-off threshold: 120+ days with no payment plan → escalate to Dr. Lewis
         
      2. AdvancedMD collections: billed to insurance; collected from insurance/patient
         Collection rate target: ≥93% (collected / billed)
         Aging: 0-90 days normal (insurance processing); 90-120 day = follow up; 120+ = dispute
         Note: HIPAA governs patient AR — specific protocols for patient collections
         
  HIVE:
    Revenue types and collection timing:
      1. Royalty distributions from Covercy: monthly distributions; auto-deposited
         "Collection" process: verify receipt matches Covercy statement; reconcile
         If distribution is late >5 business days: contact Covercy; document
         If Covercy statement doesn't match bank: escalate to Dr. Lewis (fin-hive-royalty-accounting)
         
      2. Lease bonus payments (if applicable): one-time; per landowner agreement
         Collect within 10 days of agreement execution; hold mineral rights delivery until collected
         
  COLUMN6:
    Revenue types and collection timing:
      1. IO payments from agencies: Net 30/45/60 per agency agreement
         Collection protocol: invoice on delivery; follow up Day 25 before due; escalate Day 7 past due
         Agency escalation path: AP contact → agency Finance Director → Matt Mathison direct call (for Tier 1 agencies)
         Make-good IOs: adjust billing for underdelivery; deferred revenue for overcommitment
         
      2. DSP settlements: media cost reimbursements from DSP platform (NET 30 from period end)
         Monitor: DSP settlement amounts vs. campaign cost reports

COLLECTIONS ESCALATION LADDER:

  Day 1 past due: Friendly reminder email from entity Controller/bookkeeper
  Day 7 past due: Phone call from entity Controller or CS relationship owner
  Day 14 past due: Dr. Lewis email to the customer finance contact (or equivalent)
  Day 21 past due: Dr. Lewis escalates to entity CEO; entity CEO calls customer/partner
  Day 30 past due: Matt Mathison call for any amount >$50K; legal hold notice for others
  Day 60 past due: Legal demand letter (after Matt Mathison approval); potential write-off evaluation
  
  Note: Allevio HIPAA patient collections follow a different protocol per applicable law
  Note: Column6 agencies > Tier 1 relationship — Matt Mathison direct involvement before legal

AR WRITE-OFF PROTOCOL:

  Before writing off any receivable:
    □ All escalation steps completed (documented)
    □ Dr. Lewis review and approval
    □ Write-offs >$10K: Matt Mathison approval
    □ Write-off does not waive the legal right to collect — separate from accounting treatment
    □ Document the write-off reason (bankruptcy; dispute; unresponsive)
    □ If business relationship continues: resolve the write-off before extending new credit
    
DSO MONITORING (weekly):

  DSO calculation: (AR balance / Revenue) × Days in period
  Track by entity:
    Allevio: target ≤35 days
    HIVE: target ≤45 days (royalty timing)
    Column6: target ≤55 days (agency payment terms longer)
    
  DSO trend alerts:
    DSO increases 5+ days in one month: flag in monthly financial summary
    DSO increases 3+ consecutive months: Tier 3 alert equivalent → Matt Mathison
    DSO exceeds target by 15+ days: escalation to entity CEO + collections blitz
```

## Output Format

```markdown
# AR Review — [Entity] — [Date]
**Prepared by:** Dr. Lewis (or Controller)

---

## DSO Trend

| Month | DSO | Target | Status | Trend |
|-------|-----|--------|--------|-------|
| [Month -2] | [N] days | ≤[N] days | 🟢/🟡/🔴 | — |
| [Month -1] | [N] days | ≤[N] days | 🟢/🟡/🔴 | ↑/↓/→ |
| [Current] | [N] days | ≤[N] days | 🟢/🟡/🔴 | ↑/↓/→ |

---

## AR Aging Summary

| Bucket | # Accounts | Amount | % of Total AR | Action |
|--------|-----------|--------|--------------|--------|
| Current (0-30) | [N] | $[X] | [%] | Normal |
| 31-60 days | [N] | $[X] | [%] | Monitor |
| 61-90 days | [N] | $[X] | [%] | Collections call |
| 91-120 days | [N] | $[X] | [%] | Escalate |
| 120+ days | [N] | $[X] | [%] | Write-off evaluation |

---

## Past-Due Accounts Requiring Action

| Customer/Entity | Invoice # | Amount | Days past due | Last contact | Next step | Owner |
|----------------|-----------|--------|--------------|-------------|---------|-------|
| [Customer] | [INV#] | $[X] | [N] days | [Date/method] | [Action] | [Owner] |

---

## Collection Rate (Allevio/Column6)

| Entity | Billed (MTD) | Collected (MTD) | Rate | Target | Status |
|--------|------------|----------------|------|--------|--------|
| Allevio | $[X] | $[X] | [%] | ≥93% | 🟢/🟡/🔴 |
| Column6 | $[X] | $[X] | [%] | ≥90% | 🟢/🟡/🔴 |
```

## Output Contract
- Weekly monitoring, not monthly — by the time AR aging shows up in a monthly close, a receivable that was 30 days past due on the 5th is now 35-40 days past due; weekly AR review catches collection issues when they're still in the friendly-reminder phase, not the legal-demand phase; Dr. Lewis reviews the AR aging weekly as part of the Monday cash flow update (fin-cash-flow-planner)
- Escalation ladder is a commitment, not a suggestion — if the escalation protocol says Day 21 is entity CEO involvement, and an account is at Day 21, the entity CEO makes the call that day; collections escalations that are "pending" at every step don't get resolved; the ladder creates accountability for each step and prevents the passive "I sent an email last week" non-escalation
- Write-offs are business decisions, not accounting conveniences — writing off an AR means recognizing that the revenue earned will not be collected; it is a material financial event; any write-off >$10K requires Matt Mathison approval; the write-off does not waive the legal right to collect (Dr. Lewis ensures legal preserves the right before the accounting write-off); if the business relationship continues, the write-off history affects credit terms going forward
- HITL required: Dr. Lewis approves all write-offs (any amount); write-offs >$10K require Matt Mathison approval; Day 30 collections escalation for amounts >$50K involves Matt Mathison direct call; Allevio patient AR collections follow HIPAA-compliant protocols (legal review before any patient collection communication); Column6 Tier 1 agency collections involve Matt Mathison before legal action; DSO deterioration trend (3+ months) is a Matt Mathison notification

## System Dependencies
- **Reads from:** QuickBooks (AR balances; aging by customer); Allevio: AdvancedMD (billed vs. collected; insurance AR aging); HIVE: Covercy (royalty distribution statements — expected vs. received); Column6: IO database (invoiced IOs; payment terms by agency); fin-cash-flow-planner (AR collections assumptions in the 13-week forecast)
- **Writes to:** AR aging reports (SharePoint → Finance → ARManagement → [Entity] → [YYYY]-[MM]); exec-cfo-oversight (AR health metrics in monthly financial summary); fin-cash-flow-planner (updated collection timing assumptions); exec-action-tracker (collection escalation action items); exec-kpi-dashboard (DSO and collection rate metrics); fin-entity-close (AR reconciliation is a close requirement)
- **HITL Required:** Write-offs require Dr. Lewis approval (any amount) and Matt Mathison approval (>$10K); Day 30 escalation for >$50K involves Matt direct call; Allevio patient collections require legal-review of communications; DSO trend (3+ months deteriorating) triggers Matt Mathison notification; Column6 Tier 1 agency legal action requires Matt Mathison approval

## Test Cases
1. **Golden path:** Weekly AR review for Column6; total AR $485K; current (0-30) $420K (86%); 31-60 days $42K (9%); 61-90 days $23K (5%); 90+ days $0. DSO: 52 days vs. 55-day target (Green; ↑ improving from 58 days 3 months ago). One account in the 61-90 day bucket: [Agency X] $23K — 67 days past due; IO fully delivered; payment terms were Net 45; Day 7 follow-up sent 3 weeks ago; no response. Escalation: Dr. Lewis sends email today (Day 67 past due → Day 14 protocol); if no payment by next Monday, entity CEO calls the agency CFO.
2. **Edge case:** Allevio employer group is 45 days past due on $18K PMPM payment; group is mid-OE transition and claims they "didn't receive the invoice" → Dr. Lewis: "I'm resending the invoice with proof of prior delivery (email delivery timestamp from our system). The 'didn't receive it' claim is common during OE transitions — it's usually true and usually resolved quickly. I'm giving them 5 business days to pay or establish a payment arrangement. If we don't have payment or a written payment plan by [date], I'm flagging this to the Allevio CEO. The reason I won't extend credit indefinitely during OE: if they're having trouble paying for last month, I want to know before we renew their agreement for next plan year." Group pays within 3 days.
3. **Adversarial:** Entity CEO wants to extend payment terms for a struggling customer to preserve the relationship → Dr. Lewis: "I understand the relationship rationale. Here's what I need to know before we agree to extended terms: (1) What is the total AR exposure? $[X] at risk. (2) What is the customer's payment history — have they been reliable before this? (3) Is this a short-term cash flow issue (they'll catch up) or a structural problem (they may not recover)? I can support a formal payment plan with documented terms — that's a legitimate business decision Matt should be aware of. What I can't support is informally extending terms month after month without documentation, because that's how a $23K receivable becomes a $69K write-off without anyone making a conscious decision about it. Let's document whatever we agree to — amount; timeline; what happens if they miss the plan."

## Audit Log
All AR aging snapshots retained monthly. DSO trend data retained rolling 12 months. Collection escalation records retained (steps taken; dates; responses). Write-off records retained 7 years (with Dr. Lewis and Matt Mathison approval documentation). Payment dispute records retained.

## Deprecation
Retire when each entity has a Controller or AR specialist who manages the collections process — with Dr. Lewis reviewing the write-off approvals and DSO trends, and Matt Mathison retained for escalations >$50K past due and write-offs >$10K.
