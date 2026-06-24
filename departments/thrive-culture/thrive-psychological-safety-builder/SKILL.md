---
name: thrive-psychological-safety-builder
description: "psychological safety, Amy Edmondson framework, psychological safety for MBL, leader behaviors that build safety, leader behaviors that destroy safety, speaking up culture, safe dissent, Allevio clinical speaking up, patient safety speaking up, HIVE field safety speaking up, Column6 client truth telling, meeting safety protocols, build psychological safety, team psychological safety, safe to speak up, speak up culture, fear culture, silence culture, psychological safety assessment, truth pillar safety, respect pillar safety, THRIVE psychological safety"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[entity: MBL | Allevio | HIVE | Column6] [output: assessment | builder-plan | leader-behaviors]"
---

# THRIVE Psychological Safety Builder

Psychological safety is the operating condition that makes Truth and Respect possible. Without it, people hear THRIVE values but stay silent when it matters most. This skill applies the Edmondson psychological safety framework to MBL's operating context — with entity-specific adaptations for clinical safety at Allevio, field safety at HIVE, and client truth-telling at Column6.

## When to Use

- A team shows signs of silence culture: no dissent in meetings, everyone agrees with the leader, no problems surface until they are crises
- An entity CEO wants to assess whether their leadership behaviors are building or destroying safety
- A THRIVE culture audit flags low scores on Truth or Respect that may be driven by a safety gap
- Allevio, HIVE, or Column6 has experienced a safety, quality, or client trust incident rooted in someone not speaking up

## Psychological Safety Builder Framework

```
THRIVE PSYCHOLOGICAL SAFETY BUILDER FRAMEWORK
===============================================

SECTION 1 — PSYCHOLOGICAL SAFETY DEFINED (MBL CONTEXT)
  Definition (Edmondson): the shared belief that the team is safe for interpersonal risk-taking
  MBL translation: people speak the truth without fear of punishment, dismissal, or exclusion
  Safety is a prerequisite for Truth — you cannot have a truth-first culture in a fear-first environment
  Safety ≠ comfort — hard truths are still expected; safety means the messenger is not punished

SECTION 2 — LEADER BEHAVIORS THAT BUILD SAFETY
  Invite dissent explicitly: "What am I missing? Who sees this differently?"
  Respond to bad news with curiosity, not punishment: "Tell me more about what happened"
  Acknowledge your own mistakes publicly and specifically
  Credit people when they surface problems early — even if the problem is costly
  Say "I don't know" and mean it — modeling intellectual humility gives permission to others
  Follow through on what you heard: "You raised X last week — here's what I did with it"

SECTION 3 — LEADER BEHAVIORS THAT DESTROY SAFETY
  Shooting the messenger: punishing (overtly or subtly) the person who raised the problem
  Dismissing concerns with authority: "That's not how we do things here" without engagement
  Public humiliation: correcting, mocking, or sighing at someone in front of peers
  Selective hearing: responding to ideas differently based on who said them
  Silence as punishment: ignoring contributions until the person stops contributing
  Overriding dissent without acknowledgment: moving on without addressing the objection

SECTION 4 — SPEAKING-UP CULTURE METRICS
  Meeting dissent rate: % of meetings where at least one person openly disagrees with the leader
  Problem surfacing lead time: average time from problem identification to escalation
  "I don't know" frequency: how often leaders model intellectual humility (Krista.ai transcript analysis)
  Anonymous pulse: "Do you feel safe raising concerns without fear of consequence?" (quarterly)
  HR complaint pattern: correlation between complaint volume and leadership tenure changes

SECTION 5 — ENTITY-SPECIFIC SAFETY APPLICATIONS
  Allevio — Clinical Safety:
    - Nurses, care coordinators, and clinical staff must feel safe flagging patient safety concerns
    - Speaking up about a care error is a THRIVE requirement; punishing it is a regulatory violation
    - Near-miss reporting culture: a near-miss surfaced is rewarded, not investigated as blame
    - HIPAA: clinical staff must feel safe reporting a potential PHI breach without fear
  HIVE — Field Safety:
    - Field workers must feel safe stopping unsafe operations without fear of dismissal
    - Safety concerns escalated from field = automatic crew lead acknowledgment within 1 hour
    - Field speaking-up culture is the primary driver of OSHA compliance and injury prevention
    - Crew leads who punish safety concerns face immediate Integrity + Respect dual violation
  Column6 — Client Truth-Telling:
    - Account managers must feel safe telling clients the truth about campaign underperformance
    - Internal safety for truth-telling: no punishing AMs for delivering bad client news
    - Campaign performance alerts go to client same-day — no internal buffer period to "fix it first"

SECTION 6 — MEETING SAFETY PROTOCOLS
  Before the meeting: leader sets explicit invitation — "All views are wanted, including pushback"
  During the meeting: use "Yes, and" to build; "Yes, but" to challenge — never "That's wrong"
  After the meeting: follow up privately with anyone who went silent after a response
  Entity CEO models: last to speak, first to admit uncertainty

SECTION 7 — SAFETY ASSESSMENT AND REPAIR
  Safety assessment cadence: quarterly pulse (anonymous) + semi-annual 360 safety dimension
  Safety repair triggers: sustained silence culture, spike in HR complaints, near-miss non-reporting
  Repair sequence: leader self-assessment → public acknowledgment → behavioral commitment → 60-day re-assessment
  External safety review (Dr. Lewis): triggered when entity CEO is the source of the safety problem
```

