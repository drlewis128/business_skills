---
name: ops-team-effectiveness
description: "Assess and improve team effectiveness. Use when the user says 'team effectiveness', 'team assessment', 'how is the team performing', 'team health', 'team dynamics', 'team performance', 'assess the team', 'team issues', 'team friction', 'team not working well', 'team productivity', 'team morale', 'team problems', 'assess team dynamics', 'team cohesion', or 'team review'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--team <team name or department>] [--context <routine-review|issue|new-team>]"
---

# Ops Team Effectiveness

Assess and improve team effectiveness at MBL portfolio companies — evaluating how well a team is functioning, identifying friction points, and implementing targeted improvements. Team effectiveness is about whether the right people are working together in the right way to produce the right outcomes. At portfolio scale, teams are usually small (5-20 people) and highly interdependent — a single person who is misaligned, under-performing, or mismanaged creates disproportionate drag on the whole team.

## When to Use
- A team is underperforming against targets and the cause isn't clear
- There is visible friction between team members or between a team and its manager
- A new team has been assembled and needs a foundation assessment
- Following a significant change (new leader, reorganization, rapid growth)
- Annual people operations review — proactive check-in on team health

## Team Effectiveness Framework

```
Team effectiveness dimensions (adapted from Google Project Aristotle + Lencioni):
  1. Psychological safety: Can people speak up, challenge ideas, admit mistakes without fear?
  2. Reliability/accountability: Do people do what they say they'll do?
  3. Structure and clarity: Do people know what they're supposed to do and why it matters?
  4. Meaning: Does the work matter to the people doing it?
  5. Impact: Do people believe their work contributes to outcomes that matter?

Diagnostic signals by dimension:
  Low psychological safety: People don't ask questions in meetings; mistakes are hidden; feedback is absent
  Low reliability: Commitments are missed repeatedly; no follow-through culture
  Low structure: Duplicated work; unclear ownership; same decisions made multiple times
  Low meaning: High turnover; low initiative; people do minimum required
  Low impact: Cynicism about company direction; disconnection between work and results

Management vs. team issue distinction:
  Management issue: The problem is consistent across the team; likely points to leadership
    Signs: Team-wide low morale, high turnover, communication breakdown with manager
    Response: Dr. Lewis addresses with the manager; may involve CEO
    
  Individual issue: The problem is specific to one or two people
    Signs: Isolated underperformance, interpersonal friction with specific colleagues
    Response: Address directly with the individual; manager-led with Dr. Lewis support

Assessment methods:
  Direct observation: Sit in on team meetings; watch how decisions get made
  Individual interviews: 20-minute structured 1:1 with each team member (off the record)
  Manager assessment: Separate conversation — how does the manager see the team?
  Data review: Turnover, engagement scores, performance data, KPI trend by team
  Anonymous pulse: Short survey if team is too guarded for direct interviews
```

## Output Format

```markdown
# Team Effectiveness Assessment — <Company Name> | <Team>
**Date:** [Date] | **Team size:** [N] | **Manager:** [Name]
**Assessment method:** [Observation / Interviews / Survey / Combined]
**Prepared by:** Dr. John Lewis | **Shared with:** [CEO / Manager / Matt Mathison]

---

## Assessment Summary

| Dimension | Rating | Confidence | Evidence |
|-----------|--------|-----------|---------|
| Psychological safety | 🟢/🟡/🔴 | High/Med/Low | [Specific observations] |
| Reliability/accountability | | | |
| Structure and clarity | | | |
| Meaning | | | |
| Impact | | | |

**Overall team health:** 🟢 Strong / 🟡 Developing / 🔴 At risk

---

## Key Findings

**Strengths (what's working well):**
- [Strength 1 — specific, with evidence]
- [Strength 2]

**Friction points:**
- [Issue 1 — what it is, what's causing it, how it manifests]
- [Issue 2]

**Root cause assessment:**
[Is this a management issue, an individual issue, a structural issue, or an external pressure issue? Be direct.]

---

## Individual Signals (summary — no attribution without permission)

This section captures patterns from individual conversations — not a report on specific people.

**Patterns heard:**
- [e.g., "Multiple team members mentioned uncertainty about priorities — they don't know which projects to focus on when they conflict"]
- [e.g., "Strong consensus that the team's work directly impacts patients — high sense of meaning"]

---

## Recommended Actions

| Priority | Action | Owner | By when |
|---------|--------|-------|---------|
| 🔴 High | [Address specific issue] | Dr. Lewis / [Manager] | [Date] |
| 🟡 Medium | [Structural improvement] | | |
| 🟢 Low | [Enhancement] | | |

**Management coaching (if applicable):**
[If the manager needs development — specific, behavioral, not vague: "provide clearer weekly priorities" not "be a better communicator"]

**Performance actions (if applicable):**
[If an individual is the root cause of a significant team issue — escalate through hr-performance-management; this assessment informs but doesn't replace the formal process]

---

## Follow-Up Plan

**30-day check-in date:** [Date]
**Who conducts:** Dr. Lewis (or delegated to CEO if Dr. Lewis is coaching the manager)
**What to measure:** [Specific — did the identified issue improve? What will confirm progress?]

---

## Matt Mathison Brief (if team health is 🔴 or involves a manager-level issue)

[Team] at [Company] assessment: [Overall health]. [Main issue in one sentence]. [Action underway / no action needed from Matt Mathison].
```

