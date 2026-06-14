---
name: supply-chain-ops-review
description: "Run a supply chain and procurement operations review meeting. Use when the user says 'supply chain ops review', 'procurement operations review', 'supply chain status meeting', 'ops review for supply chain', 'weekly supply chain standup', 'monthly supply chain review', 'supply chain meeting', or 'supply chain team review'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--cadence <weekly|monthly|quarterly>] [--entity <MBL|Allevio|HIVE|all>]"
---

# Supply Chain Ops Review

Run a structured supply chain and procurement operations review that covers current performance, open issues, active procurement events, and upcoming needs. Without a regular ops review, supply chain issues stay invisible until they become crises. For MBL, the ops review is the mechanism by which Dr. Lewis maintains visibility across the portfolio's supply chain and escalates issues before they affect operations or patient care.

## When to Use
- Weekly: Quick status check — any active disruptions, near-stockouts, urgent POs?
- Monthly: KPI review, supplier performance, open POs, upcoming renewals
- Quarterly: OKR review, supplier performance scoring, procurement savings reporting to Matt Mathison
- Ad hoc: Supply chain disruption or major procurement event underway

## Cadence Design

```
Weekly Supply Chain Standup (15 minutes, Dr. Lewis):
  Scope: Any active issues; urgent orders; near-stockout items
  Format: Verbal check; no slides needed
  Output: Action list for the week

Monthly Supply Chain Review (45 minutes, Dr. Lewis):
  Scope: KPI dashboard review; supplier performance; open POs; upcoming events
  Format: KPI dashboard walkthrough + issue discussion
  Output: Updated action tracker; escalations to Matt Mathison

Quarterly Supply Chain Review (60 minutes, Dr. Lewis + Matt Mathison):
  Scope: OKR grades; savings achieved; strategic supplier updates; Q+1 plan
  Format: Structured presentation + discussion
  Output: OKR grades approved; Q+1 priorities agreed
```

## Output Format

```markdown
# Supply Chain Ops Review — <Cadence> — <Date>
**Meeting type:** Weekly / Monthly / Quarterly
**Date:** <date> | **Facilitator:** Dr. John Lewis
**Attendees:** <List> | **Duration:** 15 / 45 / 60 min

---

## 1. Status Overview (Monthly / Quarterly)

| Category | Status | Trend | Alert |
|---------|--------|-------|-------|
| Supplier performance (avg OTDR) | 🟡 91% | ↑ Improving | 1 supplier on PIP |
| Inventory health (stockout rate) | 🔴 4.2% | ↓ Worsening | 3 Allevio items below safety stock |
| Procurement savings YTD | ✅ $48K | ↑ Ahead of target | |
| Contract coverage | 🟡 68% | ↑ Improving | 2 contracts up for renewal next month |
| Open PO overdue | 🟡 8% | → Stable | |

**TL;DR:** Stockout situation at Allevio is the critical item; emergency POs placed; under control by EOW. All other indicators trending positive.

---

## 2. Active Issues (Weekly + Monthly)

| Issue | Entity | Severity | Status | ETA | Owner |
|-------|--------|---------|--------|-----|-------|
| 3 clinical supply items below safety stock | Allevio | 🔴 P1 | Emergency PO placed | 3 days | Dr. Lewis |
| [Supplier] OTDR at 78% — PIP activated | MBL | 🟡 P2 | PIP plan sent; 60-day improvement plan | 60 days | Dr. Lewis |
| Contract renewal for AdvancedMD in 30 days | Allevio | 🟡 | Negotiation prep in progress | 25 days | Dr. Lewis |

**Escalation to Matt Mathison (P0/P1 only):** Allevio stockout — P1 — emergency response initiated; no patient care impact yet; resolution expected EOW

---

## 3. Upcoming Procurement Events

| Event | Category | Value | Entity | Timeline | Status |
|-------|---------|-------|--------|---------|--------|
| AdvancedMD contract renewal | Clinical software | $X/year | Allevio | 30 days | Prep in progress |
| RFQ — field equipment services | Oil and gas services | $X | HIVE | 45 days | Pending initiation |
| Annual vendor review — Cardinal Health | Medical supplies | $X | Allevio | 60 days | Scheduled |

---

## 4. Open PO Status

| PO # | Supplier | Entity | Value | Expected delivery | Status |
|------|---------|--------|-------|-----------------|--------|
| [PO] | [Supplier] | HIVE | $X | <date> | ✅ On track |
| [PO] | [Supplier] | Allevio | $X | Overdue 3 days | 🔴 Contact carrier |
| [PO] | [Supplier] | MBL | $X | <date> | ✅ On track |

**Open PO total value:** $X | **Overdue: <N>**

---

## 5. Supplier Alerts

| Supplier | Issue | Tier | Action |
|---------|-------|------|--------|
| [Supplier] | OTDR below 80% — PIP threshold | B | PIP issued; 60-day review |
| [Supplier] | Certificate of Insurance expired 7 days ago | B | Supplier notified; new COI due Friday |
| [Supplier] | Contract renewal due in 45 days | A | Renewal meeting scheduled |

---

## 6. KPI Scorecard (Monthly / Quarterly)

(Link to supply-chain-kpi-dashboard output for this period)

Key movements since last review:
- OTDR: +2pp (positive)
- Stockout rate: +2.1pp (negative — Allevio issue driving this)
- Savings YTD: +$7K (positive)

---

## 7. Action Items

| Action | Owner | Due date | Status |
|--------|-------|---------|--------|
| Resolve Allevio stockout — confirm emergency PO received | Dr. Lewis | <date + 3 days> | In progress |
| AdvancedMD renewal: complete negotiation prep | Dr. Lewis | <date + 14 days> | In progress |
| Overdue PO [PO#]: contact carrier + Allevio ops | Dr. Lewis | Today | Open |
| [Supplier] PIP: send formal PIP document | Dr. Lewis | <date + 2 days> | Open |
| COI renewal: follow up with [Supplier] | Dr. Lewis | Friday | Open |

**Action items from prior review — closed:** <N>/<N> (X%)
**Oldest open action item:** <N> days (target: no action >14 days old)
```

