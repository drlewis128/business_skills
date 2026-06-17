---
name: rc-risk-assessor
description: "Conduct a structured risk assessment for a specific area, project, or initiative. Use when the user says 'risk assessment', 'assess the risk', 'risk analysis', 'risk evaluation', 'risk review', 'pre-project risk', 'what could go wrong', 'risk of this decision', 'risk of this initiative', 'risk due diligence', 'new project risks', 'risk identification workshop', or 'assess risk before we proceed'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--subject <project|system|decision|vendor|initiative>] [--entity <company name>] [--scope <brief|full>]"
---

# Risk Assessor

Conduct a structured risk assessment for a specific project, decision, initiative, or system at MBL portfolio companies — identifying what could go wrong, how badly, and what controls or mitigations apply before proceeding. This skill applies the same scoring methodology as rc-risk-register but focused on a single subject rather than the enterprise-wide view. Use it before major decisions, new initiatives, system implementations, or significant changes to existing operations.

## When to Use
- A new system or platform is being evaluated or implemented (pre-project risk assessment)
- A major business decision is pending — acquisition, new service line, new location
- A new vendor is being onboarded who will handle sensitive data or critical operations
- A significant process change is being made (automation, outsourcing, restructuring)
- Leadership wants a "what could go wrong" analysis before committing resources
- An AI tool or automation is being deployed (see also it-ai-tool-evaluator for IT-specific)

## Risk Assessment Framework

```
Assessment dimensions (for any subject):
  Operational risk: Could this disrupt operations? What processes depend on this?
  Financial risk: What is the financial exposure if this fails or goes wrong?
  Compliance/Regulatory risk: Are there regulatory implications? HIPAA, OSHA, labor law?
  Reputational risk: If this fails publicly, what is the reputational damage?
  Technology/Security risk: What are the cybersecurity or data handling risks?
  People risk: Are there workforce implications (jobs, skills, culture)?
  Strategic risk: Does this align with the business strategy? Is there an opportunity cost?
  
Scoring:
  Likelihood (1-5): See rc-risk-register definitions
  Impact (1-5): See rc-risk-register definitions
  Score = Likelihood × Impact
  🟢 1-8: Low | 🟡 9-14: Medium | 🔴 15-20: High | 🔴🔴 21-25: Critical
  
Assessment output levels:
  Brief (for low-stakes decisions): 1-page risk summary; top 3 risks; go/no-go recommendation
  Full (for major decisions): Complete risk matrix; mitigation plan for each High/Critical risk; residual risk after mitigations; decision recommendation with conditions
  
Decision framework:
  All risks ≤ Medium (≤14) with mitigations: Proceed with normal management
  Any High (15-20) with mitigation plan: Proceed with conditions — execute mitigation before go-live
  Any Critical (21-25) with mitigation: Proceed only with CEO + Matt Mathison approval
  Any Critical (21-25) without viable mitigation: Do not proceed without redesign
  
Healthcare-specific triggers (Allevio — auto-add to any assessment):
  Does this involve PHI? → Add HIPAA compliance risk; BAA required before go-live
  Does this involve new vendor touching patient data? → BAA + HIPAA assessment required
  Does this involve clinical workflows? → Patient safety risk required
  Does this affect billing/RCM? → Revenue integrity risk required; OIG exposure check
  
AI/automation-specific triggers (any entity):
  Does this automate a financial transaction? → HITL required; unauthorized payment risk
  Does this involve AI making decisions about people? → Bias risk; explainability required
  Does this send automated communications to customers? → Regulatory and reputational risk
  Does this connect to a system of record (QB, Bill.com, AdvancedMD)? → Data integrity risk
```

## Output Format

```markdown
# Risk Assessment — <Subject>
**Entity:** [Company] | **Date:** [Date] | **Assessor:** Dr. John Lewis
**Assessment type:** Brief / Full
**Decision pending:** [Description of the decision this assessment supports]

---

## Executive Summary

**Recommendation:** ✅ Proceed / ⚠️ Proceed with conditions / 🛑 Do not proceed pending redesign
**Overall risk level:** 🟢 Low / 🟡 Medium / 🔴 High / 🔴🔴 Critical

**Top 3 risks:**
1. [Risk — Score — Status]
2.
3.

**Conditions for proceeding (if applicable):**
- [What must be true before go-live]
- BAA executed before [vendor] handles PHI [Allevio — if applicable]

---

## Risk Matrix

| # | Risk | Dimension | Likelihood | Impact | Score | Controls/Mitigations | Residual | Owner |
|---|------|-----------|-----------|--------|-------|---------------------|---------|-------|
| 1 | [Risk description] | [Dimension] | [1-5] | [1-5] | [Score] 🟢/🟡/🔴 | [Controls] | [Residual] | [Owner] |
| 2 | | | | | | | | |
| 3 | | | | | | | | |

---

## High / Critical Risk Detail

### Risk [N]: [Risk Name]
**Description:** [Specific failure scenario — what happens, not just "risk of failure"]
**Trigger scenarios:** [2-3 specific ways this risk materializes]
**Inherent score:** [L] × [I] = [Score]
**Controls that apply:** [Specific controls already in place]
**Mitigation plan (if residual ≥ 9):**
  - Action 1: [Specific action] — Owner: [Name] — By: [Date]
  - Action 2:
  - Action 3:
**Residual score after mitigation:** [L] × [I] = [Score]
**Go-live condition:** [Must be done before proceeding] / [Monitor after launch]
**Escalation:** CEO approval required / Matt Mathison approval required / Dr. Lewis decision

---

## Compliance Check (Allevio — if PHI or regulatory implications)

| Compliance requirement | Status | Action required |
|-----------------------|--------|----------------|
| HIPAA Business Associate Agreement | Executed / Not executed — required before go-live | [Action] |
| HIPAA Privacy Impact Assessment | Complete / Required | [Action] |
| OIG LEIE check (if new clinical vendor) | Complete / Required | [Action] |
| HIPAA Security Rule assessment | Complete / Required | [Action] |

---

## Decision Record

**Decision:** [Proceed / Proceed with conditions / Do not proceed]
**Decided by:** Dr. Lewis / Dr. Lewis + CEO / Dr. Lewis + CEO + Matt Mathison
**Conditions recorded:** [List of pre-go-live conditions]
**Residual risks accepted:** [List of accepted residual risks with owner]
**Review date:** [Date to re-assess after implementation]
```

