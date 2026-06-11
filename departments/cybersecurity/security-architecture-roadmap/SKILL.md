---
name: security-architecture-roadmap
description: "Build a multi-year security architecture roadmap. Use when the user says 'security roadmap', 'security architecture roadmap', 'multi-year security plan', 'where should security be in 3 years', 'security transformation', 'security maturity roadmap', 'strategic security plan', or 'future state security architecture'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--horizon <1yr|3yr|5yr>] [--mode <build|update|present>]"
---

# Security Architecture Roadmap

Build a multi-year security architecture roadmap. Security is a journey, not a destination. This skill translates the current security posture assessment into a prioritized multi-year roadmap — what gets built when, why, and how it connects to business goals and compliance requirements. Designed for Dr. Lewis to present to Matt Mathison as a strategic plan, not just a technology list.

## When to Use
- Annual security strategy planning
- Board or executive presentation on security direction
- Post-assessment — turning findings into a plan
- M&A due diligence — what does the roadmap look like for an acquired entity?
- Presenting security as a business enabler, not just a cost center

## Output Format

```markdown
# Security Architecture Roadmap — <Entity>
**Date:** <date> | **Horizon:** 3 years
**Prepared by:** Dr. John Lewis
**For:** Matt Mathison / Leadership

---

## Executive Summary

**Where we are:** <Current security posture in 3 sentences — strengths and key gaps>

**Where we're going:** <Future state vision — what security looks like in 3 years>

**Business value:** <How this roadmap reduces risk, enables compliance, and supports growth>

**Total investment:** Year 1: $<N>K | Year 2: $<N>K | Year 3: $<N>K

---

## Current State (Baseline)

**Security maturity: Level 2/4 (Developing)**

| Pillar | Maturity | Key Strength | Key Gap |
|--------|---------|------------|---------|
| Identity | Level 3 | MFA at 97%, Entra ID | MFA 3% gap; no PIM |
| Devices | Level 2 | EDR deployed | 5% endpoints not enrolled |
| Network | Level 1 | Basic firewall | No segmentation, no DNS filtering |
| Applications | Level 2 | M365 SSO | No DLP, no app access reviews |
| Data | Level 1 | Some encryption | No classification, no DLP |
| Visibility | Level 1 | EDR alerts reviewed | No SIEM, 90-day log retention |

---

## Year 1 (Foundational Security) — $<N>K

**Theme:** Close critical gaps; meet mandatory compliance requirements

| Initiative | Description | Frameworks Satisfied | Cost | Q | Owner |
|-----------|-----------|---------------------|------|---|-------|
| Complete MFA rollout | 100% MFA coverage + hardware keys for admins | HIPAA, SOC 2, Cyber Insurance | $<N> | Q1 | IT Engineer |
| Block legacy authentication | Conditional Access policy — no MFA bypass | All frameworks | $0 (config) | Q1 | IT Engineer |
| Deploy Microsoft Sentinel | Centralized SIEM — extend log retention, detection | SOC 2, HIPAA | $<N>/year | Q1-Q2 | IT Manager |
| HIPAA log retention | 6-year PHI log retention via Azure cold storage | HIPAA | $<N>/year | Q2 | IT Engineer |
| Deploy password manager | 1Password Teams for all staff | SOC 2, best practice | $<N>/year | Q2 | IT Manager |
| Allevio DLP policies | M365 Purview DLP for PHI | HIPAA | $0 (config) | Q2-Q3 | IT Engineer |
| Annual security awareness | KnowBe4 or equivalent + phishing simulations | HIPAA, SOC 2, Cyber Insurance | $<N>/year | Q1 | IT Manager |
| Privileged Identity Management | Entra PIM — JIT admin access | SOC 2, best practice | Included in E5 | Q3 | IT Engineer |
| Annual pen test | External network pen test | Cyber Insurance | $<N> | Q4 | Dr. Lewis |

**Year 1 milestones:**
- 100% MFA, legacy auth blocked
- SIEM deployed with 1-year log retention
- HIPAA compliance improved from 70% → 90%
- Pen test completed; critical findings remediated

---

## Year 2 (Security Optimization) — $<N>K

**Theme:** Optimize detection, improve response, advance compliance

| Initiative | Description | Frameworks | Cost | H | Owner |
|-----------|-----------|-----------|------|---|-------|
| Network segmentation | VLAN segmentation — isolate servers from user networks | NIST, best practice | $<N> | H1 | IT Engineer |
| DNS filtering | Umbrella or Defender DNS — block malicious domains | NIST, best practice | $<N>/year | H1 | IT Engineer |
| Automated vulnerability management | Tenable or Defender integrated with Sentinel | SOC 2 | $<N>/year | H1 | IT Manager |
| SOC 2 readiness assessment | Gap analysis for SOC 2 Type II | SOC 2 | $<N> | H2 | Dr. Lewis |
| Zero trust conditional access | Risk-based CA policies (device compliance required) | NIST ZT | $0 (config) | H2 | IT Engineer |
| CSPM (Defender for Cloud P2) | Continuous cloud security monitoring | SOC 2, best practice | $<N>/year | H2 | IT Manager |
| Business continuity test | Full BCP/DR tabletop + partial restore | HIPAA, SOC 2 | $<N> | H2 | IT Manager |

**Year 2 milestones:**
- Network segmented; DNS filtering active
- Automated vulnerability management operational
- SOC 2 readiness gap assessment complete
- Conditional access enforcing device compliance

---

## Year 3 (Security Maturity) — $<N>K

**Theme:** Continuous monitoring, compliance certification, security as competitive advantage

| Initiative | Description | Frameworks | Cost | Owner |
|-----------|-----------|-----------|------|-------|
| SOC 2 Type II audit | Third-party audit + certification | SOC 2 | $<N>K | Dr. Lewis |
| SOAR (automated response) | Microsoft Sentinel SOAR playbooks | SOC 2, efficiency | $<N>/year | IT Manager |
| Passwordless authentication | FIDO2 / Windows Hello for all users | NIST, best practice | $<N> | IT Engineer |
| AI security framework | Formalize AI security practices (OpenFang, Krista.ai) | Internal | $0 | Dr. Lewis |
| Allevio CISO / compliance role | Dedicated security/compliance resource at Allevio | HIPAA | $<N>/year | HR / Matt Mathison |
| Annual HIPAA audit | External HIPAA assessment | HIPAA | $<N>K | Dr. Lewis |

**Year 3 milestones:**
- SOC 2 Type II certified
- Passwordless authentication for admin users
- Allevio has dedicated security/compliance resource
- AI security framework documented and audited

---

## 3-Year Security Maturity Progression

| Pillar | Current | Year 1 | Year 2 | Year 3 |
|--------|---------|--------|--------|--------|
| Identity | Level 3 | Level 4 | Level 4 | Level 4 |
| Devices | Level 2 | Level 3 | Level 3 | Level 4 |
| Network | Level 1 | Level 2 | Level 3 | Level 4 |
| Applications | Level 2 | Level 3 | Level 3 | Level 4 |
| Data | Level 1 | Level 3 | Level 3 | Level 4 |
| Visibility | Level 1 | Level 3 | Level 3 | Level 4 |
| **Overall** | **Level 2** | **Level 3** | **Level 3** | **Level 4** |

---

## Investment Summary

| Year | Investment | Primary Value Delivered |
|------|-----------|------------------------|
| Year 1 | $<N>K | HIPAA compliance, MFA, SIEM, mandatory baseline |
| Year 2 | $<N>K | Network security, SOC 2 readiness, automated management |
| Year 3 | $<N>K | SOC 2 certification, passwordless, Allevio maturity |
| **3-Year Total** | **$<N>K** | **Level 4 security maturity; SOC 2 certified; HIPAA compliant** |
```

