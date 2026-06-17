---
name: fin-ops-customer-credit-manager
description: "Manage customer credit — set credit limits, assess credit risk, and control credit exposure. Use when the user says 'customer credit', 'credit limit', 'credit risk', 'credit assessment', 'customer credit check', 'credit exposure', 'credit policy', 'credit approval', 'credit terms', 'customer payment terms', 'net 30 terms', 'credit decision', 'credit application', 'bad debt risk', 'customer financial risk', 'extend credit', or 'credit evaluation'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--customer <name>] [--requested-terms <Net 30/60>] [--amount <$>] [--action <assess|approve|review|suspend>]"
---

# Customer Credit Manager

Set and manage customer credit limits for MBL portfolio companies — evaluating credit risk, establishing payment terms, and monitoring credit exposure to minimize bad debt while enabling revenue growth. Credit management is the balance between maximizing revenue (extending generous terms to win business) and minimizing risk (protecting against customers who can't pay). At PE portfolio scale, uncollectable receivables reduce EBITDA as bad debt expense and damage DSO — both of which affect valuation. Dr. Lewis applies a disciplined credit assessment before extending material credit and monitors the credit portfolio monthly.

## When to Use
- A new customer is requesting net 30 or net 60 payment terms
- An existing customer is requesting a credit limit increase
- A customer's payment history has deteriorated — review their credit
- A customer is requesting a large upfront purchase on credit
- Annual review of the customer credit portfolio

## Customer Credit Framework

```
Credit policy by entity:

  ALLEVIO (Healthcare):
    Patients: Generally pay at point of service (co-pay) or through insurance (no direct credit extension to patients)
    Employer groups (PMPM contracts): Credit is implicitly extended; invoice on 1st, collect Net 15
      Credit risk assessment for employer groups: size, financial stability, relationship history
    Payers (insurance): No credit decision; payers have standard reimbursement timelines
    
  HIVE PARTNERS (Oil & Gas):
    Revenue from production operators: Operators distribute proceeds on a set schedule; no credit decision by HIVE
    LOE vendors: HIVE is the customer, not the credit grantor; vendors extend credit to HIVE
    
  COLUMN6 / SIPROCAL (CTV/Advertising):
    Advertisers: Advertising agencies and direct advertisers are granted credit (invoice after campaign delivery)
    Credit risk: Advertising agencies can have complex financial structures; concentration risk if 1-2 agencies = >20% of revenue
    Credit limit: Maximum outstanding balance at any time without additional approval
    
Credit risk assessment process:

  Step 1 — GATHER INFORMATION:
    Business age: How long have they been in business?
    Reference check: Can they provide 2-3 business credit references? (Other vendors they pay on time)
    Financial signals: For larger customers (>$50K annual spend), request financial statements or bank reference
    Public information: DNB (Dun & Bradstreet) business credit score; Google/news search for financial issues
    Advertising agency: Is the agency a member of the 4A's (American Association of Advertising Agencies)?
      Membership suggests financial credibility; check if they have an audited P&L
    Relationship: Are they a direct advertiser or agency? How was the relationship initiated?
    
  Step 2 — CREDIT SCORING (simplified):
    Business age ≥3 years: +2 points
    Good payment references (2+ references confirm timely payment): +3 points
    Financial statements show positive cash flow: +2 points
    DNB score: Good = +2; Fair = +1; Poor = −2
    Relationship: Direct referral from trusted source: +1; Cold inbound: 0
    Advertising agency: 4A's member: +1; Independent: 0
    
    Score: 8-10 = Low risk; 5-7 = Medium risk; <5 = High risk (proceed with caution)
    
  Step 3 — SET CREDIT TERMS:
    Low risk (8-10): Standard terms (Net 30); credit limit = 2× average monthly invoice amount
    Medium risk (5-7): Net 30; credit limit = 1× average monthly invoice amount; CEO awareness
    High risk (<5): Require prepayment or Net 15; limited credit limit; Dr. Lewis approval required
    New customer (no history): Start with a 1-campaign trial on Net 30 with a $10K credit limit
    
  Step 4 — MONITOR ONGOING:
    Monthly: Review AR aging for any customer approaching their credit limit
    Monthly: Flag any customer with a payment 15+ days past due — review their credit terms
    Credit limit breach: Customer owes more than their credit limit → hold new orders until balance is reduced
    Credit suspension: Customer is 60+ days past due → suspend new orders; move to collections
    
  Credit concentration risk:
    Single customer >20% of revenue: Flag to CEO and Matt Mathison
    Single customer >30% of revenue: Material concentration risk; VCP action to diversify
    Column6: Top advertiser concentration reviewed monthly in the KPI report
    
  Credit limit approval authorities:
    Credit limit <$25K: Dr. Lewis can approve
    Credit limit $25K-$100K: CEO approval
    Credit limit >$100K: CEO + Matt Mathison approval
    Prepayment waiver (allowing credit for a historically high-risk customer): CEO + Dr. Lewis
```

## Output Format

```markdown
# Customer Credit Assessment — [Customer Name]
**Entity:** [Company] | **Date:** [Date] | **Assessed by:** Dr. Lewis

---

## Credit Application Details

**Customer:** [Name] | **Industry:** [Industry]
**Requested terms:** Net [30/60] | **Requested credit limit:** $[X]
**Expected monthly spend:** $[X]K/month | **Annual relationship value:** $[X]K

---

## Credit Risk Assessment

| Factor | Score | Notes |
|--------|-------|-------|
| Business age | [0-2] | [Founded 2018 = 6+ years; +2] |
| Payment references | [0-3] | [2 references checked; both confirmed timely; +3] |
| Financial signals | [0-2] | [Requested financial statements; not provided; +0] |
| DNB score | [-2 to +2] | [Score 68 — Good; +2] |
| Relationship source | [0-1] | [Referred by existing Column6 advertiser; +1] |
| Industry membership | [0-1] | [4A's member; +1] |
| **Total score** | **[0-10]** | |

**Risk tier:** Low (8-10) / Medium (5-7) / High (<5)
**Score:** [9/10] → **Low risk**

---

## Credit Decision

**Approved terms:** Net [30]
**Approved credit limit:** $[X]K (= 2× estimated monthly invoice of $[X]K)
**Approval authority:** Dr. Lewis (limit <$25K) / CEO (limit $25K-$100K) / CEO + Matt (<$100K)
**Approved by:** [Dr. Lewis / CEO / CEO + Matt]
**Conditions:** [None / Prepayment for first campaign / Reference check due first]

---

## Credit Monitoring

**Current balance:** $[X]K | **Credit limit:** $[X]K | **Utilization:** [X]%
**Oldest open invoice:** [Date] ([N] days) | **Status:** ✅ Current / ⚠️ 31-60 days / ❌ 60+ days
**Last payment received:** [Date] for $[X]K

---

## Customer Concentration

**This customer as % of [Entity] revenue:** [X]%
**Flag if >20%:** ✅ Below / ⚠️ Approaching 20% / ❌ Above 20% — CEO and Matt Mathison aware
```

## Output Contract
- Set credit limits before extending credit, not after — the worst credit situation is discovering that a customer owes $85,000 when their informal credit limit "seemed like" $25,000; credit limits must be explicit, approved, and communicated before invoices accumulate; Dr. Lewis establishes a credit limit at the start of every new customer relationship and loads it into the AR tracking system; when a customer approaches their credit limit, the alert goes to the controller and Dr. Lewis, not to accounts receivable where the invoice has already been created
- New customers start small — the first transaction with a new customer is not the moment to extend $100,000 in credit; the first campaign or invoice cycle is the trial run; Dr. Lewis establishes a conservative credit limit for new customers ($10K-$25K depending on entity) and reviews it after 90 days of payment history; a customer who pays on time for 3 months earns a higher credit limit; the expansion of credit is proportional to the demonstrated payment behavior
- Concentration risk requires proactive action, not just reporting — a customer who represents >20% of revenue is a concentration risk in the exit model (buyers discount revenue from highly concentrated customers); reporting the concentration without a VCP action to diversify is insufficient; Dr. Lewis includes concentration risk in the monthly KPI dashboard (strategy-kpi-dashboard) and flags it to the CEO and Matt Mathison when any customer approaches 20%; the action is a commercial strategy decision (diversify by adding more customers, reduce the concentrated customer's share), not a finance operations decision alone
- HITL required: Dr. Lewis approves credit limits <$25K; CEO approves $25K-$100K; CEO + Matt Mathison approve >$100K; any credit suspension (suspending a customer's ability to place new orders due to delinquency) requires Dr. Lewis and CEO alignment; concentration risk >20% requires Matt Mathison notification; any customer requiring a prepayment waiver requires CEO + Dr. Lewis approval

## System Dependencies
- **Reads from:** Customer application information; DNB credit reports; business credit references; financial statements (if available); AR aging (current outstanding balance); QuickBooks customer payment history
- **Writes to:** Customer credit file (SharePoint/Finance/<Company>/Customers/CreditFiles/); AR aging system (credit limit flag); CEO/Matt Mathison concentration alert; credit suspension notification (if applicable)
- **HITL Required:** Dr. Lewis approves credit limits <$25K; CEO approves $25K-$100K; CEO + Matt Mathison approve >$100K; credit suspension requires Dr. Lewis + CEO; concentration >20% requires Matt Mathison notification

## Test Cases
1. **Golden path:** Column6 new advertiser — Horizon Media (mid-size agency) requesting Net 30 terms, $50K credit limit → Credit assessment: Business age 12+ years (+2); 3 references — all confirmed timely (+3); financial signals: 4A's member, publicly traded parent company (+2); DNB score 82 — Good (+2); referral from existing Column6 client (+1); 4A's member (+1) = 11/10 (cap at 10) — Low risk; Dr. Lewis recommends Net 30, $50K limit; CEO approval required (>$25K); CEO approves; credit file created; customer added to AR monitoring; 3-month review: Horizon has paid 3 invoices on time; credit limit increased to $85K
2. **Edge case:** A small independent advertiser with no credit history, no references, and a $25K credit limit request → Assessment: Business age <2 years (0); no references (0); no financial statements (0); DNB score not found (0); cold inbound (0); not 4A's member (0) = 0/10 — High risk; Dr. Lewis recommends: prepayment for the first campaign; after successful first campaign and timely payment, $10K credit limit on Net 30 for the second campaign; CEO awareness (high-risk new customer); customer notified: "We'd love to work together. For new advertisers, we start with a prepaid campaign arrangement — once we establish a payment history, we can move to invoice terms." Customer either accepts or declines; no credit extended without payment history
3. **Adversarial:** A Column6 sales rep says "this is a big deal — $200K annual contract — the agency needs Net 60 terms or they'll go to a competitor" → Dr. Lewis evaluates the credit risk first; if the agency's credit assessment justifies $200K credit at Net 60, Dr. Lewis prepares the recommendation for CEO + Matt Mathison approval (>$100K); the commercial urgency doesn't change the credit process — it just runs faster; if the agency's credit assessment shows high risk, Dr. Lewis proposes an alternative: "We can offer Net 30 with a $100K credit limit, structured as $50K invoiced mid-campaign and $50K at campaign end — this limits our exposure while giving you flexibility." The commercial team decides whether to accept the modified terms or walk away; Dr. Lewis does not approve $200K credit limits to high-risk customers regardless of commercial pressure

## Audit Log
All credit assessments retained. Credit limit approvals retained. DNB reports and reference check records retained. Annual credit reviews retained. Credit suspension records retained. Concentration risk notifications retained. All credit limit changes retained with approval documentation.

## Deprecation
Retire when each portfolio company has a controller or AR manager who manages customer credit — with Dr. Lewis reviewing credit limits >$25K and Matt Mathison approving limits >$100K.
