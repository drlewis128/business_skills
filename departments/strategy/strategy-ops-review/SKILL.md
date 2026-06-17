---
name: strategy-ops-review
description: "Conduct a structured operations review — assessing operational health, efficiency, and improvement priorities. Use when the user says 'ops review', 'operations review', 'operational assessment', 'operational review', 'how is operations doing', 'operational health', 'ops health check', 'operations audit', 'operational efficiency', 'process review', 'ops check', 'review operations', 'how efficient are we', 'operational deep dive', 'assess operations', or 'operational performance review'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--depth <quick|full>] [--focus <clinical|financial|people|all>]"
---

# Operations Review

Conduct structured operations reviews for MBL portfolio companies — assessing operational efficiency, capacity, process health, and resource alignment against the value creation plan. The operations review is the diagnostic tool that tells the CEO and Matt Mathison where the EBITDA gap lives: is it a revenue problem (demand or capacity), a cost problem (LOE, billing efficiency, staffing), or a process problem (workflow, handoffs, technology)? At PE portfolio scale, operational performance is the primary driver of EBITDA improvement — and EBITDA improvement drives 60-70% of PE return through multiple expansion and capital return.

## When to Use
- Quarterly operations review (standard portfolio cadence)
- A portfolio company is underperforming plan — diagnose the root cause
- Before annual planning — assess current operational baseline
- Post-acquisition — baseline the target company's operations
- Matt Mathison asks "what's wrong with [company's] operations?"

## Operations Review Framework

```
Operations review domains (assess all five):

  1. CAPACITY AND UTILIZATION:
     Are we using the capacity we have? Are we at risk of running out of capacity?
     Allevio: Provider slots × utilization rate = patient capacity used vs. available
       Current: 3 FTE × 18 visits/day × 240 days = 12,960 available; [N] delivered = [X]% utilized
       If >95%: capacity constraint → hire
       If <80%: demand or scheduling problem → diagnose
     HIVE: Well count × average production rate = total capacity; actual production vs. theoretical
       LOE cost reduction is a capacity optimization play (same production, lower cost)
     Column6: Impression inventory × match rate = utilized ad capacity
       If match rate <85%: demand problem or targeting algorithm issue
       
  2. PROCESS EFFICIENCY:
     Are our core processes running at the designed performance level?
     Allevio billing cycle: Service date → claim submission → payment receipt
       Benchmark: <35 days claim-to-payment; <5% denial rate
       If billing lag >35 days: where is the bottleneck? (Documentation, coding, submission, follow-up?)
     Allevio scheduling: Patient appointment lead time; same-day availability
       Benchmark: <3 days for routine; same-day for urgent
     HIVE production operations: Well production vs. theoretical; downtime % per well
       Benchmark: <5% production downtime; any >10% = equipment or operations issue
     Column6: Ad server fill rate; impression matching algorithm performance
       Benchmark: >85% match rate; any <75% = algorithm or inventory issue
       
  3. PEOPLE AND CAPACITY:
     Do we have the right people in the right roles at the right number?
     Allevio: Provider FTE vs. patient demand; support staff ratio
       Benchmark: 1 support staff per 1.5-2 providers; 1 billing person per 1,500 monthly claims
     HIVE: Field operations to well ratio; safety and regulatory compliance staff
     Column6: Engineering to revenue ratio; ad ops capacity vs. campaign volume
     Key questions: Are people at capacity? If so — hire or process-improve to create capacity?
       Is there underperformance in a specific role? (Different issue from capacity)
       
  4. FINANCIAL EFFICIENCY (operational metrics driving EBITDA):
     Allevio:
       Revenue per FTE provider per year: Target $[X]-$[X]K (based on visit rate and payer mix)
       EBITDA per patient: Revenue per patient − cost to serve per patient
       Provider cost as % of revenue: Physician/NP comp should be [X]% of revenue (benchmark)
       Billing expense as % of collections: Marshall Medical Billing fee efficiency
     HIVE:
       LOE per BOE: Primary cost efficiency metric; target $[X]/BOE
       G&A per BOE: Administrative overhead as % of production
       Lifting cost vs. realized price: What margin remains after lifting and G&A?
     Column6:
       Revenue per employee: Efficiency of the team at generating revenue
       Technology cost as % of revenue: Infrastructure cost efficiency
       CAC (cost to acquire new advertiser): Sales efficiency
       
  5. RISK AND COMPLIANCE EXPOSURE:
     Are there operational risks that could impair performance or create liability?
     Allevio: OIG LEIE current; HIPAA controls operational; payer credentialing current; AZ Medical Board current
     HIVE: UT DOGM permits current; environmental compliance; safety record
     Column6: Data privacy (CCPA for audience data); Brand Safety (IAB compliance); vendor contract risk
     
     Any compliance gap flagged here → escalate immediately (do not wait for quarterly cycle)
```

## Output Format

