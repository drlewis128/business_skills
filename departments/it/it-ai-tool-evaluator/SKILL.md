---
name: it-ai-tool-evaluator
description: "Evaluate AI tools for enterprise use — security, data handling, and fit. Use when the user says 'evaluate AI tool', 'AI security review', 'AI tool assessment', 'should we use this AI tool', 'AI vendor evaluation', 'ChatGPT enterprise', 'AI data privacy', 'AI tool risks', 'LLM enterprise use', 'AI tool vetting', 'AI in the enterprise', 'AI tool security', or 'evaluate AI for the team'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--tool <tool name>] [--entity <company name>] [--use-case <description>] [--data-sensitivity <low|medium|high|PHI>]"
---

# IT AI Tool Evaluator

Evaluate AI tools before enterprise deployment at MBL portfolio companies — assessing data handling, privacy, security, cost, and organizational fit. AI tools introduce a new category of data security risk: employees are inputting company data, customer information, and in the worst case PHI into systems with opaque data handling practices. The evaluation framework ensures that any AI tool used with sensitive data has been reviewed for data privacy, training data policies, and compliance requirements before deployment.

## When to Use
- An employee is requesting to use an AI tool for company work (ChatGPT, Copilot, Claude, Perplexity, etc.)
- A team wants to deploy an AI tool for a specific workflow
- Evaluating AI tools for the MBL AI orchestration project (Krista.ai and integrations)
- A department is using an AI tool without IT approval — shadow AI discovery
- Before allowing any AI tool to process clinical data at Allevio

## AI Tool Evaluation Framework

```
Evaluation dimensions (weighted):
  Data privacy and handling (40%): Does the tool use inputs to train models? Where is data stored?
  Security posture (25%): Is it enterprise-grade? SSO/SAML available? SOC 2 Type II?
  Compliance requirements (20%): HIPAA BAA available? CCPA compliant? Data residency?
  Functional fit (10%): Does it actually solve the use case well?
  Cost and licensing (5%): Enterprise tier cost; per-seat or usage-based?
  
Key data handling questions (ask vendor or check documentation):
  1. Does the tool use user inputs to train/improve its models?
     → Default: YES for consumer tiers (ChatGPT free, Claude.ai free, etc.)
     → Enterprise tiers: Typically NO — confirm with vendor
  2. Where is data stored? (US-based? GDPR-compliant EU?)
  3. How long is data retained? (Conversation history, user inputs)
  4. Is data shared with third parties?
  5. SOC 2 Type II audit available?
  6. Is a HIPAA BAA available? (Required for Allevio PHI use cases — no exceptions)
  
Enterprise vs. consumer tier distinction:
  Consumer tier (free or basic): Data typically used for training; no enterprise controls; not appropriate for company data
  Enterprise tier: Data isolated; not used for training; SSO/SAML; security controls; audit logging
  
  Examples:
    ChatGPT Free/Plus: Data used for training (opt-out available but not reliable for enterprise) — NOT for company data
    ChatGPT Enterprise / Teams: Data not used for training; enterprise controls ✅
    Claude.ai (consumer): Anthropic uses to improve models — NOT for company data
    Claude API / Claude for Work: Data not used for training ✅
    Microsoft Copilot (M365): Data stays in M365 tenant; not used for training ✅ — enterprise ✅
    Perplexity (free): Data privacy unclear — NOT for sensitive company data
    
Allevio — PHI in AI tools (absolute prohibition without HIPAA BAA):
  PHI must NOT be entered into any AI tool that does not have:
    - A signed HIPAA BAA with Allevio
    - Documented assurance that PHI is not used for model training
    - US-based data storage (or equivalent protection)
  Current tools with HIPAA BAA available: Microsoft Copilot (M365), AWS Bedrock, Azure OpenAI
  Current tools WITHOUT HIPAA BAA: ChatGPT (any tier except confirmed enterprise health), most consumer AI tools
  Approach: De-identify data before AI input; or use approved enterprise AI tool with BAA
  
MBL AI tools approved/in-use:
  Krista.ai: MBL orchestration layer — enterprise; Dr. Lewis manages integration
  Claude API (Anthropic): Used in MBL AI systems built by Dr. Lewis — not used directly by employees
  Microsoft Copilot: M365 Business Premium includes Copilot elements (Teams, Outlook summaries)
```

