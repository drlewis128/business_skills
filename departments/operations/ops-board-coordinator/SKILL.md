---
name: ops-board-coordinator
description: "Coordinate board meeting preparation and governance for MBL Partners portfolio. Use when the user says 'board meeting', 'board prep', 'board preparation', 'board coordination', 'board package', 'board deck', 'board materials', 'board agenda', 'board schedule', 'board reporting', 'board update', 'board governance', 'board management', 'board minutes', 'board resolution', 'board consent', 'board consent item', 'board action', 'board member', 'observer rights', 'observer access', 'LP observer', 'board advisor', 'entity board', 'portfolio board', 'Allevio board', 'HIVE board', 'Column6 board', 'prepare for the board', 'board presentation', 'board presentation prep', 'board financial review', 'board OKR review', 'board strategic review', 'fiduciary duty', 'director duty', 'corporate governance', 'D&O', 'directors and officers', or 'prepare Matt for the board'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--action <prepare|schedule|coordinate|distribute|minutes>] [--meeting-type <regular|special|consent>] [--focus <financials|strategy|okr|operations|all>]"
---

# Ops Board Coordinator

Coordinate board meeting preparation and governance across MBL Partners portfolio entities — preparing the board package, coordinating logistics and materials, supporting Matt Mathison's board member responsibilities, capturing board decisions and minutes, and ensuring that board governance is conducted with the rigor that protects Matt Mathison and MBL Partners legally and operationally. Board meetings are the highest-stakes governance events in the portfolio: they are the formal venue where Matt Mathison, as a board member or observer, exercises his oversight responsibilities; they are the record that defines what was disclosed, decided, and authorized; they are the document that protects or exposes directors if something goes wrong later. Dr. Lewis coordinates the preparation so that Matt walks into every board meeting fully informed and ready to engage, and walks out with a clean record of what was decided.

## When to Use
- Board meeting is scheduled (typically quarterly; 4-6 weeks before)
- Matt Mathison needs to prepare for a board meeting
- Board materials need to be reviewed for accuracy
- Board minutes or resolutions need to be prepared
- A board consent item needs to be processed

## Board Coordination Framework

```
BOARD MEETING TYPES:

  REGULAR BOARD MEETING (quarterly or semi-annual; per bylaws):
    Participants: Board members + any observers (LP observer rights per LPA)
    Purpose: review financial results; approve strategic decisions; CEO accountability
    Pre-work timeline: 6 weeks before
    Materials delivery to board members: 5-7 days before meeting
    
  SPECIAL BOARD MEETING (called as needed):
    Purpose: significant event requiring board approval (major acquisition; financing; CEO change)
    Timeline: as situation requires; minimum 48-hour notice (unless emergency)
    
  UNANIMOUS WRITTEN CONSENT (UWC):
    Used for: routine corporate approvals that don't require a meeting
    Examples: officer appointments; bank resolutions; stock issuances; standard corporate actions
    Process: legal drafts resolution; all board members sign (in writing or digitally)
    Dr. Lewis coordinates signatures; tracks completion

BOARD PREPARATION TIMELINE (6 weeks before):

  T-6 WEEKS:
    Confirm board meeting date/time/location (or video call link)
    Send calendar hold to all board members + observers
    Assign action items for materials preparation
    
  T-4 WEEKS:
    Entity CEO drafts board deck sections (financial; operational; strategic)
    Dr. Lewis drafts financial summary section (from fin-entity-consolidation)
    
  T-3 WEEKS:
    Dr. Lewis reviews entity CEO's draft deck:
      Financial accuracy check (all numbers match source systems)
      Strategic narrative review (is this consistent with what we've told the board before?)
      Red flag identification (anything in the materials that will generate hard questions?)
    
  T-2 WEEKS:
    Revised deck to entity CEO for final input
    Matt Mathison pre-read delivered to Matt: 2-page briefing on key issues and hard questions
    Dr. Lewis briefs Matt: "Here's what the board package says; here are the 3 questions you should expect; here are my recommended answers"
    
  T-5 DAYS:
    Final board package delivered to all board members + observers
    Includes: agenda; financial statements (audited or management); CEO letter; strategic update
    
  T-1 DAY:
    Final prep call with Matt Mathison (30 min): any late-breaking items; confirm Matt's position on each agenda item

BOARD MATERIALS STANDARDS:

  FINANCIAL STATEMENTS:
    Presented on GAAP basis (or per the governance agreement)
    Management financials: reviewed by Dr. Lewis for accuracy
    Audited financials: provided when audit is complete (annual; sometimes semi-annual)
    Key metrics: revenue; EBITDA; cash; KPI dashboard
    
  CEO LETTER:
    1-2 pages: honest assessment of business performance
    Tone: direct; forward-looking; no spin
    Review: Dr. Lewis reads for accuracy; entity CEO owns the narrative
    
  FORWARD AGENDA ITEMS:
    Any item requiring board approval (capital; contracts; governance changes) must be clearly labeled as "Action Item" vs. "Discussion Item" vs. "Information Item"
    Board votes: recorded in minutes with explicit "yes/no/abstain" for each director
    
  BOARD MINUTES:
    Prepared by legal or Dr. Lewis based on notes
    Approved at the following board meeting (or via written consent)
    What to capture: attendees; quorum; items discussed; votes; decisions; actions
    What NOT to capture verbatim: deliberation (legal privilege protection)

MATT MATHISON PRE-BRIEF:

  Format (2 pages max):
    Section 1: Financials summary (3 bullets — what changed vs. last board meeting)
    Section 2: Key items on the agenda (what is each item; what decision is needed; Dr. Lewis's recommendation)
    Section 3: Hard questions to expect (and recommended answers)
    Section 4: Any concerns Dr. Lewis has about the materials or the meeting
    
  Delivery: T-2 weeks to Matt; call to walk through T-1 day
```

