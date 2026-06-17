---
name: rc-compliance-kpi-dashboard
description: "Generate the compliance health KPI dashboard — training completion, audit findings, incident rate, and control deficiencies. Use when the user says 'compliance dashboard', 'compliance KPIs', 'compliance metrics', 'compliance health', 'compliance scorecard', 'training completion rate', 'audit finding trend', 'incident rate', 'open findings', 'compliance status', 'compliance reporting', 'how is compliance doing', 'compliance health check', or 'KPI report'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <month|quarter|year>] [--audience <CEO|Matt-Mathison|internal>]"
---

# Compliance KPI Dashboard

Generate the compliance health dashboard for MBL portfolio companies — measuring training completion rates, audit findings, control deficiencies, incident rates, and program effectiveness. Compliance KPIs convert invisible program activities into visible health signals; without metrics, compliance is a black box that only appears when something goes wrong. The dashboard gives Dr. Lewis a performance management tool, gives the CEO operational visibility, and gives Matt Mathison the portfolio-level signal he needs to gauge compliance program maturity. Metrics should be simple enough to understand at a glance and specific enough to drive action.

## When to Use
- Monthly compliance status report for CEO
- Quarterly report for Matt Mathison
- Annual program review
- Board reporting (if applicable)
- Assessing whether the compliance program is improving or deteriorating
- Identifying which areas need attention before they become incidents

## KPI Framework

```
Compliance health KPIs by domain:

TRAINING COMPLETION:
  Target: HIPAA 100% (zero tolerance); Anti-Harassment 100%; Others 95%
  KPIs:
    - HIPAA training completion rate: [N completed] / [N required] × 100 (current period)
    - Anti-harassment completion rate: same calculation
    - Overall training completion rate: all programs combined
    - Overdue training items: count of employees past due date
    - New hire training completion rate: % completing required training in first 30 days
  Red threshold: HIPAA < 100%; any training < 90%
  Yellow threshold: 90-99% on non-HIPAA programs

AUDIT AND CONTROL FINDINGS:
  Target: Zero High findings unresolved past due date; all findings remediated on time
  KPIs:
    - Open findings by severity: [Critical / High / Medium / Low]
    - Findings overdue (past remediation due date): count
    - Findings closed this period: count
    - Average days to close (by severity): High target ≤30 days; Medium ≤60 days; Low ≤90 days
    - Repeat findings (same control area, 2+ consecutive periods): count — elevated to Significant Deficiency
    - Control effectiveness rate: % of controls tested as operating effectively
  Red threshold: Any High finding open >30 days past due; any repeat finding
  Yellow threshold: Medium finding open >45 days past due

INCIDENTS:
  Target: Zero Critical or High incidents per quarter (aspirational); all incidents classified and tracked
  KPIs:
    - Incidents by type (HIPAA / OSHA / Employment / Financial / Data / Regulatory)
    - Incidents by severity (Critical / High / Medium / Low)
    - Open incidents: count (classified but not resolved)
    - Mean time to contain (MTTC): hours from discovery to containment
    - Mean time to close (MTtClose): days from discovery to full closure
    - Regulatory notifications sent: count — any is a signal (not necessarily bad, just track)
  Red threshold: Any open Critical incident; incident overdue on regulatory notification deadline
  Yellow threshold: High incident open >14 days; MTTC >24 hours

POLICY AND PROGRAM:
  Target: All required policies current; all annual reviews completed
  KPIs:
    - Policies due for annual review: count
    - Policies overdue for review: count (past due date)
    - Policy acknowledgment rate: % of required staff who have acknowledged current version
    - Whistleblower reports received: count (not a red flag by itself — low counts can mean suppression)
    - Sanctions/exclusion screenings current: % of required staff/vendors screened within required timeframe
    - OIG LEIE annual check: ✅ Complete / ⚠️ Due / 🔴 Overdue

THIRD-PARTY / VENDOR:
  Target: All Tier 1 vendors with current BAA and security questionnaire; no payments to unscreened vendors
  KPIs:
    - BAAs in place and current: % of required vendors
    - Vendor OFAC screening current: % screened within 12 months
    - Tier 1 vendors overdue for annual review: count
```

