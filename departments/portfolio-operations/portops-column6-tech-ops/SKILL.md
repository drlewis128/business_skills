---
name: portops-column6-tech-ops
description: "Column6 tech ops, DSP integration health monitor, SSP integration health, ad serving performance Column6, data pipeline reliability, reporting data freshness Column6, ad latency tracker, fill rate monitor, error rate monitor Column6, incident tracking Column6, tech cost percent of revenue, CCPA consent management system status, Siprocal tech ops, Column6 platform health, programmatic integration monitor, DSP SSP uptime, ad stack reliability, weekly tech ops dashboard Column6, infrastructure health Column6, Column6 technology operations review"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "week ending date (e.g. June 27 2026), optional focus (e.g. DSP health / CCPA system / incident review)"
---

# Column6 Tech Ops

Column6's ad tech stack -- DSP/SSP integrations, ad serving infrastructure, data pipelines, and consent management -- is the operational backbone of revenue delivery. Any degradation in integration health, serving performance, or data freshness directly translates to delivery shortfall, billing disputes, or compliance exposure. This skill produces the weekly tech ops dashboard for Dr. John Lewis with escalation triggers for P1/P2 incidents and CCPA system failures.

## When to Use

- Weekly technology operations review for Dr. John Lewis (standing review)
- Any P1 or P2 incident is open or resolved with material revenue impact this week
- DSP bid win rate or SSP fill rate drops unexpectedly versus prior week baseline
- Ad serving latency or error rate spikes above threshold
- CCPA consent management system status requires verification after an update or outage
- Technology cost as a percentage of revenue trends toward the gross margin floor

## Column6 Tech Ops Framework

```
AD TECH STACK OVERVIEW
  DSP integrations: list of active demand-side platform partners with integration type
  SSP integrations: list of active supply-side platform partners with inventory type
  Data pipeline architecture: impression log > analytics DB > reporting > billing reconciliation
  Bid management systems: any real-time bidding optimization layer (in-house or third-party)
  Channel coverage: which integrations serve CTV vs Mobile vs Gaming inventory

DSP/SSP INTEGRATION HEALTH
  Per DSP: uptime %, bid request volume (daily), win rate %, queries per second (QPS), latency (ms), error rate
  Per SSP: uptime %, fill rate %, impressions available per day, CPM floor, error rate
  Health thresholds:
    DSP win rate: target >5%; <2% = escalation (bid floor or DSP policy issue)
    Latency: target <100ms; >200ms = revenue risk (DSPs drop Column6 from auction)
    SSP fill rate: target >70%; <50% = escalation (floor mismatch or inventory issue)
  Flag: any integration with >30% QPS drop vs 7-day average (traffic anomaly)

DATA PIPELINE RELIABILITY
  Pipelines tracked: impression log > analytics, click/event > reporting DB,
    billing reconciliation feed, agency reporting export
  Per pipeline: data freshness (hours since last successful run), SLA target, status
  SLA targets: impression analytics <4hrs | billing reconciliation <24hrs | agency export <6hrs
  Data quality checks: impression count variance vs ad server (<2% threshold),
    duplicate record rate (<0.1%), missing data gaps
  Flag: any pipeline exceeding SLA triggers billing dispute risk warning

AD SERVING PERFORMANCE
  Ad server uptime: target 99.5%
  Error rate: target <0.5%; error type breakdown (timeout, creative rejection, targeting mismatch)
  Average response latency: target <100ms; P95 <250ms; P99 flag if >500ms
  Delivery success rate: impressions served / impressions attempted
  Discrepancy tracking: first-party vs third-party impression count variance; >10% = escalation
  CTV-specific: VAST error rate <2%, video start rate >95%, buffering rate <1%

TECHNICAL INCIDENT TRACKING
  Severity classification:
    P1: revenue impact >$10K/hr OR CCPA system down OR ad serving fully down
    P2: revenue impact $1K-$10K/hr OR major integration degraded
    P3: minor degradation, no direct revenue impact
  Per incident: ID, severity, description, start time, revenue impact estimate, owner, ETA to resolve
  Resolved this week: incident ID, severity, duration, root cause, resolution applied
  Escalation path: P1 = immediate (Dr. Lewis + entity CTO + entity CEO)
    P2 = within 1 hour (Dr. Lewis + entity CTO)
    P3 = next business day (entity tech team)

TECHNOLOGY COST MONITORING
  Weekly tech infrastructure cost total
  Cost breakdown: ad serving infrastructure | data pipeline/storage | DSP/SSP integration fees |
    CCPA/consent tooling | other
  Tech cost as % of revenue: target threshold set by entity; flag if rising >2pts MoM
  Cost per impression (CPM cost basis): track trend for gross margin impact modeling
  Cost optimization opportunities: underutilized integrations, over-provisioned infrastructure, redundant tools
  Alert: tech cost % approaching level that threatens 35% gross margin floor = escalate to Dr. Lewis

CCPA CONSENT MANAGEMENT STATUS
  Consent platform: vendor name, version, operational status
  Consent signal propagation: working (signals reaching DSPs) / delayed / broken
  Critical rule: if consent signals not propagating to DSPs, behavioral targeting may be non-compliant
    -- this is a P1 event requiring immediate halt of behavioral targeting until resolved
  Consent records written this week: count
  Opt-out requests received this week: count (45-day tracking is in compliance-monitor skill)
  System change log: any updates, patches, or configuration changes to consent platform this week

WEEKLY TECH OPS DASHBOARD TEMPLATE
  See Output Format section below
```

## Output Format

