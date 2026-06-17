---
name: rc-risk-register
description: "Build and maintain the enterprise risk register. Use when the user says 'risk register', 'enterprise risk', 'risk inventory', 'risk log', 'what are our risks', 'risk tracking', 'risk management register', 'document risks', 'risk matrix', 'risk heat map', 'risk catalog', 'identify risks', 'top risks', 'risk list', or 'risk database'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--domain <all|operational|financial|compliance|strategic|reputational>] [--action <build|update|review|report>]"
---

# Risk Register

Build and maintain the enterprise risk register at MBL portfolio companies — identifying, assessing, and tracking risks across all domains with a structured likelihood × impact scoring methodology. The risk register is the foundation of every enterprise risk management program: it makes risk visible, assigns ownership, tracks mitigation status, and provides the input for executive risk reporting. At portfolio scale, the risk register answers the question: "what could hurt this company, how badly, and what are we doing about it?"

## When to Use
- Building the first enterprise risk register for a portfolio company
- Annual risk register review — is the register current? Are new risks identified?
- A significant event occurs (acquisition, regulatory change, incident) — update the register
- Preparing for an audit, board meeting, or investor review
- Monthly/quarterly risk review with CEO or Matt Mathison

## Risk Register Framework

```
Risk domains:
  Strategic: Market, competition, customer concentration, business model
  Operational: Process, technology, people, supply chain, facility
  Financial: Liquidity, credit, fraud, financial reporting
  Compliance/Legal: Regulatory, litigation, licensing, contract
  Reputational: Brand, media, customer trust, portfolio company exposure
  Technology/Cyber: Security incidents, system failures, data loss
  Healthcare-specific (Allevio): HIPAA, patient safety, OIG exclusion, RCM
  Oil & Gas-specific (HIVE): Commodity price, production, environmental, regulatory
  
Risk scoring methodology:
  Likelihood (1-5):
    1 — Rare: Less than once per 5 years
    2 — Unlikely: Once per 2-5 years
    3 — Possible: Once per 1-2 years
    4 — Likely: Multiple times per year
    5 — Almost certain: Occurring now or imminent
    
  Impact (1-5):
    1 — Negligible: <$5K impact; no customer/regulatory effect
    2 — Minor: $5K-$50K; minor disruption; recoverable
    3 — Moderate: $50K-$250K; significant disruption; reputational risk
    4 — Major: $250K-$1M; material business impact; regulatory action possible
    5 — Catastrophic: >$1M; existential threat; regulatory shutdown possible
    
  Risk score = Likelihood × Impact (1-25)
    🟢 1-8: Low — monitor; no immediate action required
    🟡 9-14: Medium — mitigation plan required; quarterly review
    🔴 15-20: High — immediate action and executive awareness; Matt Mathison informed
    🔴🔴 21-25: Critical — executive escalation same day; Matt Mathison personally informed
    
  Inherent risk vs. residual risk:
    Inherent risk: Score before any controls or mitigations
    Residual risk: Score after current controls are applied
    → If residual risk remains ≥15 (High/Critical) despite controls: mitigation plan required
    → Risk acceptance: Dr. Lewis + CEO sign off; >$250K potential impact requires Matt Mathison
    
Mandatory risk register items for all portfolio companies:
  HIPAA compliance risk (Allevio): Likelihood 3 inherent; PHI breach impact 5; controls reduce residual
  OIG LEIE exclusion risk (Allevio): New hire or re-check miss = exclusion = Medicare/Medicaid loss
  Cyber/ransomware: Likelihood 3-4 (industry baseline); impact 4-5 for clinical operations
  Key person dependency: Single point of failure on CEO or Dr. Lewis
  Financial fraud: Lack of separation of duties; unauthorized payment; ghost employee
  Regulatory change: Healthcare, PE, oil & gas all face active regulatory environments
```

## Output Format