## Output Format

```markdown
## THRIVE Psychological Safety Assessment — [Entity] — [Date]

### Safety Level: [HIGH | MODERATE | LOW | CRITICAL]

### Leader Behavior Inventory
| Behavior | Observed? | Frequency | Impact |
|----------|-----------|-----------|--------|
| Invites dissent explicitly | [Y/N] | [rare/sometimes/always] | [+/-] |
| Responds to bad news with curiosity | [Y/N] | [rare/sometimes/always] | [+/-] |
| Shoots the messenger | [Y/N] | [never/sometimes/pattern] | [+/-] |
| [additional behaviors...] | | | |

### Speaking-Up Culture Metrics
- Meeting dissent rate: [%]
- Problem surface lead time: [avg hours/days]
- Anonymous pulse score: [X/5]

### Entity-Specific Safety Gaps
- [Clinical / Field / Client truth-telling gap with specific example]

### Repair Plan
1. [Specific leader behavior change with timeline]
2. [Structural change to create safety space]
3. [Re-assessment date]

### Escalation: [None | Entity CEO | Dr. Lewis | Matt Mathison]
```

## Output Contract

- **Psychological safety assessment must include leader behavior data, not just team survey results.** Teams can feel unsafe for structural reasons (poor process, unclear roles) or for leader-driven reasons (punishing dissent, dismissing contributions). The distinction determines the intervention: structural problems need process fixes; leader-driven problems need behavior change or leadership change. Conflating the two produces the wrong treatment and wastes time while the root cause continues.

- **Entity-specific safety applications are operationally consequential, not culturally aspirational.** At Allevio, clinical staff who don't feel safe reporting near-misses create patient harm risk and regulatory exposure. At HIVE, field workers who don't feel safe stopping unsafe operations create injury and OSHA liability. The skill treats these as operational requirements enforced with the same urgency as any compliance or safety obligation — not as optional culture enhancements.

- **Safety repair requires public acknowledgment from the leader, not a private policy change.** This rule exists because the people who experienced the safety breakdown need to see the repair — a quiet internal policy update does not restore the interpersonal trust that was damaged. The Edmondson repair sequence (self-assessment → public acknowledgment → behavioral commitment → re-assessment) is enforced because silent repair rarely works, and teams need to witness the leader's willingness to be vulnerable about their own behavior.

## System Dependencies

### Reads from
- Krista.ai: meeting transcripts for dissent rate analysis, leader speech pattern analysis
- HR system: complaint volume trends, near-miss reporting rates (Allevio/HIVE)
- Pulse survey tool: anonymous quarterly safety scores
- 360 feedback system: safety dimension scores

### Writes to
- Entity CEO coaching agenda: safety behavior change commitments
- Monday.com: safety repair action items with owners and due dates
- Krista.ai: safety assessment summary for Dr. Lewis review queue

### HITL Required
- Dr. Lewis reviews CRITICAL safety designations before entity CEO delivery
- Entity CEO approves all meeting safety protocol changes before implementation
- Matt Mathison notified when entity CEO is identified as the primary safety risk source

## Test Cases

1. **Golden path:** A Column6 team pulse survey shows a safety score of 2.8/5, driven by fear of delivering bad news to the entity CEO. Krista.ai transcript analysis confirms the entity CEO interrupts dissenting views in 4 of the last 6 recorded meetings. Skill generates a leader behavior inventory, identifies the three destroying-safety behaviors in evidence, and produces a repair plan with a 60-day behavioral commitment and re-assessment date.

2. **Edge case:** HIVE field workers are not completing anonymous pulse surveys (response rate <30%), making it difficult to assess safety levels through standard metrics. Skill adapts the assessment to use near-miss reporting rates (zero in the last quarter), crew lead language analysis from field reports, and an in-person facilitated discussion template — avoiding the inference that low survey response = high safety.

3. **Adversarial:** An entity CEO disputes the CRITICAL safety designation, claiming the team is "fine" and the low pulse scores reflect survey fatigue, not a real safety problem. Skill pulls corroborating evidence: zero dissent in 8 consecutive meeting transcripts, two HR complaints mentioning fear of retaliation, and a 40% decline in problem-surfacing lead time. The evidence package is delivered to Dr. Lewis and, if the entity CEO continues to resist, to Matt Mathison.

## Audit Log

All psychological safety assessments, leader behavior inventories, pulse survey scores, CRITICAL designations, and repair plans are logged with entity, date, assessor identity, data sources used, and escalation decisions. Entity CEO safety disputes are documented verbatim. Logs are retained for 24 months and reviewed by Dr. Lewis as part of the semi-annual THRIVE culture audit.

## Deprecation

This skill is deprecated when psychological safety measurement is integrated into Krista.ai's meeting analytics (dissent rate, leader speech pattern) and the pulse survey platform — with automated entity CEO alerts for threshold breaches and repair protocols embedded in the leadership development track. Deprecation requires Dr. Lewis sign-off and confirmation that HIVE field safety and Allevio clinical safety channels meet their entity-specific speaking-up standards independently.
