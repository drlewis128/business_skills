---
name: revops-sales-process-manager
description: "Define and manage the sales process for MBL Partners portfolio entities. Use when the user says 'sales process', 'sales methodology', 'sales playbook', 'how do we sell', 'selling process', 'sales stages', 'exit criteria', 'MEDDPICCC', 'qualification framework', 'deal qualification', 'how to qualify a deal', 'sales SOP', 'sales standard operating procedure', 'sales approach', 'discovery process', 'discovery call', 'demo process', 'proposal process', 'negotiation process', 'close process', 'how to run a demo', 'how to run discovery', 'sales consistency', 'sales framework', 'how to run the sales process', 'sales repeatability', 'sales training', 'what should sales do', 'objection handling', 'common objections', 'how to handle objections', or 'deal qualification criteria'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--stage <discovery|demo|proposal|negotiation|close>] [--action <define|document|train|review>]"
---

# RevOps Sales Process Manager

Define, document, and govern the sales process for MBL Partners portfolio entities — creating a repeatable, entity-specific sales methodology with clear stage exit criteria, discovery questions, objection handling, and proposal standards. A sales process that lives only in the rep's head does not scale and cannot be diagnosed when close rates decline.

## When to Use
- Building the sales process for a new entity from scratch
- Onboarding a new AE who needs the process documented
- Close rates declining and root cause is process inconsistency
- Entity CEO asking for a sales playbook

## Sales Process Framework

```
QUALIFICATION FRAMEWORK — MEDDPICCC:
  M — Metrics: what does the prospect measure? what will success look like in numbers?
  E — Economic Buyer: who controls the budget? Have we spoken to them directly?
  D — Decision Criteria: what factors will drive the final decision?
  D — Decision Process: what is the exact process from "interested" to "signed"?
  P — Paper Process: who initiates the contract? what does legal review look like? how long?
  I — Identify Pain: what specific problem are they trying to solve? how acute is it?
  C — Champion: who inside the organization is advocating for our solution?
  C — Competition: what else are they evaluating? what is the status quo?
  
  MEDDPICCC must be complete before moving a deal to Stage 4 (Qualified)
  Incomplete MEDDPICCC = deal is Stage 3 (Discovery) regardless of rep confidence
  
ENTITY-SPECIFIC PROCESS:

  ALLEVIO EMPLOYER SALES PROCESS:
    Stage 2 — Connected call (15-20 min):
      Goal: confirm ICP (AZ employer; ≥25 EE; problem with employee healthcare costs/access)
      Do NOT do full discovery on this call — just confirm fit and book discovery
      Exit criteria: discovery call booked with HR lead or C-level; employer confirmed ≥25 EE
      
    Stage 3 — Discovery call (45-60 min):
      Goal: understand full picture; begin MEDDPICCC; build trust
      Key questions:
        "What does your current employee healthcare benefit cost you per employee per month?"
        "What is the biggest challenge with your current benefits setup?"
        "What does utilization look like — are employees actually using the benefit?"
        "What would need to be true for you to make a change in the next 90 days?"
      Exit criteria: pain identified; economic buyer and decision process identified; MEDDPICCC ≥70%
      
    Stage 4 — Qualified (internal):
      No customer action — sales lead completes MEDDPICCC in GoHighLevel
      Entity CEO or Dr. Lewis spot-checks qualification before Stage 5 proposal is created
      
    Stage 5 — Proposal:
      Proposal built using Allevio proposal template (SharePoint → Allevio → Sales → Proposals)
      Proposal must include: employer-specific ROI estimate (PMPM savings × enrolled EE × 12 months)
      Proposal presented to economic buyer (not just HR champion) — if HR champion is the only contact, escalate introduction to economic buyer before proposal delivery
      
    Stage 6 — Negotiation:
      Common Allevio objections and responses:
        "We're locked into our current carrier for another year" → "Let's map your renewal date; we can work backward to a transition plan that starts education now and goes live at renewal."
        "I need to run this by our broker" → "Absolutely — can we get on a call together? We work with brokers regularly and they can help accelerate the evaluation."
        "The price seems high" → "Let me show you the ROI model. At $X PMPM and [N] enrolled employees, you're looking at $Y in annual savings versus your current benefit cost. The question isn't whether the price is high — it's whether the ROI makes the investment obvious."
        
  COLUMN6 AGENCY SALES PROCESS:
    Stage 3 — Discovery (30 min):
      Goal: understand agency's CTV/programmatic book and where Column6 fits
      Key questions:
        "What percentage of your clients are running CTV today?"
        "What platform or DSP are you currently using for CTV delivery?"
        "What's the biggest challenge your clients face with CTV — inventory, measurement, or targeting?"
        "Are you managing this through an existing relationship or are you open to a new platform?"
      Exit criteria: CTV budget confirmed; agency decision process understood; champion identified
      
    Stage 5 — IO Pending:
      Column6 sends IO template (Column6 IO template — SharePoint → Column6 → Sales → IO)
      IO must be signed by authorized agency contact (not just the AE on the agency side)
      Common delay: "legal review" → proactively ask at Stage 4 how long legal review takes; set timeline expectation
```

## Output Format

