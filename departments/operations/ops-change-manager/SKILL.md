---
name: ops-change-manager
description: "Manage organizational or operational change. Use when the user says 'change management', 'managing change', 'implementing a change', 'change is not sticking', 'resistance to change', 'rolling out a new process', 'change adoption', 'transition management', 'implement a new system', 'change communications', 'change plan', 'how do we get people to adopt', 'rollout plan', or 'change readiness'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--change <description of the change>] [--scope <individual|team|company>] [--timeline <weeks>]"
---

# Ops Change Manager

Manage organizational and operational change at MBL portfolio companies — ensuring that process changes, system implementations, policy updates, and organizational redesigns actually stick. Most change failures are not technical failures — they are people failures: insufficient communication, unclear rationale, inadequate training, or poorly managed resistance. A well-executed change plan converts "we announced the change" into "the change is working."

## When to Use
- A new system, process, or policy is being implemented and adoption is required
- A previous change attempt failed and needs to be re-approached
- A change is generating significant resistance and needs structured management
- A portfolio company is going through a significant operational transition (new leadership, restructuring, M&A integration)
- Matt Mathison is initiating a cross-company change and needs a rollout plan

## Change Management Framework

```
ADKAR model — the 5 building blocks of successful change:
  A — Awareness: People know WHY the change is happening
  D — Desire: People WANT to participate in the change
  K — Knowledge: People know HOW to change (training, information)
  A — Ability: People CAN make the change (tools, support, time)
  R — Reinforcement: Change is sustained and embedded in how we operate

Each element must be present for change to succeed.
If adoption fails, diagnose which ADKAR element is missing before prescribing a solution.

Common change failure modes and ADKAR diagnosis:
  "People know about it but aren't doing it" → Missing D (desire) or A (ability)
  "People don't know why we're doing this" → Missing A (awareness)
  "People tried but reverted to the old way" → Missing R (reinforcement)
  "People want to change but don't know how" → Missing K (knowledge) or A (ability)
  "No one's doing it and no one cares" → Missing A (awareness) and D (desire)

Change scope and management intensity:
  Minor change (affects one team, low disruption): Simple communication + training + check-in
  Moderate change (affects multiple teams or requires behavior change): Full change plan
  Major change (affects whole company, significant behavior change, or high risk): Full change
    plan + executive sponsorship + reinforcement tracking

Resistance handling — three types:
  Informational resistance: "I don't understand why" → More explanation, clearer rationale
  Emotional resistance: "I'm afraid I can't do this" → More support, early wins, reassurance
  Rational resistance: "I think this is the wrong approach" → Listen; may be valid; incorporate if warranted
```

## Output Format

