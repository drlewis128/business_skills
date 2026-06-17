---
name: strategy-board-prep
description: "Prepare board meeting materials — agenda, deck, and pre-read package. Use when the user says 'board meeting', 'board prep', 'board materials', 'board deck', 'board presentation', 'prepare for board', 'board agenda', 'board package', 'board update', 'board meeting prep', 'board discussion', 'prepare the board', 'board review', 'board session', or 'get ready for the board'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--date <YYYY-MM-DD>] [--type <regular|special|annual>]"
---

# Board Prep

Prepare board meeting materials for MBL Partners portfolio companies — producing the agenda, executive pre-read, and presentation that enables Matt Mathison and any co-investors or advisors to engage meaningfully with portfolio company strategy, performance, and key decisions. Board meeting preparation is not a documentation exercise — it is the highest-leverage leadership communication event of the quarter. A well-prepared board meeting produces clearer decisions, stronger Matt Mathison alignment, and better company outcomes. An unprepared board meeting wastes senior attention and erodes confidence.

## When to Use
- 2 weeks before a scheduled board meeting
- Matt Mathison requests a board review of a portfolio company
- A material event requires a special board meeting
- Annual board meeting — year-end review and next year's plan approval

## Board Prep Framework

```
MBL portfolio company board structure:
  Board composition: Matt Mathison (managing partner, controlling); Dr. Lewis (observer/advisor); CEO; 
    sometimes an independent director or domain expert (sector-specific)
  Meeting frequency: Quarterly standard; special as needed
  Pre-read: Sent 5 business days before meeting; CEO covers financial performance; 
    Dr. Lewis covers strategy, risk, and compliance
    
Board agenda structure (90-minute default):
  Opening (5 min): Attendance, quorum, prior minutes
  Performance review (20 min): Financial results vs. plan; key metrics
  Strategic update (15 min): VCP progress; thesis validation; competitive landscape
  Key topics (30 min): 2-3 specific decisions or discussions that need board input
  Risk and compliance (10 min): Material risks; any open regulatory items
  Looking ahead (5 min): Q priorities; next board date
  Executive session (5 min): Without CEO if needed
  Closing (5 min): Action items; adjournment
  
Board materials principle:
  Pre-read: 10-15 pages; dense data; board reads before the meeting so meeting time is for decisions
  Presentation: 8-12 slides; drives the discussion; not a repeat of the pre-read
  No surprises: Matt Mathison is briefed on all material items before the board meeting
    (A board meeting should never be the first time Matt Mathison hears bad news)
  Executive session: Opportunity for Matt Mathison to speak confidentially without CEO
  
Board action items (every meeting):
  All board decisions documented; owner assigned; next review date
  Action items from prior meeting: reviewed at opening or in pre-read
```

## Output Format

