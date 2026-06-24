---
name: sec-security-risk-register
description: "Build and maintain a cybersecurity risk register for MBL portfolio companies. Use when the user says 'security risk register', 'risk register', 'cyber risk', 'cybersecurity risk', 'security risks', 'identify security risks', 'assess security risks', 'risk assessment', 'cyber risk assessment', 'information security risk', 'risk scoring', 'risk likelihood', 'risk impact', 'residual risk', 'inherent risk', 'risk treatment', 'accept the risk', 'mitigate the risk', 'transfer the risk', 'risk heat map', 'top security risks', 'what are our biggest risks', 'security risk report', 'HIPAA risk analysis', 'HIPAA risk assessment', 'risk register update', 'annual risk assessment', 'security risk management', 'risk owner', 'risk tracking', 'emerging risk', 'new risk', or 'risk inventory'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <build|update|review|report>] [--scope <full|hipaa|critical>]"
---

# Sec Security Risk Register

Build and maintain the cybersecurity risk register for MBL portfolio companies — identifying, scoring, and tracking information security risks with clear owners, treatment decisions, and review cadences. The risk register is the operational backbone of the security program: it tells Dr. Lewis what the top risks are, who owns them, and whether they're getting better or worse.

## When to Use
- Building the initial risk register for an entity
- Annual risk assessment update (Q1 each year)
- Reviewing risk status against mitigation progress
- HIPAA-required risk analysis for Allevio

## Risk Register Framework

```
RISK SCORING MODEL (Likelihood × Impact = Risk Score):

  Likelihood (1-5):
    1 — Rare: happens to organizations like us every 5-10 years
    2 — Unlikely: happens to organizations like us every 3-5 years
    3 — Possible: happens to organizations like us every 1-3 years
    4 — Likely: happens to organizations like us every 1-2 years
    5 — Almost Certain: happens to organizations like us multiple times per year

  Impact (1-5):
    1 — Negligible: <$5K cost; no regulatory impact; no data exposure
    2 — Minor: $5K-$50K cost; internal disruption; no regulatory impact
    3 — Moderate: $50K-$500K cost; reputational damage; possible regulatory inquiry
    4 — Major: $500K-$5M cost; significant operational disruption; regulatory action likely
    5 — Catastrophic: >$5M cost; business-threatening; HIPAA breach notification; litigation

  Risk Score = Likelihood × Impact (1-25)
    Critical: 16-25 (immediate treatment required)
    High: 10-15 (active mitigation plan; quarterly review)
    Medium: 5-9 (treatment plan; semi-annual review)
    Low: 1-4 (accept or monitor; annual review)

RISK TREATMENT OPTIONS:
  Mitigate — implement controls to reduce likelihood or impact
  Transfer — buy cyber insurance; outsource to vendor with liability
  Accept — document decision; Dr. Lewis + entity CEO sign off; low-risk items only
  Avoid — stop the activity that creates the risk

STANDARD RISK CATEGORIES (MBL portfolio):
  1. Unauthorized access (account compromise; privilege abuse; insider threat)
  2. Data breach (PHI; financial data; LP data; campaign data)
  3. Ransomware / malware (endpoint; cloud; backup)
  4. Phishing / social engineering (credential theft; business email compromise)
  5. Third-party / vendor risk (vendor breach; SaaS outage; API abuse)
  6. Regulatory / compliance (HIPAA; CCPA; SEC; state laws)
  7. Business continuity (cloud outage; DR failure; key person dependency)
  8. Misconfiguration (cloud; network; application)
  9. Physical security (device theft; unauthorized data center access)
  10. Emerging threats (AI-generated attacks; new vulnerability classes)

ENTITY-SPECIFIC RISK CATALOG:

  ALLEVIO (HIPAA-regulated — risk analysis required):
    Critical risks:
      PHI breach (AdvancedMD or Marshall Medical Billing compromise): Likelihood 3 × Impact 5 = 15 (High)
      Ransomware encrypting AdvancedMD or EHR data: Likelihood 3 × Impact 5 = 15 (High)
      Business Associate breach (vendor with PHI exposure): Likelihood 3 × Impact 4 = 12 (High)
      Insider PHI access (unauthorized employee data access): Likelihood 2 × Impact 4 = 8 (Medium)
    HIPAA: HIPAA Security Rule §164.308(a)(1) requires documented risk analysis;
           must identify all PHI flows; assess threats and vulnerabilities; score risks
           Annual update required; Dr. Lewis documents and retains for 6 years
           
  COLUMN6 (CCPA; consumer data):
    High risks:
      Consumer data breach (targeting data exposure): Likelihood 3 × Impact 4 = 12 (High)
      Pixel/tag injection (malicious third-party tags collecting data): Likelihood 3 × Impact 3 = 9 (Medium)
      Unauthorized cross-agency data access (agency A seeing agency B data): Likelihood 2 × Impact 4 = 8 (Medium)
      
  HIVE (LP data; Covercy):
    Medium risks:
      Covercy API credential compromise: Likelihood 2 × Impact 4 = 8 (Medium)
      LP data unauthorized access: Likelihood 2 × Impact 4 = 8 (Medium)
      
  MBL HoldCo (M365; Krista.ai; financial data):
    High risks:
      Business Email Compromise (BEC) targeting financial transfers: Likelihood 4 × Impact 4 = 16 (Critical)
      M365 admin account compromise: Likelihood 3 × Impact 5 = 15 (High)
      Krista.ai integration credential exposure: Likelihood 2 × Impact 4 = 8 (Medium)

RISK REGISTER FIELDS (per risk entry):
  Risk ID; Category; Description; Entity; Threat source; Vulnerability;
  Inherent likelihood; Inherent impact; Inherent score; Current controls;
  Residual likelihood; Residual impact; Residual score; Risk level;
  Treatment decision; Treatment owner; Treatment due date; Review date;
  Dr. Lewis acceptance signature (for accepted risks); Status
```

