---
name: thrive-playbook-builder
description: "Build or update the THRIVE culture playbook for MBL Partners or a portfolio company. Use when the user says 'THRIVE playbook', 'culture playbook', 'values playbook', 'build the playbook', 'create playbook', 'playbook builder', 'write the playbook', 'THRIVE guide', 'culture guide', 'values guide', 'Callie playbook', 'Callie', 'culture documentation', 'document our culture', 'culture handbook', 'values handbook', 'THRIVE handbook', 'culture codification', 'codify culture', 'write our values', 'document THRIVE', 'THRIVE documentation', 'culture standards', 'values standards', 'playbook update', 'update playbook', 'revise playbook', or 'portfolio playbook'."
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--action <build|update|adapt|section>] [--section <all|truth|hustle|respect|integrity|value|enjoy|hiring|onboarding|decisions>]"
---

# Thrive Playbook Builder

Build or update the MBL THRIVE culture playbook — the authoritative document that defines what THRIVE means in practice, how it applies to decisions, and what behaviors it requires at each entity. The playbook is the foundation of Callie's skill development work and the primary culture onboarding document for all new leaders. It is not a values poster — it is an operational manual for how MBL runs.

## When to Use
- Building the initial THRIVE playbook for a new entity
- Updating a section of the playbook after a culture evolution
- Adapting the MBL playbook for entity-specific context (Allevio, HIVE, Column6)
- Supporting Callie's ongoing playbook skill development work

## Playbook Build Framework

```
PLAYBOOK STRUCTURE (MBL Master → Entity Adapted):

  SECTION 1 — WHAT IS THRIVE:
    THRIVE origin story: why these values; Matt Mathison's leadership philosophy
    6-value definitions: Truth, Hustle, Respect, Integrity, Value, Enjoy
    How THRIVE connects to MBL's investment thesis: we compete on execution, and execution requires culture
    The kill criterion: Integrity misalignment is grounds for separation regardless of performance
    
  SECTION 2 — THRIVE IN HIRING:
    How to read for THRIVE in a resume (signals)
    THRIVE interview questions per pillar (behavioral + situational)
    THRIVE red flags by pillar
    Integrity non-negotiable: what it looks like when present and absent
    Reference check THRIVE probes
    
  SECTION 3 — THRIVE IN ONBOARDING (first 90 days):
    Week 1: THRIVE orientation (what are these values; what do they mean here?)
    Day 30: First THRIVE check-in (manager + new hire)
    Day 60: THRIVE behavioral feedback (is this person showing the values in action?)
    Day 90: THRIVE onboarding assessment
    Buddy system: a THRIVE exemplar paired with every new hire
    
  SECTION 4 — THRIVE IN PERFORMANCE:
    Annual review: THRIVE is 15% of the review score
    How to identify THRIVE gaps vs. skill gaps
    Coaching by pillar: what does coaching on Truth look like vs. Hustle vs. Integrity?
    PIP and THRIVE: Integrity PIPs have no wiggle room
    Separation and THRIVE: when culture misalignment justifies separation
    
  SECTION 5 — THRIVE IN DECISIONS:
    The THRIVE decision filter (thrive-decision-filter)
    The kill criterion in decisions: does this violate Integrity?
    When THRIVE conflicts with short-term revenue (answer: THRIVE wins)
    Examples: applying THRIVE to vendor selection; hiring decisions; product strategy
    
  SECTION 6 — THRIVE IN DAILY BEHAVIOR:
    Concrete examples of each value in action (by role type: executive, manager, IC)
    What THRIVE looks like in meetings; email; feedback; escalation
    Anti-patterns: what violates each pillar (by pillar)
    
  SECTION 7 — THRIVE AT [ENTITY] (entity-specific adaptation):
    How does Truth show up differently in a healthcare MSO (Allevio) vs. oil and gas (HIVE)?
    Entity-specific context for each pillar
    Local leadership examples of THRIVE in action
    Entity-specific anti-patterns relevant to their industry/context
    
  SECTION 8 — THRIVE REPORTING AND ACCOUNTABILITY:
    How THRIVE is measured (thrive-culture-baseline; thrive-pulse-survey-builder)
    Who owns THRIVE culture at each entity (entity CEO; Dr. Lewis as portfolio oversight)
    How THRIVE gaps are reported and addressed
    Matt Mathison's involvement (what triggers his engagement)
    
PLAYBOOK TONE AND STANDARDS:
  Direct and actionable — not aspirational; every statement should tell someone what to DO
  Real examples — use actual MBL and entity situations (anonymized if needed)
  No corporate-speak — THRIVE is a living culture, not an HR policy
  Matt Mathison voice — he owns THRIVE; the playbook should sound like how he talks
  Length: sections should be 1-2 pages max; entire playbook ≤20 pages
  
CALLIE'S PLAYBOOK DEVELOPMENT ROLE:
  Callie coordinates the ongoing development and testing of THRIVE skills
  Fitz Bowen supports skills testing (piloting with real teams)
  New skills developed → Callie reviews → Fitz tests → Dr. Lewis approves
  Playbook updates: quarterly with Callie; annual comprehensive review with Matt Mathison
```

## Output Format

