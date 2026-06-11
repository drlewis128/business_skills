---
name: it-offboarding-checklist
description: "Execute IT offboarding for a departing employee. Use when the user says 'IT offboarding', 'departing employee IT', 'employee leaving IT', 'revoke access', 'terminate access', 'IT checklist for termination', or 'employee departure IT steps'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "<employee-name> [--entity <name>] [--type <voluntary|involuntary>] [--remote <yes|no>]"
---

# IT Offboarding Checklist

Execute IT offboarding for a departing employee. Departing employees with active access are a security risk. IT offboarding is a time-sensitive, sequenced process — not a checklist to get to when convenient.

## When to Use
- Employee resignation (HR notifies IT; begin immediately upon confirmed last day)
- Involuntary termination (immediate — before the employee leaves the building/meeting)
- Contract end (same as resignation)
- Role elimination (same process)

## Timing Rules

| Departure Type | Access Revocation Timing |
|---------------|------------------------|
| **Voluntary (resignation)** | Revoke on last day end of business, or earlier per IT/HR agreement |
| **Involuntary (termination)** | Revoke **immediately** — during or immediately after the termination meeting |
| **Mutual agreement** | Per negotiated terms; default to last day EOB |
| **Executive departure** | Always coordinate with Dr. Lewis before any action |

## Revocation Sequence

Always revoke in this order — sequence matters:
1. **Microsoft 365** (identity layer — disabling here limits access to most connected systems)
2. **VPN access** (network layer — blocks remote access)
3. **All other SaaS systems** (one by one per access list)
4. **Physical access** (badge deactivation if applicable)
5. **Email forwarding** (set up per manager direction after access is revoked, not before)

## Output Format

```markdown
# IT Offboarding — <Employee Name>
**Entity:** <MBL entity> | **Role:** <title> | **Last day:** <date>
**Departure type:** Voluntary / Involuntary | **Remote:** Yes / No
**IT owner:** <name> | **HR contact:** <name>

---

## CRITICAL: Time-Sensitive Steps

| Step | Done? | Timestamp | Owner | Notes |
|------|-------|-----------|-------|-------|
| Microsoft 365 account disabled | [ ] | | IT | DO FIRST — blocks most access |
| Active sessions revoked (Force sign-out) | [ ] | | IT | In M365 Admin → Active Users → Sessions |
| MFA devices removed | [ ] | | IT | Prevents account recovery |
| VPN access revoked | [ ] | | IT | |

**All 4 steps above must be complete within 1 hour of separation for involuntary departures.**

---

## System Access Revocation

| System | Access Existed? | Revoked? | Timestamp | Notes |
|--------|--------------|---------|-----------|-------|
| Microsoft 365 | Yes | [ ] | | See above |
| GoHighLevel CRM | Yes/No | [ ] | | Reassign leads to: <name> |
| Monday.com | Yes | [ ] | | Remove from boards; reassign tasks |
| QuickBooks | Yes/No | [ ] | | Finance to confirm |
| Bill.com | Yes/No | [ ] | | Finance to confirm |
| Krista.ai | Yes/No | [ ] | | |
| AWS/Azure console | Yes/No | [ ] | | IT Engineer confirms |
| VPN | Yes | [ ] | | |
| [Other systems] | Yes/No | [ ] | | |

---

## Data and Handoff

| Action | Done? | Owner | Notes |
|--------|-------|-------|-------|
| Email forwarding configured (if requested by manager) | [ ] | IT | Max 30 days; to: <manager email> |
| OneDrive / SharePoint files accessible to manager | [ ] | IT | Grant manager access to departing employee's OneDrive |
| Shared files transferred to team folder | [ ] | Manager | |
| Active projects handed off | [ ] | Manager | |
| Passwords to shared accounts changed | [ ] | IT + relevant department | |
| Vendor accounts owned by this employee transferred | [ ] | IT + relevant department | |

---

## Equipment Recovery

| Item | Location | Recovery Status | Due Date |
|------|---------|----------------|---------|
| Laptop (Asset HW-<NNN>) | Office / Remote | [ ] Returned / Shipping arranged | Last day or <date> |
| Phone (if company-owned) | | [ ] Returned | |
| Access badge | | [ ] Returned | |
| Other peripherals | | [ ] Returned | |

**Remote employee:** Shipping label sent to: <address>. UPS drop-off / pickup scheduled by: <date>.

---

## Post-Offboarding

| Action | Owner | Deadline |
|--------|-------|---------|
| Device wiped and reimaged | IT Tech | Within 5 business days |
| Asset record updated (returned, in storage) | IT | Same day as return |
| License seats freed (M365, etc.) | IT | Within 30 days |
| 90-day mailbox retention started (per policy) | IT | Auto via M365 retention |
| HR confirms offboarding complete | HR | Same day |
```

## Output Contract
- Microsoft 365 always first in the revocation sequence — it's the identity layer
- Involuntary termination access revocation completes within 1 hour — not end of day
- Equipment recovery always tracked with explicit deadline — "to be arranged" is not a plan
- HITL required: Dr. Lewis contacted before IT acts on any C-level departure; involuntary terminations coordinated with HR before IT begins

## System Dependencies
- **Reads from:** Employee access record, system access list, asset inventory
- **Writes to:** Nothing (checklist for IT execution; access revocations performed by IT directly in each system)
- **HITL Required:** IT Manager approves sequence for involuntary terminations; Dr. Lewis informed of all C-level departures before access is revoked; HR provides formal separation notice before IT begins deprovisioning

## Test Cases
1. **Golden path:** Voluntary resignation, last day Friday → access revoked at 5 PM Friday (all 4 critical steps in 15 minutes), email forwarding to manager active, laptop returned same day, OneDrive accessible to manager, asset record updated Monday
2. **Edge case:** Remote employee departure — laptop not returned → immediate account revocation (all 5 steps), MDM remote wipe initiated 5 business days after last day if not shipped, asset tracked as "recovery pending," IT documents for HR/Legal
3. **Adversarial:** Involuntary termination — manager asks IT to delay access revocation by 2 hours to "let them finish their work" → explains the security and compliance risk, offers a 30-minute window maximum for any genuine business continuity need, documents the exception and manager's request

## Audit Log
All offboarding actions logged with timestamp and IT owner. Equipment recovery and license reclamation tracked. Departures with extended access windows documented with manager authorization.

## Deprecation
Retire when HR platform (Rippling, Workday) includes automated IT deprovisioning triggers, real-time system access revocation, and equipment recovery tracking.