## Output Contract
- The assessment addresses specific scenarios, not general categories — "data risk" is not a risk; "a phishing attack compromises the API credentials used to connect QuickBooks to the new automation, allowing unauthorized access to financial records" is a risk; specific scenarios drive specific mitigations; generic risks produce generic "we should be careful" responses that don't actually change anything
- Conditions for proceeding are binary gates, not aspirations — if the assessment identifies "BAA must be executed before PHI data flows to the vendor," that is a go-live condition that is verified before launch — not a recommendation to try to get done at some point; if the condition is not met, the launch does not proceed; Dr. Lewis enforces these gates; the CEO is informed of any conditions that are waived
- AI and automation assessments always include unauthorized action risk — an automation that can move money, send communications, or modify records must have HITL for the actions that cannot be undone; the risk assessment identifies these specifically; "the automation sends an invoice for $X without approval" or "the automation deletes records that cannot be recovered" are the scenarios that must be explicitly scoped and mitigated in any automation deployment
- HITL required: Dr. Lewis conducts all risk assessments; CEO involved in decisions where any risk is High (≥15) residual; Matt Mathison for Critical residual risks or decisions with >$250K exposure; HIPAA compliance review (Privacy Officer) for PHI-involved assessments at Allevio

## System Dependencies
- **Reads from:** Project/initiative documentation, vendor proposals (rc-third-party-compliance for vendor risk), IT security posture (it-security-assessor), compliance status (rc-hipaa-security-program for Allevio), existing controls inventory
- **Writes to:** Risk assessment report (SharePoint/RC/<Company>/RiskManagement/Assessments/); decision record; conditions tracker; risk register update (new risks identified feed into rc-risk-register)
- **HITL Required:** Dr. Lewis conducts assessment; CEO for decisions with High residual risks; Matt Mathison for Critical risks or >$250K exposure; Privacy Officer for PHI-involved assessments (Allevio)

## Test Cases
1. **Golden path:** Allevio evaluating a new AI documentation assistant that uses patient conversation transcripts to auto-populate clinical notes → Full assessment triggered by PHI involvement; Risks identified: (1) PHI processed by AI vendor without BAA: L4×I5=20 🔴 Critical — mitigation: BAA required before any data flows; residual: 1×5=5 (BAA eliminates likelihood); (2) AI hallucination in clinical notes — incorrect medication or diagnosis: L3×I5=15 🔴 High — mitigation: physician review required before note is finalized (HITL); residual: 3×2=6; (3) Vendor security breach exposing PHI: L3×I5=15 🔴 — mitigation: SOC 2 Type II required, BAA, HIPAA assessment; residual: 2×4=8; Go-live conditions: BAA executed ✅, SOC 2 Type II reviewed ✅, physician HITL workflow confirmed ✅; Recommendation: Proceed with conditions — all 3 conditions must be verified before clinical deployment; CEO informed; Privacy Officer sign-off required
2. **Edge case:** A brief assessment is requested for "switching our expense reimbursement from paper to an app" → Brief assessment appropriate (low-stakes operational change); Risks: (1) Employee data exposure (SSN/banking) if app lacks security — L2×I3=6 Low; (2) Audit trail gaps if app doesn't retain records — L2×I4=8 Low; (3) FLSA compliance — expense reimbursement timing — L2×I2=4 Low; All risks Low; mitigation: verify app has SOC 2/encryption, exports to QuickBooks; recommendation: Proceed — normal management; total assessment time: 20 minutes
3. **Adversarial:** "We don't have time for a risk assessment — we need to launch next week" → A brief risk assessment for a low-stakes decision takes 30 minutes; a full assessment for a major decision takes 2-4 hours; the question is not whether to assess risk but whether to know what the risks are before committing; proceeding without an assessment doesn't eliminate the risks — it eliminates the knowledge of the risks; for a next-week deadline: a 30-minute brief assessment that identifies the top 3 risks and go-live conditions is better than nothing; for a decision with >$100K exposure or PHI involvement, a 4-hour assessment is mandatory regardless of timeline — the alternative is discovering a HIPAA violation or system failure post-launch, which is always more expensive than the assessment

## Audit Log
Risk assessments retained by subject and date. Decision records retained with approver names. Conditions met/waived documentation retained. Residual risk acceptance records retained. CEO and Matt Mathison notifications retained. HIPAA-related assessments retained permanently (Allevio — 6-year retention).

## Deprecation
Retire when portfolio companies have dedicated risk management functions that conduct pre-project and pre-decision risk assessments as standard practice — with Dr. Lewis providing technology and AI risk assessment input and reviewing HIPAA risk assessments at Allevio.