```markdown
# Board Meeting Prep — [Company Name]
**Meeting date:** [Date] | **Location/Format:** [Physical / Video]
**Prepared by:** Dr. Lewis | **Pre-read sent:** [5 business days prior]

---

## PRE-READ PACKAGE

### [Company Name] Board Pre-Read — [Quarter Year]
**Prepared:** [Date] | **Confidential — Board Members Only**

#### Financial Performance

| Metric | Q[N] Plan | Q[N] Actual | Variance | YTD Plan | YTD Actual |
|--------|----------|-----------|---------|---------|-----------|
| Revenue | $[X]K | $[X]K | +/-[X]% | $[X]K | $[X]K |
| EBITDA | $[X]K | $[X]K | | | |
| EBITDA margin | [X]% | [X]% | | | |
| [Entity KPI] | [N] | [N] | | | |
| Cash position | — | $[X]K | | | |

**Variance explanation:** [Root cause of any variance >5%; recovery path]

#### Strategy and VCP Update

| VCP Initiative | Projected impact | Realized YTD | Status | Notes |
|--------------|-----------------|-------------|--------|-------|
| [Initiative 1] | $[X]K | $[X]K | 🟢/🟡/🔴 | |

**Thesis status:** ✅ Intact | ⚠️ Under pressure: [reason] | ❌ Broken: [reason]

#### Key Decisions for Board Discussion

| # | Decision | Context | Options | Management recommendation |
|---|---------|---------|---------|--------------------------|
| 1 | [Decision] | [2-sentence context] | [A / B / C] | [Management recommends A — rationale] |
| 2 | | | | |

#### Risk and Compliance Update

**Material risks (any change from last quarter):** [New risks; resolved risks; escalations]
**Compliance status:** [HIPAA current ✅ / OIG LEIE current ✅ / Open items: none / Specific issue]
**Insurance:** [All lines current ✅ / Renewal due [Date]]

#### Prior Quarter Action Items

| Action | Owner | Status | Notes |
|--------|-------|--------|-------|
| [Prior action item] | [Owner] | ✅ Complete / ⚠️ In progress / ❌ Not started | |

---

## BOARD PRESENTATION OUTLINE

**Slide 1:** Title — [Company Name] Board Meeting [Date]
**Slide 2:** Meeting agenda + objectives for today
**Slide 3-4:** Financial performance dashboard + narrative
**Slide 5:** Strategy update — VCP progress and thesis status
**Slide 6:** Key topic #1 — [Decision/Discussion with framing]
**Slide 7:** Key topic #2
**Slide 8:** Key topic #3 (if applicable)
**Slide 9:** Risk and compliance snapshot
**Slide 10:** Looking ahead — Q[N] priorities; next board date
**Slide 11:** Action items and owners

---

## BOARD AGENDA

[Company Name] Board Meeting
[Date] | [Time] | [Location/Call info]

1. Call to order and attendance (5 min) — [Chair]
2. Review and approval of prior minutes (5 min) — [Chair]
3. Financial performance review (20 min) — CEO
4. Strategy and VCP update (15 min) — Dr. Lewis
5. Key discussion items (30 min):
   a. [Item 1] — Decision required: ✅ Yes / Discussion only
   b. [Item 2]
   c. [Item 3 if applicable]
6. Risk and compliance update (10 min) — Dr. Lewis
7. Looking ahead — Q priorities (5 min) — CEO
8. Executive session (5 min) — Board only
9. Action items and adjournment (5 min)

---

## EXECUTIVE SESSION NOTES (Matt Mathison only)

[Items for confidential discussion: CEO performance assessment; compensation; succession; sensitive strategic matters not for CEO presence — pre-populated with any flagged items Dr. Lewis believes warrant executive session]

---

## POST-MEETING ACTION ITEMS

| Action | Owner | Deadline | Notes |
|--------|-------|---------|-------|
| | | | |

---

## Matt Mathison Pre-Meeting Brief

[Company] board meeting [Date]: pre-read sent [Date]. Key decisions: [Top 1-2 in one sentence each]. Financial: [Revenue on/off plan; EBITDA on/off plan — one sentence]. Thesis: [Intact/Under pressure]. Top risk to discuss: [Specific]. Recommendation for executive session: [None / Discuss CEO performance / Specific]. Action needed from Matt Mathison before meeting: [None / Review pre-read by [Date]].
```

