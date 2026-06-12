---
name: post-mortem-drafter
description: "Generate structured incident post-mortem documents from raw notes, timelines, or conversation. Use when the user says 'write a post-mortem', 'incident post-mortem', 'draft the RCA', 'root cause analysis document', 'incident report', 'what happened during the outage', 'document the incident', or 'we had an incident and need to write it up'. Produces blameless, action-oriented post-mortems following the Google SRE standard."
metadata:
  version: 1.0.0
  tier: process-audit
  owner: Dr. John Lewis
argument-hint: "[--template <basic|full|executive>]"
---

# Post-Mortem Drafter

Produce structured, blameless post-mortem documents from raw incident data. The goal: understand what happened, why, and prevent it from happening again — not assign blame.

## When to Use

- After any production incident (outage, data loss, security event, severe performance degradation)
- After a near-miss that would have caused significant impact
- When a recurring issue is being formally documented for the first time
- When an incident requires external reporting (to LP investors, customers, or regulators)

## Templates

`--template basic` — concise, 1-page format for minor incidents  
`--template full` (default) — comprehensive SRE-standard format  
`--template executive` — non-technical summary for leadership/board communication

## Input Collection

If the user provides no structured input, ask for:

1. **Incident summary** — What broke? What was the user impact?
2. **Detection** — How was the incident discovered? By who? At what time?
3. **Timeline** — Walk through what happened in chronological order. Even rough notes are fine.
4. **Contributing factors** — What conditions allowed this to happen?
5. **Resolution** — What was done to restore service?
6. **Duration** — When did the incident start? When was it fully resolved?

Then build the document from those inputs.

## Post-Mortem Structure (Full Template)

### Section 1 — Header

```
Incident Title: <descriptive, not vague — "Database connection pool exhaustion caused 47-minute API outage">
Date: <incident date>
Duration: <X hours Y minutes>
Severity: SEV-1 (total outage) / SEV-2 (partial/degraded) / SEV-3 (minor impact)
Status: Draft / Under Review / Approved
Author: <who wrote this>
Reviewers: <who needs to review>
```

### Section 2 — Executive Summary (3-5 sentences)

Plain-language description suitable for a non-technical audience:
- What happened
- Who was affected and how
- How long it lasted
- What was done to fix it
- Key action item summary

### Section 3 — Timeline

Chronological event log. Each entry: `[HH:MM TZ] Event`

Critical moments to always include:
- First signs of the problem (even if unrecognized at the time)
- First user/customer impact
- Detection / alert fired
- Incident declared
- First responder engaged
- Diagnosis achieved
- Mitigation applied (partial recovery)
- Full resolution
- Incident closed

Mark each entry's source: alert / user report / monitoring / manual discovery

### Section 4 — Root Cause Analysis

**Immediate cause**: The specific technical failure that directly caused the incident.

**Contributing factors** (5-why analysis): Walk up the causal chain.

Format:
```
Why did the API go down?
→ Because the database connection pool was exhausted.

Why was the pool exhausted?
→ Because a new query introduced in the deploy at 14:23 performed N+1 queries without connection release.

Why was the N+1 query not caught?
→ Because there was no load test that replicated production query volume in staging.

Why was there no representative load test?
→ Because the staging environment has 1/100th the data of production and load tests were not part of the deployment checklist.

Why is load testing not in the deployment checklist?
→ Because the deployment checklist was last reviewed 18 months ago and hasn't been updated for database-intensive features.
```

Root cause level to stop at: the most actionable level (where a process change prevents recurrence, not "because humans make mistakes").

### Section 5 — Impact

Quantify:
- Duration of impact: `HH:MM`
- Users affected: `N users / X% of active users / all users`
- Requests failed: `N requests` (if measurable)
- Revenue impact: `$X estimated` (if applicable — flag this section as requiring finance review)
- SLA impact: `X.XX% uptime for the period — SLA threshold: Y.YY%`
- Data integrity impact: none / partial / significant (describe)

### Section 6 — What Went Well

Blameless — identify genuinely positive signals:
- Monitoring caught X quickly
- On-call response was fast
- Rollback procedure worked cleanly
- Communication to stakeholders was timely
- Runbook was accurate and helped

### Section 7 — What Went Wrong

Not blame — systemic gaps:
- Monitoring didn't cover X scenario
- Alert threshold was too high — detected late
- Runbook was out of date for Y scenario
- Communication gap between team A and team B
- Staging didn't replicate the failure condition

### Section 8 — Action Items

Each action item must have:
- Clear owner (a name, not a team)
- Due date
- Category: Prevention / Detection / Response / Communication

Format:
| Action | Owner | Due Date | Category | Priority |
|--------|-------|----------|----------|---------|
| Add connection pool monitoring alert | <name> | <date+7 days> | Detection | High |
| Update deployment checklist with load test gate | <name> | <date+14 days> | Prevention | High |
| Conduct staging data refresh to 10% of prod volume | <name> | <date+30 days> | Prevention | Medium |

Rule: Every root cause in Section 5 must have at least one corresponding action item. If it doesn't, call it out as a gap.

### Section 9 — Appendix (Full Template Only)

- Monitoring graphs / screenshots (reference links, not embedded)
- Relevant log excerpts (anonymized)
- Slack/Teams thread summary
- Customer communication sent

## Executive Template

Shorter version for LP communications, board reporting, or customer-facing disclosure:

```markdown
# Incident Summary — <date>

**What happened:** <2-3 sentence plain English summary>

**Who was affected:** <customer/user impact statement>

**Duration:** <X hours>

**Resolution:** <what was done>

**Prevention:** <top 2-3 actions being taken>

**Current status:** Fully resolved / Monitoring for recurrence
```

## Output Contract

- All post-mortems are blameless — if a draft contains person-blaming language, reframe to systemic factors
- Revenue/dollar impact sections are clearly marked as estimates requiring finance confirmation
- Every root cause maps to at least one action item
- Action items have named owners and dates — vague "the team will..." is rejected
- Customer-visible incidents require a separate communication draft (ask if needed)

## System Dependencies

- **Reads from:** Inputs provided in conversation (notes, logs, timeline)
- **Writes to:** Nothing automatically — outputs draft for user to save
- **HITL Required:** Financial impact estimates and customer communications must be reviewed by Dr. Lewis before sending

## Feedback

Engineering and ops leads (Tier 2) may adjust template sections for domain-specific incident types. Log via `skill-feedback-collector`.
