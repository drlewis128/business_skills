---
name: exec-ai-strategy-director
description: "Direct MBL Partners AI strategy across the portfolio — roadmap, prioritization, and governance. Use when the user says 'AI strategy', 'AI roadmap', 'AI plan', 'what is our AI strategy', 'how do we use AI', 'portfolio AI strategy', 'AI deployment plan', 'AI prioritization', 'AI investment decision', 'AI capabilities', 'what AI should we build', 'what AI should we deploy', 'AI for the portfolio', 'Krista AI strategy', 'agent strategy', 'agent deployment', 'AI governance', 'AI policy', 'AI guardrails', 'AI audit', 'Claude integration', 'Anthropic integration', 'AI risk management', 'AI ethics', 'AI rollout', 'when do we expand AI to the portfolio', 'AI orchestration strategy', 'OpenFang strategy', 'AI systems architecture', 'AI business case', or 'build the AI strategy'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6|all>] [--phase <0|1|2|3>] [--action <roadmap|prioritize|govern|audit|expand>] [--focus <Krista|agents|automation|data|governance>]"
---

# Exec AI Strategy Director

Direct MBL Partners' AI strategy across the portfolio — setting the roadmap, prioritizing investments, governing AI use, and coordinating the phased rollout from MBL as the control plane to Allevio, HIVE, and Column6. AI strategy at MBL is not a separate function from operations — it is the operating infrastructure that enables MBL to execute faster, with better information, at lower marginal cost per decision. Dr. Lewis is the Principal Systems Engineer and Director of AI Strategy; the AI strategy lives with him, but the decisions and accountabilities are Matt Mathison's and the entity CEOs'.

## When to Use
- AI roadmap planning (quarterly AI strategy review; annual plan update)
- A new AI capability is being evaluated for deployment
- Krista.ai or OpenFang development decisions need to be framed
- An entity CEO asks "how can AI help us?" and needs a structured answer
- AI governance or policy needs to be defined or updated
- A portfolio company rollout is being planned (Phase 1 → entity-specific Phase 2)

## AI Strategy Framework

```
MBL AI STRATEGY STRUCTURE:

  PRINCIPLE 1 — ORCHESTRATION, NOT REPLACEMENT:
    AI coordinates systems and augments human decisions; it does not replace the humans
    who own customer relationships, manage risk, and make judgment calls.
    Krista.ai is the coordination layer above Microsoft 365, Monday.com, QuickBooks, and
    Bill.com — it orchestrates these systems; they remain the systems of record.
    
  PRINCIPLE 2 — BUILD AT MBL FIRST, ROLL TO PORTFOLIO:
    Every AI capability is validated at the MBL level before deployment to Allevio, HIVE,
    or Column6. MBL is the control plane and the test bed.
    Phase 0 (Discovery) → Phase 1 (MBL deployment) → Phase 2 (portfolio company adaptation)
    → Phase 3 (scaled portfolio deployment)
    
  PRINCIPLE 3 — ALL INTEGRATIONS ARE LOGGED, AUDITED, AND PERMISSIONED:
    Every AI system that touches financial data, LP data, or customer data must be:
    □ Logged: every action recorded with timestamp, actor, and output
    □ Audited: quarterly audit of AI actions and decisions
    □ Permissioned: access controls enforced; each entity has isolated permissions
    Portfolio isolation: no data from one entity is accessible to another entity's AI systems.
    
  PRINCIPLE 4 — HITL ON ALL HIGH-STAKES ACTIONS:
    AI prepares; humans decide for: LP communications, financial transactions, executive hires,
    board decisions, legal/regulatory filings, and data-sharing across entities.
    AI can execute autonomously on: information gathering, summarization, draft generation,
    monitoring, and alert triggering.

MBL AI PHASES (current and future):

  PHASE 0 — DISCOVERY (current: MBL + Krista.ai):
    Capability assessment: what can Krista.ai do right now vs. what we need?
    Known gaps (from Krista-MCP-Feedback):
      1. Full email body retrieval (truncated to preview only)
      2. Inline image / attachment OCR (KPI scoreboard table not readable)
      3. SharePoint document library browse + Excel file read
      4. Mail index staleness (~48hr lag for newly arrived emails)
    Priority resolution: Phase 0 → Phase 1 gate: all 4 gaps resolved or mitigated
    
  PHASE 1 — MBL DEPLOYMENT (Krista as coordination layer at MBL):
    Target capabilities:
      □ Autonomous partner email build (exec-partner-email-builder — no browser fallback)
      □ Full meeting intelligence pipeline (Krista transcripts → action items → Monday.com)
      □ CEO briefing automation (exec-ceo-briefing inputs from Krista)
      □ LP communication drafting support
    
  PHASE 2 — ENTITY ADAPTATION (Allevio first; then HIVE; then Column6):
    Each entity adapts proven MBL workflows to their context:
      Allevio: HIPAA-compliant AI workflows; clinical data aggregate reporting; RCM automation
      HIVE: royalty statement analysis; landowner communication support; lease tracking
      Column6: VCR optimization; agency relationship management; campaign reporting automation
    Entity-specific permission isolation: each entity's AI operates in a sandboxed environment
    
  PHASE 3 — SCALED PORTFOLIO DEPLOYMENT:
    Common infrastructure across all entities:
      □ Unified meeting intelligence (all entities' meetings → MBL coordination layer)
      □ Portfolio-level KPI aggregation (exec-kpi-dashboard automated)
      □ Cross-entity pattern detection (Dr. Lewis monitors for anomalies)
      But: entity data isolation maintained; cross-entity AI analysis happens only at MBL level

AI GOVERNANCE FRAMEWORK:

  Quarterly AI audit:
    □ Review all AI actions from the prior quarter (what did the AI do autonomously?)
    □ Review HITL compliance (were high-stakes actions approved by humans?)
    □ Review data access permissions (who/what can access what data?)
    □ Review AI model updates (did any model change affect our outputs?)
    □ Review security posture (are API keys rotated? Are permissions scoped correctly?)
    
  AI risk categories:
    HIGH: AI actions involving LP data, financial transactions, or legal/regulatory filings
    MEDIUM: AI actions involving customer data, external communications, or hiring
    LOW: AI actions involving internal summarization, monitoring, or draft generation
    
  Anthropic/Claude model defaults:
    Default: claude-sonnet-4-6 (balanced capability and cost)
    High-stakes analysis: claude-opus-4-8 (LP reports; board packages; M&A analysis)
    High-volume/routine: claude-haiku-4-5 (monitoring; alerts; simple summarization)
    Prompt caching: enabled on all multi-turn applications
```

