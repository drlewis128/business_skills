---
name: crisis-response-playbook-builder
description: "Build a crisis communications playbook before a crisis occurs. Use when the user says 'crisis comms playbook', 'build a crisis plan', 'communications crisis plan', 'what do we do when something goes wrong', 'crisis preparedness', 'pre-crisis planning', 'reputational risk plan', 'crisis communications framework', or 'prepare for a PR crisis'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--industry <healthcare|energy|adtech|PE>]"
---

# Crisis Response Playbook Builder

Build a crisis communications playbook for MBL Partners or a portfolio company — before a crisis occurs. The playbook defines who decides what, what gets said, and how fast, when a reputational, operational, or legal crisis hits. Organizations that build playbooks before they need them respond in hours; organizations that build them during a crisis respond in days — and by then, the narrative has been set by others.

## When to Use
- Onboarding a new portfolio company — crisis playbook is a Day 30 deliverable
- A portfolio company operates in a high-risk sector (healthcare, energy)
- After a near-miss event that could have become a crisis
- Matt Mathison asks "what's our plan if something goes wrong?"
- Annual communications review — update existing playbook

## Crisis Category Framework for MBL Portfolio

```
Category 1 — Operational Crisis (immediate response, <2 hours)
  Examples:
    - Allevio: patient safety incident, HIPAA breach, clinic closure
    - HIVE: environmental incident, well blowout, OSHA recordable
    - Column6: data breach, advertiser/publisher fraud
    - MBL: portfolio company bankruptcy/failure, LP complaint

Category 2 — Reputational Crisis (response within 4 hours)
  Examples:
    - Negative investigative journalism story
    - Executive misconduct allegation
    - Social media viral negative post
    - Former employee/customer public complaint

Category 3 — Legal/Regulatory Crisis (response coordinated with counsel)
  Examples:
    - Regulatory investigation or inquiry
    - Litigation filed (especially if public)
    - SEC inquiry (MBL fund level)

Category 4 — Market/Financial Crisis (response with Matt Mathison)
  Examples:
    - Significant revenue shortfall requiring LP notification
    - Portfolio company covenant breach
    - Capital call that LPs can't fund
```

## Output Format

```markdown
# Crisis Communications Playbook — <Entity Name>
**Entity:** <Company> | **Industry:** <Sector>
**Date built:** <date> | **Owner:** Dr. John Lewis
**Annual review date:** <date + 12 months>

---

## Crisis Response Team

| Role | Person | Primary contact | Backup |
|------|--------|----------------|--------|
| Crisis Lead | Dr. John Lewis | 602-880-6491 | Matt Mathison |
| Decision Authority | Matt Mathison | [Contact] | Dr. Lewis |
| Legal Counsel | [Fund counsel name] | [Contact] | [Backup] |
| Operations Lead | [CEO of affected entity] | [Contact] | [COO/VP] |
| Financial Contact | [CFO or equivalent] | [Contact] | — |

**When to call Matt Mathison immediately (no delay):**
- Any Category 1 Operational Crisis
- Any media inquiry about fund performance, LP relations, or deal activity
- Any allegation of misconduct by a portfolio company CEO or key person
- Any incident that could result in legal action

---

## First Hour Protocol

```
T+0 to T+15 minutes (Crisis Confirmed):
  1. Confirm facts — what happened, what do we know, what DON'T we know
  2. Categorize the crisis (1-4)
  3. Notify Matt Mathison (phone call, not email)
  4. Alert legal counsel if Category 1, 3, or 4
  5. Do NOT issue any public statement yet

T+15 to T+60 minutes (Assessment):
  1. Assemble crisis team (phone bridge or Zoom)
  2. Draft holding statement (see template below)
  3. Identify who else needs to be notified (LPs, regulators, board)
  4. Determine: is this already in the media? (Check Google, Twitter)
  5. Decide: public statement now or hold?

T+60 minutes:
  1. Holding statement issued (if media has the story)
  2. Full response timeline set
  3. Assign roles and tasks with owners and deadlines
