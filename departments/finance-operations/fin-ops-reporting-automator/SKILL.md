---
name: fin-ops-reporting-automator
description: "Automate recurring finance reports — dashboards, scheduled reports, and manual work reduction. Use when the user says 'automate reports', 'finance automation', 'reporting automation', 'scheduled reports', 'auto-generate report', 'finance dashboard', 'QuickBooks reports', 'automated finance reporting', 'recurring reports', 'reduce manual work', 'automate the close', 'financial dashboard', 'reporting workflow', 'automate AP report', 'automate AR report', 'automate payroll report', 'automated KPI', or 'build a finance dashboard'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--report <ap-aging|ar-aging|cash-position|kpi-dashboard|pnl>] [--frequency <daily|weekly|monthly>] [--delivery <email|monday.com|sharepoint>]"
---

# Reporting Automator

Automate recurring finance reports for MBL portfolio companies — reducing manual reporting work, ensuring consistent delivery cadence, and surfacing financial intelligence to decision-makers without requiring a weekly request cycle. Every report that requires a human to manually pull data, format it, and send it is a potential point of delay and error; Dr. Lewis designs reporting automation around the principle that the finance team should spend time analyzing data and managing exceptions, not building the same spreadsheet every Monday. The target is: CEO and Matt Mathison receive the right financial information at the right cadence, automatically.

## When to Use
- Establishing the initial reporting infrastructure for a new portfolio company
- A recurring report is taking >30 minutes to produce manually each cycle
- A CEO is asking for data that should be available automatically
- Designing the Monday.com-integrated financial dashboard
- Reducing the close reporting burden after the books are closed

## Reporting Automation Framework

```
Reporting stack for MBL portfolio companies:

  PRIMARY SYSTEMS:
    QuickBooks Online: Source of truth for all financial data
    Bill.com: AP workflow and payment history
    Monday.com: Action items, KPI tracking, portfolio visibility (Matt Mathison view)
    SharePoint: Document storage and report archive
    
  AUTOMATION TOOLS (in order of preference):
    1. QuickBooks built-in scheduled reports: Free; native; auto-email; covers most financial reports
    2. Monday.com integration: Push KPIs from QBO to Monday.com boards
    3. Microsoft Power Automate: Low-code; connects QBO, Excel, Teams, SharePoint, Outlook
    4. Excel + Power Query: For complex calculated reports; refreshable from QBO data source
    5. Google Sheets (alternative): Similar to Excel for simpler dashboards
    
REPORT CATALOG — What to automate for each entity:

  WEEKLY (every Monday 7 AM — before Dr. Lewis starts the week):
    1. AP Aging Summary: QuickBooks report → auto-email to Dr. Lewis and Controller
       Setup: QBO → Reports → Customize AP Aging Summary → Schedule → Weekly Monday
       Output: Total AP by aging bucket; any past-due items immediately visible
       
    2. AR Aging Summary: QuickBooks report → auto-email
       Setup: Same process as AP Aging
       Output: Total AR outstanding by bucket; DSO trend
       
    3. Cash Position Report: Bank balance (manual input) + 13-week forecast (from fin-ops-cash-flow-tracker)
       Automation: The cash position itself requires a manual bank balance pull; 
         but the template and distribution can be automated (Dr. Lewis updates the numbers;
         Power Automate sends the email to CEO and Matt Mathison)
         
  MONTHLY (business day 6 — after financial close):
    4. P&L vs. Budget: QuickBooks report → auto-email to CEO
       Setup: QBO → Reports → Profit and Loss (comparison to budget if budget loaded in QBO) → Schedule
       Output: Revenue, EBITDA, key expense lines vs. budget
       
    5. Balance Sheet: QuickBooks report → auto-email
       Setup: QBO → Reports → Balance Sheet → Schedule → Monthly on BD6
       
    6. KPI Dashboard (Monday.com): Push from QBO to Monday.com
       Key KPIs per entity (see strategy-kpi-design for definitions):
         Allevio: Patient visits, avg revenue/visit, billing lag, denial rate, EBITDA margin
         HIVE: Production BOE/day, LOE/BOE, WTI price, EBITDA
         Column6: Impressions, blended CPM, revenue, EBITDA margin
       Setup: Integration options: (1) Manual entry into Monday.com each month;
         (2) Zapier/Make.com integration from QBO → Monday.com; 
         (3) Power Automate flow (Microsoft stack)
         
  QUARTERLY (within 2 weeks of quarter-end):
    7. Quarterly Financial Package: P&L + BS + CF + Variance narrative
       Automation: QBO schedules the reports; Dr. Lewis adds the variance narrative;
         automated package combines and sends (Power Automate or SharePoint)
         
    8. Portfolio Dashboard for Matt Mathison: All 3 entities on one view
       Automation: Monday.com board with all three entity KPI sections;
         Dr. Lewis updates the commentary; the data auto-flows from QBO

Report quality checklist (before automating any report):
  ☐ The underlying data in QuickBooks is accurate (garbage in = garbage out)
  ☐ The report definition is correct (right date range, right accounts)
  ☐ The delivery list is correct (right people receiving the report)
  ☐ The frequency is right (not too often — decision-makers ignore daily financial reports)
  ☐ There is a human review step before the automated delivery (for any report going to Matt Mathison)
  
When NOT to automate:
  Do not automate a report that requires judgment — automate the data; add judgment on top
  Do not automate LP reports — every LP report requires Dr. Lewis and Matt Mathison review before distribution
  Do not automate board reports — the commentary and judgment are not automatable
```

