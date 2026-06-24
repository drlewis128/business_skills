---
name: thrive-value-alignment-checker
description: "value alignment checker, activity audit, is this creating value, meeting cost calculator THRIVE, calendar audit, value vs vanity work, how to kill low-value work, 80/20 analysis, entity work portfolios, Matt Mathison so what test, work alignment check, value check, work portfolio audit, time audit, high value work, low value work, eliminate low value work, work prioritization, value filter, check work value, audit activities, value vs busyness, value alignment, THRIVE value alignment, work value assessment"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[entity: MBL | Allevio | HIVE | Column6] [level: individual | team | entity] [output: audit | kill-list | prioritization]"
---

# THRIVE Value Alignment Checker

Busyness is not value. This skill audits individual, team, and entity-level work portfolios to distinguish activities that create measurable value from those that consume capacity without moving any needle that matters — then recommends what to kill, reduce, or restructure to free up execution bandwidth for high-value work.

## When to Use

- A team reports feeling overwhelmed but delivery rates are low — suggesting busyness without output
- An entity CEO needs to rationalize the meeting and project load before adding new initiatives
- Matt Mathison applies the "so what?" test to an ops deck item and the answer is unclear
- Dr. Lewis conducts a quarterly entity work portfolio review to assess value-to-capacity ratio

## Value Alignment Checker Framework

```
THRIVE VALUE ALIGNMENT CHECKER FRAMEWORK
==========================================

SECTION 1 — THE CORE VALUE QUESTION
  For every activity, meeting, project, or initiative, ask: "If we stopped doing this tomorrow, would any client, LP, patient, or stakeholder notice a negative change in value?"
  If NO: the activity is a candidate for elimination
  If YES: quantify the value it protects or creates — it earns its place in the portfolio
  No activity is immune from this question — including standing meetings, reports, and review processes

SECTION 2 — ACTIVITY AUDIT FRAMEWORK
  List all recurring activities, meetings, and projects consuming team time in the period
  For each: estimate weekly hours consumed (all participants combined)
  For each: apply the value question (YES / NO / UNCERTAIN)
  For YES items: estimate dollar value created or protected per hour invested
  For NO items: flag for elimination review
  For UNCERTAIN items: set a 30-day value measurement window before deciding

SECTION 3 — MEETING COST CALCULATOR (THRIVE APPLICATION)
  Meeting cost = (sum of participant hourly loaded rates) × meeting duration
  Add: preparation time cost (avg 30 min per participant for meetings >30 min)
  Compare to: value produced by the meeting (decision made? problem solved? commitment created?)
  Rule: a meeting that produces no decision, no commitment, and no actionable output = net value negative
  MBL standard: every meeting ends with a clear owner-action-date or it shouldn't have happened
  Standing meetings: reviewed quarterly for value-to-cost ratio; any with ratio <1 are restructured

SECTION 4 — CALENDAR AUDIT
  Individual calendar audit: categorize each recurring time block as VALUE | MAINTENANCE | LOW-VALUE
    VALUE: directly produces revenue, reduces cost, manages risk, or improves quality
    MAINTENANCE: necessary but not differentiating (compliance, basic ops, admin)
    LOW-VALUE: activities that consume time without clear output
  Target allocation: ≥60% VALUE | ≤30% MAINTENANCE | ≤10% LOW-VALUE
  If LOW-VALUE exceeds 10% of calendar: elimination review required
  Entity CEO calendar: Dr. Lewis reviews quarterly; >15% low-value triggers restructuring conversation

SECTION 5 — VALUE VS. VANITY WORK
  Vanity work: activities that look productive but don't create stakeholder value
  Examples:
    - Reports that nobody reads (check: when was the last decision made using this report?)
    - Meetings that discuss meetings (check: what decision could not be made asynchronously?)
    - Decks built for internal alignment that produce no alignment (check: did anything change after the deck?)
    - Projects driven by "it would be nice to have" not "we need this to achieve X"
  Matt Mathison "so what?" test: apply to every item in the ops deck — if there's no clear "so what," it's vanity

SECTION 6 — HOW TO KILL LOW-VALUE WORK
  Step 1: Identify the work's origin — who requested it? Why? Is that reason still valid?
  Step 2: Communicate the kill decision to all stakeholders with the value rationale
  Step 3: Set a sunset date — not a gradual wind-down (gradual = never actually killed)
  Step 4: Redirect the freed capacity to a specific high-value activity (not to "general bandwidth")
  Step 5: Document the decision — so it doesn't resurrect six months later as "we used to do this"
  Resistance to killing: flag as a culture signal — teams that can't kill work accumulate it

SECTION 7 — 80/20 ANALYSIS FOR ENTITY WORK PORTFOLIOS
  Identify the 20% of activities that produce 80% of the entity's measurable value
  Those activities get: priority scheduling, top talent assigned, resource priority
  The other 80% of activities are rationalized: killed, automated, delegated, or reduced
  80/20 review cadence: quarterly per entity
  Dr. Lewis conducts 80/20 review for MBL HoldCo; entity CEOs conduct for their entity; cross-entity review annually

SECTION 8 — ENTITY-SPECIFIC VALUE ALIGNMENT CONTEXT
  Allevio:   High-value = care delivery, authorization, member retention; Low-value = internal reporting loops, redundant care team check-ins
  HIVE:      High-value = production optimization, LP communication, field safety; Low-value = internal status meetings when field data is available in real time
  Column6:   High-value = campaign execution, client communication, margin management; Low-value = internal creative reviews that delay client delivery
  MBL HoldCo: High-value = deal sourcing, portfolio oversight, AI system building; Low-value = meetings that should be Krista.ai briefings
```

