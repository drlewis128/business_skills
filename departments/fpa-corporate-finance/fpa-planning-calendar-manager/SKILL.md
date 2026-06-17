---
name: fpa-planning-calendar-manager
description: "Manage the FP&A planning cycle and deadlines for portfolio companies. Use when the user says 'FP&A calendar', 'planning calendar', 'close calendar', 'financial calendar', 'when is the close', 'month-end calendar', 'close schedule', 'budget calendar', 'planning cycle', 'FP&A schedule', 'forecast schedule', 'when is the board package due', 'reporting calendar', 'close dates', 'budget timeline', 'quarterly schedule', 'annual planning timeline', 'LP report schedule', 'finance deliverables', or 'FP&A deliverables'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--period <month|quarter|year>] [--entity <all|allevio|hive|column6>] [--action <view|plan|remind>]"
---

# Planning Calendar Manager

Manage the FP&A planning cycle, close calendar, and financial reporting deadlines for MBL Partners and its portfolio companies — ensuring that every financial deliverable is produced on time and in the right sequence. FP&A operates on a calendar that is both predictable (the same sequence happens every month) and tightly sequenced (each deliverable depends on the previous one being accurate). Dr. Lewis owns this calendar for the full MBL ecosystem: monthly close → variance analysis → rolling forecast → board package → LP report. Nothing slips.

## When to Use
- New month begins — confirm the close calendar and deliverable dates
- Planning for the annual budget cycle — when does each step happen?
- A board meeting is approaching — confirm the package delivery timeline
- An LP report is due — confirm the content and approval timeline
- Onboarding a new portfolio company — establish the close and reporting calendar
- Matt Mathison asks "when do I get the [financial deliverable]?"

## Planning Calendar Framework

```
MONTHLY CLOSE CALENDAR (every month):

  Business Day 1 (BD1):
    CEO confirms: month-end member count (Allevio), production data (HIVE), campaign count (Column6)
    Dr. Lewis: Opens the monthly close checklist
    
  BD3:
    All bank accounts reconciled
    All credit card transactions categorized
    QuickBooks bank feeds cleared and matched
    
  BD4:
    Allevio: Marshall Medical Billing sends collections report for the month
    HIVE: Covercy sends production statement (revenue and LOE detail)
    Column6: Ad server sends impression delivery report by campaign
    
  BD5 (PRELIMINARY CLOSE):
    QuickBooks management accounts generated (P&L, Balance Sheet, Cash Flow)
    Preliminary revenue recognition confirmed (per fpa-revenue-recognition-tracker)
    AR aging pulled; any accounts >60 days flagged for collection action
    Deferred revenue schedule reconciled
    
  BD6 (SIGN-OFF):
    Variance analysis vs. prior month and budget completed (fpa-variance-analyzer)
    Any material variances flagged and explained
    Controller or Dr. Lewis: Formal sign-off on the management accounts
    
  BD7 (CEO DELIVERY):
    Monthly financial package delivered to CEO (P&L, Cash, key metrics)
    CEO reviews; any questions answered same day
    Matt Mathison receives the portfolio performance summary (fpa-portfolio-performance-model)
    
  BD10 (BOARD-READY):
    Board financial package updated for the current month (fpa-board-financial-package)
    Rolling forecast updated (fpa-rolling-forecast-updater)
    
QUARTERLY CALENDAR (every quarter):

  Month-end close as above, PLUS:
    Q+15 days: LP quarterly update (fpa-lp-report-builder) — draft to Matt Mathison
    Q+30 days: LP quarterly update finalized; Matt Mathison reviews and approves
    Q+45 days: LP quarterly update distributed (Matt Mathison distributes to LPs)
    Covenant compliance certification filed with bank (if quarterly covenant)
    
ANNUAL PLANNING CALENDAR:

  August (Budget Kick-off):
    Matt Mathison sets the strategic priorities for the coming year
    Each portfolio company CEO receives budget guidance and goals
    
  September (Driver Assembly):
    Dr. Lewis builds the driver assumptions for each portfolio company
    Allevio: Member growth projections, PMPM rate assumptions, clinical staff plan
    HIVE: WTI forecast, production plan, LOE targets
    Column6: Campaign volume plan, CPM assumptions, headcount plan
    
  October (Model Build):
    Dr. Lewis builds the full driver-based financial model for each company (fpa-annual-budget-builder)
    CEO reviews and challenges the assumptions
    First draft budget to CEO by October 31
    
  November (Refinement):
    CEO red-lines the model; Dr. Lewis incorporates feedback
    Second draft to CEO by November 15
    Internal approval: CEO + Dr. Lewis sign-off by November 25
    
  December (Finalization):
    Final budget to Matt Mathison by December 1
    Matt Mathison reviews and approves by December 15
    Budget loaded into QuickBooks by December 20
    Board receives the approved budget in the January board package
    
  Ongoing after budget approval:
    Rolling forecast updated monthly vs. approved budget
    Material variances (>$20K EBITDA vs. rolling forecast) flagged immediately
    
BOARD MEETING CALENDAR:
  Typical cadence: Quarterly (January, April, July, October — or as Matt Mathison schedules)
  Dr. Lewis delivers board package: 10 business days before the board meeting (hard deadline)
  Never less than 5 business days before the board meeting
  Matt Mathison pre-briefed by Dr. Lewis on any surprises: before the board package is distributed
  
LP REPORT CALENDAR:
  Quarterly: Within 45 days of quarter-end
  Annual: Within 90 days of year-end (includes audited financials in appendix if audit is complete)
  Matt Mathison reviews before distribution; Matt Mathison distributes (not Dr. Lewis)
  
KEY ABSOLUTE DEADLINES (never slips):
  BD7: CEO financial delivery — slipping this delays CEO decision-making
  Board package: 10 days before board — slipping this disrespects the board's time
  LP report: Per the LP agreement — slipping this is a contractual breach
  Annual budget: December 15 (Matt Mathison approval) — slipping this means the new year starts without a budget
  Covenant reporting: Per credit agreement — slipping this can trigger a technical default
```