```markdown
# THRIVE Playbook — [Entity] | Version [X.Y] | [Date]
**Owner:** Matt Mathison | **Culture Lead:** Dr. John Lewis | **Coordinator:** Callie

---

## Section 1: What Is THRIVE
[2-3 paragraphs: origin; definitions; why it matters to MBL]

---

## Section 2: THRIVE in Hiring

### Truth Signals in Hiring
- Interview question: "[behavioral Q]"
- Green flag: [example]
- Red flag: [example]

[Repeat for each pillar]

---

## Section 3: THRIVE in Onboarding
[90-day integration timeline with specific THRIVE touchpoints]

---

## Section 4: THRIVE in Performance
[Performance review integration; coaching guidance; PIP/separation criteria]

---

## Section 5: THRIVE in Decisions
[Decision filter application; kill criterion examples]

---

## Section 6: THRIVE in Daily Behavior
[Concrete behavioral examples by role type]

---

## Section 7: THRIVE at [Entity]
[Entity-specific adaptation; local context; leadership examples]

---

## Section 8: THRIVE Accountability
[Measurement; reporting; escalation]
```

## Output Contract
- The playbook must be operational, not aspirational — "We value integrity" is a poster; "If a team member misrepresents status in a project update, their manager addresses it within 24 hours with a direct conversation — and if it happens twice, it goes to HR and to me" is a playbook; every value statement in the playbook should be accompanied by a specific behavioral standard (what does this look like in practice?), a specific accountability mechanism (who notices; who acts; what is the consequence?), and at least one real example (anonymized if needed); vague playbooks produce vague culture; specific playbooks produce specific behavior change
- The entity-specific adaptation section is not optional — THRIVE means slightly different things in a healthcare MSO vs. an oil and gas operation vs. a media tech company; Hustle in Allevio's clinical context includes patient wait time and care coordination speed, not just deal velocity; Respect in HIVE's field environment includes physical safety and listening to experienced field workers' operational concerns; the playbook adaptation ensures that THRIVE resonates with the entity's own language and context rather than feeling imposed from the holding company; Callie and the entity CEO co-author the entity-specific section
- HITL required: initial playbook draft → Matt Mathison reviews and approves before distribution (he owns THRIVE); entity adaptation → entity CEO reviews and approves their section; Integrity section → Matt Mathison specifically reviews kill criterion language before any version change; playbook update → Dr. Lewis reviews; major revision → Matt Mathison sign-off; distribution to all-hands → entity CEO coordinates

## System Dependencies
- **Reads from:** THRIVE values definition (Matt Mathison — original source); thrive-culture-baseline (current culture state); thrive-values-assessor (behavioral examples); hr-hiring-scorecard (THRIVE dimension in hiring rubric); hr-performance-review (THRIVE weight in review); entity CEO input (entity-specific context); Callie's skill development feedback (thrive-callie-playbook-manager)
- **Writes to:** THRIVE Playbook document (SharePoint → MBL → Culture → THRIVE-Playbook-v[X.Y].pdf); entity adaptation versions (SharePoint → [Entity] → Culture → THRIVE-Playbook-[Entity]-v[X.Y].pdf); onboarding curriculum (thrive-culture-onboarding uses playbook as core document); hiring rubric (hr-hiring-scorecard THRIVE section updated per playbook); Monday.com playbook update tasks (Callie-owned; Fitz testing tasks)
- **HITL Required:** Initial draft → Matt Mathison review + approval; entity adaptation → entity CEO approval; Integrity kill criterion language → Matt Mathison review; any major revision → Matt Mathison sign-off; distribution → entity CEO coordinates rollout

## Test Cases
1. **Golden path:** Dr. Lewis builds the Allevio THRIVE playbook adaptation. Works with entity CEO and Callie. Section 7 (Allevio context): "Truth at Allevio means accurate clinical outcome reporting — when a care coordination program isn't working, we say so immediately rather than let members go without effective care. Hustle means same-day employer response time — an employer email that sits 48 hours is a missed opportunity and a client relationship at risk. Respect at Allevio includes respect for HIPAA — protecting member privacy is a form of respect. Integrity at Allevio means that what we report to employers (aggregate only) is what is actually happening — no cherry-picking or misleading aggregate framing." Playbook v1.0 approved by entity CEO. Callie integrates into onboarding curriculum. Fitz schedules pilot with 3 new hires.
2. **Edge case:** Playbook needs urgent update because of a specific integrity incident at an entity. Entity CEO asks Dr. Lewis to add a specific behavioral standard. Dr. Lewis: "Yes — the incident actually clarifies what we mean by Integrity in this context. Here's how I'd add it: [specific behavioral standard]. But before I publish this update, I want Matt Mathison to see it — anytime we're updating the Integrity section, he reviews. I'll have a draft to you within 24 hours, Matt reviews, then we update the playbook." Matt Mathison reviews, approves, new version v1.1 published.
3. **Adversarial:** Entity CEO at Column6 says "THRIVE feels like an MBL HoldCo thing — our team won't connect with this. Can we use our own values instead?" Dr. Lewis: "That's worth discussing with Matt — THRIVE is a portfolio-wide standard, and the consistency across entities is part of how we evaluate culture in deals and in our management reviews. But the adaptation section is exactly for your concern: we can make Section 7 very Column6-specific — your agency relationships, your pace, your client-first mentality — all of that can live inside THRIVE without replacing it. Let me draft Section 7 for Column6 and show you how it reads. If you still feel the foundational values don't fit, that's a conversation for you and Matt."

## Audit Log
Playbook version history (SharePoint; version number; date; changes summary; Matt Mathison approval; entity CEO approval). Distribution records (who received each version; date; entity). Playbook update triggers (what prompted each version; incident; maturity; Callie feedback). Callie skill development integration records (which skills tested; Fitz testing outcomes; incorporated feedback). Annual review records (Matt Mathison review date; approved version; Dr. Lewis).

## Deprecation
Playbook content reviewed quarterly (Callie; minor updates). Annual comprehensive review with Matt Mathison. Entity adaptation sections reviewed when entity leadership changes or entity strategy shifts. Hiring section updated when legal counsel recommends changes to interview question standards. Integrity kill criterion language reviewed with employment attorney annually.
