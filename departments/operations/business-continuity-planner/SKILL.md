---
name: business-continuity-planner
description: "Build or review a business continuity plan for an operational disruption scenario. Use when the user says 'business continuity', 'BCP', 'disaster recovery plan', 'what happens if X goes down', 'continuity planning', 'business resilience', 'what is our backup plan', or 'continuity of operations'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<entity-or-scenario> [--threat <it-outage|natural-disaster|key-person|vendor-failure>] [--action <build|review>]"
---

# Business Continuity Planner

Build or review a business continuity plan (BCP) for operational disruption scenarios. Ensures MBL and portfolio companies can sustain critical functions during disruptions.

## When to Use
- Annual BCP review (minimum cadence)
- After a significant incident (update based on lessons learned)
- Before a high-risk event (severe weather, system migration)
- New entity onboarding (establish baseline BCP)
- When a key person dependency is identified

## BCP Structure

### 1. Scope and Objectives
- What business functions are covered?
- What constitutes a "disruption" requiring BCP activation?
- Recovery objectives: RTO (Recovery Time Objective) and RPO (Recovery Point Objective)

**RTO:** Maximum acceptable time for a function to be restored
**RPO:** Maximum acceptable data loss (how old can the backup be?)

### 2. Business Impact Analysis

For each critical function:
| Function | Max Downtime (RTO) | Max Data Loss (RPO) | Revenue Impact/Day |
|---------|-------------------|--------------------|--------------------|
| Payroll processing | 2 business days | 24 hours | High (employee relations) |
| Invoicing / AR | 1 business day | 4 hours | $X/day |
| Financial reporting | 3 business days | 24 hours | Medium |
| IT systems (core) | 4 hours | 1 hour | $X/day |

### 3. Threat Scenarios and Response Plans

#### IT Outage (Primary Systems Down)
- Trigger: QuickBooks / Bill.com / Microsoft 365 unavailable > 2 hours
- Immediate response: Switch to manual backup procedures
- Manual backups: AP invoices spreadsheet, email-based approval workflow
- Data recovery: Restore from latest backup (verify backup age)
- Communication: Notify Finance team, update status in Teams

#### Key Person Absence (Sudden / Extended)
- Trigger: A critical role is unexpectedly unfilled
- Response: Cross-training backup activates
- Decision authority: Temporary delegation documented
- See: `succession-planning-tracker` for backup designations

#### Natural Disaster / Facility Unavailability
- Trigger: Office unavailable for > 1 day
- Response: Remote work activation (most roles already capable)
- Critical on-site functions: Identify any that require physical presence
- Communication: Emergency contact tree activated

#### Vendor Failure (Critical Vendor Disruption)
- Trigger: Critical vendor unable to deliver for > 48 hours
- Response: Activate backup vendor or manual workaround
- Critical single-source vendors: Identify and document backup options

### 4. Communication Plan
- Who is notified and when (internal and external)?
- External communications: customers, LPs, lenders (see `crisis-communication-drafter`)

### 5. Testing and Maintenance
- Annual tabletop exercise (walk through scenarios without activating)
- Annual update cycle (review and refresh after any incident)

## Output Format

```markdown
# Business Continuity Plan — <Entity>
**Version:** <X.X> | **Last Updated:** <date> | **Owner:** <name>
**Next Review:** <date>

## Scope
**In scope:** <critical functions covered>
**Out of scope:** <what's not covered>

## RTO / RPO Targets
| Function | RTO | RPO |
|---------|-----|-----|
| Core financial ops | 2 business days | 24 hours |
| IT systems | 4 hours | 1 hour |

## Threat Scenarios

### Scenario 1: IT Outage
**Trigger:** [definition]
**Response plan:** [steps]
**Recovery time target:** [RTO]

### Scenario 2: Key Person Absence
...

## Backup Contacts / Escalation
| Role | Primary | Backup |
|------|---------|--------|

## Plan Status
✅ Current and tested / ⚠️ Needs update / ❌ Not tested
```

## Output Contract
- Every critical function has both RTO and RPO defined
- Every threat scenario has a named response owner
- Annual testing requirement noted and tracked
- HITL required before BCP is finalized and distributed

## System Dependencies
- **Reads from:** Business impact analysis inputs (provided), succession plan, vendor list
- **Writes to:** Nothing (outputs plan for Operations lead and Matt review)
- **HITL Required:** Matt Mathison and Operations lead approve before final plan is distributed

## Test Cases
1. **Golden path:** Annual BCP review with no recent incidents → updated plan with RTO/RPO revalidated, next test scheduled
2. **Edge case:** Entity with all staff co-located in one office → flags facility concentration risk, recommends work-from-home protocol documentation
3. **Adversarial:** BCP that says "we'll figure it out" for a key scenario → rejects vague contingencies, requires specific response steps before completing plan

## Audit Log
BCP versions retained with change history. Test exercise outcomes documented.

## Deprecation
Review and update annually — never retire this plan entirely.
