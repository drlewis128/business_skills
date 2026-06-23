---
name: revops-commission-admin
description: "Administer sales commission plans and calculations for MBL Partners portfolio entities. Use when the user says 'commission', 'sales commission', 'commission plan', 'commission calculation', 'commission payment', 'commission dispute', 'commission structure', 'commission admin', 'commission tracking', 'how much commission do I earn', 'what is the commission rate', 'commission on this deal', 'pay commission', 'commission check', 'rep earnings', 'commission payout', 'commission clawback', 'commission recovery', 'commission on renewal', 'expansion commission', 'accelerator commission', 'commission plan document', 'commission schedule', 'commission for new hire', 'commission plan review', 'what did I earn', 'commission audit', or 'commission reconciliation'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--rep <name>] [--period <monthly|quarterly>] [--action <calculate|review|dispute|pay>]"
---

# RevOps Commission Admin

Administer sales commission plans for MBL Partners portfolio entities — maintaining commission plan documents, calculating monthly commission accurately, processing payments through QuickBooks, and resolving disputes with a documented process. Commission errors erode trust faster than almost any other management failure; accuracy and transparency are non-negotiable.

## When to Use
- Monthly commission calculation and payment processing
- New rep onboarding — reviewing and signing commission plan
- Commission dispute resolution
- Annual commission plan review and redesign

## Commission Admin Framework

```
COMMISSION PLAN STRUCTURE BY ENTITY:

  ALLEVIO:
    New employer logo: [X]% of first-year ACV (paid at contract execution; before clawback period)
    Renewal: [X]% of renewal ACV (paid at renewal execution)
    Expansion (additional employees or services): [X]% of incremental ACV
    Accelerators:
      100-124% quota attainment: 1.25× on all commission above 100%
      125%+ attainment: 1.50× on all commission above 125%
    Clawback: if employer churns within 90 days of contract execution — 50% commission clawback
    Commission paid: monthly; 15th of the following month (e.g., April commission paid May 15)
    
  COLUMN6:
    New agency IO: [X]% of IO value (paid at IO signature; invoiced to client)
    Renewal IO: [X]% of renewal IO value
    Accelerators: same as Allevio structure
    No clawback (IO is a discrete campaign; once signed, commission earned)
    Commission paid: monthly; 15th of the following month
    
  COMMISSION PLAN DOCUMENT STANDARDS:
    Document: "Sales Commission Plan — [Entity] — [Rep Name] — [Year]"
    Location: SharePoint → [Entity] → HR → Commission Plans → [Year] → [Rep Name]
    Signed: rep signature + entity CEO signature + Dr. Lewis signature before first commission payment
    Changes: no mid-year changes to base commission rate without rep agreement and Dr. Lewis approval
    Accelerators: may be updated for a new quota year with 30 days advance notice
    
  MONTHLY COMMISSION CALCULATION:
    Step 1: Pull Closed Won deals from GoHighLevel for the period (contract date within payment month)
    Step 2: Verify deal value against signed contract (GoHighLevel deal value must match contract)
    Step 3: Apply commission rate per deal type (new / renewal / expansion)
    Step 4: Apply accelerator if applicable (YTD attainment % calculated)
    Step 5: Apply clawback deductions from prior periods if triggered
    Step 6: Summarize total commission owed; entity CEO reviews and approves
    Step 7: Dr. Lewis reviews; QuickBooks payment initiated for entity CEO authorization
    
  COMMISSION DISPUTE PROCESS:
    Step 1: Rep submits written dispute within 5 business days of commission statement delivery
    Step 2: Dr. Lewis reviews GoHighLevel records vs. commission calculation within 48 hours
    Step 3: If error confirmed: corrected payment within 5 business days
    Step 4: If no error: Dr. Lewis provides written explanation of calculation; entity CEO final word
    Step 5: All disputes logged (prevents pattern disputes and provides records)
    
  CLAWBACK TRACKING:
    Trigger: GoHighLevel flags employer as "Churned — within 90 days" by entity sales lead
    Amount: 50% of commission paid on the churned contract
    Process: deducted from next month's commission; rep notified before calculation
    Dispute: same process as commission dispute; Dr. Lewis reviews churn determination
```

## Output Format

```markdown
# Commission Statement — [Entity] — [Rep Name] — [Month/Year]
**Prepared by:** RevOps | **Reviewed by:** Entity CEO + Dr. Lewis | **Payment date:** 15th of following month

---

## Deals Closed (Commission Basis)

| Deal | Type | ACV | Commission Rate | Commission Earned |
|------|------|-----|----------------|-----------------|
| [Employer / Agency] | New Logo | $X | X% | $X |
| [Employer / Agency] | Renewal | $X | X% | $X |

---

## YTD Attainment

| Metric | Value |
|--------|-------|
| YTD closed (quota basis) | $X |
| Full-year quota | $X |
| YTD attainment % | X% |
| Accelerator tier | [Standard / 1.25× / 1.50×] |

---

## Accelerator Adjustment
[If applicable: base commission $X + accelerator increment $X = adjusted commission $X]

---

## Clawback Deductions
[If applicable: [Employer] churned — 50% of $X commission = -$X]

---

## **Total Commission This Month: $X**

---

## Payment Authorization
- [ ] Entity CEO approval
- [ ] Dr. Lewis approval
- [ ] QuickBooks payment initiated
```