## Output Format

```markdown
# Board Meeting Pre-Brief — [Entity] — [Date]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison only | **Confidential**

---

## Financial Summary (vs. last board meeting)

1. [Revenue / EBITDA / cash — what changed and why]
2. [KPI status: Green/Yellow/Red changes]
3. [Any anomaly or flag that the board will focus on]

---

## Agenda Items

| # | Item | Type | Dr. Lewis's recommendation |
|---|------|------|--------------------------|
| 1 | [Item] | Information | [Recommendation / no action needed] |
| 2 | [Approve Q3 capital allocation] | Action | Approve — within plan; financials support |
| 3 | [CEO compensation review] | Action | [Position] |

---

## Hard Questions to Expect

| Likely question | Recommended answer |
|---------------|-------------------|
| Why is GRR at 87%? | [Prepared honest answer] |
| What's the timeline on [initiative]? | [Specific timeline answer] |

---

## Dr. Lewis Concerns

[Any concern about materials accuracy; anything the board should know that isn't in the package; any agenda item where Dr. Lewis recommends a different position]
```

## Output Contract
- Matt Mathison is never surprised in a board meeting — the pre-brief exists to ensure that Matt has read the materials, understands the agenda, has a position on each action item, and knows what hard questions are coming; an unprepared Matt Mathison in a board meeting is a governance failure and a risk to MBL's LP relationship; Dr. Lewis delivers the pre-brief 2 weeks before and has a 30-minute call the day before; if Matt cannot take the pre-brief call, Dr. Lewis documents his position on each item and ensures Matt has approved that position before the meeting
- Board materials accuracy is a fiduciary responsibility — the numbers in a board package are not just reporting; they are representations to directors and observers who are making decisions based on those representations; a board package with a financial error is a legal exposure; Dr. Lewis validates every financial figure in the board package against the source systems before the package is distributed; if a correction is needed after distribution, Dr. Lewis distributes a correction with a clear explanation of what changed and why
- Board minutes are accurate and legally defensible — board minutes are a legal document; they record what was decided and create the evidence trail that protects directors from later claims of improper conduct or inadequate oversight; minutes must capture: who attended; quorum; what was voted; the result of each vote; key decisions; but NOT verbatim deliberation (deliberation has legal privilege implications); Dr. Lewis prepares or reviews minutes before they go to the board for approval; legal counsel reviews minutes for any meeting with significant action items
- HITL required: board packages → Matt Mathison reviews and approves before distribution to the full board; any agenda item with a vote → Matt Mathison must have a clear position before the meeting (pre-brief); board resolutions requiring Matt's signature → Matt's direct attention; LP observer communications (separate from board package) → Matt Mathison approval; board minutes → entity CEO + legal review + Dr. Lewis before distribution; UWC (unanimous written consent) → Dr. Lewis coordinates signatures; D&O insurance status → confirmed current before each board meeting (fin-insurance-reviewer)

