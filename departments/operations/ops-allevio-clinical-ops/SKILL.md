---
name: ops-allevio-clinical-ops
description: "Manage Allevio clinical operations workflow, staffing, and clinical process efficiency. Use when the user says 'clinical operations', 'clinical ops', 'clinical workflow', 'clinical staffing', 'clinical capacity', 'clinical scheduling', 'provider scheduling', 'clinical efficiency', 'clinical throughput', 'patient throughput', 'appointment capacity', 'appointment availability', 'visits per day', 'panel size', 'provider panel', 'clinical team', 'clinical staff', 'clinical management', 'PCP operations', 'primary care operations', 'clinical team management', 'Allevio clinical', 'clinical coordination', 'clinical quality operations', 'clinical productivity', 'clinical performance', 'clinical metrics', 'provider utilization', 'provider efficiency', 'clinical hours', 'clinical schedule', 'telehealth operations', 'telehealth scheduling', or 'virtual care operations'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--action <review|capacity|scheduling|staffing|quality|efficiency>] [--metric <throughput|panel-size|utilization|access|telehealth>] [--period <weekly|monthly|quarterly>] [--focus <pcp|specialist|telehealth|all>]"
---

# Ops Allevio Clinical Ops

Manage Allevio clinical operations — tracking clinical capacity and throughput, ensuring member access standards are met, monitoring provider productivity and panel utilization, and flagging clinical operations issues that affect the claim ratio, member experience, or EBITDA. Dr. Lewis does not manage clinical operations day-to-day — that is the Allevio CEO's domain with the clinical team — but he tracks the operational metrics that connect clinical performance to financial outcomes: when clinical capacity is constrained, member access suffers, NPS drops, and GRR is at risk; when clinical productivity is optimized, the claim ratio improves and EBITDA grows. Dr. Lewis's role is to hold the clinical operations dashboard, connect clinical signals to financial outcomes, and raise operational risks to the Allevio CEO before they become financial problems.

## When to Use
- Monthly clinical operations review
- Claim ratio breach (clinical operations is a primary driver)
- Member access KPIs deteriorate (scheduling availability drops)
- Provider productivity metric falls below benchmark
- New provider is being onboarded or a provider is departing

## Clinical Operations Framework

```
CLINICAL OPERATIONS KPIs (tracked monthly):

  ACCESS METRICS:
    PCP appointment availability: members can schedule within 5 business days (target)
    Urgent care access: same-day or next-day (target)
    Telehealth response: appointment within 24 hours of request (target)
    
  PROVIDER PRODUCTIVITY:
    Visits per provider per day: [benchmark per Allevio specialty mix]
    Panel size per PCP: [benchmark based on Allevio model — typically 1,500-2,500 per PCP]
    Telehealth utilization: % of total visits via telehealth (track for cost efficiency)
    No-show rate: target <10% (no-show wastes clinical capacity and affects access)
    
  CLINICAL-FINANCIAL CONNECTION:
    Claim ratio = medical claims incurred / PMPM revenue
    Target claim ratio: ≤87%
    Clinical drivers of claim ratio:
      PCP connectivity: members with an established PCP have lower ER utilization
      Preventive care rate: % of eligible members receiving preventive care (higher = lower claims)
      Chronic condition management: managed = lower acute episodes = lower claims
    
  STAFFING STATUS:
    Providers by type: [PCPs; NPs; PAs; specialists]
    Vacancies: open positions vs. funded headcount
    Provider satisfaction (annual survey): retention signal
    Locum/temp coverage: any positions covered by temporary staff
    Cost impact: locum coverage costs 2-3× a permanent position

CLINICAL CAPACITY PLANNING:

  CURRENT CAPACITY:
    Total enrolled members: [N]
    PCP panel capacity: [N providers × avg panel size]
    Current utilization: [enrolled / capacity] (target: 80-90%; >95% = access risk)
    
  GROWTH PLANNING:
    When new employer group is added: does capacity support the new members?
    Rule: add a new provider (or expand telehealth) before utilization exceeds 90%
    Lead time for provider hiring: 60-120 days (credentialing adds time)
    
  TELEHEALTH AS CAPACITY BUFFER:
    Telehealth can absorb access pressure for appropriate visit types
    Not all visits are telehealth-appropriate (physical exam; labs)
    Telehealth cost structure: lower than in-person (reduce overhead)
    Telehealth claim ratio impact: appropriate use reduces ER diversions

PROVIDER ONBOARDING AND DEPARTURES:

  PROVIDER HIRING (connected to ops-headcount-ops):
    Credentialing: 60-120 days minimum after hire
    Credentialed providers can see patients and bill through AdvancedMD
    Pre-credentialing: provider can be employed but cannot see patients or generate revenue
    Risk: hiring 4 months ahead of need (employment cost before revenue); hiring too late (access gap)
    
  PROVIDER DEPARTURES:
    Immediate impact: panel capacity drops; access risk increases
    Panel redistribution: existing providers absorb the panel temporarily
    Backfill timeline: 60-120 days for replacement + credentialing
    Matt Mathison notification: any provider departure that increases utilization >90%
    
  NO-SHOW MANAGEMENT:
    No-show = wasted clinical capacity = reduced revenue + constrained access
    Reduction strategies: reminder texts/calls; telehealth option for no-shows; waitlist management
    Track no-show rate by appointment type; target <10%
```

