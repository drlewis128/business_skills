---
name: agops-runtime-claude-api-caller
description: "Build Claude API calls for MBL Partners agent workflows. Use this skill when selecting Claude model for an agent task, configuring claude-sonnet-4-6 for standard reasoning, configuring claude-opus-4-8 for complex analysis, configuring claude-haiku-4-5 for high-volume extraction, setting up prompt caching for SKILL.md system prompts, designing streaming vs non-streaming API calls, handling Claude API rate limit errors, handling Claude API timeout errors, handling Claude API content policy errors, tracking cost per Claude API call, building structured Claude API request payloads, designing system prompt caching with cache_control, calculating Claude token costs, auditing Claude API usage by entity, configuring max_tokens for agent outputs, handling API key management for Claude, building Claude API error recovery logic, designing multi-turn Claude API calls, routing Claude model selection by task type, optimizing Claude prompt structure for cost."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[task type: extraction | reasoning | analysis | executive-output] [entity: MBL | Allevio | HIVE | Column6]"
---

# Claude API Caller Builder

This skill designs and documents Claude API call configurations for MBL Partners agent workflows. It produces complete API call specifications — model selection rationale, prompt structure, caching configuration, token budgets, cost estimates, and error handling — so that every Claude API call in the MBL stack is intentional, cost-efficient, and auditable.

## When to Use

- You are wiring a new agent step that calls the Claude API and need to select the correct model, configure the prompt structure with caching, and set appropriate token limits.
- An existing agent workflow is producing unexpectedly high API costs and needs a model tier review and caching audit.
- You are designing a high-volume extraction or classification task and need to evaluate haiku-4-5 versus sonnet-4-6 on cost-per-call at the expected daily volume.
- You are building an executive-facing output (for Matt Mathison or an LP report) that requires opus-4-8 quality and need to document the cost justification and HITL gate.

## Claude API Caller Builder Framework

