---
name: sales-account-plan
description: "Build strategic account plans for key customers of MBL portfolio companies. Use when the user says 'account plan', 'strategic account', 'key account', 'account planning', 'account strategy', 'plan for this account', 'account growth plan', 'account roadmap', 'expansion plan', 'strategic account planning', 'account management plan', 'how to grow this account', 'account health', 'account map', 'stakeholder map', 'relationship map', 'whitespace analysis', 'account strategy document', 'grow the account', 'expand the relationship', or 'key account management'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--action <build|review|update>] [--horizon <annual|three-year>]"
---

# Account Plan

Build strategic account plans for key customers of MBL portfolio companies — mapping the relationship, identifying expansion opportunities, and planning for renewal. An account plan is the internal document that guides how the company manages its most important customer relationships: who is involved, what they care about, what is at risk, and where the relationship can grow. Without an account plan, key accounts receive reactive management rather than proactive value delivery.

## When to Use
- Building the initial account plan for a new key customer (within 30 days of signing)
- Annual account plan update (for all accounts >$100K ACV)
- A key account is showing expansion potential or at-risk signals
- Preparing for the annual renewal conversation

## Account Plan Framework

```
ACCOUNT PLAN COMPONENTS:

  1. ACCOUNT PROFILE:
     Company: [Name; industry; size; geography]
     Contract: [Start date; ACV; contract term; renewal date]
     Primary contact: [Name; title; email; decision-maker or champion]
     Secondary contacts: [Name; title; role in the relationship]
     Health score: [Green / Yellow / Red — based on renewal signal and satisfaction]
     
  2. STAKEHOLDER MAP:
     Decision-maker (Economic Buyer): Who approves the renewal and expansion?
       Allevio: Often CFO (approves the budget) + HR Director (recommends)
       Column6: Agency Head Buyer or VP of Media (approves the IO)
     Champion: Who advocates for us internally?
     Influencers: Who else has opinion on the relationship?
     Blockers: Is there anyone internally who has reservations about us?
     
     For each stakeholder:
       Name; title; sentiment (positive / neutral / negative)
       What they care about (cost; quality; reporting; service)
       Our relationship strength (strong / neutral / weak)
       
  3. VALUE DELIVERED:
     What we've delivered this quarter/year (quantified):
       Allevio: "$27/PMPM savings × 145 members × 12 months = $47K in Year 1 savings"
       Column6: "6.2M impressions; 88% completion rate; $24 CPM vs. market benchmark $28 CPM"
     Comparison to baseline: What was their situation before they chose us?
     Year-over-year improvement trend (if second year+)
     
  4. RELATIONSHIP HEALTH:
     Health indicators:
       □ Last QBR date and outcome (positive / neutral / concerns raised)
       □ Open issues (any unresolved complaints or service misses)
       □ Contact change (has the champion or decision-maker changed?)
       □ Payment history (any late payments or billing disputes?)
       □ Usage trend (Allevio: member count; Column6: repeat booking rate)
     Health score: Green (no risks); Yellow (1-2 minor risks); Red (at-risk — escalate)
     
  5. EXPANSION OPPORTUNITIES:
     What could we sell them more of?
       Allevio: Wellness program; additional coverage tiers; premium mental health coverage
         → Trigger: Member count is growing; HR Director mentions wellness initiative
       Column6: Larger IO commitment; additional campaign categories; programmatic alongside CTV
         → Trigger: Agency is increasing CTV budget for Q[X]; new client category
     Expansion readiness: How satisfied are they? (Need high satisfaction before an expansion ask)
     Best time to introduce expansion: At the QBR; after a successful quarter
     
  6. RENEWAL STRATEGY:
     Renewal date: [Date]
     90-day countdown start: [Date — 90 days before renewal]
     Expected renewal terms: [Same terms / PMPM increase / expansion of scope]
     Renewal risk: [Low / Medium / High — with reason]
     Executive sponsor needed for renewal?: [Yes/No — for high-value or at-risk renewals]
     
  7. ACTION PLAN:
     90-day action items: Specific; with owner; due date
       □ [Schedule Q3 QBR by July 15 — Account Manager]
       □ [Introduce wellness program upsell at QBR — rep]
       □ [Begin renewal conversation at QBR — CEO joins]
       □ [Resolve open billing question by June 30 — Account Manager]
       
KEY ACCOUNT DEFINITION:
  Allevio: Any employer group with >$100K ACV
  Column6: Any agency with >$200K annual IO volume or a strategic agency relationship
  HIVE: Any LP investor; any landowner with >100 acres under lease
```