## Output Format

```markdown
# Reporting Automation Plan — [Entity]
**Date:** [Date] | **Designed by:** Dr. Lewis

---

## Current Manual Report Burden

| Report | Current frequency | Manual time | Who builds | Who receives | Automatable? |
|--------|-----------------|------------|-----------|-------------|-------------|
| AP aging | Weekly | 20 min | Controller | Dr. Lewis | ✅ High priority |
| AR aging | Weekly | 20 min | Controller | Dr. Lewis | ✅ High priority |
| Cash position | Weekly | 30 min | Dr. Lewis | CEO, Matt | ⚠️ Partial (data manual; distribution auto) |
| P&L vs. budget | Monthly | 45 min | Controller | CEO | ✅ |
| KPI dashboard | Monthly | 2 hours | Dr. Lewis | Matt | ⚠️ Partial |

**Estimated total manual reporting time per month:** [N] hours
**Estimated time saved through automation:** [N] hours

---

## Automation Implementation Plan

| Report | Automation method | Setup steps | Owner | Target delivery date |
|--------|-----------------|------------|-------|---------------------|
| AP Aging Summary | QBO Scheduled Report — email | Configure in QBO Reports; set Monday 7 AM | Controller | [Date] |
| AR Aging Summary | QBO Scheduled Report — email | Same as AP | Controller | [Date] |
| P&L vs. Budget | QBO Scheduled Report — email | Load budget in QBO; configure scheduled report | Dr. Lewis | [Date] |
| KPI Dashboard | Monday.com manual entry → auto-notify | Create Monday.com board structure; Dr. Lewis updates monthly | Dr. Lewis | [Date] |
| Cash Position | Power Automate email distribution | Dr. Lewis updates template; PA sends at 8 AM Monday | Dr. Lewis | [Date] |

---

## QuickBooks Scheduled Reports Configured

| Report | Recipients | Schedule | Status |
|--------|-----------|---------|--------|
| AP Aging Summary | Dr. Lewis, Controller | Every Monday 7 AM | ✅ Active |
| AR Aging Summary | Dr. Lewis, Controller | Every Monday 7 AM | ✅ Active |
| P&L vs. Budget | CEO | BD6 monthly | ✅ Active |
| Balance Sheet | CEO, Dr. Lewis | BD6 monthly | ✅ Active |

---

## Monday.com KPI Board Structure

| Company | KPI metrics tracked | Update frequency | Board link |
|---------|-------------------|-----------------|-----------|
| Allevio | 7 KPIs (visits, revenue, EBITDA, DSO, denial rate, utilization, payer mix) | Monthly | [Link] |
| HIVE | 5 KPIs (BOE/day, LOE/BOE, WTI, EBITDA, wells) | Monthly | [Link] |
| Column6 | 5 KPIs (impressions, CPM, revenue, EBITDA, advertisers) | Monthly | [Link] |
| **Portfolio (Matt view)** | All entities combined | Monthly | [Link] |
```

