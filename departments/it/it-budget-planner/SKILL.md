---
name: it-budget-planner
description: "Build and manage the IT budget. Use when the user says 'IT budget', 'technology budget', 'IT spending plan', 'IT capex', 'IT opex', 'IT cost forecast', 'what should we budget for IT', or 'technology spend planning'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <annual|quarterly>] [--format <brief|full|board>]"
---

# IT Budget Planner

Build and manage the IT budget. Most entities either under-invest in IT (creating debt, security risk, and productivity drag) or spend without a plan (paying for redundant tools and idle infrastructure). A well-structured IT budget connects technology spend to business outcomes and makes the case for the right level of investment.

## When to Use
- Annual budget planning cycle
- Quarterly IT spend review
- Proposing a new technology investment
- Board or Finance reporting on IT costs
- M&A — assessing technology budget for a portfolio company

## IT Budget Categories

| Category | Description | Typical % of IT Budget |
|---------|------------|----------------------|
| **Personnel** | IT staff salaries, benefits, contractors | 40-60% |
| **SaaS / Software** | Subscription licenses, productivity tools | 15-25% |
| **Infrastructure** | Cloud, servers, network hardware | 10-20% |
| **Security** | Tools, assessments, training, insurance | 5-15% |
| **Hardware** | Endpoints, peripherals, replacement cycle | 5-10% |
| **Professional Services** | Consultants, implementations, audits | 5-15% |
| **Training** | IT staff development, certification | 2-5% |
| **Contingency** | Unplanned needs, incidents | 5-10% |

## IT Spend Benchmarks (by company size)

| Company Size | IT Spend as % of Revenue | Notes |
|------------|--------------------------|-------|
| SMB (< $10M revenue) | 4-8% | Higher % due to less scale |
| Mid-market ($10-100M) | 2-5% | |
| Enterprise (> $100M) | 1.5-3% | More efficient at scale |
| Healthcare (Allevio) | 4-7% | Higher due to compliance requirements |
| Financial services | 5-10% | Security and compliance premium |

## Output Format

```markdown
# IT Budget Plan — <Entity>
**Period:** <FY / Quarter> | **Total IT Budget:** $<N> | **As % of Revenue:** <N>%

---

## Budget Summary

| Category | Last Year | This Year Proposed | Change | Notes |
|---------|---------|------------------|--------|-------|
| Personnel | $<N> | $<N> | +<N>% | New CSM hire |
| SaaS / Software | $<N> | $<N> | +<N>% | Krista.ai integration |
| Infrastructure (cloud) | $<N> | $<N> | -<N>% | Optimization actions |
| Security | $<N> | $<N> | +<N>% | New SIEM tool |
| Hardware | $<N> | $<N> | 0% | No major replacements |
| Professional Services | $<N> | $<N> | -<N>% | One-time project complete |
| Training | $<N> | $<N> | 0% | |
| Contingency (10%) | $<N> | $<N> | — | |
| **Total** | **$<N>** | **$<N>** | **+<N>%** | |

---

## Key Investments (New / Increased Spend)

| Investment | Category | Annual Cost | Business Justification | ROI / Benefit |
|-----------|---------|------------|----------------------|--------------|
| Krista.ai AI Orchestration | SaaS | $<N> | Core to AI strategy — orchestrates MBL systems | Meeting intelligence, workflow automation |
| SIEM / Security Monitoring | Security | $<N> | Cyber insurance requirement; active threat detection | Reduces breach risk |
| Cloud Reserved Instances | Infrastructure | $<N> upfront → saves $<N>/year | 1-year commitment at 35% discount | $<N> net savings vs. on-demand |

---

## Spend by Entity (Portfolio Allocation)

| Entity | IT Budget | Revenue | IT as % Revenue |
|--------|---------|---------|----------------|
| MBL Partners | $<N> | $<N> | <N>% |
| Allevio | $<N> | $<N> | <N>% |
| HIVE Partners | $<N> | $<N> | <N>% |

---

## Quarterly Phasing

| Category | Q1 | Q2 | Q3 | Q4 |
|---------|----|----|----|----|
| Personnel | $<N> | $<N> | $<N> | $<N> |
| SaaS | $<N> | $<N> | $<N> | $<N> |
| CapEx (hardware/infrastructure) | $<N> | — | $<N> | — |
| **Total** | $<N> | $<N> | $<N> | $<N> |

---

## Budget vs. Actual (YTD)

| Category | Budget YTD | Actual YTD | Variance | Status |
|---------|-----------|-----------|---------|--------|
| SaaS | $<N> | $<N> | -$<N> | Under budget (good) |
| Infrastructure | $<N> | $<N> | +$<N> | Over — investigate |
```

## Output Contract
- Every new or increased investment has a stated business justification and ROI — IT spend must be tied to outcomes
- Contingency always included (10% minimum) — IT surprises are not optional
- Budget always phased by quarter — lump-sum annual budgets hide timing issues
- HITL required: Finance reviews and approves final IT budget; Matt Mathison reviews for portfolio companies; Dr. Lewis owns IT budget for MBL

## System Dependencies
- **Reads from:** Prior-year IT spend data, software license costs, headcount plan, vendor contracts (provided)
- **Writes to:** Nothing (budget document for Finance and executive review)
- **HITL Required:** Finance approves IT budget; Dr. Lewis submits IT budget to Matt Mathison for MBL consolidated planning; any mid-year budget variance > $10K requires Finance notification

## Test Cases
1. **Golden path:** Annual IT budget for 25-person entity → $425K total (3.8% of $11M revenue), personnel $210K, SaaS $85K, cloud $55K, security $40K, hardware $15K, professional services $20K, phased quarterly; 3 new investments with ROI statements
2. **Edge case:** Entity has no historical IT spend data → builds from current license list, headcount × average IT cost benchmarks, and asset inventory; explicitly labels estimates vs. actuals and recommends tracking from this budget cycle forward
3. **Adversarial:** Finance wants to cut IT budget by 20% → runs impact analysis showing what would be cut (security tools first — highest risk), models the breach probability increase, presents the risk vs. savings tradeoff for Finance and Dr. Lewis to decide

## Audit Log
IT budgets retained by entity and fiscal year. Budget vs. actual tracked quarterly. Variance explanations documented.

## Deprecation
Retire when entity uses financial planning software (Mosaic, Planful, Adaptive Insights) with IT cost categories, actual integration, and automated variance reporting.
