---
name: messaging-matrix-builder
description: "Build an audience-specific messaging matrix mapping stakeholders to messages. Use when the user says 'messaging matrix', 'audience messaging', 'who do we say what to', 'stakeholder messaging', 'different messages for different audiences', 'messaging map', 'communications matrix', 'audience communication plan', or 'how do we message different groups'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--event <announcement type>] [--audiences <list>]"
---

# Messaging Matrix Builder

Build a messaging matrix that maps every key stakeholder audience to the right message, channel, and timing for a specific announcement or communications initiative. A messaging matrix prevents the two most common communications failures: saying the same thing to everyone (misses what each audience actually cares about) and saying completely different things to everyone (creates inconsistency and distrust).

## When to Use
- Planning a major announcement (acquisition, leadership change, restructuring, new product)
- Preparing a coordinated multi-stakeholder communication (investors + employees + customers + press)
- Ensuring communications are sequenced correctly (LPs before press, employees before customers)
- Matt Mathison asks "who needs to know this, when, and what do we tell them?"
- Any communication initiative with more than 2 distinct audiences

## Sequencing Principle

```
Communication sequence almost always follows this priority order:
  1. Board / investors / LPs first (before anything goes public)
  2. Leadership team (before employees)
  3. Employees (before customers)
  4. Customers / partners (same time or just before public)
  5. Press / media (public announcement)
  6. General public / social media (after press)

Never invert this sequence. Employees who learn about a company announcement 
from the news are permanently less trusting. LPs who learn about a fund issue 
from the press are likely to become ex-LPs.
```

## Output Format

```markdown
# Messaging Matrix — <Company Name>
**Event/Announcement:** <Description>
**Date:** <planned announcement date> | **Prepared by:** Dr. John Lewis
**Matt Mathison reviewed:** ✅ / Pending

---

## Sequencing Overview

| Sequence | Audience | Channel | When | Who delivers | Status |
|---------|---------|---------|------|-------------|--------|
| 1 | [LPs / Board] | [Phone / Email] | [Date/time — before public] | Matt Mathison | Planned |
| 2 | [Leadership team] | [Leadership call] | [Date/time] | CEO / Dr. Lewis | Planned |
| 3 | [Employees] | [All-hands / Email] | [Date/time] | CEO | Planned |
| 4 | [Customers / Partners] | [Direct email / Calls] | [Date/time] | [Sales / Relationship owner] | Planned |
| 5 | [Press] | [Press release / Embargoed pitch] | [Public announcement date] | Dr. Lewis | Planned |
| 6 | [Social media / Public] | [LinkedIn / Website] | [Same as or after press] | [Social media owner] | Planned |

---

## Audience-Specific Message Details

### Audience: <LPs / Board>
**What they care about most:** [Financial impact, fund performance, decision rationale]
**Key message:** [1-2 sentences — lead with what matters to them]
**What to emphasize:** [Returns / risk management / strategy alignment]
**What to de-emphasize:** [Details that aren't decision-relevant for them]
**What NOT to say:** [Anything unresolved, speculative, or that requires follow-up]
**Format:** [Phone call / Personal email / Formal letter]
**Delivered by:** Matt Mathison
**Tone:** Formal, direct, data-led

---

### Audience: Employees
**What they care about most:** [Job security, role changes, company stability]
**Key message:** [1-2 sentences — address their primary concern first]
**What to emphasize:** [Job stability, growth opportunity, continuity]
**What to de-emphasize:** [Financial details they don't need; competitive sensitivity]
**What NOT to say:** [Anything speculative about headcount, restructuring, layoffs — unless confirmed]
**Format:** [All-hands / Company-wide email / Manager cascade]
**Delivered by:** CEO
**Tone:** Warm, direct, honest — address uncertainty explicitly if it exists

---

### Audience: Customers / Patients
**What they care about most:** [Service continuity, reliability, their own outcomes]
**Key message:** [1-2 sentences — reassure service continuity first]
**What to emphasize:** [Continuity / improvement / benefit to them]
**What to de-emphasize:** [Business rationale; financial details; internal changes]
**What NOT to say:** [Anything that creates doubt about service quality or reliability]
**Format:** [Email / Direct call from account owner / Website announcement]
**Delivered by:** [Account managers / CEO / VP Sales]
**Tone:** Customer-first, reassuring, specific about what changes and what doesn't

---

### Audience: Press
**What they care about most:** [Newsworthiness, accuracy, exclusive access]
**Key message:** [The news hook — what's new and why it matters]
**What to emphasize:** [Scale, impact, timeliness]
**What to de-emphasize:** [Internal details; financial structure; anything off the record]
**What NOT to say:** [LP names, valuation details, strategic plans not yet public]
**Format:** [Press release + targeted pitches]
**Delivered by:** Dr. Lewis
**Tone:** Professional, factual, quotable

---

## Q&A Prep by Audience

For each audience, anticipate the 3 questions they're most likely to ask:

| Audience | Question | Prepared answer |
|---------|---------|----------------|
| LPs | [Q] | [A] |
| Employees | [Q] | [A] |
| Customers | [Q] | [A] |
| Press | [Q] | [A] |

---

## Embargo and Confidentiality Protocol

**Embargo date/time (if applicable):** [Date and time — press cannot publish before this]
**Who knows in advance (pre-announcement):** [List]
**Confidentiality reminder:** [Who to remind about NDA / embargo; when to remind them]
```

