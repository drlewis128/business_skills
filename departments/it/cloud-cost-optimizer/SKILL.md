---
name: cloud-cost-optimizer
description: "Analyze and optimize cloud infrastructure costs. Use when the user says 'cloud costs', 'AWS costs', 'Azure costs', 'cloud spend', 'cloud bill', 'cloud optimization', 'right-size cloud', 'cloud waste', or 'reduce infrastructure costs'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--provider <aws|azure|gcp|all>] [--format <audit|recommendations|brief>]"
---

# Cloud Cost Optimizer

Analyze and optimize cloud infrastructure spend. Cloud costs are invisible until they explode. The average organization wastes 30-35% of cloud spend on idle resources, over-provisioned instances, and forgotten workloads. This skill finds and eliminates that waste.

## When to Use
- Monthly or quarterly cloud cost review
- Cloud bill is growing faster than business activity
- Onboarding a portfolio company — what are they paying for?
- Annual IT budget planning (what will cloud cost next year?)
- Pre-contract negotiation with cloud provider

## Cloud Waste Categories

| Category | Description | Typical % of Waste |
|---------|------------|-------------------|
| **Idle resources** | VMs, DBs, load balancers running with 0-5% utilization | 20-30% of waste |
| **Over-provisioned instances** | Running XL when M would suffice | 15-25% of waste |
| **Unattached storage** | Volumes with no associated compute | 10-15% of waste |
| **Orphaned snapshots** | Old backups that were never deleted | 5-10% of waste |
| **Wrong pricing model** | Pay-as-you-go when Reserved Instances would save 30-60% | 15-25% of waste |
| **Data transfer fees** | Avoidable cross-region or egress fees | 5-10% of waste |
| **Untagged resources** | No cost allocation → no accountability | Enables all other waste |

## Savings Instruments

| Instrument | Discount | Commitment | Best For |
|-----------|---------|-----------|---------|
| Reserved Instances (AWS/Azure) | 30-60% vs. on-demand | 1-3 year | Stable, predictable workloads |
| Savings Plans (AWS) | Up to 66% | 1-3 year | Flexible — covers EC2, Lambda, Fargate |
| Spot/Preemptible Instances | 60-90% | None — can be interrupted | Non-critical, fault-tolerant workloads |
| Committed Use Discounts (GCP) | 20-57% | 1-3 year | Stable compute |
| Rightsizing | 15-40% | None — immediate | Over-provisioned workloads |

## Output Format

```markdown
# Cloud Cost Optimization Report — <Entity>
**Provider(s):** <AWS / Azure / GCP> | **Date:** <date>
**Monthly spend:** $<N> | **Annualized:** $<N> | **Identified savings:** $<N>/month

---

## Spend Breakdown

| Service | Monthly Cost | % of Total | Growth (MoM) | Notes |
|---------|------------|-----------|------------|-------|
| Compute (EC2/VMs) | $<N> | <N>% | +<N>% | |
| Database (RDS/Azure SQL) | $<N> | <N>% | <N>% | |
| Storage (S3/Blob) | $<N> | <N>% | <N>% | |
| Networking/Data Transfer | $<N> | <N>% | <N>% | Flag if > 10% |
| Other | $<N> | <N>% | <N>% | |
| **Total** | **$<N>** | 100% | | |

---

## Optimization Opportunities

| Finding | Resource | Monthly Savings | Effort | Risk | Priority |
|---------|---------|----------------|--------|------|---------|
| Idle EC2 instance (< 3% CPU, 90 days) | i-0abc123 | $<N> | Low (terminate) | Low | High |
| Over-provisioned DB (m5.4xlarge → m5.xlarge) | rds-prod-01 | $<N> | Medium (resize) | Medium | High |
| Unattached EBS volumes (12 volumes, 3 TB) | Multiple | $<N> | Low (delete) | Low | High |
| Reserved Instance opportunity (3 stable workloads) | EC2 fleet | $<N> (30% discount) | Low (purchase RI) | Low | Medium |
| Old snapshots (> 180 days, 8 TB) | Multiple | $<N> | Low (delete) | Low | Medium |

**Total identified savings:** $<N>/month (~$<N>/year)

---

## Recommendations

### Immediate (this week — no risk)
1. Delete 12 unattached EBS volumes → $<N>/month saved
2. Terminate idle dev environment (no activity 60+ days) → $<N>/month saved
3. Delete snapshots > 180 days (review before deleting) → $<N>/month saved

### Short-term (this month — low risk)
4. Rightsize over-provisioned DB to m5.xlarge (after load test confirmation) → $<N>/month saved
5. Enable S3 Intelligent Tiering on archive buckets → $<N>/month saved

### Strategic (this quarter — requires planning)
6. Purchase 1-year Reserved Instances for 3 stable EC2 workloads → $<N>/month saved

---

## Tagging Compliance

**Resources without cost allocation tags:** <N> (<N>%)
**Action:** IT Manager to mandate tagging policy; enforce via AWS Config / Azure Policy

---

## Forecast

| Scenario | 12-Month Spend |
|---------|--------------|
| No action | $<N> |
| Implement immediate + short-term | $<N> (savings: $<N>) |
| Full optimization | $<N> (savings: $<N>) |
```

## Output Contract
- Savings always quantified per finding — "idle resources" is not actionable without a dollar amount
- Termination/deletion recommendations never executed without HITL approval — cloud deletes can be irreversible
- Reserved Instance recommendations always compared to current actual usage — don't commit to what you're not using
- HITL required: IT Manager approves all deletion actions; Dr. Lewis approves Reserved Instance purchases > $10K/year

## System Dependencies
- **Reads from:** Cloud billing exports (AWS Cost Explorer, Azure Cost Management, GCP Billing), resource utilization metrics (provided)
- **Writes to:** Nothing (recommendations for HITL review and IT action)
- **HITL Required:** IT Manager approves all resource deletions or resizes; Dr. Lewis approves Reserved Instance or Savings Plan commitments > $10K

## Test Cases
1. **Golden path:** AWS account, $8,500/month → 12 unattached EBS volumes ($180/month), 1 idle instance ($320/month), DB rightsize ($200/month), 3-instance Reserved Instance opportunity ($420/month), total savings $1,120/month (13%)
2. **Edge case:** All resources appear active but costs are still growing → investigates data transfer fees and orphaned snapshots, discovers 2 TB/month in avoidable cross-region data transfer ($180/month), recommends architecture change to reduce transfer
3. **Adversarial:** Developer argues all resources are needed "for future use" → documents current utilization vs. stated future need, proposes 30-day grace period with a utilization check, recommends right-sizing (not termination) as a lower-risk compromise

## Audit Log
Cloud cost reports retained by entity and month. Savings recommendations vs. savings realized tracked. Resource deletions and reservations documented with approver.

## Deprecation
Retire when entity deploys a cloud cost management platform (CloudHealth, Apptio Cloudability, AWS Trusted Advisor + Cost Explorer dashboards) with automated savings recommendations and idle resource alerts.