## Output Contract
- Commission accuracy is a trust issue before it is a math issue — a rep who receives an incorrect commission statement (whether too high or too low) loses confidence in the system; if it's too high and the error is caught later, a clawback conversation destroys trust; if it's too low and the rep has to fight for money they earned, it signals they are not valued; Dr. Lewis requires a two-step verification (GoHighLevel deal records vs. signed contract) before any commission statement is finalized; the entity CEO reviews and signs off before the statement is delivered to the rep; errors get caught before delivery, not after
- The signed commission plan document is the contract — a verbal agreement about commission rates is not a commission plan; before any rep works a deal in any MBL entity, a signed commission plan is on file with the entity CEO and Dr. Lewis signatures; "we agreed verbally to X%" is not an acceptable answer to a commission dispute; the answer is in the signed document; if there is no signed document, the commission dispute is escalated to Dr. Lewis and resolved based on whatever written evidence exists (emails, offer letter, etc.) before any payment is made
- HITL required: monthly commission statement → entity CEO approves before delivery to rep; commission payment → Dr. Lewis reviews before QuickBooks processing; commission plan document (new or revised) → Dr. Lewis + entity CEO + rep sign before effective date; clawback determination → Dr. Lewis reviews churn determination before deducting; commission dispute → Dr. Lewis 48-hour review; commission plan design changes → entity CEO + Dr. Lewis

## System Dependencies
- **Reads from:** GoHighLevel (Closed Won deals; contract dates; deal values; churn flags); signed contract files (SharePoint → [Entity] → Legal → Contracts → [Year]); revops-quota-design-model (quota level; accelerator thresholds); QuickBooks (payment processing; prior commission payment records)
- **Writes to:** Commission statements (SharePoint → [Entity] → HR → Commission Plans → [Year] → [Rep Name] → Statements); QuickBooks (commission payment entry — entity CEO authorizes); GoHighLevel (clawback flags on churned deals); commission dispute log; Dr. Lewis commission review records
- **HITL Required:** Commission statement → entity CEO approves; payment → Dr. Lewis before QuickBooks; new commission plan → entity CEO + Dr. Lewis + rep sign; clawback → Dr. Lewis reviews; dispute → Dr. Lewis 48hrs

## Test Cases
1. **Golden path:** Allevio April commission calculation. AE closed 2 new employer logos: $32K ACV and $18K ACV. 1 renewal: $24K ACV. New logo commission rate: 8% = $3,200 + $1,440 = $4,640. Renewal commission rate: 4% = $960. Subtotal: $5,600. YTD attainment: $86K closed / $280K quota = 30.7% (no accelerator — below 100%). No clawbacks. Total commission: $5,600. Entity CEO reviews against GoHighLevel records and signed contracts: verified. Dr. Lewis reviews: confirmed. Commission statement delivered to rep May 1. Payment processed in QuickBooks May 15.
2. **Edge case:** AE closes a deal on March 31 (last day of Q1) but the contract isn't counter-signed by the employer until April 2 → Dr. Lewis: "Commission is earned on contract execution — the date both parties have signed. If the employer counter-signed April 2, this is an April close, not a March close. The rep may be disappointed if they were trying to hit a March accelerator, but the contract date is the contract date. Going forward: reps who are working to close deals before period-end should flag pending contracts to the entity CEO no later than 3 business days before period-end so we can monitor and expedite counter-signature if possible. We cannot retroactively change contract dates."
3. **Adversarial:** Rep claims they are owed commission on a deal that was closed by a colleague after the original rep left the company → Dr. Lewis: "Commission follows the deal owner at time of close, not the person who originated the deal. The question is: who was the assigned deal owner in GoHighLevel at the time the contract was signed? If it was the departing rep, and they left after contract signature, they earned that commission — I'll process it to their final payment. If the deal was reassigned to a new rep before contract signature, the new rep earned it. I'll pull the GoHighLevel ownership history, which is timestamped. That record is definitive."

## Audit Log
All commission statements retained permanently. Entity CEO approval records per statement. Dr. Lewis review records per payment. QuickBooks payment records. Signed commission plan documents (permanent). Commission dispute records with resolution. Clawback records with trigger documentation.

## Deprecation
Commission rates reviewed annually (Q4 for next year). Accelerator thresholds reviewed when quota changes. Clawback period reviewed when entity churn patterns change. Commission plan format reviewed when entity structure or rep types change.
