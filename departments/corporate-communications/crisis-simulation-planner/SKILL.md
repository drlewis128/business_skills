---
name: crisis-simulation-planner
description: "Plan and run a crisis communications simulation exercise. Use when the user says 'crisis simulation', 'tabletop exercise', 'crisis drill', 'test our crisis response', 'practice our crisis plan', 'run a crisis scenario', 'PR crisis drill', 'crisis tabletop', or 'test our comms plan'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--scenario <type>] [--duration <hours>]"
---

# Crisis Simulation Planner

Plan and facilitate a crisis communications simulation (tabletop exercise) for MBL Partners or a portfolio company — testing the crisis response playbook before a real crisis occurs. Crisis simulations reveal gaps that playbooks miss: the people who don't know their role, the decisions no one wants to make, the holding statement that doesn't hold, the phone number that doesn't work. A simulation is cheap. An actual unprepared crisis is not.

## When to Use
- After building a new crisis response playbook — test it within 30 days
- Annual communications review — run at least one simulation per year
- New crisis team members joined — test the full team together
- A near-miss event occurred — simulate the scenario that almost happened
- Matt Mathison asks "have we actually tested our crisis plan?"

## Simulation Design

```
Tabletop exercise structure (2-3 hours):

Pre-work (1 week before):
  - Participants identified and confirmed
  - Scenario selected (not revealed to participants until exercise begins)
  - Facilitator (Dr. Lewis) prepares scenario injects
  - Ground rules communicated: "This is a safe space to make mistakes"

Exercise phases:
  Phase 1 (15 min): Ground rules + scenario introduction — participants receive the opening situation
  Phase 2 (45-60 min): Response simulation — team works through the first 60 minutes of the crisis
  Phase 3 (30 min): Escalation — inject new developments that complicate the response
  Phase 4 (30 min): Media pressure — add press calls and a published story
  Phase 5 (30 min): Debrief — what went well, what gaps emerged, what needs to change

Key role assignments for exercise:
  - Crisis Lead: Dr. Lewis (facilitator — steps out of lead role for exercise)
  - Decision Authority: Matt Mathison (or designee for exercise)
  - Spokesperson: CEO or designated exec
  - Operations: Relevant portfolio company lead
  - Legal: Fund counsel (if available) or proxy
  - Note-taker: Records decisions, timings, gaps observed
```

## Output Format

```markdown
# Crisis Simulation Plan — <Entity Name>
**Scenario:** <Scenario type>
**Date:** <exercise date> | **Duration:** <X> hours
**Facilitator:** Dr. John Lewis | **Participants:** [List]
**Location:** [In-person / Zoom]

---

## Scenario Brief (Revealed at T+0 to Participants)

**Opening situation (read aloud at exercise start):**

> [Scenario description — enough to begin response but not the full picture]
> 
> Example: "It is [Day] at 10:15am. Allevio's IT director has just called you to report that the electronic health record system has been locked. A ransomware message is on every screen in all three clinics. Patient appointments are currently underway. Patients are in the waiting room. The IT director does not know how long this has been happening or how many records are affected. He is waiting for direction."

---

## Scenario Injects (Facilitator Only — Do Not Share in Advance)

*Release these at timed intervals during Phase 3 to escalate the scenario:*

| Inject # | Time (T+) | Inject text | Purpose |
|---------|-----------|------------|---------|
| 1 | T+20 min | "An Allevio patient has posted to Facebook: 'They just told me my appointment is cancelled and wouldn't explain why. Anyone else having trouble at Allevio?'" | Tests social media monitoring and response |
| 2 | T+35 min | "Arizona Republic healthcare reporter calls Dr. Lewis's cell: 'I'm hearing there's a major IT outage at Allevio. Can you comment?'" | Tests spokesperson and holding statement readiness |
| 3 | T+50 min | "IT director confirms: 15,000 patient records were encrypted. This triggers mandatory HIPAA breach notification." | Tests regulatory knowledge and notification process |
| 4 | T+65 min | "The patient's Facebook post has 47 shares. A local TV news truck is now parked outside the main Allevio clinic." | Tests field response and media pressure escalation |

---

## Facilitator Observation Checklist

During the exercise, observe and note:

**Response speed:**
- [ ] Time from opening scenario to Matt Mathison notification: [___] min (target: <15 min)
- [ ] Time to legal counsel contact: [___] min
- [ ] Time to first holding statement draft: [___] min (target: <45 min)

**Role clarity:**
- [ ] Did everyone know their role? ✅ / ⚠️ / ❌
- [ ] Any decision paralysis? (Who needed to decide but didn't?) [Notes]
- [ ] Single spokesperson maintained? ✅ / ❌

**Message quality:**
- [ ] Holding statement review quality (rate 1-5): [___]
- [ ] Did anyone speculate before facts were known? ✅ Yes (bad) / ❌ No (good)
- [ ] Were legal landmines avoided? ✅ / ❌

**Process gaps:**
- [ ] Missing contact info: [___]
- [ ] Missing decision authority: [___]
- [ ] Playbook referenced? ✅ / ❌ / [No one knew where it was]

---

## Debrief Agenda (Phase 5)

1. **What happened** — Quick timeline of decisions and actions (10 min)
2. **What went well** — Facilitator calls out 3 specific strengths (5 min)
3. **What didn't work** — Facilitator shares gap observations; team discussion (10 min)
4. **Specific playbook updates needed** — Document exact changes (5 min)

**Debrief output:** Simulation summary with top 5 gaps and assigned fixes, all due within 30 days

---

## Post-Simulation Action Plan

| Gap identified | Playbook update needed | Owner | Due |
|---------------|----------------------|-------|-----|
| [Gap 1] | [Specific change to playbook] | Dr. Lewis | [Date] |
| [Gap 2] | [Specific change] | [Owner] | [Date] |

**Simulation summary for Matt Mathison:** [3-5 bullets — overall readiness, top gaps, fixes in progress]
```

