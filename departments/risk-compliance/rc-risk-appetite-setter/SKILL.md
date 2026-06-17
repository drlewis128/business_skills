---
name: rc-risk-appetite-setter
description: "Define risk appetite and tolerance thresholds for MBL portfolio companies. Use when the user says 'risk appetite', 'risk tolerance', 'how much risk is acceptable', 'define risk appetite', 'risk threshold', 'risk posture', 'what risks will we accept', 'risk appetite statement', 'board risk appetite', 'risk limits', or 'acceptable risk level'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--domain <all|financial|compliance|operational|strategic>] [--action <define|review|update>]"
---

# Risk Appetite Setter

Define and document risk appetite and tolerance thresholds for MBL portfolio companies — establishing the explicit boundaries within which the organization is willing to accept risk in pursuit of its objectives. Risk appetite answers: "how much risk are we willing to take?" Risk tolerance answers: "how much variation from the target are we willing to accept before taking action?" Without explicit risk appetite, every risk decision is made by individual judgment without a shared framework — producing inconsistent decisions and creating blind spots where risk accumulates.

## When to Use
- Building the first risk appetite framework for a portfolio company
- Annual risk appetite review — does the stated appetite still reflect the business strategy?
- A new business line or acquisition changes the risk profile — appetite needs updating
- Leadership is making inconsistent risk decisions — the framework creates alignment
- Preparing for an audit, investor review, or board meeting that expects a risk posture statement

## Risk Appetite Framework

```
Risk appetite by domain:
  Financial risk appetite:
    MBL portfolio standard: Conservative — protect capital; avoid material losses
    Appetite: Willing to accept moderate financial risk in pursuit of operational efficiency gains
    Tolerance: Financial variance ≤10% of budget without CEO approval; ≤5% unplanned CapEx without Matt Mathison
    Zero tolerance: Financial fraud; unauthorized payments; falsified records
    
  Compliance/Regulatory risk appetite:
    MBL portfolio standard: Zero tolerance — non-negotiable
    Appetite: No willingness to accept compliance violations that could result in regulatory action, fines, or exclusion
    Tolerance: No tolerance — any compliance violation triggers immediate remediation
    Zero tolerance: HIPAA violations (Allevio); OIG exclusion violations (Allevio); OFAC sanctions violations; FCPA violations
    
  Operational risk appetite:
    MBL portfolio standard: Low to moderate — operational efficiency enables growth, but reliability is required
    Appetite: Willing to accept controlled operational disruption to implement improvements; not willing to accept unplanned outages
    Tolerance: System downtime ≤4 hours/month unplanned for Tier 1 systems; help desk SLA ≥95%
    Zero tolerance: Patient safety risk (Allevio — any process change that could harm patients requires clinical sign-off)
    
  Strategic risk appetite:
    MBL portfolio standard: Moderate — PE holding company accepts strategic risk in pursuit of returns
    Appetite: Willing to accept calculated strategic risk (new service lines, acquisitions) where IRR target ≥20%
    Tolerance: Strategic initiatives reviewed at 6-month milestones; poor performance triggers pivot or exit discussion
    Zero tolerance: Misalignment with THRIVE values; reputational risk from unethical conduct
    
  Technology/Cyber risk appetite:
    MBL portfolio standard: Low — technology failures and breaches are unacceptable at portfolio scale
    Appetite: Not willing to accept known unmitigated cybersecurity risks; will accept residual risk after best-practice controls
    Tolerance: Residual cyber risk Medium (score ≤14) is acceptable after controls; High (≥15) requires active mitigation
    Zero tolerance: Known critical vulnerability (CVSS ≥9.0) left unpatched beyond 7 days; PHI in uncontrolled systems (Allevio)
    
  Reputational risk appetite:
    MBL portfolio standard: Very low — portfolio companies operate in trust-dependent industries (healthcare, PE, energy)
    Appetite: Not willing to accept actions or decisions that could create material reputational damage to MBL or portfolio companies
    Tolerance: Individual incidents managed quickly and transparently; no pattern of reputational incidents accepted
    Zero tolerance: Conduct inconsistent with THRIVE values; patient harm (Allevio); LP deception

Risk tolerance thresholds (escalation triggers):
  Any single risk with inherent score ≥20 (Critical): Matt Mathison notified same day
  Any residual risk ≥15 (High) with no mitigation plan: CEO approval required to accept; Matt Mathison informed
  Financial loss ≥$50K unplanned: CEO same day; ≥$250K: Matt Mathison same day
  HIPAA breach confirmed: CEO + Matt Mathison same day; attorney notification
  Regulatory action initiated: CEO + Matt Mathison same day + attorney
  Ransomware/significant cyber incident: CEO + Matt Mathison within 2 hours
```

