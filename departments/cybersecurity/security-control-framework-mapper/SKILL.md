---
name: security-control-framework-mapper
description: "Map security controls to compliance frameworks. Use when the user says 'security framework', 'NIST CSF', 'CIS controls', 'SOC 2 controls', 'HIPAA security rule', 'framework mapping', 'which controls do we need', 'compliance controls', 'control mapping', or 'what controls does HIPAA require'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--framework <NIST-CSF|CIS18|SOC2|HIPAA|all>] [--entity <name>] [--mode <map|gap|roadmap>]"
---

# Security Control Framework Mapper

Map security controls to compliance frameworks. Different frameworks — NIST CSF, CIS Controls, SOC 2, HIPAA Security Rule — cover overlapping territory with different language and emphasis. The MBL portfolio needs to satisfy multiple frameworks simultaneously. This skill maps controls across frameworks to identify overlaps, gaps, and the most efficient implementation path.

## When to Use
- Determining which frameworks apply to a specific entity
- Mapping existing controls to framework requirements
- Identifying gaps before a compliance audit
- Building a control roadmap that satisfies multiple frameworks simultaneously
- Explaining framework requirements to non-technical stakeholders

## Framework Applicability

| Framework | MBL Applicability | Entity |
|---------|-----------------|--------|
| **HIPAA Security Rule** | Required — PHI handling | Allevio (healthcare MSO) |
| **SOC 2 Type II** | Increasingly required by enterprise clients | MBL Partners, portfolio companies |
| **NIST Cybersecurity Framework (CSF 2.0)** | Best practice, maps to other frameworks | All entities |
| **CIS Controls v8** | Implementation guidance, prioritized | All entities |
| **NIST SP 800-171** | If handling CUI (federal contracts) | Case-by-case |

## Cross-Framework Control Mapping

| Control Domain | NIST CSF | CIS v8 | SOC 2 CC | HIPAA Security Rule |
|--------------|---------|--------|---------|-------------------|
| Asset inventory | ID.AM-1 | CIS 1 | CC6.1 | §164.310(d)(1) |
| Access control | PR.AC-1 | CIS 5,6 | CC6.1, CC6.2 | §164.312(a)(1) |
| MFA | PR.AC-7 | CIS 6.5 | CC6.1 | §164.312(d) |
| Vulnerability management | ID.RA-1, RS.MI | CIS 7 | CC7.1 | §164.308(a)(8) |
| Security awareness training | PR.AT-1 | CIS 14 | CC2.2 | §164.308(a)(5) |
| Incident response | RS.RP | CIS 17 | CC7.3, CC7.5 | §164.308(a)(6) |
| Audit logging | DE.AE-3 | CIS 8 | CC7.2 | §164.312(b) |
| Encryption in transit | PR.DS-2 | CIS 3.10 | CC6.7 | §164.312(e)(2) |
| Encryption at rest | PR.DS-1 | CIS 3.11 | CC6.7 | §164.312(a)(2)(iv) |
| Backup and recovery | PR.IP-4 | CIS 11 | A1.2 | §164.308(a)(7) |

## Output Format

