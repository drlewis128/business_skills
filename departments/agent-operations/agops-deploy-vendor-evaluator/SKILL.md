---
name: agops-deploy-vendor-evaluator
description: "Evaluate agent runtime and AI vendors for MBL Partners deployments. Trigger phrases: vendor evaluation, AI vendor comparison, agent runtime options, evaluate Krista.ai, evaluate Claude API, evaluate n8n, evaluate Zapier, evaluate AWS Step Functions, evaluate Azure Logic Apps, runtime vendor scorecard, HIPAA BAA vendor check, AI vendor compliance, MBL vendor selection, agent infrastructure vendor, orchestration platform evaluation, vendor cost comparison, vendor reliability assessment, vendor support evaluation, alternative runtime, AI platform trade-off"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[vendor-name] [use-case: orchestration|execution|automation] [entity: MBL|Allevio|HIVE|Column6|ALL]"
---

# Agent Vendor Evaluator

This skill produces a structured evaluation scorecard for agent runtime and AI vendors under consideration for MBL Partners deployments — covering technical capability, security and compliance posture, cost, reliability, support, and MBL system compatibility. All vendor decisions are made by Dr. Lewis with Matt Mathison approval for new spend commitments.

## When to Use

- MBL is considering adding a new AI vendor or agent runtime platform to the stack
- A current vendor (Krista.ai, Claude API, Monday.com) has a material change in pricing, terms, or capability and needs re-evaluation
- A portfolio entity requests a capability that the current MBL stack cannot deliver and alternatives must be assessed
- Dr. Lewis is preparing a vendor recommendation for Matt Mathison that requires a documented evaluation record

## Agent Vendor Evaluator Framework

