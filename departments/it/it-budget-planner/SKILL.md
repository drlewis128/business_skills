---
name: it-budget-planner
description: "Plan and manage IT budget — CapEx, OpEx, and cost-per-user benchmarks. Use when the user says 'IT budget', 'IT spend', 'IT costs', 'technology budget', 'IT CapEx', 'IT OpEx', 'budget IT', 'IT cost management', 'cost per user IT', 'IT spending', 'IT financial plan', 'IT budget review', 'technology costs', or 'IT cost optimization'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--fiscal-year <YYYY>] [--action <build|review|optimize|forecast>]"
---

# IT Budget Planner

Plan and manage the IT budget for MBL portfolio companies — forecasting IT spend, optimizing costs, categorizing CapEx vs. OpEx, and benchmarking against industry standards. IT budget management at portfolio scale ensures that IT spending is deliberate, that leadership understands what technology costs and why, and that cost optimization opportunities are systematically captured.

## When to Use
- Annual IT budget planning cycle — building next year's IT budget
- Monthly IT spend review — actuals vs. budget
- Cost optimization analysis — where can IT spend be reduced without reducing capability?
- A new IT initiative is being proposed — what does it cost and is it in budget?
- IT spending is growing faster than the business — investigation needed
- Board or investor preparation — what does IT cost per employee?

## IT Budget Framework

```
IT spend categories:
  Software / SaaS (OpEx — recurring):
    M365: Per-user per-month
    Security tools: Per-user or flat
    Business applications (QB, Bill.com, AdvancedMD, Monday.com, GHL, Covercy)
    Monitoring, backup, and management tools
    
  Security (OpEx):
    Security awareness training platform
    Vulnerability scanning tools
    Penetration testing (annual — professional services)
    
  Cloud infrastructure (OpEx):
    Azure / AWS: Monthly variable
    
  Hardware / CapEx:
    Server hardware, network equipment (firewall, switches, WAPs), laptops
    CapEx threshold: Assets >$2,500, >2-year useful life → capitalize
    IT equipment depreciation: Laptops 3 years, network gear 5-7 years
    
  IT professional services:
    Implementation partners, security assessments, data migration
    
Industry benchmark — IT spend as % of revenue:
  Healthcare (Allevio): 3-5% of revenue (HIPAA compliance drives higher IT spend)
  Financial services / PE (MBL): 2-4% of revenue
  Oil & gas (HIVE): 1-2% of revenue
  
  Cost per user benchmark (all-in IT cost / total employees):
    Light IT (SaaS-only): $1,500-$2,500/user/year
    Standard IT: $2,500-$4,000/user/year
    Healthcare (HIPAA + clinical systems): $3,500-$6,000/user/year

Budget approval thresholds:
  Unbudgeted expense <$2K: Dr. Lewis discretion
  Unbudgeted expense $2K-$5K: CEO notification
  CapEx or unbudgeted >$5K: CEO approval
  CapEx or major initiative >$25K: Matt Mathison approval
```

## Output Format

