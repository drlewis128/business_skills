---
name: exec-board-communication
description: "Prepare board meeting materials and communications for MBL Partners and portfolio companies. Use when the user says 'board meeting', 'board prep', 'board materials', 'board deck', 'board presentation', 'board communication', 'board update', 'prepare for the board', 'board agenda', 'board package', 'board reporting', 'board narrative', 'present to the board', 'board meeting prep', 'executive board communication', 'board slides', 'build the board deck', 'board member update', 'board meeting agenda', 'pre-board briefing', 'board discussion', 'board follow-up', 'board minutes', 'board action items', or 'executive board reporting'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--meeting <date>] [--type <regular|special|annual>] [--action <prepare|agenda|deck|minutes|follow-up>]"
---

# Exec Board Communication

Prepare board meeting materials and communications for MBL Partners and portfolio companies — building board packages that give directors the information they need to govern effectively, without burying them in operational detail they don't need. Board communication at MBL follows the principle of "context + decision": give the board the context to understand the business, and identify the specific decisions or approvals you need from them. Boards that receive information dumps govern poorly; boards that receive curated narratives with clear asks govern well.

## When to Use
- Board meeting scheduled (typically 4 weeks before the meeting)
- An entity's board needs a special briefing on a significant event (M&A, crisis, strategy shift)
- Matt Mathison needs to prepare for a board meeting as the managing partner
- Post-board follow-up: minutes, action items, decisions communicated to management

## Board Communication Framework

```
BOARD PACKAGE STRUCTURE:

  Cover memo (1 page):
    □ Date and attendees
    □ Agenda (numbered; time-estimated)
    □ What happened since last meeting: 3-5 bullets (wins and misses; no spin)
    □ What decisions the board is being asked to make today
    Rule: If the board can't see the agenda 5 business days before the meeting, the meeting is
    not ready. No exceptions. Board members who receive materials the night before don't govern;
    they react.
    
  Section 1 — Performance Update (15-20 min):
    □ Financials: Revenue, EBITDA, cash position vs. plan (actual and forward)
    □ Key operational metrics: entity-specific KPIs from exec-kpi-dashboard
    □ Wins this period (2-3 specific, concrete wins that the board should know about)
    □ Misses this period (honest account of what didn't go to plan; root cause)
    Rule: Boards that only hear wins stop trusting management. The miss section is where
    Matt Mathison builds credibility. Tell the board what went wrong before they ask.
    
  Section 2 — Strategic Update (15-20 min):
    □ Progress on the annual strategic priorities (exec-strategic-planning)
    □ Market context: anything in the competitive environment the board should know
    □ AI strategy update (if applicable): what Dr. Lewis has deployed; what's next
    □ M&A pipeline (if applicable): deal flow summary from exec-deal-thesis-builder
    
  Section 3 — Risk Update (10 min):
    □ Top 3 risks on the radar (operational, market, regulatory, competitive)
    □ Mitigation status for each risk
    □ THRIVE flag count (active integrity concerns, if any — these require board awareness)
    
  Section 4 — Decisions Required (15-20 min):
    □ Each decision item: context, options, management recommendation, ask
    □ Approvals required: expenditures above threshold, significant contracts, personnel actions
    Rule: Management never asks the board to "discuss" something without also presenting
    a recommendation. "We'd like your thoughts" without a management position is weak governance.
    Present the recommendation, defend it, and ask for the decision.
    
  Closing — Next Meeting Preview:
    □ Next meeting date
    □ What will be on the agenda
    □ Any actions board members are taking (not just management)

BOARD COMMUNICATION PRINCIPLES AT MBL:

  1. BLUF — The executive summary is the most important section. If Matt Mathison can't
     summarize the portfolio status in 3 sentences, the materials are too complex.
     
  2. Candor builds trust — boards that hear only good news become complacent; boards that
     hear honest assessments of misses become genuine governance partners. Matt Mathison
     models candor in board communications; Dr. Lewis ensures the miss section is never
     softened into oblivion before the package is sent.
     
  3. Boards govern strategy; management executes — the board should not be micromanaging
     hiring decisions or vendor contracts; the board sets governance thresholds; management
     acts within them. Board materials should reflect what boards need to govern, not a
     review of every management action.
     
  4. Follow-through closes the loop — every board decision and action item is tracked and
     reported at the next meeting. Boards that don't see follow-through stop trusting
     management to execute.

MBL-SPECIFIC BOARD CONTEXT:
  Matt Mathison is typically both the managing partner and a board member at portfolio companies.
  This creates a dual role: he is both a principal presenting to the board and a board member
  who will vote on decisions. Dr. Lewis ensures that board materials are built for the board
  as a whole, not just for Matt's informational needs, and that the governance process is clean.
```

## Output Format

```markdown
# [Entity] Board Package — [Quarter/Month YYYY]
**Meeting date:** [Date] | **Location / Format:** [In-person / Zoom]
**Attendees:** [Board members; management presenters]

---

## Cover Memo

**What happened since last meeting:**
- [Win 1]
- [Win 2]
- [Miss 1 — honest; with root cause]

**Decisions requested today:**
1. [Decision 1] — [Brief context]
2. [Decision 2]

---

## Agenda

| Time | Section | Owner | Type |
|------|---------|-------|------|
| [HH:MM] | Performance Update | [Presenter] | Informational |
| [HH:MM] | Strategic Update | [Presenter] | Discussion |
| [HH:MM] | Risk Update | [Presenter] | Informational |
| [HH:MM] | Decision: [Name] | [Presenter] | Action required |
| [HH:MM] | Closing / Next meeting | [Presenter] | — |

---

## Section 1 — Performance Update
[Narrative; financial snapshot; KPI table; wins and misses]

---

## Section 2 — Strategic Update
[Priority progress; market context; AI update; M&A pipeline if applicable]

---

## Section 3 — Risk Update
[Top 3 risks; mitigation status; THRIVE flag count]

---

## Section 4 — Decision: [Name]
**Context:** [Background]
**Options:** (1) [Option A] (2) [Option B]
**Management recommendation:** [Specific recommendation with rationale]
**Ask:** Approve / Decline / Request more information
```

