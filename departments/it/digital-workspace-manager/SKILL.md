---
name: digital-workspace-manager
description: "Manage and optimize the digital workplace environment. Use when the user says 'digital workspace', 'Microsoft 365 management', 'Teams setup', 'SharePoint management', 'collaboration environment', 'digital workplace', 'productivity environment', or 'Microsoft tenant management'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--platform <m365|teams|sharepoint|all>] [--action <audit|optimize|setup|report>]"
---

# Digital Workspace Manager

Manage and optimize the digital workplace environment — Microsoft 365, Teams, SharePoint, and connected tools. The digital workspace is how work actually happens. A poorly configured workspace means wasted time, version conflicts, security gaps, and siloed information. A well-managed one enables the fast, collaborative execution that MBL runs on.

## When to Use
- Auditing a new or existing Microsoft 365 tenant
- Onboarding a portfolio company to the MBL digital environment
- Setting up a new Teams or SharePoint structure
- Quarterly review of digital workspace health and usage
- Preparing for Krista.ai integration (requires clean M365 configuration)

## Digital Workspace Components (MBL Stack)

| Component | Purpose | Key Configuration Points |
|---------|---------|------------------------|
| **Microsoft 365** | Identity, licensing, admin | License types, user groups, tenant settings |
| **Outlook / Exchange** | Email, calendar | Distribution lists, shared mailboxes, retention labels |
| **Microsoft Teams** | Meetings, chat, collaboration | Team structure, channel organization, guest access |
| **SharePoint** | Document management, intranet | Site structure, permissions, document libraries |
| **OneDrive** | Personal file storage | Sync policies, sharing settings, retention |
| **Microsoft Entra ID (Azure AD)** | Identity and access | MFA policy, Conditional Access, group management |
| **Krista.ai** | AI orchestration | Requires M365 admin consent, calendar/email access |

## Output Format

```markdown
# Digital Workspace Audit — <Entity>
**Date:** <date> | **Tenant:** <tenant name>.onmicrosoft.com
**Microsoft 365 plan:** Business Premium / E3 / E5 | **Seats:** <N>

---

## Tenant Health

| Check | Status | Finding |
|-------|--------|---------|
| MFA enforced for all users | ✅ / ❌ | X users without MFA |
| Admin accounts have separate admin accounts | ✅ / ❌ | |
| Conditional Access configured | ✅ / ❌ | |
| Legacy auth blocked | ✅ / ❌ | Legacy auth is a common phishing vector |
| Guest access policy set | ✅ / ❌ | |
| Email retention labels active | ✅ / ❌ | |
| Audit log enabled | ✅ / ❌ | Required for SOC 2 |
| DLP policies configured | ✅ / ❌ | |

---

## License Review

| License | Assigned | Active (last 30 days) | Inactive (> 30 days) | Action |
|---------|---------|---------------------|---------------------|--------|
| M365 Business Premium | <N> | <N> | <N> | Remove inactive — $<N>/month savings |
| Teams | Bundled | — | — | |

---

## Teams Structure Review

| Team | Members | Purpose | Active? | Guest Access | Action |
|------|---------|---------|---------|------------|--------|
| MBL Partners — All Staff | <N> | Company-wide communication | Yes | No | ✅ OK |
| MBL Partners — Leadership | <N> | Exec discussions | Yes | No | ✅ OK |
| [Project Team] | <N> | [Project] | No activity 90 days | Yes | 🟡 Archive |
| Sales — 2024 (old) | <N> | Old team | No | No | 🔴 Archive/delete |

---

## SharePoint Structure

| Site | Purpose | Owner | Last Activity | Permission Issue? |
|------|---------|-------|------------|-----------------|
| MBL Intranet | HR policies, company docs | IT | Active | ✅ |
| Finance — MBL | Financial docs | CFO | Active | 🟡 3 users with too-broad access |
| [M&A deal room] | Confidential deal docs | Dr. Lewis | Active | 🔴 External user access — review |

---

## Optimization Recommendations

| Priority | Finding | Action | Owner | Savings / Benefit |
|---------|---------|--------|-------|-----------------|
| High | 4 users without MFA | Enforce MFA — no exceptions | IT Manager | Security |
| High | Legacy auth not blocked | Block basic auth in Entra ID | IT Engineer | Security |
| Medium | 3 inactive Teams | Archive stale teams (reduces clutter) | IT | UX / hygiene |
| Medium | Finance SharePoint — over-permissioned | Restrict to Finance team only | IT + Finance | Data security |
| Low | 2 inactive M365 licenses | Remove licenses | IT + Finance | $<N>/month |

---

## Krista.ai Integration Status

- [ ] Admin consent granted for Krista.ai M365 application
- [ ] Calendar access enabled for meeting intelligence
- [ ] Email access configured (read-only, as required)
- [ ] Teams integration active (if applicable)
- [ ] Data flow documented and approved by Dr. Lewis
```

## Output Contract
- MFA enforcement gaps always flagged as High priority — no exceptions
- License waste always quantified in dollars — hygiene has a cost justification
- SharePoint permissions always reviewed — broad access to financial or deal data is a security risk
- HITL required: IT Manager implements security findings; Dr. Lewis reviews Krista.ai integration access grants; Finance approves license reductions

## System Dependencies
- **Reads from:** Microsoft 365 admin center, Azure AD, SharePoint admin, Teams admin (IT Manager access required)
- **Writes to:** Nothing (audit for HITL review; changes executed by IT after approval)
- **HITL Required:** IT Manager implements security configuration changes; Dr. Lewis approves any Krista.ai access grants; Finance approves license changes

## Test Cases
1. **Golden path:** M365 tenant audit → 4 users missing MFA (High), legacy auth still enabled (High), 3 stale Teams to archive, Finance SharePoint over-permissioned, 2 inactive licenses ($360/year), Krista.ai integration status confirmed active
2. **Edge case:** Tenant is poorly organized (50+ Teams, no naming convention, unclear ownership) → prioritizes security findings first, proposes a Teams governance policy (naming convention, ownership requirement, quarterly review), doesn't try to clean up all 50 Teams at once
3. **Adversarial:** Employee created a Teams channel with a sensitive name visible to all staff → IT renames or restricts visibility, establishes Teams naming and creation policy going forward, adds Teams creation control (require IT approval for new teams in sensitive areas)

## Audit Log
Digital workspace audits retained by entity and date. Configuration changes documented with approver.

## Deprecation
Retire when entity deploys Microsoft Purview or a dedicated M365 management tool with continuous compliance monitoring, license optimization, and automated governance.
