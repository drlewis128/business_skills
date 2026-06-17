---
name: fin-ops-collections-manager
description: "Manage AR collections — aging follow-up, payment plans, and DSO reduction. Use when the user says 'collections', 'collect on past due', 'invoice not paid', 'overdue invoice', 'past due', 'AR collections', 'follow up on payment', 'customer hasnt paid', 'DSO too high', 'days sales outstanding', 'aging follow-up', 'unpaid invoice', 'payment follow-up', 'collection call', 'payment plan', 'write off', or 'bad debt'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--customer <name>] [--amount <$>] [--days-past-due <N>]"
---

# Collections Manager

Manage accounts receivable collections for MBL portfolio companies — systematically following up on past-due invoices, maintaining customer relationships, and driving DSO (days sales outstanding) toward target. Collections is not a hostile process — most past-due invoices are the result of billing disputes, customer AP backlog, or invoices lost in the approval process; the first contact resolves most issues. The goal is to collect the cash that was already earned, not to create conflict. At PE portfolio scale, DSO reduction is a direct working capital improvement that increases free cash flow without changing EBITDA — a VCP lever that requires no operational change, only process discipline.

## When to Use
- Weekly AR aging review (standard process)
- An invoice is >15 days past due and no contact has been made
- A payment plan needs to be set up for a customer with cash flow difficulty
- A write-off decision needs to be made
- DSO is trending above target

## Collections Framework

```
DSO target: ≤35 days (company-wide, all entities)
DSO formula: (Outstanding AR ÷ Average daily revenue) × 365
  Example: $85K AR ÷ ($1.2M/365) = $85K ÷ $3,288/day = 25.8 days DSO
  
AR aging buckets and collections actions:

  Current (0-30 days):
    Action: No action required; invoice delivered; monitor
    
  31-45 days past due:
    Day 31: Friendly reminder email — "Just checking in on invoice #[N] — any questions?"
    Day 38: Second reminder email — "Invoice #[N] was due [date]. Please confirm payment status."
    No phone call yet; most invoices resolve at this stage with a single email
    
  46-60 days past due:
    Day 46: Phone call to billing contact — professional, fact-based, no pressure
      "Hi, I'm calling about invoice #[N] for $[X], due [date]. Can you give me an update?"
      Ask: Is there a dispute? A missing PO in their system? A different contact?
      Goal: Identify the root cause, not to demand payment
    Day 53: Follow-up email summarizing phone call + specific commitment
      "Per our call on [date], you indicated payment would be processed by [date]. We'll look for it then."
      
  61-90 days past due:
    Day 61: Escalation call — include CEO or Controller in the communication if amount >$5K
      "This invoice is now 60+ days past due. What is the timeline for resolution?"
      Offer a payment plan if the customer is experiencing cash flow difficulty (see below)
    Day 75: Formal demand notice (written, from CEO to customer decision-maker)
      Not a threat — a formal record that the debt is overdue and immediate resolution is required
      
  91+ days past due:
    Dr. Lewis reviews with CEO: Is this customer still active? What is the relationship value?
    Options: Continue collection internally | Payment plan | Third-party collection agency | Write-off
    Write-off threshold: Amounts <$500 that are 90+ days past due may be written off with Dr. Lewis approval
    Amounts >$500 require CEO + Dr. Lewis approval before write-off
    Amounts >$5,000: Matt Mathison notification before write-off
    Third-party collections: CEO approval required; damages the customer relationship; use only when internal efforts exhausted
    
  Payment plan guidelines:
    Offer when: Customer is actively engaging, experiencing temporary cash flow difficulty, has a good payment history
    Do not offer when: Customer is disputing the invoice legitimacy; customer is unresponsive
    Terms: Monthly payments; not more than 3 months to full payment for amounts <$25K
    Documentation: Written payment plan agreement, signed by customer (email acceptable)
    Monitoring: Controller tracks each payment plan milestone; missed payment → immediate Dr. Lewis notification
    
  Collections escalation to legal:
    If amount >$10K and customer is unresponsive after 90 days → Dr. Lewis + CEO evaluate legal options
    Legal action cost vs. collection probability must justify the legal spend
    Healthcare context: Allevio employer group disputes may have contractual arbitration clauses — check contract
```

## Output Format

```markdown
# AR Collections Report — [Entity]
**Date:** [Date] | **Prepared by:** [Controller] | **Reviewed by:** Dr. Lewis

---

## DSO Status

| Metric | Current | Target | Status |
|--------|---------|--------|--------|
| Outstanding AR | $[X]K | — | — |
| Average daily revenue | $[X]K | — | — |
| **DSO** | **[X] days** | **≤35 days** | 🟢/🟡/🔴 |

---

## Aging Summary

| Bucket | Amount | # Invoices | Action Required |
|--------|--------|-----------|----------------|
| Current (0-30 days) | $[X]K | [N] | Monitor |
| 31-45 days past due | $[X]K | [N] | Reminder emails |
| 46-60 days past due | $[X]K | [N] | Phone calls |
| 61-90 days past due | $[X]K | [N] | Escalation |
| 91+ days past due | $[X]K | [N] | CEO/Dr. Lewis review |
| **Total AR** | **$[X]K** | | |

---

## Active Collection Actions

| Customer | Invoice # | Amount | Days past due | Last contact | Next action | Due |
|----------|----------|--------|--------------|-------------|------------|-----|
| [Customer A] | [#N] | $[X] | [N] days | [Date] — email sent | Phone call | [Date] |
| [Customer B] | [#N] | $[X] | [N] days | [Date] — phone; committed to pay [date] | Confirm receipt | [Date] |

---

## Payment Plans Active

| Customer | Total owed | Plan | Next payment | Status |
|---------|-----------|------|-------------|--------|
| [Customer C] | $[X]K | $[X]/month × 3 months | [Date] | ✅ Current / ❌ Missed |

---

## Escalations / Write-Off Requests

| Customer | Amount | Days past due | Recommendation | Approver needed |
|---------|--------|--------------|---------------|----------------|
| [Customer D] | $[X]K | 95 | Write-off — unresponsive, balance $380 | Dr. Lewis |

---

## Matt Mathison Notification (if applicable)

Any write-off >$5K or collection situation involving legal action: [Brief description].
```