## Output Contract
- Executive summary always leads — Matt Mathison reads the summary, not the details
- Business value always articulated — compliance enablement, risk reduction, growth support
- Year-by-year plan with themes — roadmaps need structure, not just lists
- Maturity progression tracked — shows direction and destination
- HITL required: Dr. Lewis builds and presents; Matt Mathison approves direction and budget; Finance reviews multi-year investment; IT Manager owns execution

## System Dependencies
- **Reads from:** Current security posture assessment, compliance requirements, business strategy (provided)
- **Writes to:** Roadmap document (for HITL review and executive approval)
- **HITL Required:** Dr. Lewis builds; Matt Mathison approves; Finance approves budget; IT Manager executes Year 1 actions

## Test Cases
1. **Golden path:** 3-year roadmap for MBL entity → Year 1 closes HIPAA and cyber insurance gaps, Year 2 advances to SOC 2 readiness and network segmentation, Year 3 achieves SOC 2 certification; presented to Matt Mathison with clear ROI framing
2. **Edge case:** Board asks "can we accelerate to SOC 2 in 12 months?" → analyzes what would need to compress, what the risk of rushing is (immature controls don't hold up in audit), recommends realistic 18-month path with what can be pulled forward
3. **Adversarial:** Leadership wants to skip Year 1 and go straight to Year 2 "more visible" initiatives → Year 1 foundational controls (MFA, SIEM, HIPAA compliance) are prerequisites for Year 2 working — segmentation without visibility is blind; cannot audit SOC 2 without the baseline controls

## Audit Log
Security roadmaps retained by entity and year. Annual progress reviews documented.

## Deprecation
Keep and update annually. Retire formal roadmap process when entity has a CISO-led security program with board-level reporting and formal strategic planning cadence.
