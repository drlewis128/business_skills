---
name: bd-kpi-dashboard
description: "Build or update a BD KPI dashboard. Use when the user says 'BD KPIs', 'business development KPIs', 'BD metrics dashboard', 'partnership metrics', 'BD performance dashboard', 'partner program KPIs', 'BD reporting', 'business development metrics', 'BD dashboard for Matt Mathison', or 'partnership performance metrics'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <monthly|quarterly>]"
---

# BD KPI Dashboard

Build and report on the Business Development KPI dashboard — the core metrics that tell Matt Mathison and company leadership whether the BD function is healthy, generating value, and on track against targets. BD KPIs are different from OKRs: OKRs are quarterly goal-setting; KPIs are ongoing health metrics that are always on. A well-designed BD dashboard makes the state of the partner program visible and actionable in under 3 minutes.

## When to Use
- Monthly BD performance reporting to Matt Mathison
- Quarterly BD review preparation
- Matt Mathison asks "how is the partner program performing?"
- Identifying whether specific BD activities are moving the right numbers
- Preparing a BD section for a company board update or LP report

## BD KPI Categories

```
Four BD KPI categories:

1. Pipeline health: Is there enough BD activity to sustain partner growth?
2. Partner program performance: Are active partners generating value?
3. Revenue contribution: Is the partner channel generating real revenue?
4. Partner relationship health: Are partner relationships strong and stable?

Rule: Lead metrics (pipeline, activity) predict future performance.
      Lag metrics (revenue, deals closed) confirm past performance.
      A good dashboard has both.
```

## Output Format

```markdown
# BD KPI Dashboard — <Company Name>
**Period:** [Month of [Month] [Year] / Q[N] [Year]] | **Date:** <date>
**Prepared by:** Dr. John Lewis | **For:** Matt Mathison

---

## TL;DR

| Metric | This period | vs. last period | vs. target | Status |
|--------|------------|----------------|-----------|--------|
| Active partners | [N] | [+N / -N] | [N target] | ✅ / ⚠️ / ❌ |
| Partner-attributed revenue | $[X] | [+X% / -X%] | $[X target] | ✅ / ⚠️ / ❌ |
| New partners signed | [N] | [+N / -N] | [N target] | ✅ / ⚠️ / ❌ |
| Partner program ROI | [X]× | [vs. last] | ≥3× | ✅ / ⚠️ / ❌ |
| Partners at 🔴 risk | [N] | [+N / -N] | 0 | ✅ / ⚠️ / ❌ |
| **Overall BD health** | | | | 🟢 / 🟡 / 🔴 |

---

## 1. Pipeline Health

| Metric | This period | Last period | Target | Status |
|--------|------------|------------|--------|--------|
| New prospects identified | [N] | [N] | [N]/month | ✅ / ⚠️ |
| Discovery calls completed | [N] | [N] | [N]/month | ✅ / ⚠️ |
| Prospects at Stage 3+ (qualified) | [N] | [N] | ≥[N] active | ✅ / ⚠️ |
| Average days from contact to signed | [N] days | [N] days | <[N] days | ✅ / ⚠️ |
| BD pipeline total value (open) | $[X] | $[X] | $[X] | ✅ / ⚠️ |

**Pipeline commentary:** [1-2 sentences — what the numbers mean; any blockers or opportunities]

---

## 2. Partner Program Performance

| Metric | This period | Last period | Target | Status |
|--------|------------|------------|--------|--------|
| Active partners (🟢 health) | [N] | [N] | ≥[N] | ✅ / ⚠️ |
| Partners at 🟡 watch | [N] | [N] | 0 | ⚠️ / ❌ |
| Partners at 🔴 inactive | [N] | [N] | 0 | ❌ |
| New partners signed | [N] | [N] | [N]/quarter | ✅ / ⚠️ |
| Partners exited / churned | [N] | [N] | ≤[N] | ✅ / ⚠️ |
| Partner net promoter score (NPS) | [X] | [X] | >[X] | ✅ / ⚠️ |
| QBRs completed (Gold partners) | [N/N] | | All Gold partners | ✅ / ⚠️ |

**Partner health commentary:** [1-2 sentences]

---

## 3. Revenue Contribution

| Metric | This period | Last period | Target | Status |
|--------|------------|------------|--------|--------|
| Partner-attributed revenue (closed) | $[X] | $[X] | $[X] | ✅ / ⚠️ / ❌ |
| Partner revenue as % of total | [X%] | [X%] | ≥[X%] | ✅ / ⚠️ / ❌ |
| Partner-generated pipeline | $[X] | $[X] | $[X] | ✅ / ⚠️ / ❌ |
| Top-performing partner revenue | $[X] from [Partner name] | | | |
| Referral fees paid | $[X] | $[X] | — | — |
| Partner program ROI | [X]× | [X]× | ≥3× | ✅ / ⚠️ / ❌ |
| Partner CAC vs. direct CAC | $[X] vs. $[X] | | | |

**Revenue commentary:** [1-2 sentences — specific driver of revenue performance]

---

## 4. Partner Relationship Health

| Metric | This period | Last period | Target | Status |
|--------|------------|------------|--------|--------|
| Partners with >60 day inactivity | [N] | [N] | 0 | ✅ / ⚠️ |
| Average partner health score | [X/100] | [X/100] | ≥70 | ✅ / ⚠️ |
| Escalations received | [N] | [N] | ≤[N] | ✅ / ⚠️ |
| Escalations resolved same period | [N/N] | | 100% | ✅ / ⚠️ |
| Partner agreements renewed | [N/N due] | | 100% of renewals | ✅ / ⚠️ |
| New contacts established at existing partners | [N] | | — | |

**Relationship health commentary:** [1-2 sentences]

---

## Key Actions This Period

| Action | Status | Impact |
|--------|--------|--------|
| [Specific BD action from this period] | ✅ Completed / 🔄 In progress | [What it moved] |
| [Action 2] | | |

---

## Flags for Matt Mathison

⚠️ [Specific item requiring Matt Mathison's attention — e.g., "Partner X is 🔴 inactive — recommend exit decision"]
🔴 [Critical item — e.g., "Partner program revenue is 28% below target — root cause: Partner A had a slow quarter; recovery plan in progress"]
✅ [Positive highlight — e.g., "Partner program ROI hit 4.2× this period — highest since launch"]

---

## Next Period Focus

| Priority | Action | Owner | Expected impact |
|---------|--------|-------|----------------|
| 1 | [E.g., "Sign 2 new partners from Stage 5 prospects"] | Dr. Lewis | +[N] active partners |
| 2 | [E.g., "Execute at-risk recovery plan for Partner X"] | Dr. Lewis | 🟡→🟢 health |
| 3 | [E.g., "Launch ecosystem map for [new market]"] | Dr. Lewis | [N] new prospects |
```

