---
name: it-documentation-builder
description: "Build and maintain IT documentation. Use when the user says 'IT documentation', 'document the IT environment', 'runbook', 'IT procedures', 'IT knowledge base', 'system documentation', 'infrastructure documentation', 'IT wiki', or 'document our systems'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <runbook|architecture|policy|sop|all>] [--system <name>]"
---

# IT Documentation Builder

Build and maintain IT documentation — runbooks, architecture diagrams, policies, and operating procedures. IT documentation is not a nice-to-have — it's what allows systems to be maintained, recovered, audited, and handed off. An IT environment that only exists in one person's head is a single point of failure.

## When to Use
- New system deployed (document before it goes to production)
- Audit or compliance review (documentation is evidence)
- IT staff onboarding (knowledge transfer)
- Incident response planning (runbooks need to exist before the incident)
- Annual IT documentation audit — what's missing, outdated, or wrong?

## Documentation Types

| Type | Purpose | Audience |
|------|---------|---------|
| **Architecture diagram** | Shows how systems connect; IP, services, dependencies | IT staff, auditors |
| **System runbook** | Step-by-step procedures for operating a system | IT staff (ops) |
| **Incident runbook** | Step-by-step response procedures for specific failure modes | IT staff (on-call) |
| **Policy** | What must be done (e.g., patch policy, backup policy) | All staff + IT |
| **SOP** | How to do a specific IT task (e.g., create a new user) | IT staff |
| **Network diagram** | Physical and logical network topology | IT staff, auditors |
| **Disaster recovery plan** | How to recover from major system failures | IT staff + Exec |
| **Vendor contacts** | Emergency contacts for each IT vendor | IT staff |

## Output Format

### Runbook Template

```markdown
# Runbook: <System or Procedure Name>
**System:** <name> | **Owner:** <IT name> | **Last updated:** <date>
**Version:** <N> | **Review cycle:** Annual or after any major change

---

## Overview

**What this runbook covers:** <One sentence>
**When to use this runbook:** <Trigger — e.g., during monthly patching, during an outage, on employee start>

---

## Prerequisites

- Access required: <admin console / SSH / RDP / etc.>
- Tools required: <software, credentials, etc.>
- Other: <anything needed before starting>

---

## Procedure

| Step | Action | Expected Result | If This Fails |
|------|--------|----------------|-------------|
| 1 | Log in to [system] as admin | Admin dashboard visible | Check VPN; check account status |
| 2 | Navigate to [location] | [Screen description] | [Troubleshooting step] |
| 3 | [Action] | [Expected result] | [Escalation path] |
| N | Verify completion | [Verification test] | Contact IT Manager |

---

## Rollback / Undo Procedure

If the procedure fails at any step and must be reversed:
1. [Undo step N]
2. [Undo step N-1]
3. Notify IT Manager

---

## Escalation

| Scenario | Contact | Method | SLA |
|---------|---------|--------|-----|
| Step fails, unable to recover | IT Manager | Phone | Immediate |
| System offline > 30 min | IT Manager + Dr. Lewis | Phone | Immediate |
| Vendor issue confirmed | [Vendor contact] | [Method] | <SLA> |

---

## Change Log

| Date | Change | Changed By |
|------|--------|-----------|
| <date> | Created | IT Manager |
```

### Architecture Documentation Template

```markdown
# System Architecture — <Entity>
**Last updated:** <date> | **Owner:** IT Manager

---

## Core System Map

| System | Role | Provider | Host | Access Method | Connected To |
|--------|------|---------|------|-------------|-------------|
| Microsoft 365 | Identity, email, docs | Microsoft | Cloud | Web, Outlook client | All systems via SSO |
| Krista.ai | AI orchestration | Krista.ai | Cloud | Web, API | M365, Monday.com, QB |
| GoHighLevel | CRM | GoHighLevel | Cloud | Web | Outlook, Krista.ai |
| SRV-001 | App server | Internal | On-prem (office) | SSH, RDP | Local network, VPN |

---

## Network Architecture

[Diagram or description]
- WAN: [ISP] fiber, 1 Gbps symmetric
- Firewall: [model], at network edge
- Core switch: [model], 24-port
- Wireless: [model], 802.11ax
- VPN: Microsoft Azure VPN (site-to-site) / Remote user VPN: [client]

---

## Credentials and Access

**Stored in:** [Password manager / IT vault] — NOT in this document
**Emergency access procedure:** [How to get break-glass access if primary admin is unavailable]
```

## Output Contract
- Runbooks always include a rollback procedure — nothing goes to production without an undo path
- Credentials never stored in documentation — they go in the password manager
- Documentation always reviewed annually or after any major system change
- HITL required: IT Manager approves all policy documentation; Dr. Lewis reviews architecture documentation for any major change to infrastructure

## System Dependencies
- **Reads from:** System configurations, network diagrams, existing documentation (provided)
- **Writes to:** Documentation platform (SharePoint, Confluence, Notion) — HITL gated
- **HITL Required:** IT Manager reviews all new runbooks and policies; Dr. Lewis reviews architecture documentation; Dr. Lewis and IT Manager review any documentation containing emergency access procedures

## Test Cases
1. **Golden path:** New server deployment → architecture document updated (new server added to system map), operations runbook created (backup, patching, common procedures), incident runbook created (what to do if server is unresponsive), all before production cutover
2. **Edge case:** IT staff member leaves with no documentation of their systems → emergency documentation sprint: IT Manager and remaining team spend 2-3 days documenting what's known, identifies knowledge gaps to fill, prioritizes systems by criticality
3. **Adversarial:** IT staff argues documentation is a waste of time ("I know how everything works") → explains single-point-of-failure risk (vacation, illness, resignation), notes that auditors require documentation as evidence of controls, proposes 2 hours per week until documentation is current

## Audit Log
Documentation is itself a log. Version history maintained in document management system. Annual documentation audit results retained.

## Deprecation
Retire when entity deploys a documentation platform (Confluence, IT Glue, Notion for IT) with structured runbook templates, version control, and access controls.
