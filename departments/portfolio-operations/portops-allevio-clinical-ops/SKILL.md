---
name: portops-allevio-clinical-ops
description: "allevio clinical operations, clinical ops monitor, care coordination, aggregate member utilization, clinical quality indicators, clinical staff capacity, clinic utilization rate, patient wait times, HEDIS aggregate measures, population health management, clinical efficiency, provider FTE capacity, appointment availability, preventive care rates, care coordination touchpoints, aggregate utilization metrics, clinical quality dashboard, monthly clinical brief, PHI prohibited clinical data, clinical performance"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "reporting month (e.g. 'June 2026'), or specific area ('care coordination/utilization/quality/capacity/wait times')"
---

# Allevio Clinical Ops Monitor

Monitors Allevio's clinical operations using only aggregate, de-identified metrics — care coordination touchpoints, population-level utilization patterns, HEDIS-aligned quality indicators, clinical staff capacity, clinic utilization, and wait times — with absolute prohibition on any individual patient or member data. Delivered monthly to the Allevio entity CEO as a PHI-safe operational health report for MBL oversight.

## When to Use

- Monthly clinical operations review for Allevio entity CEO and Dr. Lewis portfolio oversight
- Capacity planning assessment when clinic utilization or wait times signal staffing gaps
- Clinical quality flag requiring entity CEO attention or population-level corrective action
- Pre-board reporting requiring Allevio clinical health summary without PHI exposure
- Annual clinical operations benchmarking for MBL portfolio performance comparison

## Allevio Clinical Ops Monitor Framework

```
CLINICAL OPERATIONS SCOPE
Purpose:         MBL-level operational oversight of Allevio clinical delivery — aggregate metrics only
PHI Rule:        ABSOLUTE PROHIBITION — zero individual patient, member, or clinical record data in any output
Compliance:      All metrics validated as PHI-safe by Allevio entity CEO or designated Privacy Officer before
                 transmission to MBL Partners or Dr. Lewis
Population Base: Total covered member population (aggregate count) — no identifiers
Reporting Chain: Allevio Clinical Lead → Entity CEO (PHI validation) → Dr. Lewis → Matt Mathison (if flagged)
Data Sources:    AdvancedMD aggregate exports, clinical quality dashboard, HR staffing system (aggregate)

AGGREGATE UTILIZATION METRICS
Metric                                   | Value | Prior Month | Trend | Target
Primary care visits per member per month | [X]   | [X]         | ↑/→/↓ | [benchmark]
Specialty referral rate (per 1000 members)| [X]  | [X]         | ↑/→/↓ | <[X]
Emergency room utilization (per 1000 members)| [X]| [X]        | ↑/→/↓ | <[X]
Preventive care completion rate (agg %)  | [X]%  | [X]%        | ↑/→/↓ | >80%
Mental/behavioral health access (agg %)  | [X]%  | [X]%        | ↑/→/↓ | >[X]%
Rx fill rate (aggregate adherence proxy) | [X]%  | [X]%        | ↑/→/↓ | >[X]%
Note: ER utilization trend is the highest-value signal — rising ER rates indicate care access failure
      that inflates payer costs and threatens Allevio's value proposition to employer clients

CLINICAL QUALITY INDICATORS
HEDIS-Aligned Measures (aggregate population level only — no individual measure detail):
  Diabetes management adherence (HbA1c monitoring, agg %):     [X]% | Benchmark: >[X]%
  Hypertension control (blood pressure managed, agg %):         [X]% | Benchmark: >[X]%
  Breast cancer screening completion (agg %):                   [X]% | Benchmark: >[X]%
  Colorectal cancer screening completion (agg %):               [X]% | Benchmark: >[X]%
  Annual wellness visit completion (agg %):                     [X]% | Benchmark: >[X]%
  Tobacco cessation counseling offer rate (agg %):              [X]% | Benchmark: >[X]%
Quality Flag Count: [X] open measures below benchmark | [X] resolved this cycle
Quality Score (composite aggregate): [X]% | Prior cycle: [X]% | Plan target: [X]%

CARE COORDINATION PERFORMANCE
Members with active care plan (aggregate count): [X] | % of total population: [X]%
Care coordination touchpoints per member per month (aggregate avg): [X] | Target: >[X]
High-risk cohort size (aggregate count only — no individual ID): [X] members | Trend: ↑/→/↓
High-risk touchpoint rate (aggregate avg): [X]/month | Target: ≥[X]/month for high-risk tier
Unaddressed care gaps (aggregate population %): [X]% | Target: <[X]%
Care gap closure rate this period (aggregate): [X]% | Prior period: [X]%
Care plan completion rate (aggregate %): [X]% | Target: >[X]%
Escalation rate to specialty/ER (aggregate): [X]% of care-coordinated members

STAFF CAPACITY METRICS
Clinical FTE Count: [X] total | Full-time: [X] | Part-time: [X] | Open positions: [X]
Provider Panel Size (aggregate avg per provider): [X] members | Target: [X]–[X] range
Provider utilization rate (appointments filled / available slots): [X]% | Target: 80–90%
RN / Care Coordinator ratio: 1 : [X] members | Target: 1 : [X]
Turnover rate YTD (aggregate %): [X]% | Healthcare benchmark: <[X]%
Time to fill open position (avg days, aggregate): [X] days | Target: <[X] days
Burnout proxy indicators (aggregate): PTO utilization [X]%; unplanned absences this period [X]
Note: Panel size above [X] members per provider is an access risk that will surface in wait times

CLINIC UTILIZATION
Active clinic locations: [X]
Aggregate capacity utilization (appointments scheduled / total capacity): [X]% | Target: 80–90%
Appointment volume this period (aggregate): [X] visits | Prior period: [X] | Δ [+/-X]%
Wait time — new patient appointment (aggregate avg): [X] days | Target: <[X] days
Wait time — follow-up appointment (aggregate avg): [X] days | Target: <[X] days
Same-day access rate (aggregate): [X]% of daily appointments | Target: >40%
No-show rate (aggregate): [X]% | Industry benchmark: <[X]% | Trend: ↑/→/↓
After-hours or telehealth utilization (aggregate): [X]% of total visits | Trend: ↑/→/↓

PHI ABSOLUTE PROHIBITION
Rule 1: No individual patient name, DOB, MRN, address, phone, email, or SSN in any output
Rule 2: No individual diagnosis, treatment plan, lab result, medication, or clinical note
Rule 3: No individual utilization history — only population aggregate rates
Rule 4: No cohort size smaller than 10 members reported — suppress and roll into broader category
Rule 5: HEDIS measures reported only as aggregate population pass rates — not individual compliance
Rule 6: Any input containing individual patient data must be refused, logged as a HIPAA incident,
        and escalated to Dr. Lewis before any output is generated
Enforcement: Entity CEO or Privacy Officer must attest PHI-safe content before transmission to MBL

MONTHLY CLINICAL OPS BRIEF TEMPLATE
See Output Format section below.
```

