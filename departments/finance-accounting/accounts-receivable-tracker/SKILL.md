---
name: accounts-receivable-tracker
description: "Track and manage accounts receivable and collections. Use when the user says 'accounts receivable', 'AR aging', 'collections', 'past due invoices', 'clients who haven't paid', 'collect on invoices', 'AR report', 'overdue accounts', 'DSO', 'days sales outstanding', 'chase payments', 'outstanding invoices', or 'AR management'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--focus <aging-report|collection-action|dso-analysis>] [--period <current|monthly>]"
---

# Accounts Receivable Tracker

Track, analyze, and drive collection of accounts receivable — money that customers owe but haven't yet paid. AR management directly affects cash flow: strong AR collection turns revenue into cash quickly; weak AR collection creates a growing pile of money that's been earned on paper but isn't in the bank. For MBL portfolio companies, every dollar >60 days past due is a collection risk that must be actively managed.

## When to Use
- Weekly or monthly — review AR aging and identify collection priorities
- A client hasn't paid in 45+ days and the collection status needs to be escalated
- Matt Mathison asks "what do our clients owe us?" or "are we having collection problems?"
- Month-end close — AR aging must be reviewed and reconciled
- A portfolio company CEO says "we're having a cash flow problem" — AR is often the source
- Building a collections process for a new portfolio company

## AR Management Standards

```
AR Aging categories:
  Current (0-30 days): Normal — track but no action yet
  31-60 days: Follow up — send reminder, verify invoice was received
  61-90 days: Collection action — direct contact with client decision-maker
  90+ days: Escalation — CEO-to-CEO if needed; evaluate bad debt reserve

DSO (Days Sales Outstanding) target:
  MBL standard: DSO should track near invoice terms
  Net 30 invoices → DSO target: 35-40 days
  Net 15 invoices → DSO target: 18-22 days
  DSO >60 days for a Net 30 business = collection problem

Bad debt reserve:
  >90 days past due: Reserve 25% of balance
  >120 days past due: Reserve 50% of balance
  >180 days past due: Reserve 100% of balance; evaluate write-off
```

## Output Format

```markdown
# AR Report — <Company Name>
**As of:** <Date>
**Prepared by:** Dr. John Lewis | **System:** QuickBooks

---

## AR Summary

| Aging Bucket | Balance | # Accounts | % of Total | Action |
|-------------|---------|-----------|-----------|--------|
| **Current (0-30 days)** | **$[X]** | [N] | [X%] | Monitor |
| **31-60 days** | **$[X]** | [N] | [X%] | Send reminder |
| **61-90 days** | **$[X]** | [N] | [X%] | Collection call |
| **91-120 days** | **$[X]** | [N] | [X%] | Escalation |
| **120+ days** | **$[X]** | [N] | [X%] | Bad debt risk |
| **Total AR** | **$[X]** | **[N]** | **100%** | |

**DSO (current):** [N] days | **Target DSO:** [N] days | **Status:** 🟢/🟡/🔴

---

## AR by Client

| Client | Invoice # | Invoice date | Due date | Balance | Days past due | Status | Last contact |
|--------|----------|------------|---------|---------|--------------|--------|-------------|
| [Client 1] | [#] | [Date] | [Date] | $[X] | [N] | Current / 🟡 Reminder / 🔴 Collection | [Date] |
| [Client 2] | | | | | | | |
| **Total** | | | | **$[X]** | | | |

---

## Collection Action Plan

### 🟡 31-60 Days — Reminder Required

| Client | Balance | Action | Owner | Due by |
|--------|---------|--------|-------|--------|
| [Client] | $[X] | Email reminder: "Friendly follow-up on invoice [#] — due [date]; amount $[X]. Please confirm receipt and expected payment date." | Dr. Lewis / Controller | [Date] |

### 🔴 61-90 Days — Collection Call Required

| Client | Balance | History | Action | Owner | Due by |
|--------|---------|---------|--------|-------|--------|
| [Client] | $[X] | [Previous reminders sent on [dates]] | Direct phone call to [Contact name / title] | CEO / Dr. Lewis | [Date] |

**Collection call script:**
"[Contact name], this is [caller] from [Company]. I'm following up on invoice [#] in the amount of $[X], which was due [N] days ago. Can you confirm when we can expect payment? If there's an issue with the invoice, I'd like to resolve it today."

### 🚨 90+ Days — Escalation

| Client | Balance | Action | Escalation path | Decision needed |
|--------|---------|--------|----------------|----------------|
| [Client] | $[X] | CEO-to-CEO call / formal collection notice | Matt Mathison or portfolio company CEO calls client CEO | Write-off? Payment plan? Legal? |

---

## DSO Trend

| Month | Revenue | Ending AR | DSO |
|-------|---------|----------|-----|
| [Month-3] | $[X] | $[X] | [N] days |
| [Month-2] | $[X] | $[X] | [N] days |
| [Month-1] | $[X] | $[X] | [N] days |
| **[Current]** | **$[X]** | **$[X]** | **[N] days** |

**DSO trend:** [Improving / Stable / Worsening — and why]

---

## Bad Debt Reserve

| Client | Balance | Days past due | Reserve % | Reserve amount |
|--------|---------|--------------|----------|---------------|
| [Client] | $[X] | [N] days | [25/50/100%] | $[X] |
| **Total bad debt reserve** | | | | **$[X]** |

---

## Matt Mathison Flag

AR status — [Company] as of [Date]: Total AR $[X]; DSO [N] days (target [N] days — 🟢/🟡/🔴). [Largest at-risk balance: [Client] $[X] — [N] days past due — [action underway / escalation needed]]. Decision needed: [Specific — authorize write-off / CEO-to-CEO call / hire collection agency] or "No decision needed — Dr. Lewis managing collections."
```

