---
name: meet-attendee-profiler
description: "build attendee profiles, meeting attendee database, attendee profile prep sheet, attendee history mbl, attendee communication style, attendee known priorities, attendee open items, profile from transcript history, update attendee profile after meeting, hipaa attendee profile allevio, clinical staff profile restrictions, vendor profile meeting, prospect profile meeting, ghl crm link attendee, external contact profile, attendee relationship history, attendee background mbl meetings, profile for prep sheet, attendee intelligence database, attendee tracker meeting intelligence"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[attendee name(s) or meeting name to profile all attendees]"
---

# Meeting Attendee Profiler

This skill builds and maintains structured profiles of everyone who attends MBL meetings, enabling meet-prep-sheet-builder to deliver rich attendee context without requiring manual research each time. Profiles are drawn from transcript history, action item patterns, sentiment data, and CRM records — and are updated automatically after each meeting in which the attendee participates.

## When to Use

- A prep sheet is being built and attendee profiles need to be pulled or refreshed
- A new external contact is attending a meeting for the first time and needs a baseline profile created
- Matt Mathison wants to understand the history and priorities of a specific person before a meeting
- A profile needs to be updated after a significant interaction (major decision, conflict, relationship change)

## Attendee Profiler Framework

```
PROFILE STRUCTURE
─────────────────────────────
Core Fields (all attendees):
  Full Name:          [Legal name + preferred name if different]
  Role:               [Title + Organization]
  Entity:             [MBL HoldCo | Allevio | HIVE | Column6 | External]
  Relationship Owner: [Matt Mathison | Dr. Lewis | Entity CEO | Other]
  Profile Created:    [Date]
  Last Updated:       [Date + Source meeting ID]

Meeting History:
  Total meetings with MBL:  [n]
  First meeting:            [Date + meeting name]
  Most recent meeting:      [Date + meeting name]
  Average meetings per month: [n]

Behavioral Profile (from transcript analysis):
  Communication Style:  [Direct | Collaborative | Analytical | Cautious | Assertive]
  Typical Utterance Share: [High >35% | Medium 15-35% | Low <15%]
  Known Decision Style: [Fast | Deliberate | Consensus-driven | Delegating]
  Engagement Pattern:   [Consistent | Variable | Tends to disengage on [topic type]]

Known Priorities (from transcript topic analysis):
  - [Priority 1 — with source meeting and date]
  - [Priority 2]
  - [Priority 3]

Open Items with MBL:
  - [Action item or commitment still open — due date — source meeting]

Relationship Health:
  Current Sentiment:  [from most recent meeting sentiment analysis]
  Trend:              [Improving | Stable | Declining]
  Friction Points:    [Known sensitivities or recurring tension topics]

INTERNAL MBL STAFF PROFILE NOTES
─────────────────────────────
- Profile is linked to Monday.com board assignment (entity)
- Action item completion rate: [n%] — based on last 90 days
- Re-commit count: [n] — items committed multiple times without completion

EXTERNAL ATTENDEE PROFILE NOTES
─────────────────────────────
- GHL CRM link: [URL] — primary relationship record
- Organization background: [2-sentence company context]
- Commercial relationship: [Vendor | Partner | Prospect | LP | Advisor | Board]
- Contractual status: [Active contract | Negotiating | No agreement]
- Key open item: [Most important pending item in the relationship]

HIPAA RESTRICTIONS — ALLEVIO CLINICAL STAFF
─────────────────────────────
PROHIBITED in any Allevio clinical staff profile:
  ✗ Clinical credentials beyond title
  ✗ Patient population information
  ✗ Clinical scope or specialty details
  ✗ PHI or patient interaction context
  ✗ Clinical performance metrics

PERMITTED:
  ✓ Name, title, organizational role
  ✓ History of MBL business interactions
  ✓ Communication style (from business meeting transcripts)
  ✓ Known business priorities (operational, financial — not clinical)
  ✓ Open action items from MBL business meetings

PROFILE UPDATE PROTOCOL
─────────────────────────────
After each meeting the attendee participates in:
  1. Check for communication style consistency or shift
  2. Update known priorities if new topics surfaced
  3. Close any action items that were completed; add new ones
  4. Update relationship health from sentiment analyzer output
  5. Add meeting to meeting history (date + transcript ID)
  6. Flag any profile changes >20% deviation from prior profile for HITL review
```

## Output Format

```markdown
## Attendee Profile — [Name]

**Role:** [Title | Organization]
**Entity:** [MBL HoldCo | Allevio | HIVE | Column6 | External]
**Relationship Owner:** [Name]
**Profile Updated:** [Date] | Source: [Meeting ID]

---

### MEETING HISTORY
- Total MBL meetings: [n] | First: [date] | Most recent: [date]
- Avg frequency: [n per month]

### BEHAVIORAL PROFILE
- **Communication Style:** [style]
- **Decision Style:** [style]
- **Engagement Pattern:** [description]

### KNOWN PRIORITIES
1. [Priority — Source: Meeting ID, Date]
2. [Priority — Source: Meeting ID, Date]
3. [Priority — Source: Meeting ID, Date]

### OPEN ITEMS
| Item | Type | Due | Status |
|------|------|-----|--------|
| [text] | [Action/Commitment] | [date] | [Open/Overdue] |

### RELATIONSHIP HEALTH
- Current: [sentiment label]
- Trend: [direction]
- Friction points: [topics or patterns — or "None identified"]

---

*(External only)*
**CRM:** [GHL link]
**Commercial Relationship:** [type | status]
**Key Open Item:** [text]

---
*⚠️  Allevio Clinical Staff — Business interaction data only. HIPAA restrictions apply.*
```

