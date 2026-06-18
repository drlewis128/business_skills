---
name: exec-time-audit
description: "Audit how Dr. Lewis and Matt Mathison are spending their time and realign against highest-leverage activities. Use when the user says 'time audit', 'how am I spending my time', 'time allocation', 'am I focused on the right things', 'time review', 'audit my calendar', 'calendar review', 'how should I be spending my time', 'where is my time going', 'leverage audit', 'high-leverage activities', 'low-leverage activities', 'time management', 'time optimization', 'where should I focus', 'what should I stop doing', 'what should I delegate', 'what should I eliminate', 'time trap', 'time waste', 'where am I wasting time', 'what is the highest-leverage use of my time', 'quarterly time review', 'annual time review', 'calendar audit', or 'prioritize my time'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--person <DrLewis|MattMathison>] [--period <week|month|quarter>] [--focus <eliminate|delegate|optimize|double-down>]"
---

# Exec Time Audit

Audit how Dr. Lewis and Matt Mathison are spending their time and realign against the highest-leverage activities — systematically reviewing calendar and activity patterns to identify where time is being invested well, where it is being wasted, and where it could be redirected to create more value for the MBL portfolio. Time is the scarcest resource in a PE-backed portfolio company environment: there is always more to do than there are hours, and the difference between high-performing and average PE operators is not effort — it is where the effort goes.

## When to Use
- Quarterly time audit (how did the last 90 days compare to intended time allocation?)
- Calendar is feeling overwhelming or reactive
- A new initiative or role change requires reassessing time allocation
- Matt Mathison or Dr. Lewis feels like they're busy but not productive
- Annual planning: what time do we intend to spend where in the coming year?

## Time Audit Framework

```
MBL TIME ALLOCATION MODEL:

  DR. LEWIS time model (Principal Systems Engineer + Director of AI Strategy):
  
    Target allocation:
      40% — AI system development and deployment (OpenFang; Krista integration; Claude applications)
      25% — Executive support function (CEO briefing; meeting intelligence; action tracking)
      20% — Portfolio operations support (entity CEO interactions; portfolio review; VCPs)
      10% — Deal support (thesis building; integration management; technology evaluation)
      5%  — Admin and overhead (scheduling; miscellaneous)
      
    HIGH-LEVERAGE activities for Dr. Lewis:
      □ Building AI capabilities that save time across the portfolio (1 hour → 100 hours saved)
      □ Preparing intelligence that enables Matt Mathison to make better decisions faster
      □ Catching portfolio issues early (before they become crises)
      □ Designing processes that run without constant Dr. Lewis involvement
      
    LOW-LEVERAGE activities to eliminate or delegate:
      □ Manual data gathering that AI/Krista should handle
      □ Routine status updates that should be automated
      □ Administrative scheduling that could be handled differently
      □ Meetings where Dr. Lewis's presence is not decision-critical

  MATT MATHISON time model (Managing Partner):
  
    Target allocation:
      35% — Portfolio company leadership (entity CEO 1-on-1s; board sessions; stakeholder management)
      25% — LP and investor relations (calls; reports; events)
      20% — Deal activity (deal evaluation; LOI; board diligence)
      10% — MBL strategy and planning (annual planning; organizational development)
      10% — Personal development and industry positioning
      
    HIGH-LEVERAGE activities for Matt:
      □ Tier 1 LP relationship calls (no substitute for Matt's personal involvement)
      □ Entity CEO 1-on-1s (exec-1-on-1-framework; culture and accountability)
      □ Deal decisions (GO/NO GO; LOI approval; buyer selection)
      □ Board leadership (governance; strategic guidance)
      
    LOW-LEVERAGE activities to eliminate or delegate:
      □ Administrative details that Dr. Lewis can handle
      □ Meetings that could be accomplished via Dr. Lewis representation
      □ Information gathering that Krista/AI can handle
      □ Internal status updates that could be replaced with exec-ceo-briefing

TIME AUDIT PROCESS:

  STEP 1 — CALENDAR REVIEW (1 week of data minimum; 1 month preferred):
    Pull the calendar for the audit period.
    Categorize each time block: which allocation bucket does it fall in?
    Calculate actual % time in each bucket.
    
  STEP 2 — COMPARE TO TARGET:
    Where is actual allocation significantly different from target?
    Is the deviation intentional (a sprint period) or systematic (a time trap)?
    
  STEP 3 — LEVERAGE ASSESSMENT:
    For the top 5 time consumers: what is the leverage?
    HIGH leverage: this activity creates compounding value; Dr. Lewis or Matt's involvement
      is irreplaceable and the outcome directly improves portfolio or AI infrastructure
    MEDIUM leverage: important but could be done less frequently or by someone else
    LOW leverage: this activity creates little lasting value; could be eliminated or delegated
    
  STEP 4 — RECOMMENDATIONS:
    ELIMINATE: activities that create no lasting value (recurring meetings with no clear outcome;
      status updates that nobody reads; administrative tasks that technology could handle)
    DELEGATE: activities that someone else could handle (with exec-delegation-framework)
    OPTIMIZE: activities that are high-leverage but inefficient (could be done in less time
      with better preparation or fewer touch points)
    DOUBLE DOWN: high-leverage activities that are under-allocated relative to the target
    
  STEP 5 — CALENDAR REDESIGN:
    Block high-leverage activities on the calendar first.
    Create recurring protection for high-leverage activities (e.g., 4 hours every Tuesday for
      deep AI work — no meetings; calendar blocked)
    Remove recurring meetings that consistently score LOW leverage.
```

