---
name: sales-customer-segmentation
description: "Segment existing customers for MBL portfolio companies to prioritize retention and expansion. Use when the user says 'customer segmentation', 'segment customers', 'customer tiers', 'account tiers', 'tier customers', 'prioritize accounts', 'which customers to focus on', 'customer ranking', 'account ranking', 'who are our best customers', 'customer value analysis', 'account value analysis', 'customer portfolio', 'account portfolio', 'which accounts should we call', 'retention segmentation', 'expansion segmentation', 'account prioritization', 'tier A customers', 'tier B accounts', 'customer priority', 'customer analysis', 'book of business analysis', or 'which accounts to focus on first'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--basis <revenue|health|growth|renewal>] [--action <segment|report|assign>]"
---

# Customer Segmentation

Segment existing customers for MBL portfolio companies to prioritize retention, expansion, and rep time allocation — ensuring that the highest-value and highest-risk accounts receive the most attention, and that rep bandwidth is not wasted on accounts that don't need or can't absorb it. Without segmentation, every account looks the same; with segmentation, reps spend 80% of their time on the 20% of accounts that drive 80% of revenue and risk.

## When to Use
- Annual account review (how should accounts be assigned and tiered for the coming year?)
- Before rep territory changes (re-segment and reassign)
- A new rep is joining and inheriting a book of business (how should they prioritize?)
- Quarterly review of expansion opportunities (which accounts have whitespace?)

## Customer Segmentation Framework

```
SEGMENTATION DIMENSIONS:

  1. ACV (Annual Contract Value):
     The most basic segmentation dimension — how much revenue does this account represent?
     Tier 1 (Strategic): >$150K ACV
     Tier 2 (Standard): $50K-$150K ACV
     Tier 3 (Core): $20K-$50K ACV
     Tier 4 (Tail): <$20K ACV
     
  2. Health Score (current relationship health):
     Green: Strong relationship; no at-risk signals; renewal expected
     Yellow: Some at-risk signals; champion change; declining usage; complaint outstanding
     Red: Non-renewal risk; active save required; CEO involvement needed
     
  3. Growth Potential (expansion opportunity):
     High: Clear whitespace — member count growing; new campaigns; adjacent services
     Medium: Some expansion potential but not urgent
     Low: Steady-state — account is at its natural size with us; no obvious upsell
     
  4. Strategic Value (beyond revenue):
     Referenceable: This customer gives strong referrals and is a public reference
     Net Promoter: High NPS; actively promotes us in their network
     ICP Validation: This customer is the perfect proof point for our target segment
     No strategic value beyond revenue: Standard account

COMBINED SEGMENTATION MODEL (Priority A-D):

  Priority A — Invest:
    Criteria: Tier 1 OR Tier 2 + High growth potential + Green/Yellow health
    Management: Dr. Lewis assigned OR senior rep; formal account plan (sales-account-plan);
      QBR every quarter (not skipped); expansion conversation active
    Time allocation: 40% of account management time for a book with 4-5 Priority A accounts
    
  Priority B — Maintain and Grow:
    Criteria: Tier 2-3 + Medium growth potential + Green health
    Management: Account rep; account plan if >$100K; QBR every 6 months
    Time allocation: 35% of account management time
    
  Priority C — Protect and Renew:
    Criteria: Tier 3-4 + Low growth + Green health; OR any tier + Yellow health
    Management: Account rep; health monitoring; no formal account plan required
    Time allocation: 20% of account management time
    
  Priority D — Monitor and Decide:
    Criteria: Any tier + Red health; OR Tier 4 + Low growth + any health
    Management: Dr. Lewis involved for any Red account; rep manages tail accounts
    Note: Red accounts are Priority D from a renewal perspective but Priority 1 from an
      escalation perspective — they need CEO attention, not rep neglect
    Time allocation: 5% of account management time for stable tail accounts;
      more time if Red (Red = escalation, not deprioritization)

ENTITY-SPECIFIC SEGMENTATION:

  ALLEVIO — Employer Group Segmentation:
    ACV calculation: Member count × PMPM × 12 months
      Example: 120 members × $85 PMPM × 12 = $122.4K ACV
    Tier 1 (Strategic): >150 members (ACV >$153K)
    Tier 2 (Standard): 75-150 members (ACV $76.5K-$153K)
    Tier 3 (Core): 40-75 members (ACV $40.8K-$76.5K)
    Tier 4 (Tail): 25-40 members (ACV $25.5K-$40.8K)
    
    Growth signals (for growth potential scoring):
      - Member count trending up: 10%+ increase in past 6 months = High growth
      - Employer is hiring aggressively: High growth
      - HR Director has mentioned wellness program expansion: Medium-High growth
      - Member count stable for 2+ years: Low growth
      
  COLUMN6 — Agency/Brand Segmentation:
    ACV calculation: Average IO value × expected IO frequency per year
      Example: $45K per IO × 8 IOs/year = $360K ACV
    Tier 1 (Strategic): >$200K ACV
    Tier 2 (Standard): $75K-$200K ACV
    Tier 3 (Core): $25K-$75K ACV
    Tier 4 (Tail): <$25K ACV (test IO only; not a committed account)
    
    Growth signals:
      - Agency just won a major new client: High growth (more campaign budget)
      - Agency is expanding geographically: High growth (new DMA = new supply need)
      - Agency is consolidating vendors: Low or negative growth signal (risk)
      
  HIVE — Mineral Rights Segmentation (lease renewal):
    Segment by: Acreage + lease term end date + development activity
    Priority 1: Landowners in active development zones with leases expiring in 12-24 months
    Priority 2: Landowners in active zones with leases expiring in 24-36 months
    Priority 3: Landowners in adjacent zones — not currently active but worth maintaining relationship

SEGMENTATION OUTPUT — ACCOUNT ROSTER:
  The segmentation produces a sorted account roster for each rep:
    □ All accounts sorted by Priority tier (A first; D last)
    □ Health score noted for each account
    □ Growth potential noted
    □ Renewal date noted (Allevio: benefits anniversary; Column6: IO cadence; HIVE: lease term end)
    □ Time allocation recommendation per account
  The rep uses this roster as their working guide — highest priority accounts get called first;
    lowest priority accounts are touched at the minimum required cadence
```