## Output Format

```markdown
## THRIVE Value Alignment Audit — [Entity/Individual] — [Date]

### Value Alignment Score: [HIGH | MODERATE | LOW]
### Calendar Allocation: [X% VALUE | X% MAINTENANCE | X% LOW-VALUE]

### Activity Inventory
| Activity | Weekly Hours | Value? | $ Value/Hour | Action |
|----------|-------------|--------|-------------|--------|
| [activity] | [hours] | [YES/NO/UNCERTAIN] | $[X] | [keep/kill/reduce/automate] |

### Meeting Cost Analysis
| Meeting | Frequency | Cost/Session | Output | Value Verdict |
|---------|-----------|-------------|--------|--------------|
| [meeting] | [weekly/monthly] | $[X] | [output type] | [VALUE | RESTRUCTURE | KILL] |

### Kill List (Immediate Elimination Candidates)
1. [Activity — rationale — capacity freed — redirect destination]
2. [Activity — rationale]
3. [Activity — rationale]

### 80/20 High-Value Activity Set
- [The 20% of activities producing 80% of entity value — confirmed and protected]

### Matt Mathison "So What?" Failures (Ops Deck Items)
- [Item with no clear value claim — flagged for removal or rework]

### Recommended Restructure: [What to kill, when, and what capacity goes where]
```

## Output Contract

- **The value question must be answered with stakeholder impact, not internal comfort.** "We need this meeting to stay aligned" is not a value claim — it is an internal coordination preference. The test is external: would a client, LP, patient, or regulator experience a negative change if this activity stopped? Internal alignment that doesn't produce external value is overhead, not strategy. The skill enforces the external stakeholder lens in every audit item.

- **The kill decision requires a sunset date and a capacity redirect — not a recommendation to "consider reducing."** Low-value work that is "reduced" without a specific end date and a specific reallocation plan continues to exist and occupy bandwidth. The skill requires both elements because organizations are biologically resistant to killing work — gradual wind-downs always drift back to full operation. A hard sunset date with documented capacity redirect is the only reliable mechanism.

- **The 80/20 analysis identifies the high-value 20% explicitly so it receives protection, not just so the low-value 80% can be cut.** The common mistake is to focus on elimination without explicitly protecting and resourcing the high-value activities. If the 20% is not named, prioritized, and resourced after the kill decisions, the capacity freed from low-value work gets immediately absorbed by the next round of low-value requests. Naming what to protect is as important as naming what to kill.

## System Dependencies

### Reads from
- M365 Calendar (via Krista.ai): recurring meeting inventory, participant lists, duration
- Monday.com: active project list, initiative status, weekly task load
- Financial systems: loaded cost rates for cost-per-meeting calculations

### Writes to
- Monday.com: kill list tasks with sunset dates and redirect assignments
- Krista.ai: value alignment summary for entity CEO and Dr. Lewis
- Ops deck: "so what?" resolved items; vanity items flagged for removal

### HITL Required
- Entity CEO approves all kill list items before sunset dates are communicated to team
- Dr. Lewis approves entity CEO calendar restructuring recommendations
- Matt Mathison notified when a standing ops deck item is recommended for removal

## Test Cases

1. **Golden path:** MBL HoldCo team calendar audit reveals that 22% of time is low-value — primarily two standing meetings with no documented outputs in the last 8 weeks. Skill generates a kill list for both meetings, calculates the capacity freed ($14,400/month in loaded cost), and recommends redirecting that time to two high-priority AI system development items. Entity CEO approves; sunset date set for next Monday.

2. **Edge case:** Allevio care team audit identifies a weekly clinical case review meeting that produces no documented decisions but is valued by the clinical team as a quality assurance touchpoint. Skill applies an UNCERTAIN classification, recommends a 30-day measurement window where each session documents at least one care decision made, and sets a review gate: if the value cannot be documented in 30 days, the meeting is restructured to a case-driven trigger format instead of weekly standing.

3. **Adversarial:** A Column6 manager pushes back on a kill recommendation for a weekly internal creative review, claiming it builds team culture. Skill acknowledges the culture claim, applies the translation framework (culture value → voluntary turnover reduction × cost-per-hire), and finds that the meeting's hourly cost ($3,200/week) exceeds any reasonable culture value estimate at current headcount. The skill maintains the kill recommendation, offers a 30-minute async alternative for culture function, and routes the disagreement to entity CEO for final decision.

## Audit Log

All value alignment audits, activity inventories, meeting cost analyses, kill decisions, sunset dates, and capacity redirect assignments are logged with entity, date, approver, and outcome. Activities that were killed and resurrected within 6 months are flagged as a culture signal in the next audit cycle. Dr. Lewis reviews kill decision logs quarterly to detect resurrection patterns.

## Deprecation

This skill is deprecated when value alignment is continuously monitored through Krista.ai's calendar intelligence and Monday.com's work portfolio analytics — automatically flagging low-value-to-cost activities and routing to entity CEOs for review without manual skill invocation. Deprecation requires Dr. Lewis confirmation that the automated system covers the "so what?" test, 80/20 identification, and kill recommendation workflow.