## Output Format

```markdown
# Security Risk Register — [Entity] | v[N] | [Date]
**Owner:** Dr. John Lewis | **Annual review:** [Month] | **HIPAA analysis:** [Attached/N/A]

---

## Risk Summary
| Level | Count | Trend vs. Prior Period |
|-------|-------|----------------------|
| Critical | [N] | ↑/↓/→ [N change] |
| High | [N] | ↑/↓/→ |
| Medium | [N] | ↑/↓/→ |
| Low | [N] | ↑/↓/→ |

---

## Top 5 Risks

| ID | Risk | Score | Owner | Treatment | Due | Status |
|----|------|-------|-------|-----------|-----|--------|
| R01 | [BEC targeting financial transfers] | 16 — Critical | [Name] | Mitigate — MFA + financial transfer verification | [Date] | 🔴 In progress |

---

## Accepted Risks
| ID | Risk | Score | Decision date | Dr. Lewis sign-off | Review date |
|----|------|-------|---------------|--------------------|-------------|
```

## Output Contract
- Every Critical and High risk must have a named owner, a specific treatment action, and a due date — a risk register that says "Risk: ransomware — Treatment: mitigate — Owner: IT" without a due date and a specific action is a documentation exercise, not a risk management exercise; Dr. Lewis reviews all Critical and High risks monthly; if a treatment action is overdue without a documented reason, Dr. Lewis escalates to the entity CEO; acceptable overdue reasons: vendor delay with new date committed; interim compensating control in place; budget approval pending (with specific approval timeline)
- HIPAA risk analysis for Allevio is a specific regulatory requirement — it is not the same as the general risk register; the HIPAA risk analysis must: identify all PHI (electronic Protected Health Information) flows in Allevio's systems; identify all reasonably anticipated threats and vulnerabilities to PHI; assess the likelihood and impact of each threat; document the current security measures; document the risk level after current measures; be retained for 6 years; be reviewed and updated annually and when significant operational changes occur; Dr. Lewis signs and dates the HIPAA risk analysis; it is stored in SharePoint → Allevio → Security → HIPAA → Risk-Analysis → [Year]; it is NOT shared with vendors or external parties
- Risk acceptance requires dual sign-off — any risk scored Medium or higher that is accepted (rather than mitigated, transferred, or avoided) requires documented sign-off from Dr. Lewis AND the entity CEO; the rationale must be written (why is this risk acceptable? what's the cost of mitigation vs. the accepted risk?); accepted risks are reviewed at the next annual risk assessment; Critical risks cannot be accepted — they must be actively mitigated, transferred, or avoided; HITL: all accepted risks → Dr. Lewis + entity CEO co-sign acceptance documentation

## System Dependencies
- **Reads from:** Asset inventory (entity IT systems); HIPAA PHI flow documentation (Allevio — AdvancedMD; Marshall Medical Billing; employer portal); vulnerability scan results (sec-vulnerability-scanner); incident history (sec-incident-responder); security awareness training gaps; third-party vendor risk assessments (sec-third-party-security-manager); prior risk register version
- **Writes to:** Risk register document (SharePoint → [Entity] → Security → Risk-Register → [Year]); HIPAA risk analysis (SharePoint → Allevio → Security → HIPAA → Risk-Analysis → [Year]); security roadmap inputs (sec-security-roadmap-planner); security program status (sec-security-program-builder); entity CEO risk briefing (quarterly — Critical and High risks); Matt Mathison portfolio risk summary (annual)
- **HITL Required:** Risk acceptance (Medium+) → Dr. Lewis + entity CEO co-sign; Critical risks → cannot be accepted; must have active treatment plan; annual HIPAA risk analysis → Dr. Lewis signs and dates; new Critical risk identified → entity CEO notified within 48 hours; portfolio risk summary → Dr. Lewis prepares; Matt Mathison briefed annually

## Test Cases
1. **Golden path:** Annual Q1 risk assessment for Allevio. Dr. Lewis reviews risk register from prior year. Updates: (1) BEC risk — prior score 16 (Critical); treatment: MFA + financial transfer verification protocol implemented Q2 prior year; residual score now 9 (Medium) — moved from Critical to Medium; status: mitigated (in maintenance). (2) PHI breach via AdvancedMD — prior score 15 (High); treatment: BAA confirmed; encryption verified; access reviews quarterly; residual score 10 (High) — unchanged; status: active mitigation. (3) New risk added: AI-generated phishing targeting Allevio clinical staff (new threat class identified from industry reports); scored Likelihood 3 × Impact 4 = 12 (High); treatment: add AI phishing module to annual security awareness training (Q2); owner: IT; due: June 30. HIPAA risk analysis updated with new PHI flow discovered during the year (new billing integration with Marshall Medical Billing — added to PHI flow documentation). Dr. Lewis signs and dates. Stored in SharePoint.
2. **Edge case:** Entity CEO wants to accept a High-rated risk to avoid the $15K cost of mitigation ("it probably won't happen to us"): Dr. Lewis response: "A High risk (score 10-15) means we assess this as possible to likely with significant impact — in the $50K-$500K cost range if it occurs. Accepting a $15K mitigation cost to avoid a $50K-$500K exposure has a clear expected value case for mitigation. That said, if you want to formally accept this risk, we need: (1) written rationale documenting the decision and the cost-benefit analysis; (2) your signature and mine on the acceptance form; (3) this risk flagged for review at the next annual assessment. I want to flag: if this risk materializes and we have a documented decision to accept it with our signatures, that's our paper trail. For a Medium risk, I'd agree acceptance makes sense. For High, I'm recommending mitigation — but you have the authority to override with documented co-sign."
3. **Adversarial:** Vendor asks to see Allevio's HIPAA risk analysis to complete their "BAA due diligence": Dr. Lewis: "The HIPAA risk analysis is an internal document — it identifies our PHI flows, threats, and vulnerabilities. Sharing it with a vendor creates a roadmap of our security gaps for the vendor and potentially for anyone who might access the vendor's systems. We do not share the risk analysis with Business Associates. What we can provide: a completed BAA; a security questionnaire response confirming our controls; an attestation that we maintain a HIPAA risk analysis per §164.308(a)(1). The vendor's BAA due diligence does not require access to our internal risk assessment."

## Audit Log
Risk register version records (version; date; Dr. Lewis review; annual flag; entity; SharePoint). Risk acceptance records (risk ID; score; rationale; Dr. Lewis + entity CEO co-sign; date). HIPAA risk analysis records (Allevio — annual; Dr. Lewis signature; date; SharePoint; retained 6 years). Critical risk notification records (risk; entity CEO notification; date; treatment plan). New risk identification records (source; date; scoring; treatment assignment; Dr. Lewis review). Risk treatment overdue records (risk; original due; overdue date; escalation to entity CEO; revised plan).

## Deprecation
Risk register reviewed annually in Q1 (full) and quarterly (Critical and High risks). Risk scoring model reviewed when threat landscape changes significantly. HIPAA risk analysis requirements reviewed when HHS guidance changes. Risk categories updated when MBL portfolio or systems change materially.
