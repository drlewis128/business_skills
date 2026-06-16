---
name: it-technology-standards
description: "Define and maintain technology standards and architecture decisions. Use when the user says 'technology standards', 'IT standards', 'architecture decisions', 'ADR', 'technology choices', 'tech stack', 'IT architecture', 'approved technology', 'standard tools', 'technology policy', 'which technology should we use', 'technology governance', 'approved platforms', or 'technology reference architecture'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|portfolio-wide|specific-company>] [--domain <identity|cloud|endpoint|integration|AI>] [--action <define|update|review>]"
---

# IT Technology Standards

Define and maintain technology standards at MBL portfolio companies — establishing which platforms, tools, and patterns are approved for use and documenting the architecture decisions that led to those choices. Technology standards prevent the drift that accumulates when every system purchase is made independently: one company uses Google Workspace, another M365; one uses Slack, another Teams; one uses Dropbox, another OneDrive. Inconsistent technology stacks multiply management overhead and eliminate economies of scale.

## When to Use
- Establishing technology standards for a new portfolio company acquisition
- A technology decision needs documentation — which platform and why?
- An employee or team proposes a new technology that conflicts with existing standards
- Annual technology standards review — are the current standards still the right choices?
- Preparing a technology reference architecture for MBL portfolio

## Technology Standards Framework

```
MBL Portfolio Technology Standards (current — Dr. Lewis maintains):

Identity and communication:
  Standard: Microsoft 365 (Business Premium for laptop users; Business Basic for email-only)
  Rationale: Entra ID as IdP; Intune MDM included; Defender security included; Teams and SharePoint
  Exception process: Deviation requires Dr. Lewis approval + documented rationale
  Not approved: Google Workspace (Conflicts with Entra ID-based SSO and Intune MDM)

Endpoint management:
  Standard: Microsoft Intune (MDM) — included in M365 Business Premium
  Standard: Windows 11 or macOS Ventura+ — no unsupported OS versions
  Standard: Microsoft Defender for Endpoint — included in M365 Business Premium
  Not approved: Unmanaged (no MDM) devices accessing company systems

Identity provider:
  Standard: Microsoft Entra ID (Azure AD) — SSO for all connected applications
  MFA: Microsoft Authenticator (app-based); hardware token for exceptions
  Not approved: Local-only accounts without Entra ID integration; SMS-only MFA

Cloud infrastructure:
  Standard: Microsoft Azure (preferred for M365-connected workloads)
  Alternative approved: AWS (if specific service requires it; or AWS already in place)
  Standard: Azure Monitor for monitoring; Azure Key Vault for secrets management
  Not approved: Personal AWS/Azure accounts for company workloads; unmonitored cloud resources

Project management:
  Standard: Monday.com — all portfolio companies
  Rationale: Dr. Lewis integrates Monday.com with Krista.ai; consistent across portfolio
  Not approved: Asana, Trello, Notion as primary PM tools (creates integration complexity)

Financial systems:
  Standard: QuickBooks Online — all portfolio companies
  Standard: Bill.com — AP automation
  Not approved: Xero, FreshBooks, NetSuite (unless portfolio company scale requires ERP)

AI orchestration:
  Standard: Krista.ai — MBL AI coordination platform
  Standard: Microsoft Copilot — employee-facing AI (included in M365)
  Standard: Claude API (Anthropic) — Dr. Lewis AI development
  Not approved: Consumer-tier AI tools for company data; AI tools without enterprise data isolation

Password management:
  Standard: 1Password (Teams) or Bitwarden (Teams/Business) — company-owned
  Not approved: LastPass (repeated security incidents), personal password managers for company credentials

Architecture decision record (ADR) format:
  When to write an ADR: Any technology choice that affects >1 person or >1 system
  ADR contains: Title, date, context (why this decision needed to be made),
    decision (what was chosen), rationale, consequences (trade-offs), status
  Where stored: SharePoint/Ops/MBL/IT/Architecture/ADRs/
  Who writes: Dr. Lewis
  Review: Annually, or when a proposed change conflicts with the recorded decision
```