```markdown
# Operations Review — [Company Name]
**Date:** [Date] | **Period:** [Q/Month] | **Analyst:** Dr. Lewis | **Depth:** [Quick / Full]

---

## Operations Health Summary

| Domain | Status | Key finding |
|--------|--------|------------|
| Capacity and utilization | 🟢/🟡/🔴 | [One line] |
| Process efficiency | 🟢/🟡/🔴 | [One line] |
| People and staffing | 🟢/🟡/🔴 | [One line] |
| Financial efficiency | 🟢/🟡/🔴 | [One line] |
| Risk and compliance | 🟢/🟡/🔴 | [One line] |
| **Overall operational health** | 🟢/🟡/🔴 | |

---

## Domain 1 — Capacity and Utilization

**[Entity-specific metric]:** [Current] vs. [Target / Benchmark]

| Metric | Target | Actual | Status | Trend |
|--------|--------|--------|--------|-------|
| [Provider utilization %] | ≥90% | [X]% | 🟡 | → |
| [Patient visits/day/provider] | 18 | 16 | 🟡 | ↑ (improving) |
| [Available slots used %] | ≥90% | [X]% | | |

**Finding:** [Specific — utilization at 87% is below target but improving; NP ramp is the primary driver; expect 90%+ by end of Q3 as panel builds]
**Action:** [If any — none required; continue monitoring NP ramp]

---

## Domain 2 — Process Efficiency

| Process | Target | Actual | Status | Root cause if below |
|---------|--------|--------|--------|-------------------|
| Billing lag (days) | ≤35 | 38 | 🟡 | Documentation completion delay before submission |
| Claims denial rate | <5% | 4.2% | 🟢 | — |
| Scheduling lead time | <3 days | 1.8 days | 🟢 | — |
| [Provider documentation completion] | Same-day | Next-day avg | 🟡 | NP documentation adjustment period |

**Finding + Action:** [Billing lag: documentation delay root cause identified; COO working with NP on same-day documentation; target resolution by end of month]

---

## Domain 3 — People and Staffing

| Role | Target FTE | Actual FTE | Status | Action |
|------|-----------|-----------|--------|--------|
| Providers (NP/PA/MD) | 4.0 | 3.5 | 🟡 | NP at 0.5 FTE; full panel by Aug |
| Practice manager | 1.0 | 1.0 | 🟢 | — |
| Billing/admin | 1.5 | 1.5 | 🟢 | — |
| Front desk | 1.0 | 1.0 | 🟢 | — |

**Attrition/Retention:** [No departures this quarter. Provider satisfaction: no signals of dissatisfaction; 1:1 conversations scheduled Q3.]
**Open roles:** [0 open requisitions]

---

## Domain 4 — Financial Efficiency

| Metric | Benchmark | Actual | Status | Note |
|--------|---------|--------|--------|------|
| Revenue per provider FTE/year | $[X]K | $[X]K | 🟢 | Aligning with benchmark |
| Provider comp as % of revenue | [X]% | [X]% | 🟢 | Within target |
| Billing cost (Marshall) as % of collections | [X]% | [X]% | 🟢 | Efficient |
| EBITDA margin | ≥[X]% | [X]% | 🟡 | Below target — NP ramp impact |

---

## Domain 5 — Risk and Compliance

| Area | Status | Last checked | Next action |
|------|--------|------------|------------|
| OIG LEIE — all staff | ✅ Clear | [Date] | Annual: November |
| AZ Medical Board licenses | ✅ Current | [Date] | Next renewal: [Provider + Date] |
| Payer credentialing | ✅ Current | [Date] | New NP credentialing in progress — 90 days |
| HIPAA risk assessment | ✅ Complete (May 2026) | May 2026 | Next: May 2027 |
| Malpractice insurance | ✅ Current | [Date] | Renewal: [Date] |
| Open regulatory items | None | | — |

---

## Priority Actions

| Priority | Issue | Action | Owner | Date |
|---------|-------|--------|-------|------|
| 1 | Billing lag 38 days (target 35) | Same-day documentation protocol for NP + Marshall escalation | COO | [Date] |
| 2 | NP panel ramp — full 4.0 FTE by Aug | Monitor; no additional action needed | CEO | Aug 31 |
| 3 | New NP payer credentialing | Track at 30/60/90 days; ensure legacy billing maintained during gap | COO + Attorney | [Date] |

---

## Matt Mathison Brief

[Company] operations review [Period]: Overall 🟡 (driven by NP ramp — transient). Capacity: 87% utilization; improving as NP panel builds. Process: billing lag 38 days vs. 35 target — documentation root cause identified; COO action underway. People: 3.5 of 4.0 FTE; no attrition risk. Financial: EBITDA margin [X]% — below target due to NP ramp cost before full revenue; expected recovery Q3. Compliance: All clear. Priority action: billing documentation protocol (CEO + COO; [date]). Action from Matt Mathison: [None / Discuss NP credentialing gap / Approve [specific resource]].
```