## Output Format

```markdown
# Clinical Operations Report — [Month Year]
**Prepared by:** Allevio Operations | **Reviewed by:** Dr. Lewis

---

## Access

| Metric | Target | Actual | Trend | Status |
|--------|--------|--------|-------|--------|
| PCP appointment within 5 days | ≥90% | [%] | ↑↓→ | 🟢/🟡/🔴 |
| Telehealth within 24 hours | ≥95% | [%] | ↑↓→ | 🟢/🟡/🔴 |

---

## Clinical Productivity

| Metric | Target | Actual | Trend | Status |
|--------|--------|--------|-------|--------|
| Visits/provider/day | [N] | [N] | ↑↓→ | 🟢/🟡/🔴 |
| Panel utilization | 80-90% | [%] | ↑↓→ | 🟢/🟡/🔴 |
| No-show rate | <10% | [%] | ↑↓→ | 🟢/🟡/🔴 |

---

## Staffing

- **Providers:** [N] active | [N] vacancies | [N] in credentialing
- **Locum coverage:** [N] providers (cost impact: ~$[X]/month vs. permanent)

---

## Clinical-Financial Alert

Claim ratio ([current %]) vs. target (87%): [+/-] [pts]
Clinical driver: [e.g., PCP connectivity rate at [%] — below 80% target — driving ER utilization]
Action: [Allevio clinical team is [action]; target improvement within [timeframe]]
```

## Output Contract
- Clinical metrics connect to financial outcomes in every report — Dr. Lewis does not report clinical operations metrics in isolation; every clinical operations report connects the operational metric to the financial consequence; "PCP connectivity is 72% (target 80%)" is paired with "this is contributing to elevated ER utilization which is pushing the claim ratio 2.1 points above target — each 1-point increase costs approximately $[X] of EBITDA"; this framing ensures that the Allevio CEO and Matt Mathison understand why clinical operations metrics matter, not just what they are
- Provider vacancies are flagged when they create access risk — a provider vacancy that keeps utilization below 90% is a cost optimization opportunity; a provider vacancy that pushes utilization above 90% is an access risk that must be escalated; Dr. Lewis flags utilization >90% to the Allevio CEO with a specific hiring timeline recommendation; Matt Mathison is notified if utilization exceeds 90% for more than 30 days (access risk is converting to GRR risk)
- No PHI in any report to Matt Mathison or Dr. Lewis — all clinical operations reporting is aggregate data only; Dr. Lewis never sees individual patient records, individual claim details, or any data that would constitute PHI; the clinical team manages individual patient care; Dr. Lewis receives population-level metrics (claim rate; panel utilization; no-show rate; access metrics) without any individual-level data; this is both a HIPAA compliance requirement and a design principle
- HITL required: provider departures that push utilization >90% → Dr. Lewis notification to Allevio CEO (with timeline); >30 days at >90% utilization → Matt Mathison awareness; new provider hiring authorization → Allevio CEO (clinical operations) + Dr. Lewis (budget authority); claim ratio breach driven by clinical operations → Allevio CEO root cause + Dr. Lewis action plan; locum coverage extending beyond 60 days → Dr. Lewis escalation to Allevio CEO + Matt Mathison (cost impact significant)

