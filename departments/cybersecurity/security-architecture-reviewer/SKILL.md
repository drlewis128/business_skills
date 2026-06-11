---
name: security-architecture-reviewer
description: "Review security architecture of a system, integration, or infrastructure design. Use when the user says 'security review', 'security architecture review', 'review this architecture', 'is this secure', 'threat model', 'security design review', 'can you review this design', or 'secure this architecture'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "<system-or-design> [--entity <name>] [--depth <quick|full>] [--context <new-system|integration|change>]"
---

# Security Architecture Reviewer

Review security architecture of a system, integration, or infrastructure design. Most security failures are architectural — they happen because security wasn't considered during design. This skill reviews proposed or existing architectures against security principles and identifies risks before they become incidents.

## When to Use
- Reviewing a new system or integration before it's built or deployed
- Evaluating an existing system for security gaps
- Reviewing a proposed API integration or third-party connection
- Reviewing AI system architecture (Krista.ai, OpenFang, MBL AI stack)
- Pre-deployment review of cloud infrastructure changes
- Vendor-proposed architecture review

## Security Review Dimensions

| Dimension | What to Evaluate |
|---------|----------------|
| **Authentication & Authorization** | How does the system verify identity? What can each identity access? |
| **Data in transit** | Is all communication encrypted (TLS 1.2+)? Are certificates managed? |
| **Data at rest** | Is data encrypted at rest? Who holds the encryption keys? |
| **Secrets management** | How are API keys, passwords, and credentials stored? |
| **Network exposure** | What ports/services are exposed? To whom? |
| **Third-party dependencies** | What does the system depend on? Are they trusted? |
| **Logging and audit trail** | What is logged? Who can read the logs? Are they tamper-resistant? |
| **Failure modes** | What happens if a component fails? Does it fail secure or fail open? |
| **Data isolation** | Can one entity's data leak to another? (MBL portfolio isolation critical) |
| **Privilege model** | What access does the system require? Is it least-privilege? |

## MBL-Specific Review Criteria

| Criterion | Why It Matters |
|---------|--------------|
| **Portfolio isolation** | Allevio, HIVE, Column6 data must be isolated — cross-portfolio data leakage is a critical risk |
| **PHI handling** | Any system that touches Allevio data must have HIPAA-compliant architecture |
| **M365 integration security** | Krista.ai and other integrations touching M365 need delegated permissions reviewed |
| **AI system safety** | OpenFang, Krista.ai — what data can the AI access? Can it be prompted to leak? |
| **Audit requirements** | All financial integrations (QuickBooks, Bill.com) require audit logs |

## Output Format

```markdown
# Security Architecture Review — <System Name>
**Date:** <date> | **Entity:** <name>
**Reviewer:** Dr. John Lewis
**Context:** New system / Integration / Change / Existing system review
**Verdict:** APPROVED / APPROVED WITH CONDITIONS / BLOCKED — CRITICAL ISSUES

---

## System Overview

**What is this?** <Brief description of what the system does>
**Data it touches:** <Types of data — PHI, financial, LP, PII, internal>
**Integrations:** <What external systems does it connect to?>
**Deployment:** <Cloud provider / On-prem / SaaS / Hybrid>

---

## Security Review Findings

### Authentication & Authorization
**Status:** ✅ Secure / 🟡 Gaps / ❌ Critical Gap

- ✅ System uses Entra ID SSO — no custom auth
- ❌ Service account has read/write access to all SharePoint data — should be scoped to specific site

### Data in Transit
**Status:** ✅ Secure / 🟡 Gaps / ❌ Critical Gap

- ✅ All API calls use TLS 1.2+
- 🟡 Internal service-to-service calls not verified — add mTLS or API gateway

### Data at Rest
**Status:** ✅ Secure / 🟡 Gaps / ❌ Critical Gap

- ✅ Azure Blob Storage with customer-managed keys
- ❌ Logs stored unencrypted in local path — move to encrypted log storage

### Secrets Management
**Status:** ✅ Secure / 🟡 Gaps / ❌ Critical Gap

- ❌ API keys stored in environment variable in .env file on VM — must move to Azure Key Vault

### Network Exposure
**Status:** ✅ Secure / 🟡 Gaps / ❌ Critical Gap

- ✅ No public ports exposed beyond HTTPS 443
- ✅ Admin interface behind VPN

### Logging & Audit Trail
**Status:** ✅ Secure / 🟡 Gaps / ❌ Critical Gap

- ✅ All API calls logged with timestamp, user, action
- 🟡 Logs not sent to central SIEM — add M365 Sentinel or Azure Monitor export

### Portfolio Isolation
**Status:** ✅ Isolated / ❌ Risk of Cross-Contamination

- ✅ Per-tenant configuration with isolated Azure resources per entity
- 🟡 Shared logging database across entities — separate or add row-level isolation

### PHI Compliance (Allevio — if applicable)
**Status:** ✅ Compliant / 🟡 Gaps / ❌ Non-Compliant / N/A

- <evaluation>

---

## Critical Issues (Block deployment until resolved)

| Issue | Severity | Risk | Required Action |
|-------|---------|------|----------------|
| API keys in .env file | Critical | Credential exposure if server compromised | Move to Azure Key Vault before deployment |

---

## Conditions (Approve with these actions required within 30 days)

| Issue | Severity | Risk | Required Action |
|-------|---------|------|----------------|
| Shared logging database | High | Portfolio data isolation gap | Separate per-entity or add row-level isolation |
| Internal calls unverified | Medium | Internal service impersonation risk | Add mTLS or API gateway within 90 days |

---

## Verdict

**APPROVED WITH CONDITIONS**

Deployment may proceed after resolving critical issues. Condition items must be remediated within 30 days. Architectural changes required for portfolio isolation must be tracked in the IT risk register.
```

## Output Contract
- Critical issues always block deployment — no exceptions
- Secrets in code, config files, or environment variables always flagged as Critical
- Portfolio isolation always evaluated for any system touching multiple MBL entities
- PHI compliance always evaluated if Allevio is in scope
- HITL required: Dr. Lewis approves architecture review verdicts; IT Manager executes remediation; Allevio compliance officer reviews any PHI-adjacent architecture

## System Dependencies
- **Reads from:** Architecture diagrams, design documents, code repositories, configuration provided by the user
- **Writes to:** Security review report (for HITL approval before deployment)
- **HITL Required:** Dr. Lewis approves/blocks deployment; IT Manager remediates critical findings; Allevio compliance officer for PHI systems

## Test Cases
1. **Golden path:** New Krista.ai integration with M365 → API keys in Key Vault (✅), TLS 1.2+ (✅), scoped delegated permissions (🟡 — review scope), per-entity configuration (✅), audit logging (✅) → APPROVED WITH CONDITIONS — scope M365 permissions to minimum required within 30 days
2. **Edge case:** Existing production system discovered to have API key in a config file committed to GitHub → immediate Critical finding; rotate all API keys immediately; move to Key Vault; review GitHub history for other leaked secrets
3. **Adversarial:** Developer argues the architecture is "industry standard" and review is unnecessary → review proceeds — industry standard is not the same as secure, and MBL portfolio isolation requirements are specific to our context

## Audit Log
Architecture reviews retained by system and date. Critical findings, verdicts, and remediation status documented. Deployment approvals recorded.

## Deprecation
Retire formal manual review when a CSPM (Cloud Security Posture Management) tool (Wiz, Prisma Cloud, Defender for Cloud) provides continuous architectural security assessment with automated findings.