## Output Format

```markdown
# Customer Segmentation — [Entity] | [Date]
**Prepared by:** Dr. Lewis | **Total accounts:** [N] | **Total ARR:** $[X]M

---

## Segmentation Summary

| Priority | Count | ARR ($K) | % of ARR | Avg health |
|---------|-------|---------|---------|-----------|
| A (Invest) | [N] | $[X]K | [X]% | [Green] |
| B (Maintain/Grow) | [N] | $[X]K | [X]% | [Green] |
| C (Protect/Renew) | [N] | $[X]K | [X]% | [Yellow] |
| D (Monitor/Decide) | [N] | $[X]K | [X]% | [Red] |

---

## Priority A Accounts

| Account | ACV | Health | Growth | Renewal | Account plan | Owner |
|---------|-----|--------|--------|---------|------------|-------|
| [Company A] | $[X]K | 🟢 Green | High | [Date] | Formal plan | Dr. Lewis |
| [Company B] | $[X]K | 🟡 Yellow | Medium | [Date] | Formal plan | Rep A |

---

## Priority D Accounts (At-Risk)

| Account | ACV | Health | Signal | CEO involved? | Owner |
|---------|-----|--------|--------|--------------|-------|
| [Company X] | $[X]K | 🔴 Red | Non-renewal notice | Yes | CEO + Dr. Lewis |

---

## Rep Roster Assignments

| Rep | Priority A | Priority B | Priority C | Priority D |
|-----|-----------|-----------|-----------|-----------|
| Rep A | [N] accounts ([X]% ARR) | [N] | [N] | [N] |
| Rep B | [N] accounts ([X]% ARR) | [N] | [N] | [N] |
```

## Output Contract
- Segmentation is the basis for time allocation, not just a classification exercise — if a rep has 40 accounts and no segmentation, they will naturally give the most attention to whoever called last; with segmentation, they give the most attention to the accounts that matter most (highest ARR; highest risk; highest growth potential); the segmentation is only valuable if the rep actually uses it to prioritize their weekly call list; Dr. Lewis reviews the rep's activity log monthly against the segmentation roster to verify alignment
- Health score is the most actionable dimension — ACV tells you where the money is; health score tells you where the risk is; a Tier 4 account with Red health that has been with us for 3 years requires immediate attention even though it's small; a Tier 1 account with Green health that is expanding requires a growth conversation; Dr. Lewis reviews health scores weekly and adjusts priorities in real time based on signals
- Segmentation is re-run annually and on trigger events — accounts move between segments based on member count changes (Allevio); IO booking patterns (Column6); and lease renewal timing (HIVE); a once-a-year segmentation that is never updated becomes stale within 3 months; Dr. Lewis re-runs the segmentation at the start of each fiscal year and when a material event occurs (rep departure; large account churn; significant expansion)
- HITL required: Dr. Lewis runs the segmentation analysis and presents the roster to the CEO; rep assignments are approved by the CEO; Priority A account management requires Dr. Lewis involvement (formal account plan; QBR attendance); Priority D Red accounts require CEO involvement immediately; Matt Mathison reviews the segmentation summary as part of the annual operating review

