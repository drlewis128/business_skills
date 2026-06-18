---
name: cs-member-utilization-tracker
description: "Track and improve Allevio member plan utilization and clinical program engagement. Use when the user says 'member utilization', 'Allevio utilization', 'member engagement', 'clinical utilization', 'members using the plan', 'plan utilization', 'member activity', 'how many members are using the plan', 'utilization report', 'clinical engagement', 'telehealth utilization', 'member wellness', 'member health engagement', 'care utilization', 'Allevio member report', 'member data', 'utilization tracking', 'clinical program utilization', 'high-risk member engagement', 'care coordination utilization', 'preventive care utilization', or 'Allevio clinical report'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--account <employer group name>] [--month <YYYY-MM>] [--action <track|report|intervene|analyze>]"
---

# CS Member Utilization Tracker

Track and improve Allevio member plan utilization and clinical program engagement — monitoring how actively employer group members are using their benefits, identifying populations at risk of under-utilization (which drives high-cost emergency events) or clinical non-adherence (which drives claim ratio spikes), and coordinating with the Allevio clinical team to intervene before high-cost events occur. Member utilization is the clinical operating metric of the Allevio CS function.

## When to Use
- Monthly (review member utilization data from AdvancedMD alongside the claim ratio report)
- A claim ratio spike requires root cause analysis (which utilization pattern drove it?)
- Clinical intervention planning (which members need outreach from the clinical team?)
- Open enrollment preparation (what can we say about member engagement when pitching renewal?)
- A new employer group onboards (set the utilization baseline in the first 90 days)

## Member Utilization Framework

```
UTILIZATION METRICS (from AdvancedMD — AGGREGATE ONLY; NO PHI):

  1. ENROLLMENT UTILIZATION:
     Total enrolled members vs. eligible employees
     Target: ≥85% of eligible employees enrolled
     Red flag: <75% → investigate waiver reasons (cs-training-builder — employees may not understand the plan)
     Data source: AdvancedMD + employer census (submitted at OE)
     
  2. PREVENTIVE CARE UTILIZATION:
     Members with at least 1 preventive care visit (annual physical; wellness visit; preventive screening)
     Target: ≥40% of enrolled members per year
     Rationale: Members who use preventive care tend to catch conditions earlier and have
       lower emergency care costs; low preventive care = higher long-term claim ratio
     Red flag: <20% → work with clinical team on a preventive care outreach campaign
     Data source: AdvancedMD (aggregate count of members with preventive care claims; no individual data)
     
  3. PRIMARY CARE UTILIZATION:
     Members who visited a primary care provider at least once in the last 6 months
     Target: ≥50% of enrolled members semi-annually
     Rationale: Members with a primary care home use less ED care; lower ED = lower claim ratio
     Red flag: <30% → suggests members are using ED for primary care conditions
     Data source: AdvancedMD (aggregate count; no individual PHI)
     
  4. EMERGENCY DEPARTMENT (ED) UTILIZATION:
     Total ED claims as a % of total claims; trend month-over-month
     Target: ED claims <20% of total claims
     Red flag: ED claims >25% for 2+ consecutive months → clinical team action required
     Root cause: Members without a PCP relationship; unmanaged chronic conditions;
       after-hours access gaps (telehealth is a key intervention here)
     Data source: AdvancedMD (aggregate ED claim count and total cost; no individual PHI)
     
  5. CLINICAL PROGRAM ENROLLMENT:
     Members enrolled in care management programs (chronic disease; maternity; behavioral health)
     Note: Specific program names and member details are managed by the clinical team only
     Employer-facing metric: "X% of your high-complexity members are enrolled in a care support program"
     Target: ≥30% of clinically identified high-risk members enrolled in a program
     Data source: Allevio clinical team report (aggregate — no individual PHI to CS team)
     
  6. TELEHEALTH UTILIZATION:
     Members using telehealth services at least once in the plan year
     Target: ≥15% of enrolled members
     Red flag: <5% → awareness gap; deploy telehealth FAQ (cs-training-builder)
     Data source: AdvancedMD (aggregate telehealth claim count)

HIPAA COMPLIANCE PROTOCOL:
  □ All member utilization data is handled at the aggregate level by the CS team
  □ No individual member names, claim details, or diagnosis codes are shared between
    the clinical team and the CS team (HIPAA minimum necessary standard)
  □ The clinical team identifies high-risk members for outreach; the CS team does not
    know which specific members are high-risk
  □ The employer receives only aggregate utilization metrics (counts and percentages);
    NOT: "3 of your employees are in a diabetes management program"
  □ Dr. Lewis reviews all member utilization reports for HIPAA compliance before delivery

CLINICAL INTERVENTION COORDINATION:
  When the CS team identifies a utilization concern (low preventive care; high ED; low telehealth):
    1. CS rep flags the concern to the Allevio clinical team (not to the employer directly)
    2. Clinical team evaluates whether an outreach campaign is warranted
    3. Clinical team executes the outreach (calling members or sending materials) — CS does not
    4. CS team reports to the employer: "We initiated a preventive care outreach campaign
       this quarter — we'll have an update on response rates in 60 days"
    5. 60-day follow-up: clinical team reports aggregate outcomes to CS team → CS reports to employer
```

