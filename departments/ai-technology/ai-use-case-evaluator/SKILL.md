---
name: ai-use-case-evaluator
description: "Evaluate AI use cases for MBL Partners and portfolio companies. Use when the user says 'AI use case', 'evaluate an AI idea', 'should we use AI for this', 'AI opportunity', 'AI feasibility', 'AI for our business', 'automate with AI', 'AI automation', 'is this a good AI use case', 'AI ROI', 'where should we apply AI', 'AI candidate', 'AI candidate process', 'automate this task', 'AI for operations', 'AI for sales', 'AI for finance', 'AI for HR', 'AI for marketing', 'should AI do this', 'build vs. buy AI', 'AI prioritization', 'AI investment', 'AI application', 'AI workflow', 'AI project evaluation', 'which AI projects first', 'AI roadmap input', 'AI strategy input', or 'AI maturity assessment'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--process <name>] [--action <evaluate|score|prioritize|roadmap>]"
---

# AI Use Case Evaluator

Evaluate AI use cases for MBL Partners and portfolio companies — scoring proposed AI applications against a consistent framework (ROI potential; feasibility; risk; THRIVE alignment; data availability) to produce a prioritized roadmap input. AI investment at MBL is constrained by time, budget, and integration complexity; the evaluator ensures every AI project clears a bar before resources are committed.

## When to Use
- Matt Mathison or entity CEO proposes an AI initiative
- Dr. Lewis is building the quarterly AI roadmap
- Evaluating a vendor pitch for an AI-enabled tool
- Comparing multiple AI project candidates for sequencing

## AI Use Case Evaluation Framework

```
EVALUATION DIMENSIONS (scored 1-5 each; max 25):

  1. STRATEGIC VALUE (weight: 25%)
     5: Directly enables MBL's primary value creation thesis (portfolio oversight; LP returns; entity scaling)
     3: Supports a key operational process; clear tie to portfolio KPIs
     1: Nice-to-have; no direct revenue or margin impact
     
  2. ROI / FINANCIAL IMPACT (weight: 25%)
     5: Quantifiable time/cost savings >$50K/year OR revenue enablement >$100K
     3: $10K-50K/year in quantifiable impact OR significant qualitative lift
     1: Hard to quantify; speculative ROI
     
  3. FEASIBILITY (weight: 20%)
     5: Data available; integration path clear; Claude/Krista.ai can execute today
     3: Some gaps; 30-60 day build; moderate complexity
     1: Missing data; complex integration; requires vendor development
     
  4. RISK (weight: 15%)
     5: Low risk (internal process; no PHI; reversible; audit trail clear)
     3: Moderate risk (customer-facing; some data sensitivity; HITL required)
     1: High risk (PHI involved; regulatory exposure; irreversible actions)
     Note: Allevio use cases involving PHI = automatic 1 on risk dimension
     
  5. THRIVE ALIGNMENT (weight: 15%)
     5: Truth (accurate outputs) + Hustle (saves significant time) + Integrity (clear guardrails)
     3: Meets 2-3 THRIVE criteria
     1: Questionable output accuracy or missing guardrails

SCORING INTERPRETATION:
  20-25: Tier 1 — build now; highest priority
  15-19: Tier 2 — build in next 90 days; high value
  10-14: Tier 3 — build when Tier 1-2 complete; medium value
  <10: Deprioritize — not a good AI investment at this time

ENTITY-SPECIFIC CONSTRAINTS:
  Allevio: any use case involving member/clinical data requires PHI risk analysis FIRST
    PHI use = automatic disqualification unless fully de-identified
    Approved Allevio AI use cases: aggregate reporting; employer communication; scheduling; billing support
    HIPAA absolute: no AI model trained on or processing individual member health data
    
  HIVE: any use case involving acquisition decisions → recommendation only; Matt Mathison decides
  
  Column6: any use case involving client/agency campaign data → confidentiality evaluation first
  
MBL PHASE CONTEXT:
  Phase 0 (current): AI capability assessment + quick wins
  Phase 1: Meeting Intelligence System (summaries + pre-meeting prep)
  Phase 2+: Entity-specific automation (entity by entity after MBL validation)
  Priority bias: evaluate use cases for Phase 0/1 feasibility first
```

## Output Format

```markdown
# AI Use Case Evaluation — [Use Case Name]
**Entity:** [MBL/Allevio/HIVE/Column6] | **Proposed by:** [Name] | **Evaluated by:** Dr. Lewis | **Date:** [Date]

---

## Use Case Description
[1-2 sentences: what AI would do; what process it replaces or augments]

---

## Evaluation Scores

| Dimension | Score (1-5) | Rationale |
|-----------|------------|-----------|
| Strategic Value | X | |
| ROI / Financial Impact | X | $X/year quantified |
| Feasibility | X | [gaps: X] |
| Risk | X | [key risks: X] |
| THRIVE Alignment | X | |
| **Total** | **X/25** | **Tier: X** |

---

## Recommendation
**[BUILD NOW / BUILD NEXT 90 DAYS / DEPRIORITIZE]**
[2-sentence rationale; roadmap placement]

## HIPAA / Compliance Note
[If Allevio: PHI risk determination; if other entity: relevant compliance note]
```