## Output Format

```markdown
# Allevio Clinical Ops Monitor — [Month YYYY]

**Prepared by:** AI Agent (portops-allevio-clinical-ops)
**Review Authority:** Allevio Entity CEO (PHI validation) → Dr. John Lewis
**PHI Notice:** ABSOLUTE PROHIBITION. All metrics are population aggregate. No individual patient data present.
**Entity CEO PHI Attestation:** [Signed / Pending]

## Executive Summary
[2–3 sentences: overall clinical ops health, top quality signal, any capacity or quality flag]

## Aggregate Utilization
| Metric | Current | Prior Month | Target | Status |
|--------|---------|-------------|--------|--------|
| Primary care PMPM rate | | | | 🟢/🟡/🔴 |
| Specialty referral per 1000 | | | | 🟢/🟡/🔴 |
| ER utilization per 1000 | | | | 🟢/🟡/🔴 |
| Preventive care completion % | | | >80% | 🟢/🟡/🔴 |
| BH access rate % | | | | 🟢/🟡/🔴 |

## Clinical Quality (HEDIS Aggregate)
| Measure | Current % | Benchmark | Status |
|---------|-----------|-----------|--------|
| Diabetes management | | | |
| Hypertension control | | | |
| Breast cancer screening | | | |
| Colorectal screening | | | |
| Annual wellness visit | | | |
**Open quality flags:** [X] | **Resolved this cycle:** [X]

## Care Coordination
| Metric | Current | Target | Status |
|--------|---------|--------|--------|
| Members with active care plan % | | | |
| Touchpoints per member per month | | | |
| Care gap closure rate % | | | |
| High-risk touchpoint rate | | | |

## Staff Capacity
| Metric | Current | Target | Status |
|--------|---------|--------|--------|
| Clinical FTEs | | | |
| Avg panel size (members/provider) | | | |
| Provider utilization rate % | | | |
| Open positions | | | |
| YTD turnover rate % | | | |

## Clinic Utilization
| Metric | Current | Target | Status |
|--------|---------|--------|--------|
| Capacity utilization % | | 80–90% | 🟢/🟡/🔴 |
| Wait time — new patient (days) | | | 🟢/🟡/🔴 |
| Wait time — follow-up (days) | | | |
| Same-day access rate % | | >40% | 🟢/🟡/🔴 |
| No-show rate % | | | |

## Quality & Capacity Flags
[Bulleted list of aggregate indicators outside target with recommended action and entity-level owner, or "None"]

## Recommended Actions
| # | Action | Owner | Due Date |
|---|--------|-------|----------|
| 1 | | | |
| 2 | | | |
| 3 | | | |
```

