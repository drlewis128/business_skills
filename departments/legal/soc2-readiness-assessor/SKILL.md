---
name: soc2-readiness-assessor
description: "Assess SOC 2 readiness and manage the SOC 2 audit process. Use when the user says 'SOC 2', 'SOC2', 'SOC 2 audit', 'SOC 2 compliance', 'SOC 2 Type II', 'security audit', 'trust services criteria', 'SOC 2 readiness', 'get SOC 2 certified', or 'customer security questionnaire requires SOC 2'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <Type-I|Type-II>] [--criteria <CC|A|PI|P|C>] [--mode <readiness|gap|audit>]"
---

# SOC 2 Readiness Assessor

Assess SOC 2 readiness and guide the audit preparation process. SOC 2 (System and Organization Controls 2) is a voluntary framework that demonstrates an organization's security, availability, processing integrity, confidentiality, and privacy controls to customers and prospects. For MBL portfolio companies that handle customer data (Allevio, Column6), SOC 2 Type II is increasingly required by enterprise customers as a procurement condition. This skill assesses readiness, identifies gaps, and builds the preparation roadmap.

## When to Use
- Customer or prospect requires SOC 2 for sales process
- Evaluating whether to pursue SOC 2 Type I vs. Type II
- Building the SOC 2 preparation roadmap
- Identifying evidence requirements for each Trust Services Criteria
- Post-audit gap remediation

## SOC 2 Types and Criteria

```
SOC 2 TYPE I — Controls designed correctly as of a single date
  - Faster (6-8 weeks audit preparation)
  - Weaker signal — enterprise customers often want Type II

SOC 2 TYPE II — Controls operating effectively over a period (6-12 months)
  - Audit observation period: typically 6 months
  - Strong customer confidence signal
  - Required by most enterprise procurement teams

Trust Services Criteria (TSC):
  CC — Common Criteria (Security) — REQUIRED, always included
  A  — Availability — optional but common
  PI — Processing Integrity — optional
  P  — Privacy — optional (HIPAA-aligned for Allevio)
  C  — Confidentiality — optional
```

## SOC 2 Common Criteria (CC) Overview

| CC Control Family | What It Covers |
|-----------------|--------------|
| CC1 — Control Environment | Organizational commitment to security, integrity, ethics |
| CC2 — Communication | Policies, procedures, and communication of controls |
| CC3 — Risk Assessment | Identifying, analyzing, and managing risks |
| CC4 — Monitoring | Continuous monitoring of controls |
| CC5 — Control Activities | Controls that address identified risks |
| CC6 — Logical Access | User access, authentication, authorization |
| CC7 — System Operations | Security event monitoring, incident response |
| CC8 — Change Management | System changes controlled and tested |
| CC9 — Risk Mitigation | Business continuity, vendor risk management |

## Output Format