## Output Format

```markdown
# FP&A Planning Calendar — [Month/Quarter/Year]
**Prepared by:** Dr. Lewis | **As of:** [Date]

---

## Monthly Close Calendar — [Month YYYY]

| Business Day | Date | Deliverable | Owner | Status |
|-------------|------|-------------|-------|--------|
| BD1 | [Date] | CEO confirms operating data | CEO | ✅ / ⏳ / ⚠️ |
| BD3 | [Date] | Bank reconciliation complete | Dr. Lewis | — |
| BD4 | [Date] | Revenue source data received | Marshall / Covercy / Ad server | — |
| BD5 | [Date] | Preliminary close | Dr. Lewis | — |
| BD6 | [Date] | Variance analysis + sign-off | Dr. Lewis | — |
| BD7 | [Date] | CEO delivery + Matt Mathison portfolio summary | Dr. Lewis | — |
| BD10 | [Date] | Board-ready financials + rolling forecast | Dr. Lewis | — |

---

## Upcoming Annual Calendar — Key Dates

| Deliverable | Due Date | Owner | Status |
|-------------|---------|-------|--------|
| Q[N] LP Report (draft to Matt) | [Date] | Dr. Lewis | — |
| Q[N] LP Report (final distribution) | [Date] | Matt Mathison | — |
| Annual budget kick-off | August [YYYY] | Dr. Lewis + CEO | — |
| Annual budget (Matt Mathison approval) | December 15, [YYYY] | Matt Mathison | — |
| Board meeting package (next board) | [Date − 10 BD] | Dr. Lewis | — |
| Covenant reporting due | [Date] | Dr. Lewis | — |

---

## Overdue or At-Risk Items

| Item | Was Due | Owner | Action |
|------|---------|-------|--------|
| [Any overdue deliverable] | [Date] | [Owner] | [Escalation / Recovery plan] |
```

## Output Contract
- The calendar is a commitment, not a guideline — every date on the FP&A planning calendar is a commitment: BD7 CEO delivery, 10-day board package lead time, quarterly LP report within 45 days; these are not targets that can be moved when things get busy; the CEO needs the financial data on BD7 to make operating decisions that week; the board needs the package 10 days ahead to prepare for the meeting; LPs need the quarterly report within 45 days per the LP agreement; Dr. Lewis treats these as hard deadlines that require the work to begin early enough to meet them even if complications arise
- Sequence dependencies matter — the planning calendar has a strict sequence: bank reconciliation (BD3) → revenue data received (BD4) → preliminary close (BD5) → variance analysis (BD6) → CEO delivery (BD7); each step depends on the previous one being complete and accurate; if the bank reconciliation is late, everything downstream is late; Dr. Lewis identifies the dependencies in the calendar and monitors the earliest steps most aggressively, because catching a delay at BD3 allows recovery; catching it at BD6 means the CEO delivery will be late
- Flag forecast changes immediately — the planning calendar defines when regular deliverables go out; but material changes to the forecast (WTI drops below the stress trigger; a major Allevio employer group cancels) are not held until the next scheduled deliverable; they are flagged to Matt Mathison the day they are identified; the calendar governs routine delivery; urgency governs exception reporting; Dr. Lewis knows the difference and does not wait for the monthly close to surface a crisis
- HITL required: Dr. Lewis owns the FP&A calendar and is accountable for all deliverables; CEOs are responsible for providing source data (operating metrics, revenue confirmation) by BD1-BD4; Matt Mathison receives the portfolio summary by BD7 and approves the board package and LP reports; Dr. Lewis does not deliver the board package or LP reports directly to the board or LPs — Matt Mathison distributes; any slippage in the calendar is reported to Matt Mathison with a recovery plan, not hidden

