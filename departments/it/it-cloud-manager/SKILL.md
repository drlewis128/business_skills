---
name: it-cloud-manager
description: "Manage cloud infrastructure and resources. Use when the user says 'cloud management', 'AWS', 'Azure', 'GCP', 'cloud infrastructure', 'cloud cost', 'cloud resources', 'cloud spend', 'cloud governance', 'cloud services', 'cloud optimization', 'cloud budget', 'cloud security', 'cloud architecture', 'cloud strategy', or 'manage cloud environment'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--provider <AWS|Azure|GCP|multi>] [--action <review|optimize|audit|plan>]"
---

# IT Cloud Manager

Manage cloud infrastructure at MBL portfolio companies — governing cloud resources, controlling costs, enforcing security configurations, and ensuring cloud services align with business needs. Cloud management at portfolio scale is about discipline: left unmanaged, cloud environments accumulate orphaned resources, over-provisioned instances, and security misconfigurations that translate directly to wasted spend and elevated risk. Most portfolio companies at MBL's scale use cloud primarily for SaaS and Microsoft 365, with some using IaaS (AWS/Azure virtual machines) for specific applications.

## When to Use
- Monthly cloud cost review — is spending in line with budget and usage?
- A new cloud resource or service is being provisioned
- Cloud costs have increased unexpectedly
- Security configuration of cloud infrastructure needs to be reviewed
- A portfolio company is migrating a workload to cloud

## Cloud Management Framework

```
Cloud tiers at MBL portfolio scale:
  SaaS-only (most portfolio companies): No IaaS/PaaS — all cloud is SaaS subscriptions
    → Managed via ops-tech-stack-auditor and it-saas-governance
    
  Microsoft 365 + light IaaS: M365 tenant + 1-3 Azure/AWS resources
    → M365 managed via it-m365-admin; IaaS via this skill
    
  Full cloud workload: Database servers, application servers, storage in cloud
    → Requires full cloud management including cost, security, scaling

Cloud cost governance:
  Right-sizing: Are instance types sized for actual workload? (Not "we might need it")
  Reserved vs. on-demand: 1-year reservations for stable workloads save 30-40%
  Orphaned resources: Snapshots, volumes, old instances that are running but unused
  Egress costs: Data leaving cloud regions is expensive; identify egress-heavy architectures
  
  Target: Cloud IaaS costs at <10% variance to budget monthly
  Alert threshold: >20% month-over-month increase with no planned cause

Security configuration (cloud-specific):
  No public S3 buckets or blob storage without explicit justification
  MFA enforced on all cloud console access (root account disabled)
  IAM: Least privilege; no shared accounts; service accounts for automation
  VPC/network: Private subnets for databases; security groups restrict by IP
  Logging: CloudTrail (AWS) / Activity Log (Azure) always enabled
  
Healthcare (Allevio): Any cloud resource that stores or processes PHI must be in a 
  HIPAA-compliant cloud configuration; AWS/Azure both offer HIPAA BAA — required
```

## Output Format

```markdown
# Cloud Infrastructure Review — <Company Name>
**Cloud provider(s):** [AWS / Azure / GCP / M365] | **Date:** [Date]
**Prepared by:** Dr. John Lewis | **Monthly budget:** $[X]

---

## Cloud Spend Summary

| Service | Monthly cost | vs. Budget | vs. Last month | Usage | Assessment |
|---------|------------|-----------|--------------|-------|-----------|
| [M365 Business] | $[X] | [+/-X%] | [+/-X%] | [N licensed / N active] | 🟢/🟡/🔴 |
| [AWS EC2] | $[X] | | | | |
| [Azure SQL] | $[X] | | | | |
| [Storage] | $[X] | | | | |
| **Total** | **$[X]** | | | | |

**Budget variance:** $[X] ([X%]) — 🟢 Within 10% / 🟡 10-20% over / 🔴 >20% over

---

## Cost Optimization Opportunities

| Item | Current cost | Action | Savings | Effort |
|------|------------|--------|---------|--------|
| [Over-provisioned instance — m5.xlarge, using 8% CPU] | $[X]/mo | Downsize to m5.large | $[X]/mo | Low |
| [Orphaned snapshot — 90 days old, 500GB] | $[X]/mo | Delete | $[X]/mo | 1 hour |
| [On-demand instance — stable 24/7 workload] | $[X]/mo | Convert to 1-year reserved | $[X]/mo | Low |

**Total optimization opportunity:** $[X]/month = $[X]/year

---

## Security Configuration Audit

| Control | Status | Risk | Action required |
|---------|--------|------|----------------|
| Root/global admin MFA | ✅ Enabled / 🔴 Disabled | Critical | Enable immediately |
| No public storage buckets | ✅ / 🔴 [Bucket name] is public | High | Restrict access |
| IAM least privilege | ✅ / 🟡 [User] has admin unnecessarily | Medium | Reduce permissions |
| CloudTrail/Activity Log | ✅ Enabled / 🔴 Disabled | High | Enable logging |
| PHI workloads — BAA in place (Allevio) | ✅ / 🔴 Required | Critical | Obtain BAA |
| Backup/snapshot policy | ✅ / 🟡 No snapshot policy | Medium | Configure automated snapshots |

**Critical security items (immediate action):** [N items — list]

---

## Resource Inventory

| Resource | Type | Region | Running since | Owner | Cost/mo | Status |
|---------|------|--------|-------------|-------|---------|--------|
| [Instance name] | EC2 t3.medium | us-east-1 | [Date] | [Owner] | $[X] | Active / Review |

**Untagged resources:** [N — enforce tagging policy to track ownership]

---

## Monthly Action Items

- [ ] [Specific action — delete, resize, reserve, restrict]
- [ ] [Security remediation — with deadline]

## Matt Mathison Brief (if cloud costs >$2K/month or security finding)

[Company] cloud spend: $[X]/month. [Key finding or status]. [Action underway — no escalation needed / Action needed: description].
```