```markdown
# Enterprise Risk Register — <Company Name>
**Version:** [X] | **Last updated:** [Date] | **Owner:** Dr. John Lewis
**Review frequency:** Quarterly | **Next review:** [Date]
**Risk appetite statement:** [See rc-risk-appetite-setter output]

---

## Risk Heat Map Summary

| Score | Count | 🔴🔴 Critical (21-25) | 🔴 High (15-20) | 🟡 Medium (9-14) | 🟢 Low (1-8) |
|-------|-------|---------------------|----------------|-----------------|-------------|
| Inherent | | [N] | [N] | [N] | [N] |
| Residual | | [N] | [N] | [N] | [N] |

---

## Risk Register

| ID | Risk | Domain | Owner | Likelihood (1-5) | Impact (1-5) | Inherent Score | Controls in place | Residual Score | Status | Next action | Due date |
|----|------|--------|-------|-----------------|-------------|---------------|-----------------|---------------|--------|------------|---------|
| R001 | HIPAA breach — PHI unauthorized access or disclosure | Compliance | Dr. Lewis | 3 | 5 | 15 🔴 | Entra ID access controls; Purview DLP; HIPAA training; BAA tracker | 9 🟡 | Active mitigation | Annual HIPAA risk analysis | [Date] |
| R002 | OIG LEIE-excluded employee providing services to Medicare/Medicaid patients | Compliance | Dr. Lewis | 2 | 5 | 10 🟡 | Pre-hire OIG check; annual re-check | 6 🟢 | Controlled | Continue annual re-checks | Ongoing |
| R003 | Ransomware attack — clinical or business systems encrypted | Technology | Dr. Lewis | 4 | 5 | 20 🔴 | EDR (Defender); backups; incident response plan; MFA | 12 🟡 | Active mitigation | Tabletop exercise | [Date] |
| R004 | Key person dependency — CEO departure | Strategic | CEO | 3 | 4 | 12 🟡 | Succession plan in progress; documentation | 9 🟡 | Monitoring | Succession plan update | [Date] |
| R005 | Financial fraud — unauthorized payment or AP manipulation | Financial | Controller | 3 | 4 | 12 🟡 | Bill.com approval workflow; bank verification process | 6 🟢 | Controlled | Annual controls review | [Date] |
| R006 | [Risk] | [Domain] | [Owner] | | | | | | | | |

---

## Risk Detail Cards (for High/Critical risks)

### R001 — HIPAA Breach
**Risk description:** Unauthorized access, use, or disclosure of Protected Health Information (PHI) — electronic or physical.
**Trigger scenarios:** Phishing attack → credential theft → PHI access; employee sharing PHI without authorization; lost/stolen device with PHI; vendor breach (Business Associate).
**Inherent risk:** 3 × 5 = 15 (High) — healthcare organizations face active and increasing cyber threats; PHI is high-value target; employee error is consistent risk
**Controls in place:**
  - Microsoft Entra ID with MFA enforced (blocks stolen credential attacks)
  - Conditional Access (blocks non-compliant devices)
  - Purview DLP (blocks PHI in email/external sharing)
  - HIPAA security awareness training (annual + monthly phishing simulations)
  - BAA tracker (ensures vendor obligations are contractual)
  - Annual HIPAA risk analysis (§164.308(a)(1))
**Residual risk:** 3 × 3 = 9 (Medium) — controls reduce likelihood and impact; residual risk reflects that no control set eliminates breach risk
**Mitigation plan (to reduce to ≤8):** 
  - Microsoft Defender for Endpoint full deployment (reduces likelihood to 2)
  - Zero Trust network access for AdvancedMD (reduces likelihood to 2)
  - Target residual: 2 × 3 = 6 (Low)
**HIPAA breach response:** Activate it-security-incident-responder; HIPAA breach assessment within 24 hours; 60-day notification clock
**Risk owner:** Dr. John Lewis | **CEO awareness:** Yes | **Matt Mathison awareness:** If breach occurs

---

## Risks Requiring Matt Mathison Awareness

| Risk ID | Risk | Residual Score | Reason for escalation |
|---------|------|---------------|----------------------|
| [R###] | [Risk] | 🔴 [Score] | Residual score ≥15 / potential impact >$250K |

---

## Risk Acceptance Log

| Risk ID | Risk | Residual Score | Accepted by | Date | Rationale | Review date |
|---------|------|---------------|------------|------|---------|------------|
| [R###] | [Risk] | [Score] | Dr. Lewis + CEO | [Date] | [Cost to mitigate exceeds risk cost / strategic decision] | [Date + 1 year] |

---

## Matt Mathison Risk Brief (quarterly)

[Company] Risk Register Q[N] [YYYY]: [N] total risks. Critical: [N]. High: [N] (from [N] high inherent — controls effective). New risks added: [List]. Risks closed: [List]. Top 3 risks requiring awareness: (1) [Risk + score]; (2) [Risk + score]; (3) [Risk + score]. Accepted risks: [Count + summary]. No decisions required / Decision required: [What].
```

