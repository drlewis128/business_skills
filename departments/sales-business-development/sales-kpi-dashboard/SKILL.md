---
name: sales-kpi-dashboard
description: "Build and maintain the sales KPI dashboard for MBL portfolio companies. Use when the user says 'sales KPIs', 'sales metrics', 'sales dashboard', 'revenue metrics', 'sales performance metrics', 'key sales indicators', 'sales reporting', 'sales numbers', 'how are sales doing', 'sales scorecard', 'sales report', 'how many deals did we close', 'what is our win rate', 'what is our pipeline coverage', 'sales OKRs', 'lead-to-close rate', 'conversion rate', 'average deal size', 'sales velocity', 'monthly sales report', 'quarterly sales report', or 'sales performance review'."
metadata:
  version: 2.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <weekly|monthly|quarterly>] [--action <build|update|review|present>]"
---

# Sales KPI Dashboard

Build and maintain the sales KPI dashboard for MBL portfolio companies — tracking the metrics that reveal whether the sales function is healthy, on track, and improving. The sales dashboard is the instrument panel for the CEO and Matt Mathison: it converts pipeline activity and closed deals into a clear picture of commercial performance. Dr. Lewis publishes the dashboard monthly per company and quarterly for the MBL portfolio summary.

## When to Use
- Monthly sales performance reporting
- CEO or Matt Mathison requests a sales performance update
- Quarterly portfolio review preparation
- After a significant pipeline change (major win; major loss; rep departure)
- Annual sales target setting (use historical KPIs to set credible targets)

## Sales KPI Framework

```
TIER 1 — LAGGING INDICATORS (results; measure monthly):
  Revenue closed (bookings): Total ACV of deals signed in the period
    Allevio: New employer group bookings (net new ACV)
    Column6: IO bookings (total campaign value signed)
    Target: Quota by period
    
  Revenue recognized: Revenue earned in the period (per GAAP ASC 606)
    Allevio: Monthly PMPM × active member count (recognized monthly)
    Column6: Impressions delivered × CPM / 1,000 (recognized as delivered)
    Target: Per the operating plan
    
  Win rate: Closed Won ÷ (Closed Won + Closed Lost)
    Target: >30% for Allevio (employer group); >25% for Column6 (agency competitive)
    
  Average deal size (ACV): Total bookings ÷ number of deals closed
    Tracks whether you're winning larger or smaller deals over time
    
  Sales cycle length: Average days from first contact to close
    Shorter = faster; track by lead source and segment
    
  Gross Retention Rate (GRR): Revenue retained from existing customers
    Target: >90% for Allevio; >70% for Column6 (campaign-based)
    
  Net Retention Rate (NRR): Retained + expansion ÷ prior period revenue
    Target: >100% (existing customers growing)

TIER 2 — LEADING INDICATORS (activity; measure weekly):
  Pipeline created: Total ACV of new opportunities added to the pipeline
    Target: 3× quota (maintain coverage ratio)
    If pipeline creation is below 3× quota: Prospecting problem → intensify outbound
    
  Pipeline coverage: Total active pipeline ÷ remaining quota in period
    Target: >3× (if below 2×: crisis — alert CEO within 24 hours)
    
  Meeting/call volume: Number of discovery calls held per week
    If low: Outbound sequencing problem; rep productivity problem
    
  Outreach activity: Emails sent; calls made; LinkedIn connections (by rep)
    Track by rep to identify productivity outliers (high or low)
    
  Proposal submission rate: Proposals submitted ÷ discovery calls completed
    If too low (<20%): Reps not advancing qualified deals to proposal
    If too high (>60%): Reps may be proposing to unqualified prospects

TIER 3 — EFFICIENCY INDICATORS (track quarterly):
  Cost per acquisition (CAC): Total sales spend ÷ new customers acquired
  LTV:CAC ratio: Customer lifetime value ÷ CAC
    Target: >3× (healthy unit economics)
  Quota attainment by rep: Individual performance vs. quota
    
ENTITY-SPECIFIC KPI NOTES:
  ALLEVIO:
    Member count: By group and total (member count is the leading indicator for revenue)
    Claim ratio trend: Average across all employer groups (measure of care management value)
    Renewal rate: >90% target; below 85% = immediate CEO escalation
    Days to implement: Contract signature to first PMPM payment (operational health)
    
  COLUMN6:
    Impressions delivered vs. contracted: Delivery rate (target >95%)
    Completion rate (VCR): Video completion rate (target >85%)
    Repeat booking rate: Same agency within 90 days (best retention signal)
    Average CPM: Trending up (premium) or down (commoditization pressure)?
    
  HIVE:
    Lease acquisitions: Number and acreage of mineral leases signed
    LOI-to-close rate: Of LOIs sent, % converted to signed leases
    Average royalty rate: Market check on terms

DASHBOARD FORMAT:
  Monthly scorecard: 8-10 KPIs; actual vs. target; trend arrow; no narrative
  Quarterly deep-dive: Scorecard + win/loss patterns + pipeline health + recommendations
```

## Output Format

