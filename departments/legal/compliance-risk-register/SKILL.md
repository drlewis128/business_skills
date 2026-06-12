---
name: compliance-risk-register
description: "Build and maintain a compliance risk register. Use when the user says 'compliance risk', 'compliance risk register', 'regulatory risk', 'compliance risks we face', 'what are our compliance risks', 'compliance exposure', 'risk register for compliance', or 'map our regulatory risk'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--domain <all|healthcare|privacy|employment|financial>] [--mode <build|update|report>]"
---

# Compliance Risk Register

Build and maintain a compliance risk register. Compliance failures are not random — they concentrate around specific areas (PHI handling, employment practices, vendor management) that can be identified and actively managed. This skill builds the compliance risk inventory for MBL portfolio companies, quantifies exposure, and maps controls that reduce it.

## When to Use
- Building the initial compliance risk register for an entity
- Annual compliance risk assessment update
- After a regulatory change that creates new exposure
- Before a board or investor presentation on compliance posture
- M&A due diligence — what's the target's compliance risk?

## Output Format

```markdown
# Compliance Risk Register — <Entity>
**Date:** <date> | **Assessment period:** <year>
**Prepared by:** Dr. John Lewis
**Reviewed by:** Legal counsel / Compliance officer

---

## Risk Summary

| Risk Domain | Open Risks | Critical | High | Medium | Low |
|-----------|----------|---------|------|--------|-----|
| Healthcare (HIPAA) | <N> | <N> | <N> | <N> | <N> |
| Data Privacy | <N> | <N> | <N> | <N> | <N> |
| Employment Law | <N> | <N> | <N> | <N> | <N> |
| Contract / Commercial | <N> | <N> | <N> | <N> | <N> |
| Corporate Governance | <N> | <N> | <N> | <N> | <N> |
| Financial Reporting | <N> | <N> | <N> | <N> | <N> |
| **Total** | **<N>** | **<N>** | **<N>** | **<N>** | **<N>** |

---

## Critical and High Compliance Risks

### Risk #1 — HIPAA PHI Breach Risk (Allevio)

| Field | Value |
|-------|-------|
| Entity | Allevio |
| Risk domain | Healthcare — HIPAA |
| Risk description | Unauthorized disclosure of PHI through system breach, employee error, or vendor failure |
| Likelihood | Medium (8% annual probability — healthcare sector data) |
| Impact | Critical — HHS OCR fines ($100-$50,000/violation), class action, reputational |
| Financial exposure | $500K-$2M per significant breach |
| Current controls | EDR, M365 DLP (PHI), BAAs with covered vendors, annual HIPAA training |
| Residual risk | Medium — controls reduce but don't eliminate PHI breach risk |
| Control gaps | PHI log retention at 90 days vs. 6-year requirement; DLP not on endpoints |
| Action items | Extend log retention; enable endpoint DLP | Owner: IT | Due: Q2 |

---

### Risk #2 — Business Email Compromise / Wire Fraud (MBL, HIVE)

| Field | Value |
|-------|-------|
| Entity | MBL Partners, HIVE Partners |
| Risk domain | Financial — Fraud |
| Risk description | Executive email compromise leading to unauthorized wire transfer |
| Likelihood | High (15% annual probability — PE sector) |
| Impact | High — average loss $185K; potential LP/investor notification |
| Current controls | Finance BEC training, dual-approval for wire transfers, EDR, MFA |
| Residual risk | Medium — dual-approval is the key control |
| Action items | Quarterly BEC awareness for Finance; test wire approval process | Due: Ongoing |

---

### Risk #3 — California Data Privacy (CCPA/CPRA)

| Field | Value |
|-------|-------|
| Entity | MBL Partners, Column6 |
| Risk domain | Data Privacy |
| Risk description | Non-compliance with California consumer data rights if California residents are in MBL or Column6 CRM/customer base |
| Likelihood | Medium — depends on CA customer volume |
| Impact | Medium — CA AG fines ($2,500-$7,500/intentional violation) |
| Current controls | Privacy policy published; limited data collection |
| Residual risk | Medium — CA customer exposure not fully assessed |
| Action items | Assess CA customer/contact volume; legal review of CCPA applicability | Due: Q2 |

---

### Risk #4 — Employment Law — Misclassification (All Entities)

| Field | Value |
|-------|-------|
| Entity | All entities |
| Risk domain | Employment Law |
| Risk description | Contractor misclassification as independent contractors vs. employees |
| Likelihood | Low-Medium |
| Impact | High — back taxes, benefits, penalties; class action risk |
| Current controls | HR review of contractor arrangements; legal counsel review of agreements |
| Residual risk | Low — most arrangements properly classified |
| Action items | Annual legal review of all contractor arrangements | Due: Q4 |

---

## Compliance Risk Trend

| Domain | Last Year | This Year | Trend |
|--------|---------|---------|-------|
| HIPAA | Medium | Medium | → Stable — DLP gap partially closed |
| Data Privacy | Low | Medium | ↑ New state laws expanding scope |
| Employment | Low | Low | → Stable |
| Financial Fraud | High | Medium | ↓ Dual-approval controls added |
| Corporate Governance | Low | Low | → Stable |
```

## Output Contract
- HIPAA risks always assessed first for Allevio — highest consequence exposure
- Financial fraud risks always assessed for MBL Partners and HIVE — PE firms are BEC targets
- Trend direction always tracked — risk register without trend analysis is a snapshot, not a management tool
- Control gaps always linked to action items with owners and dates
- HITL required: Dr. Lewis presents to Matt Mathison annually; Legal counsel reviews; Allevio compliance officer reviews HIPAA risks; Board/investors receive summary at appropriate level

## System Dependencies
- **Reads from:** Incident history, compliance assessments, regulatory change tracker, legal counsel input (provided)
- **Writes to:** Compliance risk register (maintained by Dr. Lewis / Legal)
- **HITL Required:** Dr. Lewis maintains; Legal counsel reviews; Matt Mathison reviews annually; Allevio compliance officer for healthcare risks

## Test Cases
1. **Golden path:** Annual compliance risk assessment → 4 critical/high risks identified, all with owners and action items, trend shows financial fraud risk decreasing (dual-approval controls working), data privacy risk increasing (new state laws), report presented to Matt Mathison
2. **Edge case:** New risk discovered mid-year (major vendor breach affecting Allevio data) → immediately added to register as Critical; incident response activated; does not wait for annual review
3. **Adversarial:** Business unit wants to downgrade a risk to avoid having to address it → risk assessment must be based on evidence (likelihood, impact, controls), not preference; if business unit disputes the assessment, legal counsel provides independent view

## Audit Log
Annual compliance risk registers retained by entity and year. Risk status changes documented. Action item completion tracked.

## Deprecation
Retire when entity deploys a GRC platform with automated risk tracking, control testing, and regulatory change integration.
