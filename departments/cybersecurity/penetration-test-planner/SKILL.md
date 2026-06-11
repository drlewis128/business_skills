---
name: penetration-test-planner
description: "Plan and manage a penetration test engagement. Use when the user says 'pen test', 'penetration test', 'pen testing', 'ethical hacking', 'red team', 'security assessment', 'hire a pen tester', 'schedule a pen test', or 'what should we pen test'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--scope <internal|external|web-app|full>] [--type <internal|vendor-managed>]"
---

# Penetration Test Planner

Plan and manage a penetration test engagement. A pen test is only as valuable as its scope, preparation, and follow-through. Poor scoping wastes money and misses real risks. Good scoping finds the vulnerabilities that matter before a real attacker does. This skill manages the full lifecycle from pre-engagement planning through finding remediation.

## When to Use
- Annual pen test planning (best practice for most organizations)
- Before a major product launch, acquisition, or compliance audit
- After a significant infrastructure change (new cloud environment, M&A integration)
- Compliance requirement (SOC 2, HIPAA, cyber insurance requirement)
- Vendor/client requiring proof of security testing

## Test Types

| Type | What It Tests | Typical Cost | Frequency |
|------|-------------|------------|---------|
| **External network** | Internet-facing systems, perimeter | $5-15K | Annual |
| **Internal network** | What an insider can reach | $8-20K | Annual |
| **Web application** | Specific web apps — OWASP Top 10 | $5-15K/app | Per app, or annual |
| **Social engineering** | Phishing, vishing, physical | $5-10K | Annual |
| **Full red team** | Combined external + internal + social | $25-75K | Every 2 years |

## Pre-Engagement Requirements

**Before engaging any pen tester:**
- [ ] Dr. Lewis approves scope and vendor selection
- [ ] Legal reviews and signs Rules of Engagement (ROE)
- [ ] Written authorization letter signed by Dr. Lewis (testifies pen tester is authorized — protects tester and MBL)
- [ ] Cloud provider notified if testing cloud infrastructure (AWS/Azure requires prior notification)
- [ ] Cyber insurance carrier notified (some carriers require testing)
- [ ] IT Manager informed — emergency contact during test

## Output Format

```markdown
# Penetration Test Plan — <Entity>
**Test type:** <type> | **Entity:** <name>
**Planned dates:** <start> to <end>
**Authorized by:** Dr. John Lewis

---

## Scope Definition

### In-Scope
- **IP ranges:** <list — specific, not "our whole network">
- **Domains/subdomains:** <list>
- **Web applications:** <list>
- **Test types permitted:** Network scan / Exploitation / Social engineering / Physical
- **Testing hours:** Business hours only / 24/7 / Off-hours only

### Out-of-Scope (EXPLICIT EXCLUSIONS)
- Production financial systems (QuickBooks, Bill.com) — no exploitation, only enumeration
- PHI-adjacent systems (Allevio) — requires Allevio compliance officer approval before testing
- Any third-party SaaS systems (GoHighLevel, Monday.com) — not our infrastructure
- Denial of service attacks — prohibited
- Data exfiltration beyond proof-of-concept — confirm with Dr. Lewis

---

## Vendor Requirements

**Minimum qualifications:**
- OSCP, CEH, or equivalent certification
- E&O insurance ($1M minimum)
- NDA signed before scope disclosure
- References from comparable engagements (healthcare, private equity preferred)
- Written Rules of Engagement submitted before test begins

**Communication during test:**
- Emergency contact: IT Manager — <phone>
- Dr. Lewis backup: <phone>
- Stop-work authority: IT Manager or Dr. Lewis can stop test at any time

---

## Deliverables Required

| Deliverable | Timeline | Description |
|------------|---------|-----------|
| **Kickoff call notes** | Pre-test | Scope confirmed, emergency contacts exchanged |
| **Executive summary** | Final report | 1-2 page summary for Matt Mathison / leadership |
| **Technical findings report** | Final report | Full finding list with severity, evidence, reproduction steps |
| **Remediation guidance** | Final report | Specific fix recommendations per finding |
| **Attestation letter** | Final report | Signed statement of scope and test completion (for compliance) |
| **Re-test (optional)** | After remediation | Verify Critical/High findings were fixed |

---

## Finding Severity and Remediation SLA

| Severity | Definition | Remediation SLA | Owner |
|---------|-----------|----------------|-------|
| Critical | RCE, admin takeover, PHI/PII breach possible | 48-72 hours | IT Engineer + Dr. Lewis |
| High | Privilege escalation, significant data access | 7 days | IT Engineer |
| Medium | Lateral movement possible, limited impact | 30 days | IT Tech |
| Low | Best practice violation, minimal risk | 90 days | IT Tech |

---

## Post-Test Actions

- [ ] Critical findings reviewed by Dr. Lewis within 24 hours of report receipt
- [ ] PHI-adjacent findings reviewed by Allevio compliance officer
- [ ] Remediation plan built within 5 days of report receipt
- [ ] Findings added to risk register
- [ ] Re-test scheduled after Critical/High remediation
- [ ] Attestation letter filed for compliance record

---

## Budget

| Item | Estimated Cost |
|------|--------------|
| Test type (external network) | $<N>K |
| Re-test (if included) | $<N>K |
| **Total** | **$<N>K** |

**Budget approved by:** Dr. Lewis / Finance
```

## Output Contract
- Out-of-scope exclusions always explicit — ambiguous scope leads to unintended damage
- Authorization letter always required before test begins — no written authorization = no test
- PHI-adjacent systems (Allevio) require compliance officer approval before including in scope
- Critical findings always reported within 24 hours of discovery (not just at final report)
- HITL required: Dr. Lewis approves vendor selection, scope, and budget; Legal reviews ROE; IT Manager is on-call emergency contact during test; Dr. Lewis reviews Critical findings within 24 hours

## System Dependencies
- **Reads from:** IT asset inventory, network architecture, previous pen test reports (provided)
- **Writes to:** Nothing (plan and report for HITL review and action)
- **HITL Required:** Dr. Lewis approves engagement; Legal reviews and signs ROE; IT Manager is emergency contact; Dr. Lewis reviews Critical findings immediately

## Test Cases
1. **Golden path:** Annual external network pen test → scope defined, authorization letter signed, vendor selected, 5-day test, final report with 2 Critical (patched within 48 hours) and 4 High findings, re-test confirms Critical remediation, attestation letter filed for SOC 2 audit
2. **Edge case:** Pen tester finds a Critical vulnerability in a cloud system that wasn't explicitly in scope → immediately notifies IT Manager and Dr. Lewis (stop-work if needed), out-of-scope finding documented, Dr. Lewis decides whether to scope in for remediation
3. **Adversarial:** Pen tester pushes to include PHI systems at Allevio without proper authorization → stopped — PHI-adjacent systems require explicit Allevio compliance officer sign-off, scope document updated to clarify exclusion

## Audit Log
Pen test plans, authorization letters, findings reports, and attestation letters retained by entity and year. Remediation status tracked.

## Deprecation
Keep and update annually. Retire when entity has a dedicated security team managing vendor relationships and an established pen test vendor relationship with pre-negotiated terms.
