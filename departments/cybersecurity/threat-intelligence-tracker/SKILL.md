---
name: threat-intelligence-tracker
description: "Track and apply threat intelligence relevant to the organization. Use when the user says 'threat intelligence', 'threat intel', 'what threats are targeting us', 'cyber threat landscape', 'threat briefing', 'threat actors', 'emerging threats', or 'what should we be worried about'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--sector <healthcare|financial|general>] [--format <brief|full|alert>]"
---

# Threat Intelligence Tracker

Track and apply threat intelligence relevant to the organization's sector, technology stack, and risk profile. Threat intelligence without application is just noise. This skill converts raw threat data into actionable guidance: what's targeting organizations like ours, what controls matter most right now, and what to watch in the next 30 days.

## When to Use
- Monthly threat briefing for IT/Security leadership
- After a major industry breach or ransomware event in your sector
- Pre-board or executive security briefing
- Evaluating whether to accelerate a security control
- New threat actor or campaign targeting healthcare, private equity, or financial services

## Intelligence Sources (Tier 1 — Free)

| Source | What It Covers |
|--------|--------------|
| **CISA Known Exploited Vulnerabilities (KEV)** | Active exploitation in the wild — highest priority patches |
| **HHS HC3 Alerts** | Healthcare-specific threat intelligence (relevant for Allevio) |
| **FBI/CISA Joint Advisories** | Nation-state and ransomware campaigns |
| **ISAC feeds** | Sector-specific intelligence (FS-ISAC for financial, H-ISAC for healthcare) |
| **VirusTotal / Shodan** | Ad-hoc threat research |
| **Vendor security blogs** | Microsoft MSTIC, CrowdStrike, Mandiant |

## Threat Categories Relevant to MBL Portfolio

| Threat Type | Portfolio Relevance | Priority |
|------------|-------------------|---------|
| **Ransomware** | All entities — healthcare (Allevio) is highest-paying target | Critical |
| **Business Email Compromise (BEC)** | Private equity, financial — wire fraud via CFO/exec impersonation | Critical |
| **Healthcare data breach** | Allevio PHI — HIPAA breach notifications + class actions | Critical |
| **Supply chain attacks** | SaaS vendors used by portfolio companies | High |
| **Credential theft** | Microsoft 365 targeting via phishing + credential stuffing | High |
| **LP data targeting** | HIVE Partners LP information — private equity targeting | High |

## Output Format

```markdown
# Threat Intelligence Brief — <Entity / MBL Portfolio>
**Date:** <date> | **Period covered:** <month>
**Prepared by:** Security / Dr. John Lewis

---

## Executive Summary

**Threat level this period:** Low / Elevated / High / Critical
**Key message:** <One paragraph — what matters most and what we're doing about it>

---

## Active Threats Relevant to MBL Portfolio

### 1. [Threat Name / Campaign]
**Threat type:** Ransomware / BEC / Phishing / Supply chain
**Targeting:** Healthcare MSOs / Private equity / Financial services
**Source:** CISA KEV #<N> / FBI Advisory / [Source]
**TTP summary:** <How they operate — phishing, RDP exploit, etc.>
**Indicators:** <IP ranges, domains, file hashes if available>
**Our exposure:** <Are we affected? What's our attack surface for this threat?>
**Action taken/required:** <What we've done or need to do>

### 2. [Threat Name]
[Same structure]

---

## CVEs Requiring Immediate Action (CISA KEV)

| CVE | Product | Severity | CISA Deadline | Our Status |
|-----|---------|---------|-------------|-----------|
| CVE-2024-XXXX | Microsoft Windows | Critical | <date> | Patched |
| CVE-2024-XXXX | [Product we use] | High | <date> | Patch pending — IT assigned |
| CVE-2024-XXXX | [Product] | Critical | <date> | Not affected (not in use) |

---

## Threat Trends to Watch (Next 30 Days)

1. **Ransomware targeting healthcare Q<N>:** H-ISAC reports 40% increase in attacks on MSOs. Allevio should verify EDR coverage and backup integrity.
2. **BEC campaigns impersonating PE firm CFOs:** 3 confirmed cases in the private equity sector this month. Matt Mathison and Finance should be on alert for unexpected wire transfer requests.
3. **Microsoft 365 token theft via adversary-in-the-middle phishing:** New campaign bypassing MFA via session token theft. Action: enable Conditional Access with token binding.

---

## Control Actions This Period

| Action | Trigger | Owner | Status | Due |
|--------|---------|-------|--------|-----|
| Patch CVE-2024-XXXX on all Windows endpoints | CISA KEV mandatory | IT Manager | In progress | <CISA deadline> |
| Enable M365 Conditional Access token binding | AiTM phishing campaign | IT Engineer | Planned | <date> |
| Brief Finance on BEC wire fraud pattern | PE sector campaign | Dr. Lewis | Scheduled | <date> |
```

## Output Contract
- Every intelligence item mapped to a specific action — no intelligence without a "so what"
- CISA KEV items always given priority — these are confirmed actively exploited
- Allevio healthcare threats always separated and escalated — PHI breach risk is the highest-consequence event
- HITL required: Dr. Lewis reviews monthly brief; Matt Mathison receives executive summary for any Critical-level threat; Allevio leadership briefed on any healthcare-specific intelligence

## System Dependencies
- **Reads from:** CISA KEV feed, FBI/CISA advisories, vendor security advisories, sector ISAC feeds (publicly available)
- **Writes to:** Nothing (intelligence brief for HITL review and action)
- **HITL Required:** Dr. Lewis reviews all intelligence briefs; Matt Mathison informed of Critical threats; IT Manager receives action items; Allevio compliance officer briefed on healthcare threats

## Test Cases
1. **Golden path:** Monthly brief → 3 active threats (1 ransomware targeting healthcare, 1 BEC campaign, 1 M365 credential campaign), 2 CISA KEV CVEs requiring patch within 5 days, executive summary for Matt Mathison, 4 control actions assigned
2. **Edge case:** Major breach in the healthcare sector (not MBL) — does it affect us? → Allevio impact assessment completed within 24 hours, shared IoCs compared against our environment, Allevio compliance officer briefed
3. **Adversarial:** Threat intelligence suggests a supply chain compromise in a SaaS vendor we use → escalates to IT Manager + Dr. Lewis immediately, evaluates vendor advisory and patches, considers temporary access restrictions pending vendor confirmation

## Audit Log
Intelligence briefs retained by entity and month. Control actions tracked. CISA KEV compliance documented.

## Deprecation
Retire when entity deploys a threat intelligence platform (Recorded Future, Mandiant Advantage, MISP) with automated IoC feeds, correlation with internal telemetry, and priority alerting.
