---
name: hr-conflict-resolution
description: "Facilitate resolution of workplace conflict. Use when the user says 'workplace conflict', 'team conflict', 'conflict between employees', 'mediate a conflict', 'two employees not getting along', 'conflict resolution', 'team dynamics issue', 'resolve a dispute', 'interpersonal conflict', 'help two people work together', 'team friction', 'communication breakdown', or 'resolve a workplace disagreement'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--parties <names>] [--type <peer-conflict|manager-employee|cross-department>] [--urgency <standard|urgent>]"
---

# HR Conflict Resolution

Facilitate resolution of workplace conflicts at MBL portfolio companies — interpersonal disputes, team friction, communication breakdowns, and cross-department disagreements. Most workplace conflicts are not moral failures; they are communication gaps, misaligned expectations, or competing priorities that haven't been surfaced. Resolution is possible in most cases without formal HR action if handled early and skillfully. Conflicts that are ignored or minimized tend to escalate to formal complaints, turnover, or team dysfunction.

## When to Use
- Two or more employees are in open conflict that is affecting their work or the team
- A manager reports a team dynamic problem that isn't resolving naturally
- An employee complains about a colleague and wants help addressing it without formal HR action
- A cross-department conflict is blocking a project or creating organizational friction
- Dr. Lewis wants to proactively address a team dynamic issue before it escalates

## Conflict Resolution Framework

```
Conflict resolution pathway — three levels:

Level 1 — COACHING (most conflicts, no formal HR involvement):
  Manager coaches the involved employees to address the conflict directly
  Dr. Lewis coaches the manager on how to have the conversation
  Appropriate when: Both parties are peers; issue is communication style or 
                   misaligned expectations; no policy violation
  Timeline: 1-2 weeks

Level 2 — MEDIATION (conflict isn't resolving, or parties need help):
  Dr. Lewis facilitates a structured conversation between the parties
  Appropriate when: Level 1 failed; conflict is affecting team function; 
                   parties want to resolve but can't get there alone
  Timeline: 1-2 sessions

Level 3 — FORMAL HR ACTION (conflict involves policy violation or serious conduct):
  Use hr-employee-relations skill if harassment, discrimination, or serious conduct is involved
  Conflict resolution is not the right tool when there's a potential policy violation
  Timeline: Per ER investigation process

Key distinctions:
  Conflict resolution ≠ employee relations investigation
  Conflict: two parties with a dispute that needs resolution; both parties involved
  ER investigation: one party alleging wrongdoing by another; formal, documented
  If a conflict reveals potential harassment, discrimination, or retaliation → switch to hr-employee-relations
```

## Output Format

```markdown
# Conflict Resolution — <Company Name>
**Case:** [Brief description — e.g., "Conflict between Coordinator A and Coordinator B over scheduling decisions"]
**Parties:** [Names and roles]
**Referred by:** [Manager / Self-referred / Dr. Lewis proactive]
**Date:** <Date> | **Case manager:** Dr. John Lewis

---

## Conflict Assessment

**Type:** [Peer conflict / Manager-employee / Cross-department / Other]
**Current impact:** [Work quality affected? Team morale? Project blocked?]
**Duration:** [How long has this been going on?]
**Attempted resolution:** [Has the manager or the parties tried to address this? What happened?]
**Urgency:** [🟢 Standard — has not yet affected work outcomes / 🟡 Urgent — affecting work / 🔴 Immediate — significant impact]

**ER flag check:** Does this conflict involve potential harassment, discrimination, retaliation, or other policy violation?
- If YES → Switch to hr-employee-relations; do not use conflict resolution pathway
- If NO → Continue with conflict resolution

---

## Step 1: Individual Conversations

Dr. Lewis speaks with each party separately before any joint session.
**Goal:** Understand each person's perspective without judgment; build trust; identify what each party actually needs.

**Party A — [Name]:**
Date: [Date] | Duration: [X min]

Key questions asked:
1. "Tell me what's happening from your perspective."
2. "What impact is this having on your work?"
3. "What would a good resolution look like for you?"
4. "What do you think the other person's perspective is?"
5. "What's your contribution to the situation, even if it's small?"

[Summary of conversation]

**Party B — [Name]:**
[Same format]

---

## Step 2: Root Cause Analysis

After individual conversations, Dr. Lewis identifies the root cause of the conflict:

| Root cause category | Present? | Details |
|--------------------|---------|---------|
| Communication style mismatch | ✅ / 🔴 | [Specific — e.g., "A is direct/blunt; B interprets directness as hostility"] |
| Misaligned expectations | ✅ / 🔴 | [Specific — e.g., "Who owns the scheduling decision was never clarified"] |
| Competing priorities | ✅ / 🔴 | |
| Historical incident not resolved | ✅ / 🔴 | |
| Personality friction | ✅ / 🔴 | |
| Structural / role ambiguity | ✅ / 🔴 | |

**Primary root cause:** [The one or two factors most driving the conflict]

---

## Step 3: Mediation Session (if appropriate)

**Decision to mediate:** [Yes — joint session appropriate / No — structural resolution without joint session]

**If No:** [Explain — e.g., "Conflict is primarily caused by role ambiguity; the resolution is a role clarification, not a conversation between the parties"]

**If Yes:**

**Ground rules for the session:**
- "I'm here to help you find a resolution — not to judge who's right."
- "Each person speaks without interruption. I'll facilitate."
- "We're looking for what we can each commit to going forward — not relitigating the past."
- "This conversation is confidential. What's said here stays here."

**Session structure (45-60 min):**
1. Dr. Lewis opens: purpose, ground rules, process (10 min)
2. Each party shares: "What's happening from my perspective" (10 min each)
3. Dr. Lewis reflects back what each party heard from the other (5 min)
4. "What would a resolution look like from your side?" — each party (10 min total)
5. Negotiated commitments: what will each person do differently? (10 min)
6. Documentation of commitments; next check-in date (5 min)

**Commitments reached:**
- [Party A] commits to: [Specific behavioral commitment]
- [Party B] commits to: [Specific behavioral commitment]
- [Manager / Dr. Lewis] commits to: [Structural change, if applicable]

---

## Step 4: Resolution and Follow-Up

**Resolution type:**
- [ ] Behavioral commitments agreed (both parties)
- [ ] Structural change (role clarification, reporting change, process change)
- [ ] Escalated to formal ER process (policy violation identified)
- [ ] Unresolved — further action needed

**Check-in scheduled:** [Date — 30 days] | **With:** Dr. Lewis

**30-day follow-up questions:**
1. Have the commitments been kept?
2. Is the conflict resolved, reduced, or still ongoing?
3. Has there been any retaliation or new incidents?

**Closure:** [Resolved ✅ / Partially resolved 🟡 / Ongoing — escalate 🔴]

---

## Manager Debrief

[After resolution, Dr. Lewis briefs the manager on the outcome — without disclosing session details — and any structural changes the manager needs to implement:]

"The conflict between [A] and [B] has been addressed. The core issue was [brief description — e.g., unclear role boundaries]. I've asked both to [brief commitments]. The structural fix on your side is [specific action]. I'll check in with them in 30 days."
```

