---
name: rc-key-risk-indicator
description: "Design and monitor Key Risk Indicators (KRIs) for early warning of emerging risks. Use when the user says 'KRI', 'key risk indicator', 'risk indicator', 'risk early warning', 'risk monitoring', 'risk metrics', 'leading risk indicators', 'risk signals', 'risk dashboard metrics', 'track risk', 'monitor risk', 'risk threshold', 'risk trigger', or 'risk alert'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--domain <financial|compliance|cyber|operational|reputational>] [--action <design|monitor|report|alert>]"
---

# Key Risk Indicator Monitor

Design and monitor Key Risk Indicators (KRIs) at MBL portfolio companies — establishing leading indicators that signal emerging risk before it materializes, with defined thresholds that trigger escalation and action. KRIs are the early warning system for the risk register: while the risk register tracks identified risks, KRIs detect the signals that a risk is becoming more likely or more severe. A KRI that crosses its threshold is not itself the problem — it is the signal to investigate and act before the underlying risk event occurs.

## When to Use
- Designing the initial KRI framework for a portfolio company (after risk register is built)
- Monthly or weekly KRI monitoring — are any indicators approaching or crossing thresholds?
- A risk event has occurred — retrospectively, which KRIs signaled it and were they monitored?
- Quarterly risk reporting — KRI dashboard to CEO and Matt Mathison
- Adding new KRIs after a new risk is added to the risk register

## KRI Design Framework

```
KRI design principles:
  Leading indicator: KRIs measure conditions that PRECEDE a risk event (not the event itself)
    → "Days overdue on critical patches" is a KRI for ransomware risk (leading)
    → "Ransomware attack occurred" is an event, not a KRI
    
  Measurable: KRIs are quantitative and have a clear data source
    → "Security concerns" is not a KRI
    → "Open critical CVSS ≥9.0 vulnerabilities unpatched >7 days: [Count]" is a KRI
    
  Threshold-based: KRIs have three zones: Green (normal), Amber (warning), Red (action required)
    → Green: No action required; normal operations
    → Amber: Elevated attention; investigate and report; escalate if trend continues
    → Red: Immediate action; escalate to CEO; mitigation plan required
    
  Owner: Each KRI has an owner who monitors it and responds when thresholds are crossed
  
  Review cadence: Cadence matches the speed at which the underlying risk can change
    → Cyber KRIs: Weekly or real-time (Microsoft Secure Score; open vulnerabilities)
    → Compliance KRIs: Monthly (training completion; BAA tracker)
    → Financial KRIs: Monthly (cash runway; AP aging)
    → Strategic KRIs: Quarterly (customer concentration; market position)
    
MBL standard KRI library:
  CYBERSECURITY:
    → Microsoft Secure Score: 🟢 ≥65 | 🟡 55-64 | 🔴 <55
    → Open critical vulnerabilities (CVSS ≥9.0) unpatched >7 days: 🟢 0 | 🟡 1-2 | 🔴 ≥3
    → Phishing simulation click rate: 🟢 <5% | 🟡 5-10% | 🔴 >10%
    → MDM enrollment (% of company devices): 🟢 ≥95% | 🟡 90-94% | 🔴 <90%
    → Failed MFA attempts (volume anomaly): 🟢 Baseline | 🟡 2× baseline | 🔴 5× baseline
    
  HIPAA COMPLIANCE (Allevio):
    → HIPAA Security training completion (workforce): 🟢 100% | 🟡 95-99% | 🔴 <95%
    → BAA tracker completeness: 🟢 100% | 🟡 95-99% | 🔴 <95% (Amber = PHI vendor without BAA)
    → OIG LEIE check current for all clinical staff: 🟢 Current | 🟡 1-30 days overdue | 🔴 >30 days overdue
    → Days since last HIPAA risk analysis: 🟢 <365 | 🟡 365-540 | 🔴 >540 (18 months = non-compliant)
    → Unresolved HIPAA policy gaps: 🟢 0 | 🟡 1-2 | 🔴 ≥3
    
  FINANCIAL:
    → Cash runway (months): 🟢 ≥18mo | 🟡 12-18mo | 🔴 <12mo
    → AP aging (invoices >60 days): 🟢 <5% of AP | 🟡 5-10% | 🔴 >10%
    → Budget variance (actual vs. plan): 🟢 ±5% | 🟡 ±10% | 🔴 >10% unfavorable
    → Fraud risk indicators (duplicate payments, unapproved vendors): 🟢 0 | 🟡 1 (investigating) | 🔴 ≥2 or confirmed
    → Revenue concentration (top customer as % of revenue): 🟢 <20% | 🟡 20-30% | 🔴 >30%
    
  OPERATIONAL:
    → System uptime (Tier 1 systems — monthly): 🟢 ≥99.7% | 🟡 99-99.6% | 🔴 <99%
    → Help desk ticket backlog: 🟢 <15 | 🟡 15-25 | 🔴 >25
    → Key person absence (CEO or Dr. Lewis out >5 business days): 🟡 Flagged | 🔴 No coverage
    → Vendor dependency (single-source for critical function): 🟡 Identified | 🔴 No contingency
    
  REPUTATIONAL:
    → Customer/patient complaint rate (% of interactions): 🟢 <1% | 🟡 1-3% | 🔴 >3%
    → Employee THRIVE alignment (from engagement data): 🟢 >4.0 | 🟡 3.5-4.0 | 🔴 <3.5
    → Media mentions (negative): 🟢 None | 🟡 Minor/social | 🔴 Major media/regulatory
```

