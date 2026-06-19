---
name: ops-portfolio-cadence
description: "Design and manage the MBL Partners portfolio review meeting cadence. Use when the user says 'portfolio cadence', 'meeting cadence', 'portfolio review cadence', 'review cadence', 'portfolio rhythm', 'operating cadence', 'operating rhythm', 'portfolio meetings', 'portfolio review meetings', 'monthly portfolio review', 'weekly portfolio review', 'quarterly portfolio review', 'portfolio check-in', 'entity review', 'entity check-in', 'review Allevio', 'review HIVE', 'review Column6', 'portfolio operating system', 'management cadence', 'cadence design', 'set the cadence', 'portfolio governance', 'governance rhythm', 'review schedule', 'standing meetings', 'portfolio agenda', 'portfolio agenda template', 'portfolio review agenda', or 'how do we structure our reviews'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--frequency <weekly|monthly|quarterly|annual>] [--action <design|run|debrief|update>] [--focus <agenda|participants|metrics|decisions>]"
---

# Ops Portfolio Cadence

Design and manage the MBL Partners portfolio review meeting cadence — the operating rhythm that keeps Matt Mathison informed, entity CEOs accountable, and Dr. Lewis connected to operational reality across the portfolio. A well-designed cadence prevents two failure modes: the over-meeting trap (too many meetings, too little signal, too little work time) and the under-meeting trap (no regular accountability, surprises emerge without warning, decisions pile up). The MBL cadence is designed for signal density: every meeting has a specific purpose, a defined agenda, clear pre-work, and ends with explicit decisions and next actions.

## When to Use
- Designing or redesigning the portfolio review rhythm
- Onboarding a new portfolio entity to the MBL review structure
- A review is not producing useful signal and needs a redesign
- Matt Mathison asks how portfolio oversight is structured

## Portfolio Cadence Framework

```
MBL PORTFOLIO OPERATING CADENCE:

  WEEKLY (Mondays — 30 min):
    Name: Weekly Pulse
    Participants: Matt Mathison + Dr. Lewis (+ entity CEO if flagged issue)
    Format: Standing meeting; no slides; verbal briefing
    Agenda:
      1. Cash position (portfolio-level + any entity below reserve threshold) [5 min]
      2. Red flags from prior week (any entity KPI went Red; any HITL event) [10 min]
      3. Upcoming decisions this week (capital approvals; hires; vendor decisions) [10 min]
      4. Quick wins to acknowledge [5 min]
    Pre-work: Dr. Lewis prepares 3-bullet pulse note before meeting
    Output: Matt's priorities for the week; any escalations resolved
    
  MONTHLY (by the 25th — 60 min):
    Name: Portfolio Financial Review
    Participants: Matt Mathison + Dr. Lewis
    Format: Financial summary package (fin-entity-consolidation)
    Agenda:
      1. Consolidated P&L vs. budget [10 min]
      2. Entity-by-entity highlights (2-3 min per entity) [10 min]
      3. Cash flow and reserve status [5 min]
      4. KPI status (Red/Yellow/Green by entity) [10 min]
      5. Capital deployment update [5 min]
      6. Decisions required this month [10 min]
      7. 30-day forward look [10 min]
    Pre-work: Dr. Lewis delivers financial package by the 20th
    Output: Decisions made; actions assigned; Matt aligned on portfolio status
    
  QUARTERLY (within 45 days of quarter-end — 120 min):
    Name: Quarterly Portfolio Business Review
    Participants: Matt Mathison + Dr. Lewis + all entity CEOs
    Format: Structured review; each entity presents 20 min; portfolio wrap-up 30 min
    Per-entity agenda (20 min each):
      1. OKR scorecard: Q results (5 min)
      2. KPI trend: Green/Yellow/Red with root causes (5 min)
      3. Top 3 wins this quarter (3 min)
      4. Top 3 blockers for next quarter + ask of Matt (5 min)
      5. Key decision required (2 min)
    Portfolio wrap-up (30 min):
      Consolidated view; capital allocation for next quarter; strategic priorities
    Pre-work: entity CEOs deliver QBR decks 5 days before; Dr. Lewis reviews for financial accuracy
    Output: Q+1 priorities locked; capital allocated; Matt fully briefed on portfolio
    
  ANNUAL (January — 3 hours):
    Name: Annual Portfolio Strategy Session
    Participants: Matt Mathison + Dr. Lewis + entity CEOs
    Agenda:
      1. Prior year: what we accomplished vs. the plan (30 min)
      2. Each entity: 3-year vision + Year 1 annual plan (45 min, 15 min per entity)
      3. Portfolio-level capital allocation for the year (30 min)
      4. MBL strategic priorities for the year (30 min)
      5. Organizational changes (hiring plans; leadership changes) (15 min)
      6. Matt's 3 personal priorities for MBL this year (15 min)
    Pre-work: annual budgets + plans submitted December 15; reviewed by Dr. Lewis
    Output: Annual plan locked; priorities set; team aligned

ENTITY CEO CADENCE (in addition to portfolio-level):

  WEEKLY — Entity CEO → Dr. Lewis check-in (15 min; async option):
    Format: 3-bullet async update (Monday via Teams/email)
    Content: (1) biggest risk this week; (2) biggest opportunity; (3) anything Matt needs to know
    Dr. Lewis reviews and either acknowledges or escalates to Matt
    
  MONTHLY — Entity CEO financial review (30 min with Dr. Lewis):
    After monthly close is complete (by the 20th)
    Dr. Lewis reviews entity financials with the CEO
    Any Red flags identified → Matt Mathison notification
    
  QUARTERLY — Entity CEO QBR (within the portfolio QBR structure above)
```

