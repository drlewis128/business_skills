---
name: compliance-policy-manager
description: "Manage compliance policies and procedures. Use when the user says 'compliance policy', 'policy update', 'policy review', 'policy library', 'write a policy', 'policy gap', 'missing policy', 'policy framework', 'compliance procedures', 'employee policy', or 'regulatory policy'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--policy <name>] [--mode <create|review|inventory|update>]"
---

# Compliance Policy Manager

Manage compliance policies and procedures for MBL portfolio companies. Policies are the documented commitments that drive organizational behavior and demonstrate regulatory compliance — to regulators, auditors, customers, and employees. A policy library that's outdated, incomplete, or not acknowledged by employees provides no compliance protection. This skill manages the policy lifecycle: creation, review, distribution, acknowledgment, and retirement.

## When to Use
- Building the initial compliance policy library for a new entity
- Annual policy review cycle
- Regulatory requirement creates a new policy obligation
- SOC 2, HIPAA, or other audit requires specific policies
- Policy update due to regulatory change or incident

## Core Policy Library by Entity

### MBL Partners (All Entities) — Required Policies

| Policy | Applicable Entities | Trigger | Review Cycle |
|--------|-----------------|---------|------------|
| **Information Security Policy** | All | HIPAA, SOC 2, general risk | Annual |
| **Acceptable Use Policy (AUP)** | All | IT security, HR | Annual |
| **Data Classification Policy** | All | HIPAA, GDPR, SOC 2 | Annual |
| **Incident Response Policy** | All | HIPAA, SOC 2 | Annual |
| **Access Control Policy** | All | HIPAA §164.312, SOC 2 CC6 | Annual |
| **Password/Authentication Policy** | All | NIST, SOC 2 | Annual |
| **Business Continuity Policy** | All | SOC 2, general risk | Annual |
| **Vendor/Third Party Risk Policy** | All | SOC 2, HIPAA BAA | Annual |
| **Data Retention and Disposal Policy** | All | HIPAA 6-yr, GDPR, general | Annual |
| **Privacy Policy** | All | HIPAA, CCPA, GDPR | Annual |
| **Code of Conduct / Ethics Policy** | All | Governance, SOC 2 CC1 | Annual |
| **Conflict of Interest Policy** | All | Governance | Annual |
| **Anti-Harassment / Workplace Policy** | All | Employment law | Annual |
| **Remote Work / BYOD Policy** | All | IT security, HR | Annual |

### Allevio (Healthcare — Additional Policies)
| Policy | HIPAA Requirement | Review Cycle |
|--------|----------------|------------|
| HIPAA Privacy Policy | §164.530(i) | Annual |
| HIPAA Security Policy | §164.308 | Annual |
| PHI Breach Response Policy | §164.400 | Annual |
| Minimum Necessary Standard Policy | §164.514(d) | Annual |
| Patient Rights Policy | §164.524 | Annual |
| Business Associate Policy | §164.308(b) | Annual |

## Output Format