## Output Format

```markdown
# KRI Dashboard — <Company Name>
**Period:** [Month YYYY] | **Owner:** Dr. John Lewis
**Next review:** [Date] | **Report to:** CEO [monthly] / Matt Mathison [quarterly]

---

## KRI Status Summary

| Domain | Green | Amber | Red | Overall |
|--------|-------|-------|-----|---------|
| Cybersecurity | [N] | [N] | [N] | 🟢/🟡/🔴 |
| HIPAA Compliance (Allevio) | [N] | [N] | [N] | |
| Financial | [N] | [N] | [N] | |
| Operational | [N] | [N] | [N] | |
| Reputational | [N] | [N] | [N] | |
| **Total** | **[N]** | **[N]** | **[N]** | |

---

## KRI Detail

### Cybersecurity

| KRI | Current | Green | Amber | Red | Status | Trend | Action |
|-----|---------|-------|-------|-----|--------|-------|--------|
| Microsoft Secure Score | 62/100 | ≥65 | 55-64 | <55 | 🟡 Amber | ↑ from 58 | Continue current plan — target 65 by [Date] |
| Open critical vulns unpatched >7 days | 0 | 0 | 1-2 | ≥3 | 🟢 Green | Stable | None |
| Phishing click rate | 4% | <5% | 5-10% | >10% | 🟢 Green | ↓ from 7% | None — KnowBe4 effective |
| MDM enrollment | 96% | ≥95% | 90-94% | <90% | 🟢 Green | Stable | None |

### HIPAA Compliance (Allevio)

| KRI | Current | Green | Amber | Red | Status | Trend | Action |
|-----|---------|-------|-------|-----|--------|-------|--------|
| HIPAA training completion | 94% | 100% | 95-99% | <95% | 🔴 Red | ↓ from 100% | 3 new staff — training assigned; complete by [Date] |
| BAA tracker completeness | 100% | 100% | 95-99% | <95% | 🟢 Green | Stable | None |
| OIG LEIE checks current | Current | Current | 1-30d overdue | >30d overdue | 🟢 Green | Stable | None |
| Days since last HIPAA risk analysis | 340 | <365 | 365-540 | >540 | 🟢 Green | ↑ (aging) | Schedule annual risk analysis — due [Date] |

### Financial

| KRI | Current | Green | Amber | Red | Status | Trend | Action |
|-----|---------|-------|-------|-----|--------|-------|--------|
| Cash runway | 22 months | ≥18mo | 12-18mo | <12mo | 🟢 Green | Stable | None |
| Budget variance | +3% favorable | ±5% | ±10% | >10% unfav | 🟢 Green | Stable | None |
| AP aging >60 days | 3% of AP | <5% | 5-10% | >10% | 🟢 Green | Stable | None |

---

## Red KRI Action Log

| KRI | Current value | Red threshold | Owner | Action required | Due date | Status |
|-----|-------------|-------------|-------|----------------|---------|--------|
| HIPAA training completion | 94% | <95% | Dr. Lewis | Assign and complete training for 3 new staff | [Date] | In progress |

---

## Amber KRI Monitoring Log

| KRI | Current value | Trend | Watch condition | Review date |
|-----|-------------|-------|----------------|------------|
| Microsoft Secure Score | 62 | ↑ improving | Crosses Red (<55) = immediate escalation | [Next month] |

---

## CEO Monthly KRI Summary

KRI Dashboard [Month]: [N] KRIs monitored. 🔴 Red: [N] (action in progress). 🟡 Amber: [N] (monitoring). 🟢 Green: [N].
Red alerts: [KRI name — action being taken].
Amber watch: [KRI name — trend].
All HIPAA KRIs: [Green / Amber — detail] (Allevio).

---

## Matt Mathison Quarterly KRI Brief

Portfolio KRI Q[N]: [Company A]: 🟢 [N green] / 🟡 [N amber] / 🔴 [N red]. [Company B]: [Same]. Key concern: [Top cross-portfolio risk signal]. HIPAA posture (Allevio): [KRI status]. No escalation required / Escalation: [Issue].
```