## Output Format

```markdown
# AI Strategy Review — [Quarter/Year]
**Director:** Dr. John Lewis | **For:** Matt Mathison

---

## Current Phase Status

| Phase | Status | Gate criteria | Remaining gaps |
|-------|--------|--------------|---------------|
| Phase 0 — Discovery | [Active / Complete] | [Criteria] | [Gaps] |
| Phase 1 — MBL Deploy | [Active / Not started] | [Criteria] | — |
| Phase 2 — Entity Adapt | [Planned] | — | — |
| Phase 3 — Scale | [Planned] | — | — |

---

## Krista Capability Status

| Capability | Status | Gap | Resolution target |
|-----------|--------|-----|------------------|
| Full email body retrieval | ❌ Gap | Truncated preview only | [Date] |
| Inline image OCR | ❌ Gap | Scoreboard not readable | [Date] |
| SharePoint doc browse + Excel | ❌ Gap | No library browse | [Date] |
| Mail index freshness | ⚠️ Partial | 48hr lag | [Date] |
| Meeting transcription | ✅ Active | — | — |
| Action item extraction | ✅ Active | — | — |

---

## AI Investment Priorities (This Quarter)

| Priority | System | Expected outcome | Capital | Dr. Lewis estimate |
|---------|--------|-----------------|---------|------------------|
| 1 | Krista get_message_by_id | Autonomous partner email | $[X]/mo | [Hrs to implement] |
| 2 | [Next priority] | [Outcome] | [Cost] | [Effort] |

---

## Governance Status

**Last audit:** [Date] | **Next audit:** [Date]
**HITL compliance rate:** [N]% (target: 100% on HIGH-risk actions)
**Permission review:** [Current / Overdue]
```

