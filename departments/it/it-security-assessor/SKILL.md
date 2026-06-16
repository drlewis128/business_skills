---
name: it-security-assessor
description: "Assess overall security posture using NIST/CIS frameworks. Use when the user says 'security assessment', 'security posture', 'security review', 'security audit', 'cybersecurity assessment', 'how secure are we', 'security maturity', 'NIST CSF', 'CIS controls', 'security framework', 'security baseline', 'risk assessment', 'security gaps', 'cyber risk', or 'security scorecard'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--framework <NIST-CSF|CIS-18|both>] [--scope <full|quick-scan>]"
---

# IT Security Assessor

Assess the cybersecurity posture of MBL portfolio companies using the NIST Cybersecurity Framework (CSF) and CIS Controls — translating technical security controls into a structured risk view that Dr. Lewis and company leadership can act on. Security assessments at portfolio scale are not compliance exercises — they are risk management tools that identify where a company is most likely to suffer a material breach or ransomware incident.

## When to Use
- Annual security posture assessment for any portfolio company
- Before engaging cyber insurance (insurer will ask these questions)
- After a security incident — where else is the company exposed?
- Before deploying a new critical system or migrating sensitive data
- When a portfolio company is being acquired or performing due diligence
- When a new portfolio company is onboarded to the MBL ecosystem

## Assessment Framework

```
Assessment structure (aligned to NIST CSF 2.0 + CIS Controls 18):

NIST CSF Functions:
  GOVERN: Risk management strategy, roles, policies
  IDENTIFY: Asset inventory, risk assessment, supply chain
  PROTECT: Access control, training, data security, platform security
  DETECT: Monitoring, detection processes
  RESPOND: Incident response, communications
  RECOVER: Recovery planning, improvements

Maturity scale (per control):
  0 — Not implemented: Control does not exist
  1 — Initial: Ad hoc, not documented
  2 — Managed: Defined and partially implemented
  3 — Defined: Fully implemented and documented
  4 — Measured: Metrics tracked and reviewed
  5 — Optimizing: Continuously improved

Priority CIS Controls for MBL portfolio companies:
  CIS 1: Inventory of Enterprise Assets — know what you have
  CIS 2: Inventory of Software Assets — know what software runs
  CIS 3: Data Protection — classify and protect sensitive data
  CIS 4: Secure Configuration — harden devices and software
  CIS 5: Account Management — least privilege, no shared accounts
  CIS 6: Access Control Management — MFA, SSO, provisioning/deprovisioning
  CIS 11: Data Recovery — tested backups
  CIS 12: Network Infrastructure Management — firewalls, segmentation
  CIS 13: Network Monitoring — detect anomalies
  CIS 14: Security Awareness and Skills Training — phishing, social engineering
  CIS 17: Incident Response Management — documented IR plan, tested

Healthcare-specific (Allevio — HIPAA Security Rule):
  §164.308(a)(1): Security officer designated; risk analysis conducted
  §164.308(a)(5): Security awareness training
  §164.308(a)(6): Security incident procedures
  §164.308(a)(7): Contingency plan (backup, DR, emergency mode)
  §164.310(a)(2)(iv): Device and media controls
  §164.312(a)(1): Access control (unique user ID, emergency access, auto logoff, encryption)
  §164.312(e)(1): Transmission security (encryption in transit)
```

## Output Format

