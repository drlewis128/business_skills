---
name: product-discovery-facilitator
description: "Facilitate product discovery to validate problems before building solutions. Use when the user says 'product discovery', 'validate this idea', 'should we build this', 'problem validation', 'discovery sprint', 'customer discovery', 'validate the problem', 'is this worth building', 'explore the problem space', or 'discovery research'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--problem <description>] [--method <interviews|experiment|survey|prototype>] [--entity <name>]"
---

# Product Discovery Facilitator

Facilitate product discovery to validate problems before building solutions. The most expensive mistake in product development is building a technically excellent solution to a problem users don't actually have. Discovery is the structured process of testing assumptions about the problem, the user, and the proposed solution before committing engineering capacity. For MBL's AI systems, discovery also validates that agent-based solutions are actually better than simpler alternatives.

## When to Use
- A new feature or product is being considered for the roadmap
- A significant investment is required — validate the bet before committing
- User feedback suggests a problem but we don't understand it deeply
- Product-market fit is uncertain for a portfolio company product
- Evaluating whether an AI/agent solution is the right approach (vs. simpler automation)

## Discovery Framework

```
Step 1 — Problem hypothesis
  "We believe [user type] experiences [problem] when [situation].
   Evidence: [what we've observed or heard]
   Risk if wrong: [what happens if this isn't actually the problem]"

Step 2 — Assumptions mapping
  List the 3-5 most critical assumptions baked into the problem statement
  Rank by: importance × uncertainty
  Top assumptions are your discovery priorities

Step 3 — Select research method (match to assumption type)
  Problem exists? → User interviews
  Size of problem? → Survey + analytics
  Solution fits? → Prototype test / Wizard of Oz
  Willingness to pay? → Pricing experiment

Step 4 — Run research and synthesize findings
  Determine: was the assumption valid, partially valid, or invalid?
  Don't selectively confirm; actively look for disconfirming evidence

Step 5 — Decision
  Build it: problem validated, solution direction clear
  Pivot: problem real but solution wrong — new hypothesis
  Kill it: problem not real or not important enough
```

## Research Methods Reference

### User Interviews (problem validation)
```
Good for: Understanding if problem exists; depth of pain; current behavior
Sample size: 5-8 interviews per segment (more interviews rarely add new insights after 5)
Key rules:
  - Ask about past behavior, not hypothetical future: "Tell me about the last time..."
  - Never pitch the solution during discovery: "What would you think of a tool that..."
  - Ask "why" 3 times: first answer is never the real answer
  - Listen for: workarounds (problem is real), frequency, emotional language (pain level)
Avoid: leading questions; solution testing in problem interviews
```

### Prototype Test (solution validation)
```
Good for: Does this design solve the problem? Can users figure it out?
Method: Build the minimum artifact to test the core assumption (sketch, Figma, Wizard of Oz)
Key rules:
  - Test the riskiest assumption, not the whole design
  - "Think aloud" protocol: ask user to narrate what they're thinking
  - Silence during test: don't guide the user
Success criteria: Define before running the test, not after
```

### Wizard of Oz (for AI/agent solutions)
```
Good for: Validating if an AI-assisted workflow is worth building before building the AI
Method: Human does what the AI would do; user doesn't know it's manual
When to use: "Does the agent actually help?" — test with real users; real workflow; simulated AI
MBL example: Test meeting summary quality by having Dr. Lewis write summaries manually and send them to Matt Mathison — validate format and value before building the pipeline
```

## Output Format

```markdown
# Product Discovery Report — <Problem/Feature>
**Date:** <date> | **Facilitator:** Dr. John Lewis
**Entity:** <portfolio company or MBL>
**Research method:** User interviews / Prototype / Survey / Wizard of Oz

---

## Problem Hypothesis

"We believe **[user type]** experiences **[problem]** when **[situation]**.
Evidence: [what triggered this hypothesis]"

---

## Assumptions Tested

| Assumption | Method | Result | Confidence |
|-----------|--------|--------|-----------|
| [Assumption 1 — most critical] | User interviews (n=6) | ✅ Validated | High |
| [Assumption 2] | Analytics review | ⚠️ Partially validated | Medium |
| [Assumption 3] | Prototype test (n=5) | ❌ Invalidated | High |

---

## Key Findings

### What We Learned

1. **[Finding 1]:** <specific insight with evidence>
   _Evidence:_ "Quote from user interview" — [participant descriptor, not name]

2. **[Finding 2]:** <insight>

3. **[Finding 3]:** <disconfirming finding — what we thought but turned out wrong>

---

## Problem Validation

**Is the problem real?** Yes / Partially / No
**Who has it?** <specific user segment>
**How painful?** Critical / Significant / Moderate / Minor
**Frequency:** Daily / Weekly / Monthly / Occasional

---

## Solution Direction

**Validated direction:** <what the research suggests to build>
**Rejected approaches:** <what the research told us won't work>
**Remaining unknowns:** <what we still don't know>

---

## Decision

**Recommendation:** Build it / Pivot (new hypothesis) / Kill it

**Rationale:** <2-3 sentences connecting findings to recommendation>

**If Build it — next steps:**
1. <First concrete action>
2. <Second action>
3. Add to roadmap Now/Next: <quarter>

---

## Research Artifacts

- Interview notes: [SharePoint link]
- Prototype tested: [Figma link]
- Survey results: [link]
```

## Output Contract
- Assumptions always listed before research begins — post-hoc rationalization of "discovery" is not discovery
- Disconfirming findings always included — a discovery report that only confirms the hypothesis was not real research
- Decision always explicit: build / pivot / kill — "we learned interesting things" without a decision is incomplete
- Sample evidence always included (anonymized) — findings without evidence are opinions
- HITL required: Dr. Lewis reviews discovery plan before research begins; Matt Mathison informed of significant discoveries that change roadmap direction; kill decisions require Dr. Lewis confirmation

## System Dependencies
- **Reads from:** User interview notes, analytics data, survey responses, prototype test recordings
- **Writes to:** Discovery report (SharePoint/Product); roadmap update if decision changes priorities
- **HITL Required:** Dr. Lewis approves; Matt Mathison informed of roadmap-changing discoveries

## Test Cases
1. **Golden path:** Discovery for autonomous deal sourcing agent → Problem hypothesis: Matt Mathison spends 4+ hours/week on initial deal qualification; Assumption: he would delegate this to an agent; Wizard of Oz test (Dr. Lewis manually runs qualification workflow for 2 weeks, Matt reviews output); Finding: format validated, accuracy 85% acceptable, time saved 3.5 hrs/week; Decision: Build — add to Q3 roadmap
2. **Edge case:** Research reveals the problem is real but the proposed solution is wrong → Pivot: document what solution the research suggests; write new hypothesis; run a smaller test before committing to build; don't abandon the problem just because the first solution failed
3. **Adversarial:** Executive wants to skip discovery because "we already know what to build" → discovery is how we avoid expensive misdirection; the cost of 2 weeks of interviews is 1/10th the cost of building the wrong thing; document the decision to skip; if the feature fails post-launch, reference this

## Audit Log
Discovery reports retained by initiative. Research artifacts archived. Build/kill decisions documented with rationale.

## Deprecation
Retire when product team has a dedicated product manager with established discovery practices running continuous customer research.
