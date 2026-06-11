---
name: log-management-coordinator
description: "Design and manage security log collection and retention. Use when the user says 'log management', 'security logs', 'audit logs', 'log retention', 'SIEM', 'what logs do we have', 'log collection', 'audit trail', 'compliance logging', or 'what happened in our systems'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <design|audit|query>] [--scope <M365|Azure|network|all>]"
---

# Log Management Coordinator

Design and manage security log collection and retention. Without logs, you can't investigate incidents, prove compliance, or detect attacks. With poorly managed logs, you drown in noise and miss signals. This skill designs the log collection architecture, establishes retention policies, and provides guidance on what logs to collect and how long to keep them.

## When to Use
- Building a log management program from scratch
- Compliance requirement (HIPAA requires audit logs; SOC 2 requires log monitoring)
- After an incident — "what logs do we have?" investigation
- Evaluating SIEM platforms
- Audit preparation — proving you have the required logs

## What Logs Must Be Collected (MBL Portfolio)

| Log Source | What It Captures | Compliance Relevance | Retention |
|-----------|----------------|---------------------|----------|
| **M365 Entra ID sign-in logs** | All logins, MFA events, conditional access | SOC 2, HIPAA | 90 days (native), extend to 1 year |
| **M365 audit log** | Admin actions, email rules, file access | HIPAA, SOC 2 | 90 days (E3), 365 days (E5/Purview) |
| **M365 Defender alerts** | Malware, phishing, anomalies | Incident response | 180 days |
| **Azure activity log** | Resource creation, config changes, role assignments | SOC 2 | 90 days |
| **Azure diagnostics** | VM, storage, networking, function app logs | Incident investigation | 30-90 days |
| **Network firewall logs** | Inbound/outbound connection attempts | Incident investigation | 90 days |
| **EDR logs** | Endpoint activity, alert history | Incident response | 1 year |
| **Application logs** | API calls, auth events, errors | Custom — per app | 90 days min |
| **Backup logs** | Backup success/failure, restore events | Business continuity | 1 year |
| **Financial system logs** | QuickBooks, Bill.com access and changes | Audit | 7 years |

## Compliance Retention Requirements

| Framework | Log Types | Minimum Retention |
|---------|---------|-----------------|
| **HIPAA** | PHI access logs, security events | 6 years |
| **SOC 2** | Security events, admin actions, access logs | 1 year |
| **Cyber insurance** | Incident evidence, security monitoring | Policy period |
| **General business** | All business system logs | 3-7 years (varies by state) |

## Output Format

