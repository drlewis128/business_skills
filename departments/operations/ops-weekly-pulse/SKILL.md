---
name: ops-weekly-pulse
description: "Run the MBL Partners weekly portfolio pulse meeting and prepare Matt Mathison's weekly briefing. Use when the user says 'weekly pulse', 'weekly briefing', 'weekly update', 'weekly meeting', 'Monday meeting', 'weekly review', 'weekly check-in', 'weekly standup', 'weekly status', 'prepare the weekly', 'write the weekly', 'weekly summary', 'week in review', 'weekly report', 'weekly update for Matt', 'Matt weekly update', 'briefing for Matt', 'weekly briefing for Matt', 'Monday briefing', 'start of week', 'kick off the week', 'beginning of week', 'what happened last week', 'what is happening this week', 'weekly portfolio status', 'portfolio weekly', 'weekly pulse prep', or 'run the weekly'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--format <meeting|async-brief|email>] [--action <prepare|run|debrief|send>] [--focus <cash|kpis|actions|decisions|all>] [--entity <all|specific>]"
---

# Ops Weekly Pulse

Run the MBL Partners weekly portfolio pulse meeting and prepare Matt Mathison's weekly briefing — synthesizing the prior week's financial and operational signals into a 3-5 bullet briefing that gives Matt everything he needs to know in under 2 minutes, then running the Monday morning meeting where decisions are made quickly and the week is oriented toward the right priorities. The weekly pulse is the highest-leverage 30 minutes in the MBL operating rhythm: done well, Matt walks into each week fully informed, with his decisions made and his priorities clear; done poorly, the week starts with confusion and information asymmetry.

## When to Use
- Every Monday morning (run the weekly pulse / prepare the briefing)
- Matt asks for a portfolio status update outside the regular cadence
- A significant event occurred and Matt needs an immediate briefing

## Weekly Pulse Framework

```
WEEKLY PULSE PREPARATION (Sunday evening or Monday morning before 9 AM):

  DR. LEWIS PREPARES THE 3-BULLET PULSE NOTE:
  
  Format (under 150 words total):
    CASH: [Portfolio cash status in one sentence — any concerns flagged]
    SIGNALS: [1-3 signals from the prior week — Red flags; wins; surprises]
    DECISIONS: [What Matt needs to decide this week — with recommended options]
    
  Example:
    CASH: All entities above reserve. Column6 at 8.1 weeks (above 6-week minimum). Monitor.
    SIGNALS: (1) Allevio claim ratio hit 91.3% — calling CEO today; clinical team briefed.
             (2) Column6 agency NRR improved to 97.2% (best quarter in 18 months).
             (3) HIVE WTI at $61.40 — above trigger; no capex concerns.
    DECISIONS: (1) Column6 DSP contract renewal — I recommend 12% reduction multi-year; need your go.
               (2) Allevio employer group pitch to [Company] — Dr. Lewis + CEO presenting Friday; need your blessing.
               
  DR. LEWIS SENDS the pulse note to Matt by 8:30 AM Monday

WEEKLY PULSE MEETING (30 min; Monday 9 AM or agreed time):

  PARTICIPANTS: Matt Mathison + Dr. Lewis
  FORMAT: No slides; verbal briefing; Matt drives the decisions
  
  AGENDA:
    Min 0-5: Matt reads/reviews the pulse note (if not already reviewed)
    Min 5-10: Cash and reserves — Dr. Lewis speaks to any flags
    Min 10-20: Red signals — Dr. Lewis briefs on each Red item:
                - What is it?
                - What is the impact?
                - What is the recommended action?
                - What does Matt need to decide?
    Min 20-27: Decisions — Matt makes the calls on each pending decision
    Min 27-30: Quick wins acknowledgment (1-2 sentences per entity)
    
  MEETING DISCIPLINE:
    Matt does not get new information in the meeting that wasn't in the pulse note
    (New information in a meeting = Dr. Lewis failed the pre-work)
    If Matt has a question the pulse note should have answered: Dr. Lewis notes the gap
    Meeting ends at 30 minutes regardless of completeness (schedule more time if needed)
    
WEEKLY PULSE OUTPUT:

  DECISIONS MADE: Document every decision Matt makes in the meeting
    Format: "[Decision]: [Matt's direction] — Dr. Lewis to implement by [date]"
    
  PRIORITIES FOR THE WEEK: 3 explicit priorities Matt wants Dr. Lewis to focus on
    These get added to Monday.com Portfolio Oversight board immediately after the meeting
    
  ACTION ITEMS: Any new actions generated in the meeting → ops-action-tracker same day

WHEN MATT IS UNAVAILABLE (travel; emergency):

  Async option: Matt reads the pulse note and responds via Teams/email with decisions
  No meeting: Matt's decisions via async communication count; Dr. Lewis documents and implements
  If Matt is unreachable for >3 days: Dr. Lewis escalates any blocking decisions to the entity CEO
  and notes Matt's travel in the weekly pulse

ENTITY CEO INPUT (optional for complex situations):

  For standard weeks: entity CEOs are NOT in the weekly pulse meeting
  (They have their own Monday check-in: 3-bullet async update to Dr. Lewis)
  
  Entity CEO entity check-in format (Monday, by 9 AM):
    (1) Biggest risk this week
    (2) Biggest opportunity
    (3) Anything Matt needs to know
    
  Dr. Lewis aggregates these into the pulse note for Matt
  Entity CEO joins the weekly pulse ONLY if: Matt wants a direct conversation; a significant issue requires the CEO's presence
```

