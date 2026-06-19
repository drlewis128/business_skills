---
name: ops-quarterly-review
description: "Coordinate and run the MBL Partners Quarterly Business Review (QBR) across all portfolio entities. Use when the user says 'QBR', 'quarterly review', 'quarterly business review', 'quarterly business reviews', 'quarterly review prep', 'QBR prep', 'QBR preparation', 'prepare the QBR', 'QBR deck', 'QBR agenda', 'QBR meeting', 'QBR coordination', 'run the QBR', 'schedule the QBR', 'quarterly entity review', 'quarterly portfolio review', 'quarterly entity check-in', 'end of quarter review', 'quarter-end review', 'Q1 review', 'Q2 review', 'Q3 review', 'Q4 review', 'quarterly scorecard', 'quarterly debrief', 'quarterly report to Matt', 'quarterly report', 'quarterly results', 'quarterly performance', 'entity performance review', 'portfolio quarterly', or 'quarterly debrief meeting'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|all>] [--quarter <q1|q2|q3|q4>] [--year <YYYY>] [--action <schedule|prep|run|debrief|distribute>] [--focus <okr|kpi|financial|strategic|all>]"
---

# Ops Quarterly Review

Coordinate and run the MBL Partners Quarterly Business Review — preparing entity CEOs to present their Q results to Matt Mathison, validating the financial and operational data, facilitating the structured 2-hour meeting, capturing decisions and next quarter priorities, and distributing the QBR summary package. The QBR is the highest-signal meeting in the portfolio operating cadence: it's the only time Matt Mathison has all entity CEOs in one room, hears unfiltered updates directly from the operators, and sets the capital allocation and priority agenda for the next quarter.

## When to Use
- Within 45 days of each quarter-end (run the QBR)
- 3 weeks before the QBR (send pre-work instructions to entity CEOs)
- After the QBR (distribute decision summary; update Monday.com; push actions to tracker)

## Quarterly Review Framework

```
QBR ANNUAL SCHEDULE:

  Q1 Review (Jan-March): held by May 15
  Q2 Review (Apr-June): held by August 15
  Q3 Review (Jul-Sep): held by November 15
  Q4 Review (Oct-Dec): held in January with Annual Strategy Session

QBR PREPARATION TIMELINE (3 weeks before meeting):

  T-21 DAYS: Dr. Lewis sends prep instructions to entity CEOs
    Instructions include:
    - QBR date/time/format (video call or in-person)
    - Deck template link (SharePoint → Operations → QBR → Template)
    - Pre-work deadline (T-5 days)
    - Required sections (OKR scorecard; KPI trends; wins; blockers; asks)
    - Financial data to include (Dr. Lewis provides validated financial summary)
    
  T-14 DAYS: Dr. Lewis prepares:
    - Entity-by-entity financial summary (from fin-entity-consolidation)
    - OKR scorecard validation (from ops-okr-program)
    - KPI status analysis (trailing 3 quarters for trend visibility)
    - Capital deployment status (from fin-deal-financial-model / capex tracker)
    
  T-5 DAYS: Entity CEO pre-work deadline
    Dr. Lewis reviews all decks on receipt:
    - Financial accuracy check (revenue; EBITDA; margins match QuickBooks)
    - OKR score validation (match scores to data, not narrative)
    - Flag any metric that appears inflated or cherry-picked
    If deck has errors → Dr. Lewis corrects and returns to CEO with explanation
    
  T-3 DAYS: Dr. Lewis sends Matt Mathison pre-read
    Format: 2-page briefing (not the full deck)
    Content: entity-by-entity highlights; what Matt should probe; key decisions
    
  T-1 DAY: Final logistics confirmation
    Technology (video link; screen share access)
    Order of presentation confirmed
    Timing buffer built in (20 min per entity; 30 min portfolio wrap-up; 10 min buffer)

QBR MEETING STRUCTURE (120 min):

  PRE-MEETING (Dr. Lewis):
    Load all entity decks
    Have financial data ready for reference
    Have OKR scorecard and KPI trend data open
    
  OPENING (Matt Mathison — 5 min):
    Matt sets the tone; 1-2 priorities for today's review
    
  ENTITY PRESENTATIONS (20 min each; 3 entities = 60 min):
    Min 0-5: OKR scorecard — what was promised; what was delivered; honest score
    Min 5-10: KPI trend — Green/Yellow/Red status with root cause for any Yellow/Red
    Min 10-13: Top 3 wins this quarter (brief; specific)
    Min 13-18: Top 3 blockers for next quarter + specific ask of Matt
    Min 18-20: Matt's questions / response
    
  PORTFOLIO WRAP-UP (30 min; Matt Mathison leads):
    Min 0-10: Cross-entity themes (what patterns do we see across all 3?)
    Min 10-20: Capital allocation for next quarter (what gets funded?)
    Min 20-25: Strategic priorities for next quarter (Matt's 3 priorities)
    Min 25-30: Decisions made; actions assigned; next QBR date confirmed
    
  CLOSING (Dr. Lewis — 5 min):
    Decision log read back: "[Entity] will [action] by [date]"
    Any follow-up commitments from Matt read back
    Next QBR date confirmed

POST-QBR (within 24 hours):

  Dr. Lewis sends QBR Summary Package to all participants:
    - Decision log (who committed to what by when)
    - Q+1 priorities by entity
    - Capital allocation for Q+1
    - Next QBR date
    
  Monday.com updated:
    - Q+1 priorities loaded to entity boards
    - Actions from QBR added to ops-action-tracker
    - Portfolio Oversight board updated with Matt's Q+1 priorities
    
  Matt Mathison receives separate 1-page executive summary within 24 hours

ENTITY CEO QBR DECK TEMPLATE STRUCTURE:

  Slide 1: Entity name + Q[N] [Year] + presenter
  Slide 2: OKR Scorecard (table: O + KR + target + actual + score)
  Slide 3: KPI Dashboard (3-quarter trend; RAG status)
  Slide 4: Top 3 Wins (brief; specific; customer or financial validation)
  Slide 5: Top 3 Blockers + Ask of Matt (specific; actionable)
  Slide 6: Q+1 Priorities (the 3 things we will focus on next quarter)
```

