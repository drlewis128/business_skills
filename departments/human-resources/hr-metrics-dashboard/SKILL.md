---
name: hr-metrics-dashboard
description: "Build and report HR function KPIs for MBL Partners portfolio companies. Use when the user says 'HR metrics', 'HR KPIs', 'HR dashboard', 'people metrics', 'HR analytics', 'turnover rate', 'time to hire', 'cost per hire', 'headcount report', 'HR data', 'employee metrics', 'HR scorecard', 'people data', 'workforce analytics', 'retention rate', 'absenteeism rate', 'HR reporting', 'HR numbers', 'how is HR performing', 'what are our people metrics', 'HR results', 'how are people doing', 'attrition rate', 'voluntary turnover', 'involuntary turnover', 'days to fill', 'offer acceptance rate', 'new hire retention', 'engagement score', 'THRIVE score', 'HR monthly report', or 'HR quarterly report'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--period <monthly|quarterly|annual>] [--action <build|update|present>]"
---

# HR Metrics Dashboard

Build and maintain the HR function KPI dashboard for MBL Partners portfolio companies — tracking talent acquisition, retention, engagement, and people operations metrics, and presenting them in the entity CEO and Matt Mathison cadence. HR metrics connect people decisions to business outcomes; a turnover spike is not an HR problem — it is a business risk and a cost event that has a dollar value.

## When to Use
- Monthly or quarterly HR reporting to entity CEO
- Annual HR function review (hr-ops-review)
- Matt Mathison quarterly portfolio HR summary
- Specific metric analysis is requested

## HR Metrics Framework

```
TIER 1 METRICS (reported monthly to entity CEO):

  HEADCOUNT:
    Total FTE (end of period)
    Open roles (count)
    Offer acceptance rate: (offers accepted / offers extended) × 100; target ≥85%
    
  ATTRITION:
    Monthly attrition rate: (separations / avg headcount) × 100
    Annualized: monthly rate × 12 (or rolling 12-month actual)
    Voluntary vs. involuntary split (track separately)
    Regrettable vs. non-regrettable (from hr-exit-interview classification)
    Target: voluntary regrettable attrition <15% annually
    
  TIME TO FILL:
    Days from requisition approval to offer acceptance
    Target: IC/specialist ≤45 days; Manager/Director ≤60 days; VP ≤90 days
    By entity and role family
    
  ENGAGEMENT:
    eNPS (quarterly, not monthly)
    
TIER 2 METRICS (reported quarterly):

  TALENT ACQUISITION:
    Cost per hire: (external recruiter fees + job board costs + Dr. Lewis time allocation) / hires
    Qualified applicant rate: qualified applicants / total applicants × 100
    Time to productivity: days from start date to first independent deliverable (manager-rated)
    Source of hire: internal / direct / referral / recruiter (efficiency tracking)
    
  RETENTION:
    New hire retention at 90 days: (new hires remaining at Day 90 / total new hires) × 100; target ≥90%
    New hire retention at 12 months: target ≥80%
    High performer retention: (high performers retained / total high performers) × 100; target ≥90%
    
  COMPENSATION:
    Compa-ratio distribution: % employees in 0.90-1.10 range; % below 0.85; % above 1.15
    Merit cycle completion rate: % of employees with completed performance reviews
    Open equity/comp positions: employees flagged as below-band risk
    
  PERFORMANCE:
    Performance rating distribution: % Exceeds / Meets / Developing / Not Meeting
    PIP utilization: active PIPs; outcomes (success / failure / resigned)
    Coaching documentation rate: % of Developing/Not Meeting with documented coaching conversations
    
  HR OPERATIONS:
    I-9 compliance rate: % of new hires with Section 2 completed within 3 business days
    Benefits enrollment rate: % of eligible employees enrolled within 30-day window
    OIG/LEIE compliance (Allevio): monthly check completion rate (target: 100%)
    Handbook acknowledgment rate: % employees with current signed acknowledgment (target: 100%)
    
ENTITY-SPECIFIC METRICS:
  Allevio:
    Clinical staff attrition rate (care coordinators separately — high-impact role)
    HIPAA training completion rate: new hires by Day 5; annual by anniversary (target: 100%)
    OIG/LEIE monthly check rate: 100%
    License renewal compliance rate: 100%
    
  HIVE:
    Safety incident rate (OSHA 300 log)
    Field staff retention rate (Uinta Basin — remote location attrition risk)
    
  Column6:
    Commercial team retention rate (agency relationship continuity)
    Time to fill for commercial roles (specialized labor market)
    
METRIC THRESHOLDS (trigger Dr. Lewis action):
  Voluntary regrettable attrition >15% annualized → alert to entity CEO + Dr. Lewis
  eNPS <10 or >15pt drop → urgent conversation (within 1 week)
  Time to fill >60 days for IC roles → sourcing strategy review
  New hire 90-day retention <85% → onboarding program review
  OIG/LEIE monthly check missed (Allevio) → IMMEDIATE — CMS compliance risk
  Compa-ratio <0.85 for >2 employees in same band → comp band review
```

## Output Format

