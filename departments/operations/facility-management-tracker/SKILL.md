---
name: facility-management-tracker
description: "Track facility issues, maintenance requests, and lease/space management for office or operational locations. Use when the user says 'facility management', 'office issue', 'lease tracking', 'facility tracker', 'space management', 'maintenance request', 'office maintenance', or 'facility status'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--location <name>] [--entity <name>] [--category <lease|maintenance|safety|space>]"
---

# Facility Management Tracker

Track facility issues, maintenance requests, lease obligations, and space utilization for MBL and portfolio company locations. Facility issues left unaddressed compound — this skill surfaces them before they become expensive problems.

## When to Use
- Logging a new facility issue or maintenance request
- Tracking status of open facility issues
- Reviewing upcoming lease obligations (renewals, rent escalations, option deadlines)
- Space utilization review (are we using what we're paying for?)
- Before an office move or expansion decision

## Facility Issue Categories

| Category | Examples |
|---------|---------|
| **Maintenance** | HVAC, plumbing, electrical, cleaning, pest control |
| **Safety** | Fire safety, exit signage, first aid, security |
| **Technology** | Network, AV, access control, security cameras |
| **Lease/Compliance** | Lease renewals, landlord obligations, zoning |
| **Space** | Layout, furniture, capacity, signage |
| **Vendor** | Cleaning, landscaping, security, parking |

## Issue Priority

| Priority | Criteria | Response Time |
|---------|---------|--------------|
| P1 — Safety/Emergency | Anything affecting safety or security | Immediate (same day) |
| P2 — Operations Impact | Affecting team's ability to work | Within 48 hours |
| P3 — Comfort/Quality | Important but not blocking | Within 1 week |
| P4 — Cosmetic | Nice to fix, not urgent | Next maintenance cycle |

## Lease Obligation Tracking

Critical dates to track:
- **Lease expiration** — flag 12 months in advance for renewal negotiation
- **Renewal option deadline** — must notify landlord by specified date
- **Rent escalation dates** — automatic rent increases per lease schedule
- **CAM reconciliation** — annual common area maintenance charge true-up
- **TI allowance deadlines** — tenant improvement credits must be used by a date

## Output Format

```markdown
# Facility Tracker — <Location>
**Entity:** <entity> | **Location:** <address> | **Updated:** <date>

## Active Issues

| ID | Priority | Category | Description | Owner | Status | Due |
|----|---------|---------|-------------|-------|--------|-----|
| FAC-001 | P1 | Safety | Exit sign out on floor 2 | <name> | In Progress | <date> |
| FAC-002 | P3 | Maintenance | HVAC noisy in conf room | <name> | Open | <date> |

## Lease Dashboard

| Item | Date | Status | Action Required |
|------|------|--------|----------------|
| Lease expiration | <date> | 🟡 8 months out | Begin renewal negotiation |
| Renewal option notice | <date> | 🟢 15 months out | Calendar reminder set |
| Rent escalation | <date> | 🟢 No action | Budget updated |

## Upcoming Actions (Next 90 Days)
1. <Action with owner and deadline>

## Space Utilization (if tracked)
Capacity: <N> desks | Avg occupancy: <X>% | Peak occupancy: <X>%
```

## Output Contract
- P1 safety issues always surface at the top — no exceptions
- Lease deadlines flagged 12+ months in advance for negotiation prep
- Every issue has a named owner and due date
- HITL required before any lease decision or significant facility spend is approved

## System Dependencies
- **Reads from:** Facility issue log, lease documents (provided)
- **Writes to:** Issue tracker updates (with HITL)
- **HITL Required:** Dr. Lewis approves all facility spending > $500; Matt Mathison approves lease decisions

## Test Cases
1. **Golden path:** Office with 3 open issues + lease renewal in 10 months → full tracker with issues prioritized, lease alert surfaced
2. **Edge case:** No facility issues and no upcoming lease obligations → confirms status is clear, schedules next review
3. **Adversarial:** P1 safety issue deprioritized to save cost → flags that safety P1s cannot be deferred for cost reasons, escalates to Dr. Lewis

## Audit Log
Facility issues retained by location and date. Lease obligation records maintained permanently.

## Deprecation
Retire when facilities management platform (e.g., Arcadian, Archibus) handles issue tracking, lease management, and space utilization in one system.
