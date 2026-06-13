---
name: jobs-to-be-done-analyzer
description: "Analyze user needs through the Jobs-to-be-Done framework. Use when the user says 'jobs to be done', 'JTBD', 'what job is the user hiring this for', 'why do users really use this', 'underlying user motivation', 'what progress is the user trying to make', 'user motivation analysis', or 'why do customers choose us'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--user-segment <description>] [--mode <discover|map|validate>]"
---

# Jobs-to-be-Done Analyzer

Analyze user needs through the Jobs-to-be-Done (JTBD) framework. JTBD reframes product thinking from "what features should we build" to "what progress is the user trying to make in their life?" Users don't buy products — they hire them to do a job. When you understand the job, you understand what success looks like for the user and what would make them switch to a competitor (or stop using entirely). For MBL's AI systems, JTBD clarifies what work an agent must actually do to be valuable vs. what seems impressive technically.

## When to Use
- Defining what job an AI agent or product should do
- Why users are churning — what job is the product failing to do?
- Competitive analysis — what job do competitors do better?
- Feature prioritization — which job should we focus on?
- Portfolio company product assessment — is the product hired for a clear job?

## JTBD Framework

```
The Job Statement:
"When [situation], I want to [motivation/action], so I can [expected outcome]."

This is different from a user story because:
  - Situation is specific (when it matters)
  - Motivation is the underlying driver (not the feature)
  - Expected outcome is the progress they want to make

Example — Matt Mathison using Meeting Intelligence:
  Bad: "As Matt, I want meeting summaries so I can have notes."
  JTBD: "When I return from a week of travel, I want to know what decisions were made in my absence without reading 200 emails, so I can re-engage confidently with my team."

The job is: re-engage confidently after absence
The feature is: meeting summaries
The failure mode if we get this wrong: we build a summaries tool that doesn't help someone re-engage
```

## Job Dimensions

```
Functional job: The practical task being accomplished
  Example: Track deal pipeline status

Emotional job: How the user wants to feel
  Example: Feel in control without being in every meeting

Social job: How the user wants to be perceived
  Example: Be seen as a thoughtful, informed decision-maker

These all matter. Features that only address the functional job often fail
because they ignore the emotional and social dimensions.
```

## JTBD Discovery Interview Questions

```
To understand the job (NOT to pitch the product):
  "Walk me through the last time you [relevant situation]..."
  "What were you trying to accomplish when you [action]?"
  "What had to be true for this to feel successful?"
  "What did you try before? Why did it fall short?"
  "When you made [past decision], what were you hoping for?"

To understand switching:
  "When did you first decide you needed something different?"
  "What was the moment you knew [old approach] wasn't working?"
  "What made you hire [product/solution]?"
  "What would make you fire it?"
```

## Output Format

```markdown
# Jobs-to-be-Done Analysis — <Product/Feature>
**Date:** <date> | **Analyst:** Dr. John Lewis
**Entity:** <portfolio company or MBL>
**Research basis:** <interviews, analytics, observation — how this was derived>

---

## Primary Job

**Job statement:**
"When [situation], I want to [motivation], so I can [expected outcome]."

**Job dimensions:**
| Dimension | What the user needs |
|-----------|-------------------|
| Functional | <task to accomplish> |
| Emotional | <how they want to feel> |
| Social | <how they want to be perceived> |

**Job frequency:** Daily / Weekly / Monthly
**Job importance:** Critical / High / Medium (blocking vs. nice-to-have)
**Current solution:** <what they do today — the "incumbent" they'd fire>

---

## Job Map (steps in the job)

| Step | What the user is trying to do | Current struggle | Opportunity |
|------|------------------------------|----------------|-------------|
| 1. Define | [What job step] | [Pain] | [Where we can help] |
| 2. Locate | [Step] | [Pain] | [Opportunity] |
| 3. Prepare | | | |
| 4. Confirm | | | |
| 5. Execute | | | |
| 6. Monitor | | | |
| 7. Modify | | | |
| 8. Conclude | | | |

**Highest-pain steps (prioritize here):** Steps <N> and <N>

---

## Secondary Jobs (supporting or related)

| Job | Frequency | Importance | Currently served by |
|-----|----------|-----------|-------------------|
| [Secondary job] | Weekly | High | [Tool/method] |

---

## Desired Outcomes (what success looks like to the user)

"When the job is done well, [user] wants to:
  - <Outcome 1 — specific and measurable>
  - <Outcome 2>
  - NOT have to <thing they don't want to do>"

**Outcome satisfaction today:** <N>% satisfied with current approach

---

## Competing Solutions (who they might "hire" instead)

| Competitor | What job they do | Their weakness |
|-----------|----------------|---------------|
| [Solution A] | [Job they do] | [Where they fall short] |
| [DIY approach] | [Job they do] | [Limitation] |
| [Incumbent] | [Job they do] | [Why users would switch] |

---

## Product Implications

**What the product must do to get hired:**
1. <Specific capability that addresses primary job>
2. <Capability that reduces emotional friction>
3. <Capability that addresses social dimension>

**What we're currently over-building:**
<Features we're building that don't map to a clear job dimension>

**What we're under-building:**
<Jobs that users have that we're not addressing>
```

## Output Contract
- Job statement always in proper format (situation/motivation/outcome) — "users want X" is not a JTBD
- Job map always included — JTBD without the job map misses where the pain is
- Competing solutions always included — "no competition" usually means the incumbent is the spreadsheet or email
- Product implications always actionable — what to build MORE of and what to stop building
- HITL required: Dr. Lewis reviews JTBD analysis; insights that change roadmap direction require Matt Mathison alignment

## System Dependencies
- **Reads from:** User interview notes, churn interviews, product analytics, support tickets
- **Writes to:** JTBD analysis document (SharePoint/Product); informs roadmap and PRD
- **HITL Required:** Dr. Lewis approves analysis; roadmap implications require Matt Mathison awareness

## Test Cases
1. **Golden path:** JTBD for Meeting Intelligence → Job: "When returning from absence, I want to understand what happened without reading everything, so I can lead confidently without appearing out of the loop"; Job map: Locate (what meetings happened?) → Understand (what was decided?) → Prioritize (what needs my attention?) → Act (what do I need to do?); highest pain: Understand step; product implication: summaries must include decisions and action items, not just transcripts
2. **Edge case:** Portfolio company doesn't know their users' job → run 5 customer interviews focused on "last time" questions; don't ask hypotheticals; find the job from past behavior, not stated preferences
3. **Adversarial:** Product team says "our job is clear — it's productivity" → productivity is a category, not a job; what specifically in their day are they trying to do faster or better?; without specificity, every productivity tool is a competitor and no feature is clearly right

## Audit Log
JTBD analyses retained. Interview notes archived. Roadmap implications documented.

## Deprecation
Retire when product team has a dedicated product manager who runs continuous JTBD research as part of standard customer discovery.