## Output Contract
- Materials must be sent 5 business days before the meeting — board members who receive materials the night before the meeting cannot govern; they can only react; Dr. Lewis sets the materials deadline as 5 business days before the meeting and escalates to Matt Mathison if any section is not ready in time; a meeting that goes ahead without complete materials should be postponed
- Misses are never softened — the miss section in board materials is the most important trust-building element; Dr. Lewis reviews every draft to ensure that misses are described with specificity, root cause, and management response; phrases like "we encountered some headwinds" or "market conditions created challenges" without specifics are replaced with concrete descriptions; Matt Mathison's credibility as a managing partner is built on telling the board difficult truths before they have to ask
- Every decision item has a recommendation — management never asks the board to "discuss" or "provide input on" a decision without also presenting a management recommendation; "we'd like the board's guidance" is appropriate when the board has domain expertise management lacks; otherwise it signals that management doesn't know what it wants to do, which is a governance failure; Dr. Lewis ensures every decision item in the package includes a specific ask
- HITL required: Matt Mathison reviews the full board package before distribution; Dr. Lewis reviews the miss section and THRIVE flag update; entity CEO reviews their section before it goes to Matt; board materials distributed no later than 5 business days before the meeting; post-board minutes and action items distributed within 3 business days of the meeting; any THRIVE flag or Integrity concern in the board materials requires Matt Mathison review before inclusion

## System Dependencies
- **Reads from:** exec-kpi-dashboard (performance metrics for the performance section); exec-strategic-planning (priority progress for strategic section); exec-risk-management (risk register for risk section); exec-decision-framework (THRIVE flags for risk section); exec-portfolio-review (quarterly portfolio data for entity board packages); exec-lp-reporting (LP reporting alignment — board and LP should receive consistent narrative); finance data (QuickBooks — financials for the performance section)
- **Writes to:** Board package (SharePoint/Governance/BoardMeetings/[YYYY]/Q[X]_[Entity]_BoardPackage.pdf); board minutes (SharePoint/Governance/BoardMeetings/[YYYY]/Q[X]_[Entity]_BoardMinutes.pdf); exec-action-tracker (board action items posted to Monday.com within 3 business days); exec-decision-framework (board approvals update the capital threshold records)
- **HITL Required:** Matt Mathison reviews full package before distribution; Dr. Lewis reviews miss section and THRIVE flags; entity CEOs review their section; materials distributed 5 business days before meeting; minutes and action items distributed within 3 business days of meeting; THRIVE/Integrity concerns require Matt Mathison review before inclusion

## Test Cases
1. **Golden path:** Q2 Allevio board meeting; Dr. Lewis prepares materials 8 business days before; cover memo: wins (93% employer group GRR; new CFO hire completed) + misses (new employer group sales at 70% of Q2 plan; root cause: B — seasonality not reflected in the plan); decision item: approve the Allevio Q3 clinical program expansion budget ($340K); management recommendation: approve; rationale: 30% high-risk member engagement rate supports ROI model; downside: $340K if program underperforms (survivable); Matt reviews; one revision to the miss narrative (too soft; Dr. Lewis strengthens it); materials sent 5 business days before; board approves the clinical expansion; minutes and action items distributed 2 days after the meeting.
2. **Edge case:** A board member asks at the meeting about an operational detail not in the package (the specific collection performance of a particular HIVE well) → Matt: "That level of operational detail isn't in the board package — I'll have Dr. Lewis follow up with a specific answer within 48 hours." Matt to Dr. Lewis (post-meeting): "Board member asked about Well 14-H production specifically. Can you get me the production numbers and context before EOD tomorrow?" Dr. Lewis responds by EOD; Matt provides to the board member via email; logged in exec-action-tracker.
3. **Adversarial:** Entity CEO insists on softening the miss narrative: "I don't want to tell the board we missed the sales target — it sounds bad." → Dr. Lewis: "I understand the discomfort. But telling the board now that you missed and explaining why is far better than having the board ask why the full-year number is below plan in Q4 without any prior warning. Here's how I'd frame it: 'New employer group sales came in at 70% of the Q2 plan. We've identified that Q2 is a seasonally weak period for new group sales because HR Directors are focused on existing plan administration, not shopping. We've restructured the Q3-Q4 sales plan to target the stronger season. We're confident in the full-year number.' That's honest, has a root cause, and has a management response. The board doesn't lose confidence in management that misses and explains; they lose confidence in management that surprises them."

## Audit Log
All board packages retained by entity, meeting date, and version. Matt Mathison review records retained. Distribution date records retained. Board minutes retained. Board action items and completion dates retained. Board decision records retained (what was asked; what was decided; who voted).

## Deprecation
Retire when MBL has a General Counsel or Chief of Staff who manages board governance — with Matt Mathison retaining his role as the primary management communicator to the board and Dr. Lewis retaining the AI strategy update and THRIVE flag inputs.
