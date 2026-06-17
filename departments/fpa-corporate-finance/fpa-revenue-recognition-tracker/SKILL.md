---
name: fpa-revenue-recognition-tracker
description: "Track and enforce revenue recognition policies for portfolio companies. Use when the user says 'revenue recognition', 'recognize revenue', 'when to recognize revenue', 'ASC 606', 'revenue policy', 'deferred revenue', 'earned revenue', 'revenue timing', 'recognize the contract', 'revenue schedule', 'performance obligation', 'contract revenue', 'subscription revenue recognition', 'milestone revenue', 'campaign revenue recognition', 'PMPM revenue', 'oil revenue recognition', 'when is revenue earned', 'revenue cutoff', or 'revenue recognition policy'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--contract-type <pmpm|campaign|production|subscription>] [--period <YYYY-MM>] [--action <review|apply|audit>]"
---

# Revenue Recognition Tracker

Track and enforce revenue recognition policies for MBL portfolio companies — ensuring revenue is recognized when earned (not when cash is received) in accordance with ASC 606 and MBL's policies. Revenue recognition errors are among the most common financial reporting problems and are taken seriously by auditors, banks, and PE buyers at exit. Recognizing revenue too early inflates current EBITDA; recognizing revenue too late understates it. Dr. Lewis reviews the revenue recognition policy for each portfolio company, enforces the correct timing in the monthly close, and documents any deviations.

## When to Use
- Monthly close — confirm revenue recognition is applied correctly before financial statements are finalized
- A new contract type is signed — determine the correct recognition method before the first invoice
- Pre-audit — ensure revenue recognition is consistent with policy and audit-ready
- Exit preparation — buyers scrutinize revenue recognition; Dr. Lewis prepares the policy documentation
- A question arises about when a specific piece of revenue should be recognized

## Revenue Recognition Framework (ASC 606 — 5-Step Model)

```
ASC 606 five-step framework:

  Step 1 — IDENTIFY THE CONTRACT:
    Is there a written contract? (verbal or implied contracts also qualify but are harder to document)
    Are the rights and payment terms clearly defined?
    Is collection probable? (if not probable, don't recognize revenue)
    
  Step 2 — IDENTIFY PERFORMANCE OBLIGATIONS:
    What does MBL (or the portfolio company) promise to deliver?
    Each distinct promise = a separate performance obligation
    Distinct = the customer can benefit from it separately and it's separately identifiable in the contract
    
  Step 3 — DETERMINE THE TRANSACTION PRICE:
    Fixed price: Easy — use the contract amount
    Variable consideration (discounts, bonuses, refunds): Estimate the expected value or most likely amount
    Constraint: Don't recognize variable consideration that is highly uncertain
    
  Step 4 — ALLOCATE THE TRANSACTION PRICE:
    If there are multiple performance obligations, allocate the price based on standalone selling prices
    
  Step 5 — RECOGNIZE REVENUE WHEN/AS PERFORMANCE OBLIGATIONS ARE SATISFIED:
    Over time (ratably): When performance is continuous (subscription, membership, recurring service)
    At a point in time: When a specific deliverable is transferred (project completion, campaign delivery)
    
Revenue recognition rules by portfolio company:

  ALLEVIO — MSO / Healthcare PMPM model:
    Contract type: Employer group subscription — per-member-per-month for primary care services
    Performance obligation: Providing primary care services to enrolled members each month
    Revenue recognition: RATABLY over each month — recognize 1/12 of the annual PMPM contract per month
    Formula: Member count (at month end) × PMPM rate ÷ 1 = monthly revenue (already monthly basis)
    Timing: Revenue earned in the month the service is available to members, regardless of when invoiced
    Variable consideration: Member count fluctuates; recognize actual members served per month
    Pre-payments: If employer group pays the full year in advance:
      Cash receipt: DR Cash / CR Deferred Revenue (full year amount)
      Monthly recognition: DR Deferred Revenue / CR Revenue (1/12 per month)
    Payer/insurance billings: Recognize when services rendered; use expected collections rate (not gross charges)
      If actual collections differ from estimate: adjust in the period of determination (not retroactively)
      
  HIVE PARTNERS — O&G Production:
    Contract type: Oil sale agreements — WTI-linked price per BOE produced and sold
    Performance obligation: Deliver oil at the specified delivery point
    Revenue recognition: AT A POINT IN TIME — when title transfers (at the wellhead or pipeline delivery point)
    Timing: Recognize revenue in the month the oil is lifted/sold, not when cash is received (the 60-day lag is timing, not recognition)
    Formula: BOE sold in month × (WTI price − differentials) = revenue for the month
    Take-or-pay: If a buyer is obligated to take or pay for a minimum volume, recognize the minimum
    LOE reimbursements: Recognize as revenue when the operator provides the statement
    
  COLUMN6 / SIPROCAL — CTV / Programmatic Advertising:
    Contract type: Campaign advertising agreements — CPM-based, impression delivery
    Performance obligation: Deliver a specified number of impressions or a campaign performance metric
    Revenue recognition: OVER TIME as impressions are delivered
    Formula: Impressions delivered ÷ Total contracted impressions × Campaign revenue = Revenue recognized
    100% recognized when campaign is complete (all impressions delivered)
    If campaign is cancelled mid-flight: Recognize revenue for impressions delivered; return remainder
    Pre-paid campaigns (advertiser pays upfront):
      Cash receipt: DR Cash / CR Deferred Revenue
      As impressions deliver: DR Deferred Revenue / CR Revenue
    Agency commission: Revenue is reported NET of agency commission (don't gross up for agency pass-through)
    
  COMMON RECOGNITION ERRORS TO FLAG:
    1. Recognizing cash-basis (recognizing revenue when cash arrives, not when earned): WRONG — accrual basis required
    2. Front-loading annual contracts: Recognizing the full year in Month 1: WRONG — recognize ratably
    3. Recognizing pre-paid deposits as revenue: WRONG — deferred revenue until earned
    4. Gross reporting of pass-through costs (like media buy): WRONG — recognize Column6's net take
    5. Backdating revenue to meet targets: WRONG — always recognize in the period earned
```

