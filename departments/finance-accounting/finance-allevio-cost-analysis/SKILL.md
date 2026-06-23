---
name: finance-allevio-cost-analysis
description: "Analyze costs and margins for Allevio's MSO/healthcare business. Use when the user says 'Allevio cost', 'Allevio margin', 'Allevio gross margin', 'clinical cost', 'cost per member', 'PMPM cost', 'cost of care', 'Allevio COGS', 'Allevio cost of goods sold', 'Allevio operating cost', 'clinical operating cost', 'Allevio cost analysis', 'Allevio cost breakdown', 'Allevio unit economics', 'cost structure Allevio', 'gross margin analysis Allevio', 'clinical staff cost', 'clinical labor cost', 'cost per enrolled employee', 'Allevio clinical efficiency', 'clinical program cost', 'Allevio cost model', 'break even Allevio', 'Allevio profitability', 'Allevio contribution margin', 'cost reduction Allevio', 'PMPM margin', 'margin per employer', 'Allevio cost per employer', or 'Allevio cost benchmarking'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly>] [--action <analyze|report|benchmark|model>] [--employer <code|all>]"
---

# Finance Allevio Cost Analysis

Analyze costs and margins for Allevio's MSO/healthcare business — calculating gross margin per PMPM, tracking clinical delivery costs as aggregate line items, and identifying unit economics trends. This skill handles aggregate financial analysis only; all cost data is at the employer-aggregate or program-aggregate level, never at the individual member level. HIPAA is absolute: Dr. Lewis reviews all Allevio cost data and content before it is finalized.

## When to Use
- Monthly gross margin calculation (PMPM revenue − PMPM COGS)
- Quarterly unit economics review (cost per enrolled employee trend)
- Identifying cost structure shifts that require entity CEO attention
- Annual budget: COGS modeling by enrollment scenario

## Allevio Cost Analysis Framework

```
ALLEVIO COST STRUCTURE:

  COGS (Cost of Goods Sold) — direct service delivery costs:
    Clinical staff labor: providers, nurses, care coordinators employed by Allevio
    Clinical program costs: lab; diagnostics; pharmacy (aggregate spend; no per-member breakdown)
    AdvancedMD billing costs: billing platform fees; Marshall Medical Billing fees
    Care delivery platform: clinical tools and software used in service delivery
    
    NOTE: Dr. Lewis sees only aggregate COGS line items. Clinical leadership provides the
    breakdown (clinical labor total; program costs total; billing costs total). Dr. Lewis
    does NOT access individual member data, individual clinical encounters, or per-member cost.
    Clinical cost is always presented as: total clinical labor this month = $X; total program
    cost this month = $X; etc. Never: cost per member by name.
    
  GROSS PROFIT = Total PMPM Revenue − Total COGS
  GROSS MARGIN % = Gross Profit ÷ Total Revenue
  Gross margin target: ≥40%
  
  G&A (General & Administrative — below gross profit line):
    Entity CEO compensation; admin; office; technology (non-clinical); professional services (legal; accounting)
    
  OPERATING INCOME (EBITDA proxy) = Gross Profit − G&A
  
KEY UNIT ECONOMICS:
  PMPM Revenue: total revenue ÷ total enrolled employees ÷ months (blended PMPM across employer mix)
  PMPM COGS: total COGS ÷ total enrolled employees ÷ months
  PMPM Gross Profit: PMPM Revenue − PMPM COGS
  
  Gross margin ≥40%: healthy; Allevio is delivering value with margin
  Gross margin 35-40%: watch; efficiency improvement needed
  Gross margin <35%: problem; entity CEO + Dr. Lewis investigate immediately; Matt Mathison briefed
  
COST EFFICIENCY LEVERS:
  Clinical labor utilization: are providers fully utilized? (ratio: enrolled EE ÷ clinical FTE)
  Program cost per enrolled EE: is aggregate program spend growing faster than enrollment?
  Billing platform efficiency: AdvancedMD billing cost as % of revenue (benchmark: <2%)
  
HIPAA BOUNDARY IN COST ANALYSIS:
  All clinical cost data = aggregate totals (not per-member, not per-condition, not by diagnosis)
  Dr. Lewis reviews cost reports from clinical leadership for HIPAA compliance before using in models
  If a cost report includes individual encounter data or per-member breakdowns → Dr. Lewis returns it
  to clinical leadership and asks for re-aggregated summary format
  Clinical leadership: provides clinical cost inputs in aggregate format only
```

