---
name: it-okr-tracker
description: "Define and track IT OKRs — system reliability, security posture, user satisfaction. Use when the user says 'IT OKRs', 'IT objectives', 'IT goals', 'IT KPIs', 'IT metrics', 'IT performance metrics', 'IT scorecard', 'IT quarterly goals', 'track IT performance', 'IT SLA metrics', 'IT uptime goals', 'security posture metrics', 'IT satisfaction score', or 'IT OKR review'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <Q1-Q4 YYYY>] [--action <set|review|report>]"
---

# IT OKR Tracker

Define and track IT Objectives and Key Results (OKRs) at MBL portfolio companies — translating IT strategy into measurable quarterly goals across the domains that matter most: system reliability, security posture, user satisfaction, and project delivery. IT OKRs prevent the pattern where IT effort is invisible until something breaks — they make IT performance visible to business leadership and create accountability for the IT initiatives on the roadmap. Without OKRs, IT is measured only by what goes wrong, never by the hard work that prevents things from going wrong.

## When to Use
- Quarterly OKR setting — define IT OKRs for the next 90 days
- Mid-quarter OKR review — are IT goals on track? What needs to shift?
- Quarterly IT performance report to CEO and Matt Mathison
- Annual IT performance review — which OKRs were achieved? What did IT deliver?
- Building the case for IT investment — OKR history demonstrates IT impact

## IT OKR Framework

```
IT OKR domains (4 pillars):
  1. System reliability and availability:
    → Target: 99.9% uptime for Tier 1 systems (AdvancedMD, M365, QB)
    → Metric: Monthly uptime %; P1 incident count; MTTR (Mean Time to Resolve)
    → Data source: Monitoring tools (UptimeRobot, Azure Monitor); help desk tickets
    
  2. Security posture:
    → Target: Microsoft Secure Score >60/100 (portfolio baseline)
    → Metric: Secure Score; MDM enrollment %; patch compliance %; phishing click rate
    → Data source: M365 Security Center; Intune compliance dashboard; phishing platform
    → HIPAA compliance metrics at Allevio: BAA tracker %, risk analysis current (yes/no)
    
  3. User satisfaction (help desk):
    → Target: User satisfaction score >4.0/5.0; P1 SLA adherence >95%
    → Metric: Satisfaction survey score; ticket SLA compliance %; ticket resolution time
    → Data source: Help desk platform (Freshdesk/Zoho); post-ticket surveys
    
  4. IT project delivery:
    → Target: ≥80% of IT roadmap H1 milestones delivered on schedule
    → Metric: Milestone completion rate; initiatives delivered vs. planned
    → Data source: Monday.com IT project boards

OKR format:
  Objective: Qualitative goal — describes what IT is trying to achieve
  Key Result: Quantitative measure — did we achieve the objective?
  
  Rules for key results:
    → Specific and measurable (not "improve security" but "raise Secure Score from 52 to 65")
    → Has a baseline and a target (baseline: current state; target: where we're going)
    → Has a clear data source (who measures it and how)
    → Scored 0.0-1.0 at quarter end (1.0 = fully achieved; 0.7+ = strong; <0.3 = failed)
    
MBL IT performance benchmarks:
  System reliability: 99.9% uptime = <44 min/month unplanned downtime per Tier 1 system
  Security: Microsoft Secure Score >60/100; MDM enrollment >95%; HIPAA BAA tracker 100% (Allevio)
  Help desk: P1 SLA <30 min; P2 <1 hr; ticket satisfaction >4.0/5.0; backlog <15 open tickets
  Projects: ≥80% of H1 milestones on time; no unplanned IT projects displacing >20% of capacity
```

## Output Format