## Output Format

```markdown
# Strategic Account Plan — [Account Name] | [Entity]
**Owner:** [Account Manager] | **Prepared by:** Dr. Lewis | **Date:** [Date]
**Contract:** $[X]K ACV | **Renewal:** [Date] | **Health:** 🟢 Green / 🟡 Yellow / 🔴 Red

---

## Stakeholder Map

| Stakeholder | Title | Role | Sentiment | Our relationship |
|------------|-------|------|-----------|----------------|
| [Name] | CFO | Economic Buyer | Positive | Strong |
| [Name] | HR Director | Champion | Very positive | Strong |
| [Name] | COO | Influencer | Neutral — limited visibility | Weak |

---

## Value Delivered

**Year-to-date savings:** $[X]K | **Claim ratio improvement:** [X]% → [X]%
**vs. prior carrier:** $[X]/PMPM savings × [X] members × [X] months = $[X]K

---

## Expansion Opportunities

| Opportunity | Current ACV | Potential ACV increase | Readiness | Timing |
|------------|------------|----------------------|----------|--------|
| Wellness program add-on | — | +$[X]K | High (health score strong) | Q4 QBR |

---

## Renewal Status

**Renewal date:** [Date] | **90-day countdown:** [Date]
**Risk level:** Low / Medium / High | **Risk reason:** [If any]
**Renewal strategy:** [Renew at same terms / Introduce 2% PMPM increase / Expand scope]

---

## 90-Day Action Plan

| Action | Owner | Due | Status |
|--------|-------|-----|--------|
| Schedule Q3 QBR | Account Manager | [Date] | ☐ |
| Wellness program upsell discussion | Rep | At QBR | ☐ |
| CEO joins renewal conversation | CEO + Rep | [Date] | ☐ |
```

## Output Contract
- Account plans exist for every account above $100K ACV — not just the largest; an account that is $120K ACV that is allowed to drift without active management is a $120K churn risk; Dr. Lewis requires an account plan for every Allevio employer group above $100K ACV and every Column6 agency relationship above $200K annual volume; accounts below these thresholds are managed with the standard renewal cadence (sales-renewal-manager) without a full account plan
- The stakeholder map is the most important section to keep current — a champion who leaves the company is the leading cause of unexpected churn; Dr. Lewis monitors the stakeholder map for contact changes and alerts the account manager immediately when a key contact leaves; the response to a champion departure is an executive-level contact with the company within 5 business days to establish a new relationship with the replacement
- Expansion opportunities should not be introduced until the health score is Green — a customer who is unhappy is not a candidate for an upsell conversation; the upsell ask before the issues are resolved damages the relationship; Dr. Lewis enforces the rule that expansion opportunities are introduced only when the health score is Green and the last QBR was positive; the QBR is the right moment for the expansion conversation
- HITL required: Account manager owns the account plan and the day-to-day relationship; Dr. Lewis reviews all key account plans quarterly; CEO attends QBRs and renewal conversations for accounts >$250K ACV; Matt Mathison is informed of any account in Red health status; any renewal incentive or pricing change requires CEO approval; Dr. Lewis does not contact key account customers directly without the account manager's awareness; Dr. Lewis does not approve upsell conversations without confirming the account is in Green health status

