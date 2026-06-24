---
name: ai-governance-framework
description: "Build and maintain the AI governance framework for MBL Partners. Use when the user says 'AI governance', 'AI policy', 'AI rules', 'AI standards', 'AI guidelines', 'AI oversight', 'AI controls', 'AI accountability', 'who controls AI', 'AI approval process', 'AI authorization', 'who can use AI', 'AI usage policy', 'AI acceptable use', 'AI guardrails framework', 'AI decision authority', 'AI escalation', 'AI steering committee', 'AI oversight committee', 'AI ethics', 'AI compliance framework', 'AI principles', 'AI strategy framework', 'portfolio AI governance', 'entity AI policy', 'govern AI at MBL', 'AI framework', 'AI operating model', 'AI operating framework', 'how do we govern AI', 'AI regulatory compliance', 'AI model governance', 'AI vendor governance', 'AI data governance', or 'AI responsibility'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6|all>] [--action <build|update|audit|enforce|report>]"
---

# AI Governance Framework

Build and maintain the AI governance framework for MBL Partners and portfolio companies — establishing who can authorize AI deployments, who has oversight, what data AI can access, and how AI errors are escalated and remediated. AI governance at MBL is not a policy document — it is the operating model that makes AI deployment safe enough to scale from MBL to the portfolio.

## When to Use
- Building or updating MBL's AI governance policy
- Onboarding a new AI vendor or tool
- Establishing AI governance at a portfolio company
- Quarterly AI governance review

## AI Governance Framework

```
MBL AI GOVERNANCE OPERATING MODEL:

AUTHORITY STRUCTURE:
  AI Strategy Owner: Matt Mathison (Managing Partner)
    → Sets AI investment priorities; approves high-risk AI deployments; sees quarterly ROI
  AI Implementation Owner: Dr. John Lewis (Director of AI Strategy)
    → Designs; builds; deploys; monitors; all daily AI operations; escalates to Matt Mathison
  Entity AI Leads: Entity CEOs
    → Authorize entity-specific AI deployments; ensure policy compliance within their entity
    → Cannot deploy AI without Dr. Lewis design review
    → Allevio entity CEO: must also satisfy HIPAA requirements before any AI deployment
  
DEPLOYMENT AUTHORIZATION MATRIX:
  Internal process automation (no customer data; no PHI; no financial write):
    → Dr. Lewis authorizes
  Customer-facing automation (employer communications; LP communications; client-facing):
    → Entity CEO + Dr. Lewis authorize
  Financial system writes (QuickBooks; Bill.com; payroll):
    → Always HITL gate; Dr. Lewis designs; entity CEO approves specific workflow
  AI vendor deployment (new AI tool for any entity):
    → Dr. Lewis evaluates; Matt Mathison approves for budget and strategic fit
  Allevio AI deployment:
    → Dr. Lewis risk assessment; Allevio entity CEO authorizes; HIPAA assessment complete
    → Any PHI-adjacent use case: Dr. Lewis + entity CEO + legal counsel
    
DATA ACCESS POLICY:
  What AI can access (with appropriate controls):
    → Internal business documents; meeting transcripts; process documentation
    → Aggregate financial data (entity-level P&L; KPIs; budgets)
    → Aggregate Allevio metrics (employer count; PMPM; GRR — no member-level data)
    → HIVE production reports (aggregate; no individual landowner data beyond public records)
    → Column6 campaign performance (aggregate; client-specific with confidentiality controls)
  What AI cannot access:
    → Allevio member health data (PHI) — absolute; no exceptions
    → Individual LP personal financial information
    → Individual employee compensation details (HR aggregates only)
    → Attorney-client privileged communications
    → Unpublished M&A targets (until authorized by Matt Mathison for specific analysis)
    
AI OUTPUT STANDARDS:
  All AI-generated content for external use: reviewed by Dr. Lewis or entity CEO before sending
  AI-generated financial analysis: reviewed by Dr. Lewis before Matt Mathison uses for decisions
  AI-generated LP communications: reviewed and approved by Matt Mathison before sending
  AI audit trail: all AI actions logged (what was input; what was output; who reviewed; who approved)
  
INCIDENT RESPONSE:
  AI error discovered (wrong output; incorrect action): Dr. Lewis notified immediately
  PHI exposure (any Allevio AI incident): Dr. Lewis + Allevio entity CEO immediately; Allevio legal counsel same day
  Incorrect LP communication (sent without proper review): Matt Mathison immediately; correction protocol activated
  AI vendor breach or data incident: Dr. Lewis + entity CEO + Matt Mathison; legal counsel within 24 hours
  
QUARTERLY AI GOVERNANCE REVIEW:
  Dr. Lewis prepares: deployed AI inventory; risk register status; ROI report; incident log
  Matt Mathison reviews: strategic alignment; investment decisions; policy changes
  Entity CEOs: entity-specific AI usage report; compliance status
```

## Output Format