## Output Format

```markdown
# Allevio Cost Analysis — [Month/Quarter Year]
**Prepared by:** Dr. Lewis | **HIPAA:** Aggregate employer/program level only ✅

---

## Income Statement Summary (Aggregate)

| Line | This Period | Budget | Margin % | Trend |
|------|-----------|--------|---------|-------|
| Total Revenue (PMPM × enrolled EE) | $X | $X | | |
| COGS — Clinical Labor | ($X) | ($X) | X% of rev | |
| COGS — Clinical Programs | ($X) | ($X) | X% of rev | |
| COGS — Billing Platform | ($X) | ($X) | X% of rev | |
| **Gross Profit** | **$X** | **$X** | **X%** | ✅/⚠️/🔴 |
| G&A | ($X) | ($X) | | |
| **Operating Income** | **$X** | **$X** | | |

---

## Unit Economics

| Metric | This Period | Prior Period | Target | Status |
|--------|-----------|-------------|--------|--------|
| Enrolled employees | XX | XX | | |
| Blended PMPM Revenue | $X | $X | | |
| Blended PMPM COGS | $X | $X | | |
| **PMPM Gross Profit** | **$X** | **$X** | | |
| **Gross Margin %** | **X%** | **X%** | **≥40%** | ✅/⚠️/🔴 |

*All cost data is aggregate program-level. No individual member data. HIPAA compliant.*
```

