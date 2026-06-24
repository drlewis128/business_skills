---
name: thrive-respect-standards
description: "respect standards, respect norms, THRIVE respect pillar, meeting respect, inclusive discussion, respect across hierarchy, no condescension, respect in disagreement, debate idea not person, HIVE field safety culture, Allevio patient respect, feedback delivery respect, 360 respect signals, HR complaint respect failure, MBL respect standards, team respect, respectful communication, respectful disagreement, psychological safety respect, respect culture, respect assessment, respect violations, respectful meetings, hierarchy respect, peer respect"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[entity: MBL | Allevio | HIVE | Column6] [dimension: meetings | hierarchy | disagreement | safety | patient | feedback]"
---

# THRIVE Respect Standards

Respect is the THRIVE pillar that makes Truth and Hustle sustainable. Without it, directness becomes cruelty and urgency becomes pressure. This skill defines, assesses, and enforces Respect norms across MBL entities — from how disagreement is conducted in meetings to how field safety culture is built at HIVE and patient dignity is protected at Allevio.

## When to Use

- An entity is experiencing interpersonal friction, condescension patterns, or HR complaints
- A meeting culture assessment reveals that certain voices are systematically excluded or talked over
- A manager's 360 feedback surfaces Respect as the lowest-scoring THRIVE pillar
- Dr. Lewis or Callie is building Respect pillar content for the THRIVE playbook

## Respect Standards Framework

```
THRIVE RESPECT STANDARDS FRAMEWORK
=====================================

SECTION 1 — RESPECT DEFINED (MBL OPERATING DEFINITION)
  Respect = treating every person's time, contribution, dignity, and perspective as having value
  Respect is not agreement — you can disagree with someone and fully respect them
  Respect is not deference — challenging an idea is not disrespect; dismissing a person is
  Respect failures are observable: interrupting, condescending, excluding, dismissing, humiliating

SECTION 2 — RESPECT IN MEETINGS
  Every person in the meeting has been included for a reason — honor that by hearing them
  No interrupting before a thought is complete
  Manager/leader speaks last on open questions — not first (prevents anchor bias, chills input)
  Inclusive discussion standard: no one person dominates >40% of discussion time
  Side conversations, phone checking, and multitasking during presentations = visible disrespect
  Entity CEO models meeting respect — team mirrors the leader's behavior

SECTION 3 — RESPECT ACROSS HIERARCHY
  No condescension — not from senior to junior, not from owner to operator, not from expert to generalist
  Junior team members' inputs are engaged on their merits, not their title
  "Because I said so" is not an acceptable explanation — reasoning must accompany decisions
  Matt Mathison standard: the managing partner is the most direct person in the room, not the most dismissive
  Hierarchy gives authority; it does not give permission to demean

SECTION 4 — RESPECT IN DISAGREEMENT
  Debate the idea; never the person
  Acceptable: "I think that analysis misses the impact on gross margin — here's why"
  Not acceptable: "That's a naive take" / "You clearly don't understand how this works"
  Passionate disagreement is welcome; personal attack triggers immediate Respect violation flag
  After disagreement: the losing position is acknowledged and the decision is supported
  Lingering resentment, passive undermining, or relitigating closed decisions = Respect failure

SECTION 5 — ENTITY-SPECIFIC RESPECT APPLICATIONS
  HIVE Partners:
    - Field safety culture = Respect + Integrity combined: workers must feel safe speaking up about hazards
    - No macho culture that silences safety concerns — Respect for field workers = safe operations
    - Crew lead language and behavior sets the Respect floor for the entire field crew
  Allevio:
    - Patient respect is a clinical and compliance obligation, not just a cultural preference
    - Patient dignity standards apply to all interactions: clinical, billing, care coordination
    - Member complaint about disrespect triggers clinical review + HR awareness within 24 hours
    - HIPAA respect dimension: member information discussed only in appropriate contexts
  Column6:
    - Client respect = honesty about campaign performance, not just polish in presentations
    - Internal team respect: creative work is critiqued on merit; not dismissed dismissively
  MBL HoldCo:
    - Cross-entity respect: entity CEOs treated as operating partners, not subordinates

SECTION 6 — FEEDBACK DELIVERY RESPECT RULES
  Feedback is behavioral and specific — never attacks identity, character, or inherent worth
  Tone is professional and constructive — not punitive, cold, or superior
  Receiving feedback respectfully = listening without interruption; asking clarifying questions
  Feedback given in anger or frustration = withheld until the giver resets

SECTION 7 — 360 RESPECT SIGNALS AND HR ESCALATION
  360 Respect dimension: rated 1-5 by peers, direct reports, and manager
  Score ≤2 from any subordinate group = automatic entity CEO review (not optional)
  HR complaint mentioning disrespect, condescension, or hostility = formal Respect incident
  Formal Respect incident: HR investigation + THRIVE pillar review within 10 business days
  Pattern (≥2 formal incidents): triggers PIP or separation depending on severity
```

