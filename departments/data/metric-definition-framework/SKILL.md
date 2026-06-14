---
name: metric-definition-framework
description: "Define metrics precisely and consistently across the organization. Use when the user says 'define a metric', 'what is our ARR', 'how do we calculate churn', 'metric definition', 'standardize metrics', 'agree on a definition', 'conflicting metric definitions', 'single source of truth for metrics', 'our MRR means different things to different people', or 'metric glossary'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--metric <name>] [--domain <finance|product|operations|sales>]"
---

# Metric Definition Framework

Define metrics precisely so everyone in MBL is working from the same numbers. Metric disputes are one of the most common sources of meeting inefficiency and strategic confusion. When Matt Mathison says "revenue" and the CFO says "revenue," they may mean different things — recognized vs. bookings vs. ARR vs. net revenue. A metric definition framework prevents this by establishing the canonical definition for every metric before it becomes a disagreement.

## When to Use
- A key metric is being calculated differently by different people
- About to build a dashboard — define all metrics before writing SQL
- New business model introduced — define the new metrics before anyone uses them
- Portfolio company assessment — what do they mean by their headline metrics?
- Preparing for a board or LP report — align on definitions before the deck is built

## Metric Definition Template

```
For each metric:
  Name: [Canonical name, title case]
  Category: Financial / Product / Operations / Sales / Customer
  Definition: [Precise definition in plain English — one sentence]
  Formula: [Exact calculation — no ambiguity]
  Numerator: [What is counted in the numerator]
  Denominator: [What is in the denominator, if applicable]
  Inclusions: [What explicitly IS counted]
  Exclusions: [What explicitly IS NOT counted — this is where most disputes live]
  Unit: [Dollar, %, count, days, etc.]
  Cadence: [When this is measured — daily, weekly, monthly]
  Data source: [Where the raw data comes from]
  Owner: [Who is responsible for accuracy]
  Related metrics: [Other metrics this connects to]
```

## Core MBL Metrics Library

### Financial Metrics

```
ARR — Annual Recurring Revenue
  Definition: The annualized value of all active recurring contracts
  Formula: SUM(monthly_recurring_revenue × 12) for all active contracts
  Inclusions: Signed contracts with recurring billing; active as of measurement date
  Exclusions: One-time services; trial periods; contracts in cancellation notice period
  Unit: USD
  Data source: QuickBooks — recurring invoices
  Owner: Dr. Lewis / CFO

MRR — Monthly Recurring Revenue
  Definition: The monthly value of all active recurring contracts
  Formula: ARR / 12 (or directly: SUM(recurring_invoice_amount) for the month)
  Note: MRR ≠ monthly revenue collected; it's the contracted recurring value

Churn Rate (Revenue)
  Definition: % of MRR lost due to cancellations and downgrades in a period
  Formula: (MRR lost to churn + MRR lost to downgrades) / MRR at start of period × 100
  Exclusions: MRR lost to price changes initiated by MBL; MRR lost to contract pauses
  Unit: %
  Cadence: Monthly

Net Revenue Retention (NRR)
  Definition: % of revenue retained from existing customers, including expansion
  Formula: (Starting MRR + expansion MRR - churn MRR - contraction MRR) / starting MRR × 100
  Benchmark: >100% = growing from existing customers; <100% = net contraction
```

### Product Metrics

```
DAU — Daily Active Users
  Definition: Count of unique users who completed at least 1 core action in a 24-hour period
  Inclusions: Users who created, edited, or viewed a primary object (not just logged in)
  Exclusions: Bot traffic; internal test accounts; admin-only actions

Activation Rate
  Definition: % of new users who reach the aha moment within first session
  Formula: Users who completed aha moment / Total new users in period × 100
  [Aha moment must be defined per product]

D7 Retention
  Definition: % of users from cohort who return on day 7 (±1 day)
  Formula: Users from new user cohort who returned on day 7 / cohort size × 100
```

### Operations Metrics

```
SLA Compliance Rate
  Definition: % of service tickets resolved within the defined SLA time
  Formula: Tickets resolved within SLA / Total tickets closed × 100
  Exclusions: Tickets paused by customer; force majeure situations
```

## Output Format

