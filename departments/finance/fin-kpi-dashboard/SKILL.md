---
name: fin-kpi-dashboard
description: "Build and maintain the financial KPI dashboard for MBL Partners and portfolio companies. Use when the user says 'financial KPIs', 'finance dashboard', 'financial dashboard', 'finance KPIs', 'financial metrics', 'key financial metrics', 'show me the financial metrics', 'financial health', 'entity financial health', 'financial scorecard', 'finance scorecard', 'financial performance', 'what are our key financial metrics', 'set up the financial dashboard', 'track the financial KPIs', 'financial indicators', 'leading financial indicators', 'lagging financial indicators', 'financial health check', 'portfolio financial health', 'monthly financial metrics', 'quarterly financial metrics', 'financial status', 'green yellow red financials', 'financial traffic light', or 'financial health score'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <all|MBL|Allevio|HIVE|Column6>] [--cadence <weekly|monthly|quarterly>] [--action <build|update|review|alert>] [--view <executive|entity|portfolio>]"
---

# Fin KPI Dashboard

Build and maintain the financial KPI dashboard for MBL Partners and portfolio companies — tracking the 5-7 financial metrics that most accurately reflect each entity's financial health, with Green/Yellow/Red thresholds that trigger escalation when targets are not being met. The financial KPI dashboard is not a comprehensive financial report; it is the early warning system that tells Dr. Lewis and Matt Mathison at a glance whether each entity is financially healthy, at risk, or in crisis — with enough specificity to know what's wrong and enough brevity to review in under 5 minutes.

## When to Use
- Monthly after close (update all entity KPIs with actual data)
- Weekly (update cash position and collections metrics)
- A Tier 3 alert is triggered (threshold breach)
- Matt Mathison asks "how are we doing financially across the portfolio?"
- Preparing the monthly financial summary (exec-cfo-oversight) or board package

## Financial KPI Framework

```
MBL PORTFOLIO — FINANCIAL KPI SET:

  Each entity: maximum 7 KPIs (breadth kills focus)
  KPIs: 1 north star + 3-4 performance + 1-2 health

ALLEVIO FINANCIAL KPIs:

  North Star: Gross Revenue Retention (GRR)
    Target: ≥ 91%
    Green: ≥91% | Yellow: 88-91% | Red: <88%
    Source: Revenue reconciliation by employer group
    
  Performance KPIs:
    1. PMPM Revenue (per-member-per-month)
       Target: $420+ (escalating per renewal schedule)
       Green: ≥$420 | Yellow: $400-$420 | Red: <$400
       
    2. Claim Ratio (medical costs / premium revenue)
       Target: ≤87% (improving trend)
       Green: ≤87% | Yellow: 87-91% | Red: >91%
       Source: AdvancedMD adjudicated claims vs. premium receipts
       
    3. AdvancedMD Collection Rate (collected / invoiced)
       Target: ≥93%
       Green: ≥93% | Yellow: 90-93% | Red: <90%
       
    4. EBITDA Margin
       Target: ≥8% (improving toward 10%+)
       Green: ≥8% | Yellow: 5-8% | Red: <5%
       
  Health KPIs:
    5. Operating Runway (weeks of cash above minimum reserve)
       Target: ≥12 weeks
       Green: ≥12 | Yellow: 8-12 | Red: <8
       
    6. AR 90+ Days (% of total AR over 90 days)
       Target: <5%
       Green: <5% | Yellow: 5-10% | Red: >10%

HIVE PARTNERS FINANCIAL KPIs:

  North Star: Landowner GRR (royalty-paying landowner retention)
    Target: ≥85%
    Green: ≥85% | Yellow: 80-85% | Red: <80%
    
  Performance KPIs:
    1. Royalties Distributed per Acre (per quarter)
       Target: >$[benchmark] (WTI-adjusted)
       Green: ≥target | Yellow: 85-100% of target | Red: <85% of target
       
    2. Production Cost per BOE (barrel of oil equivalent)
       Target: <$[benchmark] per BOE
       Green: <target | Yellow: target to +15% | Red: >+15%
       
    3. Covercy Reconciliation Accuracy (royalty distributions matching QuickBooks)
       Target: Zero unexplained variances
       Green: Reconciled | Yellow: <$5K variance | Red: >$5K unreconciled
       
  Health KPIs:
    4. WTI Price vs. Budget Assumption
       Budget assumption: $[X]/bbl
       Green: Within $5 | Yellow: $5-$10 below | Red: >$10 below (capex trigger)
       
    5. Operating Runway (weeks)
       Target: ≥16 weeks
       Green: ≥16 | Yellow: 12-16 | Red: <12

COLUMN6 FINANCIAL KPIs:

  North Star: Agency NRR (net revenue retention across agency relationships)
    Target: ≥95%
    Green: ≥95% | Yellow: 90-95% | Red: <90%
    
  Performance KPIs:
    1. Video Completion Rate (VCR) — drives pricing premium
       Target: ≥92%
       Green: ≥92% | Yellow: 88-92% | Red: <88% (make-good trigger)
       
    2. CPM Rate vs. Industry Benchmark
       Target: Premium of ≥15% over programmatic benchmark
       Green: ≥15% premium | Yellow: 5-15% | Red: <5% (commoditization risk)
       
    3. IO Collection Rate (collected within terms)
       Target: ≥90% of IOs collected within payment terms
       Green: ≥90% | Yellow: 85-90% | Red: <85%
       
    4. EBITDA Margin
       Target: ≥15%
       Green: ≥15% | Yellow: 10-15% | Red: <10%
       
  Health KPI:
    5. Operating Runway (weeks)
       Target: ≥8 weeks
       Green: ≥8 | Yellow: 6-8 | Red: <6

PORTFOLIO-LEVEL FINANCIAL HEALTH SUMMARY:

  MBL Partners (portfolio level):
    1. Weighted Portfolio NRR (weighted by entity revenue)
       Target: ≥100%
       Green: ≥100% | Yellow: 95-100% | Red: <95%
       
    2. Capital Reserve (MBL reserve as % of total available capital)
       Target: ≥15% (exec-capital-allocation)
       Green: ≥15% | Yellow: 12-15% | Red: <12%
       
    3. Portfolio EBITDA vs. Plan (combined)
       Target: Within 10% of full-year budget
       Green: Within 10% | Yellow: 10-20% miss | Red: >20% miss

ALERT ESCALATION (same thresholds as exec-kpi-dashboard):
  Tier 3 = Red in any single KPI → Matt Mathison within 24 hours
  Tier 3 simultaneous (2+ entities) → Matt Mathison same day
  Financial Tier 1 (cash below reserve; payroll risk) → Matt phone call immediately
```