## Output Format

```markdown
# Technology Standards — MBL Portfolio
**Version:** [X] | **Maintained by:** Dr. John Lewis | **Last updated:** [Date]
**Next review:** [Date + 12 months]

---

## Standard Technology Stack

| Domain | Standard | Rationale | Exceptions allowed? | Exception process |
|--------|---------|----------|-------------------|-----------------|
| Identity (IdP) | Microsoft Entra ID | SSO for all apps; MFA enforcement; Intune integration | No | — |
| Email and communication | Microsoft 365 | M365 includes Teams, SharePoint, OneDrive, Defender | Only with Dr. Lewis approval | Written ADR required |
| Endpoint MDM | Microsoft Intune | Included in M365 Business Premium | No | — |
| Cloud infrastructure | Azure (preferred) / AWS | Azure for M365 workloads; AWS for specific services | AWS allowed; other clouds require ADR | ADR + Dr. Lewis |
| Project management | Monday.com | Portfolio integration; Krista.ai connection | No | — |
| Financial SOR | QuickBooks Online | Portfolio standard; Bill.com integration | NetSuite at enterprise scale | CEO + Dr. Lewis |
| Password manager | 1Password or Bitwarden Teams | Company-managed; enterprise controls | No consumer tools | — |
| AI orchestration | Krista.ai | MBL platform decision | — | Dr. Lewis |
| AI (employee-facing) | Microsoft Copilot | M365-native; data stays in tenant | Approved alternatives via it-ai-tool-evaluator | Dr. Lewis |

---

## Architecture Decision Records (Index)

| ADR | Date | Decision | Status |
|-----|------|---------|--------|
| ADR-001 | [Date] | M365 as standard productivity platform over Google Workspace | Active |
| ADR-002 | [Date] | Monday.com as portfolio-wide PM tool | Active |
| ADR-003 | [Date] | Krista.ai as AI orchestration layer | Active |
| ADR-004 | [Date] | Azure-first cloud strategy with AWS as approved alternative | Active |
| ADR-005 | [Date] | 1Password/Bitwarden as approved password managers | Active |

---

## ADR Example: ADR-001 — M365 as Standard Productivity Platform

**Date:** [Date]
**Status:** Active

**Context:**
MBL portfolio companies needed a consistent identity and productivity platform. Options evaluated: Microsoft 365 and Google Workspace. Two portfolio companies were on Google Workspace at time of decision.

**Decision:**
Microsoft 365 (Business Premium tier) is the standard productivity platform for all MBL portfolio companies. New acquisitions are migrated to M365 within 90 days of onboarding.

**Rationale:**
- Entra ID (Azure AD) provides the identity foundation for SSO and Conditional Access across all applications — Google Workspace requires a separate IdP or third-party tool to achieve the same
- Microsoft Intune (MDM) is included in M365 Business Premium — provides endpoint management at no incremental cost
- Microsoft Defender for Endpoint is included — provides EDR and endpoint security baseline
- Teams and SharePoint are the MBL collaboration standard — Krista.ai integrates with Teams natively
- Google Workspace would require additional tooling to achieve equivalent security posture

**Consequences:**
- Companies being onboarded must migrate from Google Workspace (2-4 week migration project for typical 20-person company)
- Cost delta: M365 Business Premium ($22/user) vs. Google Workspace Business Plus ($18/user) = $4/user/month incremental; offset by security tools included in M365

**Review:** This decision is reviewed annually. If Microsoft changes pricing significantly or Google Workspace adds native Entra ID integration, re-evaluate.

---

## Standard Exceptions Register

| Exception | Entity | Approved by | Rationale | Review date |
|-----------|--------|-----------|---------|------------|
| [AdvancedMD — not M365 SSO connected] | Allevio | Dr. Lewis | AdvancedMD does not support Entra ID SSO (vendor limitation) | [Date] |

---

## Matt Mathison Brief (when standards change or major architecture decision)

MBL Portfolio technology standards: [Version X]. Change: [What changed and why]. Portfolio impact: [What companies are affected]. Cost delta: [+/-$X/month if applicable].
```