```markdown
# Security Posture Assessment — <Company Name>
**Assessment date:** [Date] | **Framework:** [NIST CSF 2.0 + CIS Controls 18]
**Overall maturity score:** [X.X / 5.0] | **Risk rating:** 🔴 High / 🟡 Moderate / 🟢 Low
**Assessor:** Dr. John Lewis
**Next assessment due:** [Date + 12 months]

---

## Executive Summary

**Bottom line:** [1-2 sentence risk status and most critical finding]

**Top 3 risks (immediate action required):**
1. [Risk] — [Specific impact if exploited] — [Recommended fix]
2. [Risk] — [Impact] — [Fix]
3. [Risk] — [Impact] — [Fix]

**Strengths:**
- [Control that is well-implemented]

---

## NIST CSF Maturity Scores

| Function | Score | Key gap |
|----------|-------|---------|
| GOVERN | [X.X/5] | [E.g., No formal security policy documented] |
| IDENTIFY | [X.X/5] | [E.g., No complete asset inventory] |
| PROTECT | [X.X/5] | [E.g., MFA not enforced on financial systems] |
| DETECT | [X.X/5] | [E.g., No log monitoring or SIEM] |
| RESPOND | [X.X/5] | [E.g., No documented incident response plan] |
| RECOVER | [X.X/5] | [E.g., Backup restoration never tested] |
| **Overall** | **[X.X/5]** | |

---

## Priority CIS Controls Assessment

| CIS Control | Maturity | Status | Top gap | Priority |
|-------------|---------|--------|---------|---------|
| CIS 1 — Asset Inventory | [0-5] | 🟢/🟡/🔴 | | |
| CIS 3 — Data Protection | [0-5] | | [E.g., PHI not encrypted at rest] | 🔴 |
| CIS 5 — Account Management | [0-5] | | [E.g., Shared admin account in use] | 🔴 |
| CIS 6 — Access Control | [0-5] | | [E.g., MFA not enforced] | 🔴 |
| CIS 11 — Data Recovery | [0-5] | | [E.g., Backup never tested] | 🔴 |
| CIS 14 — Security Training | [0-5] | | [E.g., No phishing training] | 🟡 |
| CIS 17 — Incident Response | [0-5] | | [E.g., No IR plan exists] | 🟡 |

---

## HIPAA Security Rule Status (Allevio only)

| Requirement | Status | Gap | Action |
|-------------|--------|-----|--------|
| Security officer designated | ✅ / 🔴 | | |
| Risk analysis conducted (current year) | ✅ / 🔴 | [No current risk analysis] | Conduct annually |
| Security awareness training | ✅ / 🟡 | [No phishing simulation] | Add phishing training |
| Incident response procedures | ✅ / 🔴 | [No documented procedure] | Document and test |
| Contingency plan — backup | ✅ / 🔴 | | |
| Access control — unique user IDs | ✅ / 🔴 | [Shared login at front desk] | Individual accounts |
| Transmission encryption | ✅ / 🔴 | | |
| PHI encrypted at rest | ✅ / 🔴 | | |

**HIPAA compliance rating:** ✅ Compliant / 🟡 Gaps requiring remediation / 🔴 Material gaps — breach risk

---

## Remediation Roadmap

### Immediate (this month)
| Finding | Action | Owner | Effort | Cost |
|---------|--------|-------|--------|------|
| [MFA not enforced on M365] | Enable Conditional Access + MFA | Dr. Lewis | 2 hrs | $0 |
| [Shared admin account] | Create individual accounts; disable shared | Dr. Lewis | 1 hr | $0 |

### Near-term (30-90 days)
| Finding | Action | Owner | Effort | Cost |
|---------|--------|-------|--------|-------|
| [No IR plan] | Document incident response plan | Dr. Lewis | 8 hrs | $0 |
| [No security training] | Deploy KnowBe4 or Proofpoint SAT | Dr. Lewis | 4 hrs setup | $[X]/yr |

### Strategic (6-12 months)
| Finding | Action | Owner | Effort | Cost |
|---------|--------|-------|--------|------|
| [No SIEM / log monitoring] | Deploy Microsoft Sentinel | Dr. Lewis | 16 hrs | $[X]/mo |

---

## Matt Mathison Brief

[Company] security maturity: [X.X/5] — [Risk rating]. Critical gaps: [Top 2-3]. Immediate actions: [What's being done now]. Investment required: $[X]/year.
```

