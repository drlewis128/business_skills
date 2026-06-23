---
name: finance-collections-manager
description: "Manage collections on overdue accounts receivable for MBL Partners portfolio entities. Use when the user says 'collections', 'debt collections', 'collect overdue payment', 'overdue account', 'past due account', 'delinquent account', 'AR collections', 'account is overdue', 'they haven't paid', 'client hasn't paid', 'employer hasn't paid', 'agency hasn't paid', '90 days past due', '60 days past due', '120 days past due', 'collections call', 'collections letter', 'demand letter', 'send to collections', 'collections agency', 'write off this debt', 'bad debt', 'bad debt write-off', 'uncollectable receivable', 'collection escalation', 'legal collections', 'attorney collections', 'sue for payment', 'collections dispute', 'payment plan', 'payment arrangement', 'settle overdue invoice', 'bad debt reserve', 'allowance for doubtful accounts', or 'receivable write-off'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--account <name>] [--amount <balance>] [--days-overdue <60|90|120>] [--action <escalate|payment-plan|write-off|legal>]"
---

# Finance Collections Manager

Manage collections on overdue accounts receivable for MBL Partners portfolio entities — executing the collections escalation protocol from 60-day relationship calls through 90-day formal demands to write-off or legal referral decisions. Collections is the last line of defense for revenue that was earned; the goal is always to collect rather than write off, while protecting the entity's client relationships.

## When to Use
- Any account that has crossed 60 days past due
- Evaluating a payment plan request from an employer or agency
- Making the write-off or legal referral decision on a 90+ day account
- Quarterly bad debt reserve calculation

## Collections Framework

```
COLLECTIONS ESCALATION PROTOCOL:

  DAY 31-45 (Early — handled by AR Manager):
    Primary: entity CEO or CS lead email (friendly; "wanted to check in on invoice X")
    Tone: relationship-first; assume it's an oversight
    Goal: get payment in next 5-7 days or understand if there's an issue
    
  DAY 46-60:
    Primary: entity CEO phone call or email 2 ("following up on my email from [date]")
    Tone: still relationship-forward; begin to note that payment is important
    Goal: payment commitment with specific date OR identification of dispute/issue
    
  DAY 61-90 (COLLECTIONS MANAGER ENGAGED):
    Action 1 (Day 61): Dr. Lewis + entity CEO review the account
      What is the client relationship status? Are they still receiving services?
      Is there a legitimate dispute? If yes → dispute resolution process, not collections
      Is this a cash flow issue? If yes → payment plan consideration
    Action 2 (Day 65-70): Formal written notice (email; saved to record)
      "Invoice X for $Y is now [N] days past due. Please remit payment by [Date] or contact us
       to discuss your account."
    Action 3 (Day 80): Entity CEO direct phone call to decision-maker
      Not to HR/accounts payable — to the CEO or CFO of the employer/agency
      Goal: get a decision, not a promise
      
  DAY 90+ (ESCALATION DECISION):
    Option A — Payment plan: if client is willing but can't pay in full
      Terms: Dr. Lewis + entity CEO agree; no more than 60-day payment plan for <$25K
      Documentation: written payment plan agreement signed by client
      Monitoring: Dr. Lewis tracks payment plan compliance in QuickBooks
      
    Option B — Collections agency referral: if client is unresponsive or unwilling
      Threshold: accounts >$5K that are 90+ days with no response
      Process: entity CEO approves referral; Dr. Lewis selects agency; entity typically receives 50-70% of face value
      
    Option C — Write-off: if uncollectable
      Threshold: entity CEO + Dr. Lewis agree; <$10K write-off
      >$10K write-off: entity CEO + Dr. Lewis + Matt Mathison notification
      QuickBooks: write off AR; recognize bad debt expense; remove from AR aging
      Tax: write-off may be deductible (CPA confirms)
      
    Option D — Legal: contract enforcement
      Threshold: >$20K with documented non-payment; Dr. Lewis + entity CEO + Matt Mathison
      Process: entity attorney issues demand letter; then civil collections if needed
      Cost-benefit: legal fees typically $2,500-$5,000 minimum; only viable for larger amounts
      
BAD DEBT RESERVE:
  Calculated quarterly: estimated uncollectable AR based on aging profile
  Formula: 0% (0-30 days) + 5% (31-60 days) + 20% (61-90 days) + 50% (90+ days)
  QuickBooks: allowance for doubtful accounts; reduces net AR on balance sheet
  
ALLEVIO NOTE:
  Collections conversations with employers = billing discussions only
  No mention of individual employees; no health utilization discussion
  If employer asks about specific employee's coverage as reason to dispute → refer to CS lead
  CS lead handles enrollment verification (aggregate); HIPAA boundary maintained in all collections calls
  
COLUMN6 NOTE:
  Agency collections: be careful with relationship — agencies talk to each other; a collections action
  can damage Column6's reputation with the broader agency community; Dr. Lewis + entity CEO
  consider relationship impact before escalating beyond day 75 formal notice
```

## Output Format

```markdown
# Collections Report — [Entity] — [Date]
**Prepared by:** Dr. Lewis

---

## Accounts in Collections

| Account | Balance | Days Overdue | Status | Next Action | Due |
|---------|---------|-------------|--------|------------|-----|
| [Employer/Agency] | $X | 68 | Day 65 notice sent | CEO phone call | [Date] |
| [Employer/Agency] | $X | 94 | Payment plan offered | Monitoring payments | Monthly |

---

## Write-off / Referral Decisions Pending

| Account | Balance | Recommendation | Approval Needed |
|---------|---------|---------------|----------------|
| [Employer] | $X | Write-off (uncollectable) | Entity CEO + Dr. Lewis |

---

## Bad Debt Reserve (Quarterly)

| Aging Bucket | AR Balance | Reserve % | Reserve Amount |
|-------------|---------|---------|--------------|
| 31-60 days | $X | 5% | $X |
| 61-90 days | $X | 20% | $X |
| 90+ days | $X | 50% | $X |
| **Total reserve** | | | **$X** |
```

