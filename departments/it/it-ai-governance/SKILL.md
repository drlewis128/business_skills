---
name: it-ai-governance
description: "Govern AI use policy, model risk, and data privacy in AI workflows. Use when the user says 'AI governance', 'AI policy', 'AI use policy', 'AI risk', 'model risk', 'responsible AI', 'AI ethics', 'AI guardrails', 'AI data privacy', 'AI acceptable use', 'governing AI', 'AI oversight', 'AI policy framework', 'AI risk management', or 'AI compliance'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <policy|risk-assessment|audit|review>] [--scope <enterprise|department|specific-use>]"
---

# IT AI Governance

Govern AI use at MBL portfolio companies — establishing AI use policy, managing model risk, ensuring data privacy in AI workflows, and providing oversight for AI deployments. AI governance at MBL is not about restricting AI use — it is about ensuring that AI is used in ways that protect data, produce reliable outputs, and align with MBL's THRIVE values and regulatory requirements. Dr. Lewis is the AI Strategy lead and the governance authority for AI use across the portfolio.

## When to Use
- Establishing an AI use policy for a portfolio company
- A new AI use case is proposed that needs governance review
- An AI tool or automation is producing incorrect or biased outputs that affect business decisions
- HIPAA compliance review at Allevio — are AI workflows handling PHI appropriately?
- Annual AI governance review — are policies current? Are new risks emerging?
- A vendor is proposing an AI-powered product — governance review before adoption

## AI Governance Framework

```
AI governance principles for MBL portfolio:
  1. Data first: Understand what data goes in before deploying any AI tool
  2. Human in the loop: AI assists decisions; humans make decisions (especially for financial and clinical)
  3. Accuracy over speed: A wrong AI output acted upon is worse than no AI output
  4. Least privilege for AI: AI systems access only the data they need for the specific task
  5. Audit everything: AI-generated actions affecting data, money, or people are logged
  6. PHI zero tolerance: No PHI in AI tools without HIPAA BAA; no exceptions (Allevio)
  7. THRIVE filter: AI use that violates Integrity (deceptive outputs), Respect (biased outputs),
     or Truth (incorrect outputs treated as fact) is a governance failure
  
AI use policy (for employee-facing policy):
  Approved uses:
    - Drafting emails, documents, proposals (non-PHI, non-highly-confidential)
    - Summarizing meeting notes (non-confidential meetings)
    - Code assistance, technical research
    - Marketing copy and content creation
    - Process documentation and SOP drafting
    
  Conditional uses (requires IT approval and tool vetting):
    - Summarizing financial data (approved tool + enterprise tier only)
    - AI-assisted clinical documentation at Allevio (approved tool + BAA + Privacy Officer review)
    - Customer-facing AI responses (human review required before sending)
    
  Prohibited uses:
    - Entering PHI into any AI tool without a signed BAA (Allevio — HIPAA)
    - Entering confidential LP return data, M&A targets, or deal terms into consumer AI tools
    - Using AI output as authoritative without human review for financial or clinical decisions
    - Using AI to generate compliance certifications or legal documents without attorney review
    - Sharing confidential system architecture, API keys, or credentials with AI tools
  
Model risk considerations:
  Hallucination risk: LLMs fabricate plausible-sounding but incorrect information
    → Mitigation: Human review of AI outputs before action; verify facts independently
    → High-risk domains: Financial figures, legal citations, clinical information
  Bias risk: AI models may reflect training data biases in recommendations
    → Mitigation: Human review; diverse input framing; test for consistent outputs
  Prompt injection risk: External content (emails, documents) can contain hidden AI instructions
    → Mitigation: Sandboxed AI workflows; human review when AI processes external content
  Vendor risk: AI vendor changes terms, deprecates model, or is acquired
    → Mitigation: Vendor evaluation (it-ai-tool-evaluator); avoid single-vendor lock-in
    
AI governance roles at MBL:
  AI Strategy Lead: Dr. Lewis — governs all AI deployments; approves enterprise AI use cases
  AI User: All employees — follow the AI use policy; report concerns to Dr. Lewis
  Privacy Officer (Allevio): Reviews and approves any AI use case involving PHI
  Matt Mathison: Reviews AI investments >$25K/year; receives quarterly AI summary
```