```markdown
# HR Metrics Dashboard — [Entity] — [Month/Quarter YYYY]
**Prepared by:** Dr. Lewis | **Audience:** Entity CEO [+ Matt Mathison if quarterly portfolio]

---

## Headcount
**Total FTE:** [X] | **Open roles:** [X] | **Offer acceptance:** [X%]

---

## Attrition
| Metric | This period | Prior period | Target | Status |
|--------|------------|-------------|--------|--------|
| Monthly attrition | X% | X% | <1.25%/mo | ✅/⚠️/🔴 |
| Annualized rate | X% | X% | <15% | |
| Voluntary (regrettable) | X% | X% | <10% | |

---

## Talent Acquisition
| Metric | This period | Target | Status |
|--------|------------|--------|--------|
| Time to fill (avg) | X days | ≤45d (IC) | |
| Cost per hire | $X | <$3,500 | |
| Qualified applicant rate | X% | ≥30% | |

---

## Performance
| Rating | % of employees | Prior year | 
|--------|---------------|-----------|
| Exceeds | X% | X% |
| Meets | X% | | 
| Developing | X% | |
| Not Meeting | X% | |

---

## Alerts
🔴 [Any metric above threshold requiring action]
⚠️ [Any metric trending toward threshold]

---

## Actions Required
1. [Action — owner — due date]
```

## Output Contract
- Attrition is split into voluntary/involuntary and regrettable/non-regrettable — total attrition rate is a blunt metric; an entity with 30% total attrition but where 90% of departures were PIPs and mutual separations of underperformers is actually healthy; an entity with 8% total attrition where all departures were high performers is in crisis; Dr. Lewis tracks all four dimensions (voluntary; involuntary; regrettable; non-regrettable) and presents them together so the entity CEO understands what the attrition rate actually means for talent health
- OIG/LEIE monthly check compliance for Allevio is always reported at 100% or flagged — there is no acceptable partial completion for OIG/LEIE screening; CMS Conditions of Participation require 100% monthly screening of all active employees; Dr. Lewis tracks completion date for each monthly cycle; any month that is not 100% complete is a red flag in the dashboard with immediate escalation; this is not a metric that trends toward acceptable — it is binary
- Metrics drive decisions, not just reporting — a dashboard that goes to the entity CEO without action items is decoration; Dr. Lewis presents every dashboard with an explicit interpretation section ("here's what this data means") and an action required section; if no metrics are concerning, the action item is "no action required — continue monitoring"; the CEO should leave the dashboard review with clear understanding of what decisions or actions are needed
- HITL required: dashboard preparation → Dr. Lewis prepares; entity CEO review → Dr. Lewis presents with interpretation; threshold breach alert → Dr. Lewis + entity CEO conversation within stated timeline; portfolio summary for Matt Mathison → Dr. Lewis compiles + presents quarterly; OIG/LEIE compliance flag → Dr. Lewis + Allevio CEO immediate; high performer retention <90% → Dr. Lewis + CEO action within 2 weeks

## System Dependencies
- **Reads from:** hr-attrition-analyzer (attrition detail); hr-engagement-analyzer (eNPS; engagement scores); hr-performance-review-cycle (rating distribution); hr-headcount-planner (FTE targets vs. actual); hr-compensation-benchmarker (compa-ratio distribution); hr-i9-manager (I-9 compliance rate); hr-high-performer-identifier (retention of high performers); HRIS (headcount; tenure; role data)
- **Writes to:** HR metrics dashboard (SharePoint → HR → Metrics → [Entity] → [Period]); entity CEO monthly report; Monday.com HR dashboard board; Matt Mathison quarterly portfolio HR summary; alert records (threshold breach + action taken)
- **HITL Required:** Dashboard preparation → Dr. Lewis; entity CEO review → Dr. Lewis presents; threshold breach → Dr. Lewis + CEO; OIG/LEIE flag → Dr. Lewis + Allevio CEO immediate; portfolio summary → Dr. Lewis + Matt Mathison quarterly

## Test Cases
1. **Golden path:** Allevio Q2 dashboard. Total FTE: 22. Attrition: 2 departures (1 voluntary regrettable — Care Coordinator; 1 involuntary — failed PIP). Annualized rate: 18% — above 15% threshold. Regrettable: 9% annualized (below 10% threshold). Alert: voluntary regrettable care coordinator departure → investigation via hr-exit-interview showed comp gap ($7K below market). Action: open req for replacement; comp band review for remaining coordinators; Dr. Lewis + CEO conversation this week. OIG/LEIE June check: 22/22 complete. Time to fill: 38 days avg (on target). Dashboard presented to CEO with action plan.
2. **Edge case:** HIVE has 4 employees — HR dashboard feels like overkill → Dr. Lewis: "At 4 people, the metrics are simpler but more sensitive to individual events. I'll run a quarterly check rather than monthly: headcount, any attrition, eNPS, OIG/LEIE (not applicable to HIVE), OSHA incidents, time to fill if any open reqs. One departure at HIVE = 25% attrition — we track it but contextualize it. Monthly reporting for a 4-person entity creates noise. Quarterly is the right cadence."
3. **Adversarial:** Entity CEO wants to present HR metrics to investors in a board deck → Dr. Lewis: "I can provide you aggregated metrics appropriate for a board audience. I'd caution against including anything that identifies individual employee performance ratings or salaries — that's personnel data. For investors, the appropriate metrics are: headcount trend; voluntary attrition rate; time to fill (as a growth execution indicator); benefit cost per employee; and any notable talent risk context. I'll draft the 4-5 metrics that tell the investor story accurately. Give me the board date."

## Audit Log
HR metrics dashboard retained quarterly (trend analysis). Alert records retained (metric; threshold; action taken; date). Attrition data retained (voluntary/involuntary/regrettable/non-regrettable). OIG/LEIE compliance records retained permanently. Portfolio summary records retained.

## Deprecation
Metric definitions reviewed annually. Threshold values reviewed when entity growth changes scale (e.g., entity crosses 50 FTE). Entity-specific metrics updated when business model changes.