## Output Contract
- Scenario is kept secret until T+0 — revealing the scenario in advance defeats the purpose; the simulation must test how participants respond under realistic surprise, not a rehearsed performance
- Injects are pre-planned and timed — improvised injects during the exercise create an uneven experience; the inject schedule must be designed in advance to systematically test each element of the crisis plan
- Debrief is non-negotiable — a simulation without a structured debrief produces no improvement; the debrief is the whole point; never cancel it "because we're running long"
- Post-simulation actions have 30-day deadlines — improvements identified in the simulation that don't get implemented within 30 days will not be implemented; deadlines are set in the debrief
- HITL required: Dr. Lewis facilitates; Matt Mathison participates in or reviews results of all simulations; playbook updates after simulation require Matt Mathison acknowledgment; simulation notes are retained

## System Dependencies
- **Reads from:** Crisis response playbook, contact lists, regulatory requirements
- **Writes to:** Simulation plan (SharePoint/Comms/Crisis/Simulations); post-simulation action plan; playbook updates
- **HITL Required:** Dr. Lewis designs and facilitates; Matt Mathison participates; post-simulation fixes assigned and tracked

## Test Cases
1. **Golden path:** Allevio ransomware simulation → 8 participants; facilitator reveals scenario at T+0; T+12: Matt Mathison notified; T+28: legal counsel called; T+38: holding statement drafted; T+42: social media inject causes moment of debate over who should respond (gap found); T+55: Arizona Republic call handled with holding statement; T+65: HIPAA notification triggers — team correctly identifies 60-day clock; debrief: 3 gaps documented (social media ownership unclear, no legal contact list on phones, holding statement took too long); 3 fixes assigned with 30-day deadline; simulation rated: "Good — not ready for live but significant improvement over no preparation"
2. **Edge case:** Key participant (Matt Mathison) can't attend the simulation → do not skip; run the simulation with a designee in the decision authority role; document that Matt Mathison was not present; brief him on gaps found; schedule a makeup session where he reviews the scenario and decisions made; his presence in future simulations should be non-negotiable for fund-level scenarios
3. **Adversarial:** Participants treat the simulation as a performance, not a real test — they "do the right thing" because they know it's a test → add harder injects that create genuine decision pressure; increase the speed of injects; present a scenario where the "right" answer isn't obvious; the simulation is only useful if participants feel some real pressure; if it's too easy, they haven't learned anything

## Audit Log
Simulation dates, participants, scenarios, and gap findings retained. Post-simulation action plans tracked. Playbook version updated after each simulation.

## Deprecation
Retire when portfolio companies engage crisis communications firms that provide annual tabletop exercises as part of their retainer.