## Output Format

```markdown
# QBR Summary Package — Q[N] [Year]
**Meeting date:** [Date] | **Facilitator:** Dr. Lewis | **For:** All participants

---

## Decision Log

| Entity | Decision / Commitment | Owner | Due |
|--------|----------------------|-------|-----|
| Allevio | [CEO] to present employer pipeline to [Company] | Allevio CEO | [Date] |
| HIVE | Pause new well development pending WTI recovery | Dr. Lewis + HIVE CEO | Ongoing |
| MBL | Dr. Lewis to model Q4 capital allocation options | Dr. Lewis | [Date] |

---

## Q+1 Priorities by Entity

**Allevio:** (1) [Priority 1]; (2) [Priority 2]; (3) [Priority 3]
**HIVE:** (1) [Priority 1]; (2) [Priority 2]; (3) [Priority 3]
**Column6:** (1) [Priority 1]; (2) [Priority 2]; (3) [Priority 3]

---

## Matt Mathison's Q+1 Portfolio Priorities
1. [Priority 1]
2. [Priority 2]
3. [Priority 3]

---

## Q+1 Capital Allocation
- Allevio: $[X] for [purpose]
- HIVE: $[X] for [purpose] (subject to WTI trigger)
- Column6: $[X] for [purpose]

---

**Next QBR:** [Date]
```

## Output Contract
- Pre-work validation is mandatory before the QBR — Dr. Lewis does not let a CEO present financial data to Matt that contradicts the QuickBooks records; every financial metric in the QBR deck is validated against the source system before the meeting; corrections are made before the meeting, not during it; a CEO who discovers their data was wrong in front of Matt has an embarrassing moment; Dr. Lewis protects the entity CEOs by catching errors in advance; this is not gatekeeping — it is quality control
- Decisions are captured in real time — Dr. Lewis maintains a live decision log during the QBR; if the meeting ends without a clearly documented decision, it didn't happen; the decision log is read back at the close of every entity's section; any commitment that is not explicit ("we'll think about it") is converted to an explicit question before moving on: "To be clear: is this a yes, a no, or a specific date by which you'll decide?"
- The QBR package is delivered within 24 hours — the meeting's value decays rapidly; entity CEOs who walk out without a written summary of decisions and next priorities will forget details by Tuesday; Dr. Lewis delivers the QBR summary by end of day after the meeting; this reinforces that decisions made in the meeting are real and tracked
- HITL required: Matt Mathison's pre-read is delivered 3 days before the QBR — not 1 day; Matt needs time to review; any deck that Matt cannot review before the meeting gets a 30-second verbal summary from Dr. Lewis at the start of that entity's section; entity CEOs approve their own deck before Dr. Lewis shares with Matt (no edits to CEO decks without CEO consent — corrections only, with explanation); the capital allocation decisions from the QBR wrap-up are Matt's alone; Dr. Lewis prepares the analysis, Matt decides; entity CEO asks of Matt are addressed directly in the meeting — not deferred and not silently ignored

