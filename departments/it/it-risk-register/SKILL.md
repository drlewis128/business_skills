---
name: it-risk-register
description: "Maintain the IT risk register for an entity. Use when the user says 'IT risks', 'technology risk', 'IT risk register', 'tech risk assessment', 'what are our IT risks', 'cybersecurity risk', 'infrastructure risk', or 'IT risk review'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--format <register|report|brief>] [--focus <security|infrastructure|compliance|all>]"
---

# IT Risk Register

Maintain and review the IT risk register. Risk registers are not a compliance checkbox — they are a prioritization tool. Every hour of IT time spent on low-risk maintenance is an hour not spent on the risks that can actually hurt the business. The register keeps the team focused on what matters.

## When to Use
- Quarterly IT risk review
- Annual risk assessment for cyber insurance renewal
- Pre-audit (SOC 2, ISO 27001, HIPAA) risk documentation
- After a security incident (add new risks surfaced)
- Portfolio company assessment — what is their IT risk profile?

## Risk Categories

| Category | Examples |
|---------|---------|
| **Security** | Ransomware, phishing, unauthorized access, data breach |
| **Availability** | System outage, internet failure, power outage, DR failure |
| **Data integrity** | Backup failure, data corruption, unauthorized modification |
| **Compliance** | HIPAA violation, SOC 2 gap, GDPR non-compliance |
| **Vendor / Supply chain** | Critical vendor failure, SLA breach, software supply chain attack |
| **Insider threat** | Disgruntled employee, accidental data exposure |
| **Technology obsolescence** | End-of-life hardware/software, unsupported systems |

## Risk Scoring

```
Inherent Risk = Likelihood × Impact

Likelihood: 1 (Rare) | 2 (Unlikely) | 3 (Possible) | 4 (Likely) | 5 (Almost Certain)
Impact: 1 (Negligible) | 2 (Minor) | 3 (Moderate) | 4 (Major) | 5 (Catastrophic)

Residual Risk = Inherent Risk - Control Effectiveness

Control Effectiveness: 1 (None) | 2 (Partial) | 3 (Adequate) | 4 (Strong) | 5 (Excellent)
```

## Output Format

```markdown
# IT Risk Register — <Entity>
**Last updated:** <date> | **Next review:** <date + 90 days>
**Risk owner:** IT Manager | **Exec sponsor:** Dr. John Lewis

---

## Risk Register

| ID | Risk | Category | Likelihood | Impact | Inherent Score | Controls in Place | Control Effectiveness | Residual Score | Status |
|----|----|---------|-----------|--------|---------------|-----------------|---------------------|---------------|--------|
| R-001 | Ransomware attack encrypts business data | Security | 4 | 5 | 20 | EDR, email filtering, backups, staff training | 3 | 7 | 🔴 Open — High |
| R-002 | Critical vendor (e.g., M365) outage | Availability | 2 | 4 | 8 | Offline access, M365 SLA 99.9% | 4 | 2 | 🟢 Accepted |
| R-003 | End-of-life Windows 7 machines in use | Obsolescence | 3 | 3 | 9 | Isolation (no domain join) | 2 | 7 | 🟡 Remediation in progress |
| R-004 | Employee with excessive admin rights | Insider / Access | 3 | 4 | 12 | Annual access review (inconsistent) | 2 | 10 | 🔴 Open — High |
| R-005 | HIPAA violation — Allevio patient data | Compliance | 2 | 5 | 10 | HIPAA training, encryption | 3 | 4 | 🟡 Monitor |

---

## Top 5 IT Risks (Residual Score)

| Rank | Risk | Residual Score | Mitigation Action | Owner | Target Date |
|------|------|---------------|-----------------|-------|------------|
| 1 | Employee admin access over-provisioned | 10 | Quarterly access review; enforce least privilege | IT Manager | <date> |
| 2 | Ransomware — controls partial | 7 | Add MFA everywhere; test DR plan; improve backup | IT Manager | <date> |
| 3 | EOL Windows machines | 7 | Replacement procurement approved | IT Manager | <date> |
| 4 | HIPAA compliance gaps (Allevio) | 4 | HIPAA audit scheduled | IT + Compliance | <date> |
| 5 | Vendor outage — M365 | 2 | Accepted — SLA 99.9%, mitigation in plan | — | Accepted |

---

## New Risks This Quarter

| Risk | Source | Initial Score | Action |
|------|--------|-------------|--------|
| [New risk] | [Incident / audit finding / industry alert] | <score> | Add to register; assign owner |

---

## Risk Trends

| Quarter | High Risks | Medium Risks | Risk Score Change |
|---------|-----------|------------|-----------------|
| Q1 | 4 | 6 | Baseline |
| Q2 | 3 | 5 | Improving |
| Q3 (current) | 2 | 6 | One closed, one new |
```

## Output Contract
- Residual score always calculated after control effectiveness — inherent risk alone overstates the reality
- Top 5 risks always have a named owner and target date for mitigation
- New risks always added within 5 business days of discovery (incident, audit finding, vendor alert)
- HITL required: IT Manager reviews quarterly; Dr. Lewis reviews annually and for any risk with residual score ≥ 15; Matt Mathison briefed on any critical IT risk affecting multiple portfolio entities

## System Dependencies
- **Reads from:** Incident history, audit findings, system inventory, prior risk register (provided)
- **Writes to:** Nothing (risk register for HITL review and IT planning)
- **HITL Required:** IT Manager maintains and reviews quarterly; Dr. Lewis reviews risks with residual score ≥ 15; Matt Mathison informed of critical portfolio-level IT risks

## Test Cases
1. **Golden path:** Quarterly review → 5 existing risks reviewed, 1 closed (EOL machines replaced), 1 new risk added (new SaaS vendor with no SOC 2), top 5 sorted by residual score with owners and dates
2. **Edge case:** Security incident occurs (phishing attack, employee credential compromised) → immediately adds new risk to register, assesses what existing controls failed, updates control effectiveness for affected risks, triggers IT Manager + Dr. Lewis review within 24 hours
3. **Adversarial:** IT Manager argues the risk register is just paperwork and hasn't been updated in 6 months → presents cyber insurance requirement for annual review, notes that the register is the primary input for IT budget prioritization, offers to run the update in under 2 hours

## Audit Log
Risk registers retained by entity and quarter. Changes tracked (risks added, closed, re-scored). Mitigation actions and outcomes documented.

## Deprecation
Retire when entity deploys a GRC (Governance, Risk, and Compliance) platform with IT risk module, automated risk scoring, and control monitoring.