```markdown
# MBL AI Governance Framework — v[N]
**Owner:** Dr. Lewis | **Approved by:** Matt Mathison | **Effective:** [Date] | **Next Review:** [Date]

---

## Authority Structure
[Authority matrix: role; AI responsibilities; escalation path]

## Deployment Authorization Matrix
[Table: use case type → authorization required → process]

## Data Access Policy
[What AI can and cannot access; entity-specific rules]

## AI Output Standards
[Review requirements by output type and destination]

## Incident Response Protocol
[Incident types → notification path → remediation]

## Quarterly Review Process
[Review cadence; what is reviewed; who reviews]

---
*This framework applies to all AI deployments at MBL Partners and portfolio companies.*
*Entity-specific addenda available for Allevio, HIVE, Column6.*
```

## Output Contract
- The governance framework is the operating model, not a compliance checkbox — governance is not a document that gets written once and filed; it is the set of decisions that Dr. Lewis makes consistently every day when deploying AI: who has approved this, what data does it access, what is the HITL gate, how is the output reviewed; the framework makes those decisions consistent and auditable; a governance framework that exists as a document but is not enforced in practice provides false assurance and creates liability when something goes wrong
- Portfolio companies need entity-specific addenda, not just a copy of MBL's governance — Allevio's governance framework looks fundamentally different from HIVE's because HIPAA creates constraints that don't exist in oil and gas; Column6's customer data confidentiality requirements are different from Allevio's; the MBL governance framework is the foundation, and each entity gets an addendum that addresses their specific regulatory, data, and operational context; Dr. Lewis writes entity addenda when AI is deployed at that entity, not in advance as a theoretical document
- HITL required: framework creation → Dr. Lewis drafts; Matt Mathison approves; quarterly review → Dr. Lewis prepares; Matt Mathison reviews; framework changes → Matt Mathison approves before taking effect; entity addenda → entity CEO reviews and acknowledges; Allevio addendum → HIPAA counsel recommended review; new AI deployment → governance framework check is mandatory step before deployment authorization

## System Dependencies
- **Reads from:** Entity documentation (regulatory requirements; data classification); HIPAA Security Rule requirements (Allevio); O&G regulatory context (HIVE); MBL systems map (CLAUDE.md); AI risk assessments; quarterly AI ROI reports; AI incident logs
- **Writes to:** MBL AI Governance Framework (SharePoint → MBL → AI Strategy → Governance → AI Governance Framework v[N]); entity AI governance addenda (entity-specific SharePoint); quarterly governance review reports; Matt Mathison AI strategy briefings
- **HITL Required:** Framework creation/update → Matt Mathison approves; quarterly review → Matt Mathison; entity addenda → entity CEO acknowledges; Allevio → HIPAA counsel recommended; policy exceptions → Dr. Lewis + Matt Mathison; incident response → per incident response protocol

## Test Cases
1. **Golden path:** Q1 2026 quarterly AI governance review. Dr. Lewis prepares: (1) Deployed AI inventory: Meeting Intelligence (active; Krista + Claude); Finance reporting support (active; Claude); HR document support (active; Claude). (2) Risk register: all risks rated Low-Medium; zero Critical incidents. (3) ROI report: 367% Q2 ROI (see ai-roi-tracker). (4) Incident log: zero incidents. Matt Mathison review: approves continued deployment; approves expansion of Meeting Intelligence to pre-meeting prep; approves Allevio AI readiness assessment. Entity CEOs: Allevio entity CEO acknowledges HIPAA data access policy; HIVE entity CEO acknowledges production data access policy. Framework remains at v1.2; no changes required.
2. **Edge case:** A portfolio company entity CEO deploys a third-party AI tool ("it was free and it's great for automating our emails") without going through Dr. Lewis or the governance framework → Dr. Lewis: "I see a new AI tool is being used at [entity]. Before we continue with it, I need to complete three steps: (1) Risk assessment — what data does this tool have access to? (2) Data access policy review — does it interact with any customer data or financial data without a HITL gate? (3) Vendor evaluation — does it have a BAA (critical for Allevio) and appropriate data processing agreements? If it's a low-risk internal tool, we can move quickly. If it touches any customer or financial data, we need to evaluate before continuing. I'll have an assessment done this week." This is not punitive — it is the deployment authorization process the framework requires, applied retroactively.
3. **Adversarial:** Matt Mathison asks why AI governance "takes so long" and suggests simplifying to a single approval: "just tell me if something is high or low risk, and we'll go from there" → Dr. Lewis: "I hear you — and I want to make the process faster, not heavier. Here's the thing: the current framework is already designed to move fast for low-risk deployments. Internal process automation (no customer data; no financial writes) goes live with just my authorization — I don't bring those to you. The process slows down for customer-facing, financial system, or Allevio deployments — and those three categories are exactly where a deployment error creates real liability. What I'll do: add a 'fast track' tier to the framework — low-risk deployments documented in 2 hours; standard deployments in 2 days; high-risk (Allevio PHI; LP-facing; financial writes) in 5 days. Does that framing work?"

## Audit Log
Framework versions (all versions retained; SharePoint). Matt Mathison approval records for each version. Quarterly governance review records. Deployment authorization records (who authorized; what; when). Incident log. Entity addenda (all versions; entity CEO acknowledgment records). Policy exception records. HIPAA counsel review records (Allevio addendum).

## Deprecation
Framework reviewed quarterly. Major revision when new entity added to portfolio or entity exits. Immediate revision when regulatory requirements change (HIPAA; SEC; state AI regulations). Reviewed when AI vendor landscape changes significantly. HIPAA addendum reviewed annually.
