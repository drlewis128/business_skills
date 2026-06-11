---
name: it-kpi-dashboard
description: "Build the IT KPI dashboard for an entity. Use when the user says 'IT KPIs', 'IT metrics', 'IT performance', 'IT dashboard', 'technology metrics', 'IT performance report', 'IT scorecard', or 'how is IT performing'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <month|quarter>] [--audience <it|exec|board>]"
---

# IT KPI Dashboard

Build the IT KPI dashboard for an entity. IT departments that can't show their value get their budgets cut. IT departments that track the wrong metrics look busy without showing impact. This skill builds the KPI set that matters to both IT management and business leadership.

## When to Use
- Monthly IT performance review
- Board or executive IT report
- Annual IT planning (what did we deliver last year?)
- Justifying IT budget (show value vs. cost)
- Portfolio company IT assessment

## KPI Categories

| Category | What It Measures | Audience |
|---------|-----------------|---------|
| **Reliability** | Is IT keeping systems up and running? | All |
| **Security** | Are we secure and getting more secure? | Exec + IT |
| **Service** | Is IT responsive to users? | IT |
| **Cost** | Are we spending efficiently? | Finance + Exec |
| **Risk** | Are our risks trending better or worse? | Exec + Board |
| **Value delivery** | Are IT projects delivering on time and on budget? | Exec |

## Output Format

```markdown
# IT KPI Dashboard — <Entity>
**Period:** <month/quarter> | **Prepared by:** IT Manager
**Audience:** IT Team / Executive / Board

---

## Executive Summary

**IT Health:** 🟢 Good / 🟡 Caution / 🔴 Attention Required

**Top 3 wins this period:**
1. <Specific achievement — uptime, cost savings, security improvement>
2. <Specific achievement>
3. <Specific achievement>

**Active concerns:**
1. <Issue being actively managed>

---

## Reliability

| Metric | Target | This Period | Last Period | Trend |
|--------|--------|------------|------------|-------|
| Internet uptime | 99.9% | 99.94% | 99.88% | ↑ |
| Microsoft 365 availability | 99.9% (MS SLA) | 99.92% | 99.98% | ↓ (1 minor incident) |
| Core application availability | 99.5% | 99.7% | 99.6% | ↑ |
| Mean time to restore (MTTR) | < 4 hours | 2.8 hours | 3.4 hours | ↑ Improving |

---

## Security

| Metric | Target | This Period | Last Period | Trend |
|--------|--------|------------|------------|-------|
| Endpoint security compliance | 100% | 97% (1 partial) | 95% | ↑ |
| Phishing simulation pass rate | > 80% | 87% | 82% | ↑ |
| Patch compliance (critical) | 100% within 72 hrs | 100% | 96% | ↑ |
| Patch compliance (high) | > 98% | 97% | 95% | ↑ |
| MFA coverage | 100% | 96% (2 users) | 90% | ↑ — action in progress |
| Security incidents | 0 critical | 0 | 1 (contained) | → |

---

## Service (Help Desk)

| Metric | Target | This Period | Last Period | Trend |
|--------|--------|------------|------------|-------|
| P1/P2 SLA compliance | 100% / 98% | 100% / 95% | 100% / 100% | ↓ — 1 P2 breach |
| Average resolution time | < 24 hrs (all) | 18 hrs | 21 hrs | ↑ |
| First-contact resolution rate | ≥ 70% | 74% | 68% | ↑ |
| User satisfaction (CSAT) | ≥ 4.0/5 | 4.2/5 | 4.0/5 | ↑ |
| Ticket volume | — | 62 | 71 | ↓ (fewer tickets) |

---

## Cost

| Metric | Target | This Period | Last Period | Notes |
|--------|--------|------------|------------|-------|
| IT spend vs. budget | ≤ Budget | $38.2K / $40K (95%) | $39.1K / $40K | On track |
| Cloud spend | $8K/mo | $7.8K | $8.4K | ↑ Optimization working |
| Cost per user | < $200/mo | $191/mo | $196/mo | ↑ |
| License waste (unused seats) | 0% | 3 seats (8%) | 6 seats (16%) | ↑ Improving |

---

## Risk

| Metric | This Period | Change | Status |
|--------|-----------|--------|--------|
| High IT risks (residual score ≥ 10) | 2 | -1 (1 closed) | ↑ |
| Critical IT risks | 0 | No change | ✅ |
| Open audit findings | 1 | -2 (2 closed) | ↑ |
| Systems without backups | 0 | No change | ✅ |
| End-of-life systems in production | 1 | No change | 🟡 In remediation |

---

## Value Delivery (Projects)

| Project | Budget | Status | On Time? | Notes |
|---------|--------|--------|---------|-------|
| Krista.ai Phase 1 | $<N> | 🟢 Active | On track | 3 weeks from completion |
| Microsoft 365 security hardening | $0 (internal) | ✅ Complete | Early | Under budget |
| Cloud cost optimization | $0 | ✅ Complete | — | $28K/year savings delivered |
```

## Output Contract
- Executive summary always leads — 3 wins and active concerns before any data
- Trend arrows always included — a number without trend direction is incomplete
- Cost per user always calculated — it's the executive-facing efficiency metric
- HITL required: IT Manager reviews before distribution; Dr. Lewis reviews for board-level or executive presentation; any 🔴 metric reviewed with Dr. Lewis within 48 hours

## System Dependencies
- **Reads from:** Help desk platform, monitoring tools, cloud billing, patch management, security tools (provided)
- **Writes to:** Nothing (dashboard for HITL review and distribution)
- **HITL Required:** IT Manager reviews and publishes monthly; Dr. Lewis reviews board and executive versions; Finance reviews cost metrics

## Test Cases
1. **Golden path:** Monthly dashboard → all reliability metrics green, security improving (MFA 96% up from 90%), 1 P2 SLA breach (root cause: staffing gap), cloud costs down $600/month from optimization, 2 projects on track; Dr. Lewis briefed on MFA gap remediation
2. **Edge case:** Major outage during the month (4-hour M365 outage) → front and center in executive summary with root cause and resolution timeline, MTTR prominently featured, remediation to prevent recurrence noted
3. **Adversarial:** IT Manager wants to exclude a bad metric from the board report → includes the metric with explanation and remediation plan; transparency is non-negotiable; boards that see only good news don't provide useful governance

## Audit Log
IT KPI dashboards retained by entity and period. Metric definitions stable across periods for trend analysis.

## Deprecation
Retire when entity deploys an IT service management platform with native KPI dashboards, real-time metric feeds, and automated executive reporting.