```markdown
# Compliance Policy Inventory — <Entity>
**Date:** <date> | **Entity:** <name>
**Policies reviewed:** Annual / Gap assessment
**Prepared by:** Dr. John Lewis / Compliance Officer

---

## Policy Inventory Summary

| Status | Count |
|--------|-------|
| Current — reviewed within 12 months | <N> |
| Due for review — within 90 days | <N> |
| Overdue — not reviewed in 12+ months | <N> |
| Missing — required but not written | <N> |

---

## Policy Inventory

| Policy | Entity | Owner | Version | Last Reviewed | Next Review | Status | Employees Acknowledged? |
|--------|--------|-------|---------|------------|-----------|--------|----------------------|
| Information Security Policy | All | Dr. Lewis / IT | v2.1 | <date> | <date> | ✅ Current | ✅ 100% |
| HIPAA Privacy Policy | Allevio | Compliance Officer | v1.3 | <date> | <date> | 🟡 Due for review | ✅ 100% |
| Acceptable Use Policy | All | IT | v3.0 | <date> | <date> | ✅ Current | 🟡 82% — 3 employees pending |
| Data Retention Policy | All | Legal | v1.0 | <date> | <date> | ❌ Overdue — 18 months | ❌ Not re-acknowledged since update |
| Conflict of Interest Policy | All | Legal | Not written | — | — | ❌ Missing | — |

---

## Policy Gap Analysis

| Required Policy | Entity | Regulatory Driver | Status | Action |
|---------------|--------|----------------|--------|--------|
| Conflict of Interest Policy | All | SOC 2 CC1, Governance | ❌ Missing | Write and distribute by Q2 |
| AI Use Policy | All | Emerging AI governance | ❌ Missing | Draft — addresses OpenAI/Claude use, data in prompts |
| Whistleblower Policy | All | Governance, SOC 2 | ❌ Missing | Write — Sarbanes-Oxley non-public entities not required but SOC 2 recommends |

---

## Policy Review Checklist (Annual Review)

For each policy, confirm:
- [ ] Policy reflects current regulatory requirements
- [ ] Policy reflects current technology environment
- [ ] Policy reflects current organizational structure
- [ ] Version number updated
- [ ] Review date updated
- [ ] Policy owner confirmed
- [ ] Employees re-acknowledged following any substantive change

---

## Policy Structure Template

```
Policy Name
Purpose: <Why this policy exists>
Scope: <Who it applies to>
Definitions: <Key terms>
Policy Statements: <The rules>
Roles and Responsibilities: <Who enforces, who follows>
Enforcement: <Consequences of violation>
Exceptions: <How to request an exception>
Related Policies: <Cross-references>
Review Cycle: Annual
Owner: <Name, Title>
Version: <X.Y>
Effective Date: <date>
Last Reviewed: <date>
```

## Output Contract
- Missing policies always flagged with regulatory driver — "we don't have a policy" is a finding in every audit
- Employee acknowledgment always tracked — a policy that no one has read provides no compliance protection
- AI Use Policy always assessed — MBL and portfolio companies use AI tools (Claude, OpenAI) that may expose confidential data if unguided
- Policy retirement always managed — old policies create compliance confusion; retire formally when superseded
- HITL required: Dr. Lewis reviews policy inventory; Allevio Compliance Officer owns HIPAA policies; Legal counsel reviews policies for regulatory accuracy; Matt Mathison approves annual policy cycle completion; all new policies require formal approval before distribution

## System Dependencies
- **Reads from:** Prior policies (SharePoint), regulatory requirements, SOC 2 evidence requirements (provided)
- **Writes to:** Policy inventory and new policy documents (distributed via HR system or SharePoint)
- **HITL Required:** Legal counsel reviews; Dr. Lewis approves; entity leadership distributes with required acknowledgment

## Test Cases
1. **Golden path:** Annual policy review — MBL portfolio → Information Security Policy current (no changes needed), HIPAA Privacy Policy — HIPAA Security Rule update requires amendment (update now), Data Retention Policy overdue — update and re-distribute for employee acknowledgment, Conflict of Interest Policy missing (write and distribute by Q2), AI Use Policy missing (write — OpenAI/Claude data handling guidance)
2. **Edge case:** Employee violates Acceptable Use Policy by uploading patient data to a personal cloud service → incident response triggered; HR process initiated per sanction policy; AUP violation documented; assess HIPAA breach notification (was PHI compromised?)
3. **Adversarial:** Business unit wants to skip the annual policy review because "nothing changed" → annual review is required for HIPAA, SOC 2, and good governance — even if no changes are made, the review must be documented; non-documented annual reviews are audit findings

## Audit Log
Policy versions retained permanently. Annual review dates documented. Employee acknowledgment records retained for 3 years (or per regulatory requirement). Policy violations documented.

## Deprecation
Retire when entity deploys a policy management platform (PolicyTech, LogicGate) with automated distribution, acknowledgment tracking, and review reminders.