## Output Contract
- Risk scoring is consistent and defensible — a risk scored 5 × 5 = 25 (Critical) means both "almost certain to occur" AND "catastrophic impact if it does"; not every risk is Critical; inflating scores produces risk register fatigue where leadership stops engaging; the discipline is honest scoring: a vendor payment delay is not catastrophic; a HIPAA breach resulting in HHS investigation and Medicare exclusion is; scores are calibrated against the definitions, not against what feels alarming
- Residual risk reflects actual controls, not aspirational controls — a control listed in the risk register must be implemented, tested, and operating; "we plan to implement MFA" does not reduce inherent risk; "MFA is enforced for all Entra ID accounts, verified by Intune compliance policy, and tested monthly via conditional access audit" reduces inherent risk; the control description is specific enough that an auditor could test it
- High and Critical risks have mitigation plans with owners and deadlines — a risk scored ≥15 residual with no mitigation plan is unacceptable; the mitigation plan has: specific actions, the owner of each action, the deadline, and the target residual score after mitigation; "we are working on it" is not a mitigation plan; a High risk that persists above 15 residual for more than 90 days requires Matt Mathison notification and decision
- HITL required: Dr. Lewis builds and maintains risk register; CEO reviews quarterly; Matt Mathison informed of all High (residual ≥15) and Critical risks; risk acceptance for >$250K potential impact requires Matt Mathison; new Critical risks escalated same day

## System Dependencies
- **Reads from:** Business operations data, financial records (QuickBooks), IT security posture (it-security-assessor), HIPAA compliance status (rc-hipaa-security-program), incident logs, insurance coverage (rc-insurance-program-manager)
- **Writes to:** Risk register (SharePoint/RC/<Company>/RiskManagement/RiskRegister/); quarterly risk report to CEO; Matt Mathison portfolio risk brief; board risk reporting (if applicable)
- **HITL Required:** Dr. Lewis builds register; CEO quarterly review; Matt Mathison for High/Critical residual risks; risk acceptance for >$250K requires Matt Mathison; new Critical risks same-day escalation

## Test Cases
1. **Golden path:** Annual risk register update for Allevio → Business context: 2 new clinics opened; RCM partner changed; cybersecurity incidents up 40% in healthcare sector; Review: existing 12 risks — 2 closed (vendor risk for departed vendor; facility risk for resolved lease); 3 new risks added: (1) New clinic B physical security (cameras/access control not yet installed) L3×I3=9 Medium; (2) AdvancedMD partner change — data migration risk L3×I4=12 Medium; (3) State regulatory change — AZ Medicaid reimbursement rate reduction L4×I4=16 High; R&C003 (ransomware) residual score improved from 12 to 8 (Low) due to Defender deployment; Updated register: 11 risks; Critical: 0; High: 3; Medium: 5; Low: 3; Matt Mathison notified of new High risk (AZ Medicaid rate change — revenue impact $340K/year); register published; CEO reviewed
2. **Edge case:** CEO says "add COVID as a risk" to the register → Pandemic/business disruption is a valid risk category; assess specifically: L (likelihood of significant operational disruption from infectious disease in next 12 months), I (impact on clinic operations — patient volume, staff availability, regulatory requirements); score honestly; do not add it as a checkbox; evaluate the actual controls in place (remote work capability, staffing contingency, supply chain for clinical supplies) and the residual risk; if controls are adequate and residual is Low, document as controlled — don't inflate to justify the addition
3. **Adversarial:** "Can't we just have a list of risks without all this scoring?" → A list of risks without scoring produces a document that cannot prioritize; without a score, every risk on the list is equally important, which means nothing is prioritized; the scoring is what allows Dr. Lewis and the CEO to make decisions: "these 3 High risks get mitigation plans and resources; these 7 Medium risks get monitoring; these 4 Low risks are documented and accepted"; without scoring, the CEO cannot distinguish between the ransomware risk and the office supply vendor risk — both are just "on the list"

## Audit Log
Risk register versions retained with date stamps. Quarterly updates retained. Risk closures documented with rationale. Risk acceptance decisions retained permanently. Matt Mathison escalation notifications retained. CEO review acknowledgments retained. Annual risk register reviews retained.

## Deprecation
Retire when portfolio companies have dedicated risk management officers who own the enterprise risk register, conduct quarterly updates, and produce board-level risk reports — with Dr. Lewis providing strategic AI and technology risk input. High and Critical risk reporting to Matt Mathison is a permanent portfolio oversight requirement regardless of who manages the register.