## Output Format

```markdown
# Risk Appetite Statement — <Company Name>
**Version:** [X] | **Approved by:** CEO [Name] | **Date:** [Date]
**Reviewed by:** Dr. John Lewis | **Matt Mathison awareness:** [Date]
**Annual review date:** [Date + 12 months]

---

## Executive Summary

[Company] operates with a [Conservative / Low / Moderate / High] overall risk appetite, reflecting its position as a [healthcare/PE/energy/services] company with [regulatory compliance / patient safety / LP fiduciary duty / operational reliability] as non-negotiable priorities.

**Overall risk posture:** Conservative
**Primary risk driver:** [Regulatory compliance / Patient safety / Financial integrity / Operational reliability]

---

## Risk Appetite by Domain

| Domain | Appetite | Tolerance | Zero Tolerance |
|--------|---------|----------|----------------|
| Financial | Moderate — accept risk for efficiency | Budget variance ≤10% | Fraud; unauthorized payments; false records |
| Compliance/Regulatory | Zero — non-negotiable | No tolerance for violations | HIPAA; OIG exclusion; OFAC sanctions |
| Operational | Low to Moderate | Uptime ≥99.5%; SLA ≥95% | Patient safety risk (Allevio) |
| Strategic | Moderate — PE model accepts strategic risk | 6-month milestone reviews | THRIVE misalignment; unethical conduct |
| Technology/Cyber | Low | Residual cyber risk ≤14 after controls | Known critical vuln unpatched >7 days |
| Reputational | Very Low | Individual incidents — transparent response | THRIVE violations; patient harm; LP deception |

---

## Risk Tolerance Thresholds

| Event | Escalation | Timeline |
|-------|-----------|---------|
| Any risk with inherent score ≥20 | Matt Mathison informed | Same day |
| Residual risk ≥15 with no mitigation | CEO approval to accept | Within 48 hours |
| Unplanned financial loss ≥$50K | CEO notification | Same day |
| Unplanned financial loss ≥$250K | Matt Mathison notification | Same day |
| HIPAA breach confirmed | CEO + Matt Mathison + attorney | Same day |
| Regulatory action initiated | CEO + Matt Mathison + attorney | Same day |
| Ransomware/significant cyber incident | CEO + Matt Mathison | Within 2 hours |
| OIG exclusion discovered | CEO + Matt Mathison + attorney | Same day — stop services immediately |

---

## Risk Appetite Alignment with Business Strategy

[Company] strategy for [Year]: [2-3 sentence description of strategic priorities]

**Where appetite enables strategy:** [What strategic risks the company is willing to accept to achieve its goals]
**Where appetite constrains strategy:** [What the company will not do regardless of potential upside]
**Alignment with THRIVE:** Truth (accurate risk reporting), Integrity (no compliance shortcuts), Value (risk decisions balanced against ROI)

---

## Annual Review Record

| Year | Key changes from prior year | Approved by |
|------|---------------------------|------------|
| [Year] | [What changed and why] | [Names] |

---

## Matt Mathison Brief (annual appetite review)

[Company] risk appetite reviewed [Date]. Overall posture: Conservative. Changes from prior year: [What changed]. Compliance risk: Zero tolerance maintained. Key tolerance thresholds: unchanged / [Changes]. CEO approved. No decisions required from Matt / Decision required: [What].
```