## Output Format

```markdown
# AI Tool Evaluation — <Tool Name>
**Evaluated for:** [Use case description]
**Requesting entity/team:** [Company — Department]
**Data sensitivity:** Low / Medium / High / PHI
**Date:** [Date] | **Evaluator:** Dr. John Lewis

---

## Tool Overview

| Attribute | Value |
|-----------|-------|
| Tool name | [Name] |
| Vendor | [Vendor] |
| Tier evaluated | [Free / Pro / Team / Enterprise] |
| Pricing | $[X]/user/month or [usage-based] |
| Primary use case | [What the team wants to use it for] |

---

## Data Privacy Assessment

| Question | Answer | Source | Risk |
|---------|--------|--------|------|
| Does vendor use inputs for training? | Yes / No / Opt-out | [Privacy policy / Enterprise agreement] | 🔴/🟡/🟢 |
| Data retained how long? | [Duration] | | |
| Data shared with third parties? | Yes / No | | 🔴/🟢 |
| Data stored in US? | Yes / No | | |
| SOC 2 Type II audit available? | Yes / No | [Audit date] | |
| Enterprise data isolation available? | Yes / No / Enterprise tier required | | |

**Data privacy rating:** Approved / Conditional (enterprise tier only) / Not Approved

---

## Security Assessment

| Control | Available? | Tier required | Notes |
|---------|-----------|--------------|-------|
| SSO / SAML | Yes / No | Enterprise | |
| MFA | Yes (required) / Optional / No | | |
| Audit logging | Yes / No | Enterprise | |
| Admin controls | Yes / No | | |
| Data export / portability | Yes / No | | |

**Security rating:** Enterprise-grade / Consumer-grade / Unknown

---

## Compliance

| Requirement | Status | Notes |
|-------------|--------|-------|
| HIPAA BAA available (Allevio only) | Yes / No / Enterprise only | If No: PHI use PROHIBITED |
| CCPA compliance documented | Yes / No | |
| GDPR compliance (if applicable) | Yes / No | |

**PHI compatibility (Allevio):** HIPAA BAA available ✅ / HIPAA BAA NOT available — PHI use prohibited 🔴

---

## Evaluation Summary

| Dimension | Score (1-5) | Weight | Weighted |
|-----------|-----------|--------|---------|
| Data privacy | [X] | 40% | [X] |
| Security | [X] | 25% | [X] |
| Compliance | [X] | 20% | [X] |
| Functional fit | [X] | 10% | [X] |
| Cost | [X] | 5% | [X] |
| **Total** | | 100% | **[X/5]** |

---

## Decision

**Verdict:** Approved / Conditionally Approved / Not Approved
**Tier:** [Enterprise only / Any tier / Specific plan]
**Conditions (if conditional):** [BAA required before Allevio use / Enterprise tier only / No company data with PHI]
**PHI use permitted:** Yes / No — [Reason]
**Approved use case:** [Description of approved use]
**Prohibited use:** [What employees must not do with this tool]

---

## Matt Mathison Brief (if significant AI investment or enterprise-wide deployment)

[Tool] evaluated for [use case]. Verdict: [Approved/Not approved]. Key considerations: [Data privacy, cost, HIPAA status]. Recommended action: [Approved for [specific use] at [tier]].
```