```markdown
# Column6 Tech Ops Dashboard -- Week Ending [Date]
**Prepared by:** Dr. John Lewis | **Distribution:** Dr. John Lewis (primary), Column6 Entity CEO (escalations only)

## BLUF
[2-3 sentences: overall platform health, any open P1/P2 incidents, single most important tech risk]

## Platform Health Summary
| Component | Status | Uptime % | SLA | Notes |
|-----------|--------|----------|-----|-------|
| Ad Serving Platform | [OK/WARN/ALERT] | X% | 99.5% | ... |
| DSP Integration Layer | [OK/WARN/ALERT] | X% | 99.0% | ... |
| SSP Integration Layer | [OK/WARN/ALERT] | X% | 99.0% | ... |
| Reporting Data Pipeline | [OK/WARN/ALERT] | X% | 99.0% | ... |
| CCPA Consent Mgmt | [OK/WARN/ALERT] | X% | 99.9% | ... |

**Overall Platform Health:** [GREEN / AMBER / RED]

## DSP/SSP Integration Flags
[Flagged integrations only -- win rate, latency, fill rate anomalies]
[If none: "All DSP/SSP integrations within normal thresholds"]

## Incident Log
| Incident | Severity | Description | Status | Revenue Impact | Owner |
|----------|----------|-------------|--------|----------------|-------|
[Open and resolved-this-week incidents]
[If none: "No open incidents"]

## Data Pipeline Status
[Pipelines outside SLA only]
[If none: "All pipelines current"]

## Ad Serving Performance
| Metric | Actual | Target | Status |
|--------|--------|--------|--------|
| Error Rate | X% | <0.5% | [OK/FLAG] |
| Avg Latency | Xms | <100ms | [OK/FLAG] |
| Discrepancy | X% | <10% | [OK/FLAG] |

## Tech Cost
| Metric | Value | Status |
|--------|-------|--------|
| Tech Cost % Revenue | X% | [OK/FLAG] |
| MoM Trend | +/-X pts | [OK/FLAG] |

## CCPA Consent System
[One-line status: Operational / Degraded / DOWN -- consent signal propagation status]

## Actions Required
1. [Action -- Owner -- Due Date]
```

## Output Contract

- P1 incidents must be escalated immediately and in real-time -- they must not wait for the weekly dashboard. The weekly dashboard captures resolved P1s with root cause analysis; open P1s require same-day notification to Dr. Lewis, entity CTO, and entity CEO the moment the incident is classified. A P1 that surfaces only in the weekly report means the escalation chain failed.
- DSP latency above 200ms is classified as a revenue risk metric, not merely a performance observation. Most DSPs drop Column6 from their auction pool when response time consistently exceeds their timeout threshold, which means latency degradation is a direct revenue lever. Every report that flags latency above threshold must include an estimated revenue impact in addition to the technical description.
- CCPA consent management system failure is treated as a P1 event requiring an immediate halt recommendation for behavioral targeting. The consent platform is the control that makes behavioral data use lawful -- if signals are not reaching DSPs, serving behavioral ads is potentially a CCPA violation, not just a technical issue. The halt recommendation must be explicit and must not be softened to a monitoring note.
- Technology cost as a percentage of revenue must be tracked weekly because infrastructure cost spikes can erode gross margin before the monthly financial close captures them. The 35% gross margin floor is the ultimate backstop for Column6 financial health, and tech cost trends that threaten it must surface in this report before they appear in the revenue monitor as a realized breach.

## System Dependencies

**Reads from:** Ad serving platform logs and monitoring, DSP/SSP integration APIs and dashboards, data pipeline status monitors, CCPA consent management platform, cloud infrastructure cost tracking (billing dashboards), incident management system
**Writes to:** Weekly tech ops dashboard (Dr. Lewis distribution), P1/P2 escalation notifications (entity CEO and CTO), CCPA system status feed (input to compliance-monitor skill), incident post-mortem log
**HITL Required:** Dr. Lewis approves P1 post-mortems before sharing with entity CEO; Dr. Lewis reviews any tech cost escalation memo before it goes to Matt Mathison; Dr. Lewis authorizes behavioral targeting halt recommendation before it is communicated to entity ops team

## Test Cases

- **Golden path:** All systems green, one resolved P3 incident (DNS timeout, 12-minute duration, no revenue impact), DSP win rates stable at 6-9%, tech cost at 18% of revenue -- produces clean weekly dashboard with one preventive maintenance recommendation.
- **Edge case:** Reporting data pipeline stale for 7 hours (beyond 4-hour SLA) -- skill flags AMBER, estimates billing reconciliation impact for IOs in active billing window, recommends manual data pull, alerts entity tech team with resolution deadline.
- **Adversarial:** CCPA consent management platform goes down at 2am -- skill classifies as P1, triggers immediate escalation to Dr. Lewis and entity CTO, explicitly recommends halting behavioral targeting on all active campaigns until system is restored and consent signals confirmed propagating to all DSP partners.

## Audit Log

Weekly tech ops reports are archived with full system health snapshots, DSP/SSP performance metrics, incident records with revenue impact estimates, and CCPA system status at time of report. P1 and P2 incidents are fully documented with: detection timestamp, escalation timeline, revenue impact calculation, root cause, and resolution verification. CCPA system status is logged daily with timestamp to provide a regulatory audit trail independent of the weekly reporting cycle.

## Deprecation

This skill is deprecated when Column6 implements a fully managed observability platform with automated alerting, incident management, and cost monitoring built into its ad tech infrastructure -- at that point the skill's role reduces to a weekly exception summary for Dr. Lewis reviewing only flagged items rather than producing a full status dashboard from raw integration data.

---
*MBL Partners Portfolio Operations -- Column6 / Siprocal Technology Operations*
*HITL Chain: Dr. Lewis > Column6 CTO > Column6 CEO > Matt Mathison*