## Output Contract
- Risk appetite is approved by the CEO, not just drafted by Dr. Lewis — the risk appetite statement is a governance document; it represents how the business will make risk decisions; it requires CEO ownership and explicit approval; Matt Mathison is informed annually; for portfolio companies with boards, the appetite statement is a board-level document; "Dr. Lewis set the risk appetite" is not correct — Dr. Lewis drafts and recommends; CEO approves; Matt Mathison is informed
- Zero tolerance items are enforced, not stated — a zero-tolerance item that is violated and not escalated immediately destroys the credibility of the entire risk appetite framework; OIG exclusion at Allevio is zero tolerance — if a check is missed and an excluded person provides services, the response is immediate service cessation, CEO notification, Matt Mathison notification, and legal counsel; "zero tolerance" means no exceptions and no delays
- Risk appetite is expressed in measurable terms, not platitudes — "we have a low risk appetite for cybersecurity" is not measurable; "residual cyber risk must be ≤14 (Medium) after controls; known Critical vulnerabilities (CVSS ≥9.0) must be patched within 7 days; any residual risk ≥15 (High) requires CEO notification and a mitigation plan within 30 days" is measurable; Dr. Lewis translates appetite statements into thresholds that can be monitored and reported
- HITL required: Dr. Lewis drafts risk appetite framework; CEO approves (mandatory); Matt Mathison informed annually; zero-tolerance escalations are immediate per the thresholds defined; board receives appetite statement if applicable

## System Dependencies
- **Reads from:** Business strategy, regulatory environment (rc-regulatory-change-monitor), current risk register (rc-risk-register), financial performance, insurance coverage (rc-insurance-program-manager)
- **Writes to:** Risk appetite statement (SharePoint/RC/<Company>/RiskManagement/RiskAppetite/); risk register (risk appetite feeds scoring context); compliance program documents
- **HITL Required:** Dr. Lewis drafts; CEO approves; Matt Mathison informed annually; zero-tolerance escalations per defined thresholds; board if applicable

## Test Cases
1. **Golden path:** Annual risk appetite review for Allevio → Business context: 2 new clinic openings; 15% revenue growth; AZ Medicaid reimbursement reduction; Review: compliance appetite — zero tolerance maintained (HIPAA, OIG LEIE); operational appetite — tightened uptime threshold from 99.5% to 99.7% due to AdvancedMD dependency on patient scheduling; financial appetite — added AZ Medicaid rate risk to strategic discussion; technology appetite — added AI tool deployment trigger (PHI in AI tools = zero tolerance without BAA); CEO reviewed and approved; Matt Mathison informed via quarterly brief; version 2 published to SharePoint
2. **Edge case:** Board investor asks "what is MBL's risk appetite?" → The risk appetite statement is the answer; it should be expressible in 5 minutes: "MBL portfolio maintains conservative overall risk appetite; zero tolerance for compliance violations (HIPAA at Allevio; fiduciary at all entities); low appetite for cybersecurity risk with specific thresholds; moderate strategic appetite for PE investment model; our tolerance thresholds trigger escalation to Matt Mathison for material risks"; the investor is testing whether risk management is structured or ad hoc; the appetite statement demonstrates structure
3. **Adversarial:** "Risk appetite sounds like corporate jargon — we just make good decisions" → "We make good decisions" is not a risk framework; without explicit appetite, decisions are made inconsistently: one manager accepts a vendor without a HIPAA BAA because the vendor relationship is good; another manager refuses any new vendor without 6 months of references; neither is "wrong" in the absence of an explicit standard; the risk appetite is what makes "good decisions" consistent and auditable; it also protects Dr. Lewis and the CEO — when a decision is made within the documented appetite, there is a defensible record; when a decision that violates the appetite results in a loss, the appetite document shows what the organization said it would do

## Audit Log
Risk appetite statements retained with version history. CEO approval records retained. Matt Mathison notifications retained. Annual review records retained. Zero-tolerance escalations retained permanently. Board risk appetite communications retained.

## Deprecation
Retire when portfolio companies have dedicated risk management officers and boards with formal risk committee governance — with Dr. Lewis providing input on technology and AI risk appetite thresholds. CEO ownership of risk appetite is a permanent governance requirement regardless of who drafts it.