## Output Format

```markdown
# Financial KPI Dashboard — [Month Year]
**Prepared by:** Dr. Lewis | **As of:** [Date]

---

## Portfolio Health Summary

| Entity | North Star | Status | Key flag |
|--------|-----------|--------|---------|
| Allevio | GRR [X%] | 🟢/🟡/🔴 | [Top issue if not green] |
| HIVE | Landowner GRR [X%] | 🟢/🟡/🔴 | [Top issue] |
| Column6 | Agency NRR [X%] | 🟢/🟡/🔴 | [Top issue] |

---

## Allevio Financial KPIs

| KPI | Target | Actual | Status | Trend |
|-----|--------|--------|--------|-------|
| GRR | ≥91% | X% | 🟢/🟡/🔴 | ↑/↓/→ |
| PMPM Revenue | ≥$420 | $X | 🟢/🟡/🔴 | ↑/↓/→ |
| Claim Ratio | ≤87% | X% | 🟢/🟡/🔴 | ↑/↓/→ |
| Collection Rate | ≥93% | X% | 🟢/🟡/🔴 | ↑/↓/→ |
| EBITDA Margin | ≥8% | X% | 🟢/🟡/🔴 | ↑/↓/→ |
| Operating Runway | ≥12 wks | X wks | 🟢/🟡/🔴 | ↑/↓/→ |

[Same format for HIVE and Column6]

---

## Alerts This Month

| Entity | KPI | Threshold | Actual | Action |
|--------|-----|---------|--------|--------|
| [Entity] | [KPI] | [Target] | [Actual] | [Immediate action] |
```

