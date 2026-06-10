---
name: change-management-planner
description: "Plan and communicate organizational or process changes to minimize disruption. Use when the user says 'change management', 'how do we roll out this change', 'change plan', 'communicate this change', 'organizational change', 'roll out this new process', or 'change readiness'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<change-description> [--scope <individual|team|entity|portfolio>] [--urgency <low|medium|high>]"
---

# Change Management Planner

Plan the people and communication side of an organizational or process change. Technical changes fail most often because of people, not technology.

## When to Use
- Rolling out a new system or tool
- Reorganizing a team or changing reporting structures
- Implementing a new process or SOP
- Post-acquisition integration (biggest change management scenario)
- Leadership changes or executive transitions
- Policy changes that affect daily work

## Change Management Framework (ADKAR)

| Stage | Question | Goal |
|-------|---------|------|
| **A** — Awareness | Do people know the change is coming? | Build awareness of why |
| **D** — Desire | Do they want to support it? | Create motivation |
| **K** — Knowledge | Do they know how to do it? | Train and educate |
| **A** — Ability | Can they actually do it? | Practice and support |
| **R** — Reinforcement | Does it stick? | Sustain the change |

## Stakeholder Impact Analysis

For each stakeholder group:
| Group | Current State | Future State | Impact Level | Resistance Risk |
|-------|--------------|-------------|-------------|----------------|
| Finance team | Manual AP process | Automated via Bill.com | High | Medium — fear of job change |
| Operations | Status quo | New Monday.com boards | Medium | Low |

## Communication Plan (per stakeholder group)

| Audience | Message | Channel | Frequency | Owner |
|---------|---------|---------|-----------|-------|
| All staff | Why we're changing | All-hands email | Once at announcement | Matt |
| Finance team | What changes in their workflow | Team meeting | 1 week before launch | Controller |
| Managers | How to handle resistance | 1:1 briefing | Before all-staff announcement | Dr. Lewis |

## Communication Sequence

1. **Leadership briefing first** — managers learn before their teams
2. **All-staff announcement** — the "why" and the vision
3. **Role-specific deep dives** — the "what changes for you"
4. **Training** — the "how to do the new thing"
5. **Go-live + 30-day support** — the "where to get help"
6. **Feedback loop** — the "tell us how it's going"

## Output Format

```markdown
# Change Management Plan — <Change Name>
**Entity:** <entity> | **Change Type:** <system|process|org|policy>
**Go-Live Date:** <date> | **Change Owner:** <name>

## Change Summary
**What's changing:** <1-2 sentences>
**Why:** <business rationale>
**What stays the same:** <what isn't changing — important for reducing anxiety>

## Stakeholder Impact Map
[table with groups, impact, resistance risk]

## ADKAR Assessment (current state)
| Stage | Status | Gap |
|-------|--------|-----|
| Awareness | Not started | People don't know yet |
| Desire | Unknown | Need to assess |
| Knowledge | Not started | Training not built |

## Communication Plan
[table with audience, message, channel, timing]

## Timeline
| Date | Activity | Owner |
|------|----------|-------|
| <T-30 days> | Leadership briefing | Matt |
| <T-21 days> | All-staff announcement | Dr. Lewis |
| <T-7 days> | Training sessions | <trainer> |
| <Go-live> | Launch | <owner> |
| <+30 days> | Pulse check and feedback | HR |

## Risk: Resistance
| Group | Resistance Source | Mitigation |
|-------|-----------------|-----------|

## Success Criteria (How will we know the change worked?)
1. <Measurable criterion>
2. <Measurable criterion>
```

## Output Contract
- "What stays the same" section always included — reduces change anxiety
- Managers always briefed before all-staff announcement
- Success criteria always measurable (not "people seem happy")
- HITL required before any change communication is distributed

## System Dependencies
- **Reads from:** Change description, stakeholder list, timeline (provided)
- **Writes to:** Nothing (outputs plan for Change Owner and Matt review)
- **HITL Required:** Matt Mathison reviews changes affecting > 10 employees or involving structural org changes

## Test Cases
1. **Golden path:** New software rollout, 20 affected employees → full ADKAR plan with 4-week timeline
2. **Edge case:** Urgent change (compliance requirement, 1-week notice) → compressed plan prioritizing awareness and knowledge, flags missing reinforcement time
3. **Adversarial:** Request to roll out change without telling employees why → includes the "why" as mandatory — change without rationale creates resistance

## Audit Log
Change management plans retained by initiative and date. Communication sends logged.

## Deprecation
Review change management approach annually as MBL scales.