## Output Contract
- Contact within 3 days of passing the 31-day mark — the single biggest driver of prolonged past-due situations is delayed first contact; most customers who miss a payment did so inadvertently; a friendly email on Day 31 resolves the majority of cases before they escalate; Dr. Lewis expects the controller to review AR aging every Monday and contact any invoice that crossed into 31-45 days since the prior review; the contact is professional and not aggressive — it is a check-in, not a collection demand
- Root cause first, demand second — the collections call at Day 46 is a discovery call: is there a billing dispute? A missing PO in the customer's system that has blocked their AP team? A different billing contact? A cash flow issue? The answer determines the path; demanding payment from a customer who has a legitimate dispute causes relationship damage and delays resolution; Dr. Lewis instructs the controller to ask "what do you need to process this?" before "when are you paying this?"
- Write-offs require authorization — a write-off removes the receivable from the balance sheet and records it as bad debt expense; this reduces EBITDA and is therefore a financial decision, not an AP/AR process decision; write-offs <$500 require Dr. Lewis approval; write-offs >$500 require CEO + Dr. Lewis approval; write-offs >$5,000 require Matt Mathison notification; no controller or bookkeeper writes off a receivable unilaterally regardless of how small; if Dr. Lewis believes the receivable is genuinely uncollectable, the write-off recommendation is presented to the CEO with the collection history documented
- HITL required: Controller executes aging review and customer contact; Dr. Lewis reviews the weekly collections report and approves all write-offs; CEO is included in all escalation calls for amounts >$5K; Matt Mathison notified of write-offs >$5K and any legal action; payment plans >$25K require Dr. Lewis sign-off on the plan terms

## System Dependencies
- **Reads from:** QuickBooks AR aging (weekly pull); customer contracts (SharePoint Legal, for dispute validation and arbitration clause check); customer payment history (QuickBooks)
- **Writes to:** QuickBooks (write-off entries; payment plan tracking); collection contact log (SharePoint/Finance/<Company>/Collections/); payment plan agreement (signed by customer); Matt Mathison notification (if applicable)
- **HITL Required:** Controller manages; Dr. Lewis reviews weekly collections report; CEO included in escalation calls >$5K; Dr. Lewis approves write-offs; Matt Mathison notified of write-offs >$5K

## Test Cases
1. **Golden path:** Allevio employer group — $12,325 invoice 38 days past due, no contact yet → Day 38: Controller sends reminder email: "Hi [contact], just checking in on Invoice #[N] for $12,325 — it was due [date]. Please let me know if there are any questions or if a different contact should receive invoices. Thank you." Customer responds within 24 hours: "Sorry — this ended up in our AP manager's junk folder. Processing it today." Payment received Day 43. Total collection period: 43 days from invoice date. DSO impact: 8 days extra — within acceptable range; root cause identified and fixed (add AP manager to distribution list for future invoices)
2. **Edge case:** Column6 advertiser — $28,500 invoice 72 days past due; customer says "we're disputing the impression count" → Root cause: billing dispute, not cash flow; Dr. Lewis pulls the delivery report vs. the customer's reporting discrepancy data; if the discrepancy is legitimate (>5%), Column6's ad ops team re-pulls logs and a credit memo is issued for the agreed discrepancy; if the impression count is confirmed correct, Dr. Lewis provides the ad server log to the customer with an explanation; customer either agrees and pays, or disputes further; at 90 days with an unresolved dispute, Dr. Lewis and the Column6 CEO decide: credit memo to close the relationship cleanly, or escalate to legal to enforce the insertion order; Matt Mathison is briefed given the $28,500 amount
3. **Adversarial:** Controller recommends a $7,200 write-off for an Allevio employer group that never paid → Dr. Lewis reviews the collection history before approving; was the employer group contacted consistently per the aging schedule? Was a payment plan offered? Was a formal demand notice sent? If the collection process was followed and the employer group is genuinely unresponsive (dissolved, bankrupt, or in dispute), Dr. Lewis prepares the write-off recommendation for CEO + Matt Mathison approval; if the collection process was not followed (no contact until Day 90), Dr. Lewis returns it to the controller: "Let's make three more contact attempts with a formal demand notice before we write this off." Write-off approval is not automatic regardless of age

## Audit Log
All collection contacts retained with timestamps (email and phone log). Payment plan agreements retained permanently. Write-off approvals retained permanently with collection history. Legal escalation records retained permanently. DSO weekly reports retained.

## Deprecation
Retire when each portfolio company has a controller or AR specialist who owns the collections process — with Dr. Lewis reviewing the monthly DSO trend and approving all write-offs, and Matt Mathison notified of all write-offs >$5K.