## System Dependencies
- **Reads from:** AdvancedMD (aggregate appointment data; no-show rates; panel size; visits per provider — aggregate/de-identified); fin-allevio-claim-ratio (claim ratio and clinical driver analysis); ops-allevio-member-experience (access complaints as clinical operations signal); ops-allevio-care-coordination (utilization management data feeds clinical ops)
- **Writes to:** Clinical operations reports (SharePoint → Allevio → Operations → ClinicalOps → [YYYY]); Allevio CEO briefings (access risk; vacancy escalations); Matt Mathison notifications (utilization >90% + >30 days; locum cost escalation); ops-action-tracker (provider hiring actions; no-show reduction initiatives; claim ratio improvement actions); QBR deck (clinical operations section)
- **HITL Required:** All data is aggregate/de-identified (no PHI to Dr. Lewis or Matt Mathison); provider hiring → Allevio CEO (clinical) + Dr. Lewis (budget); utilization >90% for >30 days → Matt notification; locum coverage >60 days → Matt notification; claim ratio driven by clinical ops → Allevio CEO action plan

## Test Cases
1. **Golden path:** Monthly clinical operations review. Panel utilization: 83% — within target. PCP access (5 days): 91% — on target. Telehealth within 24 hours: 97% — on target. No-show rate: 8.2% — within target. Visits/provider/day: 16.4 (benchmark 16-18) — on target. Claim ratio: 88.9% (target 87%) — slightly above; Dr. Lewis checks clinical driver: PCP connectivity at 78% (just below 80% target). Report to Allevio CEO: "Clinical ops is solid this month. The one signal to watch: PCP connectivity at 78% — 2 points below target. This is contributing to the claim ratio being 1.9 points above target. Clinical team's chronic condition management outreach that started in March should improve this over the next 60 days. I'll track monthly."
2. **Edge case:** A PCP resigns with 2 weeks notice — their panel size is 1,600 members → Dr. Lewis: "Provider departure creates an immediate access risk: [Provider] covers 1,600 members; departure date is [date]. With their departure, utilization goes from 83% to 94% — above our 90% threshold. Immediate actions: (1) Allevio CEO: activate the locum/temp coverage protocol today; get a locum in place within 10 days; (2) redistribute [Provider]'s panel across remaining PCPs temporarily; (3) begin hiring process for permanent replacement (60-120 day timeline — credentialing adds time). Financial impact of locum: approximately $[X]/month premium over permanent cost. Matt Mathison: I'm flagging this — access will be strained for 60-90 days minimum; this will affect member satisfaction metrics in Q[N]; the Allevio CEO is managing."
3. **Adversarial:** Allevio CEO wants to reduce clinical staff to cut costs and argues it will improve the margin → Dr. Lewis: "I understand the cost pressure, but I need to model the full financial impact before recommending this. Reducing clinical staff has three financial effects: (1) Direct savings: [N] FTE × $[X] salary = $[X]/year. (2) Access impact: utilization rises from [current%] to [post-reduction%]; access degrades; NPS drops; GRR risk increases — estimated: 2-3 employer groups at renewal risk = [N] members × $[X] PMPM × 12 months = $[X] revenue at risk. (3) Claim ratio impact: fewer PCPs = lower chronic condition management = higher ER utilization = higher claims. The math may not work in your favor. Let me run a full scenario model before you make this decision — this takes 2 hours. Then you and I can present it to Matt together with our recommendation. Is that the right process?"

## Audit Log
Monthly clinical operations reports retained (aggregate data only — no PHI). Provider vacancy and hiring records retained. Locum coverage cost records retained. Utilization escalation records retained (dates; levels; actions). Claim ratio clinical driver analysis retained. Access metric history retained.

## Deprecation
Review clinical benchmarks annually as Allevio's service model evolves (e.g., if telehealth becomes a larger % of the service mix, the panel size and throughput benchmarks may change). The aggregate clinical-financial connection framework is permanent.