## Output Format

```markdown
# AI Governance Review — <Company Name>
**Date:** [Date] | **Review type:** Annual / New use case / Incident
**Prepared by:** Dr. John Lewis
**Next review:** [Date + 12 months]

---

## AI Use Policy Status

| Policy element | Status | Last updated | Gap |
|---------------|--------|-------------|-----|
| AI use policy documented | Yes / No | [Date] | |
| Policy communicated to all employees | Yes / No | [Date] | |
| AI tool approved list maintained | Yes / No | [Date] | |
| PHI prohibition communicated (Allevio) | Yes / No | [Date] | |
| Annual policy review completed | Yes / No | [Date] | |

---

## Active AI Deployments

| AI tool/deployment | Use case | Data involved | PHI? | BAA? | Governance status |
|-------------------|---------|--------------|------|------|-----------------|
| Microsoft Copilot (M365) | Email drafting, meeting summaries | M365 tenant data | No | N/A | Approved ✅ |
| Krista.ai | Meeting intelligence, workflow automation | M365, QB, Monday | No | N/A | Approved — Dr. Lewis manages |
| Claude API (Dr. Lewis dev) | MBL AI systems development | Business data | No | N/A | Approved — Dr. Lewis only |
| [Shadow AI tool] | [Use case] | [Data type] | [?] | [?] | 🔴 Review immediately |

---

## AI Risk Assessment

| Risk | Likelihood | Impact | Controls in place | Residual risk |
|------|-----------|--------|-----------------|--------------|
| PHI entered into unapproved AI tool (Allevio) | Medium | High (HIPAA breach) | AI use policy; HIPAA training; approved tool list | Low (with controls) |
| AI hallucination — incorrect financial figure acted upon | Medium | Medium (incorrect decision) | Human review requirement; source verification policy | Low-medium |
| Vendor changes data handling terms (model training opt-in) | Low | High (data privacy) | Annual tool review; enterprise tier selection | Low |
| Employee uses personal AI account with company data | High | Medium | Policy; Intune DLP; shadow AI detection | Medium (enforcement challenge) |
| AI-generated code introduces security vulnerability | Low-medium | High | Code review requirement; security testing | Low (with code review) |

---

## Incident Log (AI-related)

| Date | Incident | AI tool | Data involved | Action taken | Resolved |
|------|---------|---------|--------------|-------------|---------|
| [Date] | Employee entered patient name + DOB in ChatGPT | ChatGPT consumer | PHI | Incident response; breach assessment; retraining | Yes |
| [Date] | AI summary contained fabricated financial figure | Copilot | M365 email | Corrected; refreshed HITL requirement; communication sent | Yes |

---

## Policy Review (annual)

| Policy section | Current? | Change needed? | Action |
|---------------|---------|--------------|--------|
| Approved AI tools | Review vs. it-ai-tool-evaluator log | [Any new tools approved or deprecated?] | Update |
| Prohibited data types | Current | | |
| HITL requirements | [Review — are there new AI workflows without HITL?] | | |
| PHI prohibition | Current | | |

---

## Matt Mathison Brief (quarterly)

MBL AI governance: [N] AI tools deployed; [Key risk or update]. Policy last updated [Date]. AI investment: $[X]/month portfolio-wide. Incidents this quarter: [N / None]. Next focus: [What's coming in AI that governance needs to address].
```