## System Dependencies
- **Reads from:** CRM account records (GoHighLevel — ACV; health score; last activity; renewal date; member count); sales-account-plan (Priority A account plans — are they current?); sales-retention-tracker (at-risk signals by account); sales-renewal-manager (renewal dates and renewal risk); sales-whitespace-analyzer (expansion signals by account); AdvancedMD member count (Allevio — current member count for ACV calculation)
- **Writes to:** Segmentation roster (SharePoint/Sales/<Company>/AccountRoster/[YYYY]_Segmentation.xlsx); rep assignments (GoHighLevel CRM — account owner field updated to reflect assignments); sales-kpi-dashboard (segment distribution; ARR by segment; health score distribution); CEO presentation (Priority A and D accounts — annual review); sales-account-plan trigger (Priority A accounts that don't have a current account plan are flagged)
- **HITL Required:** Dr. Lewis runs segmentation; CEO approves rep assignments; Dr. Lewis manages Priority A accounts directly or supervises closely; CEO involved in all Priority D Red accounts; Matt Mathison receives the segmentation summary at the annual operating review; no rep assignment changes without CEO awareness; Dr. Lewis does not let Priority A accounts go unassigned or unplanned

## Test Cases
1. **Golden path:** Annual Allevio segmentation for 22 active accounts → Dr. Lewis runs the analysis: 3 Priority A (>150 members; combined ACV $512K; Dr. Lewis directly manages one; Rep A manages two); 8 Priority B (75-150 members; $428K ARR; Rep A and B split); 9 Priority C (40-75 members; $315K ARR; Rep B manages all); 2 Priority D (one Red — non-renewal risk $82K; one Yellow tail account $28K); presentation to CEO: Priority A account 2 is the highest-growth opportunity (member count up 18% in 6 months; HR Director mentioned a potential new division acquisition) — formal account plan and expansion conversation this quarter; Priority D account 1 (Red) — CEO call scheduled this week; segmentation roster published in SharePoint; reps use it as their weekly call priority guide
2. **Edge case:** A Tier 3 Allevio account (42 members; $42.8K ACV) that has Green health and High growth potential — the CFO mentioned they're planning to hire 80 employees this year → Dr. Lewis upgrades to Priority B immediately: "A company that goes from 42 to 122 members this year jumps from Tier 3 to Tier 1. That's a potential $124.6K ACV account. I'm moving them to Priority B now and scheduling an expansion conversation with the CFO. We should formalize the member addition process with HR and make sure the clinical team is ready to onboard 80 new members." Rep schedules the expansion conversation; formal account plan initiated; account upgraded to Priority A when the hiring begins
3. **Adversarial:** Rep argues that their Priority C accounts are actually more important than their Priority A accounts because "I have better relationships with those HR Directors" → Dr. Lewis: "Relationships are valuable — I'm not dismissing that. But segmentation isn't about relationship quality; it's about where the revenue and risk are. Your Priority A accounts represent 68% of your ACV. If one of them churns, that's a $180K problem. Your Priority C accounts together represent 12% of your ACV. The time you spend on Priority C accounts should be 20% of your account management time — not 50%. I want you to track your activity by segment next month. If the ratio is inverted, we need to talk about why — because it means our highest-value accounts are getting the least attention." Rep tracks activity; discovers they're spending 45% of time on Priority C accounts; realigns with Dr. Lewis support

## Audit Log
All segmentation rosters retained by entity and date. Rep assignment records retained. Priority changes (upgrades and downgrades) documented with rationale. CEO and Matt Mathison review records retained. Annual segmentation review records retained. Account plan trigger records retained.

## Deprecation
Retire when each portfolio company has a dedicated Customer Success or Revenue Operations function that maintains account segmentation in a CRM-native model — with Dr. Lewis reviewing the segmentation methodology annually and the CEO approving all Priority A account assignments.
