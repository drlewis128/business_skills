---
name: finance-entity-pl-reporter
description: "Build monthly entity-level P&L reports for MBL Partners portfolio entities. Use when the user says 'P&L', 'profit and loss', 'income statement', 'entity P&L', 'entity financials', 'entity financial report', 'monthly financials', 'monthly P&L', 'entity income statement', 'revenue and expenses', 'entity revenue report', 'entity expense report', 'monthly close report', 'financial close', 'month-end report', 'Allevio P&L', 'Column6 P&L', 'HIVE P&L', 'how much did we make', 'how much did we spend', 'gross margin', 'operating expenses', 'EBITDA', 'entity financial performance', 'entity financial close', 'financials for the month', 'revenue minus expenses', 'are we profitable', 'profitability report', or 'financial statement'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--month <YYYY-MM>] [--action <build|review|close>] [--format <summary|detail>]"
---

# Finance Entity P&L Reporter

Build monthly entity-level P&L reports for MBL Partners portfolio entities — pulling revenue and expense data from QuickBooks, applying entity-specific cost structures, and delivering a BLUF-first financial summary to the entity CEO and Dr. Lewis. The P&L is the financial truth of whether the entity is building toward profitability or burning through capital — Dr. Lewis doesn't sugarcoat either direction.

## When to Use
- Monthly financial close (by 5th of following month; data; by 10th for report)
- Entity CEO monthly financial review
- Dr. Lewis entity financial monitoring
- Portfolio-level financial aggregation (inputs to finance-portfolio-dashboard)

## P&L Framework

```
ENTITY P&L STRUCTURES:

  ALLEVIO (Healthcare MSO):
    Revenue line:
      PMPM revenue: enrolled employers × enrolled EE × PMPM rate
      Other revenue: consulting or administrative fees (if applicable)
      HIPAA: aggregate enrollment counts; no individual member data; no health-condition-based cost allocation
      
    COGS (Cost of Revenue):
      Clinical delivery costs: provider costs; lab; supplies (aggregate; not per-member breakout in financial report)
      AdvancedMD platform fees
      Marshall Medical Billing fees
      
    Gross Profit = Revenue - COGS
    Gross Margin target: ≥40% (early stage; improving with scale)
    
    Operating Expenses:
      Sales & Marketing: AE comp; marketing spend; GoHighLevel; lead gen
      G&A: entity CEO comp; admin; office (if any); insurance
      Technology: systems; integrations
      Dr. Lewis / MBL oversight allocation (if applicable)
      
    EBITDA = Gross Profit - Operating Expenses
    
  COLUMN6 (CTV Platform):
    Revenue line:
      IO revenue: recognized at campaign delivery milestones (not at IO signature)
      Platform/data fees: any platform access fees (if applicable)
      
    COGS:
      Media costs: supply-side platform costs; publisher inventory (if applicable)
      Technology: DSP/SSP platform costs; data costs
      
    Gross Profit; Gross Margin target: ≥35%
    
    Operating Expenses:
      Sales: AE comp; agency relationship costs
      Marketing: demand gen; industry events; IAB memberships
      G&A: entity CEO; admin; infrastructure
      
    EBITDA
    
  HIVE PARTNERS (Oil & Gas):
    Revenue line:
      Production revenue: BOE produced × realized WTI price (from Covercy)
      Royalty income: overriding royalty interests (from Covercy)
      Total: Production + Royalty
      WTI trigger note: if realized WTI <$58 for 2+ consecutive months → flag in P&L
      
    COGS (Lease Operating Expense — LOE):
      Well operating costs; water disposal; compression; field labor
      
    Gross Profit (before LOE is "Revenue"; after LOE is "Net Operating Revenue")
    
    Operating Expenses:
      G&A: HIVE management; Covercy platform; professional services
      D&A: depletion/depreciation/amortization (if applicable)
      
    EBITDA (or net income for HIVE — simpler structure)
    
P&L CLOSE PROCESS:
  Day 1-5: Entity CEO or finance lead inputs all expenses in QuickBooks; revenue entries verified
  Day 5: Dr. Lewis pulls QuickBooks P&L; cross-references vs. prior month and budget
  Day 5-10: Dr. Lewis reviews for anomalies; flags any variance >10% vs. plan for entity CEO explanation
  Day 10: P&L report delivered to entity CEO + Matt Mathison portfolio dashboard input
  
ANOMALY FLAGS (automatic review triggers):
  Revenue variance >10% vs. plan: entity CEO explains before report delivery
  Expense line item >$5K not in budget: entity CEO confirms
  Gross margin decline >5% MoM: Dr. Lewis investigates
  Negative EBITDA trend for 3 consecutive months: Dr. Lewis + Matt Mathison
```

## Output Format

```markdown
# [Entity] Monthly P&L — [Month Year]
**Prepared by:** Dr. Lewis | **Source:** QuickBooks | **Status:** [Draft / Final]

---

## P&L Summary

| Line Item | Budget | Actual | Variance $ | Variance % |
|-----------|--------|--------|-----------|-----------|
| **Revenue** | $X | $X | +/-$X | +/-X% |
| Cost of Revenue (COGS) | $X | $X | | |
| **Gross Profit** | $X | $X | | |
| *Gross Margin* | X% | X% | | |
| Sales & Marketing | $X | $X | | |
| G&A | $X | $X | | |
| Technology | $X | $X | | |
| Total OpEx | $X | $X | | |
| **EBITDA** | $X | $X | +/-$X | +/-X% |

---

## Key Findings
1. [Variance explanation — what caused it — implications]
2.

---

## Flags for Entity CEO / Dr. Lewis
[Any variance >10%; unexpected expense; anomaly requiring explanation]
```

