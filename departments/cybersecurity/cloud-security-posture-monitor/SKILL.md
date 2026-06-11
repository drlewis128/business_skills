---
name: cloud-security-posture-monitor
description: "Monitor and improve cloud security posture. Use when the user says 'cloud security', 'cloud posture', 'cloud security review', 'Azure security', 'AWS security', 'cloud misconfigurations', 'cloud security score', 'Microsoft Defender for Cloud', or 'secure our cloud environment'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--cloud <Azure|AWS|GCP|M365>] [--mode <assess|monitor|remediate>]"
---

# Cloud Security Posture Monitor

Monitor and improve cloud security posture. Cloud environments misconfigured on day one and drift toward insecurity over time as teams make quick changes under pressure. This skill provides a systematic review of cloud security settings, flags misconfigurations before attackers find them, and builds the remediation roadmap.

## When to Use
- Initial cloud security assessment for a new environment
- Monthly cloud security posture review
- After a significant cloud infrastructure change
- Before a SOC 2 or cyber insurance audit
- When a security tool flags cloud misconfigurations

## Common Cloud Misconfigurations (Top Risk Areas)

| Misconfiguration | Risk | Where to Check |
|----------------|------|---------------|
| Storage buckets/blobs publicly accessible | Data exposure | Azure Storage / S3 access settings |
| MFA not enforced on cloud console access | Account takeover | Entra ID / AWS IAM |
| Overprivileged IAM roles | Privilege escalation | Azure RBAC / AWS IAM policies |
| Security groups allowing 0.0.0.0/0 inbound | External attack surface | Azure NSG / AWS Security Groups |
| Logging and monitoring not enabled | Blind spots | Azure Diagnostic Settings / CloudTrail |
| Encryption at rest disabled | Data exposure at breach | Storage encryption settings |
| Old / unused resources with permissions | Privilege accumulation | Azure IAM / AWS IAM |
| Hardcoded secrets in cloud functions | Credential exposure | Azure Function App settings / Lambda env |
| No resource tagging | Governance, cost control | Azure / AWS tagging policies |
| Outdated VM OS or unpatched VMs | Vulnerability | VM OS version, Defender for Cloud |

## MBL Cloud Environment (Azure / M365)

| Environment | Systems | Portfolio Entity |
|-----------|---------|----------------|
| Microsoft 365 | Email, Teams, SharePoint, OneDrive, Entra ID | All entities |
| Azure | Any Azure resources, AI workloads, integrations | MBL Partners |
| GoHighLevel SaaS | CRM — no cloud infrastructure (SaaS) | MBL, North Vista |
| Covercy SaaS | Oil & gas ops — no cloud infrastructure (SaaS) | HIVE Partners |

## Output Format

```markdown
# Cloud Security Posture Assessment — <Entity>
**Date:** <date> | **Cloud:** Azure / M365 / Other
**Assessor:** Dr. John Lewis / IT Manager
**Secure Score (if available):** <N>% (Microsoft Defender for Cloud score)

---

## M365 Security Posture

| Control | Status | Microsoft Secure Score Impact | Action |
|---------|--------|------------------------------|--------|
| MFA enabled for all users | ✅ / 🟡 / ❌ | +15 pts | |
| Legacy auth blocked | ✅ / 🟡 / ❌ | +10 pts | Block Conditional Access |
| Admin accounts protected by MFA | ✅ / 🟡 / ❌ | +20 pts | |
| M365 audit logging enabled | ✅ / 🟡 / ❌ | +5 pts | |
| SharePoint external sharing limited | ✅ / 🟡 / ❌ | +8 pts | |
| M365 Defender (P1/P2) licensed | ✅ / 🟡 / ❌ | +12 pts | |
| DLP policies in place | ✅ / 🟡 / ❌ | +8 pts | |
| Conditional Access policies deployed | ✅ / 🟡 / ❌ | +15 pts | |

**M365 Secure Score:** <N>/100

---

## Azure Security Posture (if applicable)

| Control | Status | Priority | Action |
|---------|--------|---------|--------|
| Defender for Cloud enabled | ✅ / 🟡 / ❌ | High | |
| Storage accounts not publicly accessible | ✅ / 🟡 / ❌ | Critical | |
| Key Vault for secrets management | ✅ / 🟡 / ❌ | High | |
| NSG rules reviewed | ✅ / 🟡 / ❌ | High | |
| Diagnostic logging enabled on all resources | ✅ / 🟡 / ❌ | High | |
| Azure RBAC — least privilege applied | ✅ / 🟡 / ❌ | High | |
| VM OS patches current | ✅ / 🟡 / ❌ | High | |

---

## Critical Findings

| Finding | Resource | Risk | Action | Owner | Due |
|---------|---------|------|--------|-------|-----|
| Storage blob publicly accessible | mbl-backup-storage | Data exposure | Disable public access immediately | IT Engineer | Today |
| SQL connection string in App Settings | func-integration | Credential exposure | Move to Key Vault | IT Engineer | 48 hours |

---

## Posture Trend

| Month | M365 Score | Azure Score | Critical Findings | Notes |
|-------|-----------|-----------|----------------|-------|
| 3 months ago | 62% | — | 3 | |
| 2 months ago | 71% | — | 1 | Conditional Access deployed |
| Last month | 76% | 58% | 2 | Azure onboarded to review |
| **This month** | **78%** | **61%** | **1** | Improving |

---

## Recommendations (Highest ROI)

1. **Block legacy authentication in Conditional Access** — closes 1 CA policy gap, +10 pts Secure Score, eliminates MFA bypass attack vector. Effort: 30 minutes.
2. **Enable SharePoint external sharing restrictions** — prevents accidental data leakage via "anyone with link." Effort: 1 hour policy review.
3. **Move app connection strings to Key Vault** — eliminates credential exposure risk. Effort: 2-4 hours per app.
```

## Output Contract
- Publicly accessible storage always flagged as Critical — immediate action required
- Hardcoded secrets in app settings always flagged as Critical
- M365 Secure Score tracked monthly — trending direction matters
- Portfolio isolation always verified — Azure resources should be tagged and segregated by entity
- HITL required: IT Engineer resolves critical findings; Dr. Lewis reviews monthly posture report; Allevio compliance officer reviews any M365 finding affecting PHI data

## System Dependencies
- **Reads from:** Microsoft Defender for Cloud (Secure Score), M365 admin center, Azure portal configuration (provided)
- **Writes to:** Nothing (assessment report for HITL remediation)
- **HITL Required:** IT Engineer executes critical remediations; Dr. Lewis reviews monthly report; Allevio compliance officer for PHI-adjacent controls

## Test Cases
1. **Golden path:** Monthly M365 posture review → Secure Score 78% (up from 76%), 1 critical finding (SharePoint external sharing too permissive), remediated by IT Engineer in 1 hour, next month target 82%
2. **Edge case:** New Azure resource deployed by developer without security review → cloud posture scan flags it within 24 hours, Defender for Cloud alert triggers review, new resource assessed against baseline
3. **Adversarial:** IT team argues Microsoft Secure Score is "just recommendations" → score is used by cyber insurance carriers, SOC 2 auditors, and enterprise customers; a score below 50% is a red flag; each recommendation maps to a real attack vector

## Audit Log
Monthly cloud security posture assessments retained by entity. Secure Score trend tracked. Critical findings and remediation status documented.

## Deprecation
Retire when Microsoft Defender for Cloud or a CSPM platform is providing real-time continuous posture monitoring with automated alerting and remediation.
