---
name: anomaly-detection-planner
description: "Design anomaly detection for data and business metrics. Use when the user says 'anomaly detection', 'detect anomalies', 'alert on outliers', 'data anomaly', 'metric alert', 'spike detection', 'something looks wrong in the data', 'automatically alert when metrics are unusual', 'outlier detection', or 'data monitoring alerts'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--domain <financial|product|operations|data-pipeline>] [--method <threshold|statistical|ml>]"
---

# Anomaly Detection Planner

Design anomaly detection systems that automatically flag unusual patterns in business metrics and data pipelines. Manual monitoring of dashboards misses problems until they're large. Automated anomaly detection catches them early — before a bad month becomes a bad quarter, before a data pipeline failure corrupts a week of reports, or before a financial anomaly becomes an audit finding. For MBL, anomaly detection covers three domains: financial data (QuickBooks), product metrics (AI product health), and data pipeline health.

## When to Use
- Building a monitoring system for critical business metrics
- A metric behaved unexpectedly and nobody noticed for days
- Data pipeline produced wrong data and it wasn't caught
- Financial data showed an unusual entry that wasn't investigated
- AI product quality degraded without triggering any alert
- Preparing a monitoring plan for a new product launch

## Anomaly Detection Methods

```
Threshold-based (simple):
  Alert when metric crosses a fixed threshold
  Example: "Alert if daily revenue < $0"
  Pros: Simple; low false positive rate for obvious issues
  Cons: Won't catch gradual drift; requires manual threshold setting
  Use for: Clear business rules (negative revenue is always wrong)

Statistical (standard deviation):
  Alert when value deviates > N standard deviations from the mean
  Example: "Alert if daily signups > 3σ above 30-day average"
  Pros: Adapts to baseline; catches relative anomalies
  Cons: Requires stable baseline; seasonal patterns confound it
  Use for: Metrics with stable baselines (most operational metrics)

Trend-based:
  Alert when the rate of change is unusual
  Example: "Alert if retention drops >5pp week-over-week"
  Pros: Catches gradual drift before threshold is hit
  Cons: More complex to define; lag from trend detection
  Use for: KPIs where direction matters more than absolute value

ML-based (for high-volume data):
  Use time-series models to predict expected values; alert on deviations
  Tools: Prophet, STL decomposition
  Pros: Handles seasonality and trends automatically
  Cons: Requires data history; more complex setup
  Use for: High-volume metrics with clear seasonality
```

## Alert Design Principles

```
Alert hierarchy:
  🔴 Critical: Requires immediate action (< 1 hour response)
    Example: Revenue = $0, pipeline completely failed, HIPAA breach
  🟠 High: Requires action today
    Example: Retention drops >10pp, key metric at 50% of target
  🟡 Medium: Review within 24 hours
    Example: Metric trending in wrong direction for 3 days
  🟢 Advisory: Review at next scheduled review
    Example: Metric slightly below target but trending toward it

Alert fatigue prevention:
  An alert that fires every day stops being acted on
  Target: < 3 alerts per week per recipient (for non-critical)
  False positive rate should be < 20% — if >20%, tighten the threshold
  Batch non-critical alerts into a daily digest; fire critical alerts immediately
```

## Output Format

