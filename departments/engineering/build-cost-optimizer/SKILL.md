---
name: build-cost-optimizer
description: "Analyze and optimize engineering build and infrastructure costs. Use when the user says 'build costs', 'CI costs', 'infrastructure cost', 'cloud spending', 'GitHub Actions costs', 'reduce engineering costs', 'compute spending', 'optimize infrastructure', 'build pipeline costs', or 'cut cloud costs'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--platform <github-actions|azure|aws>] [--scope <ci-cd|compute|storage|all>] [--mode <analyze|optimize|report>]"
---

# Build Cost Optimizer

Analyze and optimize engineering build and infrastructure costs for MBL. Engineering infrastructure costs are frequently invisible — CI/CD minutes, cloud compute, storage, and egress accumulate monthly without triggering alerts. This skill identifies waste, surfaces optimization opportunities, and produces an actionable cost reduction plan calibrated to MBL's Azure-first and GitHub Actions infrastructure.

## When to Use
- Monthly engineering cost review
- Cloud costs are trending up without obvious cause
- New project launched — baseline infrastructure costs before it scales
- Portfolio company integration added significant new infrastructure
- Engineering budget review for Matt Mathison or quarterly business review

## Cost Categories and Benchmarks

### GitHub Actions (CI/CD)
```
GitHub Actions pricing:
  Public repos: Free
  Private repos: 2,000 min/month free; $0.008/min (Linux) thereafter

MBL target: <$50/month for CI/CD on private repos
High-impact optimizations:
  1. Cache cargo/npm dependencies — reduces build time 60-80%
  2. Skip CI on docs-only PRs (paths-ignore: ['**.md', 'docs/**'])
  3. Run lint and tests in parallel, not sequential
  4. Matrix strategy only when actually needed (not 3 OS × 3 versions for internal tools)
  5. Cancel in-progress runs on new push (concurrency: cancel-in-progress: true)
```

### Azure Compute
```
Right-sizing opportunities (common waste patterns):
  - Dev/staging VMs running 24/7 (only need business hours → 65% savings)
  - Over-provisioned VM SKU (B4ms where B2s suffices)
  - Unattached managed disks from deleted VMs
  - Reserved Instances vs. Pay-as-you-Go (1-year RI = 40% savings for stable workloads)

MBL target: Dev/staging on schedule (8am-8pm Mon-Fri); prod stays up
```

### Azure Storage
```
Common waste:
  - Old deployment artifacts not purged
  - Logs retained beyond compliance minimum (retain 6 years for HIPAA; purge beyond that)
  - Redundancy tier mismatch (LRS vs. ZRS vs. GRS — match to data criticality)

Lifecycle management: Blob lifecycle policies auto-tier to cool/archive after N days
```

## Output Format

```markdown
# Engineering Cost Analysis — <Scope>
**Period:** <month/quarter> | **Date:** <date>
**Prepared by:** Dr. John Lewis
**Current monthly spend:** $<amount>
**Target monthly spend:** $<amount>
**Savings opportunity:** $<amount>/month

---

## Spend Summary

| Category | Current $/mo | Optimized $/mo | Savings | Action |
|---------|------------|--------------|---------|--------|
| GitHub Actions | $85 | $30 | $55 | Cache dependencies; parallel jobs |
| Azure Compute (Dev) | $420 | $150 | $270 | Schedule dev VMs; right-size |
| Azure Compute (Prod) | $180 | $180 | $0 | Stable; monitor for right-sizing |
| Azure Storage | $65 | $40 | $25 | Lifecycle policies; purge old artifacts |
| **Total** | **$750** | **$400** | **$350/mo** | |

**Annual savings:** ~$4,200

---

## Optimization Opportunities

### [OPT-1] GitHub Actions: Cargo Dependency Caching
**Current waste:** 8 min avg build (3 min = avoidable recompile of dependencies)
**Fix:**
```yaml
- uses: Swatinem/rust-cache@v2
  with:
    key: ${{ hashFiles('**/Cargo.lock') }}
```
**Estimated savings:** $40/month (50% build time reduction)
**Effort:** 1 hour | **Risk:** Low

### [OPT-2] Dev/Staging VM Schedule
**Current waste:** Dev VMs (B4ms × 2) running 24/7 — 168 hrs/week
**Fix:** Azure Auto-Shutdown at 8pm; Start script at 7:50am Mon-Fri
**Effective hours:** 60 hrs/week (65% reduction)
**Estimated savings:** $270/month
**Effort:** 2 hours | **Risk:** Low (dev environment only)

### [OPT-3] Blob Storage Lifecycle Policy
**Current waste:** Build artifacts > 90 days retained at Hot tier
**Fix:** Lifecycle policy: Hot → Cool after 30 days; delete after 90 days (non-compliance artifacts)
**Estimated savings:** $25/month
**Effort:** 1 hour | **Risk:** Low

---

## Implementation Plan

| Optimization | Owner | Target date | Expected savings |
|------------|-------|------------|----------------|
| OPT-1: CI caching | [Engineer] | Sprint N | $40/mo |
| OPT-2: VM schedule | Dr. Lewis | This week | $270/mo |
| OPT-3: Lifecycle policy | [Engineer] | Sprint N | $25/mo |

**Total expected monthly savings:** $335
**Total implementation effort:** ~4 hours
**ROI:** ~$3 saved per $1 of engineering time invested

---

## Baseline for Next Review

| Metric | Baseline | 30-day target | 90-day target |
|--------|---------|--------------|--------------|
| Total monthly spend | $750 | $415 | $400 |
| GitHub Actions min/month | 10,625 | 5,000 | 4,500 |
| Dev VM uptime hrs/week | 168 | 70 | 60 |
```

## Output Contract
- Savings estimates always specific and conservative — round down, not up
- Implementation effort always estimated — free savings that take 3 months of engineer time are not free
- HIPAA compliance always maintained — storage purge must respect 6-year minimum for Allevio PHI data
- Risk level always assessed — optimizations with production risk flagged as HITL items
- HITL required: Dr. Lewis approves production infrastructure changes; Matt Mathison notified of >$500/month spend changes; storage purge affecting Allevio requires compliance review

## System Dependencies
- **Reads from:** Azure Cost Management, GitHub Actions billing page, infrastructure manifest/IaC files
- **Writes to:** Cost optimization report (SharePoint/Engineering); implementation tickets (Monday.com)
- **HITL Required:** Dr. Lewis approves production changes; compliance review for Allevio storage changes

## Test Cases
1. **Golden path:** Monthly cost analysis → GitHub Actions at $85/mo (target $30); dev VMs 24/7 ($420/mo → $150 with schedule); 3 optimizations identified; 4 hours total effort; $350/month savings ($4,200 annual); implementation plan with owners and sprint targets
2. **Edge case:** Cost spike this month due to new Allevio integration testing → isolate: is this temporary (load testing) or persistent (architecture change)?; temporary: accept and monitor; persistent: right-size the infrastructure for steady state; document in cost baseline
3. **Adversarial:** Engineering wants to add a new $300/month tool without a budget offset → budget discipline: new tools require identifying what comes out or demonstrating the tool generates >$300/month in recovered engineer time; provide the ROI analysis; don't approve on gut feel

## Audit Log
Monthly cost reports retained. Optimization implementations documented. Baseline vs. actual comparisons retained quarterly.

## Deprecation
Retire when engineering team adopts FinOps tooling (Azure Cost Management alerts, Infracost in CI/CD) with automated anomaly detection and optimization recommendations.