## Output Format

```markdown
# Weekly Pulse Note — [Date]
**From:** Dr. Lewis → Matt Mathison | **Delivery:** Monday before 9 AM

---

**CASH:** [One sentence — all entities above reserve / any flag]

**SIGNALS:**
1. 🔴 [Red signal]: [Impact] — [Recommended action]
2. 🟡 [Yellow signal]: [What to monitor]
3. 🟢 [Win]: [Entity] — [Achievement]

**DECISIONS NEEDED THIS WEEK:**
1. [Decision A] — Options: (a) [Option]; (b) [Option] — *My recommendation: [Option]*
2. [Decision B] — Simple go/no-go — *Recommendation: Go*

---

# Weekly Pulse Meeting — [Date] — Decision Log
**Duration:** [N] min | **Participants:** Matt + Dr. Lewis

| # | Decision | Matt's direction | Implement by |
|---|---------|-----------------|-------------|
| 1 | [DSP renewal] | Approve at 12% reduction | Friday |
| 2 | [Allevio pitch] | Proceed — Matt will join by phone | Friday |

**Matt's top 3 priorities this week:**
1. [Priority 1]
2. [Priority 2]
3. [Priority 3]
```

## Output Contract
- Pre-work is the product — the weekly pulse note is the primary deliverable; the meeting is where Matt confirms decisions and adjusts priorities; if Matt reads the pulse note and has no questions, the meeting can be 10 minutes instead of 30; a pulse note that generates a lot of questions in the meeting is a pulse note that missed something important; Dr. Lewis calibrates the pulse note to the level of detail that eliminates Matt's questions — not more, not less
- BLUF always — the pulse note leads with the most important information; if there's a Red flag (claim ratio breach; entity below reserve; fraud suspected), it's in the first sentence; Matt should not have to read 100 words to find out that there's a problem; the format Cash → Signals → Decisions is the BLUF structure; Cash is foundational (is anyone at risk?); Signals is the intelligence layer (what changed?); Decisions is the ask (what do you need from me today?)
- Decisions are pre-analyzed, not just presented — Matt does not like "here are 4 options, what do you think?"; Matt likes "here's the situation, here are 2 options, my recommendation is option 1 because [one sentence]"; Dr. Lewis does the analytical work before the meeting so Matt can make decisions fast; the meeting is where Matt exercises judgment, not where he learns context
- HITL required: every Red signal (any entity metric in the Red zone) must be in the pulse note regardless of how Dr. Lewis plans to handle it; Dr. Lewis does not handle Red signals without Matt's awareness; Matt's decisions in the meeting are final — Dr. Lewis implements without requiring additional confirmation; if a new Red signal emerges during the week, Dr. Lewis does not wait until next Monday — he contacts Matt same-day