## Output Format

```markdown
# Time Audit — [Dr. Lewis / Matt Mathison] — [Period]
**Audit scope:** [Date range] | **Calendar reviewed:** [N] weeks

---

## Actual vs. Target Time Allocation

| Category | Target % | Actual % | Delta | Leverage |
|---------|---------|---------|-------|---------|
| [Category] | [Target] | [Actual] | +/- [N]% | HIGH/MED/LOW |

---

## Top 5 Time Consumers

| Activity | Time spent | Leverage | Recommendation |
|---------|-----------|---------|----------------|
| [Activity] | [Hrs/wk] | HIGH/MED/LOW | [Eliminate/Delegate/Optimize/Double down] |

---

## Recommendations

**Eliminate:**
- [Activity] — [Why; how to stop it]

**Delegate:**
- [Activity] — [Who should own this; using exec-delegation-framework]

**Optimize:**
- [Activity] — [Specific change that makes it more efficient]

**Double Down:**
- [Activity] — [Why this deserves more time; how to protect it on the calendar]

---

## Calendar Redesign (proposed)

[Specific changes to recurring calendar blocks — what's added; what's removed; what's protected]
```

## Output Contract
- Quarterly audit cadence is the minimum — a time audit done once a year catches drift after 12 months of accumulated low-leverage commitments; quarterly catches it after 3 months; Dr. Lewis conducts a quarterly time audit for both himself and prepares one for Matt Mathison's optional review; the audit takes about 2 hours to complete (1 hour of calendar review + 1 hour of analysis and recommendations)
- High-leverage activities get calendar protection first — the highest-leverage activities are protected by blocking calendar time before lower-priority requests fill the week; for Dr. Lewis, deep AI development work gets 4-hour blocks (no meeting fragmentation); for Matt, LP calls and entity CEO 1-on-1s are never moved for low-priority requests; the calendar reflects priorities, not just availability
- Leverage, not importance — "important" is a label that accumulates; over time, everything feels important; leverage cuts through this: a 1-hour activity that creates value lasting 2 years is high-leverage; a 4-hour meeting that produces a decision that could have been made in a 15-minute call is low-leverage regardless of how important the topic is; Dr. Lewis applies the leverage lens rigorously even to activities that feel important
- HITL required: the time audit for Dr. Lewis is self-executed; the time audit for Matt Mathison is prepared by Dr. Lewis and presented for Matt's review — not imposed; Matt decides what to change on his calendar; Dr. Lewis makes the recommendation and implements the Dr. Lewis calendar changes immediately; any calendar change that affects entity CEO or LP relationship cadences is reviewed with Matt before implementation

