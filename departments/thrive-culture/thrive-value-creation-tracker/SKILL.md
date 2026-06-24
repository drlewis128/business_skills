---
name: thrive-value-creation-tracker
description: "value creation tracker, THRIVE value pillar, measurable impact, ROI framing, individual value contribution, output vs outcome, entity value metrics, Allevio PMPM efficiency, HIVE BOE per day, Column6 gross margin, MBL portfolio value creation, quarterly value review, track value creation, value tracking, value contribution, individual value metrics, team value metrics, value dashboard, value performance, value KPIs, value assessment, ROI tracking, impact measurement, value creation reporting, value vs activity"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[entity: MBL | Allevio | HIVE | Column6] [period: monthly | quarterly | annual] [level: individual | team | entity]"
---

# THRIVE Value Creation Tracker

Value is the THRIVE pillar that answers the investor's question: "So what?" This skill tracks individual, team, and entity-level value creation through measurable impact on revenue, cost, risk, or quality — giving entity CEOs and Dr. Lewis an objective lens on who is creating value, where the portfolio is compounding returns, and where effort is happening without outcome.

## When to Use

- A quarterly value review is due and the entity CEO needs a structured value report for Dr. Lewis or Matt Mathison
- An individual's performance review requires a value contribution summary tied to measurable outcomes
- An entity is consuming resources without a clear line to value creation and needs an honest audit
- Matt Mathison requests a portfolio value creation summary for LP reporting or board purposes

## Value Creation Tracker Framework

```
THRIVE VALUE CREATION TRACKER FRAMEWORK
=========================================

SECTION 1 — VALUE DEFINED (MBL INVESTOR LENS)
  Value = measurable, positive impact on one or more of:
    REVENUE:   Incremental revenue generated or protected
    COST:      Cost reduced, eliminated, or avoided
    RISK:      Organizational, regulatory, or financial risk reduced
    QUALITY:   Measurable improvement in output quality, speed, or reliability
  "I worked hard" is not value. "I reduced claims denial rate by 4 points, saving $180K annualized" is value
  All value claims require: metric + baseline + improvement + dollar or percentage magnitude
  Qualitative value must be translated into quantitative terms before it counts

SECTION 2 — INDIVIDUAL VALUE CONTRIBUTION TRACKING
  Each individual has a primary value driver tied to their role:
    Revenue-generating roles:  tracked on pipeline, closed revenue, or retention dollars
    Cost-optimization roles:   tracked on cost reduction or avoidance with baseline
    Risk-management roles:     tracked on risk events prevented or incident rate reduction
    Quality roles:             tracked on error rate, rework rate, or quality score improvement
  Quarterly contribution statement: 3-5 bullet points; each with metric, baseline, result, impact
  Individual with no quantifiable value contribution in a quarter: flagged for coaching conversation

SECTION 3 — OUTPUT VS. OUTCOME DISTINCTION
  Output: a deliverable produced (report written, meeting held, process documented)
  Outcome: the measurable change that resulted from the output (revenue protected, cost saved, risk reduced)
  MBL tracks outcomes; outputs are inputs to outcomes, not value claims
  "Outcome first" reporting: lead with the impact, then describe the output that produced it

SECTION 4 — ENTITY-SPECIFIC VALUE METRICS
  MBL HoldCo:
    - Portfolio company value creation: EBITDA improvement, multiple expansion, LP returns
    - AI/systems value: cost automation, productivity gain, decision speed improvement
    - M&A value: deal sourcing, deal economics improvement, integration speed
  Allevio:
    - PMPM efficiency: revenue per member per month vs. cost per member per month
    - Claims denial rate: month-over-month change (each point = material dollar impact)
    - Member retention rate: annualized revenue at risk per point of churn
    - Care coordination speed: reduction in days-to-care as a quality and risk metric
    - HIPAA incident rate: regulatory risk reduction measured in incident frequency
  HIVE Partners:
    - BOE/day: production efficiency per well vs. plan
    - Lifting cost per BOE: cost efficiency metric
    - LP distribution yield: return to LPs vs. committed return
    - WTI hedging effectiveness: revenue protection below $58/bbl trigger
    - Field safety incident rate: risk reduction measured in incidents per 1,000 hours
  Column6:
    - Gross margin %: target ≥35%; each point above/below = material value or risk
    - IO execution rate: % of campaigns delivered on time (client retention proxy)
    - Client LTV: revenue per account over 12 months (expansion vs. churn signal)
    - Cost per delivery unit: efficiency metric for programmatic operations

SECTION 5 — ROI FRAMING FOR ALL INITIATIVES
  Before starting any initiative: state the expected value creation in dollar or % terms
  After completing any initiative: state the actual value created vs. the projection
  Initiatives with no measurable value claim before launch: challenged before approval
  Initiatives with no post-completion value measurement: flagged as value accountability gaps
  Matt Mathison standard: every project in the ops deck has a "so what?" in dollar terms

SECTION 6 — QUARTERLY VALUE REVIEW
  Cadence: Q1 (Feb), Q2 (May), Q3 (Aug), Q4 (Nov) — each entity
  Format: entity-level value summary + individual contribution highlights + portfolio rollup
  Owner: entity CEO compiles; Dr. Lewis reviews; Matt Mathison receives portfolio rollup
  Red flag: entity with <80% of individuals showing measurable value contribution
  Portfolio rollup: top 3 value creation events per entity per quarter + aggregate dollar impact
```

