---
name: supply-chain-kpi-dashboard
description: "Build a KPI dashboard for the supply chain and procurement function. Use when the user says 'supply chain dashboard', 'procurement dashboard', 'supply chain KPIs', 'procurement metrics', 'supplier metrics dashboard', 'supply chain performance', 'logistics dashboard', 'how is procurement performing', 'supply chain scorecard', or 'measure supply chain health'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|all>] [--audience <executive|operations|procurement>]"
---

# Supply Chain KPI Dashboard

Build a supply chain and procurement KPI dashboard that gives Dr. Lewis and Matt Mathison real-time visibility into procurement spend, supplier performance, inventory health, and logistics efficiency. Supply chain without measurement is supply chain without management. The dashboard connects purchasing decisions to business outcomes and flags problems before they become crises.

## When to Use
- Setting up supply chain visibility for MBL or a portfolio company
- Matt Mathison wants a procurement and supply chain health summary
- Preparing for a quarterly operations review
- Supply chain is underperforming — need to identify where and why
- Supplier issues or stockouts are occurring — need a systematic view

## KPI Framework

```
Four quadrants of supply chain performance:

1. Cost efficiency:
   - Procurement spend vs. budget
   - Cost savings achieved vs. target
   - Price variance (PO price vs. market benchmark)
   - Maverick spend (% outside approved channels)
   - Freight cost as % of COGS

2. Supplier performance:
   - On-time delivery rate (OTDR)
   - Supplier quality defect rate
   - Invoice accuracy rate
   - Supplier performance score (avg across active suppliers)
   - Single-source risk count

3. Inventory health:
   - Stockout rate
   - Inventory turnover
   - Days of supply on hand
   - Slow-moving inventory % of value
   - Fill rate (% of orders shipped complete)

4. Operational efficiency:
   - PO cycle time (request to PO issued)
   - PO-to-invoice match rate (3-way match pass rate)
   - Open PO aging (% overdue)
   - Emergency/air freight % of shipments
   - Contract coverage (% of spend under contract)
```

## Output Format

```markdown
# Supply Chain KPI Dashboard — <Entity>
**Period:** <Month / Quarter> | **Owner:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE / Portfolio summary>
**Audience:** Executive / Operations / Procurement

---

## TL;DR (Top-of-dashboard summary)

| Status | KPI | Value | Target | Trend |
|--------|-----|-------|--------|-------|
| 🔴 Below target | Stockout rate | 4.2% | <2% | ↑ Worsening |
| 🟡 Near target | On-time delivery | 91% | ≥95% | → Stable |
| ✅ On target | Procurement savings | $48K | $40K | ↑ Exceeding |
| ✅ On target | 3-way match rate | 97% | ≥95% | → Stable |
| 🟡 Near target | Contract coverage | 68% | ≥80% | ↑ Improving |

**This month's focus:** Stockout rate critical — 3 items below safety stock at Allevio; immediate POs issued

---

## Section 1: Cost & Spend

| KPI | This month | This quarter | YTD | Budget | Status |
|-----|-----------|------------|-----|--------|--------|
| Total procurement spend | $X | $X | $X | $X | ✅ |
| Savings vs. prior period | $X (X%) | $X | $X | Target: $40K | ✅ |
| Maverick spend | X% | X% | X% | Target: <5% | 🟡 |
| Freight cost % of COGS | X% | X% | X% | Target: <3% | ✅ |
| Air freight (emergency) spend | $X | $X | $X | Target: $0 | 🔴 |

**Spend by entity:**
| Entity | Monthly spend | YTD | Budget |
|--------|------------|-----|--------|
| Allevio | $X | $X | $X |
| HIVE | $X | $X | $X |
| MBL | $X | $X | $X |

---

## Section 2: Supplier Performance

| KPI | This quarter | Prior quarter | Target | Status |
|-----|------------|------------|--------|--------|
| Portfolio OTDR | 91% | 89% | ≥95% | 🟡 |
| Defect rate | 1.8% | 2.3% | <2% | ✅ |
| Invoice accuracy | 97% | 96% | ≥98% | 🟡 |
| Avg supplier score | 3.7/5.0 | 3.5/5.0 | ≥4.0 | 🟡 |

**Supplier performance by tier:**
| Tier | Count | Avg score | OTDR | Action |
|------|-------|---------|------|--------|
| A (Strategic) | <N> | X.X | X% | [Issue if any] |
| B (Preferred) | <N> | X.X | X% | [Issue if any] |
| C (Spot) | <N> | X.X | X% | Not tracked |

**Supplier alerts:**
- 🔴 [Supplier name]: OTDR 78% (below PIP threshold of 80%) → performance improvement plan activated
- 🟡 [Supplier name]: Contract expires <date> → renewal discussion needed

---

## Section 3: Inventory Health

| KPI | Current | Target | Status |
|-----|---------|--------|--------|
| Stockout rate | 4.2% | <2% | 🔴 |
| Fill rate | 97.1% | ≥98% | 🟡 |
| Inventory turnover | 5.8× | ≥6× | 🟡 |
| Days of supply | 38 days | 30-45 days | ✅ |
| Slow-moving inventory (>90 days) | 7.3% of value | <5% | 🟡 |

**Stockout detail:**
| SKU | Item | Entity | Days out of stock | Impact | Action |
|-----|------|--------|-----------------|--------|--------|
| [SKU] | [Item] | Allevio | 3 days | Patient care impact: Low | PO issued; ETA <date> |
| [SKU] | [Item] | HIVE | 1 day | Production: Minor | In transit |

---

## Section 4: Operational Efficiency

| KPI | This month | Target | Status |
|-----|-----------|--------|--------|
| PO cycle time (request → PO) | <N> days | <2 days | ✅ |
| 3-way match pass rate | 97% | ≥95% | ✅ |
| Open PO overdue rate | 8% | <5% | 🟡 |
| Emergency freight % | 3.1% | <2% | 🔴 |
| Contract coverage | 68% of spend | ≥80% | 🟡 |

**Overdue POs:**
| PO # | Supplier | Entity | Due date | Days overdue | Action |
|------|---------|--------|---------|------------|--------|
| [PO] | [Supplier] | HIVE | <date> | 6 days | Supplier contacted; ETA confirmed |

---

## Month-over-Month Trend

| KPI | M-2 | M-1 | This month | Trend |
|-----|-----|-----|-----------|-------|
| OTDR | 88% | 89% | 91% | ↑ Improving |
| Stockout rate | 2.1% | 3.4% | 4.2% | ↓ Worsening |
| Savings YTD | $32K | $41K | $48K | ↑ On track |
```