## Output Contract

- Clinical operations monitoring exists to serve operational efficiency and quality improvement at the aggregate population level — it does not authorize MBL Partners or Dr. Lewis to process individual patient records, diagnosis codes, treatment plans, or member-identifiable clinical information of any kind. Even aggregate metrics carry re-identification risk in small cohorts; this skill enforces a minimum cohort size of 10 for any sub-population metric and requires entity CEO attestation confirming PHI-safe content before the report is transmitted to MBL. Failure to obtain that attestation means the report is not distributed regardless of how complete it appears.

- Staff capacity metrics are operational workforce data appropriate for portfolio oversight — FTE counts, utilization rates, panel sizes, aggregate turnover percentages, and time-to-fill statistics. Individual clinician performance evaluations, peer review findings, credentialing file detail, disciplinary records, or any data subject to peer review confidentiality protection under state medical practice law are explicitly outside scope and must not appear in any output. The entity CEO is solely responsible for translating aggregate capacity signals into clinician-level operational decisions.

- ER utilization rate is the highest-value leading indicator in this framework — a rising ER rate signals that care access is failing (wait times too long, preventive care gaps, care coordination breakdown), which inflates payer costs for Allevio's employer clients and directly threatens the value proposition that justifies PMPM pricing. An ER rate increase of more than 10% above baseline must be flagged as 🔴 and escalated to the entity CEO immediately with a request for a care coordination root cause analysis at the aggregate population level — not individual case review.

## System Dependencies

**Reads from:** AdvancedMD (aggregate clinical reports, appointment data, utilization exports), Allevio clinical quality dashboard (aggregate HEDIS-aligned measure exports), HR / staffing system (aggregate FTE counts, turnover, open positions), Allevio operations system (clinic capacity data, wait time reports)
**Writes to:** SharePoint /Allevio/ClinicalOps/[YYYY]/ (monthly brief archive), entity CEO monthly brief email (after PHI attestation), Dr. Lewis portfolio oversight log, Monday.com Allevio quality flags board
**HITL Required:** Entity CEO or designated Privacy Officer must attest PHI-safe content before Dr. Lewis receives any output; 🔴 quality or capacity flag requires entity CEO response plan within 10 business days; Dr. Lewis notifies Matt Mathison if a flag remains unresolved after 15 business days

## Test Cases

- **Golden path:** June 2026 — ER utilization stable at 85/1000, preventive care completion 83%, wait time new patient 7 days, provider utilization 86%, turnover 8% YTD, HEDIS composite 91% — clean brief generated with entity CEO PHI attestation received; all recommended actions marked "maintain current cadence"; no flags triggered.
- **Edge case:** ER utilization spikes 18% above prior 3-month baseline in a single period — skill flags as 🔴, requests entity CEO review of aggregate care coordination data for the period (not individual cases), and generates a structured prompt for the entity CEO to investigate whether the spike is clinic access-related (wait time increase this period), care coordination-related (touchpoint rate drop), or payer authorization-related (referral denial patterns), without requiring any PHI to conduct the investigation.
- **Adversarial:** AdvancedMD export submitted for utilization computation includes individual patient visit records with MRN and service date fields embedded in rows — skill detects the individual-level fields, refuses to compute any metric from the contaminated dataset, requests an aggregate export only from AdvancedMD's reporting module, logs the PHI exposure attempt with timestamp and source in the Allevio HIPAA incident register, and notifies Dr. Lewis before generating any output. No partial metric is displayed from PHI-contaminated input.

## Audit Log

Monthly clinical ops reports are archived in SharePoint /Allevio/ClinicalOps/ with entity CEO PHI attestation sign-off timestamp, data source export confirmation, and Dr. Lewis portfolio oversight acknowledgment. Quality flag resolution is tracked in Monday.com with open/closed status, entity CEO response date, and resolution description. PHI-exposure-attempt incidents are logged in the Allevio HIPAA incident register and reviewed by Dr. Lewis quarterly for pattern identification and systemic corrective action — repeated PHI-in-input events from the same data source trigger a data governance review.

## Deprecation

Retire when Allevio builds a native clinical quality and operations dashboard with MBL-accessible aggregate views that are validated as PHI-safe by a compliant reporting layer independent of raw clinical record access — for example, a population health management platform (e.g., Arcadia, Lightbeam) with configured aggregate export roles for MBL. The replacement skill focuses on executive summary formatting and Matt's portfolio-level clinical view. Retirement requires entity CEO, Dr. Lewis, and Allevio Privacy Officer approval with a minimum 60-day parallel operation period confirming output parity and PHI safeguard equivalency.