```markdown
# SOC 2 Readiness Assessment — <Entity>
**Date:** <date> | **Entity:** <name>
**Target criteria:** Common Criteria (CC) [+ optional criteria]
**Audit type target:** Type I / Type II
**Prepared by:** Dr. John Lewis

---

## Readiness Overview

**SOC 2 readiness maturity:** <Level 1-4>
**Estimated gap closure timeline:** <X months>
**Recommended audit type:** Type I first → Type II after 6 months
**Estimated investment:** <range> (audit firm fees + prep tools)
**Key finding:** <2-3 sentences on biggest gaps and path forward>

---

## Control Readiness by CC Family

| CC Family | Requirement | Status | Key Gaps | Est. Fix Time |
|---------|-----------|--------|---------|-------------|
| CC1 — Control Environment | Security policies, org chart, code of conduct, background checks | 🟡 Partial | Code of conduct undocumented; background checks not formal | 2 weeks |
| CC2 — Communication | Policy distribution, employee acknowledgment | 🟡 Partial | Policies exist; no signed acknowledgment records | 1 week |
| CC3 — Risk Assessment | Annual risk assessment documented | 🟡 | Risk assessment informal; not documented | 2-3 weeks |
| CC4 — Monitoring | Security monitoring, log review | 🟡 | Logs collected; no structured review process | 3-4 weeks |
| CC5 — Control Activities | Access controls, encryption, vulnerability management | 🟡 | Vuln scan cadence inconsistent | 2 weeks |
| CC6 — Logical Access | MFA, access reviews, onboarding/offboarding | 🟡 | MFA at 97%; no quarterly access reviews | 3 weeks |
| CC7 — System Operations | Incident response, security events | ✅ | IR plan documented and tested | Ready |
| CC8 — Change Management | Change control process | ❌ | No formal change management process | 4-5 weeks |
| CC9 — Risk Mitigation | Business continuity, vendor risk | 🟡 | BCP undocumented; vendor risk informal | 3-4 weeks |

---

## Evidence Requirements by Control

| Control | Evidence Type | Source | Have It? |
|---------|------------|--------|---------|
| Security policy | Policy document + distribution record | Drive / HR system | 🟡 Policy exists, no distribution record |
| MFA enforcement | M365 Conditional Access screenshot | Entra ID admin | ✅ |
| Vulnerability scans | Scan reports (quarterly) | Security tool | 🟡 Sporadic scans |
| Access reviews | Quarterly access review sign-off | IT + manager | ❌ None |
| Incident log | Incident tracking with dates, severity, resolution | IT ticketing | 🟡 Informal |
| Penetration test | Pen test report + remediation log | Pen testing firm | ❌ Not performed |
| Vendor risk assessments | Vendor questionnaire results | Risk register | ❌ |
| Employee security training | Training completion records | LMS / HR | ✅ |
| Backup testing | Backup test results with restore confirmation | IT | 🟡 |
| Change management log | Change request → approval → deploy records | Ticketing | ❌ |

---

## SOC 2 Preparation Roadmap

**Phase 1 — Foundation (Months 1-2)**
- Formalize and distribute all security policies with signed acknowledgment
- Document annual risk assessment
- Establish quarterly access review process
- Implement formal change management process (even lightweight: ticket → review → approve → deploy)
- Conduct penetration test

**Phase 2 — Evidence Collection (Months 3-6)**
- Consistent vulnerability scanning (monthly)
- Quarterly access reviews executed and documented
- Structured security log review (weekly)
- Vendor risk assessments for key vendors
- Business continuity plan documented and tested

**Phase 3 — Audit Preparation (Month 7-8)**
- Engage SOC 2 auditor (Drata, Vanta help with selection)
- Pre-audit evidence package assembled
- Type I audit (if doing Type I first)
- Type II observation period begins after Type I

---

## Technology Options

| Tool | Purpose | Cost | Recommendation |
|------|---------|------|--------------|
| **Drata** | SOC 2 automation, evidence collection, audit prep | $15K-$40K/yr | Strongly recommended — cuts prep time 50% |
| **Vanta** | SOC 2 automation, evidence collection, audit prep | $10K-$30K/yr | Alternative to Drata |
| **Sprinto** | SOC 2 automation (lower cost) | $6K-$15K/yr | Budget option |
| Manual | Spreadsheet + Drive evidence collection | Staff time only | Only if budget is the constraint; 3x the work |
```

## Output Contract
- Type I vs. Type II always recommended based on customer need — don't overkill with Type II if Type I closes the sale
- Change management gap always flagged — it's the most commonly failed CC control for first-time audits
- Evidence collection timeline always assessed — SOC 2 Type II requires 6-month observation period
- Penetration test always flagged if not done — auditors require it for CC controls
- HITL required: Dr. Lewis reviews readiness assessment; Leadership decides to pursue SOC 2 (budget and timeline commitment); outside counsel reviews audit agreement; Auditor selection requires Dr. Lewis + entity leadership approval

## System Dependencies
- **Reads from:** Security policies, access logs, M365 compliance data, incident log, training records (provided)
- **Writes to:** Readiness assessment and preparation roadmap (for Leadership decision)
- **HITL Required:** Dr. Lewis reviews; Entity leadership approves SOC 2 pursuit and budget; Auditor selected by Dr. Lewis + leadership

## Test Cases
1. **Golden path:** Column6 SOC 2 readiness assessment → enterprise prospect requires SOC 2 Type II; readiness at Level 2; key gaps: change management (critical), quarterly access reviews (not done), pen test (needed); recommendation: use Drata to automate evidence collection; Type I achievable in 6 months, Type II by end of year
2. **Edge case:** Customer requires SOC 2 Type II but audit observation period hasn't started → be transparent: offer Type I immediately, commit to Type II timeline; some enterprise customers will accept if timeline is credible with milestones
3. **Adversarial:** Internal team wants to do SOC 2 manually to avoid Drata/Vanta cost → manual SOC 2 audit prep is feasible but requires 2-3x the staff hours; recommend calculating cost of internal time vs. automation tool cost; Drata typically saves 200+ hours

## Audit Log
SOC 2 readiness assessments retained annually. Audit reports retained for 3 years. Evidence packages retained by audit period.

## Deprecation
Retire if entity achieves sustained SOC 2 Type II with a continuous compliance platform (Drata or Vanta) managing evidence collection and renewal automatically.
