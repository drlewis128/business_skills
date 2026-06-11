---
name: it-capacity-planner
description: "Plan IT infrastructure capacity for current and future needs. Use when the user says 'IT capacity', 'infrastructure capacity', 'do we have enough capacity', 'storage capacity', 'server capacity', 'network capacity planning', 'will our IT scale', or 'capacity for growth'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--scope <compute|storage|network|all>] [--horizon <6m|12m|24m>]"
---

# IT Capacity Planner

Plan IT infrastructure capacity for current and projected business growth. Capacity that runs out surprises no one who planned ahead — but surprises everyone who didn't. This skill measures current utilization, models growth, and identifies when and what to add before systems saturate.

## When to Use
- Annual IT planning (what will we need next year?)
- Business is growing faster than expected
- Storage, compute, or network is approaching limits
- Hiring plan increases headcount significantly
- New application or workload being added to infrastructure

## Capacity Dimensions

| Dimension | Measure | Warning Threshold | Critical Threshold |
|---------|---------|-----------------|------------------|
| **Server CPU** | Average utilization | > 70% sustained | > 85% sustained |
| **Server RAM** | Average utilization | > 75% | > 90% |
| **Storage** | Used vs. total | > 70% | > 85% |
| **Network bandwidth** | WAN peak utilization | > 70% | > 85% |
| **Cloud compute** | vCPU utilization | > 60% (rightsizing trigger) | > 80% |
| **SaaS licenses** | Active seats / licensed seats | > 90% | > 95% (renewal trigger) |
| **Endpoints** | Devices per IT staff | > 75 devices | > 100 devices (hire signal) |

## Capacity Growth Modeling

```
Current capacity × (1 + growth_rate) ^ years = Required capacity

Growth drivers:
- Headcount growth (each user ≈ 1 endpoint, 50-100 GB storage, license seat)
- Data growth rate (historical: typically 15-30% per year)
- New applications (quantify compute/storage requirements before deploying)
- Geographic expansion (WAN bandwidth, new locations)
```

## Output Format

```markdown
# IT Capacity Plan — <Entity>
**Date:** <date> | **Planning horizon:** <12 / 24 months>
**Current headcount:** <N> | **Projected headcount:** <N in 12 months>

---

## Current Utilization

| Resource | Total Capacity | Used | Utilization | Status |
|---------|--------------|------|------------|--------|
| Storage (on-prem) | 20 TB | 14 TB | 70% | 🟡 Warning |
| Storage (cloud S3) | Unlimited | 8 TB | — | Monitor cost |
| App server CPU | 32 cores | 18 cores avg | 56% | 🟢 OK |
| App server RAM | 128 GB | 96 GB | 75% | 🟡 Warning |
| WAN bandwidth | 1 Gbps | 650 Mbps peak | 65% | 🟢 OK (growing) |
| M365 licenses | 25 seats | 22 active | 88% | 🟢 OK (renew soon) |
| VPN concurrent | 50 sessions | 38 peak | 76% | 🟢 OK |

---

## Growth Projections

### 12-Month Forecast

| Resource | Current | Growth Driver | 12-Month Projected | Headroom |
|---------|---------|-------------|------------------|---------|
| Endpoints | 28 | +6 new hires | 34 | 0 spare laptops → procurement needed |
| Storage | 14 TB / 20 TB | 20% data growth + new hires | 18.5 TB | 1.5 TB remaining — critical in 12 months |
| WAN bandwidth | 650 Mbps peak | 25% usage growth | 812 Mbps | Approaching 1 Gbps limit |
| M365 seats | 22/25 | +6 new hires | 28 required | Need 3 more seats at renewal |

---

## Procurement / Capacity Actions

| Action | When Needed | Lead Time | Cost | Priority |
|--------|-----------|---------|------|---------|
| Purchase 6 laptops for new hires | Before Q3 hiring | 2-4 weeks | $<N> | High |
| Storage expansion or cloud migration | Q3 | 4-6 weeks | $<N> | High |
| WAN bandwidth upgrade (from 1G to 2G fiber) | Q4 | 4-8 weeks ISP | $<N>/yr delta | Medium |
| Add 5 M365 licenses at renewal | Renewal date | Before renewal | $<N>/yr | Medium |

---

## IT Staff Capacity

| IT Staff | Devices Supported | Tickets/Week | Utilization |
|---------|-----------------|------------|------------|
| IT Tech (1 FTE) | 28 endpoints | 22 avg | 80% — at capacity |

**Recommendation:** At 34 endpoints (12-month projection), IT workload will require either a part-time IT contractor or a second FTE. Plan for this in Q3 hiring.
```

## Output Contract
- Capacity actions always have a lead time — procurement doesn't happen overnight
- IT staff capacity always modeled alongside infrastructure — the team is also a capacity constraint
- Storage and bandwidth always projected to a runway date — "N months until we hit critical" is actionable
- HITL required: IT Manager reviews capacity plan; Dr. Lewis and Finance approve any capacity investment > $10K

## System Dependencies
- **Reads from:** Infrastructure metrics, license data, headcount plan, storage reports (provided)
- **Writes to:** Nothing (capacity plan for HITL review and IT action)
- **HITL Required:** IT Manager reviews and approves capacity plan; Finance approves capital investments; Dr. Lewis reviews for any entity with < 6 months runway on critical capacity

## Test Cases
1. **Golden path:** 25-person entity growing to 31 next year → storage hits 85% in 9 months, WAN at 78% by Q4, 6 laptop procurement needed, M365 license renewal timing adjusted; all with costs and lead times
2. **Edge case:** Entity is contracting (downsizing) → capacity plan focuses on right-sizing and cost reduction, identifies over-provisioned infrastructure to right-size or terminate, models cost savings
3. **Adversarial:** Finance wants to defer all capacity investments to save cost → models the risk of each deferral (storage full = data loss risk, WAN saturation = productivity impact), presents deferral cost vs. incident cost for each item

## Audit Log
Capacity plans retained by entity and planning cycle. Projections vs. actuals tracked quarterly. Capacity incidents (storage full, bandwidth saturation) documented.

## Deprecation
Retire when entity deploys infrastructure monitoring with automated capacity trending, growth modeling, and procurement alerting.