## Output Contract
- Collections is relationship management at the intersection of finance — the entity CEO is always the primary relationship owner for Allevio employers and Column6 agencies; Dr. Lewis manages the process and documentation, but the phone calls to a 90-day past-due employer go from the Allevio CEO, not from Dr. Lewis; this preserves the relationship while applying appropriate pressure; Dr. Lewis provides the entity CEO with the exact context they need before each collections call (invoice date; amount; all prior contacts; any notes on what the client said); the entity CEO makes the call prepared
- The write-off decision is financial truth-telling — when a receivable is uncollectable, carrying it on the balance sheet as if it will be collected overstates the company's financial position; Dr. Lewis recommends write-offs promptly when the evidence is clear (90+ days; unresponsive; no realistic path to collection); a clean balance sheet with an accurate bad debt reserve is more useful to Matt Mathison than a bloated AR that includes accounts that will never pay; the write-off is not a failure — it is closing the books on a specific outcome
- HITL required: day 61 → Dr. Lewis + entity CEO review; formal written notice → entity CEO approves language; day 80 CEO phone call → entity CEO makes the call; payment plan → entity CEO + Dr. Lewis agree on terms; collections agency referral → entity CEO approves; write-off <$10K → entity CEO + Dr. Lewis; write-off >$10K → Matt Mathison notification; legal referral >$20K → entity CEO + Dr. Lewis + Matt Mathison; Allevio collections → HIPAA boundary maintained

## System Dependencies
- **Reads from:** QuickBooks (AR aging; invoice details; payment history; collections notes); finance-ar-manager (AR management baseline and escalation trigger); entity CEO collections call notes; collections agency references (if applicable)
- **Writes to:** QuickBooks (collections notes; payment plan tracking; write-off entries; bad debt reserve adjustments); collections action records; payment plan agreements (SharePoint → [Entity] → Finance → Collections → [Account]); Matt Mathison write-off notification records; legal referral records
- **HITL Required:** Day 61 → entity CEO + Dr. Lewis; formal notice → entity CEO; day 80 call → entity CEO; payment plan → entity CEO + Dr. Lewis; agency referral → entity CEO; write-off <$10K → entity CEO + Dr. Lewis; >$10K → Matt Mathison; legal → entity CEO + Dr. Lewis + Matt Mathison; Allevio HIPAA boundary

## Test Cases
1. **Golden path:** Allevio employer ($8,200 outstanding; 74 days past due). Day 31: CS lead email (friendly check-in; no response). Day 46: entity CEO email 2 (still no response). Day 61: Dr. Lewis + entity CEO review — employer still receiving services; no dispute on record; likely cash flow issue. Day 65: formal written notice sent ("Invoice X for $8,200 is now 74 days past due. Please remit payment by [Date+10] or contact us."). Day 67: employer calls back — "we had a rough month; can we pay half now and half in 30 days?" Entity CEO + Dr. Lewis agree: $4,100 now; $4,100 in 30 days (written payment plan). Payment received Day 68. Payment 2 received Day 98. Account cleared. Relationship maintained.
2. **Edge case:** Column6 agency has $28,500 outstanding at 97 days; was responsive to earlier outreach but now unresponsive → Dr. Lewis: "At $28,500 and 97 days, we're past the relationship-management phase and into the formal collections decision. Options: (1) collections agency — they'll pursue ~60-70 cents on the dollar; net to Column6: ~$17-20K; relationship likely damaged; (2) attorney demand letter — $2,500-3,000 in fees; may prompt payment in full; relationship damaged; (3) write-off (not recommended at this size). My recommendation: have entity CEO make one final phone call to the agency CEO personally (not AP contact) — "I've been asked to escalate this." If no response or payment commitment within 7 days, attorney demand letter. Matt Mathison is notified of this account at this stage. Entity CEO agrees; makes the call."
3. **Adversarial:** Entity CEO wants to write off a $38K outstanding invoice from an Allevio employer without going to collections or legal because "the relationship is too important" → Dr. Lewis: "I understand protecting the relationship — and I want to support that. But $38K is a significant write-off, and before I process it, I need Matt Mathison informed (our threshold is >$10K). I also want to understand: is this employer still receiving Allevio services? If yes, we're providing ongoing services to a client who owes us $38K — that's a continuation decision, not just a write-off decision. If no, the relationship may be over regardless. What I'd like to do: (1) brief Matt Mathison on this specific situation; (2) confirm entity CEO wants to write-off rather than pursue a reduced settlement (sometimes a client will pay $20K to settle a $38K debt and avoid collections); (3) process the write-off if Matt Mathison concurs. I'm not blocking the write-off — I'm making sure the decision is made with full information."

## Audit Log
Collections action records (all contacts; dates; outcomes). Formal written notice records. Payment plan agreements. Write-off records with entity CEO + Dr. Lewis approval. Matt Mathison notification records (>$10K write-offs). Legal referral records. Bad debt reserve calculations (quarterly). Collections agency referral records. HIPAA boundary maintenance records (Allevio).

## Deprecation
Collections escalation timeline reviewed annually. Threshold amounts reviewed when entity scale changes. Bad debt reserve percentages reviewed when collections history matures. Allevio HIPAA collections protocol reviewed when regulations change. Agency referral process reviewed when entity relationship norms change.