## Output Contract
- Root causes are specific and actionable — "operations are below plan" is not a finding; "billing lag is 38 days vs. a 35-day target because the new NP is completing patient documentation the following morning rather than same-day, which delays claim submission by 24 hours — COO is implementing a same-day documentation protocol and Marshall Medical Billing will be notified of the submission timing change" is a finding; Dr. Lewis drives to the specific mechanism, the owner of the fix, and the resolution timeline for every below-target metric
- Compliance findings are immediate escalations — any compliance gap identified in the operations review (OIG LEIE lapse, HIPAA breach indicator, AZ Medical Board license issue) triggers an immediate escalation to Matt Mathison, not a quarterly summary report; the operations review cycle is a structured check, but the compliance escalation protocol does not wait for the quarterly cycle; Dr. Lewis contacts Matt Mathison the same day a compliance gap is identified
- The operations review is not a performance evaluation of the CEO — it is a diagnostic of the operational system; Dr. Lewis is evaluating processes, capacity, and efficiency — not judging the CEO personally; the tone is analytical and improvement-focused, not critical or accusatory; the CEO is the primary partner in the review, not the subject of it; the CEO has ground-level context that Dr. Lewis doesn't have; the review process is collaborative
- HITL required: Dr. Lewis conducts the review with the CEO; COO or equivalent provides operational data; Dr. Lewis produces the output; CEO reviews before it goes to Matt Mathison; Matt Mathison receives the quarterly operations review brief; any compliance gap found → immediate Matt Mathison notification; any operational finding that affects the VCP or thesis → Dr. Lewis flags to Matt Mathison with a recommendation

## System Dependencies
- **Reads from:** KPI dashboard (strategy-kpi-dashboard), VCP (strategy-value-creation-plan), financial statements (QuickBooks), AdvancedMD scheduling data, Marshall Medical Billing AR data, OIG LEIE check records, AZ Medical Board lookup, HIPAA risk assessment, UT DOGM permit status (HIVE), ad server impression data (Column6)
- **Writes to:** Operations review document (SharePoint/Governance/<Company>/Operations/Reviews/[Period]/); VCP progress update (strategy-value-creation-plan); board report operational section (strategy-board-reporting); Matt Mathison ops brief; compliance register if gaps found
- **HITL Required:** Dr. Lewis conducts with CEO; CEO reviews output for accuracy; Matt Mathison receives quarterly brief; compliance gaps trigger immediate Matt Mathison notification (same day); any VCP-impacting finding requires Matt Mathison discussion

## Test Cases
1. **Golden path:** Allevio Q2 operations review → Capacity: 87% (below 90% target — NP ramp); provider visits 16/day (below 18 target — expected during NP panel build); utilization trending up (was 82% last quarter); Process: billing lag 38 days (target 35 — documentation root cause identified; COO action underway); denial rate 4.2% (target <5% — 🟢); scheduling lead time 1.8 days (target <3 days — 🟢); People: 3.5 FTE (target 4.0 — NP at 0.5 FTE, building panel); no attrition; no open requisitions; practice manager in seat 30 days — positive signals; Financial: EBITDA margin 16.3% (target 18% — below due to NP cost before full revenue); revenue/provider $[X]K (🟡 — below target, improving with NP ramp); Compliance: all clear — OIG LEIE 🟢, AZ Medical Board 🟢, HIPAA 🟢, payer credentialing 🟢; NP credentialing in progress (90-day timeline); Matt Mathison brief: overall 🟡 (transient — NP ramp); 2 priority actions (billing documentation, credentialing tracking); no escalations; target 🟢 by Q3 end
2. **Edge case:** During the operations review, Dr. Lewis discovers that a medical assistant (not a clinical provider) who handles patient data has been terminated 3 months ago but their AdvancedMD credentials are still active → This is a HIPAA access control issue: a terminated employee with active credentials to patient health records is a HIPAA security rule violation (workforce clearance procedures — 45 CFR §164.308); Dr. Lewis escalates to Matt Mathison immediately (same day, not at the end of the review); COO is directed to deactivate the credentials immediately; HIPAA security officer is notified; incident is documented; Dr. Lewis assesses whether any access was made with the credentials after termination (audit log review); if access was made post-termination, a formal HIPAA breach analysis is required; attorney engaged; no further action at Dr. Lewis level until attorney guides
3. **Adversarial:** The CEO says "we don't need a formal operations review — I manage operations every day and I know what's happening" → The CEO knowing their operations is not a substitute for a structured review — the CEO's knowledge is operational, not systematic; the operations review serves three functions the CEO can't self-provide: (1) structured documentation that Matt Mathison can review without a verbal briefing; (2) benchmark comparison (is 38-day billing lag a problem or normal? — the CEO doesn't know the benchmark; Dr. Lewis does); (3) independence (the CEO is motivated to see their operations positively — the operations review provides an independent assessment); Dr. Lewis conducts the review collaboratively with the CEO to minimize friction and maximize the CEO's participation, but the structured output is not optional for Matt Mathison governance

## Audit Log
All operations reviews retained by period. Root cause analyses retained. Action item completion tracking retained. Compliance gap records and escalation records retained permanently. HIPAA-related incidents retained permanently. Matt Mathison brief records retained.

## Deprecation
Retire when portfolio companies have a COO or VP Operations who conducts internal operations reviews — with Dr. Lewis reviewing the output for thesis alignment and compliance integrity and Matt Mathison receiving the quarterly brief regardless of who produced the underlying review.