```markdown
# Change Management Plan — <Change Name>
**Company:** <Entity> | **Change owner:** Dr. John Lewis (or delegate)
**Change sponsor:** [Executive — the person with authority who visibly champions the change]
**Change scope:** [Who is affected — N employees across N departments]
**Timeline:** [Start date → completion date]
**Date:** [Date]

---

## Change Description

**What is changing:** [Specific and factual — not "improvement initiative" but "the AP invoice approval process in Bill.com is replacing the current email approval chain"]
**What is NOT changing:** [Explicitly state what remains the same — reduces fear and rumors]
**Why now:** [The business reason — honest and specific; "it's better" is not a reason]

---

## Stakeholder Analysis

| Stakeholder group | Size | Impact level | Current attitude | Influence on others |
|------------------|------|-------------|-----------------|-------------------|
| [Billing team] | 4 | 🔴 High | 🟡 Skeptical | High (direct users) |
| [Department managers] | 6 | 🟡 Medium | 🟢 Supportive | High (team influencers) |
| [Finance] | 2 | 🟡 Medium | 🟢 Supportive | Medium |
| [Executive team] | 3 | 🟢 Low | 🟢 Neutral | High (sponsors) |

**Change champion identified:** [Name — the informal leader who will champion the change within the most resistant group]

---

## ADKAR Assessment (current state)

| ADKAR element | Current level (1-5) | Gap | Intervention needed |
|--------------|-------------------|-----|-------------------|
| Awareness (know WHY) | [X/5] | [Y] | [Specific communication] |
| Desire (WANT to change) | [X/5] | | [Specific engagement] |
| Knowledge (know HOW) | [X/5] | | [Specific training] |
| Ability (CAN do it) | [X/5] | | [Specific support] |
| Reinforcement (sustained) | [X/5] | | [Specific reinforcement mechanism] |

**Lowest ADKAR score:** [Element] — this is the primary barrier to successful change.

---

## Change Communication Plan

| Communication | Audience | Medium | Timing | Owner | Message |
|--------------|---------|--------|-------|-------|---------|
| Change announcement | All affected | Email + Team meeting | [2 weeks before go-live] | [Sponsor name] | Why this is happening; what changes; what doesn't |
| Manager briefing | Managers | 1:1 or small group | [3 weeks before] | Dr. Lewis | Full context; anticipated questions; how to support their teams |
| Q&A session | All affected | Teams meeting | [1 week before] | [Sponsor + Dr. Lewis] | Open questions and concerns addressed |
| Go-live reminder | All affected | Email | [Day before] | Dr. Lewis | Quick reference; who to call with questions |
| 30-day check-in | All affected | Short survey + meeting | [30 days post] | Dr. Lewis | How is it going; what support is needed |

**Key messages (must appear in all communications):**
1. [Why this change — specific business reason]
2. [What's in it for the people being asked to change]
3. [What support is available during the transition]
4. [What happens if the change doesn't go well — honest; avoid threats]

---

## Training Plan

| Training | Audience | Format | Duration | Owner | Date |
|---------|---------|--------|---------|-------|------|
| [New system walkthrough] | [Direct users] | [Live demo + practice] | [60 min] | [Dr. Lewis / vendor] | [Date] |
| [Quick reference guide] | [All affected] | [One-page document] | [Self-paced] | [Dr. Lewis] | [Available at go-live] |
| [Advanced training] | [Power users] | [1:1 coaching] | [30 min/person] | [Dr. Lewis] | [Week 1 post go-live] |

---

## Resistance Management

**Anticipated resistance from:** [Billing team — primary users; most impacted; current process is familiar]
**Nature of resistance:** [Rational + Emotional — they've used the email process for 3 years and are uncertain about the new system]
**Response plan:**
1. Acknowledge the disruption honestly: "This change will be harder for some of you than others. That's normal and we're prepared to support you."
2. Change champion engaged: [Name] will be trained first and be a peer resource during the transition
3. Early-win milestone: [First successful approval in new system celebrated explicitly]
4. Fallback window: [Old process available for 2 weeks post go-live if a specific issue requires it — clearly communicated as temporary]

---

## Reinforcement Plan

| Reinforcement mechanism | Timing | Owner |
|------------------------|-------|-------|
| Manager check-in with each direct report | Week 1 and Week 2 | Managers |
| Usage metric reviewed | Weekly for 4 weeks | Dr. Lewis |
| 30-day adoption report | Day 30 | Dr. Lewis → Matt Mathison |
| Recognition for early adopters | Week 2 | CEO / Dr. Lewis |
| Old process formally retired | [Date — 30 days post go-live] | Dr. Lewis |

**Adoption target:** [X%] of affected employees using the new process correctly by Day 30.
**How measured:** [Bill.com audit log / system usage report / manager observation]

---

## Go/No-Go Criteria

The change goes live on [Date] if:
- [ ] All affected employees have completed training
- [ ] System configuration is tested and approved
- [ ] Quick reference guide is available
- [ ] IT/vendor support available for first week
- [ ] Change sponsor confirms go-live
```