## Output Contract
- AI governance is proactive, not reactive — the policy is established before employees are using AI tools at scale, not after a PHI incident forces it; the approved tool list is maintained before employees start asking "can I use this?"; the answer to shadow AI is an approved alternative, not a prohibition that employees route around
- HITL for financial and clinical AI outputs is non-negotiable — when AI produces a financial figure, a clinical recommendation, a contract summary, or a legal citation, a human reviews and verifies it before it is acted upon; "AI said it, so it must be right" is the failure mode that governance prevents; this is especially critical in clinical workflows at Allevio (where an incorrect AI output could affect patient care) and financial workflows (where an incorrect figure could affect a capital decision)
- The AI use policy is trained, not just distributed — employees receive the AI use policy as part of onboarding and annual security training; the policy is not just a document on SharePoint; at Allevio, the PHI prohibition for AI tools is covered in HIPAA training and reinforced quarterly; employees who understand why the policy exists are more likely to follow it than employees who received a link to a PDF
- HITL required: Dr. Lewis is AI governance authority; new AI use case approvals by Dr. Lewis; PHI AI use cases by Dr. Lewis + Privacy Officer (Allevio); AI investments >$25K/year by Dr. Lewis + Matt Mathison; AI incidents involving PHI trigger it-security-incident-responder; quarterly governance summary to Matt Mathison; annual policy review by Dr. Lewis

## System Dependencies
- **Reads from:** it-ai-tool-evaluator (approved tool list), it-automation-platform-admin (AI-powered automations), it-security-awareness-trainer (AI policy in training), it-saas-governance (shadow AI detection), Allevio HIPAA training records
- **Writes to:** AI use policy (SharePoint/Ops/<Company>/IT/AI/Policy/); approved AI tool list; AI risk register; AI incident log; quarterly AI summary for Matt Mathison
- **HITL Required:** Dr. Lewis governs all AI; PHI AI use by Dr. Lewis + Privacy Officer (Allevio); AI investments >$25K/year by Matt Mathison; AI incidents with PHI trigger incident response; quarterly summary to Matt Mathison

## Test Cases
1. **Golden path:** MBL HoldCo AI governance annual review → Policy review: AI use policy updated to add Claude API guidance and Copilot expanded use cases ✅; Approved tool list: 4 tools (Copilot, Krista.ai, Claude API by Dr. Lewis, Power Automate); 2 new tools evaluated this year (it-ai-tool-evaluator); 1 approved (Copilot extended features); 1 not approved (consumer AI tool requested for data analysis); Risk assessment: 5 risks documented; PHI risk at Allevio remains medium (1 incident this year — resolved); Incidents: 1 (PHI in ChatGPT — resolved; retraining delivered); Investment: $X/month portfolio-wide AI tools; Next year: Krista.ai Phase 2 expansion; quarterly brief to Matt Mathison prepared ✅
2. **Edge case:** A portfolio company CEO proposes using an AI tool to automatically respond to customer inquiries without human review → This is an AI governance decision requiring risk assessment: (1) What are the failure modes? (AI gives incorrect information to customers; AI handles sensitive requests incorrectly); (2) What is the business risk of an incorrect response? (Customer complaint; potential liability); (3) What is the regulatory risk? (Any customer data in the AI response?); Governance decision: Conditional approval with required human review queue for any response that: involves a complaint, references pricing or contracts, or includes customer-specific account information; pure FAQ responses can be AI-generated with human spot-check audit; document the approval conditions and HITL thresholds
3. **Adversarial:** "AI governance just slows innovation — we should move fast and allow all AI tools" → The move-fast approach produces a PHI-in-ChatGPT incident that triggers a HIPAA breach assessment and potentially a $50K+ fine; it produces a financial figure hallucinated by an AI tool that drives an incorrect capital allocation decision; the governance framework adds 2-3 hours of review before deploying a new AI tool; the incidents it prevents take weeks to resolve; governance is not a bureaucratic blocker — it is the structure that allows AI to be used safely and confidently at scale

## Audit Log
AI use policy versions retained permanently. AI tool approval decisions retained. AI risk register updated annually. AI incident log retained permanently. PHI AI incidents retained permanently (Allevio — HIPAA). Quarterly governance summaries retained. Matt Mathison briefings retained.

## Deprecation
Retire when MBL Partners has a formal AI governance board or function (separate from IT) that maintains policy, risk register, and incident management — with Dr. Lewis serving as technical advisor and Krista.ai integration lead. PHI AI governance at Allevio and HIPAA requirements are permanent regardless of AI governance maturity.
