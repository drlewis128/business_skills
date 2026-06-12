---
name: on-call-runbook-builder
description: "Build on-call runbooks and incident response procedures. Use when the user says 'on-call runbook', 'incident runbook', 'on-call guide', 'what to do when X breaks', 'escalation procedures', 'alert runbook', 'on-call rotation', 'on-call documentation', 'incident playbook', or 'ops runbook'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--system <name>] [--alert <alert-name>] [--mode <build|update|review>]"
---

# On-Call Runbook Builder

Build and maintain on-call runbooks for MBL engineering. A runbook is the difference between a 10-minute incident and a 4-hour incident — it gives the on-call engineer a documented path from alert to resolution without needing to wake the author at 2am. Good runbooks are specific, tested, and updated after every incident that exposes a gap.

## When to Use
- New service is being added to on-call rotation
- An alert is firing but no runbook exists
- Post-mortem identified a runbook gap
- New engineer joining on-call rotation needs documentation
- Existing runbook is stale (hasn't been reviewed in >6 months)

## Runbook Requirements

```
A complete runbook answers:
  1. What does this alert mean?
  2. How do I verify the problem?
  3. What's the immediate mitigation?
  4. What's the root cause investigation path?
  5. When do I escalate and to whom?
  6. How do I know it's resolved?
  7. What do I document after the incident?
```

## Severity Classification

| Level | Definition | Response Time | Escalation |
|-------|-----------|--------------|-----------|
| **P1 — Critical** | Complete service outage or data loss | Immediate (<5 min) | Dr. Lewis within 15 min; Matt Mathison if >30 min |
| **P2 — High** | Significant degradation; subset of users affected | <15 min | Dr. Lewis within 30 min |
| **P3 — Medium** | Non-critical feature unavailable; workaround exists | <1 hour | Normal business hours |
| **P4 — Low** | Minor issue; no user impact | Next business day | None required |

## Output Format

```markdown
# On-Call Runbook: <Alert/Service Name>
**Service:** <service name>
**Alert name:** <exact alert name as it appears in monitoring>
**Severity:** P1 / P2 / P3
**Last reviewed:** <date> | **Reviewed by:** Dr. John Lewis
**Runbook version:** <N>

---

## What This Alert Means

**In plain English:** <what is actually wrong in the system when this fires>
**Business impact:** <who is affected and how — customers, revenue, compliance>
**False positive rate:** <how often does this fire without an actual problem?>

---

## Immediate Verification (Step 1 — Before Taking Action)

Confirm the alert is real before acting:

```bash
# Check service health
curl -s https://<service>/health | jq .status

# Check recent error rate
# [specific query or dashboard link]

# Check if this is a known maintenance window
cat /tmp/maintenance.txt  # or check Monday.com board
```

**If alert is a false positive:** Silence for <N> hours; file a ticket to fix the alerting threshold.
**If alert is confirmed real:** Continue to mitigation.

---

## Immediate Mitigation (Step 2 — Stop the Bleeding)

**Estimated time:** <N> minutes
**Effect:** <what this does — it may not fix root cause but stops immediate impact>

```bash
# Option A — restart service (fastest, least risk)
systemctl restart <service>

# Option B — roll back to previous version
# [deployment rollback command]

# Option C — enable feature flag to disable affected feature
# [feature flag command]
```

**Choose based on:** <guidance on which option to use when>

---

## Root Cause Investigation (Step 3 — After Mitigation)

Work in order — stop when you find the cause:

```bash
# 1. Check application logs
journalctl -u <service> -n 200 --since "30 min ago"

# 2. Check database connectivity
psql $DATABASE_URL -c "SELECT 1;"

# 3. Check external dependencies
curl -s https://<dependency-health-endpoint>

# 4. Check for recent deployments
git log --since="2 hours ago" --oneline
```

**Common root causes for this alert:**
1. [Most common]: <symptom in logs> → [fix]
2. [Second most common]: <symptom> → [fix]
3. [Rare]: <symptom> → [escalate]

---

## Escalation

**Escalate to Dr. Lewis when:**
- Mitigation hasn't resolved the issue in <N> minutes
- Root cause is a database corruption or data loss
- Incident has HIPAA implications (Allevio — PHI involved)
- You're unsure and user impact is ongoing

**Dr. Lewis contact:**
- Phone: 602-880-6491 (call for P1; text for P2)
- Email: jlewis@mblpartners.com

**Escalation script:**
"[System] alert fired at [time]. I've [action taken]. Issue is [resolved/ongoing]. I need [specific help]."

---

## Resolution Verification

Incident is resolved when:
- [ ] Alert has stopped firing for at least 10 minutes
- [ ] Health check endpoint returning 200
- [ ] Error rate back to baseline
- [ ] [Any specific check for this service]

---

## Post-Incident Actions

Complete within 24 hours for P1/P2:
- [ ] Update incident log in Monday.com: actual start time, resolution time, actions taken
- [ ] File ticket for permanent fix (if mitigation was a workaround)
- [ ] Update this runbook if a step was missing or wrong
- [ ] Trigger post-mortem if P1 or >30 min customer impact

---

## Related Runbooks
- [Related runbook 1]
- [Related runbook 2]

## Key Resources
- Dashboard: [monitoring dashboard link]
- Service logs: [log link]
- Deployment history: [deployment history link]
```

## Output Contract
- Immediate verification step always included before taking action — acting before verifying wastes time and can worsen incidents
- Every step must have a command, link, or concrete action — "check the logs" is not a step
- Escalation always defined with specific contact and threshold — "escalate if needed" is not a procedure
- Resolution criteria always defined — "incident is over when you feel better" creates ambiguous handoffs
- HITL required: Dr. Lewis reviews all P1 runbooks before they go live; Allevio runbooks with HIPAA implications reviewed by compliance; runbook updates after incidents require Dr. Lewis review

## System Dependencies
- **Reads from:** Monitoring and alerting system configuration; recent incident post-mortems; system architecture documentation
- **Writes to:** Runbook library (SharePoint/Engineering); on-call documentation wiki
- **HITL Required:** Dr. Lewis reviews; Allevio P1 runbooks reviewed by compliance; on-call rotation assignments approved by Dr. Lewis

## Test Cases
1. **Golden path:** Build runbook for "High API Error Rate" alert on MBL Meeting Intelligence service → P2; verification: check error rate dashboard + recent deployments; mitigation: restart service or roll back; root causes: 1) bad deployment (check git log — roll back), 2) Claude API rate limit (check Claude dashboard — add retry logic), 3) database connection exhaustion (check pg_stat_activity — restart connection pool); escalate to Dr. Lewis if >15 min
2. **Edge case:** Alert fires during a planned maintenance window → runbook should include: check maintenance calendar before acting; if maintenance is scheduled, silence alert; if alert fires outside maintenance window unexpectedly, treat as real
3. **Adversarial:** On-call engineer skips runbook and goes straight to database commands to "fix it faster" → worst-case scenario: destructive action on production DB without root cause confirmation; runbook exists to prevent this; enforce runbook-first discipline in retrospectives; add 30-second cooling-off requirement before any DB write during an incident

## Audit Log
Runbook versions retained. Incident response actions documented. Runbook updates after incidents logged.

## Deprecation
Retire individual runbooks when services are fully automated with self-healing (auto-restart, auto-rollback) and the corresponding alert is eliminated.
