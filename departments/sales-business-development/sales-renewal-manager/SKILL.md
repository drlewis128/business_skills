---
name: sales-renewal-manager
description: "Manage customer renewals and upsell opportunities for MBL portfolio companies. Use when the user says 'renewal', 'contract renewal', 'renewal management', 'renewing the contract', 'client retention', 'renewal pipeline', 'retention management', 'renewal strategy', 'upsell', 'cross-sell', 'expand the account', 'account expansion', 'grow the account', 'renewal forecast', 'at-risk customer', 'customer at risk', 'churn risk', 'renewal timeline', 'when does the contract expire', 'renewal rate', 'gross retention', 'net retention', or 'renewal playbook'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--customer <name>] [--renewal-date <date>] [--action <forecast|manage|upsell|at-risk>]"
---

# Renewal Manager

Manage customer renewals and upsell opportunities for MBL portfolio companies — protecting existing revenue and growing it through disciplined renewal management. For subscription-based businesses like Allevio, renewal revenue is the engine: every renewal that is taken for granted is a renewal that is at risk. Dr. Lewis maintains the renewal pipeline with the same discipline as the new business pipeline — because losing a $120K employer group at renewal is equivalent to failing to close a $120K new deal.

## When to Use
- Building the renewal pipeline and calendar (annual; by customer)
- A customer's renewal is approaching (90/60/30-day cadence)
- A customer is showing at-risk signals (usage decline; complaint; key contact left)
- Identifying upsell and expansion opportunities within existing customers
- Tracking renewal rates as a portfolio KPI

## Renewal Management Framework

```
RENEWAL PIPELINE — BY ENTITY:

  ALLEVIO (Employer Group — PMPM Contract Renewals):
    Renewal cycle: Annual contracts; most renewing November 1 through January 1
    Renewal timeline:
      Day -180 (6 months before expiration):
        □ Pull the renewal roster: Which groups are renewing in the next 6 months?
        □ Review account health data: claim ratio trend; PMPM trend; member count; satisfaction
        □ Identify at-risk groups (see At-Risk Signals below)
        □ Confirm the account manager has an active relationship with the HR Director
        
      Day -90 (3 months before expiration):
        □ First renewal conversation: Schedule a check-in with the HR Director
          Agenda: Value delivered this year (data/results); renewal discussion; any concerns?
          Goal: Confirm their intent to renew; surface any issues early
        □ Renewal proposal: Prepare a year-end performance summary + renewed contract terms
          If PMPM is changing: Explain the reason and data; don't surprise them
          
      Day -60 (2 months before expiration):
        □ Renewal proposal submitted
        □ Follow up with the champion: Is there anything to address before renewing?
        □ Legal review period: Most employer groups need 2-3 weeks for internal approval
        
      Day -30 (1 month before expiration):
        □ Contract should be in final stages; signed or in legal review
        □ If not: Escalate to Dr. Lewis; identify the specific blocker
        □ Do not let a contract expire without a plan (auto-renew is not a strategy)
        
      Day 0 (expiration):
        □ Contract should be signed
        □ If not signed: Determine the reason and set a resolution date
        
  AT-RISK SIGNALS (watch for these and act immediately):
    □ HR Director or benefits decision-maker has left the company (champion lost)
    □ Member count is declining (group is shrinking or employees are opting out)
    □ Claim ratio is increasing despite Allevio's management (net dissatisfaction risk)
    □ No logged account activity in 60+ days (relationship is going cold)
    □ The group has mentioned a competing offer (they're shopping)
    □ The group has raised an unresolved complaint or billing dispute
    At-Risk Response:
      □ Alert the CEO immediately
      □ Schedule an executive-level check-in (CEO + HR Director; or CEO + CFO)
      □ Prepare a retention pitch: value delivered; plan to address the issue; renewal incentive if needed

  COLUMN6 (Agency IO Renewals / Repeat Business):
    Column6's "renewals" are campaign-to-campaign repeat business
    Renewal tracking:
      □ IO end date → set a 3-week follow-up reminder before IO ends
      □ Campaign performance summary: deliver before the IO ends (VCR; reach; completion rate)
      □ Post-campaign debrief: Schedule with the agency buyer within 1 week of campaign end
        Goal: Get the "yes" to the next campaign before they move to a competitor
        
    Repeat business signals (positive):
      □ Agency buyer praises specific metrics
      □ IO renewal within 2 weeks of campaign end (fastest repeat signal)
      □ Agency submits an RFP for the next quarter before the current campaign ends
      
    Churn risk signals:
      □ Campaign underdelivered (missed impressions or completion rate target)
      □ Buyer changed (new buyer may have different supplier relationships)
      □ Agency lost the client the campaign was running for
      
UPSELL FRAMEWORK:
  Upsell = selling more to an existing customer (add members; add coverage tiers; add services)
  Cross-sell = selling a different product to an existing customer (Allevio: wellness program; Column6: programmatic alongside CTV)
  
  Upsell identification process:
    Review every renewing account for expansion potential:
      □ Allevio: Has the employer group grown? Are there new employee populations not covered?
        Is the employer interested in adding a wellness program or expanded mental health coverage?
      □ Column6: Is the agency increasing CTV budget industry-wide? (Expand their IO; add targeting tiers)
        Is the agency expanding to a new client category that matches Column6's inventory?
        
  Upsell timing: The renewal conversation is the best time to introduce an upsell
    "You've been happy with the standard plan — I want to show you what adding [X] would look like"
    Lead with the value of the upsell, not the cost

RENEWAL KPIs (track monthly):
  Gross Retention Rate (GRR): Revenue retained from existing customers ÷ total revenue at start of period
    Target: >90% for Allevio employer groups; >70% for Column6 (campaign-based; higher churn expected)
    Below 85% for Allevio: Immediate CEO escalation
  Net Retention Rate (NRR): (Revenue retained + upsell revenue) ÷ total revenue at start of period
    Target: >100% (growing revenue from existing customers)
  Renewal Win Rate: Renewals executed ÷ renewals due
    Target: >90% for Allevio
  At-Risk Accounts: # of accounts with 2+ at-risk signals
```

