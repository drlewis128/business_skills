---
name: it-reporting-infrastructure
description: "Build and manage BI tools, data pipelines, and reporting architecture. Use when the user says 'reporting infrastructure', 'BI tools', 'business intelligence', 'dashboards', 'data pipeline', 'data warehouse', 'reporting architecture', 'Power BI', 'Tableau', 'data connectors', 'automated reports', 'reporting setup', 'analytics infrastructure', 'reporting tools', or 'build a dashboard'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--tool <PowerBI|Excel|custom>] [--action <setup|build|connect|review>]"
---

# IT Reporting Infrastructure

Build and manage reporting and analytics infrastructure at MBL portfolio companies — connecting data sources to reporting tools, building dashboards and automated reports, and maintaining data pipeline reliability. The value of reporting infrastructure is that business leaders stop pulling data manually and start making decisions from consistent, reliable, automated reports. At MBL portfolio scale, the goal is lightweight, maintainable reporting — not enterprise data warehouse complexity.

## When to Use
- A portfolio company needs automated reporting and currently pulls data manually from multiple systems
- A new data connection needs to be built (e.g., QuickBooks → Power BI, Covercy → Excel report)
- A report that was being emailed manually needs to be automated
- A reporting dashboard is returning stale or incorrect data — data pipeline investigation
- Matt Mathison or a portfolio CEO needs a weekly reporting package automated
- Annual reporting infrastructure review — are all reports accurate and maintained?

## Reporting Architecture Framework

```
Reporting tiers for MBL portfolio scale:
  Tier 1 — Spreadsheet + export (manual but structured):
    When to use: <3 reports needed; <5 data sources; low change frequency
    Tools: Excel, Google Sheets + CSV exports from source systems
    Maintenance: Manual monthly; acceptable for small companies
    
  Tier 2 — Connected spreadsheet or BI tool:
    When to use: Reports needed weekly or more; multiple data sources; need charts
    Tools: Power BI (included in M365 Business Premium), Excel with Power Query, Looker Studio (free)
    Connections: Power BI connects to QuickBooks via connector, SharePoint, Azure SQL, CSV uploads
    Maintenance: Data refreshes automated; report building by Dr. Lewis; user access managed
    
  Tier 3 — Data warehouse + BI platform:
    When to use: >10 reports; historical trend analysis; multiple companies consolidated; complex queries
    Tools: Azure Synapse, Databricks, Snowflake + Power BI / Tableau
    Cost: $500+/month; requires data engineering
    At MBL scale: Not typically needed; defer until portfolio complexity justifies cost
    
Data sources in the MBL ecosystem:
  QuickBooks Online: Revenue, AP, AR, P&L, balance sheet
    → Export: QBO reports (PDF/CSV) or third-party QuickBooks connector for Power BI
  Bill.com: AP, payments, vendor spend
    → Export: Bill.com reports or API
  AdvancedMD (Allevio): Claims, collections, RCM KPIs
    → Export: AdvancedMD reporting module (CSV); PHI excluded from BI tools
  Covercy (HIVE): Production data, distributions, LP returns
    → Export: Covercy reports; data to HIVE LP reporting
  Monday.com: Project status, task completion, sprint velocity
    → Dashboards: Native Monday.com dashboards or CSV export
  GoHighLevel: Pipeline, lead count, marketing performance
    → Export: GHL reporting or CSV
    
PHI in reporting infrastructure — Allevio (critical):
  BI reports must NEVER contain identifiable PHI
  Aggregate clinical metrics (claims count, collections rate, denial rate) = NOT PHI — OK in BI
  Any report with patient names, DOBs, MRNs = PHI — stays in AdvancedMD; not exported to BI
  Data minimization: Export only the aggregate metrics needed; never export the raw patient table
```

## Output Format

```markdown
# Reporting Infrastructure — <Company Name>
**Date:** [Date] | **Reporting tier:** [1 / 2 / 3]
**BI tool:** [Power BI / Excel + Power Query / Looker Studio / None]
**Data sources connected:** [N] | **Active reports:** [N]
**Prepared by:** Dr. John Lewis

---

## Active Reports

| Report | Audience | Frequency | Data source(s) | Delivery | Last verified | Status |
|--------|---------|---------|----------------|---------|-------------|--------|
| Weekly Ops Report | Matt Mathison | Weekly | QB, Bill.com, ops KPIs | Email / Teams | [Date] | 🟢 |
| Allevio RCM KPIs | CEO, Dr. Lewis | Weekly | AdvancedMD (aggregate) | Power BI dashboard | [Date] | 🟢 |
| HIVE BBL/day dashboard | Matt Mathison | Daily | Covercy | Power BI | [Date] | 🟡 Stale |
| QuickBooks P&L | Controller | Monthly | QBO | Power BI / QB report | [Date] | 🟢 |
| M&A deal pipeline | Matt Mathison | Weekly | Monday.com + GoHighLevel | Teams | [Date] | 🟢 |

---

## Data Connection Health

| Connection | Source | Status | Last refresh | Error |
|------------|--------|--------|-------------|-------|
| QuickBooks → Power BI | QBO connector | Active / Error | [Date] | [If error] |
| AdvancedMD → Excel export | Manual CSV | Manual (monthly) | [Date] | |
| Covercy → Power BI | CSV upload | Stale — last upload 45 days ago | [Date] | Upload needed |
| SharePoint → Power BI | SharePoint connector | Active | Real-time | |

**Stale connections (>30 days):** [N — require refresh or automation]

---

## PHI Audit (Allevio reports only)

| Report | Contains identifiable PHI? | Assessment | Status |
|--------|--------------------------|-----------|--------|
| Allevio RCM KPIs | No — aggregate metrics only | Verified by Dr. Lewis | ✅ Compliant |
| Allevio collections report | No — $$ totals only | | ✅ |
| [Any report] | YES — patient names in export | 🔴 HIPAA violation | Remove PHI immediately |

**PHI in BI tools:** Must be zero. Any finding triggers immediate report correction.

---

## Automation Status

| Report | Currently | Target | Effort | Priority |
|--------|---------|--------|--------|---------|
| HIVE daily dashboard | Manual CSV upload | Automated via Covercy API or scheduled export | 8 hrs | 🟡 Medium |
| Weekly ops KPIs | Manual assembly | Auto-refresh Power BI with connected sources | 4 hrs | 🟡 Medium |
| AdvancedMD aggregate KPIs | Manual monthly export | Semi-automated (scheduled export script) | 4 hrs | 🟢 Low |

---

## Matt Mathison Brief (if a key report is failing or stale)

[Company] reporting: [Key issue — e.g., HIVE daily dashboard stale 45 days]. Fix: [CSV upload manually this week; automation scheduled for Q3]. All other reports current.
```

