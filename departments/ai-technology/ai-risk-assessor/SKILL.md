---
name: ai-risk-assessor
description: "Assess risks of AI applications for MBL Partners and portfolio companies. Use when the user says 'AI risk', 'AI risk assessment', 'is this AI risky', 'AI safety', 'AI compliance risk', 'AI legal risk', 'AI data risk', 'AI privacy risk', 'AI bias risk', 'AI hallucination risk', 'AI output risk', 'AI error risk', 'AI regulatory risk', 'AI vendor risk', 'third-party AI risk', 'AI data exposure', 'AI audit', 'AI HIPAA risk', 'AI security risk', 'AI model risk', 'AI accuracy risk', 'AI governance risk', 'AI liability', 'AI controls', 'AI safeguards', 'AI guardrails', 'what could go wrong with AI', 'AI failure modes', 'AI rollout risk', 'what are the risks of using AI for this', 'HIPAA and AI', 'AI and healthcare compliance', or 'AI risk register'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--use-case <name>] [--entity <mbl|allevio|hive|column6>] [--action <assess|register|mitigate|report>]"
---

# AI Risk Assessor

Assess AI application risks for MBL Partners and portfolio companies — identifying failure modes (hallucination; data leakage; PHI exposure; bias; accuracy degradation; vendor dependency; audit gap) and producing a risk register with mitigations and residual risk ratings. AI risk at MBL is not theoretical — a single unreviewed summary with PHI, an incorrect financial recommendation, or a vendor BAA gap can produce real liability.

## When to Use
- Before deploying any new AI application or Krista workflow
- When evaluating a new AI vendor or tool
- During quarterly AI operations review
- When an AI output produces an unexpected or incorrect result

## AI Risk Assessment Framework

```
RISK DIMENSIONS (each rated: Likelihood × Impact = Risk Score):

  1. OUTPUT ACCURACY / HALLUCINATION
     Likelihood: How often does this AI application produce incorrect outputs?
       High: summarization without source verification; complex financial calculations; legal interpretation
       Medium: structured data extraction; classification; template completion
       Low: deterministic lookups; format conversion; rule-based filtering
     Impact: What happens when the output is wrong?
       Critical: LP-facing communication; financial commitment; regulatory filing; Allevio member communication
       High: Matt Mathison strategic decision input; deal valuation; compliance document
       Medium: Monday.com task; internal summary; draft document
       Low: formatting; categorization; non-critical content generation
     Mitigation: HITL review gate; output format constraints; source citation requirements; confidence scoring
     
  2. DATA EXPOSURE / PHI
     Likelihood: Does this AI application receive data that could contain PHI or sensitive data?
       High: Allevio clinical data; any data from AdvancedMD/Marshall; HR personal data; LP private info
       Medium: meeting transcripts (names; business context); financial data (entity-level)
       Low: internal process documents; template generation; public data processing
     Impact: Regulatory (HIPAA; CCPA); legal liability; reputational
     Mitigation: PHI exclusion at data input; de-identification before AI processing; BAA with vendor; audit trail
     ABSOLUTE: any AI application processing Allevio member data → HIPAA risk assessment MANDATORY before deployment
     
  3. VENDOR DEPENDENCY / PLATFORM RISK
     Likelihood: What happens if the AI vendor (Anthropic; Krista.ai; Microsoft) has downtime or changes?
     Impact: Workflow interruption; data lock-in; cost change; API deprecation
     Mitigation: HITL fallback documented; manual workflow documented; vendor contract reviewed; SLA confirmed
     
  4. BIAS / FAIRNESS
     Likelihood: Does this AI application make decisions or recommendations about people?
       High: hiring recommendations; performance assessments; compensation suggestions
       Low: financial analysis; process automation; document generation
     Impact: Legal (EEOC; FCRA); ethical; reputational
     Mitigation: Human decision authority confirmed; AI as input only; bias audit annually
     
  5. AUDIT TRAIL / EXPLAINABILITY
     Likelihood: Will this AI application's decisions need to be explained or audited?
       High: financial decisions; LP communications; compliance decisions; HR actions
       Low: internal summaries; content drafts; scheduling
     Impact: Regulatory audit failure; inability to investigate errors; legal discovery gap
     Mitigation: Audit log on all AI actions; rationale captured; Dr. Lewis approval records retained
     
  6. SCOPE CREEP / MISUSE
     Likelihood: Could this AI application be used for purposes beyond its intended design?
     Impact: Unreviewed outputs in sensitive contexts; PHI exposure via unexpected inputs
     Mitigation: Access controls; clear use case boundaries in workflow documentation; entity isolation
     
RISK SCORING:
  Likelihood: 3 (High) / 2 (Medium) / 1 (Low)
  Impact: 3 (Critical) / 2 (High) / 1 (Medium-Low)
  Risk Score = Likelihood × Impact: 9 (Critical) / 6 (High) / 4 (Medium) / 2-3 (Low) / 1 (Negligible)
  
ENTITY-SPECIFIC NON-NEGOTIABLES:
  Allevio: PHI risk = Critical regardless of likelihood — any PHI exposure is unacceptable
  HIVE: acquisition recommendation risk = Matt Mathison human decision required regardless of AI output
  MBL: financial system writes = HITL gate required; LP communication = Matt Mathison approval
  Column6: client campaign data = confidentiality control required before processing
```

## Output Format

