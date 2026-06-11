---
name: it-compliance-checker
description: "Assess IT compliance status against relevant regulatory frameworks. Use when the user says 'IT compliance', 'SOC 2', 'HIPAA compliance', 'compliance check', 'are we compliant', 'compliance gaps', 'compliance audit', 'IT controls', or 'regulatory compliance IT'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--framework <soc2|hipaa|gdpr|iso27001|all>] [--format <gap|readiness|brief>]"
---

# IT Compliance Checker

Assess IT compliance against relevant regulatory frameworks. Compliance without a gap assessment is theater. This skill evaluates actual control implementation against framework requirements and produces a prioritized remediation plan — not just a checklist of what should exist.

## When to Use
- Pre-audit preparation (SOC 2, HIPAA, ISO 27001)
- Annual compliance review
- New regulation or framework applies to the entity
- Cyber insurance renewal (carriers now require specific controls)
- M&A due diligence — what is the target's compliance posture?

## Frameworks by Entity

| Entity | Applicable Frameworks | Reason |
|--------|---------------------|--------|
| **Allevio** | HIPAA (mandatory), SOC 2 (customer requirement) | Healthcare MSO — PHI processing |
| **HIVE Partners** | SOC 2 (LP reporting), state securities regulations | LP investor data |
| **MBL Partners** | SOC 2 (optional but credibility), general data protection | Holding company operations |
| **Column6/Siprocal** | GDPR (EU digital advertising), CCPA | CTV/digital ad targeting |

## Control Domains (SOC 2 Trust Services Criteria)

| Domain | Control Categories |
|--------|------------------|
| **CC1 — Organization** | COSO principles, management oversight, risk assessment |
| **CC2 — Communication** | Information policies, monitoring activities |
| **CC3-4 — Risk** | Risk identification, assessment, mitigation |
| **CC5 — Monitoring** | Ongoing monitoring, evaluation of controls |
| **CC6 — Logical access** | Access controls, MFA, least privilege, provisioning/deprovisioning |
| **CC7 — System operations** | Configuration management, change management, incident response |
| **CC8 — Change management** | Change control, testing, deployment |
| **CC9 — Risk mitigation** | Vendor management, insurance |

## Output Format

```markdown
# IT Compliance Assessment — <Entity>
**Framework:** SOC 2 / HIPAA / GDPR / ISO 27001
**Date:** <date> | **Assessment type:** Readiness / Gap Analysis
**Target audit date:** <date or "None scheduled">

---

## Compliance Summary

| Domain | Controls Assessed | Implemented | Partial | Not Implemented | Readiness |
|--------|-----------------|------------|---------|----------------|---------|
| Logical Access (CC6) | 12 | 8 | 3 | 1 | 79% |
| Change Management (CC8) | 6 | 3 | 2 | 1 | 67% |
| System Operations (CC7) | 10 | 5 | 4 | 1 | 65% |
| Risk Assessment | 8 | 4 | 3 | 1 | 69% |
| **Overall** | **36** | **20** | **12** | **4** | **72%** |

**SOC 2 Readiness Level:** Not Ready (< 80%) / Conditionally Ready (80-90%) / Ready (> 90%)

---

## Gap Analysis — Critical Gaps (Must Fix Before Audit)

| Control | Framework | Current State | Gap | Remediation | Effort | Owner | Due |
|---------|---------|-------------|-----|------------|--------|-------|-----|
| MFA not enforced on all systems | SOC 2 CC6.3 | MFA on M365 only; not on CRM, QB | High | Enforce MFA on GoHighLevel, QB | Low | IT Manager | <date> |
| No formal change management process | SOC 2 CC8 | Changes made ad-hoc | High | Deploy change request workflow | Medium | IT Manager | <date> |
| PHI access not restricted to clinical staff | HIPAA §164.312 | All Allevio staff have access | Critical | Implement role-based access | Medium | IT + Allevio | <date> |
| No business associate agreements with SaaS vendors | HIPAA §164.308 | No BAAs on file for Krista.ai or Monday.com | High | Execute BAAs with all vendors processing PHI | Low | Legal + IT | <date> |

---

## Controls in Place (Evidence Available)

| Control | Framework | Evidence Location |
|---------|---------|----------------|
| Endpoint encryption (FileVault/BitLocker) | SOC 2 CC6.6 | MDM configuration screenshots |
| Backup verification | SOC 2 CC7.2 | Monthly backup reports |
| Access provisioning/deprovisioning | SOC 2 CC6.2 | IT ticketing system (partial) |
| Security awareness training | SOC 2 CC2.2 | Training completion records |

---

## Remediation Roadmap

**Phase 1 — Critical (0-30 days):** PHI access restriction, BAA execution
**Phase 2 — High (30-60 days):** MFA enforcement on all systems, change management process
**Phase 3 — Medium (60-90 days):** Policy documentation, evidence collection automation
**Phase 4 — Continuous:** Quarterly reviews, ongoing monitoring, annual audit preparation

---

## Evidence Gaps (Items Needed for Audit)

| Evidence Type | Status | Collection Method |
|-------------|--------|----------------|
| User access log (last 12 months) | Not collected | Enable and export from M365 |
| Penetration test results | Never performed | Engage vendor — $5-15K |
| Vendor SOC 2 reports | Partial | Request from Microsoft, Krista.ai |
```

## Output Contract
- Critical gaps always separated from full gap list — auditors care about the 20% that blocks certification
- HIPAA findings for Allevio always treated as Critical regardless of SOC 2 priority — regulatory compliance is non-negotiable
- Remediation roadmap always phased with a timeline — "fix everything" is not a plan
- HITL required: Dr. Lewis and Legal review any HIPAA gap findings; IT Manager owns SOC 2 remediation plan; Matt Mathison informed of any entity with < 70% compliance readiness

## System Dependencies
- **Reads from:** IT policy documents, system configurations, access control logs, vendor contracts (provided)
- **Writes to:** Nothing (compliance assessment for HITL review and remediation planning)
- **HITL Required:** Dr. Lewis reviews all HIPAA and GDPR gaps; IT Manager owns remediation actions; Legal reviews BAA requirements; Matt Mathison informed of critical compliance gaps in any portfolio company

## Test Cases
1. **Golden path:** Allevio SOC 2 + HIPAA readiness assessment → 72% overall readiness, 4 critical gaps (PHI access, BAAs, MFA, change management), phased remediation plan, target audit readiness in 90 days
2. **Edge case:** Entity has no documentation of any controls → starts with "document what exists" as Phase 1, cannot assess what isn't documented, builds control inventory from scratch alongside gap analysis
3. **Adversarial:** Entity wants to claim SOC 2 compliance without a formal audit ("we've read the requirements") → explicitly distinguishes self-assessment (useful for readiness planning) from certified compliance (requires independent auditor), recommends proceeding with formal audit if customers require it

## Audit Log
Compliance assessments retained by entity, framework, and date. Remediation progress tracked. Audit outcomes documented.

## Deprecation
Retire when entity deploys a GRC platform (Vanta, Drata, Tugboat Logic, ServiceNow GRC) with continuous compliance monitoring, automated evidence collection, and auditor collaboration tools.