## Output Contract
- PHI is never exported to BI tools from Allevio systems — aggregate clinical metrics (claims count, first-pass rate, collections rate, denial percentage) do not constitute PHI and are appropriate for BI reporting; raw patient data (names, DOBs, MRNs, diagnoses) in a Power BI dashboard is a HIPAA violation regardless of who can see the dashboard; Dr. Lewis reviews every Allevio BI report to confirm only aggregates are exported; this review is documented
- Report accuracy is verified after every source system change — when a source system updates (QuickBooks migrates to a new chart of accounts, AdvancedMD updates its reporting module), the BI reports that connect to that source must be re-validated; a report that was accurate before the update may now show incorrect data; the verification takes 30 minutes; a business leader making decisions from a stale or broken report is worse than no report
- Data connections have owners and refresh schedules — every data connection has a defined refresh frequency (daily, weekly, monthly) and an alert when the refresh fails; a "stale connection" (no refresh in 2× the scheduled period) is automatically flagged; silent failures (the connection appears active but the data is 45 days old) are the most dangerous reporting failure mode; monitoring is configured to alert on missed refreshes
- HITL required: Dr. Lewis builds and maintains reporting infrastructure; PHI audit of Allevio reports by Dr. Lewis (quarterly); new report or data connection approval by Dr. Lewis; Tier 3 infrastructure decisions (data warehouse) require Dr. Lewis + CEO + Matt Mathison cost review; data connection changes require Dr. Lewis

## System Dependencies
- **Reads from:** QuickBooks Online (API/connector), Bill.com (API), AdvancedMD (aggregate exports only — no PHI), Covercy (exports), Monday.com (native dashboards + exports), GoHighLevel (exports), SharePoint (Power BI connector)
- **Writes to:** Power BI dashboards; reporting documentation (SharePoint/Ops/<Company>/IT/Reporting/); automated report delivery (email, Teams); data connection configuration; PHI audit log (Allevio)
- **HITL Required:** Dr. Lewis builds and maintains; PHI audit of Allevio reports quarterly; new data connections by Dr. Lewis; Tier 3 infra decisions with CEO and Matt Mathison; report access managed by Dr. Lewis

## Test Cases
1. **Golden path:** Setting up HIVE Partners weekly production reporting for Matt Mathison → Data source: Covercy (BBL/day, LOE/BOE, downtime %) — manual CSV export weekly until API automation available; Tool: Power BI Desktop (M365 Business Premium — included); Report: BBL/day vs. plan, LOE/BOE trend, downtime %; Charts: time-series trend + current week vs. plan; Delivery: Power BI published to Power BI Service; Matt Mathison has access; report refreshes when new CSV uploaded; alternative: Excel dashboard with manual CSV paste (lower effort, same output); first version delivered in 1 day; automation (Covercy API → Power BI) planned for Q3; no PHI involved — HIVE is oil & gas ✅
2. **Edge case:** A Power BI report shows revenue numbers that are 15% lower than what QuickBooks shows → Data discrepancy investigation: (1) Check the date range in Power BI vs. QBO; (2) Check if the QBO connector is filtering to specific accounts (custom P&L view); (3) Check if the connector is using cash vs. accrual basis (QBO supports both); most common cause: the Power BI report is filtered to a different date range or account class than the QBO report being compared to; resolve by aligning the filter parameters; document the comparison and resolution; this type of discrepancy, if unresolved, causes people to lose confidence in the BI tool
3. **Adversarial:** A clinical director wants patient-level data in a Power BI dashboard "to track individual provider productivity by patient volume" → The report can show provider productivity (visits per day, RVUs, revenue per provider) without including identifiable patient data; aggregate by provider, not by patient; the dashboard shows "[Provider A]: 12 visits today, $3,200 revenue" without listing patient names; this is a legitimate use case achievable without PHI export; if the clinical director insists on patient-level data, that report lives in AdvancedMD (which has the appropriate access controls and audit logging) — not in Power BI

## Audit Log
Report catalog retained with version history. PHI audit of Allevio reports retained quarterly. Data connection configuration retained with effective dates. Report accuracy validation records retained. Data pipeline error logs retained 90 days. Tier 3 infrastructure decisions retained.

## Deprecation
Retire when portfolio companies have dedicated data analysts or BI engineers who build and maintain reporting infrastructure — with Dr. Lewis reviewing PHI audit results for Allevio and receiving exception reports on data pipeline failures. PHI audit of Allevio BI reports requires ongoing oversight by Dr. Lewis or Privacy Officer regardless of analyst maturity.