```markdown
# Metric Definition Document — <Domain / Metric Set>
**Date:** <date> | **Author:** Dr. John Lewis
**Scope:** All financial metrics / Product metrics / <specific set>
**Approved by:** Dr. Lewis / Matt Mathison

---

## Metric Registry

| Metric | Category | Definition (short) | Formula | Owner | Last updated |
|--------|---------|-------------------|---------|-------|-------------|
| ARR | Financial | Annualized recurring contract value | SUM(MRR) × 12 | Dr. Lewis | <date> |
| MRR | Financial | Monthly recurring contract value | SUM(recurring invoices) | Dr. Lewis | <date> |
| D7 Retention | Product | % returning users at day 7 | Cohort formula | Dr. Lewis | <date> |
| [Metric] | <category> | <short def> | <formula> | <owner> | <date> |

---

## Metric Detail: <Metric Name>

**Category:** Financial / Product / Operations / Sales
**Definition:** <Precise single-sentence definition>

**Formula:**
```
<Metric> = <numerator expression> / <denominator expression> × [scale factor]
```

**Detailed calculation:**
1. Start with: <data set>
2. Include: <specific conditions>
3. Exclude: <specific exclusions — where debates usually live>
4. Calculate: <operation>

**Example:**
- Scenario: [Specific example with numbers]
- Correct value: [Result]
- Common mistake: [What people often calculate instead, and why it's wrong]

**Data source:** <System + table + field>
**Cadence:** Daily / Weekly / Monthly / Quarterly
**Owner:** <Name>

**Related metrics:**
- [Related metric] — [relationship]

---

## Disputed Definitions (resolved)

| Metric | Dispute | Resolution | Date resolved |
|--------|---------|-----------|--------------|
| Revenue | "Is ARR or cash collected?" | Canonical: ARR; cash collected is tracked as "Cash Revenue" separately | <date> |
| Active User | "Any login counts" vs "Must complete a core action" | Canonical: must complete ≥1 core action; login-only excluded | <date> |
```

## Output Contract
- Every metric always has explicit inclusions AND exclusions — the exclusions prevent every dispute
- Formula always precise and calculable — "revenue from customers" is not a formula
- Common mistake always documented — the most valuable part is knowing what NOT to calculate
- Disputed definitions always resolved and dated — prevents the same fight happening again next quarter
- HITL required: Dr. Lewis approves all metric definitions; Matt Mathison approves financial metric definitions; any change to a metric definition requires Dr. Lewis approval and a communication to all stakeholders before the change takes effect

## System Dependencies
- **Reads from:** QuickBooks, GoHighLevel, product analytics — for data source citations
- **Writes to:** Metric definition document (SharePoint/Data/Metrics); data catalog (metric section)
- **HITL Required:** Dr. Lewis approves; Matt Mathison approves financial metrics; changes communicated 1 week before taking effect

## Test Cases
1. **Golden path:** Define MBL's ARR metric → Definition: annualized value of all signed recurring contracts active as of the measurement date; Inclusions: monthly/annual SaaS subscriptions, recurring service retainers; Exclusions: one-time project fees, trials, contracts in cancellation notice (< 30 days remaining); Formula: SUM(MRR × 12) where contract_status = 'Active'; Data source: QuickBooks recurring invoices; Owner: Dr. Lewis; Matt Mathison approves
2. **Edge case:** Portfolio company uses "GMV" (Gross Merchandise Value) as their top metric — MBL team doesn't know what it means → document it in the metric registry immediately; define precisely (GMV = total transaction value before any deductions; different from revenue); flag that GMV can be high while revenue/take-rate is low; important context for portfolio performance assessment
3. **Adversarial:** Two teams refuse to align on a single metric definition ("our version captures our business better") → document both versions; run a decision meeting with Dr. Lewis as decision owner; one canonical definition is chosen; the other version can be kept as a supplemental metric if it has genuine value; enforce the canonical definition in all official reports; the purpose of a metric definition framework is to prevent this disagreement from recurring

## Audit Log
Metric definitions versioned and dated. Changes to definitions logged with rationale. Dispute resolutions documented.

## Deprecation
Retire when MBL adopts a dedicated metric catalog tool (dbt Metrics, Looker's LookML metrics layer) that enforces single definitions at the data layer.