```

---

## Holding Statement Template

*Used when the crisis is known externally and we are not yet ready with a full response:*

> "[Company] is aware of [brief description of situation — acknowledge without admitting fault]. We take this matter very seriously and are actively [what we're doing — investigating / responding / working with authorities]. Our priority is [core value relevant to the situation — patient safety / environmental responsibility / our investors]. We will have more information to share as soon as [timeframe — it becomes available / our assessment is complete]. For inquiries, contact [Dr. John Lewis / communications contact]."

**Do not:**
- Speculate on causes before investigation is complete
- Admit fault before legal review
- Make commitments that can't be kept
- Say "no comment" (use the holding statement instead)

---

## Scenario-Specific Response Plans

### Scenario A: HIPAA / Patient Data Breach (Allevio)

| Step | Action | Owner | Timeline |
|------|--------|-------|---------|
| 1 | Contain the breach (IT + compliance) | Allevio IT + Dr. Lewis | Immediately |
| 2 | Notify Dr. Lewis + Matt Mathison | Allevio CEO | T+30 min |
| 3 | Retain HIPAA breach counsel | Dr. Lewis | T+1 hour |
| 4 | Mandatory HHS notification assessment (60-day clock starts) | Counsel | T+2 hours |
| 5 | Patient notification plan (required if 500+ patients) | Counsel + Dr. Lewis | T+24 hours |
| 6 | Media holding statement if breach becomes public | Dr. Lewis | When needed |

*Note: HIPAA Breach Notification Rule — notify HHS within 60 days; notify affected individuals within 60 days; if >500 individuals in a state, notify prominent media in that state.*

### Scenario B: Environmental Incident (HIVE)

| Step | Action | Owner | Timeline |
|------|--------|-------|---------|
| 1 | Secure site / stop the incident | HIVE operations | Immediately |
| 2 | Notify state/federal regulators (as required) | HIVE GP + counsel | Per regulatory requirement |
| 3 | Notify Dr. Lewis + Matt Mathison | HIVE GP | T+30 min |
| 4 | Environmental/regulatory counsel retained | Dr. Lewis | T+1 hour |
| 5 | Community stakeholder notification (if affected) | HIVE GP + counsel | Per regulatory requirement |
| 6 | Media response if press arrives | Dr. Lewis (coordinates with HIVE GP) | When needed |

### Scenario C: Executive Misconduct Allegation

| Step | Action | Owner | Timeline |
|------|--------|-------|---------|
| 1 | Notify Matt Mathison immediately (phone) | Dr. Lewis | T+0 |
| 2 | Retain employment counsel | Dr. Lewis + Matt Mathison | T+1 hour |
| 3 | Conduct internal investigation (HR + counsel) | Counsel + Dr. Lewis | T+24 hours |
| 4 | Executive placed on administrative leave (if allegation is serious) | Matt Mathison decision | T+24-48 hours |
| 5 | Media holding statement if story breaks | Dr. Lewis drafts; Matt Mathison approves | When needed |
| 6 | Resolution and public statement | Matt Mathison + counsel | After investigation |

---

## Media Response Protocol (During Crisis)

| Situation | Response |
|---------|---------|
| Journalist calls for comment | Use holding statement; confirm receipt; commit to callback time |
| Journalist publishes without comment | Send written correction if factual errors; do not issue angry response |
| Social media escalation | Dr. Lewis monitors; respond to factual errors only; do not engage trolls |
| Multiple media calls simultaneously | Dr. Lewis is single point of contact; no other company representatives speak to press without clearance |

---

## Post-Crisis Review

Within 72 hours of crisis resolution:
- [ ] What happened? (Timeline of events)
- [ ] How did the response go? (Speed, accuracy, effectiveness)
- [ ] What did we get right?
- [ ] What would we do differently?
- [ ] Playbook updates needed?
- [ ] Relationship repair needed? (With media, customers, LPs, regulators)
- [ ] Matt Mathison briefed on lessons learned
```

## Output Contract
- First hour protocol always included — the most dangerous time in a crisis is the first hour; without a protocol, organizations make preventable mistakes (talking too much, wrong person speaks, no legal review); the playbook must define the first 60 minutes in detail
- Scenario plans for industry-specific risks — a generic crisis plan is not enough; Allevio needs a HIPAA plan; HIVE needs an environmental plan; the scenarios must reflect the actual risk profile
- Holding statement template always included — this is the most immediately usable tool in the playbook; it must be ready to deploy within minutes
- Annual review date always set — playbooks that aren't reviewed go stale; personnel change, contacts change, risk profiles change
- HITL required: Dr. Lewis builds the playbook; Matt Mathison reviews and approves; legal counsel reviews for all industry-specific regulatory scenarios; playbook is activated by Dr. Lewis + Matt Mathison jointly — no single person activates alone

## System Dependencies
- **Reads from:** Industry regulatory requirements, company risk profile, key stakeholder list, legal counsel contacts
- **Writes to:** Crisis playbook (SharePoint/Comms/Crisis/Playbook); post-crisis review (SharePoint/Comms/Crisis/After-Action)
- **HITL Required:** Dr. Lewis builds; Matt Mathison approves; legal reviews; activation requires Matt Mathison; any public statement requires Matt Mathison approval

## Test Cases
1. **Golden path:** HIVE environmental monitoring incident → Playbook is pre-built; incident occurs; HIVE GP calls Dr. Lewis (T+20 min); Matt Mathison notified by phone (T+22 min); environmental counsel retained (T+55 min); regulatory notification timeline assessed; no media pickup for first 6 hours; holding statement ready but not needed; incident contained; post-crisis review held 48 hours later; playbook updated with lessons
2. **Edge case:** Crisis occurs while Matt Mathison is traveling internationally with poor connectivity → playbook must include a backup decision authority; Dr. Lewis should have pre-delegated authority for specified response actions (e.g., "Dr. Lewis may issue holding statement without Matt Mathison approval if delay would increase harm"); document the backup clearly
3. **Adversarial:** Journalist calls demanding a statement 30 minutes into a crisis before the facts are known → do not speculate; use the holding statement exactly as written; commit to a specific callback time (e.g., "I'll have more information by 3pm and will call you then"); stick to that commitment or call to explain the delay; never go dark on a journalist who has your number

## Audit Log
Playbook version and review dates logged. Crisis activations documented with timeline. Post-crisis reviews retained. Any media communications during crisis logged.

## Deprecation
Retire and replace with a full crisis communications firm engagement when a portfolio company reaches the size where an external firm's 24/7 response capability is warranted.
