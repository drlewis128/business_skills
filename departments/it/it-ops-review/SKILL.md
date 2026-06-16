---
name: it-ops-review
description: "Run IT quarterly and annual operations review — uptime, security incidents, project delivery. Use when the user says 'IT ops review', 'IT quarterly review', 'IT annual review', 'IT performance review', 'IT retrospective', 'IT review meeting', 'IT team review', 'IT year in review', 'IT operations review', 'quarterly IT report', 'annual IT report', 'IT review for CEO', or 'IT portfolio review'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <Q# YYYY|annual YYYY>] [--audience <CEO|Matt|internal>]"
---

# IT Operations Review

Run structured quarterly and annual IT operations reviews at MBL portfolio companies — synthesizing IT performance data across system reliability, security posture, project delivery, and team effectiveness into a clear narrative for CEO and Matt Mathison. The IT ops review is the accountability mechanism that closes the loop on OKRs (it-okr-tracker), validates that the IT roadmap (it-roadmap-builder) is on track, and surfaces the IT risks and wins that business leadership needs to know. It also serves as the basis for Dr. Lewis's own IT performance self-assessment and the input to the next quarter's planning.

## When to Use
- Quarterly IT performance review — what happened this quarter?
- Annual IT review — what did IT deliver this year? What are the priorities for next year?
- CEO meeting preparation — structured IT summary for executive conversation
- Matt Mathison portfolio IT brief — quarterly portfolio-level IT summary
- Post-incident review at IT leadership level — did the IT team respond well? What changes?
- Annual IT budget and roadmap update — fueled by the annual review

## IT Ops Review Framework

```
Review structure:
  1. Performance vs. OKRs (what did we commit to? what did we deliver?)
     → OKR scores from it-okr-tracker; hits, misses, root causes for misses
     → Trend: better or worse than last quarter on each dimension?
     
  2. Incident and outage log (what broke? how did we respond?)
     → P1/P2 incidents: count, cause, MTTR, recurrence prevention
     → Security incidents: type, impact, containment, lessons learned
     → HIPAA-relevant incidents: breach assessment outcomes (Allevio)
     
  3. Project delivery (what did IT ship?)
     → Roadmap H1 milestones: planned vs. delivered
     → New capabilities enabled for the business
     → Projects delayed: why, and what's the new timeline?
     
  4. IT team health (how is the team performing?)
     → Help desk volume and SLA trends
     → Skills development progress
     → Capacity: over-loaded, balanced, under-utilized?
     
  5. Cost and vendor health (is IT spend on track?)
     → Budget actuals vs. plan
     → Vendor performance issues
     → Renewals coming up and recommendations
     
  6. Risks and priorities for next quarter (what should leadership know?)
     → Top 3 IT risks and mitigation status
     → Top 3 priorities for next quarter
     → Decisions needed from CEO or Matt Mathison
     
Annual review additions:
  → Year-over-year IT performance trends (3-year view if available)
  → IT portfolio benchmarking (cost per user, security score trend)
  → Portfolio company IT maturity scores
  → Next year's IT roadmap and budget draft
  → Major technology decisions pending (platform changes, major investments)
```

## Output Format