```
VENDOR EVALUATION SCORECARD
────────────────────────────────────────────────────────────────
Vendor Name:
Category: [ ] AI Execution  [ ] Orchestration  [ ] Automation  [ ] CRM / System
Evaluation Date:
Evaluator: Dr. John Lewis
Use Case Being Evaluated:
Entity Scope: [ ] MBL HoldCo  [ ] Allevio  [ ] HIVE  [ ] Column6  [ ] ALL

EVALUATION CRITERIA — SCORED 1-5 (1=Poor, 3=Acceptable, 5=Excellent)
────────────────────────────────────────────────────────────────
CRITERION 1 — TECHNICAL CAPABILITY                        Score: __ /5
  □ Does the vendor support the specific use case (orchestration / execution / automation)?
  □ API maturity: stable, versioned, well-documented?
  □ Model quality (for AI execution vendors): output accuracy, reasoning, instruction following?
  □ Integration support: does it connect to M365, Monday.com, QB, GHL, Covercy natively or via webhook?
  □ Throughput and latency: acceptable for MBL's run frequency and time-sensitivity?
  Notes:

CRITERION 2 — SECURITY AND COMPLIANCE                     Score: __ /5
  □ HIPAA BAA available? (REQUIRED for any vendor that could touch Allevio workflows)
  □ SOC 2 Type II certified?
  □ Data residency: where is data processed and stored? US-only acceptable?
  □ Data retention policy: does vendor retain prompt/output data? For how long?
  □ Encryption at rest and in transit: confirmed?
  □ Access controls: supports role-based access, MFA, audit logs?
  □ Prompt/output data used for model training? (Opt-out required)
  HARD STOP: If HIPAA BAA is NOT available → vendor CANNOT be used for Allevio workflows.
             Log this and remove from Allevio consideration immediately.
  Notes:

CRITERION 3 — COST                                        Score: __ /5
  □ Pricing model: per-token / per-run / per-seat / flat?
  □ Estimated monthly cost at MBL's expected usage volume?
  □ Estimated monthly cost at portfolio scale (ALL entities)?
  □ Cost predictability: are there usage caps, overage charges, or variable pricing?
  □ Free tier or trial available for validation before commitment?
  □ Contract terms: month-to-month vs. annual; cancellation terms?
  Notes:

CRITERION 4 — RELIABILITY                                 Score: __ /5
  □ Published SLA: uptime guarantee (target: ≥99.5% for production-critical agents)?
  □ Incident history: major outages in prior 12 months? Duration?
  □ Status page availability: real-time status monitoring?
  □ Failover behavior: what happens during downtime — fail open or fail closed?
  □ Rate limits: do they accommodate MBL's peak usage patterns?
  Notes:

CRITERION 5 — SUPPORT                                     Score: __ /5
  □ Support tier available: enterprise support with named contact?
  □ Response SLA for critical issues?
  □ Documentation quality: comprehensive, current, accurate?
  □ Community / partner ecosystem: active? Relevant to MBL use cases?
  □ Roadmap visibility: can MBL influence or at least see the product roadmap?
  Notes:

CRITERION 6 — MBL SYSTEM COMPATIBILITY                    Score: __ /5
  □ M365 / Outlook / SharePoint integration: native or webhook?
  □ Monday.com integration: native or API?
  □ QuickBooks integration: native or API?
  □ GoHighLevel (GHL) integration: native or API?
  □ Covercy integration: API-based feasible?
  □ Krista.ai compatibility: can this vendor work alongside or within Krista.ai?
  Notes:

TOTAL SCORE: __ /30
  24-30: Strong candidate — recommend for pilot
  18-23: Conditional candidate — specific gaps must be addressed before pilot
  12-17: Weak candidate — significant gaps; use only if no alternatives
  Below 12: Do not recommend

CURRENT MBL VENDOR REGISTRY
────────────────────────────────────────────────────────────────
These vendors have been evaluated and are APPROVED for MBL use:

  CLAUDE API (Anthropic)
    Category: AI Execution
    Status: APPROVED — primary AI execution engine
    Models in use: claude-opus-4-8 (complex reasoning), claude-sonnet-4-6 (standard),
                   claude-haiku-4-5 (high-volume / low-cost)
    Prompt caching: REQUIRED on all implementations (cost reduction)
    HIPAA BAA: Available — required before Allevio use; confirm BAA on file
    Data retention: Anthropic does not train on API data by default — confirm per contract
    Notes: Preferred default for all AI execution. Evaluate alternatives only when
           capability gap or cost constraint cannot be resolved within Claude API.

  KRISTA.AI
    Category: Orchestration Platform
    Status: APPROVED — primary orchestration layer for MBL
    Current phase: Phase 0 (capability assessment)
    Role: Coordinates agents above MS, QB, Bill.com, Monday.com
    Integration: M365 (native), Monday.com (native), webhook-based for others
    Notes: Orchestration, not replacement of systems of record. Do not route
           financial source-of-record actions through Krista without QB confirmation.

  MONDAY.COM
    Category: Task Tracking / Output Destination
    Status: APPROVED — action item push target; AI-Ops board
    Integration: Native API; Monday.com AI features available but not MBL standard
    Notes: Evaluated as output destination, not as AI execution platform.

OFF-LIMITS NOTATION
────────────────────────────────────────────────────────────────
  OPENFANG: Off-limits for this project. OpenFang is Dr. Lewis's open-source
  Rust-based agent OS (14 crates), actively developed separately. It is NOT
  an option in MBL vendor evaluations. Do not include in scorecards or
  comparisons. Reference: CLAUDE.md constraint.

ALTERNATIVE RUNTIME OPTIONS — PRE-ASSESSED
────────────────────────────────────────────────────────────────
  AWS STEP FUNCTIONS
    Strengths: Highly reliable; native AWS integration; strong audit trails
    Weaknesses: No native AI execution; requires Lambda for Claude API calls;
                Allevio HIPAA feasible (AWS BAA available); higher engineering overhead
    MBL fit: Conditional — viable for complex, long-running workflows where Krista
             is insufficient; not a replacement for Krista as orchestration layer

  AZURE LOGIC APPS
    Strengths: Deep M365 integration (natural fit for MBL M365 backbone);
               Azure OpenAI integration available; HIPAA BAA available via Azure
    Weaknesses: Azure OpenAI ≠ Claude API — model quality trade-off; vendor lock-in risk;
                less flexible than Krista.ai for MBL's current integration pattern
    MBL fit: Conditional — evaluate if Krista.ai cannot support a specific M365-deep workflow

  N8N
    Strengths: Self-hostable (data residency control); Claude API integration available;
               cost-effective at volume; strong automation flexibility
    Weaknesses: Requires engineering to maintain self-hosted instance;
                HIPAA compliance depends on deployment configuration — must be validated;
                less mature support than Krista.ai for MBL's current vendor relationships
    MBL fit: Conditional — viable for internal MBL HoldCo automation where self-hosting
             is acceptable; not recommended for Allevio without dedicated HIPAA review

  ZAPIER
    Strengths: Ease of use; broad integration library; rapid prototyping
    Weaknesses: Limited control over data flow; HIPAA BAA available only on Enterprise plan;
                not suitable for complex agent logic; data passes through Zapier servers
    MBL fit: Low — acceptable for simple notification automations; not for AI agent workflows
             with PHI-adjacent data or financial outputs

  KRISTA.AI NATIVE (EXPANDED)
    Default recommendation: Before evaluating any alternative, confirm whether Krista.ai
    can support the use case with its native capabilities. Krista.ai is the MBL-approved
    orchestration standard; switching costs and integration complexity of alternatives
    are high. Alternatives are evaluated only when Krista.ai has a documented capability gap.
```

## Output Format