```markdown
# Log Management Assessment — <Entity>
**Date:** <date> | **Scope:** M365 / Azure / Network / All
**Assessor:** IT Manager / Dr. John Lewis

---

## Log Collection Status

| Log Source | Collected? | Retention | Compliance Need | Gap |
|-----------|---------|---------|----------------|-----|
| M365 Entra sign-in logs | ✅ Yes | 90 days (native) | SOC 2, HIPAA | Extend to 1 year — use Sentinel or export |
| M365 unified audit log | ✅ Yes | 90 days (E3) | HIPAA, SOC 2 | Extend to 1 year — upgrade to E5 or Purview |
| M365 Defender alerts | ✅ Yes | 180 days | Incident response | OK for now |
| Azure activity log | ✅ Yes | 90 days | SOC 2 | Extend to 1 year via Log Analytics workspace |
| Azure VM diagnostics | ❌ Not configured | — | Incident investigation | Configure diagnostic settings on all VMs |
| Network firewall logs | 🟡 Partial | 30 days | Incident investigation | Extend to 90 days minimum |
| EDR logs | ✅ Yes | 1 year | Incident response | OK |
| Application logs (Krista.ai) | 🟡 Partial | 30 days | Incident investigation | Extend, centralize |
| Financial system logs (QB, Bill.com) | ❌ Not centralized | N/A | Audit | Export and retain — 7 years |

---

## Log Architecture

**Current state:**
- M365 logs: Native retention (90 days)
- Azure: Log Analytics workspace (partial)
- No SIEM / centralized log aggregation

**Target state:**
```
M365 → Microsoft Sentinel (SIEM)
Azure resources → Log Analytics workspace → Sentinel
Network/Firewall → Sentinel (via syslog)
EDR → Sentinel (via Defender connector)
App logs → Log Analytics workspace
```

**SIEM recommendation:** Microsoft Sentinel — native integration with M365, Azure, and Defender. Best value for MBL portfolio given M365/Azure footprint.

---

## Retention Policy

| Log Category | Retention | Storage | Cost Impact |
|-----------|---------|--------|------------|
| Security events (auth, access, alerts) | 1 year | Sentinel / Log Analytics | ~$<N>/month |
| HIPAA PHI-related logs (Allevio) | 6 years | Sentinel + Azure cold storage | ~$<N>/month |
| Admin/audit logs | 1 year | Sentinel | Included above |
| Financial system audit | 7 years | Encrypted archive (Azure Blob cold) | ~$<N>/month |

---

## Compliance Gaps

| Requirement | Gap | Action | Priority |
|-----------|-----|--------|---------|
| HIPAA 6-year log retention | Current 90-day M365 retention insufficient | Deploy Sentinel or export to Azure cold storage | Critical (Allevio) |
| SOC 2 — security monitoring | No centralized log monitoring or alerting | Deploy Sentinel with detection rules | High |
| SOC 2 — 1-year retention | 90-day native retention | Extend via Sentinel or M365 E5 | High |

---

## Recommended Next Steps

1. **Enable M365 unified audit log for all users** (if not already enabled) — free, takes 10 minutes
2. **Deploy Microsoft Sentinel** — centralizes all log sources, extends retention, enables detection rules
3. **Export critical log categories to Azure cold storage** for long-term retention (HIPAA 6-year requirement)
4. **Configure diagnostic settings on all Azure VMs** — critical for incident investigation capability
```

## Output Contract
- HIPAA log retention gaps (Allevio) always flagged as Critical — 6-year retention is a legal requirement
- SOC 2 retention gaps always flagged as High — compliance certification requires log evidence
- SIEM gap always noted — centralized monitoring without a SIEM means alerts are manual and inconsistent
- Financial log retention always evaluated — 7-year audit retention is standard business practice
- HITL required: IT Manager implements log collection; Dr. Lewis approves SIEM investment; Allevio compliance officer approves HIPAA log retention policy

## System Dependencies
- **Reads from:** M365 admin center, Azure portal, EDR console, network device configs (provided)
- **Writes to:** Log collection configuration (IT Manager executes)
- **HITL Required:** IT Manager deploys log collection; Dr. Lewis approves SIEM investment; Allevio compliance officer approves HIPAA retention policy

## Test Cases
1. **Golden path:** Log management assessment → M365 audit log at 90 days (gap), no SIEM, Azure VM diagnostics not configured; roadmap: enable Sentinel, export to cold storage for HIPAA, configure VM diagnostics within 30 days
2. **Edge case:** Incident investigation requires logs from 6 months ago, but M365 audit log only has 90 days → logs unavailable; documents the gap; implements Sentinel and cold storage export going forward; advises that the incident investigation is limited by log availability
3. **Adversarial:** Finance says log storage costs too much → HIPAA fines for missing audit logs range from $100 to $50,000 per violation; 6-year retention for PHI logs is not optional; presents cost-benefit analysis (cold storage is cheap vs. compliance risk)

## Audit Log
Log management assessments retained by entity and date. Retention policy documented. SIEM deployment status tracked. HIPAA compliance documentation retained.

## Deprecation
Retire manual log management when Microsoft Sentinel or equivalent SIEM is deployed with automated collection, retention enforcement, detection rules, and centralized alert management.
