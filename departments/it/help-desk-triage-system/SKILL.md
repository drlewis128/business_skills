---
name: help-desk-triage-system
description: "Design or run the IT help desk triage process. Use when the user says 'help desk', 'IT triage', 'support ticket triage', 'IT support queue', 'support routing', 'IT ticket priority', 'help desk process', or 'how do we handle IT requests'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <design|triage|report>] [--tickets <N>]"
---

# Help Desk Triage System

Design or run the IT help desk triage process. Triage determines priority, routing, and SLA. Without it, every ticket feels equally urgent, the loudest users get served first, and critical issues sit in the queue behind password resets.

## When to Use
- Designing the IT support process for a new entity
- Reviewing and improving an overwhelmed help desk
- Auditing ticket queue for missed SLAs
- Training a new IT staff member on triage
- Reporting on help desk performance metrics

## Priority Framework

| Priority | Definition | SLA — First Response | SLA — Resolution |
|---------|-----------|---------------------|----------------|
| **P1 — Critical** | System-wide outage, security breach, data loss in progress | 15 minutes | 4 hours |
| **P2 — High** | Key business function down for 1+ users; financial system blocked | 1 hour | 8 hours (same day) |
| **P3 — Medium** | Single user impacted; workaround available | 4 hours | 24 hours |
| **P4 — Low** | Minor issue; cosmetic; feature request; general question | 1 business day | 5 business days |

## Routing Matrix

| Ticket Type | Route To |
|------------|---------|
| Password reset / account lockout | Tier 1 (self-service or L1 tech) |
| Hardware failure | Tier 1 → Tier 2 if repair needed |
| Software installation / access | Tier 1 |
| Network connectivity | Tier 2 |
| Email / Microsoft 365 issue | Tier 1 → Microsoft Support if persistent |
| Security incident / suspected breach | Immediately to IT Manager + Dr. Lewis (P1) |
| Server / infrastructure issue | Tier 2 |
| Business application issue (CRM, QB, etc.) | Tier 2 → Vendor support if system-specific |
| Feature request / new system | IT Manager queue (not standard triage) |

## Output Format

### Mode: Triage

```markdown
## Ticket Triage — <Entity>

| Ticket | Reporter | Issue | Priority | Route | SLA Due | Status |
|--------|---------|-------|---------|-------|--------|--------|
| T-0042 | Jane S. | Laptop won't boot — sales call in 2 hrs | P2 | IT Tech dispatch | <+1hr> | Open |
| T-0043 | Mike R. | Password reset request | P4 | Tier 1 self-service | <+1 day> | Routed |
| T-0044 | Finance | QuickBooks cannot connect to bank feed | P2 | Tier 2 → Intuit Support | <+8hrs> | Escalated |
```

### Mode: Process Design

```markdown
# IT Help Desk Process — <Entity>

## Intake Channels
- Email: it-support@<entity>.com → auto-creates ticket in [tool]
- Slack #it-help (optional) → CSM/IT replies; creates ticket if resolution > 10 min
- Phone: IT direct line → IT staff creates ticket manually

## Triage Process
1. Ticket arrives → IT Tech reviews within SLA window
2. Assign priority using P1-P4 framework
3. Route per routing matrix
4. If P1: Call IT Manager immediately; notify affected users within 15 min
5. Acknowledge receipt to reporter with ticket ID and expected SLA

## Escalation Path
P4 → P3: User hasn't heard back in 24 hours
P3 → P2: Issue affects additional users
P2 → P1: Issue spreading or financial system down

## Escalation contacts
P1: IT Manager (cell) → Dr. Lewis (if entity-wide or financial)
Security incidents: IT Manager + Dr. Lewis simultaneously (no waiting)
```

## Output Contract
- Every ticket always assigned a priority within the P1 SLA (15 minutes for first triage review)
- P1 and P2 tickets always have a named owner and active status visible
- SLA breach always flagged — no silent overruns
- HITL required: IT Manager personally handles all P1 incidents; Dr. Lewis notified for P1 events affecting financial systems or security

## System Dependencies
- **Reads from:** Ticket queue (provided or from IT platform), entity system map
- **Writes to:** Nothing in triage mode (routing decisions for IT Tech to act on)
- **HITL Required:** IT Manager owns P1/P2 resolution; Dr. Lewis notified for security incidents and financial system outages

## Test Cases
1. **Golden path:** 8-ticket Monday queue → correctly prioritizes P1 (email server down), P2 (sales rep laptop failure pre-demo), P3 (printer offline in conference room), P4 (3 password resets auto-routed to self-service); IT Manager notified for P1
2. **Edge case:** 40-ticket backlog with no priorities set → assigns priorities from descriptions, identifies 2 P2s that have been sitting >8 hours (SLA breached), escalates to IT Manager, provides remediation plan for clearing backlog
3. **Adversarial:** Executive demands P1 treatment for a cosmetic issue (wrong font in email signature) → correctly classifies as P4, explains priority framework, provides expected resolution timeline, offers a 1-hour P3 bump if the executive has a business justification

## Audit Log
Ticket volumes and SLA compliance tracked weekly. P1/P2 incidents post-mortemed within 5 days.

## Deprecation
Retire when entity has a deployed ITSM platform (ServiceNow, Jira Service Management, Freshservice) with automated triage, routing, and SLA enforcement.