## Output Format

```markdown
# Weekly Pulse — [Date]
**Participants:** Matt Mathison + Dr. Lewis | **Duration:** 30 min

## Cash Position
- Portfolio: $[X] total | [Entity] reserve status: ✅/⚠️/🔴

## Red Flags
1. [Issue]: [Status / Action]
2. [Clean if none]

## Decisions Required This Week
1. [Decision] — need by [Date]

## Quick Wins
- [Entity]: [Achievement]

---

# Monthly Portfolio Financial Review — [Month Year]
**Pre-work delivered:** [Date] | **Meeting:** [Date]

## Consolidated: Revenue $[X] | EBITDA $[X] ([%]) vs. plan $[+/-X]
## KPI Status: 🟢 [N] green | 🟡 [N] yellow | 🔴 [N] red
## Cash: All entities above reserve ✅ / [Entity] at [%] of minimum ⚠️

## Decisions Made
1. [Decision]
```

## Output Contract
- No meeting without pre-work — every cadence meeting requires pre-work delivered in advance; the weekly pulse requires Dr. Lewis's 3-bullet note; the monthly review requires the financial package; the quarterly QBR requires the entity decks; a meeting without pre-work is a meeting where time is spent gathering information instead of making decisions; Dr. Lewis enforces the pre-work requirement and will not run a review without it
- Decisions are the output — a review meeting that ends without explicit decisions, assigned actions, and a clear owner is a meeting that failed its purpose; every cadence meeting ends with the decision log: "What was decided? Who does what by when?"; Dr. Lewis captures this in the meeting notes and sends to participants within 24 hours
- Signal over ceremony — the cadence is designed to transmit signal (what matters; what's at risk; what needs Matt's attention) not perform governance theater; if a standing meeting is consistently producing no decisions and no new information, it should be compressed, combined, or cancelled; Dr. Lewis reviews the cadence annually and proposes changes when format isn't producing value
- HITL required: Matt Mathison owns the final agenda for the Annual Strategy Session; entity CEOs must confirm availability 2 weeks before the Quarterly QBR; any cadence change (frequency; participants; format) requires Matt's agreement; urgent issues that can't wait for the next scheduled cadence are escalated same-day via direct communication (not deferred to the next meeting)

## System Dependencies
- **Reads from:** fin-entity-consolidation (monthly financial package); fin-kpi-dashboard (KPI status for review); ops-okr-program (OKR scorecard for quarterly QBR); ops-action-tracker (open actions reviewed weekly); exec-cfo-oversight (financial summary inputs)
- **Writes to:** Meeting notes (SharePoint → Operations → PortfolioCadence → [YYYY] → [Meeting]); ops-action-tracker (actions assigned in meetings); exec-board-reporting (quarterly QBR informs the board package)
- **HITL Required:** Matt Mathison sets the Annual Strategy Session agenda; entity CEOs confirm QBR attendance 2 weeks out; cadence changes require Matt's agreement; urgent escalations bypass the cadence and go direct

## Test Cases
1. **Golden path:** Monday weekly pulse; Dr. Lewis's 3-bullet pre-work: "(1) Cash: all entities above reserve. Column6 at 8.1 weeks — above 6-week minimum; monitoring. (2) Red flag: Allevio claim ratio hit 91.3% this week — I'm calling the Allevio CEO today; briefing for Matt: clinical team is being engaged immediately. (3) Decision needed: the DSP contract renewal for Column6 ($85K/year) — I recommend renewing at 12% reduction; Matt's call needed this week." Matt reviews in 5 minutes and responds: "Approve the Column6 DSP renewal at 12% reduction. Thanks for catching the Allevio claim ratio — keep me posted by Friday." 30-minute meeting done in 10 minutes because of pre-work quality.
2. **Edge case:** A Quarterly QBR is scheduled but the Allevio CEO delivers their deck 1 day before (not 5 days as required) → Dr. Lewis: "I've received the Allevio deck — it arrived 4 days after the pre-work deadline. I've done a quick financial accuracy review: 2 metrics on slides 4 and 7 don't match our QuickBooks data. I'm sending corrections to the CEO now. The main impact: Matt won't have time to review the deck before the meeting. Options: (1) start the Allevio section 20 minutes in to give Matt time to review during the meeting (not ideal); (2) accept the deck as-is and flag the corrections verbally; (3) reschedule the Allevio portion to a separate call. I recommend option 2 — correct verbally, proceed; this is a process failure, not a content failure. I'm noting this for the CEO feedback: pre-work deadline is 5 days prior, not 1 day."
3. **Adversarial:** Matt wants to add a second monthly financial review meeting because he feels the current one isn't deep enough → Dr. Lewis: "Before adding a second meeting, let me understand what's not deep enough. Is it: (a) the financial data isn't arriving early enough for prep; (b) the meeting format doesn't allow enough discussion; or (c) the financial package itself doesn't cover the right things? If it's (a), I can move the package delivery from the 20th to the 18th. If it's (b), I can extend the monthly review from 60 to 90 minutes. If it's (c), I can redesign the package. A second monthly meeting doubles the time cost without necessarily solving the signal problem. Let me try one of these adjustments first — if we're still not getting what you need after 2 months, we add the meeting."

## Audit Log
Meeting notes retained (all cadence meetings). Decision logs retained. Pre-work delivery dates retained (to track compliance). Cadence design history retained. Annual cadence review records retained.

## Deprecation
Retire specific cadence elements when they consistently produce no decisions or decisions of insufficient value to justify the time cost. The overall cadence framework persists; individual meeting formats are iterated based on what produces the most signal per minute of Matt Mathison's time.