## Output Contract
- Sequencing is always explicit and ordered — the matrix must show who gets the message first; the sequence determines trust and perception; out-of-sequence communication is a recoverable mistake once, but not twice
- Every audience has a distinct lead message — the matrix must show genuine differentiation, not the same press release in different envelopes; each audience's lead message reflects what that audience cares about most
- Q&A prep for every audience — anticipated questions make the actual communication go better; the Q&A prep is not optional even for internal audiences
- Embargo/confidentiality always addressed — if the announcement hasn't gone public yet, the confidentiality protocol is non-negotiable; one premature leak can destroy a carefully sequenced communications plan
- HITL required: Dr. Lewis builds the matrix; Matt Mathison reviews for any announcement involving LPs or fund-level communications; CEO reviews employee and customer messaging; legal reviews for M&A, restructuring, or regulatory announcements; no communication sent without corresponding approval

## System Dependencies
- **Reads from:** Brand messaging framework, company announcement details, stakeholder list
- **Writes to:** Messaging matrix (SharePoint/Comms/Announcements/<Announcement>); communication log
- **HITL Required:** Dr. Lewis builds; Matt Mathison reviews LP/fund-level messaging; CEO reviews employee/customer messaging; legal reviews M&A and regulatory messaging

## Test Cases
1. **Golden path:** Allevio acquisition of a smaller practice group → Matrix: LPs notified by Matt Mathison phone 24 hours before press; leadership call at 8am announcement day; all-hands at 10am; customer/patient notification letters mailed same day; press release at noon; LinkedIn post at noon; 5 Q&As prepped for each audience; embargo strictly maintained; all 6 sequences executed on time; no leaks; positive coverage in Becker's Hospital Review
2. **Edge case:** An employee leaks the announcement to a reporter before the sequence is complete (employees told, press not yet) → activate contingency: accelerate the press announcement to immediately; do not wait for the planned sequence; prioritize accuracy in the public record over sequence; investigate the leak source quietly; update confidentiality protocols for future announcements
3. **Adversarial:** LPs demand to know details about an acquisition target that is still under NDA → they cannot be told under NDA; explain that there are deal-related limitations on what can be shared during active diligence; reassure them on process and timeline; after close, debrief them fully; never breach NDA to satisfy LP curiosity, even if the LP is a key relationship

## Audit Log
Messaging matrices retained by announcement. Communication timing documented. Any sequence deviations logged. Post-announcement debrief notes retained.

## Deprecation
Retire when MBL or portfolio companies have communications teams that manage multi-stakeholder communications planning as a standard function.