## Output Format

```markdown
# Revenue Recognition Review — [Entity] | [Month YYYY]
**Prepared by:** Dr. Lewis | **Review date:** [Date]

---

## Revenue Recognition Summary

| Revenue Type | Earned This Month | Deferred (Not Yet Earned) | Basis |
|-------------|------------------|--------------------------|-------|
| [PMPM — Employer groups] | $[X]K ([N] members × $[X] PMPM) | $[X]K (pre-paid Q3) | Ratable monthly |
| [HIVE oil sales] | $[X]K ([N] BOE × $[X] realized) | — | At point of delivery |
| [Column6 — CTV campaigns] | $[X]K ([N]M impressions of [N]M delivered) | $[X]K (pre-paid campaign, undelivered) | As impressions delivered |
| **Total recognized** | **$[X]K** | **$[X]K deferred** | |

---

## Deferred Revenue Schedule

| Contract | Total Contract Value | Recognized YTD | Remaining Deferred | Expected Recognition |
|---------|---------------------|---------------|--------------------|---------------------|
| [Employer Group X — FY annual] | $[X]K | $[X]K | $[X]K | $[X]K/month through [Month] |
| [Column6 — Campaign Y, pre-paid] | $[X]K | $[X]K | $[X]K | [Month-Month] as impressions deliver |
| **Total** | **$[X]K** | **$[X]K** | **$[X]K** | |

---

## Recognition Issues (if any)

| Issue | Description | Correction | Impact |
|-------|-------------|-----------|--------|
| [If any] | [Description] | [Journal entry or policy clarification] | +/−$[X]K |

**Policy adherence:** [No issues — recognition is consistent with policy / Issues noted above]
```

## Output Contract
- Revenue recognition is non-negotiable — the company's financial statements are the representation to banks, investors, and potential acquirers; misrecognized revenue (whether early or late) is a financial reporting error; for small errors, it's a nuisance to fix; for material errors, it is a restatement event; Dr. Lewis enforces correct revenue recognition in the monthly close and does not allow management pressure to change the timing of recognition for reporting purposes; "we need the number to hit budget this month" is not a valid reason to recognize revenue early
- Document the policy, not just the practice — each portfolio company should have a written revenue recognition policy (1-2 pages) that describes how each revenue type is recognized; in an audit or due diligence, buyers and auditors will ask for the policy; Dr. Lewis ensures the policy is documented and the monthly close practice matches the policy; if the practice diverges from the policy for any reason, Dr. Lewis corrects the practice or updates the policy (with CEO and CPA review) — not the numbers
- Deferred revenue is a liability, not a slush fund — pre-paid contracts create deferred revenue (a balance sheet liability); the deferred revenue must be released to the income statement as the services are delivered, on the correct schedule; Dr. Lewis maintains the deferred revenue schedule and reconciles it monthly; if the deferred revenue balance doesn't tie to the sum of the schedule items, there is a recognition error; this is reconciled before the month-end close is finalized
- HITL required: Dr. Lewis reviews revenue recognition every month-end close; CPA firm reviews annually (audit and tax); any new contract type (different from existing recognition policy) requires CPA consultation before the first recognition; revenue recognition policy changes require CEO and Matt Mathison awareness and CPA approval; Dr. Lewis does not alter revenue recognition timing without documented policy justification reviewed by the CPA