## Output Contract
- 7 KPIs maximum per entity — financial dashboards grow; they never shrink on their own; every month someone wants to add "one more metric" that's useful for some purpose; the rule is firm at 7 because a dashboard with 15 metrics is not a dashboard, it's a spreadsheet; if a new KPI is more important than an existing one, the new one replaces the existing one; the discipline of the cap forces the conversation about what actually matters
- Thresholds are published and don't change mid-stream — a Red threshold that gets adjusted to Yellow when the entity is in the Red zone is not a threshold, it's a rationalization; MBL financial KPI thresholds are set in January (or at entity onboarding) and reviewed only at annual planning; mid-year threshold changes require Matt Mathison approval and a documented rationale; Dr. Lewis does not soften a Red to avoid a difficult conversation
- Trend matters as much as status — a KPI at Yellow with an improving trend (↑) is a different situation than a KPI at Yellow with a deteriorating trend (↓); the dashboard shows both; a Yellow/↑ is a situation to monitor; a Yellow/↓ is a situation that will be Red next month without intervention; Dr. Lewis identifies and flags deteriorating trends before they breach the Red threshold
- HITL required: any Red KPI triggers Matt Mathison notification within 24 hours; simultaneous Red at 2+ entities is a same-day notification; financial Tier 1 alerts (cash below reserve) are phone calls; Matt receives the monthly financial KPI dashboard by the 20th; threshold changes require Matt approval; entity CEOs receive their entity section before it goes to Matt (no surprises rule)

## System Dependencies
- **Reads from:** QuickBooks (EBITDA; revenue; cash position — all entities); fin-cash-flow-planner (operating runway metric); fin-variance-analyzer (performance vs. budget context for each KPI); Allevio: AdvancedMD (collection rate; claim ratio data); HIVE: Covercy (royalty distributions; landowner GRR); Column6: DSP reports (VCR; CPM data); IO billing records (collection rate)
- **Writes to:** Financial KPI dashboard (SharePoint → Finance → Dashboard → [YYYY]-[MM]); exec-cfo-oversight (dashboard metrics feed into the monthly financial summary); exec-kpi-dashboard (financial metrics are a subset of the portfolio operating dashboard); exec-board-reporting (board receives the financial dashboard as part of the monthly package); exec-lp-reporting (quarterly financial health summary for LPs)
- **HITL Required:** Red KPI → Matt within 24 hours; simultaneous Red 2+ entities → Matt same day; Tier 1 financial alert → Matt phone call immediately; monthly dashboard to Matt by the 20th; threshold changes require Matt approval

## Test Cases
1. **Golden path:** Monthly financial KPI update; all three entities Green except HIVE WTI (Yellow at $57 vs. $62 budget assumption — $5 below budget, just at the Yellow/Red boundary); Allevio claim ratio trending improving (90% → 89% → 88% last 3 months — still Yellow but ↑ trending toward Green); Column6 all Green. Dashboard summary to Matt: "Portfolio is in reasonable shape this month. HIVE WTI is Yellow — currently $57 vs. $62 budget; below the $58 capex trigger but not by enough to make a decision yet. I'm monitoring weekly. Allevio claim ratio is Yellow but improving — the clinical intervention program is working; at this trajectory, we hit Green (87%) in 2 months. No Red alerts this month. No action required from you."
2. **Edge case:** Column6 VCR drops to 86% (Red threshold is <88%) after a DSP platform update affects delivery → Tier 3 alert. Dr. Lewis: "Column6 VCR is Red — 86% vs. the 92% target. This is a make-good trigger. Root cause: DSP platform update on June 12 affected delivery optimization for the CTV inventory. [Column6 CEO] is already on it — they've identified the affected campaigns and are running make-goods this week. Expected resolution: 5-7 days. The financial exposure: 3 agency IOs are affected totaling $145K; make-goods will extend delivery by 1 week. No revenue loss expected — just timing. Matt notification within 24 hours per protocol." Matt: "Understood. Follow up when VCR is back to Green."
3. **Adversarial:** An entity CEO argues that a KPI threshold is "unrealistic" after they miss it → Dr. Lewis: "I hear the frustration. But the thresholds were set in January with your input — you agreed that [X%] was the target. If the target turns out to be wrong, the right time to discuss it is at annual planning in December, not after we've missed it in June. Changing thresholds mid-year when we're below them sends a signal to Matt Mathison that we're managing the scorecard rather than the business. What I can do: document in this month's dashboard that the miss has a specific root cause and a specific recovery plan. That's honest and it's actionable. What I can't do is move the target. The target stays."

## Audit Log
All monthly KPI snapshots retained with actual values and status. Threshold change history retained (what changed; who approved; date; reason). Red alert records retained (when triggered; Matt notification time; resolution). Trend data retained rolling 12 months for each entity KPI.

## Deprecation
Update annually at planning time to ensure KPIs remain aligned with entity strategy. Retire specific entity KPIs when replaced by more relevant measures — with Matt Mathison approving any KPI set change. The portfolio-level summary is permanent to the MBL operating model.