## System Dependencies
- **Reads from:** CRM (GoHighLevel — account activity log; contact records; open issues); QuickBooks (revenue history; PMPM by customer; payment history); member count (Allevio AdvancedMD — enrollment trend); Column6 campaign delivery reports (impression delivery; VCR); sales-renewal-manager (renewal date; at-risk status); QBR notes (SharePoint — last QBR outcome); sales-whitespace-analyzer (expansion opportunity identification)
- **Writes to:** Account plan document (SharePoint/Sales/<Company>/AccountPlans/[Account]_AccountPlan_v[X]_[Date].pdf); CRM account notes (summary of health; expansion status; renewal strategy); sales-renewal-manager (renewal risk update); CEO at-risk alert (for Red accounts); Matt Mathison portfolio health summary (quarterly — aggregate account health by entity)
- **HITL Required:** Account manager owns and maintains; Dr. Lewis reviews quarterly; CEO attends key account QBRs and renewal calls; Matt Mathison informed of Red accounts; Dr. Lewis does not approve upsell conversations without confirming Green health status; CEO approves renewal pricing changes; Matt Mathison is briefed before any account with >$250K ACV is materially at risk

## Test Cases
1. **Golden path:** Building the initial account plan for Allevio's largest employer group (200 employees; $204K ACV; joined 6 months ago) → Dr. Lewis builds the plan: Stakeholder map: CFO (economic buyer; positive — commented favorably on Q2 savings data); HR Director (champion; very positive — she was the internal advocate); Payroll Manager (influencer; neutral — concerned about implementation complexity but now satisfied); Health score: Green; Value delivered: $27/PMPM savings × 200 × 6 months = $32,400 in savings YTD; Claim ratio: 82% → 78% (improving); Expansion: Wellness program (HR Director mentioned the company is launching a wellness initiative); timing: Q3 QBR; Renewal: January 1; risk: Low; Action plan: Q3 QBR in August (Dr. Lewis + CEO + rep attend); wellness program discussion at QBR; begin renewal conversation at QBR (same terms recommended); plan complete; CEO reviews; account plan filed
2. **Edge case:** An account plan review reveals that the champion (HR Director) at a $175K ACV Allevio group has left the company and has been replaced by a new HR Director who has no relationship with Allevio → Dr. Lewis flags immediately: "Champion change at [Account] — Red health status triggered. The HR Director who championed the Allevio decision has left; the new HR Director is unknown to us and has no relationship with the model. This is the leading cause of renewal loss. Immediate action: (1) Account manager calls the CFO today — not the new HR Director; establish continuity at the economic buyer level; (2) CEO sends a personal note to the CFO: 'I heard about the transition — wanted to reach out personally; our account manager will be in touch this week to help orient your new HR Director'; (3) Schedule an onboarding call for the new HR Director within 2 weeks — walk her through the value delivered and the relationship." Health status upgraded to Yellow after the CFO call; new HR Director meeting scheduled; health upgrades to Green within 30 days
3. **Adversarial:** A rep pushes back on building account plans, saying it's "too much administrative work for accounts that are just renewing anyway" → Dr. Lewis: "The accounts that are 'just renewing' are the ones that churn when we're not paying attention. In the last 18 months, 3 of our churned accounts had no active account plan and no QBR in the 6 months before renewal. The account plan is not paperwork — it's the early warning system. A 30-minute account plan review reveals whether the champion has changed, whether there are open issues, and whether there's expansion potential. That 30-minute investment is worth significantly more than the cost of unexpectedly losing a $150K ACV account." CEO confirms the account plan requirement; rep complies; discovers an expansion opportunity in the process

## Audit Log
All account plans retained by account, entity, and version date. Health status change records retained. Champion change events and response records retained. CEO and Matt Mathison review records retained. Renewal strategy records retained. Expansion opportunity tracking retained.

## Deprecation
Retire when each portfolio company has a dedicated Customer Success Manager who maintains account plans for all key accounts — with Dr. Lewis reviewing the quarterly portfolio account health summary and Matt Mathison informed of all Red accounts.