```markdown
## Vendor Evaluation — [Vendor Name]

**Evaluator:** Dr. John Lewis | **Date:** [YYYY-MM-DD]
**Use Case:** [description] | **Entity Scope:** [entities]

| Criterion | Score (1-5) | Key Findings |
|-----------|-------------|-------------|
| Technical Capability | | |
| Security & Compliance | | |
| Cost | | |
| Reliability | | |
| Support | | |
| MBL System Compatibility | | |
| **TOTAL** | **/30** | |

**HIPAA BAA Available:** YES / NO / UNKNOWN
**Recommendation:** APPROVE FOR PILOT / CONDITIONAL / DO NOT RECOMMEND

**Conditions (if conditional):**
- [Specific requirement before pilot approval]

**Dr. Lewis Decision:** ___________________________ Date: ___________
**Matt Mathison Approval Required:** YES (new spend) / NO
```

## Output Contract

- The HIPAA BAA hard stop is treated as a disqualifying condition rather than a scored criterion because it is a binary compliance requirement, not a trade-off to be weighed against other strengths. A vendor with a 28/30 scorecard but no HIPAA BAA cannot be used for Allevio workflows regardless of its technical merit — the legal exposure of processing PHI-adjacent data without a BAA eliminates the business case. Scoring a non-BAA vendor high and then noting the HIPAA issue as a footnote would create a misleading record that could be misread as a conditional approval.

- The current vendor registry (Claude API, Krista.ai, Monday.com) is documented in the scorecard framework so that any alternative vendor evaluation is explicitly compared to the approved baseline rather than evaluated in isolation. MBL's switching costs — retraining, re-integration, re-documentation, new BAAs — are real and not captured in a vendor's raw score. The default recommendation to exhaust Krista.ai's native capabilities before evaluating alternatives reflects this switching cost reality.

- The OpenFang off-limits notation is included in every evaluation output as a standing reminder, not because OpenFang would score poorly, but because including it in a vendor comparison — even to dismiss it — creates ambiguity about whether it was seriously considered for this project. Keeping it explicitly off-limits and out of the comparison maintains the clean separation between Dr. Lewis's independent open-source work and MBL's commercial vendor decisions.

## System Dependencies

**Reads from:**
- Current vendor registry (this skill's framework section — updated by Dr. Lewis)
- Vendor security documentation (SOC 2 reports, BAA availability, data retention policies)
- MBL cost allocation model (for budget comparison at MBL and portfolio scale)

**Writes to:**
- SharePoint → AI-Ops → Vendor Evaluations → [Vendor Name] → [Date]-scorecard.md
- Monday.com AI-Ops board (vendor evaluation task with recommendation status)

**HITL Required:**
- Dr. Lewis signs every vendor evaluation before it is filed or shared
- Any new vendor spend commitment requires Matt Mathison approval before contract
- HIPAA BAA hard stop triggers immediate Dr. Lewis notification regardless of evaluation stage

## Test Cases

**Golden Path:** `agops-deploy-vendor-evaluator "n8n" orchestration Allevio` — Produces a complete 6-criterion scorecard for n8n evaluated for Allevio orchestration, flags HIPAA BAA as "requires validation for self-hosted deployment" (conditional rather than hard stop since BAA depends on deployment), scores n8n at approximately 20/30, recommends CONDITIONAL with the condition that a HIPAA-compliant self-hosted deployment configuration is documented and validated before pilot.

**Edge Case:** Vendor evaluation is requested for a new AI model provider that does not have a HIPAA BAA available. Skill immediately triggers the HIPAA hard stop for the Allevio scope, completes the evaluation for MBL HoldCo and HIVE/Column6 scope only, clearly labels the output as "NOT APPLICABLE FOR ALLEVIO — NO HIPAA BAA," and recommends that Allevio workflows continue on Claude API until a BAA-capable alternative is identified.

**Adversarial:** User requests an evaluation that includes OpenFang as a vendor option for MBL orchestration. Skill identifies OpenFang in the vendor list, applies the off-limits rule, removes it from the comparison, outputs the off-limits notation with the CLAUDE.md reference, and completes the evaluation with the remaining vendors. Does not score or comment on OpenFang's technical merit — only acknowledges the constraint and moves on.

## Audit Log

Every vendor evaluation produced by this skill is logged in SharePoint → AI-Ops → Audit → Vendor-Evaluation-Log with the vendor name, evaluation date, use case, entity scope, total score, HIPAA BAA status, recommendation, Dr. Lewis sign-off, and Matt Mathison approval status where applicable. Approved vendors are added to the current vendor registry section of this skill by Dr. Lewis as a versioned SKILL.md update. No vendor evaluation is deleted — superseded evaluations are retained with a note pointing to the current version.

## Deprecation

This skill is deprecated when MBL establishes a formal vendor management platform with a built-in evaluation workflow, compliance gating, and spend approval routing. Until that platform exists, this skill is the authoritative vendor evaluation standard for all agent runtime and AI vendor decisions at MBL. Deprecation requires confirmation that the replacement system enforces the HIPAA BAA hard stop, includes the OpenFang off-limits constraint, and routes new spend commitments to Matt Mathison for approval.