## System Dependencies
- **Reads from:** fin-kpi-dashboard (KPI status — the primary signal source); fin-cash-flow-planner (cash position); ops-action-tracker (overdue items); ops-monday-manager (Matt's board status); entity CEO Monday check-in notes (aggregated for the pulse); fin-entity-consolidation (consolidated financial signals)
- **Writes to:** Weekly pulse note (direct to Matt via Teams/email); meeting decision log (SharePoint → Operations → WeeklyPulse → [YYYY] → [Date]); ops-action-tracker (new actions from meeting); ops-monday-manager (Matt's priorities for the week added to Portfolio Oversight board)
- **HITL Required:** Every Red signal goes to Matt regardless of Dr. Lewis's planned action; Matt's decisions in the meeting are final; new Red signals during the week → Matt same-day (not deferred); if Matt is unreachable >3 days → entity CEO owns blocking decisions with documentation

## Test Cases
1. **Golden path:** Monday 8:15 AM pulse note to Matt: "CASH: All entities above reserve. Column6 8.1 weeks (green). SIGNALS: (1) 🟢 Column6 agency NRR hit 97.2% this quarter — agency renewal season is performing. (2) 🟡 Allevio claim ratio at 89.1% — improving trend (was 91.2% in March); still above 87% target but heading right direction. (3) 🟡 HIVE WTI at $61.40 — monitoring (trigger is $58). DECISIONS: (1) Approve Column6 DSP contract at 12% reduction? Recommendation: Yes. Saves $42K/year, 2-year commit. (2) Allevio employer group pitch to Suns Capital Friday — OK for Dr. Lewis + Allevio CEO to present? Recommendation: Yes." Matt responds at 8:45 AM: "Approve DSP renewal. Fine on Suns Capital pitch. Call me Wednesday on the claim ratio status — want the update before the LP report." Meeting: 12 minutes. 2 decisions made. Matt's week is oriented.
2. **Edge case:** Matt is in Europe for a conference and won't see the pulse note until 4 PM → Dr. Lewis adjusts: "Sent the pulse note at 8:30 AM knowing Matt is in Europe (7-hour lag). Signal this week is a Yellow — Column6 DSP invoice discrepancy ($35K) that I'm investigating. No immediate decision required from Matt — I've paused the payment pending resolution. I'll have the investigation results by 2 PM MT (9 PM Matt's time). If the discrepancy resolves cleanly, I'll proceed with payment and include the update in Wednesday's check-in. If it doesn't resolve, I'll message Matt directly on Teams tonight. No action required from Matt today."
3. **Adversarial:** Matt wants to skip the weekly pulse "when there's nothing important" → Dr. Lewis: "I hear you — not every week has a decision. But here's my honest assessment of the risk in skipping the pulse: the weeks we think 'nothing is important' are often the weeks when we miss a signal that becomes a problem in 30 days. The pulse note takes me 20 minutes to prepare; the meeting takes 30 minutes of your time. The return: you start every week knowing where the money is, what changed, and what decisions you need to make. What I can do: make the pulse note your primary format — you read it async and only take the meeting if there's something you want to talk through. That cuts your time commitment from 30 minutes to 5 minutes most weeks, while keeping the signal quality. Would that work better?"

## Audit Log
All weekly pulse notes retained. Decision logs retained. Entity CEO Monday check-in notes retained. Red signal records retained (with Matt notification confirmation). Pulse note delivery timestamps retained. Meeting duration records retained.

## Deprecation
The weekly pulse is a permanent feature of the MBL operating cadence — it evolves in format but does not get retired. When Matt has a Chief of Staff or an EA who aggregates signals, the pulse note preparation may shift to them; Dr. Lewis provides the financial and operational signals; the pulse format itself remains.