## Output Contract
- PHI in AI tools requires HIPAA BAA — no exceptions at Allevio; a clinical staff member inputting patient information into ChatGPT (even Enterprise) without a signed HIPAA BAA is a HIPAA violation; the "it seemed private" defense does not exist in HIPAA; approved AI tools for PHI use must have a signed BAA, documented data isolation, and US-based storage; the approved list is maintained by Dr. Lewis and communicated to all clinical staff; unapproved AI use with PHI triggers it-security-incident-responder
- Enterprise tiers are not automatic — "we are using the paid version" is not the same as enterprise data protections; ChatGPT Plus ($20/month individual) uses data for training by default; ChatGPT Enterprise/Teams has data isolation; the specific tier and configuration must be verified, not assumed; Dr. Lewis verifies data handling policy for the specific tier and documents it
- Approved AI tools get explicit use-case boundaries — approval is for a specific use case with defined data sensitivity, not a blanket "you can use AI for anything"; the approval documents what data can and cannot be entered into the tool; employees are informed of the boundaries at time of rollout; the approved tool list is maintained and reviewed annually
- HITL required: Dr. Lewis evaluates all AI tools before enterprise use; PHI-touching AI tools require Dr. Lewis + Privacy Officer (Allevio) review and BAA signing before deployment; enterprise AI tool investments >$5K/year require CEO approval; Krista.ai and AI orchestration tools require Dr. Lewis ownership; unapproved AI use discovered via shadow IT triggers it-saas-governance and, if PHI involved, it-security-incident-responder

## System Dependencies
- **Reads from:** Vendor privacy policy, enterprise agreement, SOC 2 audit report, HIPAA BAA availability confirmation, it-saas-governance (shadow AI discovery)
- **Writes to:** AI tool evaluation report (SharePoint/Ops/<Company>/IT/AI/Evaluations/); approved AI tool list; HIPAA BAA tracker for AI tools (Allevio); data handling policy documentation
- **HITL Required:** Dr. Lewis evaluates all AI tools; PHI tools require Dr. Lewis + Privacy Officer (Allevio); enterprise investment >$5K/year by CEO; unapproved PHI use triggers incident response; annual review of approved AI tool list by Dr. Lewis

## Test Cases
1. **Golden path:** Allevio clinical coordinator requests to use ChatGPT to help draft patient communication letters → Evaluation: (1) What data will be entered? Patient names and appointment details (PHI); (2) ChatGPT tier: Plus ($20/month individual plan) — uses inputs for training, no HIPAA BAA available at this tier; Verdict: NOT APPROVED for this use case with PHI; Alternative: Microsoft Copilot (included in M365 Business Premium) — Microsoft provides HIPAA BAA, data stays in M365 tenant, not used for training; Alternative 2: De-identify the template ("Dear Patient" as placeholder) then use any AI tool for drafting language; Recommendation: Use Copilot in Outlook/Word for letter drafting — PHI remains in M365; approved ✅; document and communicate to clinical staff
2. **Edge case:** The marketing team at North Vista wants to use an AI content generator (Jasper.ai) for campaign copy — no PHI involved → Lower risk evaluation: (1) Data type: marketing copy, campaign ideas — no PHI, no financial data; (2) Jasper Enterprise: data not used for training; SOC 2 Type II ✅; (3) Cost: $59/seat/month for Team tier; (4) Alternatives: Microsoft Copilot (M365 — free for licensed users); Claude.ai via Anthropic API (already in use by Dr. Lewis); Conditional approval: Jasper Team tier if North Vista wants dedicated workflows; alternatively, use Copilot which is already licensed — same capability for $0 incremental cost; recommend Copilot first; if workflow gaps identified, re-evaluate Jasper in Q3
3. **Adversarial:** "Everyone is using ChatGPT — we can't be the company that bans it" → The goal is not to ban AI tools — it is to ensure they are used appropriately; ChatGPT Enterprise is approved for non-sensitive company data use; what is not approved is entering PHI, financial account data, or confidential deal information into consumer-tier AI tools that use that data for training; frame it as: "here is what you can use AI for, here is the approved tool, here is what to keep out of AI tools"; the answer to "everyone is using it" is "yes, and we've evaluated and approved these tools for appropriate use cases"

## Audit Log
AI tool evaluations retained with decision and rationale. Approved AI tool list versioned. HIPAA BAA status for AI tools retained (Allevio). Shadow AI discoveries documented. Unapproved PHI use incidents retained permanently. Annual approved list reviews retained.

## Deprecation
Retire when MBL Partners has a formal AI governance function (separate from IT) that maintains an enterprise AI tool catalog with evaluation frameworks, approved tool lists, and HIPAA BAA tracking — with Dr. Lewis providing IT security review and Krista.ai integration oversight. PHI AI tool evaluation at Allevio requires Privacy Officer involvement permanently.