## Output Format

```markdown
# Renewal Pipeline — [Entity] | [Date]
**Prepared by:** Dr. Lewis

---

## Renewal Calendar (Next 90 Days)

| Customer | Renewal date | ACV | Status | At-risk? | Next action |
|---------|-------------|-----|--------|---------|------------|
| [Group A] | [Date] | $[X]K | Contract in review | No | Follow up on legal review |
| [Group B] | [Date] | $[X]K | Proposal sent | ⚠️ Champion left | CEO check-in call |
| [Group C] | [Date] | $[X]K | Renewal meeting TBD | No | Schedule 90-day check-in |

---

## At-Risk Accounts

| Customer | ACV | Risk signal | Action | Owner | Due |
|---------|-----|------------|--------|-------|-----|
| [Group B] | $[X]K | HR Director left | CEO + new HR Director meeting | CEO | [Date] |

---

## Upsell Opportunities

| Customer | Current ACV | Upsell opportunity | Potential ACV increase | Owner |
|---------|------------|-------------------|----------------------|-------|
| [Group A] | $[X]K | Add wellness program | +$[X]K | [Rep] |

---

## Renewal KPIs — [Period]

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| Gross Retention Rate | >90% | [X]% | ✅ / ⚠️ / ❌ |
| Net Retention Rate | >100% | [X]% | ✅ / ⚠️ / ❌ |
| Renewal Win Rate | >90% | [X]% | ✅ / ⚠️ / ❌ |
| At-Risk Accounts | 0 | [N] | ✅ / ⚠️ / ❌ |
```

## Output Contract
- Start the renewal conversation 90 days early — a renewal conversation started 30 days before expiration is a contract execution, not a relationship conversation; 90 days before expiration, the customer still has choices and the relationship still has room to grow; 30 days before expiration, the customer has already decided and the conversation is administrative; Dr. Lewis enforces the 90-day rule: every renewal on the calendar gets a first renewal conversation at 90 days, not 45 days
- Lost renewals are more expensive than lost new deals — when Allevio loses a $120K employer group at renewal, the company loses the $120K in revenue and must spend sales resources to replace it with a new deal; the true cost of a renewal loss is the $120K plus the cost of acquiring a replacement; renewing a customer costs 5-7× less than acquiring a new one; Dr. Lewis treats renewal pipeline health with the same urgency as new business pipeline health
- At-risk signals require CEO action — an at-risk employer group is not a rep-level issue; when a champion leaves, a billing dispute is unresolved, or a group is actively shopping competitors, that situation requires executive involvement; Dr. Lewis alerts the CEO immediately when an at-risk signal is identified; the CEO leads the retention conversation; the rep supports; the appropriate level of seniority signals to the customer that their business matters
- HITL required: Account manager monitors account health and logs activity; Dr. Lewis reviews the renewal pipeline monthly; CEO leads at-risk retention conversations; CEO approves any renewal incentive (discount; contract modification); Matt Mathison receives the quarterly gross/net retention metrics as part of the portfolio financial report; Dr. Lewis does not approve renewal discounts without CEO authorization; Dr. Lewis does not communicate renewal terms to customers — the account manager or CEO does