## Output Contract
- Automate the data delivery, add human judgment on top — financial automation is not a replacement for human analysis; an AP aging report that automatically arrives in Dr. Lewis's inbox every Monday is only valuable if Dr. Lewis reads it, identifies the past-due items, and takes action; automation handles the delivery; Dr. Lewis handles the action; any report that requires commentary, interpretation, or recommendations (variance explanations, LP reports, board reports) is not fully automatable — automation can assemble the data; the narrative is Dr. Lewis's work
- QuickBooks scheduled reports are the first tool — before building a Power Automate flow or a Zapier integration, Dr. Lewis checks whether QuickBooks Online can deliver the report natively; QBO can schedule and email most standard reports (AP aging, AR aging, P&L, Balance Sheet, Trial Balance) with no additional tools; these take 5 minutes to configure and are reliable; Dr. Lewis configures QBO scheduled reports first for every portfolio company, and adds additional automation (Power Automate, Monday.com) only for reports that QBO cannot deliver
- Load the budget into QuickBooks to enable automated budget vs. actual — the P&L vs. Budget report in QBO is only available if the annual budget has been loaded into QBO as a budget; Dr. Lewis loads the annual budget in QuickBooks during the budgeting process (January); this enables the automated monthly P&L report to show actual vs. budget variance automatically, without manual spreadsheet work; if the budget is not in QBO, the P&L report shows only actuals and the variance analysis must be done manually
- HITL required: Dr. Lewis designs and implements the reporting automation; Dr. Lewis reviews all KPI dashboard data before it is published to the Monday.com board visible to Matt Mathison; CEO receives automated reports and is responsible for reading them; Matt Mathison's portfolio dashboard is updated by Dr. Lewis monthly with reviewed data; LP reports and board reports are never automated — they require Dr. Lewis and Matt Mathison review before distribution

## System Dependencies
- **Reads from:** QuickBooks Online (all financial data — AP, AR, P&L, Balance Sheet); bank portal (cash balance — manual input); AdvancedMD (Allevio visit and revenue data — manual import or integration); Covercy (HIVE production data — manual import); Column6 ad server (impression/CPM data — manual import)
- **Writes to:** Automated email reports (QBO scheduled delivery); Monday.com KPI boards (manual update by Dr. Lewis or Power Automate); SharePoint report archive (automated or manual); CEO and Matt Mathison distribution lists
- **HITL Required:** Dr. Lewis reviews all reports before they go to Matt Mathison; Dr. Lewis updates the cash position template weekly; KPI dashboard data reviewed by Dr. Lewis before publishing; any automated report that contains an error must be corrected and a corrected version sent manually with a note about the error

## Test Cases
1. **Golden path:** Setting up QBO scheduled reports for a new Allevio portfolio company → Dr. Lewis logs into QBO; navigates to Reports; configures: (1) AP Aging Summary — every Monday 7 AM → email to Dr. Lewis and Controller; (2) AR Aging Summary — every Monday 7 AM → same; (3) P&L (actual vs. budget) — 6th business day of each month → email to CEO and Dr. Lewis; (4) Balance Sheet — same schedule as P&L; loads Allevio's annual budget into QBO (Reports → Budgeting → Create new budget); tests: advances the date to next Monday; confirms the test email arrives with the correct report; all 4 reports active; controller confirms receipt; setup complete in 45 minutes
2. **Edge case:** Matt Mathison requests a portfolio-level weekly cash position across all three companies → Dr. Lewis does not have a single automated view of all three companies' cash positions (they are in three separate QBO instances); Dr. Lewis builds a simple Excel template: Tab 1 Allevio cash; Tab 2 HIVE cash; Tab 3 Column6 cash; Tab 4 Portfolio summary; Dr. Lewis updates this template every Monday by pulling the current balances from each company's bank portal (5 minutes per company); Power Automate is configured to email the completed template to Matt Mathison at 9 AM every Monday; Dr. Lewis must complete the bank balance inputs before 9 AM for the automation to work; fallback: if Dr. Lewis hasn't updated by 8:45 AM, Power Automate sends a reminder; if the file still isn't updated, it doesn't send (don't send stale data)
3. **Adversarial:** A controller wants to fully automate the month-end P&L and send it directly to the CEO without Dr. Lewis reviewing it → Dr. Lewis does not approve this setup; the monthly P&L goes to the CEO only after Dr. Lewis has reviewed and approved the financials (as part of the BD5-BD6 close process); an automated P&L that arrives to the CEO before the close is complete or without Dr. Lewis review may contain errors, unapplied accruals, or missing adjustments; Dr. Lewis configures the QBO scheduled report to deliver to Dr. Lewis only (not the CEO) as part of the close prep; Dr. Lewis then forwards the approved financials to the CEO manually with the variance explanation; the CEO receives accurate, reviewed financials — not automated but potentially wrong ones

## Audit Log
All QBO scheduled report configurations retained. Monday.com board structure retained. Report delivery confirmations retained (email delivery logs). Budget-loading records retained by year. Power Automate flow configurations retained. Any report error corrections retained with the original and corrected versions.

## Deprecation
Retire when each portfolio company has a controller and a defined reporting calendar — with Dr. Lewis conducting the weekly review of auto-delivered reports and Matt Mathison receiving the portfolio dashboard monthly.
