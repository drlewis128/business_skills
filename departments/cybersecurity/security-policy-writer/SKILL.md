---
name: security-policy-writer
description: "Write or update a security policy document. Use when the user says 'security policy', 'write a policy', 'acceptable use policy', 'password policy', 'information security policy', 'we need a policy for', 'security policies', 'data handling policy', or 'BYOD policy'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "<policy-type> [--entity <name>] [--framework <NIST|ISO27001|SOC2|HIPAA>]"
---

# Security Policy Writer

Write or update a security policy document. Security policies without enforcement are theater. But good policies reduce confusion, enable compliance, give employees clear expectations, and provide legal cover when something goes wrong. This skill produces concise, enforceable policies that employees will actually follow.

## When to Use
- Building the initial security policy library from scratch
- Compliance requirement (SOC 2, HIPAA, cyber insurance all require written policies)
- After an incident that revealed a policy gap
- After a new tool, technology, or process is introduced
- Annual policy review (most frameworks require annual review)

## Core Security Policy Library

| Policy | Description | Priority |
|--------|-----------|---------|
| **Information Security Policy** | Master policy — governs all others | Critical |
| **Acceptable Use Policy (AUP)** | What employees can and can't do with company systems | Critical |
| **Password Policy** | Password requirements and MFA requirements | Critical |
| **Data Classification Policy** | How to classify and handle data by sensitivity | Critical |
| **Incident Response Policy** | What to do when something goes wrong | Critical |
| **Access Control Policy** | Who gets access to what, and how | High |
| **Remote Work / BYOD Policy** | Security requirements for working remotely | High |
| **Vendor / Third-Party Policy** | Security requirements for vendors | High |
| **Data Retention and Deletion Policy** | How long to keep data and how to delete it | High |
| **Business Continuity Policy** | High-level BCP commitments | Medium |

## Policy Structure Standard

Every MBL security policy follows this structure:

```
1. Purpose
2. Scope
3. Definitions
4. Policy Statements (the actual rules)
5. Roles and Responsibilities
6. Enforcement
7. Exceptions Process
8. Review Schedule
9. Document History
```

## Output Format

```markdown
# <Policy Name>
**Entity:** <MBL entity / All MBL entities>
**Policy ID:** SEC-<NNN>
**Version:** 1.0
**Effective date:** <date>
**Owner:** Dr. John Lewis, Director of AI Strategy / IT Manager
**Review schedule:** Annual
**Approved by:** Matt Mathison, Managing Partner

---

## 1. Purpose

<2-3 sentences: Why does this policy exist? What risk or requirement does it address?>

## 2. Scope

This policy applies to **all employees, contractors, and third-party vendors** with access to <entity>'s information systems and data. This includes systems accessed from any location (office, home, or remote) and any device (company-issued or personal/BYOD).

**Exceptions:** <list any specific exclusions if applicable>

## 3. Definitions

| Term | Definition |
|------|-----------|
| **Confidential data** | Data restricted to named individuals — legal, financial, PHI |
| **Internal data** | Business data for internal use only — not for public release |
| **Public data** | Data approved for public release |
| **BYOD** | Bring Your Own Device — personal device used for work purposes |

## 4. Policy Statements

### 4.1 [Category]
- **[Rule]:** <Clear, specific, measurable rule>
- **[Rule]:** <Rule>

### 4.2 [Category]
- **[Rule]:** <Rule>

---

*Password Policy example statements:*

### 4.1 Password Requirements
- Passwords must be a minimum of 14 characters
- Passwords must include at least one uppercase letter, lowercase letter, number, and special character
- Passwords must not contain the user's name, username, or dictionary words
- Passwords must not be reused within the previous 12 passwords

### 4.2 Multi-Factor Authentication
- MFA is required for all accounts with access to company systems — no exceptions
- MFA is required for all email accounts (Microsoft 365)
- MFA is required for all VPN and remote access connections
- SMS-based MFA is discouraged — authenticator app (Microsoft Authenticator, Duo) or hardware key required for privileged accounts

### 4.3 Password Storage
- Passwords must not be written down, stored in plaintext documents, or shared via email
- A company-approved password manager must be used (1Password, Bitwarden, or Microsoft Authenticator)
- Sharing passwords between employees is prohibited — individual accounts required

---

## 5. Roles and Responsibilities

| Role | Responsibility |
|------|--------------|
| **All employees** | Read, understand, and comply with this policy annually |
| **IT Manager** | Enforce technical controls, manage exceptions, respond to violations |
| **Dr. John Lewis** | Own and approve this policy; issue exceptions; escalate violations |
| **Matt Mathison** | Approve policy; receive reports of significant violations |
| **HR** | Include policy acknowledgment in onboarding and annual review |

## 6. Enforcement

Violations of this policy will result in disciplinary action up to and including termination of employment or contract. Violations that expose company or customer data to unauthorized access may result in legal action.

Security violations are reported to IT Manager and Dr. Lewis. Significant violations are escalated to HR and Matt Mathison.

## 7. Exception Process

Policy exceptions must be requested in writing to the IT Manager. Exceptions require:
- Business justification
- Risk assessment
- Compensating controls
- Dr. Lewis approval
- Time-limited scope (no permanent exceptions without annual review)

## 8. Review Schedule

This policy is reviewed annually or following:
- A security incident that revealed a policy gap
- A significant technology or process change
- New regulatory or compliance requirements
- A pen test finding that requires policy update

## 9. Document History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | <date> | Dr. John Lewis | Initial version |
```

## Output Contract
- Policy statements are specific and enforceable — no vague aspirational language
- MFA is always included as mandatory in any policy touching access control
- Exception process always defined — policies without exceptions create dangerous workarounds
- Review schedule always specified — policies without review dates become stale and unenforceable
- HITL required: Dr. Lewis reviews and approves all policies; Matt Mathison signs as approver; HR includes in onboarding; Legal reviews for any policy touching data retention, HIPAA, or employee relations

## System Dependencies
- **Reads from:** Nothing (policy is created from provided requirements and framework guidance)
- **Writes to:** Policy document (Dr. Lewis review before distribution)
- **HITL Required:** Dr. Lewis owns all security policies; Matt Mathison is approving authority; Legal reviews data retention and HIPAA-relevant policies; HR coordinates employee acknowledgment

## Test Cases
1. **Golden path:** Request for password policy → full policy with 14-char minimum, MFA mandatory, no SMS for privileged accounts, password manager required, exception process defined, annual review scheduled, Matt Mathison as approver
2. **Edge case:** Request for BYOD policy at Allevio where PHI is involved → BYOD policy includes MDM enrollment required before accessing PHI, remote wipe capability, app-level encryption required, HIPAA BAA consideration for MDM vendor
3. **Adversarial:** Employee pushes back on MFA requirement claiming it's "too inconvenient" → policy stands — MFA is a mandatory cyber insurance requirement and HIPAA technical safeguard; exception process available but requires Dr. Lewis approval and compensating controls

## Audit Log
All security policies version-controlled with approval records and effective dates. Annual review documented. Employee acknowledgment records retained by HR.

## Deprecation
Keep — security policies require ongoing maintenance. Upgrade by integrating with a GRC (Governance, Risk, and Compliance) platform for policy distribution, acknowledgment tracking, and version control.