## System Dependencies
- **Reads from:** fin-entity-consolidation (financial data for board package); ops-okr-program (OKR scorecard for board review); fin-kpi-dashboard (KPI data for board package); entity CEO board deck (primary source of strategic content); legal counsel (resolutions; minutes review); fin-insurance-reviewer (D&O coverage confirmation)
- **Writes to:** Board packages (SharePoint → Governance → BoardMeetings → [Entity] → [Date]); Matt Mathison pre-brief (direct to Matt; confidential); board minutes (after meeting; shared with board); UWC documents (legal coordination); ops-action-tracker (board action items); exec-lp-reporting (board decisions that affect LP reporting)
- **HITL Required:** Board package → Matt review + approval before distribution; any vote item → Matt must have a position (pre-brief); board resolutions → Matt signature; LP observer communications → Matt approval; minutes → entity CEO + legal + Dr. Lewis review; UWC → Dr. Lewis coordinates; D&O confirmed current before each meeting

## Test Cases
1. **Golden path:** Q3 board meeting for Allevio; scheduled 6 weeks out. T-6: calendar confirmed; attendees confirmed; board observer list confirmed. T-4: Dr. Lewis drafts financial summary section. T-3: Dr. Lewis reviews Allevio CEO's draft deck. Financial accuracy check: one number on slide 12 (YTD collection rate) is 91.4% in the deck but 89.2% in AdvancedMD. Dr. Lewis corrects and explains to CEO. T-2: revised deck; Matt's pre-brief delivered. Pre-brief: "Q3 financials show claim ratio at 89.1% (above 87% target) — clinical team has an action plan (described on slide 8). Hard question: 'Why is the claim ratio still above target?' Recommended answer: 'PCP connectivity is at 78% for new Q1 groups; the clinical team's outreach program is closing the gap; we project hitting 87% by Q1 next year.' No votes in this meeting — all information items." T-1: 30-min call with Matt. Board meeting: Matt is fully prepared; no surprises.
2. **Edge case:** A board member asks a question in the meeting that requires disclosure of information Dr. Lewis knows could affect LP relations negatively → Dr. Lewis (post-meeting debrief): "The board member's question about [item] touched on an area that has LP implications. Matt's answer was accurate and appropriate. I want to flag: if the board member shares this information with the LP they represent (as an observer), the LP communication protocol is triggered. I recommend we proactively address this in the next LP quarterly communication rather than wait for the LP to ask. I'll draft the LP communication section this week. Matt: this isn't an emergency, but it's better that we're ahead of it."
3. **Adversarial:** An entity CEO wants to include projections in the board package that Dr. Lewis believes are overly optimistic → Dr. Lewis: "I have a concern about the revenue projections on slides 15-17. The Q4 projection assumes 6 new employer groups closed by December — our current sales pipeline has 3 qualified prospects. Even in an aggressive scenario, I think 4 is the realistic case. Presenting 6 in a board package creates two problems: (1) If we miss the projection, the board will remember it was our commitment; (2) If the LP observer shares the projection with their investment team, we've created an LP expectation that's hard to unwind. My recommendation: present the pipeline with honest probability weighting. If we want to show the opportunity, present it as a range: 'Our base case projects 3-4 new groups; our upside scenario is 5-6.' This is honest and still communicates the opportunity. I won't approve a board package with projections I believe are not supportable — I need your decision on the range approach."

## Audit Log
Board meeting records retained (packages; minutes; attendees; votes). Pre-brief records retained (Matt Mathison only; confidential). UWC records retained (signed by all directors; date-stamped). Material correction records retained (what was corrected; when; to whom distributed). D&O insurance confirmation records retained per meeting. Board action item tracking retained.

## Deprecation
Board coordination is a permanent governance requirement for all portfolio entities. Specific board meeting formats evolve as entities grow and as governance requirements change. The Matt Mathison pre-brief is a permanent feature of the preparation process.
