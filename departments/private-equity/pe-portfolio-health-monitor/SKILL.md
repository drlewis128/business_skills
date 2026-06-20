---
name: pe-portfolio-health-monitor
description: "Monitor the health and performance of MBL Partners portfolio companies. Use when the user says 'portfolio health', 'portfolio status', 'how are the portfolio companies doing', 'portfolio company health', 'company health check', 'portfolio monitoring', 'portfolio review', 'how is Allevio doing', 'how is HIVE doing', 'how is Column6 doing', 'entity health', 'entity status', 'portfolio company status', 'portfolio update', 'portfolio performance', 'portfolio summary', 'portfolio companies', 'portfolio company metrics', 'portfolio KPIs', 'portfolio warning signs', 'portfolio risk', 'early warning', 'trouble signs', 'company in trouble', 'portfolio company problems', 'underperforming company', 'portfolio company concerns', 'health score', 'dashboard health', 'traffic light', 'red yellow green', 'RAG status', 'RAG rating', 'portfolio scorecard', 'company scorecard', or 'monthly portfolio review'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|all>] [--period <monthly|quarterly>] [--focus <financial|operational|strategic|risk>] [--action <review|score|report|flag>]"
---

# PE Portfolio Health Monitor

Monitor the health and performance of MBL Partners portfolio companies — scoring each entity against financial, operational, and strategic metrics; identifying early warning signs before they become crises; and briefing Matt Mathison on portfolio health status. Portfolio monitoring is MBL's primary tool for protecting invested capital: problems caught at the early warning stage (Month 1-2 of a trend) are recoverable; problems caught at the crisis stage (Month 6+ of a negative trend) are expensive and sometimes irreversible. Dr. Lewis monitors each portfolio company continuously and brings Matt Mathison a clear health picture monthly — not a rosy summary, a factual one.

## When to Use
- Monthly portfolio review preparation
- A metric for one entity is outside acceptable range
- Matt Mathison asks "how are the companies doing"
- An early warning pattern is emerging

## Portfolio Health Monitoring Framework

```
PORTFOLIO HEALTH SCORING SYSTEM:

  TRAFFIC LIGHT RATING:
    🟢 GREEN: On track — metrics within acceptable range; no material concerns
    🟡 YELLOW: Watch — one or more metrics trending negative; monitoring increased
    🔴 RED: Action required — metrics materially below target; intervention needed
    ⚫ CRITICAL: Crisis mode — immediate Matt Mathison involvement required

  SCORING DIMENSIONS (each rated separately):
    1. Financial performance (vs. budget and thesis)
    2. Operational performance (North Star metrics)
    3. Management team (executing, stable, or at risk)
    4. Strategic positioning (market share, competitive position)
    5. Risk register (emerging risks, known risks, resolved risks)

MBL PORTFOLIO ENTITIES AND HEALTH METRICS:

  ALLEVIO (Healthcare MSO):
    PRIMARY NORTH STAR: employer GRR ≥91% × claim ratio ≤87%
    Financial metrics:
      Revenue vs. budget (monthly; YTD)
      EBITDA vs. budget (monthly; YTD)
      PMPM revenue by employer group
    Operational metrics:
      Employer GRR (trailing 12 months) — target ≥91%
      Claim ratio (PMPM claims / PMPM revenue) — target ≤87%
      DSO — target ≤35 days
      Member utilization rate
      PCP panel fill rate
    HIPAA: all reporting to Dr. Lewis and Matt Mathison is aggregate/de-identified — no PHI
    Early warning triggers:
      Employer GRR drops below 88% → Yellow
      Employer GRR drops below 85% → Red
      Claim ratio rises above 90% → Yellow
      Claim ratio rises above 95% → Red
      Any employer group contract cancellation notice → Red
      
  HIVE PARTNERS (Oil & Gas Royalties):
    PRIMARY NORTH STAR: landowner GRR ≥85%
    Financial metrics:
      Royalty revenue vs. budget
      Revenue per acre (NRA)
      EBITDA vs. budget
    Operational metrics:
      Landowner GRR (trailing 12 months) — target ≥85%
      DSO — target ≤45 days
      Active producing wells vs. total drilled
      WTI price (current) — trigger at $58/bbl for 2+ weeks
    Early warning triggers:
      WTI <$65/bbl sustained → Yellow (watch for $58 trigger)
      WTI <$58/bbl for 2+ weeks → Red (new development PAUSED)
      Landowner GRR drops below 82% → Yellow
      Landowner GRR drops below 78% → Red
      Operator financial distress signals → Red immediately
      
  COLUMN6 / SIPROCAL (CTV/Mobile/Gaming):
    PRIMARY NORTH STAR: agency NRR ≥95% × VCR ≥92%
    Financial metrics:
      Revenue vs. budget
      Gross margin vs. budget
      EBITDA vs. budget
    Operational metrics:
      Agency NRR (trailing 12 months) — target ≥95%
      VCR (video completion rate) — target ≥92%
      IVT rate — target <2%
      DSO — target ≤55 days
    Early warning triggers:
      Agency NRR drops below 92% → Yellow
      Agency NRR drops below 88% → Red
      VCR drops below 89% → Yellow (traffic quality degradation)
      VCR drops below 85% → Red (immediate inventory audit)
      IVT rate rises above 3% → Red (inventory quality crisis)
      Loss of an agency representing >10% of revenue → Red

MONTHLY MONITORING CADENCE:

  WEEK 1 (data collection):
    Pull prior month actuals from each entity (QuickBooks; AdvancedMD; Covercy; DSP reports)
    Compare to budget and thesis assumptions
    Score each metric (green/yellow/red)
    
  WEEK 2 (analysis and rating):
    Overall health rating per entity
    Flag any metric that has deteriorated for 2+ consecutive months
    Identify any new risks
    
  WEEK 3 (Matt Mathison briefing):
    Monthly portfolio health briefing — all three entities; all five dimensions
    Red and Yellow items get a specific recommended action
    HIPAA compliance: Allevio metrics are aggregate/de-identified only
```

