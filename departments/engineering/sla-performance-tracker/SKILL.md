---
name: sla-performance-tracker
description: "Track and report IT service level agreement performance. Use when the user says 'SLA performance', 'SLA report', 'service levels', 'are we meeting SLAs', 'IT SLA compliance', 'SLA breach', 'uptime SLA', or 'help desk SLA'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <month|quarter>] [--scope <helpdesk|vendor|infrastructure|all>]"
---

# SLA Performance Tracker

Track IT service level agreement (SLA) performance for help desk, vendors, and infrastructure. SLAs set expectations — tracking them is how you know whether those expectations are being met. SLA data drives vendor negotiations, help desk staffing, and IT budget justifications.

## When to Use
- Monthly help desk performance review
- Quarterly vendor SLA review
- SLA breach occurred — need to document and remediate
- Preparing for vendor contract negotiation (SLA track record is leverage)
- IT planning — is current SLA performance sustainable with team capacity?

## SLA Categories

### Help Desk SLAs (Internal Commitment)

| Priority | First Response SLA | Resolution SLA |
|---------|------------------|--------------|
| P1 — Critical | 15 minutes | 4 hours |
| P2 — High | 1 hour | 8 hours |
| P3 — Medium | 4 hours | 24 hours |
| P4 — Low | 1 business day | 5 business days |

### Infrastructure SLAs (Uptime)

| System | Target Uptime | Measurement Window |
|--------|-------------|------------------|
| Internet connectivity | 99.9% | Monthly |
| Core network devices | 99.5% | Monthly |
| Microsoft 365 | 99.9% (MS SLA) | Monthly |
| Critical SaaS (per vendor contract) | Per contract | Monthly |

## Output Format

```markdown
# SLA Performance Report — <Entity>
**Period:** <month/quarter> | **Prepared by:** IT Manager

---

## Help Desk SLA Performance

### Ticket Volume

| Priority | Tickets Received | Resolved Within SLA | SLA Compliance | Target |
|---------|----------------|--------------------|--------------|----|
| P1 | <N> | <N> | <N>% | 100% |
| P2 | <N> | <N> | <N>% | 98% |
| P3 | <N> | <N> | <N>% | 95% |
| P4 | <N> | <N> | <N>% | 90% |
| **Total** | **<N>** | **<N>** | **<N>%** | |

### SLA Breaches (P1 and P2 Only)

| Ticket | Priority | Issue | SLA Target | Actual Time | Breach Duration | Root Cause | Remediation |
|--------|---------|-------|----------|------------|----------------|-----------|------------|
| T-0044 | P2 | QuickBooks inaccessible | 8 hours | 11 hours | 3 hours | IT Tech on PTO — no backup on-call | Added backup on-call coverage |

### Help Desk Metrics

| Metric | This Month | Last Month | Target |
|--------|----------|----------|--------|
| First-contact resolution rate | <N>% | <N>% | ≥ 70% |
| Average resolution time (all tickets) | <N> hours | <N> hours | |
| User satisfaction (CSAT) | <N>/5 | <N>/5 | ≥ 4.0/5 |
| Tickets reopened | <N>% | <N>% | < 5% |

---

## Infrastructure Uptime

| System | Target | Actual | Incidents | Downtime (min) | Status |
|--------|--------|--------|-----------|--------------|--------|
| Internet | 99.9% | 99.94% | 0 | 0 | 🟢 Met |
| Microsoft 365 | 99.9% | 99.92% | 1 | 7 min | 🟢 Met |
| [App server] | 99.5% | 99.1% | 1 | 65 min | 🔴 Missed — incident |

---

## Vendor SLA Performance

| Vendor | SLA Metric | Contracted SLA | Actual | Status | Credit Owed? |
|--------|-----------|--------------|--------|--------|------------|
| [ISP] | Uptime | 99.9% | 99.95% | 🟢 Met | No |
| [MSP] | P2 response | 1 hour | 78% compliance | 🔴 Missed | Review contract |
| Microsoft | M365 uptime | 99.9% | 99.92% | 🟢 Met | No |

---

## Trends

| Metric | 3 Months Ago | 2 Months Ago | Last Month | Trend |
|--------|------------|------------|----------|-------|
| P2 SLA compliance | 91% | 93% | 89% | ↓ Declining |
| Avg resolution time (hrs) | 18 | 16 | 19 | ↓ Declining |
| CSAT | 4.1 | 4.2 | 3.9 | ↓ Declining |

**Trend analysis:** P2 compliance has declined 2 of last 3 months — requires root cause analysis and corrective action.
```

## Output Contract
- P1 and P2 breaches always documented with root cause and remediation — no anonymous SLA misses
- Vendor SLA misses always flagged for contract credit review — missed SLAs have contractual remedies
- Declining trends always called out with a recommendation — trending data is not passive
- HITL required: IT Manager reviews monthly; Dr. Lewis notified if P1 compliance falls below 100% or any Tier 1 infrastructure uptime below SLA target

## System Dependencies
- **Reads from:** Help desk platform (ticket data, timestamps), infrastructure monitoring, vendor SLA reports (provided)
- **Writes to:** Nothing (SLA report for IT Manager review and vendor management)
- **HITL Required:** IT Manager reviews monthly; Dr. Lewis notified of P1 compliance failures or infrastructure SLA misses; vendor SLA credits reviewed by Finance and IT Manager

## Test Cases
1. **Golden path:** Monthly report → P1 100%, P2 95%, P3 91%, 1 SLA breach (P2, QuickBooks, root cause: no backup on-call), infrastructure all green, MSP missed P2 SLA (78%) — flag for contract review
2. **Edge case:** No ticket system in place — tracking done manually → provides structured manual tracking template, recommends deploying ticketing platform, estimates time savings and SLA compliance improvement
3. **Adversarial:** Vendor disputes SLA breach (claims it was within SLA) → pulls raw ticket timestamps from both IT records and vendor records, reconciles the timeline, and presents documented evidence to support or refute the claim

## Audit Log
SLA reports retained by entity and month. Breaches, root causes, and remediations documented. Vendor SLA credits pursued and tracked.

## Deprecation
Retire when ITSM platform provides automated SLA tracking, real-time compliance dashboards, and breach alerting.
