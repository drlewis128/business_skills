---
name: ai-claude-api-ops
description: "Manage Claude API usage, costs, and integrations for MBL Partners AI applications. Use when the user says 'Claude API', 'Anthropic API', 'Claude cost', 'Claude usage', 'Claude API key', 'Claude API budget', 'Claude API limit', 'Claude rate limit', 'Claude model selection', 'which Claude model', 'Claude API integration', 'Claude API error', 'Claude API timeout', 'Claude API cost tracking', 'Claude API spending', 'Claude API usage report', 'Claude API monitoring', 'Claude API optimization', 'reduce Claude costs', 'Claude prompt caching', 'Claude context window', 'Claude API quota', 'Claude API access', 'Claude API key rotation', 'Claude API security', 'Claude API audit', 'Claude API logging', 'Claude API applications', 'Claude API applications list', 'Claude models', 'claude-opus', 'claude-sonnet', 'claude-haiku', 'Claude 4', 'Anthropic console', 'Anthropic billing', or 'AI API management'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--action <monitor|optimize|report|rotate-key|audit>]"
---

# AI Claude API Ops

Manage Claude API usage, costs, model selection, and integrations for MBL Partners AI applications — monitoring spending against the AI budget, optimizing prompts for cost efficiency, rotating API keys on schedule, and ensuring all Claude API integrations are logged, audited, and permissioned correctly. The Claude API is the intelligence layer powering MBL's agent and automation stack.

## When to Use
- Monthly Claude API cost review
- Selecting the right Claude model for a new application
- Troubleshooting a Claude API error in a Krista or direct integration
- Rotating API keys or reviewing API security

## Claude API Operations Framework

```
MODEL SELECTION GUIDE (MBL standard):
  claude-opus-4-8: complex reasoning; financial modeling; deal analysis; nuanced summaries
    Cost: highest; use when quality is the primary requirement
  claude-sonnet-4-6: balanced performance; meeting summaries; skill execution; standard operations
    Cost: medium; MBL default for most automation workflows
  claude-haiku-4-5: fast; low-cost; classification; formatting; high-volume tasks
    Cost: lowest; use for repetitive, structured tasks where speed > nuance
    
  Decision rule: start with claude-sonnet-4-6; upgrade to opus when quality is insufficient; 
    downgrade to haiku when task is purely structural and volume is high
  Prompt caching: MANDATORY on all Claude API applications — reduces cost 40-90% for 
    repeated context (system prompts; long documents); include `cache_control: ephemeral` 
    on all system prompts and large knowledge blocks
    
API KEY MANAGEMENT:
  MBL API key: Dr. Lewis manages in secure vault (not stored in code; not in .env committed to git)
  Entity-specific keys: each entity gets isolated API access (Allevio; HIVE; Column6 isolated)
  Key rotation: quarterly or immediately after any suspected exposure
  Key storage: Anthropic Console → API Keys (Dr. Lewis admin access only)
  Key sharing: never shared via email or Slack; only via secure credential vault (LastPass/1Password)
  
COST MONITORING:
  Anthropic Console: billing dashboard → usage by API key → monthly spend
  Alert threshold: monthly spend >$500 → Dr. Lewis reviews; >$1,000 → budget review
  Cost optimization levers:
    → Model downgrade (opus → sonnet → haiku for appropriate tasks)
    → Prompt caching (most impactful for repeated system prompts)
    → Output token limits (set max_tokens appropriate to task; don't allow runaway outputs)
    → Batching (for high-volume tasks; use Anthropic Batch API when latency is not critical)
  ROI tracking: Claude API cost → captured in monthly AI ROI report (ai-roi-tracker)
  
INTEGRATION STANDARDS:
  All Claude API applications: logged (input summary; model used; output summary; timestamp; entity)
  No raw PHI sent to Claude API: de-identification required before any Allevio data enters API calls
  API calls containing sensitive data: encrypted in transit (HTTPS enforced); not logged at raw level
  Error handling: all Claude API calls have retry logic (3 retries with exponential backoff)
  Timeout: 30-second timeout on all non-streaming calls; streaming calls up to 5 minutes
  
ENTITY ISOLATION:
  Allevio API calls: use dedicated Allevio API key; no PHI in prompts
  HIVE API calls: use MBL API key or dedicated HIVE key; WTI trigger context included in system prompt
  Column6 API calls: client campaign data de-identified or aggregate before API call
  MBL API calls: standard key; Dr. Lewis personal and operational use
```

## Output Format

```markdown
# Claude API Operations Report — [Month] [Year]
**Prepared by:** Dr. Lewis | **Anthropic Console:** [Accessed: Date]

---

## Usage Summary

| Entity / Application | Model | Calls | Input Tokens | Output Tokens | Cost |
|---------------------|-------|-------|-------------|--------------|------|
| Meeting Intelligence (MBL) | Sonnet | X | X | X | $X |
| Finance reporting | Sonnet | X | X | X | $X |
| Total | | | | | **$X** |

---

## Cost vs. Budget
**Budget:** $X/month | **Actual:** $X | **Variance:** [Under/Over by $X]

## Prompt Caching Status
[Caching active on all applications: ✅ / ❌ — applications without caching: [list]]

## Model Selection Review
[Any applications using sub-optimal model: [list + recommendation]]

## API Key Status
[Keys active: N | Last rotation: [Date] | Next rotation: [Date]]

## Recommendations
1. [Migrate [application] from Opus to Sonnet — estimated $X/month savings]
```