```markdown
# Anomaly Detection Plan — <Domain>
**Date:** <date> | **Designer:** Dr. John Lewis
**Domain:** Financial / Product / Data Pipeline / Operations
**Alert recipient:** Dr. Lewis (primary); Matt Mathison (escalation for Critical)

---

## Alert Registry

| Alert | Metric | Method | Threshold | Severity | Response time | Channel |
|-------|--------|--------|---------|---------|--------------|---------|
| Revenue anomaly | Daily invoice total | Threshold | < $0 OR > 3σ | 🔴 Critical | 1 hour | Teams + Email |
| Retention drop | D7 retention | Trend-based | Drop >5pp WoW | 🟠 High | Same day | Teams |
| Pipeline failure | ETL job status | Threshold | Any job failure | 🟠 High | 4 hours | Teams |
| API cost spike | Claude API cost | Statistical | > 2σ above 14-day avg | 🟡 Medium | 24 hours | Daily digest |
| Data freshness | Dashboard lag | Threshold | > 26 hours | 🟡 Medium | 24 hours | Teams |

---

## Alert Detail

### Alert: <Name>

**Metric:** <What is being monitored>
**Why this matters:** <Business consequence if this anomaly goes undetected>
**Method:** <Threshold / Statistical / Trend-based>
**Formula:**
```
Alert condition: daily_revenue < 0 
OR daily_revenue > (30-day avg + 3 × 30-day std_dev)
```
**Severity:** 🔴 Critical
**Response time:** Within 1 hour of alert
**Response owner:** Dr. Lewis (primary); Matt Mathison (if unresolved after 2 hours)
**False positive handling:** If an obvious legitimate cause (end-of-month credit memo), acknowledge in Teams and log the reason

---

## Financial Anomaly Detection

| Anomaly | Detection method | Threshold | Historical false positive rate |
|---------|----------------|---------|-------------------------------|
| Negative daily revenue | Threshold | < $0 | 0% (never false positive) |
| Revenue 3σ spike | Statistical | > 3σ from 30-day avg | 5% (large invoices) |
| Duplicate payment | Exact match | Same vendor + amount + date ±3 days | 2% (rounding) |
| Unusual expense category | Statistical | > 2σ by category | 15% (acceptable) |

---

## Product Metric Anomaly Detection

| Anomaly | Detection method | Threshold |
|---------|----------------|---------|
| D7 retention drop | Trend-based | Drop >5pp vs. prior week |
| API cost spike | Statistical | > 2σ above 14-day rolling avg |
| HITL rejection surge | Threshold | > 25% rejection rate in any 24h window |
| Summary failure rate | Threshold | > 5% of meetings with no summary |

---

## Data Pipeline Anomaly Detection

| Anomaly | Detection method | Threshold |
|---------|----------------|---------|
| Pipeline failure | Event-based | Any job failure |
| Row count anomaly | Statistical | < 50% or > 200% of expected |
| Freshness breach | Threshold | Last successful run > 26h ago |
| Schema drift | Schema comparison | Any new/removed column |

---

## Implementation

| Tool | Use | Setup |
|------|-----|-------|
| Metabase alerts | Dashboard metric thresholds | Built into Metabase; alert on metric value |
| dbt tests | Data quality at transformation | dbt test; fails block the pipeline |
| Google Cloud Monitoring | BigQuery job failure alerts | Stackdriver alert on job failure |
| Custom Python script | Multi-metric statistical alerts | OpenFang anomaly monitor skill |
```

## Output Contract
- Every alert has a named response owner and response time — an alert with no owner is noise
- False positive rates always estimated — alert fatigue prevention requires knowing the signal-to-noise ratio
- Financial anomaly detection always includes payment/revenue monitoring — financial errors must be caught early
- AI product alerts always included for AI products — HITL rate and API cost anomalies are AI-specific monitoring
- HITL required: Dr. Lewis designs and reviews alert thresholds; Critical alerts always reach Dr. Lewis; Matt Mathison notified for Critical alerts unresolved >2 hours; HIPAA breach alerts follow Allevio privacy officer protocol

## System Dependencies
- **Reads from:** BigQuery metrics, QuickBooks data, Claude API usage dashboard, pipeline job logs
- **Writes to:** Alert configuration (Metabase, GCP, custom scripts); alert log
- **HITL Required:** Dr. Lewis approves alert thresholds; Critical alerts reach Dr. Lewis always; HIPAA breach protocol overrides all other escalation paths

## Test Cases
1. **Golden path:** Financial anomaly detection → Revenue daily: threshold <$0 + statistical >3σ; duplicate payment: exact match detector; expense spike: statistical by category; implementation: Metabase alerts for revenue; dbt tests for data quality; Python script for statistical checks; all alerts → Dr. Lewis Teams message; Critical alerts → email as well; quarterly false positive review to tune thresholds
2. **Edge case:** A legitimate business event (large one-time deal) triggers the revenue spike alert → acknowledge alert immediately; log the reason ("$250K one-time professional services deal — legitimate"); adjust alert rule if this pattern will recur; consider a "whitelist" for known large events; the goal is not zero alerts but zero unresolved alerts
3. **Adversarial:** Team disables alerts because "they're always firing false positives" → a disabled alert is worse than no alert; fix the threshold, don't disable the monitoring; run a false positive analysis: for the last 30 alerts, how many were genuine vs. false? use that to set tighter or looser thresholds; if >50% are false positives, the threshold is wrong; if <5%, the threshold is right

## Audit Log
Alert configurations versioned. Alert fire log retained. False positive analysis results documented quarterly. HIPAA alert logs maintained per HIPAA requirements.

## Deprecation
Retire when MBL adopts a dedicated data observability platform (Monte Carlo, Anomalo, or similar) with automated anomaly detection.