## Output Format

```markdown
# Portfolio Health Monitor — [Month Year]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison | **Date:** [Date]

---

## Portfolio Summary

| Entity | Overall health | Financial | Operational | Mgmt | Strategic | Risk |
|--------|--------------|---------|------------|------|----------|------|
| Allevio | 🟡 YELLOW | 🟢 | 🟡 | 🟢 | 🟢 | 🟡 |
| HIVE | 🟡 YELLOW | 🟡 | 🟢 | 🟢 | 🟡 | 🟡 |
| Column6 | 🟢 GREEN | 🟢 | 🟢 | 🟢 | 🟢 | 🟢 |

---

## Allevio Health Detail (aggregate data only — no PHI)

| Metric | Target | Actual | Trend | Status |
|--------|--------|--------|-------|--------|
| Employer GRR (TTM) | ≥91% | 89.2% | ↓ 2nd month | 🟡 YELLOW |
| Claim ratio | ≤87% | 85.4% | ↔ Stable | 🟢 |
| EBITDA vs. budget | ≥95% | 96.2% | ↔ Stable | 🟢 |
| DSO | ≤35 days | 31 days | ↔ Stable | 🟢 |

**Recommended action:** Schedule employer GRR review with Allevio CEO — second consecutive month below 91% target.

---

## Decisions Needed from Matt

1. **Allevio GRR:** Employer GRR 89.2% for 2nd consecutive month. Do you want Dr. Lewis to schedule a CEO intervention, or will you lead that conversation?
```