## Output Contract
- TL;DR always leads with overall BD health status — Matt Mathison must be able to understand the state of the BD function in 30 seconds; the TL;DR table provides this; the overall health indicator (🟢/🟡/🔴) is the most important single output of the dashboard
- Both lead and lag metrics always present — a dashboard with only revenue (lag) gives no early warning of future decline; a dashboard with only activity (lead) gives no evidence of results; both categories are required every period
- Flags for Matt Mathison always separated and specific — "things Matt Mathison needs to know" must be separated from the performance data so they aren't buried in a table; never more than 3 flags; each flag must be specific (a name, a number, a decision needed)
- Negative news always disclosed — a BD dashboard that only reports green metrics is either performing perfectly or selectively reporting; any metric in 🔴 must be disclosed with a root cause and a response plan; Matt Mathison needs the honest picture to make good decisions
- HITL required: Dr. Lewis builds and reports; Matt Mathison reviews monthly; any 🔴 flag requires Matt Mathison decision or acknowledgment within 1 week; partner exits, economics changes, and major BD investments require Matt Mathison approval

## System Dependencies
- **Reads from:** CRM (pipeline, revenue, partner attribution), partner health scores, escalation log, fee payment records, BD pipeline tracker
- **Writes to:** BD KPI dashboard (SharePoint/BD/KPI Reports); Matt Mathison monthly brief
- **HITL Required:** Dr. Lewis builds; Matt Mathison reviews monthly; 🔴 flags require Matt Mathison response within 1 week

## Test Cases
1. **Golden path:** Allevio monthly BD KPI dashboard — July 2026 → TL;DR: 6 active partners, $34K revenue (on target), 1 partner signed, 0 inactive, ROI 3.8×, overall 🟢; Pipeline: 8 new prospects identified, 4 discovery calls, 2 at Stage 5, average 38-day close; Revenue: $34K (target $30K, beat by 13%); top performer: Partner A ($18K); Partner health: 5 🟢, 1 🟡 (Partner D — gone quiet 45 days); Flags: (1) Partner D is 🟡 — recovery outreach scheduled for 8/3 (Dr. Lewis); (2) Positive: Partner program revenue beat target for 3rd consecutive month — partner channel now at 9.2% of total revenue (target 10%); Matt Mathison acknowledged flags, no action needed
2. **Edge case:** The revenue metric is low but pipeline is exceptionally high → interpret and explain this: "Revenue is below target at $[X] but the pipeline has grown to $[X] — the highest in program history. The lag between pipeline and revenue suggests we're 45-60 days from a strong close period. Root cause of current revenue shortfall: 2 partner deals in Stage 5 pushed from June to July due to client-side delays." This context prevents Matt Mathison from drawing the wrong conclusion from a single lagging metric
3. **Adversarial:** Matt Mathison pushes back on the dashboard, saying it's "too much detail" and he wants a simpler view → simplify the format for him: deliver only the TL;DR table + Flags for Matt Mathison + Next Period Focus; keep the full dashboard in SharePoint for reference; ask what level of detail is most useful; the goal of the dashboard is to be useful to its reader, not comprehensive for its author

## Audit Log
Monthly/quarterly KPI dashboards retained in SharePoint. Flags and Matt Mathison responses logged. Dashboard format improvements documented. Year-over-year BD performance traceable through dashboard archive.

## Deprecation
Retire when portfolio companies have live BI dashboards (Monday.com, Tableau, Salesforce, or similar) that auto-populate BD KPIs from CRM data on a real-time basis without manual compilation.
