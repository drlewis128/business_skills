---
name: legal-budget-tracker
description: "Track and manage the legal department budget. Use when the user says 'legal budget', 'legal spend', 'legal costs', 'attorney fees', 'legal expenses', 'legal department costs', 'outside counsel budget', 'legal spend variance', 'legal forecast', or 'how much are we spending on legal'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name|all>] [--period <monthly|quarterly|annual>] [--mode <actual|forecast|variance>]"
---

# Legal Budget Tracker

Track and manage legal department spending for MBL Partners and portfolio companies. Legal costs are a significant operating expense — particularly for healthcare (Allevio HIPAA compliance, employment), oil & gas (HIVE regulatory), and PE (MBL M&A, governance). Unbudgeted legal spend reduces operating margins and surprises LPs. This skill tracks legal spend by entity and category, identifies variances, and provides forecasts.

## When to Use
- Monthly legal spend review
- Annual legal budget planning
- Significant unbudgeted legal matter arises (litigation, M&A)
- Quarterly LP reporting preparation
- Evaluating whether to hire in-house counsel vs. continue outside counsel model

## Legal Spend Categories

| Category | Description | Typical MBL Entity |
|---------|------------|-------------------|
| **Corporate / Governance** | Entity maintenance, resolutions, agreements | MBL Partners |
| **M&A** | Deal diligence, transaction documents | MBL Partners |
| **Employment / HR** | Employment agreements, terminations, disputes | All entities |
| **Healthcare Compliance** | HIPAA, CMS, state licensing | Allevio |
| **IP** | Trademark, patent, copyright | All entities |
| **Litigation** | Active lawsuits, arbitrations | As needed |
| **Real Estate** | Lease review, property transactions | All entities |
| **Regulatory / Compliance** | General compliance work, filings | All entities |

## Output Format

```markdown
# Legal Budget Report — <Entity / Portfolio>
**Period:** <month/quarter/year> | **Date:** <date>
**Prepared by:** Dr. John Lewis

---

## Executive Summary

**Total legal spend YTD:** $<amount> vs. $<budget> budgeted (<N>% used)
**Variance:** $<amount> over/under budget
**Key driver of variance:** <describe — major litigation, unexpected M&A diligence, etc.>
**Forecast to year-end:** $<amount>

---

## Legal Spend by Entity

| Entity | Annual Budget | YTD Actual | % Used | Variance | Forecast |
|--------|------------|-----------|--------|---------|---------|
| MBL Partners | $<amount> | $<amount> | <N>% | +/- $<amount> | $<amount> |
| Allevio | $<amount> | $<amount> | <N>% | | |
| HIVE Partners | $<amount> | $<amount> | <N>% | | |
| Column6 | $<amount> | $<amount> | <N>% | | |
| **Total Portfolio** | **$<amount>** | **$<amount>** | **<N>%** | | |

---

## Legal Spend by Category — YTD

| Category | Budget | Actual | Variance | Notes |
|---------|--------|--------|---------|-------|
| Corporate / Governance | $<amount> | $<amount> | | |
| M&A | $<amount> | $<amount> | | Q1 acquisition diligence |
| Employment | $<amount> | $<amount> | 🔴 +$15K over | Allevio employment claim — ongoing |
| Healthcare Compliance | $<amount> | $<amount> | | Annual HIPAA assessment |
| IP | $<amount> | $<amount> | | |
| Litigation | $0 budgeted | $<amount> | 🔴 Unbudgeted | New Allevio employment lawsuit |
| Regulatory | $<amount> | $<amount> | | |
| **Total** | **$<amount>** | **$<amount>** | | |

---

## Outside Counsel Spend by Firm — YTD

| Firm | Specialty | YTD Fees | Matters | Avg Rate |
|------|---------|---------|---------|---------|
| <Firm A> | Corporate | $<amount> | 3 | $<rate>/hr |
| <Firm B> | Employment | $<amount> | 1 active | |
| <Firm C> | Healthcare | $<amount> | 2 | |
| **Total** | | **$<amount>** | | |

---

## In-House vs. Outside Counsel Analysis

| Option | Annual Cost | Pros | Cons |
|--------|-----------|------|------|
| Continue outside counsel model | $<actual spend> | Flexibility, specialty access | High per-hour cost; no institutional knowledge build |
| Hire in-house General Counsel (if spend > $500K) | ~$200-350K salary + benefits | Institutional knowledge, faster response, cost savings at volume | Fixed cost; less specialty depth |
| Fractional GC | $80-150K/yr | Specialty + availability without full cost | Less available than in-house |

**Recommendation:** <based on spend level and complexity>

---

## Budget Variance Alerts

| Alert | Entity | Category | Variance | Action Required |
|-------|--------|---------|---------|---------------|
| 🔴 Over budget | Allevio | Employment (litigation) | +$35K | Reassess litigation reserve; update legal budget |
| 🟡 Trending over | MBL | M&A | +$10K | Q2 acquisition larger than planned; monitor |
```

## Output Contract
- Unbudgeted litigation always flagged immediately — litigation spend is unpredictable and must be reserved in financial statements
- In-house vs. outside counsel ROI analyzed annually when spend exceeds $300K/entity
- Per-entity spend always tracked separately — LP reporting and operating statements require entity-level legal costs
- Variance alerts always escalated to Dr. Lewis and Matt Mathison when >20% over budget
- HITL required: Dr. Lewis reviews monthly; Matt Mathison reviews quarterly; Legal budget included in entity P&Ls; Finance team reconciles with Bill.com

## System Dependencies
- **Reads from:** Outside counsel invoices (Bill.com), litigation reserves (QuickBooks), legal matter tracker (provided)
- **Writes to:** Legal spend report (for Dr. Lewis, Matt Mathison, and Finance)
- **HITL Required:** Dr. Lewis reviews and approves; Matt Mathison notified on significant variances; Finance reconciles

## Test Cases
1. **Golden path:** Q2 legal budget review → MBL Partners corporate spend on track, Allevio employment spend 35% over budget due to new litigation (update reserve, add $50K to litigation line), HIVE regulatory at 80% with 2 quarters remaining (monitor), total portfolio legal spend forecasted to exceed budget by $60K (inform Matt Mathison)
2. **Edge case:** Major unbudgeted M&A opportunity arises requiring $150K in legal diligence → present to Matt Mathison with cost analysis; if deal proceeds, create supplemental legal budget; do not simply absorb into operating budget without approval
3. **Adversarial:** Business unit says "the legal bill was for our department so it should come from our budget, not the legal budget" → all external legal fees flow through the central legal budget for management visibility and outside counsel guideline compliance; departmental charge-back can be done for reporting purposes, but approval remains with Dr. Lewis

## Audit Log
Monthly legal spend reports retained. Annual legal budget vs. actuals retained. Invoice approval log maintained.

## Deprecation
Retire when entity deploys legal spend management integrated with accounting system (Bill.com or QuickBooks) with automated category coding and budget alerts.
