---
name: portops-allevio-employer-dashboard
description: "allevio employer dashboard, employer portfolio tracking, employer count, employer ACV, PMPM trend, churn risk, renewal dates, 90-day renewal alert, employer health signals, employer pipeline, new employer pipeline, HIPAA aggregate employer data, employer renewal management, employer churn prevention, employer book of business, account management dashboard, employer satisfaction, employer expansion, employer retention, ACV growth, employer tier breakdown"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "reporting month (e.g. 'June 2026'), segment ('enterprise/mid-market/SMB'), or focus ('renewals/churn/PMPM/pipeline')"
---

# Allevio Employer Dashboard

Tracks Allevio's employer client portfolio with aggregate, HIPAA-compliant metrics — employer count, ACV, PMPM trend, churn risk scoring, renewal pipeline, and new employer pipeline — enabling proactive retention and expansion management for the entity CEO and Dr. Lewis. Individual member data is never exposed; all health signals operate at the employer account level using aggregate plan metrics only.

## When to Use

- Monthly employer portfolio review for Allevio entity CEO and Dr. Lewis
- 90-day renewal alert cycle to identify at-risk employer relationships before window closes
- PMPM or ACV trend analysis to inform revenue forecasting and plan resets
- Churn risk triage to prioritize employer retention interventions before notice period
- New employer pipeline health check when wins are below plan

## Allevio Employer Dashboard Framework

```
EMPLOYER PORTFOLIO OVERVIEW
Total Employer Count:     [X] | Net change from prior month: [+/-X]
Total ARR (aggregate):    $[X]M | Prior month: $[X]M | Δ [+/-X]%
Average ACV:              $[X]K | Median ACV: $[X]K
Revenue Concentration:    Top 3 employers as % of ARR: [X]% (flag if >30% — concentration risk)
Employer Tier Segmentation:
  Enterprise (>500 lives):      [X] employers | ARR: $[X]M | Avg ACV: $[X]K
  Mid-Market (100–500 lives):   [X] employers | ARR: $[X]M | Avg ACV: $[X]K
  Small Business (<100 lives):  [X] employers | ARR: $[X]M | Avg ACV: $[X]K
Note: Member count referenced in aggregate for tier classification only; no individual member data

PMPM METRICS
Average PMPM (aggregate all employers):  $[X] | Plan target: $[X] | Δ [+/-X]%
PMPM by Tier (aggregate per tier):
  Enterprise tier avg PMPM:     $[X] | Trend: [↑/→/↓]
  Mid-Market tier avg PMPM:     $[X] | Trend: [↑/→/↓]
  SMB tier avg PMPM:            $[X] | Trend: [↑/→/↓]
6-Month PMPM Trend (aggregate):
  M-5: $[X] | M-4: $[X] | M-3: $[X] | M-2: $[X] | M-1: $[X] | Current: $[X]
Revenue Sensitivity: $[X]K per $1 PMPM change across current member base
Variance vs Plan: [+/-$X] per member per month — [above/below/at] plan

RENEWAL PIPELINE
90-Day Renewal Alert (fire for ALL employers renewing within 90 days regardless of risk score):
  Account Code | Tier | Renewal Date | ACV | Risk Score | Action Owner
  [ID-001]     | [T]  | [date]       | $[X]K | 🟢/🟡/🔴 | [name]
  [ID-002]     | [T]  | [date]       | $[X]K | 🟢/🟡/🔴 | [name]
Total ARR in 90-day renewal window:  $[X]K
Total ARR in 60-day renewal window:  $[X]K (highest urgency sub-set)
Renewal Risk Scoring Criteria:
  🟢 Low Risk:    On-time payments, engagement active, no support escalations, stakeholder contact current
  🟡 Medium Risk: 1–2 of the following: slow payment, declining utilization, stakeholder change, minor disputes
  🔴 High Risk:   Payment delays >30d, utilization decline >20%, open complaint, stakeholder unresponsive

EMPLOYER HEALTH SIGNALS
Satisfaction Proxies (aggregate indicators per employer account — no individual PHI):
  Utilization trend (aggregate per account): [rising/stable/declining]
  Engagement score (% of covered members using services): [X]% | Target: >[X]%
  Renewal conversation initiated: [Y/N per account code]
  Open support tickets: [X] per account (aggregate)
  Payment timeliness: [on-time / 1–30d late / 30+d late]
Note: Utilization signals are aggregate per employer account — no individual member data drives any signal

CHURN RISK FLAGS
Risk Level | Count | ARR at Risk | Primary Signal
🔴 HIGH    | [X]   | $[X]K       | [aggregate indicator — e.g., declining utilization + payment delay]
🟡 MEDIUM  | [X]   | $[X]K       | [aggregate indicator — e.g., low engagement + stakeholder change]
🟢 LOW     | [X]   | $[X]K       | Stable — maintain cadence
Churn Risk Indicators (aggregate employer-level only):
  - Aggregate utilization decline >20% for 2+ consecutive months
  - Payment delays >30 days on any invoice
  - Engagement score below 40% of covered lives (aggregate)
  - Open unresolved contract or billing dispute
  - Key stakeholder change with no confirmed replacement contact
  - Renewal conversation not initiated within 120 days of renewal date
High-Risk Response: entity CEO must submit retention action plan within 5 business days of 🔴 flag

NEW EMPLOYER PIPELINE
Pipeline Stage | Count | Est. ACV Range | Weighted ARR | Expected Close
Prospect/Identified | [X] | $[X]K–$[X]K | $[X]K | [date range]
Discovery/Demo      | [X] | $[X]K–$[X]K | $[X]K | [date range]
Proposal Submitted  | [X] | $[X]K–$[X]K | $[X]K | [date range]
Contract/Close      | [X] | $[X]K–$[X]K | $[X]K | [date range]
Total Weighted Pipeline: $[X]K | Monthly target: $[X]K | Coverage: [X]x
New Employers Won This Month: [X] | Total new ACV: $[X]K | Avg ACV: $[X]K
Average Sales Cycle: [X] days | Plan target: [X] days

HIPAA FIREWALL RULES
Rule 1: Output contains no individual member names, member IDs, plan IDs, or claim-level data
Rule 2: Utilization metrics are aggregate per employer account only — no drill-down to individual
Rule 3: Employer tier classification uses aggregate member count ranges — specific counts not displayed
Rule 4: Any employer with fewer than 10 covered members is reported in an aggregated SMB bucket only
          to prevent indirect identification of individuals in a small-group plan context
Rule 5: Engagement scores are aggregate % rates — not individual member engagement records
Validation: Dr. Lewis must annually review the de-identification approach for small-group employer accounts

ESCALATION PROTOCOL
🔴 Churn Risk (High):           → Dr. Lewis alert; entity CEO action plan within 5 business days
Renewal < 60 days + 🟡/🔴:     → Entity CEO owns renewal conversation; Dr. Lewis briefed
Renewal < 30 days + no contact: → CRITICAL; Dr. Lewis + entity CEO same-day; Matt notified
PMPM decline >5% (3-month):    → Entity CEO strategic review; Dr. Lewis flags for revenue forecast impact
Revenue concentration >30%:    → Dr. Lewis flags for Matt Mathison (investor risk signal)
```