## System Dependencies
- **Reads from:** Contract tracker (legal-contract-tracker — renewal dates; contract terms; auto-renewal provisions); CRM (GoHighLevel — account activity log; contact changes; customer satisfaction signals); QuickBooks (revenue by customer — PMPM history; payment status; any billing disputes); fpa-cash-flow-model (renewal revenue contribution to forward cash flow); sales-pipeline-manager (renewal pipeline is tracked alongside new business pipeline as a distinct track); member count trends (Allevio AdvancedMD — enrollment data by group)
- **Writes to:** Renewal pipeline (CRM — separate renewal stage track; renewal date; at-risk flag; upsell opportunity); renewal calendar (legal-compliance-calendar — 90/60/30-day renewal alerts); Matt Mathison quarterly retention metrics; CEO at-risk account alerts; renewal performance tracker (GRR/NRR history); upsell opportunities (sales-pipeline-manager — upsell deals as separate pipeline opportunities)
- **HITL Required:** Account manager manages day-to-day relationship and logs activity; Dr. Lewis reviews monthly renewal pipeline; CEO is alerted to at-risk accounts immediately; CEO leads at-risk retention conversations; CEO approves any renewal incentive; Matt Mathison receives quarterly retention KPIs; Dr. Lewis does not offer renewal incentives without CEO approval; Dr. Lewis does not communicate contract term changes to customers

## Test Cases
1. **Golden path:** Allevio Q4 renewal management — 6 employer groups renewing between November 1 and January 1 → Dr. Lewis pulls the renewal calendar in early August (90-day mark): Group A ($95K ACV): Account manager logs good relationship; claim ratio improved from 82% to 74%; no at-risk signals; renewal conversation scheduled for early September; Group B ($140K ACV): Large group; HR Director promoted; new HR Director unknown; ⚠️ At-risk — champion change; CEO check-in call scheduled with the new HR Director for August 20; Groups C-F: All healthy; renewal conversations scheduled per the 90-day calendar; By October 1: 4 of 6 contracts signed; Group B: CEO call successful — new HR Director is continuing; renewal scheduled; 1 group (Group E) is at risk — PMPM is higher than a competitor's quote; Dr. Lewis builds a savings comparison; CEO joins the renewal call; Group E renews; 6 of 6 renewals complete; GRR: 100% for Q4
2. **Edge case:** Allevio discovers that a 185-employee employer group (Group F, $188K ACV — Allevio's largest group) has engaged a broker who is actively shopping the account to competitors, 70 days before renewal → Dr. Lewis: "This is an immediate escalation. Group F is our largest account and they have an active broker shopping the market. 70 days to renewal is tight. Action: (1) CEO calls the CFO (ultimate decision-maker) this week — not the HR Director; we need executive-level engagement; (2) Prepare a year-in-review deck: show claim ratio improvement (from 86% at signing to 72% now); PMPM cost comparison vs. market; ROI delivered; (3) Confirm: do we know what the broker is telling them? Ask the HR Director directly in a call today; (4) If the competitor is lower PMPM: before matching price, assess whether the competitor's model actually delivers the savings. Our 72% claim ratio vs. their unknown track record is our argument." CEO engaged same day; retention call results in renewal; broker doesn't win the account
3. **Adversarial:** Column6's campaign for Agency B underdelivered by 15% of impressions in Q3 (campaign delivered 85,000 of 100,000 contracted impressions) — Agency B's buyer is unhappy → Dr. Lewis: "This is a churn-risk situation. An underdelivery on a contracted IO gives the agency grounds to question the relationship and potentially not renew. Immediate actions: (1) Diagnose why the impressions underdelivered — was it inventory availability? targeting parameters that were too narrow? technical delivery issue? (2) Make the agency whole: offer a make-good (deliver the remaining 15,000 impressions at no charge on the next campaign); (3) CEO calls the agency buyer to apologize and explain the make-good plan; (4) Post-debrief: fix the root cause in the Column6 inventory/delivery system before the next campaign. The make-good needs to happen before we have the renewal conversation — they need to see accountability first." Make-good committed; agency buyer responds positively; renewal is secured for Q4 with a slightly larger IO

## Audit Log
All renewal pipeline records retained by entity and customer. Renewal decisions retained (renewed; churned; upsell added). At-risk escalation records retained. CEO retention call records retained. Renewal incentive approvals retained. GRR/NRR history retained quarterly. Matt Mathison quarterly retention reports retained.

## Deprecation
Retire when each portfolio company has a dedicated Customer Success Manager who manages renewals — with Dr. Lewis reviewing the quarterly retention metrics and Matt Mathison receiving the annual GRR/NRR in the portfolio financial report.