```markdown
# IT OKRs — <Company Name> — <Q# YYYY>
**Period:** [Start date] — [End date]
**Owner:** Dr. John Lewis | **Entity:** [Company]
**Mid-quarter review:** [Date] | **End-of-quarter review:** [Date]

---

## Objective 1: Maximize system reliability across Tier 1 and Tier 2 systems

| Key Result | Baseline | Target | Week 4 | Week 8 | Week 13 (final) | Score |
|-----------|---------|--------|--------|--------|----------------|-------|
| KR1: AdvancedMD uptime ≥99.9% (≤44 min unplanned downtime) | 99.6% last quarter | 99.9% | | | [X]% | [0.0-1.0] |
| KR2: M365 uptime ≥99.9% | Microsoft SLA | 99.9% | | | | |
| KR3: P1 incident MTTR ≤4 hours | [Baseline from last quarter] | ≤4 hours avg | | | | |
| KR4: Zero Tier 1 system outages caused by missing patches | — | 0 | | | | |

**Objective score:** [Average of KR scores]

---

## Objective 2: Improve security posture across the portfolio

| Key Result | Baseline | Target | Week 4 | Week 8 | Week 13 (final) | Score |
|-----------|---------|--------|--------|--------|----------------|-------|
| KR1: Microsoft Secure Score ≥65/100 | [X]/100 | 65/100 | | | | |
| KR2: MDM enrollment ≥95% of company devices | [X]% | 95% | | | | |
| KR3: Patch compliance ≥90% (CVSS ≥7.0 patches within SLA) | [X]% | 90% | | | | |
| KR4: Phishing simulation click rate ≤5% | [X]% | ≤5% | | | | |
| KR5: HIPAA BAA tracker 100% current [Allevio] | [X]% | 100% | | | | |

**Objective score:** [Average of KR scores]

---

## Objective 3: Deliver exceptional IT support experience

| Key Result | Baseline | Target | Week 4 | Week 8 | Week 13 (final) | Score |
|-----------|---------|--------|--------|--------|----------------|-------|
| KR1: User satisfaction score ≥4.0/5.0 | [Baseline] | ≥4.0/5.0 | | | | |
| KR2: P1 SLA adherence ≥95% (response ≤30 min) | [X]% | 95% | | | | |
| KR3: Help desk backlog ≤15 open tickets at quarter end | [Baseline] | ≤15 | | | | |
| KR4: Zero recurring P3/P4 tickets without root-cause fix (3+ in a month) | [Count] | 0 | | | | |

**Objective score:** [Average of KR scores]

---

## Objective 4: Execute IT roadmap on schedule

| Key Result | Baseline | Target | Week 4 | Week 8 | Week 13 (final) | Score |
|-----------|---------|--------|--------|--------|----------------|-------|
| KR1: ≥80% of H1 IT roadmap milestones delivered on schedule | — | ≥80% | | | | |
| KR2: IT roadmap updated and reviewed with CEO this quarter | — | Done | | | | |
| KR3: [Key initiative] delivered by [Date] | — | Done by [Date] | | | | |

**Objective score:** [Average of KR scores]

---

## Quarter Summary

| Objective | Score | Commentary |
|---------|-------|-----------|
| System reliability | [0.0-1.0] | [2 sentences] |
| Security posture | [0.0-1.0] | |
| User satisfaction | [0.0-1.0] | |
| IT project delivery | [0.0-1.0] | |
| **Overall IT OKR score** | **[avg]** | |

**What worked:** [Top 1-2 wins this quarter]
**What didn't:** [Top 1-2 misses — with root cause]
**Carry-forward to next quarter:** [Any incomplete OKRs that carry forward with updated targets]

---

## CEO Dashboard (quarterly brief)

**IT Health — [Company] — Q[N] [YYYY]**

| Metric | Status | Trend |
|--------|--------|-------|
| System reliability (uptime) | [X]% | ↑ / ↓ / → |
| Security score | [X]/100 | ↑ / ↓ / → |
| Help desk satisfaction | [X]/5.0 | ↑ / ↓ / → |
| IT project delivery | [X]% on schedule | ↑ / ↓ / → |
| HIPAA compliance (Allevio) | Current ✅ / Gap ⚠️ | |

**One risk to watch:** [Single most important IT risk this quarter]
**One IT win:** [Most significant IT delivery this quarter]

---

## Matt Mathison Brief (quarterly portfolio IT OKR summary)

IT Q[N] [YYYY] portfolio summary: MBL: [Score]. Allevio: [Score]. HIVE: [Score]. Key win: [What]. Key risk: [What]. HIPAA posture (Allevio): [Current / Gap]. Next quarter priorities: [Top 3 across portfolio].
```