## System Dependencies
- **Reads from:** ops-okr-program (OKR scorecards validate entity self-scores); fin-entity-consolidation (financial data for deck validation); fin-kpi-dashboard (KPI trend data — 3 quarters); fin-cash-flow-planner (capital availability for Q+1 allocation); ops-action-tracker (open actions reviewed at QBR)
- **Writes to:** QBR decks (SharePoint → Operations → QBR → Q[N]-[YYYY]); QBR summary package (distributed to all participants); ops-action-tracker (QBR commitments become tracked actions); ops-monday-manager (Q+1 priorities loaded to entity boards); Matt Mathison executive summary (1-pager, 24 hours post-QBR)
- **HITL Required:** Matt Mathison pre-read delivered 3 days before; entity CEO deck approval before Matt distribution; capital allocation — Matt decides; Matt's Q+1 portfolio priorities — Matt sets in the meeting; any entity CEO "ask" that requires a decision → Matt's call in the meeting; Dr. Lewis reads decision log back to the group before meeting ends

## Test Cases
1. **Golden path:** Q2 QBR scheduled for August 10. July 20: Dr. Lewis sends prep instructions to all 3 entity CEOs. August 5: Allevio and Column6 decks received (on time). HIVE deck arrives August 6 (1 day late but still within review window). Dr. Lewis validates all 3 decks — finds Column6 gross margin calculation uses an incorrect formula (includes media cost wrong line item — overstates margin by 4 pts). Dr. Lewis corrects the slide and sends to Column6 CEO: "I found a formula error in your margin calculation. I've corrected it — actual gross margin is 41%, not 45%. Here's the corrected slide. This is material — please confirm you'd like to use the corrected figure." CEO confirms. August 7: Matt Mathison receives 2-page pre-read. August 10: QBR runs on time. Decision log has 8 items. Summary package delivered to all participants by 5 PM August 10.
2. **Edge case:** An entity CEO requests 30 minutes instead of 20 for their QBR section → Dr. Lewis: "I understand the concern — you have a lot to cover. The challenge: if all 3 entities take 30 minutes, we lose the portfolio wrap-up entirely, which is where Matt makes the capital allocation decisions. Options: (1) keep 20 minutes and I'll help you prioritize to the highest-signal content — I'll work with you on the deck; (2) if you have a specific issue that needs more time, we can schedule a separate call with Matt before the QBR to address it; (3) I can ask Matt if he's willing to extend the meeting to 2.5 hours. Which approach do you prefer?"
3. **Adversarial:** An entity CEO wants to present without using the QBR template (they have their own format) → Dr. Lewis: "I'm not going to override your format preference without a good reason. The template structure exists because Matt has asked for OKR scorecard → KPI trends → wins → blockers → asks — in that order — so he can compare entities consistently. If you present in a different order, Matt will have to work harder to compare your results to the other entities. My recommendation: use the template for the structure (6 sections; same order) and put your content and your visual style into those sections. That gives Matt the consistent structure he needs while giving you full creative control on the content. Can we work from that compromise?"

## Audit Log
QBR scheduling records retained. Pre-work delivery dates and validation records retained. Deck correction history retained (what was found; what was corrected; CEO confirmation). Decision logs retained. QBR summary packages retained. Post-QBR action completion records retained. Capital allocation decisions retained.

## Deprecation
The QBR structure is reviewed annually (at the Annual Strategy Session) to ensure it's producing the right signal. The format may evolve as entities mature and as Matt Mathison's preferences for information presentation change.
