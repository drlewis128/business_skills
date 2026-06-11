---
name: discovery-question-bank
description: "Generate targeted discovery questions for a sales conversation. Use when the user says 'discovery questions', 'what should I ask', 'question bank', 'sales questions', 'build discovery questions for this persona', 'how to run discovery', 'what to ask on a discovery call', or 'qualifying questions'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<persona-or-role> [--vertical <industry>] [--product-context <description>]"
---

# Discovery Question Bank

Generate targeted discovery questions for a specific persona and context. Good discovery is the difference between a salesperson who pitches and one who solves. Questions are the tool.

## When to Use
- Preparing discovery questions before a new meeting type
- Training a new salesperson on discovery for a specific vertical
- Building a discovery playbook for a product or service
- When deals are stalling (poor discovery is often why)
- Tailoring questions for a specific executive persona or industry

## Discovery Framework: SPIN

| Category | Purpose | Example |
|---------|---------|---------|
| **S — Situation** | Understand current state | "Walk me through how you currently handle X." |
| **P — Problem** | Surface pain | "What's the biggest challenge with your current approach?" |
| **I — Implication** | Expand the pain | "What happens downstream when that problem occurs?" |
| **N — Need-Payoff** | Build value | "If you could solve that, what would that be worth to the business?" |

Lead with Situation, then go deep on Problem and Implication before moving to value. Most reps ask one problem question and then jump to pitching — stay in Implication longer.

## Discovery Question Bank

### Situation Questions (Understand Current State)
1. "Walk me through how you currently handle [process related to your solution]."
2. "How long has this current approach been in place?"
3. "Who on your team is responsible for [problem area]?"
4. "What tools or systems are you using today for [function]?"
5. "How many people does this process affect across your organization?"
6. "What does a typical week look like for your [role who owns the problem]?"

### Problem Questions (Surface Pain)
7. "What's working well with your current approach? And what isn't?"
8. "What are the biggest frustrations your team has with [current process]?"
9. "If you could change one thing about how you handle [problem area] today, what would it be?"
10. "How often does [problem] come up? Is it a daily thing or occasional?"
11. "When [problem] occurs, what does your team typically do to work around it?"
12. "How does this compare to how you were doing it 2-3 years ago?"

### Implication Questions (Expand the Pain)
13. "When [problem] happens, what's the downstream impact on [operations / customers / revenue]?"
14. "How much time is your team spending on [workaround or manual process] each week/month?"
15. "What's the cost of getting this wrong? Can you give me an example of a time that happened?"
16. "How does this affect your ability to [strategic goal]?"
17. "What does [problem] mean for your ability to scale or grow?"
18. "How does leadership view this issue? Is it on their radar?"

### Need-Payoff Questions (Build Value)
19. "If you could solve [problem], what would that mean for your team?"
20. "What would it be worth to you if [specific outcome we deliver] happened?"
21. "If this were fixed by [date], what would that allow you to do?"
22. "How would your leadership view a solution to this?"
23. "What's your biggest concern about not addressing this?"

### Qualification Questions (Authority / Budget / Timeline)
24. "Who else is involved in evaluating solutions like this?"
25. "What does your evaluation and approval process typically look like?"
26. "Do you have budget set aside for solving this, or would this need to go through a new approval?"
27. "Is there a timeline you're working toward — a date you'd need this solved by?"
28. "What would need to be true for you to move forward?"

### Persona-Specific: C-Suite / Executive
29. "What are the top 2-3 strategic priorities for your organization this year?"
30. "How does [problem area] connect to those priorities?"
31. "What would success look like for you in the next 12 months if this were solved?"

### Persona-Specific: Finance
32. "What's the financial impact of [problem] in terms you've been able to quantify?"
33. "Are there compliance or audit implications if this isn't addressed?"
34. "How does this show up in your reporting to leadership or the board?"

### Persona-Specific: Operations / IT
35. "What integrations would you need this to plug into?"
36. "Who would own the implementation on your side?"
37. "What does your change management process look like for adopting new tools?"

### Persona-Specific: Healthcare (Allevio Context)
38. "How are you currently handling [billing / compliance / patient workflow]?"
39. "What's your audit exposure if [compliance issue] isn't addressed?"
40. "How does this affect your ability to see patients / process claims / reduce denials?"

## Output Format

```markdown
# Discovery Question Bank — <Persona/Vertical>
**Entity:** <entity> | **Product Context:** <brief> | **Date:** <date>

## Must-Ask Questions (Every Discovery Call)
1. <Question — listening for: what good answer = what bad answer sounds like>
2. <Question>
3. <Question>

## Situational Questions (Choose 2-3 Based on Context)
[curated from bank above]

## Problem + Implication Questions (Stay Here Longest)
[curated list]

## Qualification Questions (Before Closing the Call)
[BANT-oriented list]

## Follow-Up Probes (When They Give a Surface Answer)
- "Can you tell me more about that?"
- "What does that look like in practice?"
- "Can you give me an example of when that happened recently?"
- "How often? What's the impact when it does?"

## Listening Cues
| What They Say | What to Probe |
|-------------|--------------|
| "It's fine, just a little frustrating" | Implication — cost of that frustration |
| "We've tried to fix it before" | Why did prior attempts fail? |
| "Leadership has been asking about this" | Executive visibility = urgency |
| "We're evaluating options" | Who else? What's the timeline? |
```

## Output Contract
- Questions always include listening guidance — not just the question itself
- Implication questions always overweighted (most reps underinvest here)
- Qualification questions always included at end
- HITL required before executive-specific question frameworks are used in high-stakes calls

## System Dependencies
- **Reads from:** Persona description, product/service context, vertical (provided)
- **Writes to:** Nothing (question bank for rep training and call prep)
- **HITL Required:** Sales manager reviews question bank before use with key accounts

## Test Cases
1. **Golden path:** Healthcare operations director persona → SPIN bank with HIPAA compliance implication questions, billing accuracy problem questions, Allevio-relevant context
2. **Edge case:** C-suite call where strategic questions dominate → executive-oriented bank with strategic priority framing, lighter on operational detail
3. **Adversarial:** Rep wants questions that steer toward a predetermined conclusion → redirects to open-ended discovery, warns that leading questions erode trust and miss real pain

## Audit Log
Question banks retained by persona and version. Win/loss data used to refine question effectiveness.

## Deprecation
Retire when sales enablement platform (Highspot, Showpad) includes AI-generated discovery playbooks with persona-specific question banks.