## Output Format

```markdown
# Allevio Member Utilization Report — [Employer Group Name] | [Month/Quarter YYYY]
*Prepared for CS team review. Employer-facing version follows below.*
**HIPAA compliance review:** Dr. Lewis ✅ | **Date:** [Date]

---

## Utilization Summary (Aggregate — No PHI)

| Metric | This period | Last period | Target | Status |
|--------|------------|------------|--------|--------|
| Enrollment rate | [X]% | [X]% | ≥85% | ✅ / ⚠️ / ❌ |
| Preventive care utilization | [X]% | [X]% | ≥40% | ✅ / ⚠️ / ❌ |
| Primary care utilization | [X]% | [X]% | ≥50% | ✅ / ⚠️ / ❌ |
| ED utilization (% of claims) | [X]% | [X]% | <20% | ✅ / ⚠️ / ❌ |
| Clinical program enrollment | [X]% | [X]% | ≥30% high-risk | ✅ / ⚠️ / ❌ |
| Telehealth utilization | [X]% | [X]% | ≥15% | ✅ / ⚠️ / ❌ |

---

## Clinical Interventions in Progress

| Concern | Action | Owner | Status |
|---------|--------|-------|--------|
| High ED utilization (28% of claims) | Preventive care outreach campaign | Clinical team | In progress |

---

## Employer-Facing Summary (included in claim ratio report)

[Aggregate utilization highlights that are appropriate for HR Director visibility — no PHI]
```

## Output Contract
- Clinical team owns the intervention; CS team owns the reporting — the CS team does not contact members directly or make clinical recommendations to the employer about specific members; the clinical team is the licensed, HIPAA-compliant function that manages member engagement; the CS team's role is to identify utilization patterns at the aggregate level and coordinate with the clinical team to respond; Dr. Lewis enforces this separation
- Aggregate data only — no individual member data flows from the clinical team to the CS team or from the CS team to the employer; a CS rep who asks the clinical team "which members have the highest claims?" is asking for PHI they are not authorized to have; Dr. Lewis requires that all member utilization discussions between the CS team and the clinical team use aggregate metrics only
- Correlation, not causation — high ED utilization may be caused by a lack of PCP access in the employer's geographic area, not by low member engagement; before the CS team reports "your members are over-using the ED," Dr. Lewis reviews the context: is this an access issue, a plan design issue, or an engagement issue? The employer-facing narrative must be accurate about root cause
- HITL required: Dr. Lewis reviews all member utilization reports for HIPAA compliance before they are sent or incorporated into the monthly claim ratio report; any utilization concern that the clinical team will act on is communicated to the employer only after Dr. Lewis reviews the communication; the clinical team lead approves any clinical program statistics included in employer-facing materials; Dr. Lewis reviews any utilization data proposed for use in renewal or marketing materials