## Output Format

```markdown
# Allevio Employer Dashboard — [Month YYYY]

**Prepared by:** AI Agent (portops-allevio-employer-dashboard)
**Review Authority:** Dr. John Lewis → Allevio Entity CEO
**HIPAA Notice:** All data is aggregate employer-account level. No individual member or PHI data present.

## Executive Summary
[2–3 sentences: portfolio health, top renewal or churn signal, top pipeline signal]

## Portfolio Overview
| Metric | Current | Prior Month | Δ | Status |
|--------|---------|-------------|---|--------|
| Total Employers | | | | |
| Total ARR | $[X]M | $[X]M | [+/-X]% | 🟢/🟡/🔴 |
| Average ACV | $[X]K | $[X]K | [+/-X]% | |
| Average PMPM | $[X] | $[X] | [+/-X]% | 🟢/🟡/🔴 |

## 90-Day Renewal Pipeline
[Table: account code, tier, renewal date, ACV, risk rating, action owner]
**Total ARR at renewal risk (90d):** $[X]K

## Churn Risk Summary
| Risk Level | Employer Count | ARR at Risk | Primary Signal |
|------------|---------------|-------------|----------------|
| 🔴 High | | $[X]K | |
| 🟡 Medium | | $[X]K | |
| 🟢 Low | | Stable | |

## PMPM Trend (6-Month Aggregate)
| Month | M-5 | M-4 | M-3 | M-2 | M-1 | Current |
|-------|-----|-----|-----|-----|-----|---------|
| PMPM | $[X] | $[X] | $[X] | $[X] | $[X] | $[X] |
**Revenue sensitivity:** $[X]K per $1 PMPM change

## New Employer Pipeline
[Funnel table with coverage ratio]
**Pipeline coverage vs monthly target:** [X]x

## ACV Movement
| Category | Count | ARR |
|----------|-------|-----|
| New employer wins | [X] | $[X]K |
| Expansion (upsell) | [X] | $[X]K |
| Churn | [X] | ($[X]K) |
| **Net ARR movement** | | **$[X]K** |

## Escalation Flags
- [ ] 🔴 High churn risk employer(s) — action plan required
- [ ] Renewal < 60 days with 🟡/🔴 score
- [ ] PMPM declining >5% over 3 months
- [ ] Revenue concentration >30% in top 3 employers
- [ ] Pipeline coverage below 1.5x

## Recommended Actions
| # | Action | Owner | Due Date |
|---|--------|-------|----------|
| 1 | | | |
| 2 | | | |
| 3 | | | |
```

