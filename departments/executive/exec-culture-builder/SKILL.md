---
name: exec-culture-builder
description: "Build and assess organizational culture for MBL Partners and portfolio companies using the THRIVE framework. Use when the user says 'culture', 'company culture', 'build the culture', 'assess the culture', 'culture audit', 'culture assessment', 'THRIVE culture', 'THRIVE values', 'culture health', 'culture problems', 'team culture', 'culture initiative', 'values alignment', 'culture score', 'cultural fit', 'culture interview', 'culture onboarding', 'reinforce the values', 'live the values', 'culture gap', 'culture change', 'culture building', 'values-based culture', 'embed the values', 'what is our culture', 'how do we reinforce the culture', 'culture playbook', or 'build THRIVE into the team'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--action <assess|build|onboarding|recognition|debrief>] [--focus <T|H|R|I|V|E|all>]"
---

# Exec Culture Builder

Build and assess organizational culture for MBL Partners and portfolio companies using the THRIVE framework — translating values from wall-decoration to operating behavior through specific rituals, recognition systems, hiring standards, and leadership modeling. Culture is not what you say your values are; it is the pattern of behaviors your team observes in their leaders and adopts as normal. A THRIVE culture is built by thousands of small, specific moments: a leader who owns a miss publicly (Truth), a team member who surfaces a problem before being asked (Hustle), a CEO who tells a difficult employee the truth (Respect), a decision that didn't require an exception to the Integrity standard (Integrity), a resource allocation that demonstrably created value (Value), and a work environment where high performers choose to stay (Enjoy).

## When to Use
- A portfolio company is being onboarded into MBL and needs THRIVE embedded
- Quarterly THRIVE culture assessment (for exec-board-communication board package)
- Annual all-hands recognition program (exec-all-hands-planner inputs)
- A leadership team shows a pattern of behavior that conflicts with THRIVE
- A new leader joins and needs THRIVE orientation as part of exec-ceo-hiring onboarding

## Culture Building Framework

```
THRIVE CULTURE SYSTEM — 5 LEVERS:

  LEVER 1 — HIRING FOR THRIVE (exec-ceo-hiring integration):
    Culture is built at the hiring stage.
    Every interview process includes THRIVE behavioral questions.
    INTEGRITY failure in hiring = automatic disqualification.
    Culture fit is evaluated as: "Would this person's default behavior reinforce or erode THRIVE?"
    NOT "Would I enjoy having a beer with this person?" — cultural fit is behavioral, not social.
    
  LEVER 2 — RECOGNITION THAT REINFORCES THRIVE:
    Recognition must be specific and THRIVE-labeled.
    Generic recognition ("good job") does not reinforce THRIVE.
    Specific recognition ("Marcus explained a landowner's royalty calculation for 3 hours —
      that's Respect in action") reinforces the specific behavior and the specific value.
    Recognition cadences:
      Weekly: Slack/Teams shoutout from any team member (democratic)
      Monthly: Accountability meeting callout (from leadership)
      Quarterly: All-hands recognition (curated by Dr. Lewis + CEO; exec-all-hands-planner)
      Annual: THRIVE Award (one per entity; Matt Mathison presents)
      
  LEVER 3 — DECISION-MAKING AS CULTURE:
    Every decision by leadership is a culture signal.
    THRIVE decisions are visible and narrated: "We're choosing Option A because it creates
      more Value for the employer groups — that's why."
    When INTEGRITY is under pressure (a vendor offers a kickback; a financial shortcut is available):
      The decision is made publicly and narrated: "We chose not to do X because it conflicts
      with our Integrity standard — here's why that matters."
    Matt Mathison personally models each THRIVE value in at least one visible action per quarter.
    
  LEVER 4 — CULTURE ONBOARDING:
    Every new employee at every level receives THRIVE orientation in their first week.
    Not a slide deck — a conversation with their manager using real examples from the company.
    "Tell me about a time someone at [entity] demonstrated Truth. Then tell me about a time
      when you've demonstrated Truth in your own career."
    New leaders (CEO, VP) receive an extended THRIVE orientation from Dr. Lewis personally.
    
  LEVER 5 — CULTURE ACCOUNTABILITY:
    Behaviors that contradict THRIVE are addressed, not tolerated.
    "High performer, wrong values" = exit. THRIVE is not negotiable for strong performers.
    The CEO who is excellent at operations but has an Integrity gap is not compatible with MBL.
    This is the hardest lever to pull — Dr. Lewis frames it for Matt Mathison when needed.

THRIVE CULTURE ASSESSMENT (Quarterly):

  For each THRIVE dimension, assess across the entity:
  
    Observable evidence (GREEN):
      Truth: Leaders surface bad news before being asked; forecasts are updated proactively
      Hustle: The team ships on time; decisions are made at the right level without delay
      Respect: Candid feedback is given directly; conflict is resolved, not avoided
      Integrity: No behavioral gaps discovered in the quarter; commitments are honored
      Value: Resource allocation is ROI-driven; waste is identified and eliminated
      Enjoy: Retention of A-players; leaders are energized, not depleted
      
    Observable concern (YELLOW):
      [Specific behavior pattern that represents a weakening of the value]
      
    Breach signal (RED):
      [Specific incident or pattern that represents a violation of the value]
      INTEGRITY RED = immediate Matt Mathison conversation regardless of who is involved.

ANNUAL THRIVE AWARD:

  One per entity; presented by Matt Mathison at the annual all-hands.
  Criteria: the team member (any level) who most exemplified THRIVE as a whole across the year.
  Nominated by: the full team (anonymous nominations)
  Selected by: Matt Mathison + entity CEO + Dr. Lewis
  Award: specific recognition + meaningful reward (meaningful = worth talking about 12 months later)
  Matt Mathison delivers the award in person or on video — never delegated to a certificate.
```