```markdown
# Security Control Framework Assessment — <Entity>
**Date:** <date> | **Frameworks:** <applicable frameworks>
**Assessor:** Dr. John Lewis

---

## Framework Requirements Summary

| Framework | Applicable? | Why | Audit/Assessment Schedule |
|---------|-----------|-----|--------------------------|
| HIPAA Security Rule | ✅ Yes | Allevio handles PHI | Annual risk assessment required |
| SOC 2 Type II | 🟡 Optional | Enterprise client requirement growing | Consider initiating in 18 months |
| NIST CSF 2.0 | ✅ Yes (best practice) | General security framework | Self-assessment annually |
| CIS Controls v8 | ✅ Yes (best practice) | Implementation guide for above | Quarterly check |

---

## Control Gap Assessment

### Access Control (CIS 5-6 / NIST PR.AC / HIPAA §164.312(a))

| Sub-Control | NIST | CIS | SOC 2 | HIPAA | Status | Evidence |
|-----------|------|-----|-------|-------|--------|---------|
| Unique user accounts only | PR.AC-1 | 5.1 | CC6.2 | §164.312(d) | ✅ | Entra ID |
| MFA for all users | PR.AC-7 | 6.5 | CC6.1 | §164.312(d) | 🟡 | 97% coverage |
| Privileged access review | PR.AC-6 | 6.8 | CC6.3 | §164.312(a)(2) | 🟡 | Annual only |
| Access removal on termination | PR.AC-4 | 5.3 | CC6.2 | §164.308(a)(3) | ✅ | IT offboarding |

**Compliance status:**
- HIPAA: 🟡 85% — MFA gap must be closed (§164.312(d))
- SOC 2 CC6: 🟡 80% — needs access review cadence improvement
- NIST PR.AC: 🟡 85% — same gaps

---

### Audit Logging (CIS 8 / NIST DE.AE / HIPAA §164.312(b))

| Sub-Control | NIST | CIS | SOC 2 | HIPAA | Status | Evidence |
|-----------|------|-----|-------|-------|--------|---------|
| Audit logging enabled (M365) | DE.AE-3 | 8.2 | CC7.2 | §164.312(b) | ✅ | M365 audit log |
| Log retention 90 days+ | ID.GV-3 | 8.10 | CC7.2 | — | ✅ | Native M365 |
| Log retention 6 years (PHI) | — | — | — | §164.312(b) | ❌ | Not configured |
| Centralized log monitoring | DE.AE-3 | 8.11 | CC7.2 | §164.308(a)(1) | ❌ | No SIEM |

---

## Integrated Roadmap (Satisfy Multiple Frameworks at Once)

| Priority | Control | Frameworks Satisfied | Effort | Impact |
|---------|---------|---------------------|--------|--------|
| 1 | Complete MFA rollout to 100% | HIPAA, SOC 2, NIST, CIS | Low — 2 users | Closes HIPAA gap |
| 2 | Extend log retention to 6 years (Allevio) | HIPAA | Medium — Azure cold storage | Closes HIPAA gap |
| 3 | Deploy Microsoft Sentinel (SIEM) | SOC 2, NIST, CIS | High — project | Major SOC 2 readiness |
| 4 | Implement quarterly access reviews | SOC 2, NIST, CIS | Low — process | SOC 2 CC6.3 |
| 5 | Annual HIPAA risk assessment (documented) | HIPAA | Medium — assessment | HIPAA §164.308(a)(1) |
```

## Output Contract
- HIPAA gaps for Allevio always flagged separately and with regulatory citation — these are legal obligations
- Cross-framework overlaps always identified — doing the same control once satisfies multiple frameworks
- Gap assessment always includes evidence column — "implemented" without evidence doesn't count for audits
- Roadmap always prioritizes high-impact, low-effort controls first
- HITL required: Dr. Lewis reviews framework assessments; Allevio compliance officer approves HIPAA control decisions; IT Manager executes control implementation

## System Dependencies
- **Reads from:** Security control documentation, compliance reports, IT configuration (provided)
- **Writes to:** Framework gap assessment and integrated roadmap (for HITL review)
- **HITL Required:** Dr. Lewis reviews and approves framework assessments; Allevio compliance officer approves HIPAA decisions; Legal reviews any regulatory obligations

## Test Cases
1. **Golden path:** Assessment for Allevio → HIPAA + NIST CSF applied, gap on PHI log retention (6-year) and incomplete MFA (97%), integrated roadmap with MFA first (closes HIPAA gap in 1 week) and log retention second (closes HIPAA gap in 30 days)
2. **Edge case:** Prospective enterprise client requires SOC 2 Type II — how long to get compliant? → SOC 2 readiness assessment, control gap analysis, 12-18 month roadmap; SOC 2 Type II requires evidence over a period (usually 6-12 months)
3. **Adversarial:** Non-technical stakeholder says "we follow NIST so we're covered for HIPAA" → NIST CSF and HIPAA Security Rule have overlapping areas but HIPAA has specific requirements (6-year log retention, BAAs, breach notification) not fully covered by NIST CSF; they complement each other

## Audit Log
Framework assessments retained by entity and date. Control gaps, evidence, and roadmap documented. Annual updates tracked.

## Deprecation
Retire when entity deploys a GRC (Governance, Risk, and Compliance) platform (ServiceNow GRC, Drata, Vanta) that maps controls to frameworks automatically with continuous evidence collection.
