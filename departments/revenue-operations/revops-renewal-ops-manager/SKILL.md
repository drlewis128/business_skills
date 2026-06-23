---
name: revops-renewal-ops-manager
description: "Manage renewal operations and gross revenue retention for MBL Partners portfolio entities. Use when the user says 'renewal', 'renewals', 'renewal management', 'renewal ops', 'renewal operations', 'GRR', 'gross revenue retention', 'net revenue retention', 'NRR', 'contract renewal', 'renewal forecast', 'renewal tracking', 'renewal pipeline', 'at-risk renewal', 'renewal health', 'renewal process', 'client renewal', 'employer renewal', 'agency renewal', 'renewing clients', 'renewal rate', 'churn prevention', 'client retention', 'retention management', 'retention rate', 'renew the contract', 'renewal negotiation', 'renewal outreach', 'renewal cadence', 'renewal alert', 'upcoming renewals', 'renewal dashboard', or 'who is renewing this quarter'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--period <30|60|90|180>] [--action <forecast|review|alert|negotiate>]"
---

# RevOps Renewal Ops Manager

Manage renewal operations and gross revenue retention across MBL Partners portfolio entities — maintaining the renewal pipeline, tracking GRR and NRR, alerting on at-risk accounts, and ensuring every renewal is handled proactively rather than reactively. Retention is the foundation of a healthy revenue model; every renewal saved is more valuable than a new logo won at the same ACV.

## When to Use
- Monthly renewal forecast and pipeline review
- Identifying at-risk accounts before renewal dates
- Tracking GRR and NRR metrics for entity CEO or Dr. Lewis
- Preparing for a renewal negotiation with a specific employer or agency

## Renewal Ops Framework

```
RENEWAL PIPELINE BY ENTITY:

  ALLEVIO:
    Revenue model: annual contracts (employer-level); auto-renew with 60-day opt-out notice
    Primary renewal metric: GRR (Gross Revenue Retention) — target ≥91%
    Secondary: NRR (Net Revenue Retention) — target ≥105% (base retention + expansion)
    Renewal responsibility: entity CEO primary (Allevio relationships are CEO-level); CS lead secondary
    
    Renewal timeline:
      T-120 days: renewal window opens; CS lead begins quarterly review with employer (usage + value realization)
      T-90 days: formal renewal conversation started; entity CEO aware of each account
      T-60 days: renewal commitment requested; if not committed → at-risk flag to entity CEO
      T-30 days: contract preparation if renewing; churn acknowledgment if not
      T-0: contract signed (renewal) or cancellation processed
      
  COLUMN6:
    Revenue model: IO-based (campaigns); not subscription renewal
    Primary metric: repeat IO rate (% of agencies that book a second IO within 6 months)
    Secondary: IO value growth (is the second IO larger than the first?)
    Retention metric: 60% of agencies that complete a first IO return for a second IO (target)
    Renewal ops: proactive outreach for next campaign within 30 days of prior IO completion
    
RENEWAL HEALTH TRACKING (ALLEVIO):
  Health score per employer (monthly update by CS lead):
    Product adoption (utilization rate): is benefit being used?
    Employer satisfaction (NPS / periodic check-in): does HR still see value?
    Benefit performance (aggregate outcome data — de-identified, HIPAA-compliant): is the benefit working?
    Relationship health: is the relationship warm or transactional?
    Risk signals: any HR team turnover? CFO pressure on costs? Competitor contact?
    
  Health score thresholds:
    Green (score 80-100): renewing; no intervention needed
    Yellow (score 60-79): follow-up scheduled; entity CEO aware
    Red (score <60): entity CEO owns recovery; Dr. Lewis notified if >$50K ACV
    
RENEWAL FORECAST:
  Monthly renewal forecast: CS lead builds; entity CEO reviews; Dr. Lewis receives
  Categorize each renewal: Committed / At-Risk / Lost (for forward-looking periods)
  GRR calculation: (starting ARR - churned ARR) / starting ARR × 100
  NRR calculation: (starting ARR + expansion ARR - churned ARR) / starting ARR × 100
  Target: GRR ≥91%; NRR ≥105%
  
HIPAA (ALLEVIO):
  All renewal conversations use aggregate, de-identified outcome data — never individual employee health data
  Employer satisfaction data (NPS) is employer-level, not employee-level — HIPAA compliant
  Benefit performance metrics presented as aggregate population statistics
  CS lead is HIPAA-trained; no PHI in GoHighLevel renewal records
```

## Output Format

```markdown
# Renewal Ops Report — [Entity] — [Month]
**Prepared by:** RevOps | **Reviewed by:** Entity CEO | **Data source:** GoHighLevel

---

## Upcoming Renewals (Next 90 Days)

| Employer / Agency | ACV | Renewal date | Health | Status | Owner |
|------------------|-----|-------------|--------|--------|-------|
| [Employer] | $X | [Date] | 🟢/🟡/🔴 | Committed | CS Lead |
| [Employer] | $X | [Date] | 🔴 | At-Risk | Entity CEO |

---

## GRR / NRR Tracking

| Metric | This Month | YTD | Target | Status |
|--------|-----------|-----|--------|--------|
| GRR | X% | X% | ≥91% | ✅/⚠️ |
| NRR | X% | X% | ≥105% | |

---

## At-Risk Accounts ([N])

| Account | ACV | Risk signal | Owner | Intervention plan |
|---------|-----|------------|-------|------------------|
| [Employer] | $X | Low utilization | Entity CEO | QBR this week; usage review |

---

## Churned This Month
[If any: account name (anonymous in reports), ACV, reason code, learnings]
```