## Output Contract
- TL;DR always first — Matt Mathison (when present) or future-Dr. Lewis should know the health status in one paragraph
- P1/critical items always include escalation note and ETA — a critical issue without a resolution timeline is not a managed issue
- Upcoming procurement events always include timeline — contract renewals missed are expensive (auto-renew at non-preferred terms)
- Action items always tracked with owner and due date — ops reviews without action tracking produce conversation, not results
- HITL required: Dr. Lewis facilitates; Matt Mathison in monthly/quarterly reviews; P0/P1 escalations to Matt Mathison outside the meeting cycle if time-sensitive; supplier termination decisions reviewed with Matt Mathison; financial escalations >$25K to Matt Mathison

## System Dependencies
- **Reads from:** Supply chain KPI dashboard, open PO tracker, supplier performance scorecard, active disruption log, contract renewal calendar
- **Writes to:** Meeting notes and action tracker (SharePoint/Operations/Supply Chain); Matt Mathison escalation memo
- **HITL Required:** Dr. Lewis runs review; Matt Mathison in monthly/quarterly; P0/P1 escalation outside cadence; supplier termination requires Matt Mathison; >$25K procurement decisions require Matt Mathison

## Test Cases
1. **Golden path:** Monthly supply chain review → KPI dashboard reviewed; stockout at Allevio: P1 — emergency POs in place; AdvancedMD renewal: 30 days out — negotiation prep started; OTDR: 91% — improving; 1 supplier on PIP; action items: 5 open — all assigned with dates; Matt Mathison summary sent: 1 P1 in progress, no business impact, ETA EOW
2. **Edge case:** A critical supplier issue surfaces the day before the weekly standup — do you wait for the standup? → No. P0/P1 issues are escalated immediately, not held for the next scheduled meeting; the weekly standup is for operational rhythm, not crisis management; report critical issues to Matt Mathison within 1 hour of detection (per supply-chain-disruption-responder)
3. **Adversarial:** The ops review becomes a status-reporting meeting with no real discussion or decisions → a good ops review drives decisions and surfaces issues; if it's all green and no issues ever get raised, the review is too comfortable or the data is incomplete; challenge the team to bring problems, not just good news; "what's the most concerning thing you haven't told me yet?" is the most valuable question in any ops review

## Audit Log
Meeting notes retained. Action item tracker maintained. Escalations to Matt Mathison documented. KPI data retained by period.

## Deprecation
Retire when MBL has a supply chain function with its own dedicated ops manager who runs the reviews independently, with Dr. Lewis as a strategic advisor rather than an operational participant.