## Output Format

```markdown
# THRIVE Culture Assessment — [Entity] — [Quarter/Year]
**Assessed by:** Dr. Lewis | **Reviewed by:** Matt Mathison

---

## Culture Health Summary

| Dimension | Health | Key signal |
|-----------|--------|-----------|
| T — Truth | 🟢/🟡/🔴 | [One specific observable behavior] |
| H — Hustle | 🟢/🟡/🔴 | [Observable signal] |
| R — Respect | 🟢/🟡/🔴 | [Observable signal] |
| I — Integrity | 🟢/🟡/🔴 | [Observable signal] |
| V — Value | 🟢/🟡/🔴 | [Observable signal] |
| E — Enjoy | 🟢/🟡/🔴 | [Observable signal — retention; engagement] |

**Overall culture health:** [GREEN / YELLOW / RED]

---

## Recognition — This Quarter

| Person | Entity | Behavior | THRIVE value |
|--------|--------|---------|-------------|
| [Name] | [Entity] | [Specific behavior] | [Letter] |

---

## Culture Concern (if any)

**Dimension:** [T/H/R/I/V/E]
**Observable pattern:** [What Dr. Lewis observed — specific, not editorialized]
**Recommended action:** [What to do about it]

---

## THRIVE Culture Actions (Next Quarter)

| Action | Owner | Target |
|--------|-------|--------|
| [Specific culture-building action] | [Name] | [Outcome measure] |
```

## Output Contract
- Observable behaviors, not adjectives — "our culture is strong" is not a culture assessment; "in Q3, three of our five leaders surfaced a performance concern to Matt Mathison before being asked — that's Truth in action" is a culture assessment; Dr. Lewis's THRIVE culture assessments use specific, observable behaviors and incidents as evidence, not characterizations; if the evidence isn't specific, the assessment is opinion, not assessment
- INTEGRITY RED is an immediate Matt Mathison conversation — any INTEGRITY breach or signal (a leader who appears to have misrepresented data, violated a commitment to an LP, concealed a conflict of interest, or engaged in a discriminatory or harassing behavior) triggers an immediate Dr. Lewis → Matt Mathison conversation; Dr. Lewis does not wait for the quarterly assessment to flag an INTEGRITY concern; INTEGRITY RED has no grace period or observation window
- Culture is not HR's job — culture is built by what Matt Mathison and the entity CEOs do, not what they say; Dr. Lewis's role is to: (1) observe and assess THRIVE signal from Krista transcripts, portfolio review data, and direct observation; (2) prepare the quarterly assessment; (3) curate recognition; (4) frame difficult culture conversations for Matt Mathison; the actual culture building happens in Matt's daily actions and decisions — Dr. Lewis is the intelligence and support function, not the culture owner
- HITL required: Matt Mathison reviews the quarterly culture assessment; any INTEGRITY RED is an immediate Matt Mathison conversation; Matt Mathison selects and presents the annual THRIVE Award personally; executive culture assessments (entity CEO level) are reviewed by Matt before being shared with the entity CEO; any recommendation to address a THRIVE breach by a leader requires Matt Mathison approval before action is taken