## Output Format

```markdown
## THRIVE Value Creation Tracker — [Entity] — [Quarter/Year]

### Entity Value Summary
- Total revenue impact: $[X]
- Total cost impact: $[X]
- Risk reduction events: [#] (estimated risk value: $[X])
- Quality improvement: [metric + magnitude]

### Individual Value Contributions
| Name | Role | Primary Value Driver | Value Created | Metric | Magnitude |
|------|------|---------------------|--------------|--------|-----------|
| [name] | [role] | [revenue/cost/risk/quality] | [description] | [baseline → result] | $[X] or [X%] |

### Value Creation Highlights (Top 3)
1. [Specific high-impact contribution with dollar/% magnitude]
2. [Specific high-impact contribution]
3. [Specific high-impact contribution]

### Value Gaps (No Measurable Contribution)
- [Name/Role — coaching action required]

### Matt Mathison "So What?" Test Results
- Initiatives with no quantified value claim: [list or "none"]

### Portfolio Rollup Input: $[total entity value created]
```

## Output Contract

- **All value claims require a baseline, a result, and a magnitude — because without the baseline, the improvement cannot be evaluated.** Saying "we improved care coordination speed" is not a value claim; saying "we reduced days-to-care from 6.2 to 4.1 days, reducing member churn risk on 340 active members" is. The baseline requirement exists to prevent self-serving value reporting that credits the team for improvement that would have happened anyway or that cannot be verified.

- **Entity-specific metrics are not interchangeable because the operational model of each entity defines what value looks like.** HIVE's value is measured in BOE, lifting cost, and LP returns — not PMPM or gross margin. Column6's value is measured in gross margin and IO execution — not PMPM or BOE. Applying a generic value framework across all entities would either understate entity-specific value creation or overstate it by including metrics that don't drive returns in that business model.

- **Individual value contribution tracking is a prerequisite for fair performance assessment.** Without it, performance reviews default to impressions, tenure, and likability — which disadvantages high-value contributors who are quieter and advantages visible-but-low-impact contributors. The tracker creates the evidentiary foundation for compensation decisions, promotion decisions, and separation decisions — making the THRIVE Value pillar actionable rather than aspirational.

## System Dependencies

### Reads from
- QB (MBL/entity financials): revenue actuals, cost actuals, margin data
- Covercy (HIVE): BOE actuals, production reports, LP distribution records
- Column6 billing/ops system: gross margin actuals, IO execution rates, client LTV data
- Allevio RCM (AdvancedMD/Marshall): PMPM data, claims denial rates, member retention
- Monday.com: initiative tracking, project completion, output delivery confirmation

### Writes to
- Quarterly value review document: entity CEO → Dr. Lewis → Matt Mathison
- Individual performance file: quarterly value contribution statements
- Portfolio ops deck: entity-level value rollup input

### HITL Required
- Entity CEO validates all individual value contributions before they are finalized
- Dr. Lewis reviews entity-level value summaries before portfolio rollup
- Matt Mathison approves portfolio rollup format and content for LP reporting use

## Test Cases

1. **Golden path:** Allevio quarterly value review requested. Skill pulls PMPM data (improved from $312 to $287 — $25/member/month savings across 1,200 members = $360K annualized), claims denial rate (improved 3 points = $145K avoidance), and individual contributions. Generates a structured value report with three highlighted contributions, two value gaps flagged for coaching, and the entity's total quarterly value creation summary.

2. **Edge case:** A Column6 campaign manager argues that their work has qualitative value that cannot be quantified — specifically, "client relationship depth" that prevented churn. Skill challenges the quantification: what is the revenue at risk from that client? What is the estimated churn probability? With those inputs, the qualitative relationship value can be expressed as risk-reduction value in dollar terms — and the skill walks through the translation rather than accepting the qualitative claim at face value.

3. **Adversarial:** A HIVE operations manager submits a value contribution claiming credit for the entire entity's BOE improvement for the quarter, despite two other team members and an external operator contributing to the same outcome. Skill applies a contribution-attribution framework, splits the value across identified contributors based on documented role in the improvement, and flags the over-claiming as a potential Integrity signal for entity CEO review.

## Audit Log

All value contribution statements, entity-level summaries, portfolio rollups, and Matt Mathison submissions are logged with contributor identity, data source, reviewer approvals, and version. Value claims that were challenged or revised are logged with the original claim and the revision basis. Logs are retained for 24 months to support performance review continuity, compensation benchmarking, and LP reporting governance.

## Deprecation

This skill is deprecated when entity-specific value dashboards are operational within Krista.ai and connected directly to source financial systems (QB, Covercy, Column6 ops, Allevio RCM) — providing real-time individual and entity-level value tracking without manual skill invocation. Deprecation requires Dr. Lewis confirmation that the automated system covers all four value categories (revenue, cost, risk, quality) across all four entities.
