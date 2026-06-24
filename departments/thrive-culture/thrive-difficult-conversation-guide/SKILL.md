---
name: thrive-difficult-conversation-guide
description: "difficult conversation guide, hard conversation framework, performance conversation, behavior conversation, separation conversation, THRIVE violation conversation, termination conversation, BLUF-first delivery, listening protocol, documentation requirements, integrity conversation, entity CEO support for difficult conversations, manager conversation prep, conflict resolution conversation, PIP conversation, corrective action conversation, sensitive topic conversation, HR conversation, no-wiggle-room integrity, firing conversation, disciplinary conversation, performance improvement conversation, conversation preparation, difficult feedback delivery"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[type: performance | behavior | separation | thrive-violation] [entity: MBL | Allevio | HIVE | Column6]"
---

# THRIVE Difficult Conversation Guide

Difficult conversations are where THRIVE values are proven or abandoned. This skill prepares managers and entity CEOs to conduct performance, behavior, separation, and THRIVE violation conversations with truth-first directness, documented clarity, and human respect — in that order.

## When to Use

- A manager needs to prepare for a conversation about underperformance, behavior, or a values violation before it happens
- An entity CEO is navigating a separation decision and needs a structured delivery approach
- A THRIVE Integrity violation has been confirmed and the conversation carries legal or HR consequence
- Dr. Lewis or Callie is coaching a manager who has been avoiding a hard conversation

## Difficult Conversation Framework

```
THRIVE DIFFICULT CONVERSATION FRAMEWORK
========================================

SECTION 1 — CONVERSATION TYPE CLASSIFICATION
  PERFORMANCE:       Output below standard; delivery rate <85%; repeated misses
  BEHAVIOR:          Conduct inconsistent with Respect or Hustle pillars
  THRIVE VIOLATION:  Confirmed breach of any THRIVE pillar; documented
  INTEGRITY:         Kill criterion activated; no-wiggle-room protocol applies
  SEPARATION:        Decision made; conversation is notification, not negotiation

SECTION 2 — PREPARATION PROTOCOL (before the meeting)
  Step 1: State the specific behavior/outcome (COIN format) — not feelings
  Step 2: Confirm the THRIVE pillar(s) implicated
  Step 3: Gather documentation (dates, examples, prior feedback given)
  Step 4: Define the expected outcome of this conversation
  Step 5: Identify who needs to be in the room (manager + HR for Integrity/Separation)
  Step 6: Notify entity CEO if separation or Integrity violation is involved
  Step 7: Loop in Dr. Lewis if the conversation involves a direct report of the entity CEO

SECTION 3 — BLUF-FIRST DELIVERY PROTOCOL
  Open with the bottom line: "I need to talk to you about [specific issue]."
  Do NOT soften the opening — sandwich delivery buries the message
  State the specific behavior/outcome in the first 60 seconds
  Then: context, pattern, impact, expectation going forward
  Do not fill silence with backpedaling — let the message land

SECTION 4 — LISTENING PROTOCOL
  After delivery: pause for 30+ seconds; allow the person to respond
  Do not interrupt, defend immediately, or explain further before they finish
  Acknowledge what you heard: "I hear that you see it differently — tell me more"
  Distinguish between new information (may affect outcome) vs. deflection (does not)
  If new information surfaces, say: "I need to review this before we continue"

SECTION 5 — INTEGRITY CONVERSATION (NO-WIGGLE-ROOM PROTOCOL)
  Integrity score ≤2 = kill criterion; outcome is not negotiable
  Do not frame as a coaching moment — it is not; be explicit
  "This is a values violation, not a performance gap. Here is what happens next."
  Do not offer multiple chances if the act was deliberate and material
  Document verbatim; HR and entity CEO in the room or on record
  Matt Mathison notified same day for any Integrity-level separation

SECTION 6 — DOCUMENTATION REQUIREMENTS
  All difficult conversations documented within 24 hours
  Required fields: date, participants, conversation type, THRIVE pillar(s), summary, outcome, next steps, follow-up date
  Separation conversations: written summary sent to HR same day
  Document stored in employee file and shared with entity CEO
  Allevio: HIPAA-compliant documentation; no PHI in HR files
  HIVE: field safety conversations logged in incident management system

SECTION 7 — ENTITY CEO SUPPORT PROTOCOL
  Entity CEO is available for pre-conversation coaching — schedule via Krista.ai
  Entity CEO joins Integrity and separation conversations by default
  For separation: entity CEO delivers or co-delivers at MBL standard
  Dr. Lewis available for entity CEO prep when conversation involves a C-level report
  Escalation chain: Manager → Entity CEO → Dr. Lewis → Matt Mathison
```