## Output Contract
- Cost visibility is monthly — cloud costs are reviewed monthly at minimum; cost surprises of >20% MoM without a known cause require immediate investigation; the investigation finds the specific resource responsible (not "cloud is expensive this month"); a tagged, inventoried environment makes this analysis take 20 minutes instead of 3 hours
- Security misconfigurations are fixed immediately — public storage buckets, root accounts without MFA, and disabled logging are not "medium priority" items — they are immediate remediation targets; these are the configurations that cause breaches; Dr. Lewis fixes them the day they're discovered, regardless of what else is on the calendar
- PHI in cloud requires HIPAA BAA — if Allevio is running any workload in AWS/Azure that handles patient data, the cloud provider's HIPAA BAA must be executed before that workload goes live; both AWS and Azure offer HIPAA BAAs at no charge; the configuration also requires HIPAA-eligible services (not all cloud services are included)
- HITL required: Dr. Lewis manages cloud infrastructure; CEO informed of monthly cloud spend; new cloud workloads >$500/month require Dr. Lewis approval; security misconfigurations remediated by Dr. Lewis same day; PHI cloud configurations require BAA + Dr. Lewis sign-off; Matt Mathison for cloud spend >$2K/month or critical security finding

## System Dependencies
- **Reads from:** Cloud provider console (AWS Cost Explorer, Azure Cost Management), billing alerts, CloudTrail/Activity logs, resource tags, vendor BAA status
- **Writes to:** Cloud inventory (SharePoint/Ops/<Company>/IT/Cloud/); monthly cost report; security remediation log; tagging policy
- **HITL Required:** Dr. Lewis manages; CEO informed monthly; new workloads >$500/month require approval; security items same-day; Matt Mathison for >$2K/month or critical finding

## Test Cases
1. **Golden path:** Monthly MBL HoldCo Azure review → M365 Business: $840/month (18 licenses × $14/user, all active — 🟢); Azure SQL (legacy project): $180/month, no active connections in 60 days → delete or confirm still needed with project owner; Azure Blob Storage: 2TB, $40/month → check retention policy; Security: MFA enabled on all accounts ✅; no public blobs ✅; Activity Log enabled ✅; Total: $1,060/month; opportunity: delete/archive the unused Azure SQL instance ($180/month); Matt Mathison: not notified (under $2K/month threshold; no critical security issues)
2. **Edge case:** A developer provisioned a test environment and forgot to shut it down — it's been running for 4 months at $320/month → Identify via billing anomaly; shut down immediately; total unplanned cost: $1,280; implement: (1) tagging policy — all resources must have Owner + Project + Environment tags; (2) automated shutdown for non-production environments outside business hours; (3) monthly budget alert at $50 for untagged resources
3. **Adversarial:** "Cloud costs aren't a priority — we're only spending $800/month" → At $800/month that's $9,600/year; a 30% optimization saves $2,880/year for 2 hours of work; but beyond cost, the security audit is the higher value: a misconfigured public S3 bucket or disabled audit logging is a liability regardless of spend level; even small cloud environments can be the entry point for a breach

## Audit Log
Monthly cost reviews retained by company and date. Security audit results retained. Resource inventory versioned monthly. PHI BAA configurations retained. Remediation actions documented with dates. Cost anomalies documented with root cause.

## Deprecation
Retire when portfolio companies have IT managers or cloud architects who own cloud governance, conduct monthly reviews, and maintain security configurations independently — with Dr. Lewis receiving exception reports rather than running the monthly review.
