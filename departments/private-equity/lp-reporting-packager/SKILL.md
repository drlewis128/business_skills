---
name: lp-reporting-packager
description: "Compile and format LP quarterly reporting packages for HIVE Partners and MBL portfolio. Use when the user says 'LP report', 'quarterly LP update', 'limited partner reporting', 'LP package', 'investor report', 'compile the LP quarterly', or 'HIVE investor update'. Assembles financial and operational data into investor-grade reporting format."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <HIVE|MBL|portfolio>] [--quarter <Q1|Q2|Q3|Q4>] [--year <YYYY>]"
---

# LP Reporting Packager

Assemble quarterly Limited Partner reporting packages for HIVE Partners and MBL portfolio companies. LP reports are the most scrutinized financial documents in a PE firm — every number must be verified, every narrative must be defensible.

## When to Use
- Quarterly (within 45 days of quarter end)
- When an LP requests an ad-hoc update
- For annual LP reporting
- When preparing for a capital call or distribution notice

## Required Inputs
1. Quarter-end financial statements (P&L, Balance Sheet, Cash Flow)
2. Prior period financials for comparison
3. Budget/target for the period
4. Portfolio company operational metrics
5. HIVE-specific: production volumes, commodity prices, well-level performance (from Covercy if available)
6. Any significant events (new investments, exits, write-downs, management changes)

## Report Structure

### Section 1 — Executive Summary (1 page)
- Period highlights (top 3)
- Financial performance vs plan (3 metrics max)
- Key developments since last report
- Outlook for next quarter

### Section 2 — Financial Performance
- Income Statement: current quarter, YTD, full year budget
- Key metrics vs prior year and budget
- Material variance explanations (use `budget-vs-actual-variance` output)
- Cash position and liquidity

### Section 3 — Portfolio / Operational Update
- Business unit performance
- HIVE: production volumes, realized prices, lifting costs, well count
- Headcount and key hires
- Customer/contract updates
- Operational risks and mitigants

### Section 4 — Investment Activity
- New investments made
- Follow-on investments
- Exits or distributions
- Pipeline / deal activity summary

### Section 5 — Valuation & Returns (if applicable)
- NAV / fair value update
- MOIC and IRR to date
- DPI (Distributions to Paid-In Capital)
- RVPI (Residual Value to Paid-In Capital)

### Section 6 — Looking Ahead
- Q[N+1] priorities
- Risks and mitigants
- Capital needs or upcoming events

## Formatting Rules
- All financial data in consistent format: USD millions to 1 decimal (e.g., $12.4M)
- Tables preferred over paragraphs for financial data
- Every number sourced (footnote or note the source system)
- Narrative is factual and measured — no promotional language
- No forward-looking language without appropriate hedging ("we expect," "subject to market conditions")

## Output Contract
- Draft only — never a final LP communication
- Every financial figure flagged as "requires CFO/owner verification before distribution"
- HITL required before any LP distribution
- No LP-sensitive data shared with Tier 3 users

## System Dependencies
- **Reads from:** Financial statements, operational data, Covercy (HIVE), QuickBooks (provided as input)
- **Writes to:** Nothing (outputs draft for review)
- **HITL Required:** Mandatory before ANY distribution to LP investors. Dr. Lewis or Matt Mathison must review and approve.

## Deprecation
Retire when a dedicated LP reporting platform (e.g., Juniper Square, Cobalt) handles this workflow.