## Output Contract
- Standards apply to all portfolio companies — the benefit of technology standards is consistency; a standard that is "recommended" is not a standard; exceptions are documented and reviewed annually; the exception process requires written rationale, not just verbal approval; undocumented exceptions become invisible debt that complicates future portfolio management
- ADRs are written when decisions are made, not after — an architecture decision that is not documented will be re-litigated when a new team member proposes a different approach; the ADR provides the answer: "We made this decision on [date] for these reasons; here is the context; if you think the decision should change, here is what needs to be different"; ADRs prevent institutional amnesia
- Standards reviews are annual — technology changes; a standard that was correct in 2023 may not be correct in 2026; the annual review considers: have there been significant vendor pricing or capability changes? Have portfolio company needs changed? Have new better options emerged? The outcome is: reaffirm the standard, update it, or deprecate it — with a new ADR
- HITL required: Dr. Lewis maintains all technology standards; standard exceptions require Dr. Lewis approval; ADRs written by Dr. Lewis; major platform changes (migrating away from M365, changing PM tool) require CEO and Matt Mathison; annual review by Dr. Lewis; portfolio-wide standards changes communicated to all portfolio company leadership

## System Dependencies
- **Reads from:** Vendor pricing and capability updates, security landscape changes, portfolio company feedback, ADR history, it-ai-governance (for AI standards)
- **Writes to:** Technology standards document (SharePoint/Ops/MBL/IT/Architecture/Standards/); ADR repository (SharePoint/Ops/MBL/IT/Architecture/ADRs/); exception register
- **HITL Required:** Dr. Lewis maintains standards; exceptions require Dr. Lewis approval; major platform changes require CEO + Matt Mathison; annual review by Dr. Lewis; portfolio-wide changes communicated to leadership

## Test Cases
1. **Golden path:** Annual technology standards review → Review checklist: M365 (pricing +8% this year; still best option; Business Premium vs. E1/E3 comparison confirms Business Premium for laptop users) ✅; Monday.com (no material change; Krista integration improving) ✅; Krista.ai (Phase 1 deployed; Phase 2 planned — standards affirmed) ✅; Password managers: 1Password price increase — evaluate Bitwarden as alternative (similar capability, lower cost) — update standard to "1Password or Bitwarden Teams" from "1Password preferred"; ADR-005 updated ✅; New exception reviewed: Allevio AdvancedMD non-SSO — vendor still does not support Entra ID SSO — exception reaffirmed; review complete; standards v2 published; Matt Mathison brief sent
2. **Edge case:** A newly acquired portfolio company uses Asana for PM and the team strongly prefers it → ADR explains the Monday.com decision: Krista.ai integration, portfolio-wide consistency, action item push; acknowledge the preference and the switching friction; standard holds: Monday.com is the standard; provide the migration plan (Asana → Monday.com); Dr. Lewis helps set up Monday.com to replicate key Asana workflows; timeline: 4-6 weeks for full migration; the standard exists for a reason and the reason is documented — "we prefer Asana" is not sufficient to override it
3. **Adversarial:** "Standards stifle innovation — teams should be able to use the tools they think are best" → Technology standards apply to shared infrastructure and identity management — the tools that affect security, integration, and cross-company operations; they do not dictate which design tool a designer uses or which note-taking app an individual prefers; the line is: does this tool touch company data? connect to identity systems? require IT management? If yes, it follows the standard; if no, it's a personal preference and teams have latitude; the standard exists to prevent "the company has 7 different chat apps and identity systems" — not to control individual productivity

## Audit Log
Technology standards versions retained permanently. ADR repository retained permanently. Exception register retained with review dates. Annual review records retained. Platform migration decisions retained. Matt Mathison standards communications retained.

## Deprecation
Retire when MBL Partners has a formal enterprise architecture function that maintains technology standards across the portfolio — with Dr. Lewis contributing AI/automation architectural decisions. ADR methodology and annual review process are permanent regardless of who maintains the standards.