## Output Contract
- OKR scores are honest — a score of 0.7+ means strong progress but not full achievement; a 1.0 requires full achievement of the stated key result; inflating IT OKR scores to look good destroys the measurement value; the OKR exists to show Dr. Lewis and the CEO what is working and what needs attention — not to generate good-looking reports; a 0.4 on security posture with an honest root cause ("patching compliance dropped because of two systems added in the quarter without standard tooling") is more valuable than a 0.7 with no explanation
- Metrics have defined data sources and collection frequency — an OKR that cannot be measured is not an OKR; before finalizing the quarter's OKRs, every key result must have: a defined data source, a defined collection cadence, and a clear definition of what "achieved" means; "improve security" with no measurement is a theme, not a key result
- CEO and Matt Mathison receive the IT OKR summary quarterly — IT performance is not just for Dr. Lewis to know; the CEO dashboard and Matt Mathison brief make IT performance visible to business leadership; this visibility creates accountability (IT delivers what it committed to) and trust (leadership understands what IT is doing and why); when IT makes a big investment or asks for budget, the OKR history demonstrates what IT delivers
- HITL required: Dr. Lewis owns IT OKRs and mid-quarter reviews; CEO receives quarterly IT dashboard; Matt Mathison receives quarterly portfolio IT brief; OKR misses with business impact (e.g., Allevio uptime miss during clinic hours) escalated to CEO same day

## System Dependencies
- **Reads from:** UptimeRobot / Azure Monitor (uptime data), M365 Security Center (Secure Score), Microsoft Intune compliance dashboard (MDM enrollment, patch compliance), phishing platform (click rate), help desk platform (SLA adherence, satisfaction scores), Monday.com (project milestone completion)
- **Writes to:** IT OKR report (SharePoint/Ops/<Company>/IT/Performance/OKRs/); quarterly CEO IT dashboard; Matt Mathison portfolio IT brief; OKR history (year-over-year trend)
- **HITL Required:** Dr. Lewis owns OKRs; CEO review quarterly; Matt Mathison quarterly portfolio brief; same-day escalation for business-impact IT misses

## Test Cases
1. **Golden path:** Q2 OKR review for Allevio → System reliability: AdvancedMD uptime 99.95% ✅ (KR1 score 1.0); M365 uptime 99.9% ✅ (1.0); P1 MTTR 3.5 hours ✅ (1.0); Zero patch-related outages ✅ (1.0); Objective score: 1.0; Security: Secure Score rose from 52 to 61 (target 65 — 0.7 score); MDM enrollment 94% (target 95% — missed by 1 clinic B device — 0.9 score); Patch compliance 91% ✅ (1.0); Phishing click rate 6% (target 5% — 0.7); BAA tracker 100% ✅ (1.0); Objective score: 0.86; Help desk: satisfaction 4.2/5 ✅ (1.0); P1 SLA 97% ✅ (1.0); backlog 8 tickets ✅ (1.0); Zero recurring issues ✅ (1.0); Objective score: 1.0; Project delivery: 75% milestones on time (target 80% — MDM rollout delayed by Clinic B access — 0.8); CEO dashboard sent ✅; Overall: 0.96 — strong quarter; CEO noted the security score improvement
2. **Edge case:** Mid-quarter check reveals security score has dropped from 58 to 52 due to a new Conditional Access policy misconfiguration → This is a mid-quarter course correction, not a score adjustment; root cause: new Conditional Access policy was deployed but excluded guest accounts, which lowered the score; fix: policy updated to include guest accounts (2-hour fix); score recovered to 60 by Week 10; OKR final score: 0.85 (achieved 61 of target 65 — partially due to the 6-week dip that couldn't be fully recovered); documented: root cause, fix timeline, prevention (now: Secure Score monitored weekly, not monthly)
3. **Adversarial:** "OKRs add bureaucracy — can we just do the IT work without tracking it?" → IT without OKRs is IT without accountability and without visibility; the specific failure mode: Dr. Lewis is working extremely hard on IT (patching, help desk, security reviews) but business leadership sees only the occasional outage and has no insight into the ongoing IT effort that prevents much worse outcomes; OKRs solve this by making IT performance measurable and visible; the quarterly CEO dashboard takes 30 minutes to produce and is the primary mechanism for IT to demonstrate value to leadership beyond "nothing broke this quarter"; without it, IT budget conversations are harder, IT priorities are set less effectively, and Dr. Lewis's effort is invisible

## Audit Log
IT OKR reports retained quarterly. Mid-quarter review notes retained. CEO dashboard copies retained. Matt Mathison portfolio briefs retained. OKR historical trends retained year-over-year. HIPAA compliance metric history retained (Allevio — 6-year retention). OKR miss escalations retained.

## Deprecation
Retire when portfolio companies have dedicated IT performance management processes with established quarterly OKR reviews, CEO dashboards produced by IT management, and Matt Mathison portfolio briefs produced from a consolidated IT reporting system — with Dr. Lewis providing portfolio-level AI/automation OKR input.