```markdown
# IT Budget Plan — <Company Name> — FY [YYYY]
**Prepared:** [Date] | **By:** Dr. John Lewis
**Total employees:** [N] | **IT cost per user:** $[X]/year

---

## Budget Summary

| Category | Annual budget | Monthly avg | YTD actuals | Variance |
|---------|-------------|-----------|-----------|---------|
| Software / SaaS | $[X] | $[X] | $[X] | [+/-X%] |
| Security | $[X] | $[X] | | |
| Cloud infrastructure | $[X] | $[X] | | |
| Hardware / CapEx | $[X] (annualized) | | | |
| IT professional services | $[X] | | | |
| **Total IT spend** | **$[X]** | **$[X]** | **$[X]** | **[+/-X%]** |

**IT spend as % of revenue:** [X%] — Benchmark for [industry]: [X%]
**IT cost per user:** $[X]/year — Benchmark: $[X-Y]/year

---

## SaaS / Software Detail

| Tool | Category | Users | Monthly | Annual | Renewal date |
|------|---------|-------|---------|--------|------------|
| Microsoft 365 | Productivity | 18 | $396 | $4,752 | [Date] |
| QuickBooks Online | Finance | 4 | $80 | $960 | Rolling |
| Bill.com | Finance | 3 | $149 | $1,788 | Rolling |
| AdvancedMD (Allevio) | EHR/RCM | 12 | $[X] | $[X] | [Date] |
| Monday.com | PM | 8 | $128 | $1,536 | [Date] |
| Krista.ai | AI Orchestration | — | $[X] | $[X] | |
| **SaaS total** | | | **$[X]** | **$[X]** | |

**Renewals next 90 days:** [List tools with renewal dates — evaluate before auto-renew]

---

## Cost Optimization Opportunities

| Item | Current cost | Action | Savings | Effort |
|------|------------|--------|---------|--------|
| [N unused M365 licenses] | $[X]/month | Remove | $[X]/month | 1 hr |
| [Duplicate tool] | $[X]/month | Consolidate | $[X]/month | 4 hrs |

**Total identified savings:** $[X]/month = $[X]/year

---

## CapEx Plan

| Item | Purpose | Cost | Planned date | Approval needed |
|------|---------|------|------------|----------------|
| [Clinic B network] | Allevio clinic expansion | $[X] | [Date] | CEO |
| [Server replacement] | File server EOL | $[X] | Q3 | Matt Mathison |

---

## Matt Mathison Brief (annual budget submission or >$25K CapEx)

[Company] IT budget FY[YYYY]: $[X] total ($[X]/user/year vs. benchmark $[X-Y]). Key investments: [Top 2-3]. Savings identified: $[X]/year. CapEx requiring approval: [Items].
```

## Output Contract
- IT budget is built annually and reviewed monthly — variances >10% require an explanation; the monthly review takes 30 minutes; Dr. Lewis is accountable for staying within budget unless CEO-approved otherwise
- CapEx and OpEx classified correctly — assets >$2,500 with >2-year life are capitalized; controller is involved in CapEx classification; hardware is logged in ops-equipment-tracker
- Renewal dates tracked 90 days in advance — tools that auto-renew without evaluation lock in another year of cost without a decision; 90-day advance tracking provides leverage to negotiate or switch
- HITL required: Dr. Lewis owns IT budget; CEO approval for unbudgeted >$5K or CapEx >$5K; Matt Mathison for CapEx or major initiative >$25K; annual budget presented to CEO and Matt Mathison

## System Dependencies
- **Reads from:** QuickBooks (IT expenses), Bill.com (IT vendor payments), vendor contracts and renewal dates, ops-equipment-tracker (CapEx asset records)
- **Writes to:** IT budget plan (SharePoint/Ops/<Company>/IT/Budget/); monthly variance report; renewal calendar; CapEx log
- **HITL Required:** Dr. Lewis owns budget; CEO for unbudgeted >$5K; Matt Mathison for >$25K; annual budget to Matt Mathison

## Test Cases
1. **Golden path:** Allevio FY2027 IT budget → Revenue $4.2M projected; healthcare benchmark 3-5% = $126K-$210K; current run rate $148K (3.5% — within benchmark); SaaS $92K + Security $18K + Cloud $12K + CapEx $15K (clinic B) + Professional services $11K = $148K; cost per user 24 employees = $6,167 (slightly above benchmark — review optimization); savings found: 3 unused QB licenses + 1 redundant PM tool = $1,560/year; clinic B network CapEx $15K → CEO approved; budget filed; monthly review scheduled
2. **Edge case:** AdvancedMD announces 20% price increase at renewal → Options: negotiate multi-year rate hold, accept increase, evaluate alternatives (high switching cost ~$50K+ for EHR migration); recommendation: negotiate first; if held firm, accept and update budget; present to CEO; Matt Mathison if annual contract >$25K
3. **Adversarial:** "Cut IT budget 30% this year" → Honest analysis: show what 30% cut eliminates (security training = HIPAA compliance risk at Allevio; monitoring = blind to outages; unused license removal = only 5-10% savings available without capability loss); identify 10-15% that can be cut without impact; present the real tradeoff of any deeper cut

## Audit Log
Annual IT budget plans retained by year. Monthly actuals and variances retained. Renewal decisions retained. CapEx approvals retained permanently. Matt Mathison budget presentations retained.

## Deprecation
Retire when portfolio companies have dedicated IT directors who own IT budget planning — with Dr. Lewis reviewing portfolio-wide AI/technology investment and presenting quarterly IT investment summary to Matt Mathison.
