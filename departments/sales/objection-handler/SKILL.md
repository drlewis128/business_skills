---
name: objection-handler
description: "Generate responses to common sales objections. Use when the user says 'handle this objection', 'objection response', 'how to handle price objection', 'prospect said X', 'rebuttal for', 'sales objection', 'they said no because', or 'how to respond when they say'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<objection-text> [--entity <name>] [--product-context <description>] [--deal-stage <early|mid|late>]"
---

# Objection Handler

Generate structured responses to sales objections. Objections are not rejections — they're requests for more information. The rep who handles objections well converts deals that others lose.

## When to Use
- Prospect raises an objection on a call
- Building an objection response library for sales training
- Prepping for a specific deal where objections are anticipated
- After a lost deal (what was the objection and how should it have been handled?)

## Objection Handling Framework: LAER

1. **L — Listen** — Hear the full objection without interrupting. Don't assume you know what they mean.
2. **A — Acknowledge** — Validate the concern. Don't argue. ("That's a fair concern...")
3. **E — Explore** — Ask a question to understand the objection more deeply before responding.
4. **R — Respond** — Address the specific concern with evidence, reframing, or questions.

## Common Objections and Responses

### "We don't have budget right now."
**Explore:** "Is it that there's literally no budget available, or that this hasn't been prioritized yet?"
**Response (if no budget):** "Understood — when does your next budget cycle open up? I'd like to make sure we're positioned for that conversation when the time comes."
**Response (if not prioritized):** "What would need to change for this to become a priority? Understanding that helps me either make the case or know when to follow up."

### "We're happy with our current solution."
**Explore:** "What do you like most about your current approach? And where are the areas you wish it worked better?"
**Response:** "That's great to hear — the best time to evaluate alternatives is actually when you're not in crisis. Most companies that switched to us started in the same place. What I'd want to understand is whether there are any gaps in your current solution that, if solved, would create meaningful value."

### "Your price is too high."
**Explore:** "When you say too high — too high compared to what? Another solution, your internal benchmark, or just the total number?"
**Response (vs. competitor):** "Let's compare apples to apples. What does your current solution include, and what does it cost fully loaded — including implementation, support, and your team's time?"
**Response (vs. budget):** "I hear you. Can we talk about the ROI side? If [solution] does [X outcome], what's that worth to you in time saved or revenue protected?"

### "I need to think about it."
**Explore:** "Absolutely — what specifically do you need to think through? I want to make sure I can help address whatever's holding you back."
**Response:** "That's totally reasonable. What I usually find is there's a specific concern underneath that. Is it the timing, the investment, a stakeholder you need to get aligned, or something about the product itself?"

### "We're looking at other options."
**Explore:** "That makes sense — who else are you evaluating, and what criteria are most important to your decision?"
**Response:** "I'd actually encourage you to evaluate options. Here's what I'd ask you to look carefully at when comparing: [your differentiator]. Most of our customers evaluated [competitor] and chose us because [specific reason]."

### "We already tried something like this and it didn't work."
**Explore:** "What happened? I want to understand what went wrong so I can tell you honestly whether we'd have the same problem."
**Response:** "That's valuable to know. The reasons implementations fail are usually one of three things: the tool wasn't the right fit, the implementation wasn't properly resourced, or it wasn't adopted by the team. Which of those was the biggest issue?"

### "We don't have time to implement this right now."
**Explore:** "When would be a better time? What's driving the current capacity crunch?"
**Response:** "That's fair — what if we scoped a smaller starting point that doesn't require heavy lift? We've helped companies get started in as little as [timeframe] with [minimal-friction implementation]."

### "Send me some information and I'll review it."
**Response:** "I can do that — but in my experience, a PDF rarely gets to the heart of whether something is a fit. Would it be okay if I sent you one targeted piece and then we schedule 15 minutes to see if your situation maps to what we do? That way you're not reading material that may not apply."

## Output Format

```markdown
# Objection Response — <Objection>
**Deal Stage:** <early/mid/late> | **Persona:** <buyer type>

## The Objection
"<Exact or paraphrased objection>"

## LAER Response

**Listen:** <What to listen for — is this a real objection or a stall?>

**Acknowledge:**
"<Opening acknowledgment — validate the concern>"

**Explore (ask before responding):**
"<Question to understand the objection deeper>"

**Respond:**
Depending on their answer:
- If they say [A]: "<Response A>"
- If they say [B]: "<Response B>"

## The Goal After This Exchange
<What the rep should be trying to move toward — next step, reframe, or close>

## If They Repeat the Objection After Your Response
<Fallback — when is it okay to let go vs. push once more>
```

## Output Contract
- Every response includes an Explore question — never respond to an objection without understanding it first
- Responses avoid arguing with the prospect — always validate before redirecting
- Multiple response paths always provided (objections rarely have one cause)
- HITL required before any price-level objection response is used in a negotiation above $50K

## System Dependencies
- **Reads from:** Objection text, product/service context, deal stage (provided)
- **Writes to:** Nothing (response guide for rep use)
- **HITL Required:** Sales manager reviews objection handling approach for high-value deals; price negotiation responses require Dr. Lewis or Matt Mathison sign-off on floor

## Test Cases
1. **Golden path:** "Too expensive" objection in late-stage enterprise deal → LAER framework with 3 response paths (vs. competitor, vs. budget, ROI reframe)
2. **Edge case:** Objection that's a genuine blocker (e.g., wrong market, no budget for 18 months) → honest assessment that this may not be the right time, graceful exit with re-engagement plan
3. **Adversarial:** Request to manipulate or pressure a prospect who's clearly said no → refuses, recommends graceful breakup that preserves relationship and future opportunity

## Audit Log
Objection library retained by type and version. Win/loss outcomes tracked by objection type for playbook refinement.

## Deprecation
Retire when sales enablement platform (Highspot, Gong) includes AI-generated objection playbook with real-time coaching during calls.