## Output Contract
- The assessment identifies real risk, not compliance theater — the output is a risk-ordered list of things that actually matter; if a company has no security training program, that's a real risk because phishing is the most common attack vector; if MFA is not enforced, that's a real risk because credential theft is the most common account compromise vector; the assessment does not celebrate theoretical controls that aren't actually implemented
- HIPAA risk analysis satisfies §164.308(a)(1) — for Allevio, the annual security assessment doubles as the HIPAA Security Rule required risk analysis; it must be documented, dated, and retained; the assessment covers required addressable and required implementation specifications; an undocumented risk analysis is a HIPAA compliance gap, even if the controls are actually in place
- Remediation prioritization is by business impact — the first items on the remediation roadmap are the ones where exploitation causes the most damage; MFA not enforced on a financial system is higher priority than a missing policy document, because the financial system can be drained and the missing policy cannot; business impact × likelihood = priority
- HITL required: Dr. Lewis conducts all security assessments; assessment results reviewed with CEO within 2 weeks; HIPAA risk analysis shared with Privacy Officer (Allevio); immediate remediation items executed by Dr. Lewis; strategic remediation investments presented to Matt Mathison with cost/benefit; assessment retained for compliance record

## System Dependencies
- **Reads from:** All MBL portfolio IT systems (Entra ID, Intune, M365 admin, firewall, server inventory), HIPAA security rule (45 CFR 164.308-312), NIST CSF 2.0, CIS Controls v8, vulnerability scan results (it-vulnerability-scanner)
- **Writes to:** Security assessment report (SharePoint/Ops/<Company>/IT/Security/Assessments/); HIPAA risk analysis log (Allevio); remediation tracking (Monday.com); annual cyber insurance renewal data
- **HITL Required:** Dr. Lewis conducts assessment; results reviewed with CEO; HIPAA risk analysis with Privacy Officer (Allevio); strategic investments reviewed with Matt Mathison; annual cadence minimum

## Test Cases
1. **Golden path:** Allevio annual security assessment → Overall maturity: 2.8/5 (Managed); Critical findings: (1) HIPAA risk analysis not documented for current year — Dr. Lewis drafts and signs same week; (2) Shared admin credential at AdvancedMD front desk — individual accounts created within 1 week; (3) Backup restoration at the secondary clinic never tested — tested within 30 days; Strengths: M365 MFA enforced ✅; Intune MDM compliance 100% ✅; HIPAA training current for all staff ✅; Roadmap: add phishing simulation (KnowBe4, ~$1.5K/year) within 60 days; assess Microsoft Sentinel deployment in Q3; HIPAA risk analysis filed and retained ✅
2. **Edge case:** A cyber insurance application requires completion of a security questionnaire before renewal → Security assessment provides all inputs; NIST/CIS maturity scores map directly to insurer questions; MFA status, backup status, IR plan status, training status are all captured; assessment helps identify gaps before insurer asks; insurers now commonly decline or surcharge for: no MFA, no backups, no IR plan, no security training — address these before renewal; insurers also look at revenue and industry (healthcare = higher premium regardless of controls)
3. **Adversarial:** "We're too small to be a target — hackers go after big companies" → Ransomware groups use automated scanners that probe millions of IP addresses for known unpatched vulnerabilities and exposed RDP ports; they do not choose targets by company size; the ransom demand scales to company size ($25K for a 20-person company is still a devastating loss); healthcare companies (Allevio) are specifically targeted because they are more likely to pay (can't operate without their systems) and hold valuable PHI; the "too small to be a target" assumption is how small companies get hit

## Audit Log
Annual security assessments retained by company and year. HIPAA risk analysis retained with date and assessor (Allevio). Remediation tracking retained. Cyber insurance application inputs retained. Assessment-to-remediation close loop documented. Matt Mathison briefings retained.

## Deprecation
Retire when portfolio companies have dedicated CISOs or security managers who conduct annual assessments and produce NIST/CIS scorecards for executive review — with Dr. Lewis receiving annual security summaries rather than conducting assessments. HIPAA risk analysis requirement at Allevio is permanent and cannot be delegated below Privacy Officer level.