## System Dependencies
- **Reads from:** Calendar data (Matt Mathison and Dr. Lewis calendars via Microsoft 365); exec-action-tracker (what is Dr. Lewis spending time on? Action item patterns reveal time allocation); exec-ceo-briefing (preparation time is a real cost that should be audited); exec-weekly-briefing (intelligence preparation time); Krista meeting transcripts (what meetings are happening? Duration?)
- **Writes to:** Time audit report (SharePoint → ExecutiveSupport → TimeAudits → [YYYY]-Q[N]); calendar protection blocks (Dr. Lewis implements immediately; Matt's changes are Matt's decision); exec-delegation-framework (activities flagged for delegation are handed off through the delegation framework); exec-ceo-briefing (time audit recommendations that affect the CEO briefing cadence)
- **HITL Required:** Dr. Lewis self-executes and self-implements the Dr. Lewis time audit; Matt Mathison time audit is prepared by Dr. Lewis and presented for review — Matt decides what to change; calendar changes that affect entity CEO or LP relationship cadences are reviewed with Matt; Dr. Lewis does not cancel or reschedule Matt's meetings without Matt's explicit direction

## Test Cases
1. **Golden path:** Q3 time audit for Dr. Lewis; calendar review: 40% AI development (ON TARGET), 35% executive support (OVER — target 25%), 15% portfolio operations (UNDER — target 20%), 7% deal support (UNDER), 3% admin. Top time consumer: exec-partner-email-builder workflow (avg 3.5 hrs/week — partially manual due to Krista gaps). Analysis: The browser fallback workflow is a LOW-leverage time sink — manual work that Krista should automate. Recommendation: "Double down on resolving Krista gaps 2 and 4 this quarter — eliminating the browser fallback saves ~3 hours/week, which is 12 hours/month that can move to AI development." Matt: "Agree. Prioritize the Krista gap resolution."
2. **Edge case:** Matt's calendar review shows 60% of time in meetings vs. 35% target → Dr. Lewis: "You're in meetings 60% of the time versus our 35% target. Let me break it down: [category breakdown]. The biggest driver: recurring internal status meetings (8 hrs/week) that could be replaced by the CEO briefing (which I prepare; you read in 3 minutes). If we eliminate those 4 recurring meetings, you get back 8 hours per week — that's your LP call time and your deal evaluation time returning to you. Want me to recommend which meetings to cancel and how to inform the participants?" Matt: "Yes. Don't cancel the entity CEO 1-on-1s — those stay. Kill the others."
3. **Adversarial:** A team member schedules recurring meetings with Dr. Lewis that are status updates → Dr. Lewis review: "This recurring weekly call is 45 minutes of status that could be replaced by a shared Monday.com board I review every Monday. Recommendation: cancel this recurring meeting and replace it with a standing Monday.com review. If something urgent comes up, we use Slack. This recaptures 3 hours/month of time I'm currently spending on updates that don't require me to be present." Dr. Lewis implements after flagging to Matt for awareness (not approval, since this is within Dr. Lewis's own calendar).

## Audit Log
All time audit reports retained by person and quarter. Recommendations and implementations retained. Calendar protection blocks retained (what was blocked; when; whether it held). Delegation outcomes (activities flagged for delegation — were they successfully handed off?). Leverage reassessments (did the leverage assessment prove accurate?).

## Deprecation
Retire when Matt Mathison has a Chief of Staff who manages executive scheduling and time allocation — with Dr. Lewis retaining oversight of the AI development time allocation and using the time audit for Dr. Lewis's own productivity management.