## Output Contract
- The P&L is the entity CEO's report card, and Dr. Lewis presents it as data — not as judgment; when Allevio's gross margin is 34% against a 40% target, Dr. Lewis leads with "here's what the data shows — gross margin is 34%, 6 points below target, driven by clinical delivery costs that came in $8K over plan this month"; the entity CEO then explains whether this is a one-time variance (a large employer with high initial utilization) or a structural issue (the cost of care per member is higher than modeled); Dr. Lewis records the explanation and flags it if the pattern persists
- Budget vs. actual discipline is more valuable at the expense level than the revenue level — revenue variances are often explainable by deal timing; expense variances are often indicators of process breakdown; when a G&A expense line is $6K over budget and the entity CEO doesn't know why, it means there's an unapproved purchase, a billing error, or a process that allowed spend without authorization; Dr. Lewis reviews every expense line >$5K that wasn't in the budget and requires an entity CEO explanation before the P&L is finalized
- HITL required: Allevio P&L → aggregate only; Dr. Lewis reviews before entity CEO delivery; revenue variance >10% → entity CEO explains before report delivery; expense >$5K unbudgeted → entity CEO confirms; gross margin decline >5% MoM → Dr. Lewis investigates; negative EBITDA 3 months → Dr. Lewis + Matt Mathison; entity CEO does not acknowledge P&L within 48 hours → Dr. Lewis follows up directly

## System Dependencies
- **Reads from:** QuickBooks (all entity P&L; revenue recognition; expense categorization); Covercy (HIVE production revenue; royalty income); AdvancedMD billing summary (Allevio; CS lead provides aggregate); entity CEO expense submissions; annual budget (budget vs. actual comparison)
- **Writes to:** Entity P&L reports (SharePoint → [Entity] → Finance → P&L → [YYYY-MM]); finance-portfolio-dashboard (revenue and EBITDA inputs); entity CEO monthly financial brief; Dr. Lewis financial tracking model; anomaly records
- **HITL Required:** Allevio aggregate confirmation; revenue variance >10% → entity CEO; unbudgeted expense >$5K → entity CEO; gross margin decline >5% → Dr. Lewis; negative EBITDA 3 months → Dr. Lewis + Matt Mathison; P&L delivery → entity CEO acknowledges

## Test Cases
1. **Golden path:** Allevio June 2026 P&L. Revenue: $94K actual vs. $90K plan (+4.4% ✅). COGS: $54K actual vs. $52K plan (+$2K — 1 new employer with high initial utilization; entity CEO explains; one-time). Gross profit: $40K (42.6% margin ✅ above 40% target). Sales & Marketing: $22K actual vs. $24K plan (-$2K — event postponed). G&A: $18K actual vs. $17K plan (+$1K — Dr. Lewis confirms entity CEO's professional development expense was approved). Technology: $6K on plan. Total OpEx: $46K vs. $48K plan. EBITDA: -$6K (plan: -$10K — better than plan; entity on track). P&L delivered to entity CEO June 10. No anomaly flags.
2. **Edge case:** HIVE P&L shows LOE (lease operating expense) $12K over plan for the month — entity CEO says "we had an unplanned workover on one well" → Dr. Lewis: "The workover is a legitimate capital event but it needs to be documented properly. If the workover restored production capacity, it may be capitalizable (not expensed in the month) — I'll check with the CPA. If it's a repair (not a restoration), it's an operating expense. I'm holding the P&L as Draft until we have the correct accounting treatment. The $12K variance is material (>10% of LOE budget) and I want the final treatment confirmed before delivery to Matt Mathison. Expected final P&L by June 12."
3. **Adversarial:** Entity CEO refuses to provide expense receipts for $4,200 in G&A claiming "it's all legitimate business expenses" → Dr. Lewis: "I believe they're legitimate — I'm not questioning your judgment. But the P&L process requires that any expense above $2,500 that wasn't in the monthly budget has a receipt in QuickBooks before I close the month. This isn't about trust — it's about audit readiness. If Matt Mathison or an external CPA asks for documentation on any expense in our records, I need to be able to produce it. The receipts can be uploaded to QuickBooks directly or emailed to me for logging. 48 hours, and we close the month."

## Audit Log
Monthly P&L reports (permanent; QuickBooks + SharePoint). Anomaly records with entity CEO explanations. Budget vs. actual variance records. Unbudgeted expense approval records. Negative EBITDA trend alerts. Allevio aggregate data confirmation records. Matt Mathison financial report delivery records.

## Deprecation
P&L structure reviewed when entity revenue model changes. Gross margin targets reviewed annually. Anomaly flag thresholds reviewed when entity scale increases. Allevio COGS structure reviewed when AdvancedMD billing integration matures. HIVE structure reviewed when production model changes. Close process reviewed when QuickBooks setup matures.
