---
name: business-continuity-tester
description: "Plan and run business continuity and disaster recovery tests. Use when the user says 'BC test', 'DR test', 'disaster recovery test', 'business continuity test', 'tabletop exercise', 'test our DR plan', 'simulate an outage', or 'test recovery'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <tabletop|functional|full-failover>] [--scenario <ransomware|outage|natural-disaster|vendor-failure>]"
---

# Business Continuity Tester

Plan and execute business continuity and disaster recovery tests. A DR plan that's never been tested is a guess. This skill designs and runs structured tests from low-impact tabletop exercises to full system failover drills — and turns the findings into plan improvements before the real disaster.

## When to Use
- Annual DR test (mandatory for SOC 2 and cyber insurance)
- Before updating the DR plan
- After a real incident (test the updated plan)
- Portfolio company assessment — has their DR plan ever been tested?
- New critical system deployed — test its recovery before it's mission critical

## Test Types

| Test Type | What It Does | Effort | Risk | Frequency |
|-----------|------------|--------|------|----------|
| **Tabletop exercise** | Team walks through a scenario verbally; no systems touched | Low | None | Semi-annual |
| **Functional test** | Specific procedures tested (e.g., restore a backup; failover one system) | Medium | Low (controlled) | Quarterly |
| **Parallel test** | Recovery system brought online alongside production (both running) | High | Low-Medium | Annual |
| **Full cutover / failover** | Production system taken offline; full recovery to backup | Very High | High | Annual (select systems) |

## Test Scenarios

| Scenario | Systems Affected | Key Tests |
|---------|-----------------|---------|
| **Ransomware attack** | All systems (simulated) | Isolation procedure, backup restore, communication plan |
| **Internet / WAN failure** | All cloud-dependent systems | Failover to cellular/backup ISP, local-only operations |
| **Primary server failure** | SRV-001 / on-prem servers | RTO from last backup; DNS cutover; user notification |
| **Microsoft 365 outage** | Email, Teams, SharePoint | Offline access, alternate communication channel |
| **Key vendor failure** | Krista.ai / critical SaaS | Workaround processes; manual alternatives |
| **Natural disaster / office unavailable** | Physical office systems | Remote work activation, phone tree, VPN access |

## Output Format

```markdown
# DR/BC Test Plan — <Entity>
**Test type:** Tabletop / Functional / Parallel / Full cutover
**Scenario:** <scenario> | **Date:** <date> | **Duration:** <hours>
**Participants:** IT Manager, Dr. Lewis (for exec scenarios), IT staff, department leads (for tabletop)

---

## Test Objectives

1. Verify that [specific procedure] works as documented
2. Validate that RTO for [system] can be met within [X hours]
3. Identify gaps in the DR plan
4. Test communication protocols

---

## Pre-Test Checklist

- [ ] Test scenario briefed to all participants (tabletop only — don't brief if testing real responses)
- [ ] Backup verified and available before test begins
- [ ] Production systems protected (no risk of damaging production during test)
- [ ] IT Manager and Dr. Lewis available for the duration
- [ ] Communication plan tested at start of scenario

---

## Test Scenario: Ransomware

**Scenario brief:** IT receives an alert from the endpoint protection tool. Multiple files on SRV-001 have been encrypted. A ransom note was found.

**Inject 1 (0:00):** Simulated ransomware alert
**Inject 2 (0:30):** Additional workstations found encrypted
**Inject 3 (1:00):** Ransom demand received

**Decisions that will be tested:**
- Who makes the isolation decision? Within how many minutes?
- Who notifies Dr. Lewis? Within what timeframe?
- What is the communication to staff?
- Do we pay ransom? Who authorizes?
- How long does restore take from backup?

---

## Test Results

| Test Objective | Target | Actual | Result | Gap Found |
|--------------|--------|--------|--------|----------|
| Isolation decision made | < 15 min | 22 min | ❌ Missed | IT on-call wasn't aware of isolation authority |
| IT Manager notified | < 15 min | 12 min | ✅ Met | |
| Dr. Lewis notified | < 30 min | 28 min | ✅ Met | |
| Backup restore initiated | < 1 hour | 1.5 hours | ❌ Missed | Backup credentials not found quickly — stored wrong |
| Full restore completed | < 4 hours | 6.5 hours | ❌ Missed | Restore process slower than planned |
| Staff communication sent | < 1 hour | 45 min | ✅ Met | |

---

## Findings and Remediation

| Finding | Root Cause | Priority | Action | Owner | Due |
|---------|-----------|---------|--------|-------|-----|
| IT on-call unclear on isolation authority | Runbook ambiguous | Critical | Update runbook — IT Tech has authority to isolate; call manager after | IT Manager | 7 days |
| Backup credentials difficult to find | Stored in unsystematic location | High | Move to password manager; update runbook | IT Manager | 14 days |
| Restore took 6.5 hours vs. 4-hour RTO | Restore process not practiced | High | Quarterly restore drill | IT Engineer | Next quarter |

---

## Plan Updates Required

Based on this test, the following DR plan sections need updating:
- Section 3 (Isolation procedure): Add explicit IT Tech authority
- Section 7 (Backup restore): Update with correct credential location + time estimate
- Appendix A (Contact list): Update to confirm on-call rotation
```

## Output Contract
- Test findings always include root cause — finding without root cause leads to superficial fixes
- Remediation actions always have owners and deadlines — test reports without follow-through are theater
- DR plan always updated within 30 days of test findings — no new test without closing last test's gaps
- HITL required: Dr. Lewis participates in or reviews tabletop exercises for ransomware/exec-level scenarios; IT Manager owns test execution and plan updates

## System Dependencies
- **Reads from:** Current DR plan, backup logs, system inventory (provided)
- **Writes to:** Test results and updated DR plan (after IT Manager and Dr. Lewis review)
- **HITL Required:** IT Manager runs all tests; Dr. Lewis participates in ransomware and full-failover exercises; Finance briefed on any test findings affecting financial system RTO

## Test Cases
1. **Golden path:** Annual ransomware tabletop → 6 participants, 4 objectives tested, 3 gaps found (isolation authority unclear, backup credentials misplaced, RTO missed), remediation plan with 14-day deadlines, DR plan updated in Week 3
2. **Edge case:** Entity has never done a DR test → starts with a low-risk tabletop (no systems touched), explicitly notes this is a starting point, sets a quarterly cadence to progress through functional and full tests over 12 months
3. **Adversarial:** Leadership skips the annual DR test due to time constraints ("we're too busy") → documents the risk (cyber insurance may require it, SOC 2 requires it, and an untested plan is just a document), offers a 90-minute tabletop as a minimum viable test that can be done in one meeting

## Audit Log
Test plans and results retained by entity and date. DR plan versions and update dates tracked. Compliance evidence (test completion + findings) archived for audits.

## Deprecation
Retire when entity deploys a BCDR platform with built-in test orchestration, automated failover testing, and compliance evidence generation.