```markdown
# IT Operations Review — <Company Name> — <Q# YYYY / Annual YYYY>
**Period:** [Start date] — [End date]
**Prepared by:** Dr. John Lewis | **Date:** [Date]
**Audience:** [CEO / Matt Mathison / Internal]

---

## Executive Summary (BLUF)

**IT health this quarter:** 🟢 Strong / 🟡 Adequate / 🔴 Needs attention

**Top 3 wins:**
1. [What IT delivered that had direct business impact]
2.
3.

**Top 3 risks or concerns:**
1. [What IT leadership and CEO should know about]
2.
3.

**Decisions needed:** [What do CEO/Matt need to decide? If none: "None this period"]

---

## Section 1: OKR Performance

| Objective | Q[N] Score | vs. Q[N-1] | Commentary |
|---------|-----------|-----------|-----------|
| System reliability | [0.0-1.0] | ↑↓→ | |
| Security posture | [0.0-1.0] | | |
| User satisfaction | [0.0-1.0] | | |
| Project delivery | [0.0-1.0] | | |
| **Overall** | **[avg]** | | |

**OKR misses with root cause:**
- [Key result missed]: Root cause: [X]. Fix implemented: [Y]. Prevention: [Z].

---

## Section 2: Incidents and Outages

**Incident summary this period:**

| Incident | Date | Type | Duration/Impact | MTTR | Root cause | Recurrence prevention |
|---------|------|------|---------------|------|-----------|----------------------|
| [Incident name] | [Date] | P1 System outage | [Duration; users affected] | [Time] | [Root cause] | [What changed] |
| [Security incident] | | Security | | | | |

**P1 incident count:** [N] | **vs. last period:** [+/- N]
**Security incidents requiring escalation:** [N] | **HIPAA breach assessments conducted:** [N] (Allevio)
**HIPAA breach assessments outcome:** [No breach / Breach — notification required] (Allevio)

**Incident trend:** [Improving / Stable / Worsening] — [One-line explanation]

---

## Section 3: Project Delivery

**IT roadmap status:**

| Initiative | H1/H2 | Planned | Status | Commentary |
|-----------|-------|---------|--------|-----------|
| [Project name] | H1 | [Date] | ✅ Delivered / 🟡 On track / 🔴 Delayed | [Reason if delayed; new ETA] |
| | | | | |

**Milestone completion rate:** [N]% (target: ≥80%)
**Projects delivered this quarter:** [List with business impact]
**Projects delayed:** [List with reason and new ETA]
**Unplanned work that displaced roadmap capacity:** [Description + % of capacity consumed]

---

## Section 4: IT Team Health

**Help desk:**

| Metric | This period | Last period | Target | Status |
|--------|-----------|-----------|--------|--------|
| Total tickets | [N] | [N] | — | |
| P1 SLA adherence | [X]% | | ≥95% | 🟢/🟡/🔴 |
| P2 SLA adherence | [X]% | | ≥90% | |
| User satisfaction score | [X]/5.0 | | ≥4.0/5.0 | |
| Open ticket backlog | [N] | | ≤15 | |
| Recurring tickets without root-cause fix | [N] | | 0 | |

**Top 3 help desk issues by volume this period:**
1. [Issue type] — [Count] tickets — [Root cause if recurring]
2.
3.

**Skills development progress:** [Update on training plans from it-team-skills-assessor]
**Capacity assessment:** Over-loaded / Balanced / Under-utilized — [Detail]

---

## Section 5: Cost and Vendor Health

**IT spend this period:**

| Category | Budgeted | Actual | Variance |
|---------|---------|--------|---------|
| Software / SaaS | $[X] | $[X] | [+/-] |
| Security | $[X] | | |
| Cloud / infra | $[X] | | |
| Professional services | $[X] | | |
| **Total IT spend** | **$[X]** | **$[X]** | **[+/-X%]** |

**Renewals next 90 days:** [Tools with renewal dates and recommendation: renew / renegotiate / replace]
**Vendor issues:** [Any vendor performance or relationship issues]
**Cost optimization identified:** [Savings opportunities found this period]

---

## Section 6: Risks and Priorities

**Top IT risks (probability × impact):**

| Risk | Probability | Impact | Current mitigation | Status |
|------|-----------|--------|------------------|--------|
| [e.g., On-prem server EOL in 6 months] | Medium | High | Migration planning in H2 roadmap | 🟡 Monitored |
| | | | | |

**HIPAA compliance risk summary (Allevio):**
- Risk analysis current: Yes ✅ / No — [Action required by Date]
- BAA tracker complete: Yes ✅ / No — [Gap: X vendors missing BAAs]
- Security training: [X]% of workforce current ✅ / [N] staff overdue ⚠️

**Top 3 priorities for next quarter:**
1. [Priority with rationale]
2.
3.

**Decisions needed from CEO / Matt Mathison:**
- [Decision required]: [Context] → [Options] → [Dr. Lewis recommendation]

---

## Annual Review Additions (if annual review)

### Year in Review

| IT Domain | 2025 | 2026 | Trend |
|---------|------|------|-------|
| Average system uptime | [X]% | [X]% | ↑/↓ |
| Microsoft Secure Score | [X] | [X] | ↑/↓ |
| Help desk satisfaction | [X]/5 | [X]/5 | ↑/↓ |
| IT roadmap delivery rate | [X]% | [X]% | ↑/↓ |
| IT cost per user | $[X] | $[X] | ↑/↓ |

**Biggest IT wins this year:**
1.
2.
3.

**Biggest IT miss this year (and what changed):**

**IT maturity assessment:** [Scale 1-5 vs. prior year]

### Next Year IT Roadmap and Budget Draft
[Link to it-roadmap-builder output] | Budget draft: $[X] (see it-budget-planner)

---

## Matt Mathison Portfolio Brief (quarterly)

**IT Portfolio Q[N] [YYYY]**

| Company | Uptime | Secure Score | Help Desk | OKR Score | Key Risk |
|---------|--------|------------|----------|----------|---------|
| MBL Partners | [X]% | [X]/100 | [X]/5 | [0-1] | |
| Allevio | [X]% | [X]/100 | [X]/5 | [0-1] | |
| HIVE Partners | [X]% | [X]/100 | [X]/5 | [0-1] | |

**Portfolio IT wins:** [1-2 sentences]
**Portfolio IT risks:** [1-2 sentences]
**Investment requests requiring Matt's approval:** [List with amounts; none if applicable]
**HIPAA posture (Allevio):** Current ✅ / Gap ⚠️ — [Detail]
```