```markdown
# Sales Process Document — [Entity] — [Version]
**Maintained by:** RevOps | **Approved by:** Entity CEO + Dr. Lewis | **Last updated:**

---

## Stage Definitions and Exit Criteria

| Stage | Name | Exit criteria (ALL must be met to advance) |
|-------|------|------------------------------------------|
| Stage 3 | Discovery | Pain identified; economic buyer name known; MEDDPICCC ≥70%; discovery call notes in GHL |
| Stage 4 | Qualified | Full MEDDPICCC complete; spot-check approved; proposal ready to build |
| Stage 5 | Proposal | Proposal delivered to economic buyer; next step committed (not just "I'll look at it") |
| Stage 6 | Negotiation | Objections surfaced and being addressed; contract timeline known |
| Stage 7 | Verbal Commit | Economic buyer verbal agreement; contract being prepared; internal champion confirmed |

---

## Key Questions by Stage
[Stage-specific questions]

---

## Common Objections and Responses
[Objection → response]

---

## Proposal Standards
[Template location; required components; who approves]
```

## Output Contract
- Exit criteria are the integrity of the pipeline — if reps can advance deals through stages without meeting exit criteria, the pipeline stage distribution becomes meaningless, the forecast becomes unreliable, and coverage ratios stop reflecting reality; Dr. Lewis treats exit criteria as technical requirements for stage advancement, not suggestions; GoHighLevel should be configured to prompt for exit criteria fields when a rep advances a stage; at a minimum, the weekly pipeline health check includes a sample audit of Stage 4+ deals to verify exit criteria were met before advancement
- Sales process is designed for the buyer, not the seller — the MEDDPICCC framework exists to surface buyer information (metrics, economic buyer, decision process) that ensures Column6 and Allevio sales reps are talking to the right people, understanding the real decision, and building proposals that address actual pain; a rep who completes MEDDPICCC properly will never be surprised by a "we didn't realize we needed budget approval from the CFO" late in the cycle; that is not a compliance exercise — it is buyer respect and deal efficiency
- HITL required: Stage 4 spot-check on MEDDPICCC completeness → entity CEO or Dr. Lewis (random sample; not every deal); proposal delivery to economic buyer — entity CEO informed for deals >$50K ACV; sales process update (exit criteria, question set, objection responses) → entity CEO + Dr. Lewis approves; new rep training on process → Dr. Lewis reviews training materials before first use

## System Dependencies
- **Reads from:** GoHighLevel (deal stages; MEDDPICCC field completion; activity notes; proposal delivery records); revops-pipeline-manager (stage definitions consistent with this process); revops-quota-design-model (quota achieved per rep; process quality correlation)
- **Writes to:** Sales process playbook (SharePoint → [Entity] → Sales → Process → [Version]); GoHighLevel stage configuration (exit criteria prompts); onboarding training materials; entity CEO sales review packet
- **HITL Required:** Stage 4 MEDDPICCC spot-check → entity CEO or Dr. Lewis; proposal for deals >$50K ACV → entity CEO informed; process updates → entity CEO + Dr. Lewis; training materials → Dr. Lewis reviews

## Test Cases
1. **Golden path:** New Allevio AE onboarding. Week 1: reads sales process playbook. Week 2: shadows entity CEO on 2 discovery calls. Week 3: leads first connected call (entity CEO observes); debrief immediately after on MEDDPICCC coverage. Week 4: leads first discovery call; entity CEO spot-checks GoHighLevel entry for MEDDPICCC completeness before advancing to Stage 4. Month 2: AE advances first deal to Stage 5 with complete MEDDPICCC and qualified proposal. Entity CEO reviews proposal before delivery. Result: AE closes first deal in Month 4. Pattern: process adherence tracked from Day 1 → consistent with 37% close rate expectation.
2. **Edge case:** Rep shortcutting discovery calls ("I already know what they need from the Connected call; do I have to do the full Stage 3?") → Dr. Lewis: "Yes. The discovery call is not a formality — it is where you complete MEDDPICCC and build the trust that makes the proposal compelling. A rep who skips discovery because they think they know the prospect's situation is making an assumption rather than verifying. In Allevio's market, the HR contact you spoke with at Stage 2 often doesn't know the full picture on budget, decision authority, or competitive evaluation. Discovery surfaces what you don't know. Skipping it means you're proposing on incomplete information. If your discovery calls are too long, I can help tighten the question set — but we're not removing the stage."
3. **Adversarial:** Entity CEO wants to remove MEDDPICCC as "too formal for our small sales team" and replace it with "gut feel qualification" → Dr. Lewis: "I understand the instinct — MEDDPICCC can feel rigid for a 2-person sales team. But 'gut feel' qualification is exactly what's producing our Stage 5 stall rate (28 days average vs. 21-day benchmark) because we're advancing deals before confirming the economic buyer. MEDDPICCC is not bureaucracy — it's a checklist that prevents us from presenting to the wrong person. What I'll do: simplify the GHL fields to a 4-field version (pain, economic buyer, decision process, timeline) for Stage 4 qualification — not 8 fields. That addresses the complexity concern without removing the verification discipline. Let me mock that up for your review."

## Audit Log
Sales process document version history retained permanently. Stage exit criteria audit records (sample-based; monthly). MEDDPICCC completion rates tracked in GoHighLevel. Process training completion records. Entity CEO + Dr. Lewis approval records (every version). Objection response effectiveness tracking (win rate when each objection was raised).

## Deprecation
Sales process reviewed annually or when close rate changes significantly. MEDDPICCC fields reviewed when entity ICP or deal complexity changes. Objection library updated when competitive landscape changes. Proposal standards updated when entity pricing or offering changes.