## Output Format

```markdown
## THRIVE Respect Standards Assessment — [Entity] — [Date]

### Respect Health Signal: [GREEN | YELLOW | RED]

### Dimension Scores (from 360 data or observation)
| Dimension | Score (1-5) | Key Signal |
|-----------|------------|-----------|
| Meeting respect | [score] | [observation] |
| Hierarchy respect | [score] | [observation] |
| Disagreement conduct | [score] | [observation] |
| Entity-specific (field/patient/client) | [score] | [observation] |
| Feedback delivery | [score] | [observation] |

### Respect Incidents (Last 90 Days)
| Date | Type | Parties | Status |
|------|------|---------|--------|
| [date] | [HR complaint | 360 flag | observation] | [names/roles] | [open/resolved] |

### Recommended Actions
1. [Specific norm to clarify or reinforce]
2. [Manager coaching action]
3. [Entity-specific cultural intervention]

### Escalation: [None | HR | Entity CEO | Dr. Lewis | Matt Mathison]
```

## Output Contract

- **Respect violations are documented as observable behaviors, not emotional interpretations.** "She was rude to me" is not a documentable Respect violation; "He interrupted me three times and said my analysis was naive in front of the client team" is. The distinction matters because observable behavior can be investigated, addressed, and tracked — while emotional characterizations lead to he-said-she-said loops that erode both accountability and psychological safety. This skill enforces behavioral specificity in every assessment.

- **Entity-specific Respect applications are not optional customizations — they are operational requirements.** At HIVE, Respect for field workers is a safety obligation with direct OSHA and liability implications. At Allevio, patient dignity is a HIPAA-adjacent obligation with regulatory and clinical quality implications. Treating these as generic culture preferences would understate their urgency and miss the entity-specific consequence of a Respect failure in each context.

- **A 360 Respect score ≤2 from subordinates triggers entity CEO review, not just a note in the file.** This rule exists because the manager-subordinate power imbalance means that subordinate Respect concerns are the least likely to surface through normal channels. Subordinates who experience disrespect often stay silent to protect their job security. The 360 score is the mechanism that surfaces what meetings and skip-levels miss — and the automatic review rule ensures the data is acted on, not filed.

## System Dependencies

### Reads from
- 360 feedback system: Respect dimension scores by rater group
- HR system: formal complaint log, prior Respect incident history
- Krista.ai: meeting transcripts for language pattern analysis (interruption frequency, dismissive language flags)

### Writes to
- HR system: Respect incident documentation, 360 flag records
- Monday.com: manager coaching tasks, cultural intervention action items
- Krista.ai: entity CEO alert for ≤2 Respect score events

### HITL Required
- Entity CEO reviews all 360 Respect scores ≤2 before individual notification
- HR approves all formal Respect incident documentation before filing
- Dr. Lewis notified for any pattern (≥2 incidents) involving the same individual

## Test Cases

1. **Golden path:** A Column6 manager's 360 shows a Respect score of 2.1 from direct reports, primarily driven by feedback about interrupting and dismissing creative input. Skill generates a targeted Respect coaching plan focused on meeting facilitation behaviors, schedules an entity CEO review, and sets a 60-day re-assessment checkpoint.

2. **Edge case:** HIVE crew lead uses language in the field that subordinates find disrespectful, but the crew lead argues this is "normal field talk." Skill applies the entity-specific field safety context, notes that silencing safety-related speech through cultural pressure is a Respect + Integrity + OSHA compliance issue, and escalates to entity CEO with a recommendation to reframe field communication norms as a safety matter, not just a culture preference.

3. **Adversarial:** A manager files a Respect incident complaint against a subordinate as retaliation after the subordinate gave a low 360 score. Skill flags the timing correlation (complaint filed 3 days after 360 results were shared), routes to HR and Dr. Lewis as a potential retaliatory complaint, and suspends the incident process pending investigation of the retaliation claim.

## Audit Log

All Respect assessments, 360 score flags, formal HR incidents, and entity CEO review events are logged with date, entity, individuals involved (by role at reporting level), signal source, outcome, and escalation decisions. Logs are retained for 36 months given the HR and legal relevance of Respect incidents. Dr. Lewis reviews aggregate Respect patterns semi-annually alongside the broader THRIVE culture assessment.

## Deprecation

This skill is reviewed annually by Dr. Lewis and HR leadership. It is deprecated when Respect dimension tracking is fully integrated into the 360 feedback platform with automated CEO alerts and when entity-specific Respect norms are embedded in operational SOPs (Allevio patient dignity policy, HIVE field safety policy, Column6 client service standards) rather than managed through manual skill invocation.
