---
name: feature-flag-manager
description: "Design and manage feature flags for safe deployments. Use when the user says 'feature flag', 'feature toggle', 'dark launch', 'gradual rollout', 'canary release', 'percentage rollout', 'kill switch', 'roll out to 10% of users', 'feature gating', or 'controlled release'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--feature <name>] [--mode <design|rollout|cleanup>] [--target <all|entity|percentage>]"
---

# Feature Flag Manager

Design and manage feature flags for safe deployments in MBL engineering. Feature flags decouple deployment from release — code ships to production before the feature is live, enabling gradual rollouts, instant kill switches, and A/B testing without code changes. They are one of the highest-leverage practices for reducing deployment risk. The risk: feature flags become technical debt if not cleaned up after rollout.

## When to Use
- Deploying a high-risk feature that needs a gradual rollout
- Need a kill switch to disable a feature without redeployment
- A/B testing two implementations in production
- Portfolio-specific rollout (e.g., enable for Allevio before MBL)
- Cleaning up old flags that are 100% rolled out

## Feature Flag Types

| Type | Use Case | Example |
|------|----------|---------|
| **Release flag** | Control feature rollout; temporary | New meeting summary AI model |
| **Kill switch** | Disable a feature instantly without deploy | Disable OpenFang agent loop |
| **Experiment flag** | A/B test two approaches | Test two summarization prompts |
| **Permission flag** | Enable feature for specific users/entities | Admin-only feature |
| **Ops flag** | Control runtime behavior (e.g., cache TTL) | Adjust retry timeout |

## Flag Naming Convention

```
<service>.<feature>.<scope>

Examples:
  meeting_intelligence.ai_summary.enabled
  openfang.agent_loop.portfolio_rollout
  allevio.hipaa_audit_log.enhanced
  mbl.weekly_summary.enabled

Rules:
  - snake_case throughout
  - Start with service name (scope isolation)
  - End with .enabled for boolean flags
  - Never use generic names: feature_1, new_feature, test_flag
```

## Rollout Stages

```
Stage 0 — Internal only (default off)
  Target: Dr. Lewis + engineering team only
  Duration: Until confident in implementation

Stage 1 — Limited (10-25%)
  Target: 10-25% of users or specific portfolio company
  Duration: 1-2 weeks; monitor for errors and feedback

Stage 2 — Expanded (50%)
  Target: 50% of users
  Duration: 1 week; confirm metrics match Stage 1

Stage 3 — Full rollout (100%)
  Target: All users
  Trigger: Start cleanup timer (30 days to remove flag)

Rollback at any stage: flip flag to 0% — no deploy required
```

## Flag Lifecycle and Cleanup

```
Create: Document in flag registry with owner, purpose, cleanup date
Active: Monitor flag-specific metrics throughout rollout
Remove: When at 100% for >30 days — remove from code and registry
  Steps:
    1. Remove all flag checks from application code
    2. Remove flag from configuration platform
    3. Remove from flag registry
    4. Update CHANGELOG
  Risk of not cleaning up: flag debt accumulates; code becomes conditional hell
```

## Output Format

```markdown
# Feature Flag Design — <Flag Name>
**Date:** <date> | **Owner:** Dr. John Lewis
**Flag name:** `<service>.<feature>.<scope>`
**Flag type:** Release / Kill switch / Experiment / Permission / Ops

---

## Flag Summary

**Purpose:** <what this flag controls and why it exists>
**Default state:** OFF (new flags default to off)
**Target:** All users / <specific entity> / <percentage>
**Cleanup date:** <date — 30-60 days after 100% rollout>
**Fallback behavior (when flag is OFF):** <what the system does when flag is disabled>

---

## Rollout Plan

| Stage | Target | Start Date | Success Criteria | Rollback Trigger |
|-------|--------|-----------|-----------------|----------------|
| 0 — Internal | Dr. Lewis + Engineering | <date> | No errors in 48h | Any error |
| 1 — Limited | 20% of MBL users | <date> | Error rate <1%; latency <+10% | Error rate >2% |
| 2 — Expanded | 50% | <date> | Same as Stage 1 | Same |
| 3 — Full | 100% | <date> | — | Kill switch available |

---

## Metrics to Monitor During Rollout

| Metric | Baseline | Alert Threshold |
|--------|---------|----------------|
| Error rate | 0.2% | >1% |
| Latency P95 | 180ms | >250ms |
| [Feature-specific metric] | | |

---

## Flag Configuration

```json
{
  "flag": "meeting_intelligence.ai_summary.enabled",
  "type": "release",
  "default": false,
  "targeting": [
    { "users": ["dr.lewis@mblpartners.com"], "enabled": true },
    { "percentage": 20, "enabled": true }
  ]
}
```

---

## Implementation Notes

**Code pattern:**
```rust
if feature_flags.is_enabled("meeting_intelligence.ai_summary") {
    // new behavior
} else {
    // existing behavior
}
```

**Important:** Both code paths must work correctly — test the flag=OFF path too.

---

## Cleanup Checklist (Complete after 100% rollout + 30 days)

- [ ] Remove all `is_enabled("meeting_intelligence.ai_summary")` checks from code
- [ ] Remove the non-flag code path (the old behavior)
- [ ] Remove flag from configuration platform
- [ ] Remove from this flag registry
- [ ] Update CHANGELOG
- [ ] PR reviewed and merged
```

## Output Contract
- Default state always OFF — features ship dark; rollout is intentional
- Cleanup date always set at creation — flag debt must be planned out
- Rollback trigger always defined — "we'll know if something goes wrong" is not a plan
- Both code paths always tested — the disabled path is production code
- HITL required: Dr. Lewis approves rollout stage progressions; 100% rollout and cleanup require Dr. Lewis review; experiment flags require Matt Mathison awareness if they affect business metrics

## System Dependencies
- **Reads from:** Feature flag platform configuration (LaunchDarkly / custom config / environment variables); metrics and monitoring
- **Writes to:** Flag registry (SharePoint/Engineering); flag configuration platform
- **HITL Required:** Dr. Lewis approves rollout stages; cleanup PRs reviewed by Dr. Lewis; experiment flags briefed to Matt Mathison

## Test Cases
1. **Golden path:** Roll out new AI summarization model for Meeting Intelligence → Flag: `meeting_intelligence.ai_summary_v2.enabled`; Stage 0 (Dr. Lewis only, 48h — no errors); Stage 1 (20% users, 1 week — error rate 0.3%, latency stable); Stage 2 (50%, 1 week — same); Stage 3 (100%); cleanup scheduled 30 days out; code PR filed
2. **Edge case:** Flag-controlled feature fails at Stage 1 — error rate spikes to 3% → immediate rollback: flip flag to 0% (no deploy); monitor error rate back to baseline; file root cause investigation ticket; do not advance to Stage 2 until root cause resolved and fix deployed
3. **Adversarial:** Flag has been at 100% for 6 months with no cleanup → technical debt: every flag check adds a conditional branch; 6 months = likely already stable; schedule cleanup sprint item immediately; removing flag is a 30-minute code change that prevents accumulation of conditional complexity

## Audit Log
Flag registry maintained. Rollout stage progressions logged. Cleanup events documented. Experiment flag results retained.

## Deprecation
Retire when entity adopts a dedicated feature flagging platform (LaunchDarkly, Unleash, Flagsmith) with built-in rollout automation, metrics integration, and flag lifecycle management.