## Output Contract
- Gross margin is the operating discipline signal for Allevio — when gross margin is consistently ≥40%, Allevio is successfully translating PMPM revenue into profit after delivering clinical services; when gross margin compresses below 40%, the root cause is almost always one of: clinical labor utilization is low (providers have capacity but enrollment hasn't grown to fill it — a growth problem), program costs are scaling faster than enrollment (a purchasing efficiency problem), or billing platform costs are misaligned with revenue (a contracts problem); Dr. Lewis presents the gross margin trend monthly and does not wait until the margin is below 35% to flag it — a 2-month trend of margin compression from 43% to 40% is the right time to investigate, not after it reaches 36%
- Clinical cost inputs come to Dr. Lewis from clinical leadership in aggregate format — Dr. Lewis does not design or build cost tracking at the clinical encounter or member level; that is clinical leadership's domain; Dr. Lewis receives: "total clinical labor cost for June: $X"; "total clinical program spend for June: $X"; "AdvancedMD billing fees for June: $X"; from those aggregate inputs, Dr. Lewis calculates gross margin, PMPM COGS, and the trend analysis; this division of responsibility keeps financial reporting HIPAA-compliant by design, not just by policy
- HITL required: gross margin below 40% → entity CEO + Dr. Lewis immediate review; below 35% → Matt Mathison briefed; COGS overage >15% vs. budget → entity CEO explains; clinical cost report format → Dr. Lewis verifies aggregate-only before use; PMPM COGS trend analysis → entity CEO + Dr. Lewis quarterly; annual budget COGS model → entity CEO + clinical leadership provide inputs; cost reduction initiatives → entity CEO approves; Matt Mathison sees Allevio gross margin monthly in portfolio dashboard

## System Dependencies
- **Reads from:** QuickBooks (Allevio COGS and G&A accounts; income statement); clinical leadership aggregate cost reports (clinical labor; program costs; billing fees — aggregate format only; no member data); finance-allevio-revenue-recognition (revenue inputs); AdvancedMD billing summary (aggregate billing cost data from CS lead)
- **Writes to:** QuickBooks (COGS journal entries from clinical leadership inputs); Allevio monthly P&L (gross margin; unit economics); finance-portfolio-dashboard (Allevio gross margin section); finance-kpi-financial-tracker (gross margin %; PMPM metrics); finance-board-report-builder (Allevio unit economics section); entity CEO cost reports
- **HITL Required:** Gross margin <40% → entity CEO + Dr. Lewis immediate; <35% → Matt Mathison; COGS overage >15% → entity CEO explains; clinical cost format → Dr. Lewis verifies; unit economics quarterly → entity CEO + Dr. Lewis; budget COGS model → entity CEO + clinical leadership inputs; cost reduction → entity CEO approves

## Test Cases
1. **Golden path:** Allevio Q2 2026 cost analysis. Enrolled employees: 171 (across 8 employers). Total Q2 revenue: $144,720 (171 EE × $282 blended PMPM × 3 months). COGS from clinical leadership (aggregate): Clinical labor: $51,480 (3 months); Clinical programs: $29,880; AdvancedMD/billing: $4,342. Total COGS: $85,702. Gross profit: $59,018. Gross margin: 40.8% ✅. G&A: $28,500. Operating income: $30,518. PMPM COGS: $85,702 ÷ (171 × 3) = $167/member-month. PMPM gross profit: $282 - $167 = $115/member-month. Report posted to portfolio dashboard. Entity CEO briefed: "Gross margin 40.8% — in target range; PMPM cost stable."
2. **Edge case:** Clinical leadership sends a cost breakdown report that includes a line item "per-member engagement hours (average 4.2 hrs/member)" in addition to the aggregate cost totals → Dr. Lewis: "I need clinical leadership to resubmit the cost report without the per-member engagement metric. The format that works for financial reporting is: total clinical labor cost (aggregate); total program spend (aggregate); total billing fees. Any per-member calculation — even 'average hours per member' without identifying any individual — creates a data pathway I'm not comfortable using in financial records because it implies individual-level tracking. The cost analysis can be done entirely from aggregate totals. I'll request the corrected format and re-run the analysis once received."
3. **Adversarial:** Entity CEO asks Dr. Lewis to model the financial impact of adding 20 enrolled employees by improving clinical staff productivity ("if we can serve 20 more members with the same clinical team") → Dr. Lewis: "Happy to model this. Current clinical labor COGS: $51,480/quarter for 171 enrolled employees (3 months) = $300 per enrolled employee per quarter ($100 PMPM COGS for clinical labor alone). If clinical team capacity can absorb 20 more enrolled employees with no additional clinical FTE: revenue adds 20 × $285 PMPM × 3 months = $17,100. Additional COGS: minimal (some program costs; negligible labor). Incremental gross profit: ~$15,900 at 93% incremental margin. For the full year, that's ~$63,600 additional gross profit from 20 enrolled employees at no additional clinical labor cost. The leverage is significant — clinical labor is the largest COGS line, and once the fixed-cost base is covered, incremental enrollment flows almost entirely to gross profit. The constraint is whether the clinical team can actually maintain quality of care at higher enrollment density — that's the entity CEO and clinical leadership's call."

## Audit Log
Monthly cost analysis records (aggregate only; permanent). Clinical leadership cost report receipts (aggregate format). HIPAA format verification records for clinical cost inputs. Gross margin monthly tracking series. PMPM unit economics historical data. Below-threshold margin investigations. Entity CEO + Matt Mathison notification records. Annual budget COGS model inputs.

## Deprecation
Gross margin targets reviewed annually with budget process. PMPM COGS benchmarks reviewed when clinical model changes. Cost category structure reviewed when Allevio service model changes. Clinical cost input format reviewed when clinical leadership reporting process changes. HIPAA boundary reviewed when clinical data handling regulations change.