## Output Format

```markdown
# Compliance KPI Dashboard — <Company Name>
**Period:** [Month/Quarter/Year] | **Date:** [Date]
**Prepared by:** Dr. John Lewis | **Audience:** [CEO / Matt Mathison / Internal]

---

## At-a-Glance Health

| Domain | Status | Trend |
|--------|--------|-------|
| Training | 🟢 / 🟡 / 🔴 | ↑ Improving / → Stable / ↓ Declining |
| Audit Findings | 🟢 / 🟡 / 🔴 | |
| Incidents | 🟢 / 🟡 / 🔴 | |
| Policies | 🟢 / 🟡 / 🔴 | |
| Vendor Compliance | 🟢 / 🟡 / 🔴 | |
| **Overall** | 🟢 / 🟡 / 🔴 | |

---

## Training Completion

| Program | Required | Completed | Rate | Overdue | Status |
|---------|---------|---------|------|---------|--------|
| HIPAA Privacy & Security | [N] | [N] | [X]% | [N] | 🟢 100% / 🔴 <100% |
| Anti-Harassment | [N] | [N] | [X]% | [N] | 🟢 / 🟡 / 🔴 |
| Data Security/AUP | [N] | [N] | [X]% | [N] | |
| OSHA/BBP (Allevio) | [N] | [N] | [X]% | [N] | |
| New hire 30-day completion | [N new hires] | [N] | [X]% | [N] | |

**Action required:** [List any overdue staff — resolution due by [Date]]

---

## Audit Findings

| Severity | Open | New this period | Closed this period | Overdue | Avg days open |
|---------|------|--------------|-----------------|---------|-------------|
| Critical | [N] | [N] | [N] | [N] | [X] days |
| High | [N] | [N] | [N] | [N] | [X] days |
| Medium | [N] | [N] | [N] | [N] | |
| Low | [N] | [N] | [N] | [N] | |
| **Total** | | | | | |

**Repeat findings this period:** [N] | **Escalated to Significant Deficiency:** [N]
**Control effectiveness:** [X]% of controls tested operating effectively

---

## Incidents

**Period:** [N] total incidents | [N] open | [N] closed

| Type | Count | Critical | High | Medium | Low | Open |
|------|-------|---------|------|--------|-----|------|
| HIPAA | | | | | | |
| OSHA/Safety | | | | | | |
| Employment | | | | | | |
| Financial/Fraud | | | | | | |
| Regulatory | | | | | | |
| Data (non-HIPAA) | | | | | | |

**Mean time to contain:** [X] hours | **Mean time to close:** [X] days
**Regulatory notifications sent this period:** [N]

---

## Policy and Program

| Item | Status | Last reviewed | Next due | Action |
|------|--------|-------------|---------|--------|
| OIG LEIE annual check | ✅ Complete [Date] / ⚠️ Due [Date] | | | |
| OFAC screening — all required | ✅ Current / ⚠️ [N] past due | | | |
| Policies due for annual review | [N] | | | |
| Policies overdue | [N] | | | 🔴 Immediate action |
| Whistleblower reports (period) | [N] | | | [Any — describe] |

---

## Matt Mathison Brief (quarterly)

[Company] compliance health [Period]: Overall [🟢 Healthy / 🟡 Watch / 🔴 Action required]. Training: [X]% HIPAA completion. Open findings: [N] High / [N] Medium. Incidents: [N] total / [N] open. OIG LEIE check: [Complete / Due]. Key action: [Top 1-2 items requiring Matt Mathison's awareness].
```