## Output Contract
- Sponsor is required — every significant change needs an executive sponsor: one person with authority who visibly endorses the change; "Dr. Lewis is driving the change" is insufficient if the CEO hasn't publicly committed to it; the sponsor's role is to communicate the "why" at a level of credibility that Dr. Lewis doesn't have as a systems engineer; without a sponsor, the change is a Dr. Lewis initiative, not a company initiative
- ADKAR diagnosis drives intervention design — the right communication won't fix a training gap; the right training won't fix a desire problem; every change plan starts with an ADKAR assessment because prescribing without diagnosis wastes effort; if you don't know which element is missing, you're guessing
- Resistance is expected, named, and planned for — a change plan that assumes no resistance is not a change plan; the plan names the most likely resistant group, characterizes the nature of their resistance (informational, emotional, rational), and has a specific response plan; resistance is not a failure — unmanaged resistance is a failure
- Old process retirement is explicit — if the old process remains available indefinitely, many people will revert; the change plan sets a date for retiring the old process (typically 30 days post go-live with a warning) and communicates it in advance; "we'll turn it off on [Date]" is more effective than "we prefer you use the new system"
- HITL required: Dr. Lewis designs and executes all change plans; CEO is the change sponsor for company-wide changes; Matt Mathison notified if a change involves >$25K investment or cross-portfolio impact; 30-day adoption report delivered to Matt Mathison for significant changes; any change to a compliance-sensitive process (Allevio billing, HIVE reporting) reviewed with regulatory context before go-live

## System Dependencies
- **Reads from:** ADKAR assessment, stakeholder map, project plan (ops-project-tracker), system/process documentation
- **Writes to:** Change management plan (SharePoint/Ops/<Company>/Change Management/); communication templates; training materials; adoption tracking reports; Matt Mathison brief
- **HITL Required:** Dr. Lewis owns change plan; CEO serves as sponsor for company-wide changes; Matt Mathison notified for significant changes; go/no-go decision by Dr. Lewis + sponsor; 30-day adoption report to Matt Mathison

## Test Cases
1. **Golden path:** HIVE Partners — implementing a new production reporting tool to replace email + Excel → Change scoped: 3 field supervisors + 1 office coordinator + 1 controller (5 people); Stakeholder analysis: field supervisors 🔴 high impact, 🟡 skeptical ("another new tool"); Sponsor: HIVE GM (endorses in kick-off meeting); ADKAR: Awareness 4/5 (told why), Desire 2/5 (not sure it's better), Knowledge 1/5 (no training yet), Ability 1/5 (no practice), Reinforcement 0/5; Intervention: (1) Field supervisor 1:1s to surface specific concerns → address "it takes more time to use a system than email" with a live demo showing it's actually faster; (2) Training session with each supervisor (30 min 1:1 walkthrough); (3) Change champion: most experienced supervisor trained first and becomes peer resource; (4) Week 1: Dr. Lewis available for questions daily; (5) Day 30: old email process retired; Adoption: 100% at Day 30 confirmed via system logs
2. **Edge case:** Change is announced but adoption is 0% at Day 14 → ADKAR reassessment: talk to 3-4 people doing it wrong; diagnose gap: "They know about it and say they want to but they keep reverting to the email process" → Missing Ability (A); they've been trained but can't execute in the moment; solution: add a quick reference guide (laminated at field workstation); add a "first 5 submissions" buddy (change champion does them together with each supervisor); availability of Dr. Lewis via phone for first 2 weeks for any question; 🔴 escalation: if still 0% at Day 21, executive sponsor is activated to have a direct conversation with each non-adopter
3. **Adversarial:** CEO says "just mandate the change and if people don't comply, discipline them" → Compliance via threat produces minimum viable adoption and maximum resentment; respond: "We can do that, and it will technically work — people will use the system. But we won't get the quality of use we need for the data to be reliable, and we'll have a team that resents the tool. The change management approach takes 3 more weeks but produces genuine adoption. Given that we need accurate production data in this system for LP reporting, I'd rather have 3 weeks of proper rollout than 3 months of garbage-in-garbage-out data that creates errors in the Covercy reports."

## Audit Log
All change management plans retained by company and change name. ADKAR assessments retained. Communication records retained. Training attendance documented. Adoption metrics retained. Sponsor approvals retained. Go/no-go decisions documented.

## Deprecation
Retire when portfolio companies have operations managers with change management experience (PROSCI, Kotter, or equivalent) who lead their own change initiatives with Dr. Lewis in a coaching/review role.