```markdown
# Sales KPI Dashboard — [Entity] | [Month YYYY]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Delivered to:** CEO + Matt Mathison (quarterly)

---

## Scorecard

| KPI | Target | Actual | vs. Target | Trend |
|-----|--------|--------|-----------|-------|
| Bookings (new) | $[X]K | $[X]K | [X]% | ↑ / → / ↓ |
| Revenue recognized | $[X]K | $[X]K | [X]% | ↑ / → / ↓ |
| Win rate | >30% | [X]% | ✅ / ⚠️ / ❌ | ↑ / → / ↓ |
| Avg deal size | $[X]K | $[X]K | [X]% | ↑ / → / ↓ |
| Sales cycle | [X] days | [X] days | ✅ / ⚠️ / ❌ | ↑ / → / ↓ |
| Pipeline coverage | >3× | [X]× | ✅ / ⚠️ / ❌ | ↑ / → / ↓ |
| Gross Retention | >90% | [X]% | ✅ / ⚠️ / ❌ | ↑ / → / ↓ |
| Meetings/week | [X] | [X] | ✅ / ⚠️ / ❌ | ↑ / → / ↓ |

---

## Alerts

| Metric | Status | Issue | Action required |
|--------|--------|-------|----------------|
| Pipeline coverage | ❌ 1.8× | Below 2× threshold | Intensify outbound immediately |

---

## 30-Day Outlook

**Bookings forecast:** $[X]K (commit) / $[X]K (upside)
**Key deals:** [Deal A — $X K; expected close date] | [Deal B — $X K; expected close date]
**Top risk:** [Pipeline coverage / specific stalled deal / at-risk renewal]
```

## Output Contract
- Trend is more important than the number — a win rate of 28% is concerning if last month was 38%; it is acceptable if last month was 22%; Dr. Lewis always presents KPIs with a trend indicator and a 3-month trailing comparison; a single data point is not a trend
- Eight to ten metrics is the right number — a dashboard with 25 metrics is a data dump; 3 metrics misses important signals; Dr. Lewis targets 8-10 KPIs in the monthly scorecard, prioritized by what the CEO uses to make decisions
- Pipeline coverage below 2× triggers a same-day CEO alert — not the next scheduled report; coverage recovery requires immediate action on outbound prospecting, not reporting adjustments; Dr. Lewis never holds this alert for a scheduled meeting
- HITL required: Dr. Lewis builds and publishes; CEO reviews monthly; Matt Mathison receives quarterly as part of the portfolio performance report; KPI targets are set annually in the operating plan and do not change mid-year without a formal reforecast; Dr. Lewis does not send the dashboard to Matt Mathison without CEO having reviewed it first

## System Dependencies
- **Reads from:** CRM (GoHighLevel — closed deals; pipeline value; stage; activity volume); QuickBooks (revenue recognized by entity and period); sales-renewal-manager (GRR/NRR inputs); sales-pipeline-manager (coverage ratio; pipeline by stage); sales-forecast-builder (bookings forecast vs. actual); fpa-annual-budget-builder (quota targets by period); member count (Allevio AdvancedMD); impressions delivery (Column6)
- **Writes to:** Monthly sales KPI scorecard (SharePoint/Sales/<Company>/Reporting/[YYYY-MM]_SalesKPI.pdf); quarterly portfolio sales summary (for Matt Mathison); CEO alert (when pipeline coverage falls below 2×); annual sales performance review (for comp review; target setting)
- **HITL Required:** Dr. Lewis builds and presents; CEO validates the data; Matt Mathison receives quarterly; CEO reviews monthly before it is finalized; Dr. Lewis does not send the dashboard to Matt Mathison without CEO review; Dr. Lewis does not change KPI targets without CEO approval through the annual operating plan process

## Test Cases
1. **Golden path:** Allevio October sales KPI report → Bookings: $145K (quota $120K; +21%); Revenue recognized: $78K (plan $75K; +4%); Win rate: 36% (target >30% ✅); Avg deal size: $36K; Sales cycle: 47 days (vs. 52 days last month ↓ improving); Pipeline coverage: 4.2× ✅; GRR: 94% ✅; Meetings/week: 6 (target 5 ✅); No alerts; Outlook: 2 contracts in review totaling $142K; Dashboard published; CEO approves; included in Matt Mathison's Q4 interim portfolio update
2. **Edge case:** Column6 September shows $0 bookings — two IOs slipped to October → Dr. Lewis includes full context: "September bookings: $0 — two IO deals totaling $380K slipped to October due to agency procurement delays (both confirmed in final review). Revenue recognized: $92K (campaigns continue delivering). Pipeline coverage for Q4: 3.4×. No strategic concern." CEO confirms the context; Matt Mathison's Q3 summary notes the September slip as timing, not churn
3. **Adversarial:** CEO wants to change the win rate target from >30% to >25% after two months at 27% → Dr. Lewis: "Before adjusting the target, the decline from 32% to 27% over 2 months is a trend, not a calibration problem. The win/loss analysis showed 3 losses to a new competitor — that's the issue, not the target. Recommend fixing the competitive positioning before lowering the bar. If we address the competitive threat and still can't sustain >25% over 3 quarters, then we have a target conversation." CEO agrees to hold the target and focus on the competitive response

## Audit Log
All monthly KPI dashboards retained by entity and period. CEO review records retained. Matt Mathison quarterly submissions retained. Pipeline coverage alerts retained (date; level; CEO notification). Annual performance records retained. KPI target change records retained.

## Deprecation
Retire when each portfolio company has a dedicated VP of Sales or Sales Operations who owns the sales KPI dashboard — with Dr. Lewis reviewing the quarterly summary and Matt Mathison receiving the portfolio-level commercial performance report.