## Output Contract
- A perfect scorecard every period is a red flag, not a sign of health — compliance programs that report zero findings, zero incidents, and 100% training completion every single period are either measuring a very low-risk environment or are not measuring accurately; the absence of incidents in a healthcare environment is improbable; Dr. Lewis calibrates targets to be achievable and meaningful, and reports results as observed, not as desired; if training completion drops to 94%, it shows as 94% — not 95% — with an action plan
- KPIs drive action, not decoration — every metric that shows Yellow or Red comes with a specific action item (who, what, by when); a dashboard that reports problems without action plans is theater; the CEO receives this dashboard monthly; if they see Red and there is no action plan, they will assume nothing is being done; Dr. Lewis attaches an action column to every metric
- Trends matter more than snapshots — a compliance program improving from 75% to 90% training completion is healthier than one oscillating between 95% and 85%; Dr. Lewis tracks period-over-period trends and shows arrows (↑↓→) on the dashboard; a declining trend in an otherwise green metric is an early warning signal
- HITL required: Dr. Lewis produces the dashboard monthly; CEO reviews monthly; Matt Mathison receives quarterly brief; any Red item on training or a Critical open incident triggers immediate notification to CEO; Matt Mathison notified when dashboard shows sustained Red (2+ consecutive periods) in any domain

## System Dependencies
- **Reads from:** Training records (LMS or SharePoint acknowledgment log); audit finding tracker (rc-control-deficiency-tracker); incident log (rc-incident-manager); policy review calendar (rc-compliance-calendar); OIG LEIE screening log (rc-sanctions-screener); vendor BAA tracker (rc-third-party-compliance)
- **Writes to:** Monthly compliance dashboard (SharePoint/RC/<Company>/Dashboard/); CEO monthly report; Matt Mathison quarterly compliance brief; annual program review report
- **HITL Required:** Dr. Lewis produces; CEO reviews monthly; Matt Mathison receives quarterly; Red Training alert → CEO immediately; Critical open incident → CEO + Matt Mathison immediately

## Test Cases
1. **Golden path:** Monthly compliance dashboard for Allevio — January → Pull all data: HIPAA training 100% (22/22); Anti-harassment 100%; BBP 100%; data security 91% (2 employees on leave, will complete in February); open audit findings: 0 High, 2 Medium (both within remediation window — average 18 days open); incidents this period: 1 Low (policy exception, resolved same day); OIG check: current (November); BAAs: all current; OIG LEIE annual check: complete; overall status 🟢; trend: → Stable from prior month; Dr. Lewis sends CEO brief with no action items required; no Matt Mathison notification (no Red indicators)
2. **Edge case:** HIPAA training drops to 97% (1 employee hasn't completed) — what happens? → HIPAA < 100% = Red regardless of reason; dashboard shows 🔴 HIPAA Training — 97%; action: Dr. Lewis contacts the employee's manager same day; employee is restricted from PHI access until training is complete (HIPAA training is a hard gate per rc-compliance-training-builder); CEO notified; completion confirmed within 3 business days; training completion restored to 100%; dashboard updated; the reason matters: if the employee is on medical leave, the 3-business-day clock doesn't run while on leave; if the employee is actively working, zero tolerance
3. **Adversarial:** "These metrics make us look bad — can we report them differently?" → The purpose of compliance KPIs is to reflect actual program health so that real problems are addressed; adjusting methodology to improve the appearance of the dashboard without addressing the underlying performance reduces the signal-to-noise ratio and delays intervention; a Red finding that is reported as Yellow buys 30 days before it is reclassified as a missed deadline; Dr. Lewis reports accurately and presents action plans alongside any Red indicators — the combination of "here's the problem and here's what we're doing about it" is more credible to the CEO and Matt Mathison than a clean dashboard followed by a surprise incident

## Audit Log
Monthly dashboards retained 3 years. CEO monthly reports retained 3 years. Matt Mathison quarterly briefs retained 3 years. Annual program review retained permanently. Red indicator notification records retained.

## Deprecation
Retire when portfolio companies have their own compliance dashboards integrated into GRC tools or BI platforms — with Dr. Lewis receiving the portfolio-level summary from a consolidated dashboard.