## Output Contract
- AI strategy decisions are Matt Mathison's — Dr. Lewis is the Principal AI Systems Engineer; he designs, builds, and recommends; Matt Mathison decides what to fund, what to deploy, and when to expand to the portfolio; a recommendation from Dr. Lewis that Matt hasn't approved is a proposal, not a plan; Dr. Lewis does not deploy AI systems to entity environments without Matt Mathison explicit authorization
- Portfolio isolation is absolute — AI systems at MBL cannot use Allevio patient or employer data to benefit HIVE, or use HIVE royalty data to benefit Column6; each entity's AI environment is permissioned, isolated, and auditable; the only cross-entity AI analysis is at the MBL portfolio level (by Dr. Lewis, with Matt Mathison access) and covers aggregate metrics, not entity-confidential data; this is both a privacy and competitive integrity standard
- Phase gates before expansion — no AI capability expands to the portfolio before it has been validated at the MBL level; "validated" means: it has run for at least one full use cycle; the output quality has been reviewed by Dr. Lewis; HITL compliance has been verified; and the security posture has been audited; the Phase 0 → Phase 1 gate for Krista specifically requires the four identified capability gaps to be resolved or formally mitigated
- HITL required: all HIGH-risk AI actions (LP communications, financial transactions, legal filings, executive hiring, board communications) require human approval before execution; AI governance audit is conducted quarterly by Dr. Lewis and reviewed by Matt Mathison; any AI system that accesses entity data requires Matt Mathison authorization before deployment; OpenFang development decisions are Dr. Lewis's domain (as the builder) with Matt Mathison informed on portfolio-relevant capabilities

## System Dependencies
- **Reads from:** exec-partner-email-builder (Krista capability status — the live use case that surfaces gaps); exec-weekly-briefing (Krista transcript integration status); Krista.ai platform (capability status, API access, MCP server health); OpenFang crates (agent runtime for MBL-specific workflows); Microsoft 365 (Teams, Outlook, SharePoint — the systems Krista orchestrates); Monday.com (action item target); Anthropic API (Claude models for AI applications)
- **Writes to:** AI strategy roadmap (SharePoint → ExecutiveSupport → AIStrategy → [YYYY]); AI governance audit records (quarterly); Krista capability punch list (prioritized gap list for Krista.ai team); exec-portfolio-operations (AI system health as a portfolio operations metric); exec-technology-investment (AI system costs and ROI as investment inputs)
- **HITL Required:** Matt Mathison approves all AI capability expansion decisions; entity AI deployments require Matt authorization; portfolio isolation is non-negotiable (Dr. Lewis enforces; Matt is informed); quarterly AI governance audit reviewed by Matt; HIGH-risk AI actions require human approval before execution

## Test Cases
1. **Golden path:** Q3 AI strategy review; Dr. Lewis presents: Krista gap 2 (email body retrieval) resolved by Krista team — deployed June 30; gaps 3 and 4 still open; partner email is now semi-autonomous (cash + pipeline sections automated; KPI scoreboard still requires browser); Phase 1 gate: 2 of 4 gaps resolved; 2 remain; revised Phase 1 target: Q4 2026 when all 4 gaps resolved. AI Investment Priority: "$1,200/mo for Krista MCP server expansion to add SharePoint document browse — projected to eliminate 2-3 hours per week of Dr. Lewis browser work; payback in 4 months." Matt: "Approve. Get it done."
2. **Edge case:** Allevio CEO asks if Krista can automatically pull member utilization data for clinical analysis → Dr. Lewis: "This is a HIPAA boundary question. Krista can pull aggregate member data — enrollment counts, plan utilization rates by cohort — but cannot access individual member records or generate analysis that could be reverse-engineered to identify individuals. The clinical team owns that level of data access. What I can build is an aggregate utilization monitoring dashboard that gives your clinical team the population health view without creating a HIPAA exposure. Let me design it. It'll take 2-3 weeks in Phase 2 of the AI deployment after I've got the MBL Phase 1 capabilities stable." Allevio CEO: "Perfect — exactly what I needed."
3. **Adversarial:** An entity CEO asks Dr. Lewis to build an AI tool that makes AI-generated decisions on customer pricing without human review → Dr. Lewis: "I'm not going to build that without HITL on pricing decisions. Here's why: pricing decisions at this entity can affect LP returns directly (through margin); they create legal exposure if they're discriminatory in application; and they affect the customer relationship in ways that are hard to reverse if the AI makes a bad call. What I will build: an AI-assisted pricing recommendation tool that surfaces the optimal price for a human to review and approve before it goes out. That gets you 80% of the efficiency benefit with none of the risk. Does that work?" Entity CEO: "Yes — I just need the recommendation; my team can approve."

## Audit Log
All AI strategy documents retained by quarter and year. Krista capability gap records retained (gap identified; resolution; date resolved). AI deployment authorization records retained (what was deployed; to which entity; who authorized; date). Quarterly AI governance audit records retained. HITL compliance records retained. Permission and access control records retained.

## Deprecation
This skill evolves as the AI strategy matures — it does not retire. When MBL has a full AI/technology team: Dr. Lewis transitions to strategic oversight and the skill is updated to reflect the team structure. The core governance and HITL principles remain constant regardless of team size.