```
═══════════════════════════════════════════════════════════
SECTION 1 — CALL IDENTITY
═══════════════════════════════════════════════════════════
CALL NAME (unique within agent workflow):
AGENT / WORKFLOW NAME:
OWNING ENTITY: [ MBL HoldCo | Allevio | HIVE | Column6 ]
CALL PURPOSE (one sentence):
CALL POSITION IN LOOP: [ Single call | Step N of M in loop ]

═══════════════════════════════════════════════════════════
SECTION 2 — MODEL SELECTION
═══════════════════════════════════════════════════════════
TASK TYPE:
  [ ] Extraction / classification (structured data from unstructured text)
  [ ] Summarization / synthesis (compress or consolidate content)
  [ ] Standard reasoning / drafting (reports, emails, analyses)
  [ ] Complex reasoning (M&A analysis, financial modeling, legal review)
  [ ] Executive output (for Matt Mathison or LP audience)
  [ ] High-volume batch (>100 calls/day)

MODEL SELECTION DECISION TREE:
  Extraction / classification        → claude-haiku-4-5
  High-volume batch (any task)       → claude-haiku-4-5 (cost ceiling first)
  Summarization / synthesis          → claude-sonnet-4-6
  Standard reasoning / drafting      → claude-sonnet-4-6 (DEFAULT)
  Complex reasoning (M&A, financial) → claude-opus-4-8
  Executive output (Matt / LP)       → claude-opus-4-8
  Unsure                             → claude-sonnet-4-6 + flag for Dr. Lewis review

SELECTED MODEL:        [ claude-haiku-4-5 | claude-sonnet-4-6 | claude-opus-4-8 ]
SELECTION RATIONALE:
COST JUSTIFICATION (required for opus-4-8):

═══════════════════════════════════════════════════════════
SECTION 3 — PROMPT STRUCTURE & CACHING
═══════════════════════════════════════════════════════════
SYSTEM PROMPT STRATEGY:
  The SKILL.md Framework section is the primary cache target.
  Cache_control is applied to the system prompt block containing the Framework.
  All entity-specific context and run-time variables go in the USER message — NOT the system prompt.
  This ensures the system prompt is stable across calls and cache hits accumulate.

SYSTEM PROMPT BLOCK:
  Content:      SKILL.md Framework section (verbatim or adapted)
  Cache_control: { "type": "ephemeral" }
  Estimated tokens (system):

USER MESSAGE BLOCK:
  Content:      [Context payload from Krista / loop state / data fetch]
  Variables injected: [ list run-time fields ]
  Estimated tokens (user):

MULTI-TURN DESIGN (if applicable):
  Turn 1 purpose:
  Turn 2 purpose:
  Max turns:
  State carried between turns: [ conversation_id | none ]

PROMPT VALIDATION CHECKLIST:
  [ ] No PHI in system or user message (Allevio)
  [ ] No LP-identifying data in user message unless HIVE-authorized
  [ ] No credentials, API keys, or secrets in any prompt block
  [ ] Entity isolated (no cross-entity context blending)
  [ ] System prompt stable (no run-time variables injected into cached block)

═══════════════════════════════════════════════════════════
SECTION 4 — API CALL CONFIGURATION
═══════════════════════════════════════════════════════════
MODEL:
MAX_TOKENS:         [ 1024 (extraction) | 2048 (summary) | 4096 (report) | 8192 (exec output) ]
TEMPERATURE:        [ 0.0 (extraction/classification) | 0.3 (drafting) | 0.7 (creative) ]
STREAMING:          [ Yes — for real-time display in Teams/UI | No — batch processing ]
STOP_SEQUENCES:     [ None | <list if required> ]
TOOL_USE:           [ None | <tool definitions if required> ]
REQUEST_TIMEOUT:    [ 30s (haiku) | 60s (sonnet) | 120s (opus) ]
RETRY_ON_TIMEOUT:   [ Yes — max 2 retries with exponential backoff | No ]

SAMPLE API CALL SKELETON (Python Anthropic SDK):
  import anthropic
  client = anthropic.Anthropic(api_key=ANTHROPIC_API_KEY)

  response = client.messages.create(
    model="[selected model]",
    max_tokens=[value],
    temperature=[value],
    system=[
      {
        "type": "text",
        "text": "[SKILL.md Framework content]",
        "cache_control": {"type": "ephemeral"}
      }
    ],
    messages=[
      {
        "role": "user",
        "content": "[context payload — no PHI, no secrets]"
      }
    ]
  )

═══════════════════════════════════════════════════════════
SECTION 5 — TOKEN BUDGET & COST TRACKING
═══════════════════════════════════════════════════════════
ESTIMATED INPUT TOKENS (uncached):
ESTIMATED CACHE HIT TOKENS (system prompt, after first call):
ESTIMATED OUTPUT TOKENS:

COST PER CALL (use current Anthropic pricing):
  haiku-4-5:  input $0.80/M, cached input $0.08/M, output $4.00/M
  sonnet-4-6: input $3.00/M, cached input $0.30/M, output $15.00/M
  opus-4-8:   input $15.00/M, cached input $1.50/M, output $75.00/M

COST ESTIMATE — FIRST CALL (no cache):
COST ESTIMATE — SUBSEQUENT CALLS (cache hit on system prompt):
COST ESTIMATE — DAILY (at expected call volume):
COST CEILING (per run / per day): $[X]
ALERT THRESHOLD:                  $[Y] (triggers Dr. Lewis notification before ceiling)

═══════════════════════════════════════════════════════════
SECTION 6 — ERROR HANDLING
═══════════════════════════════════════════════════════════
RATE LIMIT (429):
  Action: Exponential backoff — wait 2^n seconds (n = retry attempt, max n=5)
  Log: rate_limit event, retry count, wait duration
  After max retries: classify as ERROR, notify Dr. Lewis, halt call

TIMEOUT:
  Action: Retry up to 2 times; if still timing out, log + notify
  Consider: downgrade model (opus → sonnet) if timeout persists
  Log: timeout event, model, elapsed time

CONTENT POLICY REFUSAL (400 / content_filter):
  Action: Log refusal reason; DO NOT retry with same prompt
  Escalate to Dr. Lewis: prompt review required
  Check: does prompt contain PHI or disallowed content?

SERVER ERROR (500 / 529 — overloaded):
  Action: Retry after 30 seconds; max 3 retries
  Log: error code, timestamp, retry attempt

INVALID API KEY / AUTH FAILURE (401):
  Action: HALT immediately; notify Dr. Lewis; do NOT retry
  This is a non-retriable critical error

COST CEILING HIT:
  Action: HALT call; log ceiling event; notify Dr. Lewis
  Do NOT proceed to output write

ALL ERRORS: Log to entity audit log with: call_name, model, error_code, retry_count, resolution
```

## Output Format

```markdown
## Claude API Call Spec: [Call Name]

**Agent/Workflow:** [name]
**Entity:** [MBL HoldCo | Allevio | HIVE | Column6]
**Model:** [claude-haiku-4-5 | claude-sonnet-4-6 | claude-opus-4-8]
**Selection Rationale:** [one sentence]

### Token Budget
| Component | Tokens | Cost/Call (first) | Cost/Call (cached) |
|-----------|--------|-------------------|--------------------|
| System (uncached) | X | $X | — |
| System (cached) | X | — | $X |
| User input | X | $X | $X |
| Expected output | X | $X | $X |
| **Total** | **X** | **$X** | **$X** |

**Daily cost estimate:** $X/day at [N] calls/day
**Cost ceiling:** $X/day | Alert at: $X

### Prompt Structure
- **System:** SKILL.md Framework (cached via cache_control ephemeral)
- **User:** [description of context payload fields]
- **Multi-turn:** [Yes/No — reason]

### API Config
| Parameter | Value |
|-----------|-------|
| max_tokens | X |
| temperature | X |
| streaming | Yes/No |
| timeout | Xs |

### Error Handling
| Error | Retry | Notify | Halt |
|-------|-------|--------|------|
| 429 Rate limit | Backoff (5x) | Dr. Lewis after max | No |
| Timeout | 2x | Dr. Lewis if persistent | No |
| Content refusal | No | Dr. Lewis | Yes |
| Auth failure | No | Dr. Lewis | Yes |
| Cost ceiling | No | Dr. Lewis | Yes |

### Prompt Validation
- [ ] No PHI
- [ ] No secrets in prompt
- [ ] Entity isolated
- [ ] System prompt stable (no run-time vars in cached block)
```