## Output Contract
- Prompt caching is required on all Claude API applications, not optional — every Claude API application built by Dr. Lewis includes prompt caching on the system prompt and any repeated knowledge context; this is not a performance optimization — it is a cost discipline; uncached repeated system prompts on a high-frequency workflow can cost 10× more than cached ones; Dr. Lewis audits every new application for prompt caching before it goes to production; an application without prompt caching is not production-ready
- Entity isolation means separate API keys, not separate prompts — Allevio's API key is physically separate from MBL's API key; if Allevio's key is compromised, it does not expose MBL's API usage; if MBL's key is used for an Allevio-related application, entity isolation is broken regardless of how well the prompt is structured; Dr. Lewis maintains separate keys and documents which key is used for which application in the API key registry
- HITL required: API key creation → Dr. Lewis only; key rotation → Dr. Lewis initiates; new API application integration → Dr. Lewis reviews before production; Allevio application → PHI audit before API key assignment; cost threshold exceeded ($1K/month) → Dr. Lewis reviews + Matt Mathison notified; entity CEO requests API access → Dr. Lewis evaluates and provisions; any application sending sensitive data → Dr. Lewis reviews data handling before deployment

## System Dependencies
- **Reads from:** Anthropic Console (billing dashboard; usage logs; API key management); Claude API documentation (current model IDs; pricing; capabilities; caching documentation); application code (reviewing prompt caching implementation; error handling)
- **Writes to:** Monthly Claude API ops reports (SharePoint → MBL → AI Strategy → Claude API → Monthly Reports); API key registry (secure vault; not SharePoint — no credentials in documents); cost tracking input for ai-roi-tracker; Anthropic Console (key creation; rotation)
- **HITL Required:** API key creation/rotation → Dr. Lewis only; new application integration → Dr. Lewis reviews; Allevio → PHI audit before deployment; cost threshold → Dr. Lewis + Matt Mathison; entity CEO access requests → Dr. Lewis provisions; sensitive data applications → Dr. Lewis data handling review

## Test Cases
1. **Golden path:** Monthly Claude API ops review (June 2026). Anthropic Console: Meeting Intelligence (Sonnet-4-6; 127 calls; 2.1M input tokens — 1.8M cached = 86% cache hit rate; $38). Finance reporting support (Sonnet-4-6; 43 calls; 890K tokens; $12). Total: $50/month. Budget: $200/month. Well within budget. Prompt caching: ✅ on all applications. Model selection: ✅ all appropriate. Keys: 2 active (MBL; Allevio dedicated). Last rotation: April 2026. Next rotation: July 2026. No issues. Report filed.
2. **Edge case:** Monthly cost spikes from $50 to $380 because a new Krista workflow was deployed with a large system prompt that is not cached → Dr. Lewis: "The Meeting Intelligence v2 workflow deployed June 15 includes a 12,000-token knowledge context that is being re-sent with every API call, not cached. Adding cache_control: ephemeral to the knowledge context section will reduce the input token cost by approximately 85% for this workflow — estimated monthly savings: $280. I'll update the workflow integration code today. This is why I review API costs monthly — uncached long system prompts are the most common cost explosion pattern."
3. **Adversarial:** Entity CEO asks for a Claude API key for their personal use to "experiment with AI" → Dr. Lewis: "I'll set up a key for you, but I want to structure it correctly rather than giving you a shared key from MBL's account. What I'll do: create an entity-specific key for [entity] experiments; set a monthly spending limit in the Anthropic Console (recommend starting at $50/month — that's a lot of API calls for personal experimentation); document what applications will use it; and add it to the quarterly API key rotation schedule. What I won't do: share a copy of MBL's primary API key. Keys get shared and then forgotten, and then we have a credential management problem. A dedicated key takes 5 minutes to set up and gives you all the same functionality. What would you like to experiment with first? I can point you to the best model and give you a starting prompt structure."

## Audit Log
Monthly usage reports (Anthropic Console export; SharePoint). API key registry (secure vault; not SharePoint). Key creation and rotation records. Application integration review records. Cost threshold alerts. PHI audit records (Allevio applications). Sensitive data application review records. Model selection rationale (for material decisions; not every call). Entity isolation verification records (quarterly).

## Deprecation
Model IDs updated when Anthropic releases new Claude models (current: opus-4-8; sonnet-4-6; haiku-4-5). Pricing updated when Anthropic changes API pricing. Caching guidance updated when Anthropic changes prompt caching specifications. Key rotation schedule reviewed annually. Entity isolation reviewed when portfolio changes.