## System Dependencies
- **Reads from:** AdvancedMD (aggregate member utilization data — enrollment count; preventive care claim count; primary care claim count; ED claim count; telehealth claim count; all aggregate only); Allevio clinical team reports (aggregate clinical program enrollment rate — no individual member data); cs-claim-ratio-reporter (claim ratio data — utilization data contextualizes the ratio); cs-adoption-monitor (adoption metrics — member enrollment and clinical engagement feed back into the adoption health score)
- **Writes to:** Member utilization report (SharePoint/CustomerSuccess/Allevio/UtilizationReports/[Account]/[YYYY-MM]_UtilizationReport.pdf); cs-claim-ratio-reporter (utilization narrative included in the employer-facing claim ratio report); cs-health-score-tracker (product utilization dimension for Allevio accounts — updated based on utilization data); clinical team intervention request (SharePoint/Allevio/ClinicalTeam/OutreachRequests/[Account]_[Date]_InterventionRequest.pdf)
- **HITL Required:** Dr. Lewis reviews all utilization reports for HIPAA compliance; clinical team lead approves clinical program statistics in employer-facing materials; Dr. Lewis reviews utilization data proposed for renewal/marketing; any utilization-based clinical intervention request approved by the clinical team before action

## Test Cases
1. **Golden path:** Q2 utilization review — 135-member employer group; enrollment 119/135 (88% ✅); preventive care: 54 members with at least 1 preventive visit (45% ✅); primary care: 68 members with at least 1 PCP visit in 6 months (57% ✅); ED utilization: 16% of total claims ✅; clinical program enrollment: 34% of high-risk members ✅; telehealth: 21 members used telehealth (18% ✅); all metrics Green; employer-facing summary included in the Q2 claim ratio report: "Your members are actively engaging with the plan — 45% have completed preventive care visits this year, and telehealth utilization is above our portfolio average. This pattern is associated with lower emergency care costs over time, which supports the positive claim ratio trend you're seeing." HR Director: "That's really encouraging — it's good to know employees are using the plan."
2. **Edge case:** March utilization data shows ED utilization spiked from 18% to 31% of total claims in a single month → CS team flags to clinical team immediately (before the claim ratio report is built); clinical team reviews: "The ED spike is concentrated in 3 ZIP codes — this is likely a flu season surge; it's not a chronic pattern; telehealth utilization actually went up 3% in the same month, which suggests members are trying digital-first but still going to ED for severe symptoms." CS team communicates to the employer: "Your March claim ratio reflects a seasonal increase in emergency care visits, which is consistent with the flu surge in your area. Telehealth utilization increased this month as well — members are using the digital option. The clinical team expects this to normalize in April. We'll update you with the April data by May 10." HR Director: "That makes sense — it was a rough winter."
3. **Adversarial:** An HR Director asks: "Can you tell me which employees are driving the most claims? I want to talk to them about the clinical program." → Dr. Lewis (immediately): "I understand why you're asking — and I want to help you improve the engagement. But I can't share individual member claim data with you, even as the employer. HIPAA prohibits us from disclosing to the employer which specific employees have claims, what conditions they have, or how much their care costs. What I can do: the clinical team can send targeted outreach directly to members who may benefit from a care program — the members receive the outreach directly, not through HR. We protect your employees' privacy, and we still get them connected to support. That's actually the better approach — members respond better when it comes directly from the clinical team rather than through their employer. Let me coordinate the outreach and I'll report back on aggregate enrollment in 60 days."

## Audit Log
All member utilization reports retained by account and period. Dr. Lewis HIPAA compliance review records retained. Clinical team intervention requests retained (what was requested; what was approved; aggregate outcome). Employer-facing communication records retained. Any HR Director PHI request and the compliant response retained.

## Deprecation
Retire when Allevio has a dedicated clinical analytics function that manages member utilization tracking and reporting — with Dr. Lewis reviewing the employer-facing utilization narrative quarterly and the clinical team lead reviewing all clinical program statistics before they reach the employer.