## Output Contract

- Employer-level data must remain at the account aggregate level — aggregate member count ranges for tier classification, aggregate PMPM per employer tier, and aggregate utilization signals per account. Even employer names should be replaced with account codes in automated reports distributed outside the entity to prevent reverse-engineering of member counts that could approximate individual-level utilization patterns in small-group plans, which could constitute indirect PHI exposure under HIPAA's minimum necessary standard. Dr. Lewis must validate the de-identification approach annually and specifically audit any employer account with fewer than 10 covered members for re-identification risk.

- The 90-day renewal alert is a revenue protection mechanism — an employer churning with $200K+ ACV at Allevio's current pricing represents a 6–12 month revenue recovery cycle to replace with new employer wins, making early detection non-negotiable. The alert must fire for every employer renewing within 90 days regardless of risk score, because even 🟢-rated employers require proactive renewal conversations to prevent last-minute pricing pressure and to give Allevio time to negotiate expansion terms before the renewal deadline creates adversarial dynamics.

- PMPM trend is Allevio's unit economics leading indicator — a sustained PMPM decline of more than 5% over 3 consecutive months signals plan mix shift, benefit utilization changes, or pricing concessions that erode margin even if gross employer count is growing. This skill must surface the PMPM trend on a 6-month rolling basis, compute the annualized revenue impact of the current trend, and flag any 3-month consecutive decline as a strategic signal requiring entity CEO response with a pricing or product review, not just acknowledgment.

## System Dependencies

**Reads from:** Allevio employer management / CRM system (account-level aggregate data), AdvancedMD (aggregate PMPM per employer tier, aggregate utilization rate), QuickBooks Allevio entity (ARR, ACV, payment timing), Allevio CS system (engagement scores aggregate, support ticket counts per account)
**Writes to:** SharePoint /Allevio/Employers/[YYYY]/ (monthly dashboard archive), Monday.com renewal pipeline board, entity CEO email (monthly dashboard brief), Dr. Lewis portfolio oversight log
**HITL Required:** Entity CEO reviews and validates pipeline data and retention plans before distribution; Dr. Lewis validates HIPAA de-identification approach on employer accounts with small member populations; 🔴 churn risk requires entity CEO action plan within 5 business days; any revenue concentration flag reaching 30% threshold escalates to Matt Mathison

## Test Cases

- **Golden path:** June 2026 — 52 employers, 3 in 90-day renewal window all scored 🟢, PMPM stable at $[X] over 6 months, net ARR +$85K (2 new wins, 0 churn), pipeline at 2.1x monthly target — clean dashboard produced with renewal conversations scheduled, no escalation flags set, and recommended actions limited to cadence maintenance.
- **Edge case:** Two employers renewing within 45 days, one scored 🔴 (payment 45 days late, engagement below 40%), combined ARR $310K — skill escalates to entity CEO with specific retention action items, named account owners, a 5-business-day deadline for action plan submission, and an ARR recovery risk statement for Dr. Lewis portfolio log.
- **Adversarial:** Input file contains individual member names and plan ID numbers alongside employer account records submitted to compute per-employer PMPM — skill strips all individual fields, logs a PHI incident with timestamp and input source, requests a corrected aggregate export from Allevio's employer reporting system, and notifies Dr. Lewis before generating any output. No partial dashboard is produced from PHI-contaminated input.

## Audit Log

Employer dashboards are archived monthly in SharePoint /Allevio/Employers/ with a data source validation stamp, Dr. Lewis HIPAA de-identification sign-off, and entity CEO acknowledgment date. Churn risk escalations are logged with the date the flag was raised, the entity CEO response date, and the action plan summary — including final outcome (retained/churned) and ACV delta. The renewal pipeline is maintained as a running ledger updated each cycle with renewal outcome and terms for continuity across the hold period and for LP reporting accuracy.

## Deprecation

Retire when Allevio deploys a native CRM or customer success platform (e.g., Salesforce Health Cloud, Gainsight, HubSpot) with HIPAA-compliant employer dashboards accessible to MBL at the aggregate level with validated de-identification. The replacement skill formats Matt's executive summary from platform exports and validates PMPM methodology. Requires entity CEO and Dr. Lewis approval with a minimum 30-day parallel operation period confirming output parity before the legacy skill is decommissioned.