## System Dependencies
- **Reads from:** QuickBooks (for close process — transactions must be complete before close can proceed); Allevio: Marshall Medical Billing (monthly collections report); HIVE: Covercy (monthly production statement); Column6: Ad server impression delivery reports; bank statements (for BD3 reconciliation); credit agreement (covenant reporting schedule); LP agreement (quarterly and annual report deadlines); Matt Mathison's board meeting schedule
- **Writes to:** Monthly close checklist (SharePoint/Finance/MBL/Calendars/[YYYY-MM]_CloseChecklist.xlsx); annual planning calendar (SharePoint/Finance/MBL/Calendars/[YYYY]_AnnualPlanningCalendar.xlsx); reminders to CEO and Dr. Lewis as each BD deadline approaches (via calendar invites or Monday.com tasks); board meeting preparation schedule
- **HITL Required:** Dr. Lewis owns execution; CEOs provide source data by BD4; Matt Mathison approves board packages and LP reports; any calendar slippage reported to Matt Mathison; LP report delivery timing is contractual — any delay from the 45-day/90-day window requires Matt Mathison to communicate proactively to LPs (not Dr. Lewis)

## Test Cases
1. **Golden path:** First business day of the new month → Dr. Lewis opens the monthly close checklist: contacts all 3 CEOs for operating data confirmation (members, production, campaigns); sends the BD3, BD4, BD5, BD6, BD7 deadlines to his calendar; BD3: bank reconciliation complete in QuickBooks; BD4: Marshall Medical sends the Allevio collections report, Covercy sends HIVE production data, Column6 ad server report received; BD5: Dr. Lewis generates the preliminary P&L for all 3 companies, confirms revenue recognition per fpa-revenue-recognition-tracker, pulls AR aging; BD6: variance analysis complete — HIVE EBITDA is $28K below plan due to WTI; explained by rate difference ($63.50 vs. $67 plan); BD7 by 9 AM: CEO packages delivered to each CEO; portfolio summary delivered to Matt Mathison by noon; Matt Mathison reviews same day; BD10: rolling forecasts updated and board-ready financials complete. All deadlines met.
2. **Edge case:** A CEO fails to provide operating data by BD1, and it's now BD4 → Dr. Lewis immediately escalates: contacts CEO directly (phone, not email): "I need the member count / BOE data now — the close is at BD5 tomorrow and I can't complete the revenue recognition without it. If I don't have it by end of today, the CEO delivery will be late." If data is still not received by BD4 close: Dr. Lewis notifies Matt Mathison: "Allevio CEO has not provided the member count confirmation needed for the monthly close. I'm proceeding with the prior month's count as a provisional estimate and will revise when the data arrives. CEO delivery (BD7) will be on time with a provisional revenue number; I'll send a revised package once the actual count is confirmed." Matt Mathison is informed; provisional package goes out on time; no surprise to the CEO from a late delivery
3. **Adversarial:** The quarterly LP report deadline is approaching (45 days after Q3 end = November 14), and the CEO asks to delay it 2 weeks to "polish the narrative" → Dr. Lewis declines the delay: "The LP agreement requires the quarterly report within 45 days of quarter-end — November 14 is a contractual deadline, not a soft target. A 2-week delay to November 28 would put us in breach of the LP agreement, which gives LPs remedies including potential demand for early exit. I can work with you to improve the narrative within the current timeline — what sections need work? Let's get on a call today and I'll incorporate your edits before the draft goes to Matt Mathison for review. The deadline doesn't move." LP report delivered on time; narrative improvements incorporated within the timeline

## Audit Log
All monthly close checklists retained by period (with sign-off and date completed for each step). Annual planning calendar retained by year. All financial deliverable dates and actual delivery dates retained (for tracking on-time delivery). Any slippage events documented with root cause and recovery action. LP agreement reporting deadline compliance tracked (never in breach).

## Deprecation
Retire when each portfolio company has a CFO or controller who owns the monthly close calendar — with Dr. Lewis maintaining the FP&A deliverables calendar (board package, LP report) and Matt Mathison receiving the portfolio-level deliverables on schedule.