## Output Contract
- Renewal conversations start at T-120 days, not T-30 — a renewal conversation that begins 30 days before the contract date is not a renewal conversation; it is damage control; Dr. Lewis requires the renewal window to open at T-120 (4 months before renewal) with a structured CS review of utilization, satisfaction, and health score; by T-90, the entity CEO knows which accounts are at risk; by T-60, at-risk accounts have an active recovery plan; the difference between a retained employer and a churned employer is almost always whether we had the right conversation at T-90 or scrambled at T-30
- GRR is the baseline; NRR is the goal — Allevio's GRR target (≥91%) means we lose less than 9% of ARR to churn annually; but a company that retains 91% of base revenue without expanding will grow slowly; NRR ≥105% means the base is stable AND existing accounts are growing (more employees enrolled; additional services); Dr. Lewis tracks both because GRR tells us how good we are at retention and NRR tells us how well CS is driving growth within the existing base; a healthy RevOps engine grows NRR toward 110-120% over time
- HITL required: Red health score (any account >$30K ACV) → entity CEO owns recovery; Red health score >$50K ACV → Dr. Lewis notified same day; churn event (any account) → entity CEO + Dr. Lewis within 24 hours; renewal contract preparation → entity CEO reviews before send; GRR below 85% for 2 months → entity CEO + Dr. Lewis action plan; Allevio renewal data presentation → aggregate only, HIPAA compliant, CS lead confirms

## System Dependencies
- **Reads from:** GoHighLevel (employer/agency records; renewal dates; health score fields; CS notes; NPS data); AdvancedMD / billing records (Allevio utilization data — aggregate; CS lead summarizes); revops-expansion-ops-manager (expansion pipeline feeds NRR); fpa-rolling-forecast-updater (renewal forecast feeds financial model)
- **Writes to:** Renewal ops report (SharePoint → [Entity] → CS → Renewals → [Month]); GoHighLevel (health score updates; renewal stage; churn records); entity CEO renewal alerts; Dr. Lewis portfolio GRR/NRR summary; renewal forecast (feeds revops-forecast-builder)
- **HITL Required:** Red >$30K ACV → entity CEO; Red >$50K ACV → Dr. Lewis; churn event → entity CEO + Dr. Lewis; renewal contract → entity CEO reviews; GRR <85% 2 months → entity CEO + Dr. Lewis; Allevio utilization data → aggregate only

## Test Cases
1. **Golden path:** Allevio July renewal ops. Upcoming renewals (T-90): 3 employers ($32K, $24K, $18K ACV). Health scores: $32K employer — Green (89; high utilization; renewed last year; NPS 9); $24K employer — Yellow (67; HR contact changed 2 months ago; new HR director unfamiliar with Allevio); $18K employer — Green (84). Intervention: $24K employer (Yellow) — entity CEO schedules a re-introduction meeting with new HR director this week; brings Allevio outcomes summary (aggregate, de-identified utilization data). By T-60: new HR director briefed and positive; employer moves to Green (74 → renewal committed). All 3 employers renew. GRR July: 100% (no churn). YTD GRR: 93.2% (✅ above 91%).
2. **Edge case:** A $28K ACV Allevio employer is at T-45 and has not responded to renewal outreach (3 emails; 2 voicemails from CS lead) → Dr. Lewis: "Non-response at T-45 is a Red signal regardless of the health score. Entity CEO needs to call the employer CEO or CFO directly — not the HR contact — within 24 hours. The message: 'We value this relationship and I want to make sure we're giving you what you need to make a decision. Can we find 20 minutes this week?' Non-responsive accounts almost always respond to CEO-to-CEO outreach. If we do not get a response within 5 business days of the entity CEO's call, we plan for this account as likely-churned and reforecast accordingly."
3. **Adversarial:** CS lead wants to skip the T-120 renewal check-in because "the employer is happy — they'll obviously renew" → Dr. Lewis: "The employer being happy at T-120 does not guarantee renewal at T-0 — a lot can change in 4 months: HR turnover; CFO cost-cutting; competitor inbound; benefit strategy shift. The T-120 check-in is not a renewal pitch — it is a value-realization conversation that ensures the employer understands what they've gotten from Allevio over the past year. It also surfaces risk signals early while there's time to address them. The accounts we've lost have almost never been ones we expected to lose at T-120. The ones we've saved were the ones where the CS lead had that early conversation and caught a signal. Skip the check-in only if the employer explicitly declines — and even then, log it in GoHighLevel and put it on the T-60 list."

## Audit Log
Monthly renewal ops reports. GRR/NRR tracking (monthly; permanent). At-risk account records. Churn event records (account, ACV, reason, learnings — permanent). Entity CEO recovery intervention records. Dr. Lewis notification records for Red >$50K accounts. Renewal contract records. Allevio HIPAA-compliant data presentation records.

## Deprecation
Renewal timeline reviewed when entity contract structure changes. GRR/NRR targets reviewed when entity growth stage changes. Health score criteria reviewed when CS team capabilities change. Column6 repeat IO rate reviewed when agency market matures. HIPAA standards reviewed when regulations change.