## Output Contract

- **Model selection is a cost and quality decision that must be made deliberately for every call — the default is sonnet-4-6, not opus-4-8.** Opus-4-8 costs 5× more than sonnet-4-6 per token and 18× more than haiku-4-5. At MBL's agent scale (~1600 skills, multiple concurrent workflows), using opus-4-8 for tasks that sonnet-4-6 handles equally well is a significant and unnecessary expense. This skill requires explicit cost justification for every opus-4-8 selection, and that justification is logged. Haiku-4-5 is mandatory for any high-volume extraction task — using sonnet-4-6 for batch classification is flagged as a cost defect.

- **Prompt caching is not optional — it is required on every call where a stable system prompt exists.** The SKILL.md Framework section is specifically designed to be the cache target: it is long, stable, and reused across iterations. Without cache_control on the system prompt, every call pays full input token price for content that does not change. At MBL's call volumes, cache misses on system prompts represent direct, preventable cost. This skill verifies that cache_control is configured correctly and that no run-time variables are injected into the cached block (which would invalidate the cache on every call).

- **Every Claude API call is logged with enough detail to reconstruct the cost and compliance picture for any audit.** The log entry includes: call name, agent workflow, entity, model used, input tokens (cached vs. uncached), output tokens, cost estimate, call timestamp, error code (if any), and HITL status. This is not optional instrumentation — MBL's AI governance framework requires that every Claude API call be attributable to a workflow, an entity, and a cost center. Unlogged calls are a compliance gap and will be flagged in the next audit cycle.

## System Dependencies

**Reads from:** SKILL.md files (system prompt source); loop state (context payload fields); Krista.ai webhook payload (user message inputs); Anthropic SDK documentation for current pricing.

**Writes to:** Claude API (messages.create call); entity audit log (call metadata, cost, error); cost tracking ledger (SharePoint `/AI Operations/Cost Tracking/claude-api-cost-log.md`).

**HITL Required:** Model selection for opus-4-8 requires Dr. Lewis sign-off on cost justification. Content policy refusals require Dr. Lewis prompt review before retry. Auth failures require Dr. Lewis immediate action.

## Test Cases

**Golden Path — Sonnet-4-6 Weekly HIVE Summary:**
Context payload (~800 tokens) routed from Krista webhook → sonnet-4-6 call with cached SKILL.md system prompt (~2,000 tokens, cached after first call) → output ~1,500 tokens → total cost ~$0.025/call (cached) → output validated, no PHI, entity = HIVE → HITL gate triggered → Dr. Lewis approves → output written to SharePoint. Cost logged. Cache hit confirmed on second run of the week.

**Edge Case — Rate Limit Mid-Loop:**
High-volume haiku-4-5 extraction loop hits 429 rate limit at iteration 47 of 200. Exponential backoff applied: waits 2s, 4s, 8s, 16s, 32s. Fifth retry succeeds. Total delay: 62 seconds. Loop continues. Rate limit event logged with retry count. Dr. Lewis not notified (resolved within retry policy). If all 5 retries fail: loop halts at iteration 47, Dr. Lewis notified with iteration count and retry log.

**Adversarial — PHI Injected into User Message (Allevio):**
An Allevio data fetch returns a patient name and DOB in the context payload (unexpected PHI — AdvancedMD API response included more fields than expected). PHI exclusion check in prompt validation detects pattern before API call is made. Call is BLOCKED. Error logged: `PHI_DETECTED_IN_PAYLOAD`. Dr. Lewis notified via Teams DM with field names (not values). Krista.ai workflow halted. No Claude API call is made, so no PHI is ever sent to Anthropic. Incident logged with full field inventory (values redacted).

## Audit Log

Every Claude API call configuration produced by this skill is logged with: call name, entity, model selected (and rationale), estimated cost/call, cache configuration status, prompt validation checklist results, and Dr. Lewis review status (for opus-4-8 selections). The log is appended to `/AI Operations/Audit Logs/claude-api-call-log.md`. For live agent runs, each actual API call appends a runtime log entry (model, tokens used, actual cost, error code or success) to the entity cost tracking ledger. This provides both design-time and runtime auditability.

## Deprecation

This skill is deprecated if Anthropic introduces a breaking change to the Claude API (new authentication model, new model IDs, new caching mechanism) that requires a full skill rewrite, or if MBL adopts an LLM gateway (e.g., LiteLLM, Portkey) that abstracts the Anthropic SDK and makes this skill's call-level configuration obsolete. Model IDs (haiku-4-5, sonnet-4-6, opus-4-8) are updated in-place as new versions release — a model ID change alone does not trigger deprecation. Dr. John Lewis authorizes any deprecation in writing, and the current model selection decision tree is preserved in the successor skill or gateway configuration.