## Output Contract
- Amber KRIs are monitored, not ignored — an Amber KRI that stays Amber for 3 consecutive months without trending toward Green requires a mitigation plan; sustained Amber indicates that the "normal" monitoring is not sufficient; the trend (↑ improving, ↓ worsening, stable) is as important as the current value; a KRI at Amber trending ↓ (worsening) is more urgent than one at Red trending ↑ (improving)
- Red KRIs trigger action within 24 hours, not at the next review — the point of a KRI threshold is that it removes the question of "is this serious enough to act on?"; if the KRI is Red, the answer is yes; the owner of the Red KRI has 24 hours to begin action and 48 hours to report to Dr. Lewis; Dr. Lewis reports to the CEO; for HIPAA Red KRIs at Allevio, immediate action and CEO notification are required
- KRI data comes from real-time sources, not self-report — a "HIPAA training completion" KRI that is manually self-reported by a manager is unreliable; the data source for each KRI is defined in advance and is authoritative: Compliance Group platform completion records, Entra ID/Intune for MDM enrollment, Microsoft Security Center for Secure Score; KRIs built on self-reported data have a tendency to stay Green even when the underlying risk is worsening
- HITL required: Dr. Lewis reviews KRI dashboard monthly; Red KRIs trigger 24-hour action and CEO notification; Amber trends reviewed at monthly CEO meeting; Matt Mathison receives quarterly KRI portfolio summary; persistent High KRIs (Red for >30 days) escalated to Matt Mathison

## System Dependencies
- **Reads from:** Microsoft Security Center (Secure Score), Microsoft Intune (MDM enrollment), phishing platform (click rate), compliance training platform (completion rates), QuickBooks (financial KRIs), help desk platform (operational KRIs), HIPAA risk analysis records (Allevio), OIG LEIE check records (Allevio)
- **Writes to:** KRI dashboard (SharePoint/RC/<Company>/RiskManagement/KRIs/); monthly CEO KRI summary; Matt Mathison quarterly brief; Red KRI action log; risk register updates (KRI trends feed risk register updates)
- **HITL Required:** Dr. Lewis monitors and reports; Red KRIs: 24-hour action + CEO notification; HIPAA Red KRIs: immediate action (Allevio); Matt Mathison quarterly brief; persistent Red KRIs (>30 days) escalated to Matt Mathison

## Test Cases
1. **Golden path:** Monthly KRI review for Allevio → HIPAA training completion: 3 new hires started last week, not yet trained — 94% (Red threshold <95%); Dr. Lewis assigns training same day; HIPAA access (AdvancedMD) gated until training complete (it-onboarding-provisioner enforcement); CEO notified: "3 new staff triggered training KRI — training assigned, gated from PHI systems, expected complete by [Date]"; all other KRIs Green except Secure Score (Amber at 62, trending up); monthly CEO summary sent; KRI dashboard updated; remediation tracking logged
2. **Edge case:** Microsoft Secure Score drops from 63 to 51 in a single week (from Amber to Red) → Immediate investigation: Secure Score drop is typically driven by a specific control failure; open Security Center to identify which controls changed; common causes: new conditional access policy expired or misconfigured; legacy authentication not yet fully blocked; new application connected to Entra ID with elevated permissions; resolve the specific control failure; update KRI status; CEO notified same day (Red threshold crossed); remediation complete and score confirmed recovering before next CEO report
3. **Adversarial:** "KRIs are just more dashboards nobody looks at" → The value of KRIs is in the Red threshold action protocol, not the dashboard itself; if nobody looks at the KRI dashboard, that is a process failure, not a KRI failure; the solution is: (1) Red KRIs trigger a notification to Dr. Lewis (not a dashboard to check), (2) monthly CEO briefing includes KRI summary (3 sentences) as a standing agenda item, (3) if the CEO hasn't heard about a KRI this month, the protocol isn't working; the KRI dashboard should not require proactive checking — it should push alerts

## Audit Log
KRI dashboards retained monthly. Red KRI action logs retained with resolution dates. CEO KRI summary communications retained. Matt Mathison quarterly briefs retained. KRI threshold changes retained with rationale. HIPAA KRI records retained permanently (Allevio — 6-year retention).

## Deprecation
Retire when portfolio companies have automated risk monitoring platforms that continuously track KRIs with automated alerting — with Dr. Lewis reviewing KRI threshold design and HIPAA compliance KRI thresholds at Allevio. CEO and Matt Mathison risk reporting from KRI data remains a permanent requirement.