## Output Contract
- Separate conversations before joint session — every conflict resolution starts with individual conversations; a joint session before understanding each party's perspective is mediation without preparation, which often goes badly; individual conversations also reveal whether a joint session is appropriate or whether the issue is structural (role ambiguity, process gap) and doesn't require a facilitated conversation at all
- Root cause analysis determines the fix — "they don't get along" is not a root cause; communication style mismatch, role ambiguity, historical incident, and competing priorities each have different fixes; a conflict caused by unclear role boundaries is resolved with a role clarification, not a conversation between the parties about their feelings; the fix must match the root cause
- Commitment language is specific and behavioral — "we'll communicate better" is not a commitment; "I will bring scheduling concerns to [Name] directly before going to the manager" is a commitment; every resolution commitment is specific enough that both parties know whether it's being kept or not
- Escalation trigger to formal ER — conflict resolution is not the right tool when harassment, discrimination, retaliation, or serious conduct is involved; if a conflict reveals any of these elements, Dr. Lewis stops the conflict resolution process and transitions to the hr-employee-relations skill; this is explicitly checked at the start of every case
- HITL required: Dr. Lewis facilitates all Level 2 mediation sessions; manager coaches Level 1 with Dr. Lewis support; Matt Mathison notified if conflict involves leadership-level parties or has significant operational impact; 30-day follow-up conducted by Dr. Lewis; ER escalation requires Matt Mathison notification

## System Dependencies
- **Reads from:** Manager input, individual party conversations, prior HR records for same parties, org chart (for structural root cause)
- **Writes to:** Conflict resolution case file (SharePoint/HR/<Company>/Employee Relations/ — confidential); manager debrief notes; commitment documentation; 30-day follow-up notes
- **HITL Required:** Dr. Lewis facilitates; manager coaches Level 1; Matt Mathison notified for leadership-level conflicts or significant operational impact; ER escalation requires Matt Mathison

## Test Cases
1. **Golden path:** Allevio — two practice coordinators in conflict over scheduling decisions → Manager reports: "They're not speaking unless they have to; it's affecting the patient flow." Dr. Lewis conducts separate conversations: Coordinator A: "She never consults me before changing the schedule — she just sends a message in the group chat and I find out the same time as everyone else. I'm the senior coordinator; I should be involved." Coordinator B: "I make scheduling changes when they need to happen fast — I didn't know she expected to be consulted on every change." Root cause: Unclear authority on scheduling decisions; different assumptions about consultation expectations. Fix: Structural, not primarily behavioral — clarify the protocol. Joint session: both agree on new protocol ("changes affecting >2 patients require a 5-min check-in with senior coordinator first; urgent exceptions are flagged in real-time"). Manager updates scheduling policy with the protocol. 30-day follow-up: both report the protocol is working; conflict resolved.
2. **Edge case:** During a mediation session, Party A discloses that Party B made a comment that included a racial slur two months ago → stop the mediation session: "I appreciate you sharing that. This is important, and it needs a different process than what we're doing today. I'm going to pause this conversation and we'll set up a separate meeting today." Transition to hr-employee-relations; do not attempt to resolve this in mediation; document what was disclosed, time-stamp it, and initiate the ER investigation process
3. **Adversarial:** A manager says "just tell them both to get over it and work together" → this approach prolongs the conflict and sends the message that their concerns don't matter; respond: "Telling them to 'get over it' without addressing the root cause usually results in compliance on the surface but ongoing friction underneath — and typically one of them leaves within 6 months. The fastest resolution is actually a structured conversation that identifies the specific issue. I've done this before; most conflicts at this level are resolved in 1-2 sessions and don't recur. It'll take 2 hours of my time. Can I have your permission to reach out to both of them this week?"

## Audit Log
Conflict resolution case files retained by case ID and date — confidential. Individual conversation notes retained. Mediation session commitments retained. 30-day follow-up outcomes retained. ER escalations documented as new cases linked to the conflict record.

## Deprecation
Retire when portfolio companies have dedicated HR managers trained in mediation and conflict resolution, with clear protocols for manager-level conflict handling and only escalating to Dr. Lewis for complex or leadership-level situations.