```markdown
# AI Risk Assessment — [Use Case / Application Name]
**Entity:** [MBL/Allevio/HIVE/Column6] | **Assessed by:** Dr. Lewis | **Date:** [Date]

---

## Risk Register

| Risk | Likelihood | Impact | Score | Mitigation | Residual |
|------|-----------|--------|-------|-----------|---------|
| Output hallucination | H/M/L | Critical/High/Med | X | [HITL gate] | Low |
| PHI exposure | H/M/L | Critical | X | [De-identify; BAA] | Low |
| Vendor downtime | M | High | X | [Manual fallback] | Medium |

---

## Critical Risks (Score 6-9)
[List; each requires mitigation plan before deployment]

## Deployment Gate
**[APPROVED / CONDITIONAL (mitigations required) / BLOCKED]**
- Blocked items: [list]
- Required before deployment: [list]
```

## Output Contract
- Every Allevio AI application gets a PHI risk assessment before a single line is written — PHI risk for Allevio applications is assessed at the design stage, not the deployment stage; Dr. Lewis documents the PHI boundary for every Allevio AI use case: what data enters the AI model, how it is de-identified, and what the fallback is if de-identification fails; a PHI assessment that is created after the application is built is a cleanup exercise, not a risk control; the assessment is the gate that allows the build to begin, not the sign-off at the end
- A risk assessment that produces only "low" ratings without examining failure modes is not a risk assessment — Dr. Lewis adversarially challenges every AI application: "What is the worst plausible thing that could go wrong with this application?"; for meeting summary applications: "What if Krista summarizes the wrong meeting and pushes it to Monday.com?"; for financial applications: "What if Claude misreads a QuickBooks export and proposes a wrong cash balance?"; the adversarial scenario defines the mitigation, and the mitigation defines the HITL gate
- HITL required: assessment → Dr. Lewis completes; Allevio PHI assessment → Allevio entity CEO reviews before deployment authorization; any application scoring Critical (9) → Matt Mathison sees assessment before deployment decision; vendor risk assessment → Dr. Lewis + Matt Mathison for critical vendors; quarterly risk register review → Dr. Lewis reviews all deployed applications

## System Dependencies
- **Reads from:** Use case documentation; vendor BAAs and contracts; Krista.ai integration specs; HIPAA Security Rule requirements; entity data classification documentation; MBL systems map (CLAUDE.md)
- **Writes to:** AI Risk Register (SharePoint → MBL → AI Strategy → Risk Register); deployment gate decisions; Allevio PHI assessment records; Matt Mathison risk briefings (Critical-rated applications); quarterly AI operations risk report
- **HITL Required:** Allevio PHI → entity CEO; Critical-rated → Matt Mathison before deployment; vendor risk → Dr. Lewis + Matt Mathison; quarterly review → Dr. Lewis; deployment gate decisions require Dr. Lewis sign-off

## Test Cases
1. **Golden path:** New Krista workflow — meeting summary builder. Risk assessment: Output hallucination: Medium likelihood × High impact = 6 (High) → Mitigation: HITL gate; Dr. Lewis reviews before distribution; residual: Low. PHI exposure: Low likelihood × Critical impact = 3 (Low) → Mitigation: Meeting topics are business context; no clinical data enters workflow; Allevio-specific Krista workflows exclude member names from transcript processing. Vendor downtime: Medium × High = 6 → Mitigation: Manual fallback — Dr. Lewis builds summary manually from notes if Krista unavailable. Overall: CONDITIONAL — HITL gate must be designed in before deployment. Deployed with HITL gate confirmed.
2. **Edge case:** Allevio entity CEO wants to use an AI tool (a third-party vendor) to "analyze member engagement patterns" → PHI risk assessment: member engagement patterns = individual-level health behavioral data = PHI. Assessment: PHI exposure likelihood = Critical (member data enters vendor AI model); impact = Critical (HIPAA violation). Risk score = 9. Assessment: BLOCKED. Mitigation path: (1) Obtain vendor BAA; (2) De-identify data to employer-aggregate level before any AI processing; (3) Obtain Allevio entity CEO + legal counsel approval; (4) Re-assess after de-identification methodology is confirmed. Current recommendation: do not proceed until mitigation path is complete.
3. **Adversarial:** Dr. Lewis is pressed to skip the risk assessment for a "simple" internal AI tool ("it's just for internal process automation — no customer data, no financial data") → Dr. Lewis: "I hear you — the use case sounds straightforward. But 'no customer data' and 'no financial data' are the starting point, not the risk assessment. The questions I need to answer before deployment: (1) Does this tool have access to any shared systems where PHI or financial data could accidentally enter its scope? (2) Is the output going to be acted on directly or reviewed by a human first? (3) What's the audit trail — if this tool produces an output that causes a problem 6 months from now, can I reconstruct what it did and why? Those questions take me 30 minutes. I'll have the assessment done today."

## Audit Log
All risk assessments (permanent; SharePoint). PHI assessments (Allevio; permanent; separate log). Deployment gate decisions (approved/conditional/blocked; date; rationale). Critical risk escalations to Matt Mathison. Quarterly risk register review records. Vendor risk assessment records. Mitigation implementation records.

## Deprecation
Risk framework reviewed annually as AI capabilities and regulations evolve. Entity-specific constraints (HIPAA; O&G) reviewed when regulations change. Scoring weights reviewed as MBL's AI portfolio grows and failure modes become better understood. Vendor risk assessment updated when new AI vendors are added to the MBL stack.