## Output Contract
- HIPAA is non-negotiable in Allevio reporting — all metrics and data presented to Dr. Lewis and Matt Mathison from Allevio are aggregate, de-identified, and financial/operational in nature; no individual member data, clinical information, or personal health information is included in any portfolio monitoring report; a portfolio health score that requires PHI to be meaningful is a score that needs to be redesigned to use aggregate data; there are no exceptions to this rule regardless of context or urgency
- Two consecutive months of deterioration triggers an escalation — a single bad month is noise; two consecutive months of the same negative metric is a trend that requires an intervention plan; Dr. Lewis flags any metric that has deteriorated for two or more consecutive months with a specific recommended action (not just a flag); the recommended action includes who should act, what they should do, and when; Matt Mathison decides whether to accept the recommendation or take a different path
- The health report presents the truth, not a managed narrative — PE portfolio monitoring that consistently presents green dashboards until a surprise crisis reflects one of two problems: the metrics were wrong, or the monitoring was managed; neither is acceptable; Dr. Lewis presents the actual metrics against the actual targets; a yellow or red rating is not a failure — it is the monitoring system working; Matt Mathison would rather see a yellow flag in January than a surprise in April; the health report exists to surface problems, not to avoid them
- HITL required: any entity rated RED → Matt Mathison same-day briefing (don't wait for the monthly report); any entity rated CRITICAL → Matt Mathison immediate call; any metric deteriorating for 3+ consecutive months without an intervention plan → Matt Mathison decision on leadership accountability; WTI trigger (HIVE) → Matt same-day briefing; any operator financial distress signal → Matt immediately

## System Dependencies
- **Reads from:** Allevio (aggregate financial and operational data from AdvancedMD and entity QuickBooks — no PHI); HIVE (Covercy production statements; royalty payment records; WTI price); Column6 (DSP campaign reports; IO billing; agency relationship data); pe-portfolio-kpi-dashboard (KPI tracking); pe-entity-ceo-monitor (management team assessment)
- **Writes to:** Monthly portfolio health report (SharePoint → Portfolio → HealthMonitor → [YYYY-MM]); Matt Mathison monthly briefing; pe-portfolio-reporting (health scores for LP quarterly reports); pe-value-creation-tracker (actual vs. planned value creation); entity CEO notifications (Yellow/Red items requiring their attention)
- **HITL Required:** RED entity → Matt same-day; CRITICAL entity → Matt immediate call; 3+ consecutive months negative without plan → Matt decision; WTI trigger → Matt same-day; operator distress → Matt immediately

## Test Cases
1. **Golden path:** Monthly review. Allevio: employer GRR 91.8% (green); claim ratio 86.1% (green); EBITDA 102% of budget (green). HIVE: WTI $72/bbl (green); landowner GRR 88.2% (green); EBITDA 94% of budget (yellow — watch). Column6: agency NRR 96.3% (green); VCR 93.1% (green). Overall: all three entities GREEN with one HIVE financial yellow. Report: "Portfolio is healthy. HIVE EBITDA 6% under budget — driven by lower WTI price ($72 vs. $76 budget assumption). No intervention needed; WTI is above our $58 pause threshold by a comfortable margin."
2. **Edge case:** Allevio employer GRR has declined from 93.2% → 91.1% → 89.2% over three months → Dr. Lewis: "Allevio employer GRR is now in its third consecutive month of decline — 93.2% → 91.1% → 89.2%. This is now a trend that requires an intervention plan, not just monitoring. Yellow is not adequate — I'm escalating this to a recommended action: I'll schedule a CEO review within the next 5 business days to understand the root cause (employer group cancellations? utilization under-performance? pricing pressure?) and bring a plan to you within 10 days. Matt: do you want to lead this conversation with the CEO or would you prefer I drive it with you briefed on the outcome?"
3. **Adversarial:** Allevio's CEO sends Dr. Lewis a detailed member-level report showing which individual members are driving the claim ratio → Dr. Lewis: "I need to flag this before I review it: this report appears to contain member-level data, which is PHI under HIPAA. I cannot review, retain, or include this in any portfolio reporting. I'll ask the Allevio CEO to resend an aggregate version — total claims by category; PMPM averages; cohort-level analysis — with no individual member identification. The claim ratio analysis we need for portfolio monitoring can be done with aggregate data. I'm not opening this report or forwarding it."

## Audit Log
All portfolio health reports retained (monthly; with metric data and ratings). HIPAA compliance documented (no PHI in any report). Red/Yellow flags retained with escalation records. Matt Mathison briefings retained (with dates). Intervention plans retained (with outcomes). WTI monitoring logs retained for HIVE.

## Deprecation
Portfolio health monitoring is a permanent function for the life of each fund investment. Health metrics are updated when the investment thesis or entity North Star metrics are revised. Entity-specific metrics are retired when an entity is exited.