## Output Contract
- BLUF every time — the executive summary leads with the bottom line: IT health is strong / adequate / needs attention; top 3 wins; top 3 concerns; decisions needed; CEOs and Matt Mathison read the executive summary first and may only read the detail if a specific item requires it; the executive summary is written last (after the detail is complete) and edited to be self-contained — it does not reference sections below it; it is the answer, not a table of contents
- Incidents are reported without spin — every P1 incident is reported: what happened, how long it lasted, how many users were affected, what the root cause was, and what changed so it won't recur; "we had a minor issue that was quickly resolved" is not an incident report; the CEO needs to know if AdvancedMD was down for 3 hours during a clinic day, not because they will fix it but because they need to understand IT risk and Dr. Lewis's response effectiveness; incident reports that minimize problems destroy the trust that gives Dr. Lewis operational latitude
- Recurring help desk issues are root-cause items, not statistics — if the help desk report shows "VPN connectivity: 12 tickets this quarter" for the third consecutive quarter, the root-cause problem has not been fixed; the IT ops review flags recurring patterns and the quarterly review is the accountability moment: "this pattern has recurred 3 quarters in a row — here is what we are doing to permanently fix it"; surfacing a recurring problem without a fix plan is insufficient
- HITL required: Dr. Lewis prepares all IT ops reviews; CEO review quarterly (or earlier if P1 incident); Matt Mathison receives quarterly portfolio brief; annual review presented in person to CEO and Matt Mathison; IT budget and roadmap decisions >$5K require CEO; >$25K require Matt Mathison

## System Dependencies
- **Reads from:** OKR tracker results (it-okr-tracker), IT roadmap status (it-roadmap-builder), incident log, help desk platform (Freshdesk/Zoho — ticket data, SLA reports, satisfaction scores), Monday.com (project milestone tracking), IT budget actuals (from QuickBooks/controller), security posture data (M365 Security Center, Intune)
- **Writes to:** IT ops review (SharePoint/Ops/<Company>/IT/Performance/QReviews/); CEO IT dashboard; Matt Mathison portfolio brief; annual IT report; next-quarter OKR input
- **HITL Required:** Dr. Lewis prepares review; CEO quarterly review; Matt Mathison portfolio brief quarterly; annual review presented in person; >$5K IT budget decisions by CEO; >$25K by Matt Mathison

## Test Cases
1. **Golden path:** Q3 annual IT ops review for Allevio → Executive summary: IT health 🟢 Strong; Wins: (1) MDM 100% enrollment complete — all devices managed; (2) phishing click rate dropped from 12% to 4% (KnowBe4 deployment); (3) AdvancedMD denial rate dashboard live — billing team using daily; Risks: (1) On-prem server (2019 hardware) showing early failure indicators — H2 roadmap migration needs acceleration; OKR score: 0.91; Incidents: 1 P1 (AdvancedMD unavailable 2.5 hours — vendor outage; paper downtime procedure activated; MTTR: 2.5 hrs; no breach); Help desk: satisfaction 4.3/5 ✅; backlog 7 tickets ✅; SLA 97% ✅; Projects: 3 of 4 H1 milestones delivered; Clinic C network delayed (equipment supply chain — now Q4); Cost: $142K actual vs. $148K budget (4% favorable); CEO review: 45 min; decisions: approve server replacement CapEx ($18K) → CEO approved; Matt brief sent
2. **Edge case:** Mid-year, after a significant HIPAA incident (employee accesses PHI without authorization), the IT ops review needs to address the incident with full transparency → Incident reported with complete detail: who accessed what, when discovered, what PHI was involved, the 60-day breach notification assessment outcome, what changed in system access controls, and what additional training is being deployed; this is not a legal strategy document — it is an operational accountability document; the CEO needs to know what happened and what changed; if breach notification is required, the IT ops review is not where that is managed (that is a legal/privacy officer function), but the IT technical response and prevention measures are IT's responsibility and are fully reported; never minimize a HIPAA incident in an IT ops review
3. **Adversarial:** "Can we just do an informal verbal update instead of this structured review?" → An informal verbal update is better than no update, but it does not produce: a documented record of IT performance over time; an artifact that Matt Mathison can review without being in the meeting; a baseline for the next quarter's OKRs; a risk register that carries forward; a written accountability record if something later needs to be investigated; the structured review takes 2-3 hours to prepare per quarter — the CEO meeting takes 45 minutes; the document lives in SharePoint and becomes the institutional memory of IT performance at the company; the investment is justified by what it produces

## Audit Log
IT ops reviews retained quarterly. Annual reviews retained permanently. CEO meeting notes retained. Matt Mathison portfolio briefs retained. Incident log entries retained (HIPAA incident records: 6-year retention at Allevio). Budget actuals and variances retained. OKR histories retained year-over-year.

## Deprecation
Retire when portfolio companies have dedicated IT directors or CTOs who prepare quarterly and annual IT ops reviews — with Dr. Lewis reviewing the portfolio-level Matt Mathison brief and providing AI/automation performance data for inclusion. The CEO quarterly IT review and Matt Mathison portfolio brief structure remain as permanent governance mechanisms regardless of who prepares them.