## System Dependencies
- **Reads from:** Executed contracts and SOWs (for each employer group, campaign, production agreement); QuickBooks revenue accounts (actual monthly revenue recorded); Allevio member roster (for PMPM calculation); Column6 ad server (impressions delivered by campaign); HIVE production statements (Covercy — BOE sold by month); Bill.com and bank records (for cash-vs.-earned comparison)
- **Writes to:** QuickBooks revenue and deferred revenue accounts (monthly close entries); deferred revenue schedule (SharePoint/Finance/<Company>/RevenueRecognition/[YYYY]/); monthly financial statements (revenue line and deferred revenue balance sheet); CPA workpapers (annual audit support); exit data room (revenue recognition policy and deferred revenue schedule)
- **HITL Required:** Dr. Lewis reviews and approves all monthly revenue recognition; CPA consults on new contract types; revenue recognition disputes with the CEO resolved by Dr. Lewis with CPA input; any backdating of revenue is a hard stop — requires CEO written request, Dr. Lewis written objection if inappropriate, and CPA consultation before any action

## Test Cases
1. **Golden path:** Allevio adds a new employer group in June — 75 members, $87 PMPM, contract effective July 1 → No revenue is recognized in June (contract not effective); no deferred revenue is created (employer has not pre-paid); July 1: 75 members × $87 = $6,525/month revenue recognized; Dr. Lewis creates the deferred revenue schedule entry: "$6,525/month for 12 months starting July = $78,300 contract value; recognized $6,525/month; no deferred revenue (pay-as-you-go monthly invoicing)"; QuickBooks updated with the new revenue line by employer group; first invoice sent July 5 for July services; revenue recognized in July regardless of when payment arrives (accrual basis)
2. **Edge case:** Column6 receives a $60K pre-paid campaign deposit in June for a campaign that runs August-October → June: DR Cash $60K / CR Deferred Revenue $60K; no revenue in June; August-October: 3 months × ($60K ÷ 3) = $20K/month recognized as impressions deliver; each month: DR Deferred Revenue $20K / CR Revenue $20K; October end: Deferred Revenue = $0 (fully recognized); Dr. Lewis verifies the impression delivery report from the ad server each month to confirm that impressions delivered match the recognition; if August impressions are only 80% of plan (campaign underdelivery), recognize only $16K (80% of $20K) in August; defer $4K to October when makeup impressions are delivered
3. **Adversarial:** The Allevio CEO asks Dr. Lewis to recognize the December revenue from Employer Group X in November "because they verbally committed and we need to make the November EBITDA target" → Dr. Lewis declines: "I can't recognize December services in November — the members haven't received care in November from Group X; the services aren't rendered until December. This would be a revenue acceleration that overstates November EBITDA and understates December EBITDA. If the auditors or a buyer diligences this, they'll identify it as a recognition error. I understand the EBITDA pressure this month — let's look at what we can do on the cost side to improve November EBITDA, or I can flag to Matt Mathison that November EBITDA is below target due to timing and explain the December recovery." Dr. Lewis does not accelerate revenue recognition regardless of budget pressure; he immediately flags the request to the file (in case of future audit) and offers an alternative solution

## Audit Log
All monthly revenue recognition reviews retained. Deferred revenue schedules retained by year. Policy documentation retained (updated version history). CPA consultation records retained (for new contract types). Any recognition errors and corrections retained with journal entry documentation. Audit workpapers (revenue testing procedures) retained by year. Exit data room revenue recognition documentation retained permanently.

## Deprecation
Retire when each portfolio company has a CFO and accounting team who own the monthly revenue recognition process — with Dr. Lewis reviewing the recognition policy annually and the CPA firm auditing revenue recognition in the annual audit.
