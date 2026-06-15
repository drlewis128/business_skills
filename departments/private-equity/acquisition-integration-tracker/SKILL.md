---
name: acquisition-integration-tracker
description: "Track post-acquisition integration milestones and surface risks. Use when the user says 'integration tracker', 'integration status', 'post-close integration', 'day 1 readiness', 'integration plan', 'integration risks', or 'how is the integration going'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<deal-name> [--week <N>] [--stream <all|finance|hr|ops|tech|culture>]"
---

# Acquisition Integration Tracker

Track post-acquisition integration workstreams, milestone completion, and emerging risks. The first 90-100 days post-close determine 70% of deal value realization.

## When to Use
- Day 1 through Day 100 post-close (primary use period)
- Weekly integration status update for Matt
- When an integration workstream is behind or blocked
- Before board reporting on integration progress
- Month 6+ for long-tail items

## Integration Timeline Framework

### Day 1 (Closing Day)
- Legal close confirmation
- Employee communication sent
- IT access / credentials transferred
- Banking and accounts in transition
- Insurance effective

### Week 1 (Days 1-7)
- Leadership introductions complete
- Systems access confirmed for key staff
- Financial reporting cadence established
- Customer / client communication (if needed)
- Immediate operational priorities confirmed

### Month 1 (Days 1-30)
- Financial systems integration (QuickBooks consolidation)
- Payroll transfer complete
- Benefits transition
- Vendor notifications
- Quick wins identified and executed

### Days 30-100
- Full system integration
- Culture integration program initiated
- Synergy realization tracking begins
- Performance reporting normalized

## Integration Workstreams

| Stream | Key Items | Owner |
|--------|-----------|-------|
| Finance | Systems consolidation, reporting integration, payroll | Finance lead |
| HR | Benefits, policies, org structure, retention | HR lead |
| Operations | Processes, SOPs, KPIs | Ops lead |
| Technology | Systems integration, data migration, IT security | Dr. Lewis |
| Culture | THRIVE alignment, onboarding, communication | Matt |
| Legal / Compliance | Regulatory filings, contract novations, licenses | Legal |

## Output Format

```markdown
# Integration Tracker — <Deal Name>
**Close Date:** <date> | **Day:** <N> | **Target:** 100-day plan
**Updated:** <date>

## Integration Health
| Stream | Status | Completion | Top Issue |
|--------|--------|------------|-----------|
| Finance | 🟢 On Track | 75% | |
| HR | 🟡 At Risk | 55% | Benefits enrollment gap |
| Operations | 🟢 On Track | 60% | |
| Technology | 🟡 At Risk | 40% | System access delays |
| Culture | 🟢 On Track | 30% | |

## Week <N> Milestones
| Milestone | Status | Owner | Notes |
|-----------|--------|-------|-------|
| Payroll transferred | ✅ Complete | Finance | |
| IT access granted to all staff | ⚠️ 90% — 2 employees pending | Dr. Lewis | |
| Benefits enrollment complete | ❌ Behind — 35% enrolled | HR | Deadline: Jun 30 |

## Synergy Tracking
| Synergy | Target | Realized to Date | On Track? |
|---------|--------|-----------------|-----------|
| Operational savings | $X | $X | ✅ |

## Risks — Escalated
1. <Risk + recommended mitigation>

## Next Week Priorities
1. <Priority>
```

## Output Contract
- Day count always shown from close date (not estimate)
- Every milestone shows completion status and named owner
- Synergy tracking begins at Day 30 — not before
- HITL required before any integration communication is sent to the acquired company's staff

## System Dependencies
- **Reads from:** Integration plan (provided), workstream owner updates, synergy model
- **Writes to:** Monday.com integration board (with HITL)
- **HITL Required:** Matt Mathison reviews communications to acquired company employees

## Test Cases
1. **Golden path:** Day 45 tracker with all streams on track → clean progress report with synergy baseline and next milestones
2. **Edge case:** Key employee resignation during integration → flags as retention risk, surfaces in escalation section with recommended retention response
3. **Adversarial:** Integration plan shows all 100% on Day 1 (clearly not possible) → flags as data quality issue, requests milestone-by-milestone verification

## Audit Log
Weekly integration snapshots retained through Day 100. Key decisions during integration documented in decision log.

## Deprecation
Retire at Day 100 — transition to normal operating cadence tracking via portfolio company scorecard.