## Output Contract

- **Profiles must be sourced exclusively from observed meeting behavior and documented interaction history — no inferences about personality, character, or motivation may be included.** The purpose of a profile is to give Matt Mathison actionable context — not a psychological portrait. Statements like "tends to be conflict-averse" must be grounded in observed patterns ("has deferred to the group consensus on 4 of 5 decision items across prior meetings") — not assumed from a single interaction or general impression. Ungrounded inferences create bias that can damage relationships if a profile interpretation is ever shared.

- **Allevio clinical staff profiles must be reviewed by Dr. Lewis before use in any prep sheet or shared document — they are subject to stricter content restrictions than any other profile type.** Clinical staff occupy a unique position: they are MBL business meeting participants in their operational capacity, but their professional context is clinically loaded. A profile that inadvertently includes clinical scope, patient population data, or performance metrics creates PHI-adjacent risk even if no individual patient is named. The HIPAA restriction list is a hard exclusion — not a guideline.

- **Profile updates must run after every meeting the attendee participates in — stale profiles are worse than no profiles because they create false confidence.** A prep sheet built on a 6-month-old profile may present Matt Mathison with priorities that have since changed, open items that have since been resolved, and relationship health signals that have since shifted. The update protocol exists to ensure profiles are living records, not snapshots. If an update cannot run (transcript not processed), the profile age must be clearly displayed so Matt knows the context is potentially outdated.

## System Dependencies

### Reads from
- Processed transcript output (behavioral signals, topic coverage, utterance share)
- Sentiment analyzer output (relationship health per meeting)
- Action item registry (open items per attendee)
- GHL CRM (external contact records, commercial relationship status)
- MBL staff directory (internal role confirmation and entity assignment)

### Writes to
- Attendee profile database: `/Meeting Intelligence/Attendee Profiles/[Entity or External]/`
- Meet-prep-sheet-builder input (profiles pulled by builder on demand)
- HITL queue (profile changes >20% deviation from prior)

### HITL Required
- All Allevio clinical staff profiles — Dr. Lewis reviews before use in any shared document
- New external attendees with no prior MBL history — Dr. Lewis may add context from personal knowledge
- Any profile update that flags a significant relationship health shift (Collaborative → Guarded)
- Profiles for active commercial negotiation counterparties

## Test Cases

1. **Golden path:** Matt Mathison is meeting with the HIVE CFO, who has attended 14 MBL meetings over 18 months. The profiler returns a complete profile: Direct communication style, known priorities (production cost reduction, LP distribution timing, water disposal contract), 2 open action items, relationship health Positive-Stable, and 3 friction points identified (Q1 capex overrun, LP reporting delays, headcount freeze). All sourced from transcript history with meeting IDs. Profile updated 3 days ago from the last HIVE ops call.

2. **Edge case:** A new external attorney is attending an Allevio board meeting for the first time. No prior transcript history, no GHL CRM record, and their affiliation is a healthcare law firm. The profiler creates a minimal profile with name, role, firm, commercial relationship (Legal Counsel — Active engagement), and flags for Dr. Lewis HITL to add any known context. No behavioral or priority fields are populated because there is no data yet. The profile is labeled BASELINE — FIRST MEETING.

3. **Adversarial case:** An Allevio clinical profile update is triggered after a joint operational call where the physician discussed utilization management thresholds. The update protocol detects that the new information involves clinical management protocols. The system flags the update as HIPAA-restricted content, does not write it to the profile, and alerts Dr. Lewis: "Profile update for [Name] contains clinical scope information — excluded per HIPAA restrictions. Review the meeting transcript segment for business-relevant context that can be safely extracted."

## Audit Log

Every profile creation or update logs the attendee name, entity, source meeting ID, fields updated, HIPAA restriction flag status, and Dr. Lewis review status (for Allevio clinical staff). Profile access events (when a profile is pulled for a prep sheet) are also logged. Logs are stored in the MBL AI audit trail with a 3-year retention minimum; Allevio clinical staff profile logs have a 7-year retention minimum consistent with HIPAA business associate obligations.

## Deprecation

This skill should be reviewed if MBL integrates a dedicated CRM or contact intelligence platform that maintains structured attendee profiles with automatic enrichment. In that scenario, the profile database may migrate to the platform while the update protocol (triggered by meeting transcript processing) would still require integration. Deprecation requires Dr. Lewis to confirm that HIPAA restrictions for Allevio clinical staff are preserved in the replacement system before this skill is retired.