## Output Contract
- TL;DR always first — Matt Mathison should know the health status in 30 seconds
- Red metrics always have an action attached — a red metric without an action is just a problem without a plan
- Stockouts always itemized — a 4% stockout rate is less actionable than "3 specific items at Allevio need immediate POs"
- Emergency freight always tracked separately — it's a supply planning failure indicator, not a routine logistics metric
- HITL required: Dr. Lewis builds and maintains dashboard; Matt Mathison reviews monthly; supplier alerts and stockout actions reviewed by Dr. Lewis; performance improvement plans activated by Dr. Lewis; any critical supply chain failure (patient care impact at Allevio; well production impact at HIVE) escalated to Matt Mathison immediately

## System Dependencies
- **Reads from:** QuickBooks (spend), Bill.com (invoice data), PO tracker, supplier scorecard, inventory system
- **Writes to:** Supply chain dashboard (Metabase); executive summary (SharePoint/Operations)
- **HITL Required:** Dr. Lewis maintains; Matt Mathison monthly review; critical alerts immediate escalation; supplier PIP activation by Dr. Lewis

## Test Cases
1. **Golden path:** Monthly supply chain KPI dashboard → 4 sections; TL;DR: 1 red (stockout rate 4.2%), 3 yellow, 1 green; stockout detail: 3 items at Allevio — 2 POs already issued; supplier alerts: 1 supplier OTDR below PIP threshold; action: activate PIP; savings: $48K YTD vs. $40K target (exceeding); Matt Mathison summary: 1 red critical action in progress; otherwise healthy quarter
2. **Edge case:** Dashboard data is incomplete because one inventory system hasn't been integrated yet → show what's available; mark incomplete sections clearly ("Data pending — manual estimate"); incomplete data is better disclosed than hidden; schedule the integration as a supply chain data project
3. **Adversarial:** A department head disputes the stockout rate data ("we didn't actually run out — we just ordered late") → a late order that arrived before full depletion is a near-miss, not a clean success; track near-misses (days of supply fell below safety stock) as a leading indicator even if stockout didn't technically occur; leading indicators catch problems before they become crises; the data is correct — the operational interpretation may differ

## Audit Log
Dashboard data retained monthly. Supplier performance scores retained. Stockout incidents retained. Action items documented and tracked.

## Deprecation
Retire when MBL's portfolio companies have ERP systems with native supply chain analytics dashboards (NetSuite, SAP, etc.) providing automated real-time KPI visibility.