## Output Contract
- No surprises at the board meeting — Matt Mathison briefed on all material items before the meeting; the pre-read is not the first notification; Dr. Lewis provides a verbal or written alert to Matt Mathison for any material financial variance (>10%), any regulatory event, any management change, or any strategic pivot as soon as it occurs — not waiting for the board package; the board meeting is for decisions and alignment, not for delivering bad news for the first time
- The pre-read must be dense enough to stand alone — board members should be able to read the pre-read and arrive fully informed; the presentation during the meeting then drives discussion rather than information transfer; if the board is reading slides for the first time during the meeting, the pre-read failed; Dr. Lewis structures the pre-read to answer the 5 questions a director will have: (1) how did we perform? (2) is the thesis intact? (3) what decisions do we need to make? (4) what are the risks? (5) what's the plan for next quarter?
- Board time is for decisions, not updates — allocating 45 minutes of a 90-minute board meeting to presenting information the directors already have from the pre-read wastes the board's highest-value asset: informed collective judgment; Dr. Lewis designs the agenda so information transfer is pre-read based and meeting time is concentrated on the 2-3 decisions or strategic discussions that require board-level input; a board meeting that ends with no decisions made was not a board meeting — it was a reporting session
- HITL required: Dr. Lewis prepares pre-read and agenda with CEO input; CEO reviews financial and operational sections; Matt Mathison receives the pre-meeting brief 1 week before; pre-read sent to all board members 5 business days before; decisions documented in board minutes by attorney or designated secretary; all board decisions reviewed by attorney if they have legal implications

## System Dependencies
- **Reads from:** Financial statements (QuickBooks — quarterly), VCP tracker (strategy-value-creation-plan), portfolio review (strategy-portfolio-review), compliance status (rc-compliance-ops-review), risk register (rc-risk-register), prior board minutes
- **Writes to:** Board pre-read document (SharePoint/Governance/<Company>/Board/[Date]/); board presentation deck; board action items log; post-meeting minutes (attorney or secretary); Matt Mathison pre-meeting brief
- **HITL Required:** Dr. Lewis prepares; CEO reviews and co-presents; Matt Mathison receives pre-meeting brief; all board decisions documented by attorney or designated secretary; executive session items handled directly between Matt Mathison and Dr. Lewis pre-meeting

## Test Cases
1. **Golden path:** Q2 Allevio board meeting prep → Pre-read: 12 pages; financial performance (revenue $380K Q2, plan $425K, -10.6% due to provider gap filled June 15; EBITDA $62K, plan $85K, -27%); VCP: billing lag reduced to 40 days (target 35 — behind); HIPAA security program update (on track for Q3 audit-ready); thesis intact; key decisions: (1) approve $145K NP compensation package (2) approve Marshall Medical billing audit scope at $8K; compliance: OIG LEIE Q2 check complete, all clear; insurance renewal October — no action needed yet; prior action items: all complete; Matt Mathison pre-meeting brief sent June 20; board meeting July 8; CEO reviews pre-read June 28; approved; presentation (10 slides) finalized July 3; board runs on agenda; NP compensation approved; billing audit approved; 4 action items logged; minutes drafted July 9
2. **Edge case:** CEO asks to exclude the compliance and risk section from the board materials because "it's not relevant to growth discussions" → Compliance and risk is always in the board materials; the board has fiduciary responsibility for the entity's regulatory standing; Matt Mathison and any co-investor need to know about open regulatory items, OIG status, and insurance gaps; removing compliance from board materials would leave the board uninformed about material risks that affect the investment value; Dr. Lewis explains this to the CEO and maintains the compliance section; if the CEO has specific concerns about the content, Dr. Lewis discusses those concerns and adjusts the framing, but not the inclusion
3. **Adversarial:** "Let's just do a quick 30-minute board check-in rather than a formal meeting" → Informal check-ins are useful between quarterly meetings but don't substitute for formal board meetings; formal board meetings: (1) constitute a quorum, (2) enable formal vote and documentation of board decisions, (3) create legal record of board governance, (4) provide LP governance documentation; PE investors typically require formal quarterly board meetings as a governance condition; Dr. Lewis maintains the quarterly formal meeting cadence; if Matt Mathison wants a brief informal update between meetings, that's a separate conversation, not a board meeting

## Audit Log
Board pre-reads retained permanently (corporate governance record). Board presentations retained. Board minutes retained permanently. Executive session notes retained (Matt Mathison only). Action items and completion records retained. Board attendance records retained.

## Deprecation
Retire when portfolio companies have a Chief of Staff or VP Strategy who manages board preparation — with Dr. Lewis reviewing the risk, compliance, and strategic content of board materials rather than preparing them from scratch.