## Output Format

```markdown
## Difficult Conversation Prep Sheet — [Manager] — [Date]

### Conversation Type: [PERFORMANCE | BEHAVIOR | THRIVE VIOLATION | INTEGRITY | SEPARATION]
### THRIVE Pillar(s): [Truth | Hustle | Respect | Integrity | Value | Enjoy]
### Integrity Kill Criterion Activated: [YES — No-Wiggle-Room | NO]

### Opening Statement (BLUF)
> "[Verbatim opening line]"

### Core Message (COIN)
- Context: [when/where]
- Observation: [specific behavior]
- Impact: [consequence]
- Next: [expected change or outcome]

### Documentation Checklist
- [ ] Prior feedback instances logged
- [ ] HR notified (if Integrity/Separation)
- [ ] Entity CEO notified
- [ ] Dr. Lewis notified (if C-level involved)

### Follow-Up Actions
| Action | Owner | Due |
|--------|-------|-----|
| [action] | [person] | [date] |

### Escalation: [Entity CEO | Dr. Lewis | Matt Mathison]
```

## Output Contract

- **The BLUF-first delivery rule is enforced without exception.** Sandwich-style openings (positive → negative → positive) are a Truth violation — they obscure the message, confuse the recipient, and signal that the manager is more concerned with their own comfort than the person's ability to hear and act on the truth. MBL's Truth pillar requires that hard things are said clearly and first.

- **Integrity conversations are classified separately because the outcome is predetermined.** When the kill criterion is activated (score ≤2), the conversation is not a coaching session, a warning, or a collaborative exploration. Treating it as such is itself an Integrity violation — it creates false hope, delays the inevitable, and damages trust in the values system that governs the entire organization. The skill enforces this distinction explicitly.

- **Documentation within 24 hours is not optional — it is the legal and cultural record.** Undocumented conversations cannot be referenced in future action, cannot be reviewed by HR, and cannot protect the organization in a dispute. The 24-hour rule ensures memory accuracy, creates accountability for what was said, and demonstrates that MBL takes the conversation seriously enough to record it formally.

## System Dependencies

### Reads from
- HR system: prior feedback history, PIP status, documentation on file
- Monday.com: prior 1:1 notes, commitment tracking, performance flags
- Krista.ai: meeting transcripts where relevant behavior was observed

### Writes to
- HR system: conversation documentation, outcome, next steps
- Monday.com: follow-up action items with due dates
- Krista.ai: entity CEO notification summary (for Integrity/Separation events)

### HITL Required
- Entity CEO approves separation conversation plan before it is conducted
- Dr. Lewis approves any conversation involving an entity CEO's direct report
- Matt Mathison notified same day for all Integrity-level separations

## Test Cases

1. **Golden path:** An Allevio manager prepares for a performance conversation with a care coordinator who has missed delivery commitments three weeks in a row. Skill generates a BLUF opening, COIN documentation of the three incidents, a clear next expectation with a 30-day checkpoint, and flags that this is a performance (not Integrity) conversation — no kill criterion. HR notified for file; entity CEO copied.

2. **Edge case:** A HIVE field crew lead is the subject of the difficult conversation, but the manager is not comfortable with formal frameworks given the field culture. Skill adapts language for field context, simplifies documentation to plain-language format, and recommends the entity CEO join to model directness — while keeping all required documentation fields intact.

3. **Adversarial:** A manager attempts to use the skill to prepare for a conversation where the intent is to pressure an employee to resign rather than formally separate. Skill flags this as a constructive dismissal risk, blocks the conversation prep, escalates to HR and Dr. Lewis, and documents the manager's stated intent for the record.

## Audit Log

Every conversation prep session, generated BLUF statement, and documentation output is logged with timestamp, manager identity, employee role (anonymized at reporting level), conversation type, THRIVE pillar(s) implicated, and outcome classification. Integrity and Separation events are flagged in a separate high-priority audit trail reviewed by Dr. Lewis monthly and Matt Mathison quarterly.

## Deprecation

This skill is reviewed annually by Dr. Lewis in coordination with HR leadership at MBL. It is deprecated when the difficult conversation framework is fully embedded in manager onboarding and executed natively within Krista.ai workflow automation, or when a successor legal/HR compliance requirement changes the documentation standards materially.
