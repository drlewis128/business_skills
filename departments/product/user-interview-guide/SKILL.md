---
name: user-interview-guide
description: "Design and conduct user interviews for product research. Use when the user says 'user interview', 'customer interview', 'talk to users', 'interview guide', 'user research', 'interview script', 'how to run interviews', 'find out what users want', 'understand user behavior', or 'qualitative research'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--topic <problem|solution|churn|onboarding>] [--participants <N>] [--mode <prepare|run|synthesize>]"
---

# User Interview Guide

Design and conduct user interviews for MBL product research. User interviews are the fastest way to learn whether you're solving a real problem — but only when done correctly. The most common mistake: pitching the product and calling it research. Good interviews surface true user behavior, not politely stated preferences. For MBL's PE portfolio context, "users" include Matt Mathison (executive decision-maker), portfolio company operators, and end users of portfolio products.

## When to Use
- Before building a new feature — is the problem real?
- After a launch with disappointing metrics — why aren't users engaging?
- Churn interviews — why did users stop using the product?
- Onboarding research — where do new users get stuck?
- Portfolio company product assessment — what do their customers actually need?

## Interview Preparation

```
Step 1 — Define the research question
  What single question must this research answer?
  Example: "Is the time spent finding action items from meetings a real pain point
  for PE portfolio operators, and what do they currently do about it?"

Step 2 — Select participants
  5-8 interviews per segment (5 interviews reveals ~85% of themes)
  Select from: actual users, lapsed users, target users who haven't tried the product
  Avoid: best customers only (too positive); random sampling (too unfocused)

Step 3 — Write the interview guide (not a script)
  3-5 open-ended questions
  Never ask hypotheticals ("would you use a product that...")
  Always ask about past behavior ("tell me about the last time you...")
  Guide = guardrails; follow interesting threads even if off-guide

Step 4 — Logistics
  45-60 minutes per interview
  Record with permission; transcribe after
  Two people: one interviews, one takes notes
  Debrief immediately after each interview while memory is fresh
```

## Question Types

```
GOOD interview questions (elicit real behavior):
  "Tell me about the last time you [relevant situation]."
  "Walk me through what happened when [event]."
  "What did you do next? And then what?"
  "Why did you choose to [action]?"
  "What was the hardest part of that?"
  "What did you try that didn't work?"
  "If you could change one thing about [current approach], what would it be?"

BAD interview questions (avoid):
  "Would you use a product that does X?" — hypothetical; people lie about future behavior
  "What do you want?" — users describe features, not problems
  "Is X important to you?" — leading; people say yes to almost anything
  "Do you like [current product]?" — invites politeness, not honesty
  "How would you rate [X] on a scale of 1-10?" — not useful without follow-up
```

## Output Format

```markdown
# User Interview Guide — <Research Topic>
**Date:** <date> | **Lead researcher:** Dr. John Lewis
**Research question:** <single question this research must answer>
**Participants:** <N> interviews | **Segment:** <description>

---

## Participant Profile

**Who we're interviewing:**
- Role: <role type>
- Company type: <PE-backed / Healthcare MSO / etc.>
- Qualification: <what makes someone the right interviewee>
- Exclusions: <who we're NOT interviewing and why>

---

## Interview Structure

**Duration:** 45-60 minutes
**Format:** Video call (Zoom/Teams); record with permission

### Opening (5 min)
"Thank you for making time. We're doing research to understand [topic]. I want to learn from your experience — there are no right or wrong answers. I'll mostly be asking about things you've done in the past. We'll record the call if you're OK with it — [wait for agreement]. Any questions before we start?"

### Warm-up (5 min)
"Can you tell me a bit about your role and what a typical week looks like for you?"

### Core questions (30-35 min)

1. "Tell me about the last time you [relevant situation — e.g., came back from vacation and had to catch up on what happened in your organization]."
   - Follow-up: "What did you do first? Then what?"
   - Probe: "How long did that take?"
   - Probe: "What was the hardest part?"

2. "What do you typically do when you [specific problem scenario]?"
   - Follow-up: "Have you tried anything else? What happened?"
   - Probe: "Why that approach specifically?"

3. "Tell me about a time when [related problem] really caused you trouble."
   - Probe: "What would a perfect outcome have looked like?"
   - Probe: "What did you wish existed at that moment?"

4. "What's the thing that takes the most of your time in [problem area] that you wish you could do faster or stop doing entirely?"

5. "If you had to quantify how often you deal with [problem], how often does it come up?"

### Wrap-up (5 min)
"Is there anything else about [topic] that you think is important that I haven't asked?"
"Is there anyone else you'd recommend I talk to about this?"

---

## Synthesis Template (complete after all interviews)

### Pattern Analysis

**Top themes (appear in 3+ interviews):**
1. [Theme]: Evidence — <specific quotes or behaviors from 3+ interviews>
2. [Theme]: Evidence — 
3. [Theme]: Evidence — 

**Surprising findings:**
- [Something unexpected]

**Disconfirmed assumptions:**
- [Something we thought was true but isn't]

---

### Key Quotes

"[Quote from participant — anonymized]" — [descriptor: senior operator, 3-entity portfolio]
"[Quote]" — [descriptor]

---

### Recommendations

**Build:** [What the research suggests we should build]
**Don't build:** [What the research suggests we should NOT build]
**Validate further:** [What remains uncertain]

**Confidence level:** High (5+/8 interviews aligned) / Medium / Low
```

## Output Contract
- Research question always defined before interviews begin — research without a question produces interesting data but not decisions
- All questions about past behavior — no hypotheticals
- Disconfirming findings always documented — research that only confirms is not useful
- Synthesis always includes specific quotes — claims without evidence are opinions
- HITL required: Dr. Lewis reviews interview guide before use; findings that change roadmap direction require Matt Mathison awareness; sensitive interviews (e.g., churn interviews with portfolio company customers) require Dr. Lewis approval

## System Dependencies
- **Reads from:** Existing product data (analytics, support tickets), participant contact list, previous research
- **Writes to:** Interview notes (SharePoint/Product); synthesis report; roadmap implications
- **HITL Required:** Dr. Lewis reviews guide; synthesis reviewed before roadmap action; Matt Mathison informed of significant findings

## Test Cases
1. **Golden path:** 6 interviews on meeting follow-through problem → Research question: "Is missing action items from meetings a real pain for PE operators?"; 6 interviews with portfolio company COOs and MDs; Key finding: 5/6 have a current workaround (email to self, separate note); 4/6 describe missing action items as a real cost; 1/6 says they've solved it with dedicated EA; recommendation: problem is real for 80% of the segment; build
2. **Edge case:** Interview subject says what they think you want to hear → signs: lots of "yes" responses to hypotheticals; no concrete examples from past; lots of vague "it would be helpful if..."; countermeasure: always redirect to specific past events: "Can you give me a recent example of that?"; if they can't, it's not a real pain
3. **Adversarial:** Team skips interviews because "we already know our users" → even if true, confirming what you know is valuable; research often reveals how the problem is different from what you think you know; 6 interviews = 6 hours; the cost of building the wrong thing is 10× that

## Audit Log
Interview recordings and transcripts retained (with participant consent). Synthesis reports retained. Research findings linked to roadmap decisions.

## Deprecation
Retire when product team has a dedicated user research function with a panel of regular research participants and an ongoing interview cadence.