## Output Contract
- AR aging always current as of today — AR reports run on stale data are misleading; the aging report must reflect payments received through today; run from QuickBooks, not from a spreadsheet that was last updated days ago
- Every 61-90 day balance gets a collection call, no exceptions — sending emails to accounts that are 61+ days past due is insufficient; at this aging, a direct phone call is required; email is for the 31-60 day reminder
- Bad debt reserve must be recognized per aging schedule — the reserve schedule (25%/50%/100%) is not optional; if management decides not to reserve when accounts are >90 days, this is a financial statement accuracy issue; flag to the CPA
- Write-off requires Matt Mathison approval — any AR balance written off as uncollectible must be approved by Matt Mathison and documented; write-offs affect the income statement (bad debt expense) and must be accounted for correctly; do not write off AR without authorization
- HITL required: Dr. Lewis manages the AR review and reminder process; CEO or designated account owner handles 61-90 day calls; CEO-to-CEO calls for 90+ day escalations; Matt Mathison approves write-offs and escalates to legal or collections agencies if needed

## System Dependencies
- **Reads from:** QuickBooks (AR aging, invoice history), CRM (client contact information), billing records
- **Writes to:** AR report (SharePoint/Finance/AR/); collection notes in QuickBooks; bad debt reserve in financial statements
- **HITL Required:** Dr. Lewis manages process; CEO handles senior collection calls; Matt Mathison approves write-offs >$1K; legal or collections agency referral requires Matt Mathison

## Test Cases
1. **Golden path:** Allevio AR review June 2026 → Total AR: $287K; Current: $198K (12 practices, all invoiced May 31, not yet due); 31-60 days: $48K (3 practices — invoices sent April 30; sent email reminders June 2; 2 confirmed payment coming, 1 no response yet); 61-90 days: $29K (2 practices — invoiced March 31; Dr. Lewis called both June 3; Practice A says "payment processing — expect by June 15"; Practice B says they're waiting for a credit — investigating billing dispute); 90+: $12K (1 practice — invoiced February 28 — escalated to CEO; bad debt reserve: $3K (25%); DSO: 38 days (target 35 — 🟡 slightly elevated due to the credit dispute); action plan: resolve Practice B credit dispute by June 12; CEO to call Practice 90+ by June 14; Matt Mathison flag: "1 account at $12K / 106 days past due — CEO call scheduled June 14; considering write-off reserve increase to 50% if not collected by June 30"
2. **Edge case:** A client says they're disputing an invoice because the service wasn't delivered as described → stop collection on the disputed amount; investigate: did the service get delivered as agreed? Review the contract and the service delivery documentation; if the dispute is valid, issue a credit memo; if the dispute is not valid, prepare a written response with documentation and re-present the invoice; never write off a disputed invoice without investigating; collection activity on a legitimate dispute escalates the relationship problem; flag all disputed invoices to the CEO and Matt Mathison
3. **Adversarial:** A portfolio company CEO says "we never chase clients — it damages the relationship" → respond with data: "Our AR aging shows $[X] in invoices more than 60 days past due from [N] clients. Cash is $[X] — [N] months of runway. If we don't collect this, we're essentially providing [N]-day free financing to clients who haven't asked for it. A professional, respectful follow-up at 31 days and a direct call at 60 days is not relationship damage — it's business management. Companies that don't follow up on invoices train their clients not to pay on time."

## Audit Log
AR aging reports retained monthly. Collection activity documented by client (call dates, outcomes, commitments). Write-offs retained permanently with Matt Mathison approval. Bad debt reserve changes documented. DSO trends retained for operational review.

## Deprecation
Retire when portfolio companies have dedicated accounting staff with automated AR collection workflows (automated invoice reminders, escalation triggers, CRM-integrated collection notes) that manage the AR process without Dr. Lewis's direct involvement.