## System Dependencies
- **Reads from:** exec-leadership-coaching (THRIVE development data for each leader); exec-all-hands-planner (recognition inputs for all-hands recognition section); exec-team-accountability (accountability behavior — signals for Truth and Integrity dimensions); Krista meeting transcripts (observable leadership behaviors — the raw signal for culture assessment); exec-ceo-hiring (THRIVE hiring results — are we hiring THRIVE-aligned people?); exec-1-on-1-framework (1-on-1 culture signals from individual conversations)
- **Writes to:** THRIVE culture assessment (SharePoint → ExecutiveSupport → Culture → [Entity] → [YYYY]-Q[N]); exec-board-communication (culture health summary for board package); exec-all-hands-planner (recognition data for all-hands recognition section); exec-leadership-coaching (culture gaps inform coaching focus); exec-performance-management (THRIVE breaches that require performance action)
- **HITL Required:** Matt Mathison reviews quarterly assessments; INTEGRITY RED triggers immediate Matt conversation; Matt selects and presents the THRIVE Award; executive culture assessments reviewed by Matt before sharing; THRIVE breach actions require Matt authorization

## Test Cases
1. **Golden path:** Q3 culture assessment; Dr. Lewis reviews 4 Krista transcripts, recognition nominations (12 received), and the accountability review data; Allevio: Truth 🟢 (CEO surfaced claim ratio concern proactively in July), Hustle 🟢, Respect 🟡 (one pattern: team leads are avoiding a difficult conversation about an underperformer), Integrity 🟢, Value 🟢, Enjoy 🟢 (0 A-player departures in Q3); Recognition highlight: Allevio claims admin who caught a billing error that would have cost an employer group $12K — "that's both Truth and Value"; YELLOW concern: Respect gap around the underperformer conversation; recommendation: "Dr. Lewis coaches the Allevio CEO on how to have the conversation with the underperformer's manager by Oct 15." Matt: "Agreed. The Respect gap is the one to watch."
2. **Edge case:** No THRIVE recognition nominations arrive from the team (nomination process exists but team isn't participating) → Dr. Lewis: "No nominations this quarter. That's a signal in itself — either the recognition culture isn't embedded yet, or the team doesn't understand the process, or they don't believe nominations will matter. I recommend we test whether it's process or culture: I'll send one specific example of what a THRIVE recognition looks like, with a 5-day deadline and one specific request for a nomination from each team lead. If we still get nothing after that, it's a culture conversation about whether the team believes recognition is real at this entity." Matt: "Do it."
3. **Adversarial:** An entity CEO who is a strong performer is discovered to have misrepresented a deal outcome to Matt Mathison (said a deal was closed; it was actually still pending) → Dr. Lewis: "This is an INTEGRITY RED. I need to have a conversation with you today — not next week. What I observed: [CEO name] told you the [deal] was closed on [date]. It was still in final documentation. That's a gap between what they said and what was true. Before I assess consequences, I want to understand: was this intentional, or was there a miscommunication about what 'closed' means? I'll investigate before we decide on the response. But I can't let this go without addressing it directly, regardless of their operational performance." Matt: "Agreed. Investigate and come back to me by Thursday."

## Audit Log
All THRIVE culture assessments retained by entity and quarter. Recognition nominations and callouts retained (all nominees; all callouts). Annual THRIVE Award records retained. INTEGRITY RED incidents retained (what was observed; Matt notification; resolution). Culture behavior change records retained (did the YELLOW signal resolve? How?). Matt Mathison review records retained.

## Deprecation
Retire when each entity has a dedicated People or Culture function who manages THRIVE embedding — with Dr. Lewis retaining the portfolio-level THRIVE assessment and Matt Mathison retaining the THRIVE Award selection.