## Output Contract
- Assessment is done with the team, not to them — effective team assessment requires trust; telling a team "we're evaluating your effectiveness" and then conducting interviews changes the dynamic; Dr. Lewis frames the assessment as "I want to understand what's working and what would help you do your best work" — the outcome is still the assessment, but the framing invites honest conversation rather than defensive positioning
- Individual conversations are confidential — interviews with team members are not reported verbatim to the manager; patterns are reported, not attributions; if someone shares something that must be escalated (harassment, safety, compliance), Dr. Lewis explains before the interview that actionable concerns will be followed up on — that's the one exception to confidentiality
- Management issues are addressed with the manager, not around them — when the assessment reveals a management problem, Dr. Lewis addresses it directly with the manager first; going around the manager damages trust and makes the situation worse; if the manager is the fundamental problem and cannot improve, that is an escalation conversation with the CEO and potentially Matt Mathison — but it starts with the direct conversation
- Performance actions go through the formal process — the team effectiveness assessment may reveal that an individual is significantly underperforming; the assessment informs the formal performance management process (hr-performance-management) but doesn't replace it; Dr. Lewis follows the proper HR process for any performance-related action
- HITL required: Dr. Lewis conducts assessments; CEO reviews findings; Matt Mathison informed for 🔴 team health or manager-level issues; individual performance actions go through formal HR process with Dr. Lewis; management coaching is Dr. Lewis with CEO alignment

## System Dependencies
- **Reads from:** HR data (turnover, engagement scores), performance records, team KPIs, prior assessment results, manager self-assessment
- **Writes to:** Assessment report (SharePoint/Ops/<Company>/People/TeamEffectiveness/ — restricted access); coaching plan for manager; action items (Monday.com — private); 30-day follow-up calendar
- **HITL Required:** Dr. Lewis conducts and advises; CEO reviews; Matt Mathison for 🔴 health or manager-level issues; individual performance actions require formal HR process

## Test Cases
1. **Golden path:** Allevio billing team (8 people) — KPI decline, no obvious external cause → Observation: Team meeting — manager interrupts frequently, team does not volunteer ideas; Interviews: 5 of 6 team members describe confusion about which claims take priority when multiple urgencies exist; 3 mention they don't know how to raise issues with the manager; Assessment: psychological safety 🔴, structure/clarity 🔴, accountability 🟡, meaning 🟢 (team cares about patient care), impact 🟡; Root cause: management style and lack of priority clarity — manager is creating an environment where people work without knowing what matters most; Action: Dr. Lewis coaches manager on priority communication; introduces weekly 15-min priority standup; follow-up in 30 days; CEO aware; Matt Mathison not yet (management coaching underway — inform if no improvement)
2. **Edge case:** Two specific team members have serious interpersonal conflict that is affecting the whole team → This is an individual issue, not a team design issue; Dr. Lewis meets with each person separately; hears both perspectives; identifies whether the conflict is about work (disagreement on approach) or personal (interpersonal friction); if work: clarify ownership and decision rights; if personal: address professional behavior expectations directly; if it escalates to hostile work environment: activate HR investigation process (hr-workplace-investigation)
3. **Adversarial:** "Teams sort themselves out — we don't need to manage team dynamics" → Small teams with unmanaged dynamics can "sort themselves out" toward either a high-trust, high-performing equilibrium or a low-trust, political, avoid-conflict equilibrium; which one they reach depends heavily on how the first few conflicts are handled; respond: "I agree that over-managing team dynamics is counterproductive. But there are specific moments — a new leader, a team member departure, a performance issue — where a brief assessment prevents the team from drifting into a bad equilibrium. This is one of those moments."

## Audit Log
Assessment results retained by team and date (restricted access). Coaching plans retained. Follow-up check-in results retained. Matt Mathison notifications retained. Action completion dates tracked.

## Deprecation
Retire when portfolio companies have HR leaders or people operations professionals who own team effectiveness assessments, conduct them proactively on a regular cadence, and bring findings to Dr. Lewis for strategic input rather than having Dr. Lewis conduct the full assessment.