## Output Contract
- The evaluation score is a guide, not a binding decision — if a use case scores 22/25 but requires access to Allevio member PHI, it is automatically deprioritized regardless of score; the constraint overrides the score; Dr. Lewis applies the constraints before presenting the score; a 22-scoring use case that is HIPAA-incompatible is presented as "not viable in current form; could score 18/25 with a fully de-identified data approach"; this framing converts a rejection into a viable alternative path without hiding the compliance reason
- Every Tier 1 use case receives a build plan, not just a score — when a use case scores 20-25, Dr. Lewis follows the evaluation immediately with the implementation path: what platform (Claude API direct; Krista.ai workflow; Claude Code agent), what data is needed, who owns it, and what the first milestone looks like; the evaluation is not the end of the conversation — it is the beginning of the build plan
- HITL required: any customer-facing AI use case → entity CEO approves before build; Allevio PHI analysis → Dr. Lewis + Allevio entity CEO + BAA review before any development; use cases that write to systems of record (QuickBooks; Monday.com; GHL) → human approval checkpoint designed in from the start; Matt Mathison sees Tier 1 use cases and roadmap; AI vendor evaluation → Dr. Lewis + Matt Mathison; use cases affecting LP communications → Matt Mathison approves

## System Dependencies
- **Reads from:** Entity process documentation; CLAUDE.md context (systems map; entity vocabulary); Krista.ai Phase 0 assessment data; AI vendor proposals; entity CEO input on process pain points
- **Writes to:** AI roadmap document (SharePoint → MBL → AI Strategy → Use Case Registry); Krista.ai phase planning inputs; entity CEO use case evaluation reports; Matt Mathison AI strategy briefings
- **HITL Required:** Customer-facing use cases → entity CEO; Allevio PHI analysis → entity CEO + BAA; system-of-record writes → HITL checkpoint designed in; Tier 1 → Matt Mathison sees; vendor evaluations → Dr. Lewis + Matt Mathison

## Test Cases
1. **Golden path:** Matt Mathison asks: "Can AI summarize my weekly meetings and push action items to Monday.com automatically?" Evaluation: Strategic Value: 5 (Matt Mathison's core workflow; directly enables portfolio oversight); ROI: 4 (~8 hours/week saved across Matt + Dr. Lewis + Jimmy; $40K/year equivalent; plus meeting intelligence quality); Feasibility: 5 (Krista.ai transcribes already; Claude API for summaries; Monday.com has API); Risk: 5 (internal data; no PHI; HITL on Monday.com push = human reviews before push); THRIVE: 5 (Truth: summaries reviewed before push; Hustle: significant time savings; Integrity: human review gate). Score: 24/25. Tier 1. Recommendation: BUILD NOW. Implementation: Meeting Intelligence Phase 1 (already on roadmap).
2. **Edge case:** Allevio entity CEO proposes using AI to identify "members who are at risk of health events" by analyzing their usage patterns → Dr. Lewis: "This use case has an automatic disqualification on the Risk dimension. Analyzing individual member health patterns — even usage patterns within Allevio's care coordination platform — involves PHI (health-related behavioral data). Applying an AI model to individual member data to identify health risk requires (1) a BAA with the AI vendor; (2) a full HIPAA security risk analysis; (3) de-identification or safe harbor compliance; and (4) Allevio entity CEO + legal counsel approval before any development. Score: Strategic Value 4; ROI 4; Feasibility 2; Risk 1 (PHI); THRIVE 3 = 14/25 with current data approach. I'll re-evaluate at 18+ if Allevio develops a fully de-identified, employer-aggregate-level version of this use case."
3. **Adversarial:** Entity CEO wants to skip the evaluation framework and just "start building" because the use case "is obviously good" → Dr. Lewis: "I understand the instinct — when a use case feels obviously valuable, the evaluation looks like overhead. But we've seen two patterns that make the framework worth 2 hours upfront: (1) use cases that feel obvious often have a data availability or integration gap that surfaces in Week 3 of a build, not Week 1; (2) Allevio use cases require PHI analysis before any line of code is written — not after. The evaluation gives us a clean 'go' decision that Matt Mathison has visibility into, and it surfaces the integration gaps while they're cheap to find. I'll complete the evaluation today. If it scores Tier 1, we start the build plan tomorrow."

## Audit Log
All evaluated use cases (permanent; including deprioritized). Evaluation scores and rationale. HIPAA/PHI risk analysis records (Allevio). Entity CEO approval records (customer-facing use cases). Matt Mathison roadmap visibility records. Tier 1 build plan records. Vendor evaluation records.

## Deprecation
Scoring weights reviewed annually as MBL's AI maturity evolves. Entity-specific constraints reviewed when regulatory requirements change (HIPAA; financial; O&G). Phase context updated as AI roadmap progresses through phases. THRIVE criteria reviewed if organizational values framework changes. ROI thresholds reviewed as AI infrastructure costs change.
