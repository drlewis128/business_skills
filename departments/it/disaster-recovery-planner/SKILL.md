---
name: disaster-recovery-planner
description: "Build and maintain a disaster recovery plan. Use when the user says 'disaster recovery', 'DR plan', 'business continuity IT', 'RTO and RPO', 'failover plan', 'backup and recovery', 'DR testing', or 'what happens if our systems go down'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--scope <full|critical-systems|cloud>] [--format <plan|test|brief>]"
---

# Disaster Recovery Planner

Build and maintain a disaster recovery (DR) plan. A DR plan that hasn't been tested is a guess. Most entities don't have one — and the ones that do haven't updated it since it was written. This skill builds the plan, identifies the gaps, and sets the testing schedule.

## When to Use
- Building the DR plan from scratch for a portfolio company
- Annual DR plan review and update
- Post-incident — updating the plan based on what actually happened
- DR test planning and execution
- Cyber insurance renewal — carriers require documented DR plans
- M&A due diligence — what is the target's DR posture?

## Core DR Concepts

| Term | Definition |
|------|-----------|
| **RTO** (Recovery Time Objective) | Maximum tolerable downtime — how fast must systems be back online? |
| **RPO** (Recovery Point Objective) | Maximum tolerable data loss — how much data can we afford to lose? |
| **Failover** | Switching operations to a backup system when primary fails |
| **Failback** | Returning to the primary system after it's restored |
| **DR Test** | Simulated disaster to verify the plan actually works |
| **BCP** | Business Continuity Plan — broader than DR; covers people and processes, not just IT |

## System Criticality Tiers

| Tier | Definition | RTO | RPO |
|------|-----------|-----|-----|
| **Tier 1 — Mission Critical** | System down = business stops (financial systems, core ops, EHR) | 1-4 hours | 15 minutes |
| **Tier 2 — Business Critical** | System down = significant impact but workaround possible | 4-24 hours | 1-4 hours |
| **Tier 3 — Important** | System down = inconvenient but manageable | 24-72 hours | 24 hours |
| **Tier 4 — Non-Critical** | System down = minimal impact | 72+ hours | 72 hours |

## Output Format

```markdown
# Disaster Recovery Plan — <Entity>
**Version:** <N> | **Last updated:** <date> | **Next test:** <date>
**Plan owner:** IT Manager | **Exec sponsor:** Dr. John Lewis

---

## Executive Summary

**What this plan covers:** IT systems only (for people/process BCP, see separate BCP)
**Disaster scenarios covered:** Hardware failure, data center outage, cyberattack, natural disaster
**DR readiness level:** Basic / Intermediate / Mature

---

## System Inventory and Criticality

| System | Function | Tier | RTO Target | RPO Target | Current Backup | Hosted |
|--------|---------|------|-----------|-----------|--------------|--------|
| Microsoft 365 | Email, docs, communication | 1 | 1 hour (MS SLA) | 0 (real-time cloud) | MS native backup | Cloud |
| QuickBooks Online | Financial records | 1 | 4 hours | 4 hours | Daily QBO backup | Cloud |
| GoHighLevel CRM | Sales/marketing | 2 | 24 hours | 4 hours | Daily export | Cloud |
| [On-prem server] | [Function] | 2 | 8 hours | 2 hours | Nightly backup to cloud | On-prem |

---

## Recovery Procedures by Scenario

### Scenario 1: Primary Server Failure
**Trigger:** On-prem server SRV-001 fails to respond
**Detection:** IT monitoring alert / Help desk ticket
**Immediate response (first 15 minutes):**
1. IT on-call notified via [channel]
2. Confirm failure (not just a monitoring false positive)
3. Notify IT Manager and affected business units

**Recovery steps:**
1. Restore from last backup to [cloud or backup server] — Est: 2-3 hours
2. Update DNS/IP settings — Est: 30 minutes
3. Verify connectivity for all affected users — Est: 30 minutes
4. Declare recovery complete — notify stakeholders

**Total estimated RTO:** 3-4 hours
**Data loss risk:** Last backup only — max 24 hours if nightly backup cycle

---

### Scenario 2: Ransomware Attack
**Trigger:** Files encrypted; ransom note found; AV alert
**Immediate response:**
1. ISOLATE — disconnect affected devices from network immediately (do not wait)
2. Notify IT Manager AND Dr. Lewis within 15 minutes
3. Do NOT pay ransom without explicit approval from Dr. Lewis and legal counsel
4. Preserve evidence — do not reimage before forensics
5. Activate Incident Response plan (see `incident-response-coordinator`)

---

## Communication Plan

| Scenario | Who Notifies | Who Gets Notified | Channel | Timing |
|---------|------------|-----------------|---------|--------|
| Any system outage | IT on-call | IT Manager | Phone | Immediately |
| Tier 1 system down > 30 min | IT Manager | Dr. Lewis | Phone | < 30 min |
| Cyberattack | IT on-call + IT Manager | Dr. Lewis + Legal | Phone | Immediately |
| DR declared | IT Manager | All staff + vendors | Email + Slack | < 1 hour |

---

## DR Test Schedule

| Test Type | Frequency | Last Tested | Next Test | Result |
|-----------|---------|------------|---------|--------|
| Tabletop exercise (scenario walkthrough) | Semi-annual | <date> | <date + 6 months> | Pass |
| Backup restore test (restore specific files) | Monthly | <date> | <date + 30 days> | Pass |
| Full failover test (simulate Tier 1 system failure) | Annual | <date> | <date + 12 months> | TBD |

---

## Gaps and Remediation

| Gap | Risk | Remediation Plan | Owner | Due Date |
|-----|------|-----------------|-------|---------|
| No offsite backup for on-prem server | High | Configure cloud backup replication | IT Engineer | <date> |
| DR plan untested in 18 months | High | Schedule tabletop exercise | IT Manager | <date> |
```

## Output Contract
- RTO and RPO always defined for every Tier 1 and Tier 2 system — "we have backups" is not a DR plan
- DR test schedule always documented — a plan that isn't tested is not a plan
- Ransomware scenario always includes isolation-first protocol — payment decision requires Dr. Lewis
- HITL required: IT Manager owns DR plan; Dr. Lewis signs off on final plan; any DR event activation requires IT Manager + Dr. Lewis notification

## System Dependencies
- **Reads from:** IT system inventory, backup logs, cloud provider documentation (provided)
- **Writes to:** Nothing (DR plan document for HITL review and annual testing)
- **HITL Required:** IT Manager maintains and executes plan; Dr. Lewis approves annual plan sign-off and any ransomware payment decision

## Test Cases
1. **Golden path:** 12-system portfolio company DR plan → 4 Tier 1 systems with RTOs defined, backup verification results, full tabletop test plan for Q2, 3 gaps identified with remediation timelines
2. **Edge case:** Entity has no backups at all → treats as critical gap, provides emergency backup implementation plan before completing the DR plan (can't have recovery without backups), estimates time and cost to reach baseline compliance
3. **Adversarial:** Ransomware attack occurs; IT staff wants to pay ransom immediately to restore files → blocks ransom payment until Dr. Lewis and legal counsel authorize, initiates isolation protocol, contacts cyber insurance carrier, preserves evidence for forensics

## Audit Log
DR plans retained by entity and version. Test results documented. Plan activations (real or test) recorded with timeline and outcome.

## Deprecation
Retire when entity deploys a dedicated BCDR platform (Veeam, Zerto, Datto) with automated failover testing, recovery verification, and documented RTO/RPO tracking.
