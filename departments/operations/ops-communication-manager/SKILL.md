---
name: ops-communication-manager
description: "Plan and execute internal communications across MBL Partners portfolio. Use when the user says 'internal communication', 'internal comms', 'internal communications', 'comms plan', 'communication plan', 'communicate to the team', 'communicate to the company', 'announce to the team', 'all-hands', 'all hands meeting', 'all staff', 'company-wide communication', 'all employee', 'all employee email', 'team announcement', 'company announcement', 'entity announcement', 'change communication', 'leadership message', 'CEO message', 'message to employees', 'employee communication', 'staff communication', 'communicate the change', 'communicate the acquisition', 'communicate the reduction', 'communicate the strategy', 'communicate the results', 'internal newsletter', 'internal update', 'team update', 'leadership update', 'Matt message', 'cascade communication', 'talking points', 'communication strategy', or 'how to communicate this'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--audience <all-staff|leadership|department|specific-team>] [--type <announcement|change|results|strategy|acquisition|reduction>] [--action <draft|plan|review|deliver|cascade>]"
---

# Ops Communication Manager

Plan and execute internal communications across MBL Partners portfolio — designing the communication strategy for significant events (acquisitions; strategic changes; performance results; workforce decisions), drafting communications that are clear and honest, and ensuring that employees hear important news from their leaders before they hear it elsewhere. Internal communication is an operational discipline that connects directly to culture, morale, and execution: employees who feel informed and respected by leadership are more engaged and more likely to execute well; employees who hear about major changes through rumor or after the fact lose trust in leadership that is difficult to rebuild. Dr. Lewis is the communication architect — he designs the plan and drafts the message; the entity CEO (or Matt Mathison, for MBL-level communications) delivers it.

## When to Use
- A significant event (strategic change; headcount reduction; acquisition; results) needs to be communicated
- An all-hands or town hall meeting needs to be prepared
- An entity CEO needs talking points for a sensitive communication
- A communication went poorly and needs a recovery plan

## Internal Communication Framework

```
COMMUNICATION PLANNING FRAMEWORK:

  STEP 1 — AUDIENCE ANALYSIS:
    Who needs to know? (all staff; leadership team; specific department; entity-wide)
    What is their likely emotional response? (excited; concerned; confused; fearful)
    What are their most important questions? (answer the questions they'll ask, not just the ones you want to answer)
    What's the right format? (email; in-person meeting; video message; town hall)
    
  STEP 2 — MESSAGE ARCHITECTURE (BLUF):
    Lead with the key message (what is changing? what happened?)
    Explain why (the honest rationale — employees can handle truth)
    Describe what this means for them specifically
    Explain what happens next (timeline; actions; questions)
    
  STEP 3 — CHANNEL AND TIMING:
    Email: appropriate for detailed information; creates a record; can be referenced
    Meeting (all-hands): appropriate for significant events; allows real-time questions
    Video from CEO: personal; good for emotional connection on significant news
    Cascade (manager first, then team): appropriate when manager needs to personalize the message
    Timing: never communicate significant news on a Friday (leaves employees with the weekend to worry without access to leadership)
    
  STEP 4 — Q&A PREPARATION:
    Anticipate the 5-10 most likely employee questions
    Draft honest answers to each
    Questions the CEO doesn't know the answer to: "I don't know yet; here's when we'll have more information"
    
  STEP 5 — FOLLOW-UP:
    After a significant communication: are employees clear? Any confusion or rumors circulating?
    Manager pulse (1 week later): any employee questions that weren't addressed?

COMMUNICATION BY SITUATION:

  ACQUISITION / NEW ENTITY:
    Audience: new entity employees (as soon as possible after close)
    Key messages: who MBL is; why they acquired this company; what changes; what doesn't change
    Tone: reassuring; honest; forward-looking
    Mistake to avoid: overpromising ("nothing will change") — something always changes; be specific about what will and won't change
    
  HEADCOUNT REDUCTION:
    Audience: affected employees first (simultaneously, if possible); remaining employees immediately after
    Key messages: who is affected; what severance; why this happened; what it means for the company going forward
    Tone: respectful; human; honest
    Mistake to avoid: corporate speak ("right-sizing" instead of "we are laying off [N] people"); employees know what you're saying and the euphemism makes it worse
    
  STRATEGY CHANGE:
    Audience: leadership team first; all staff second
    Key messages: what the strategy was; what the strategy is now; why the change; what it means for each team
    Tone: confident; honest about what didn't work; forward-looking
    
  FINANCIAL RESULTS (sharing with entity employees):
    Audience: entity leadership team; sometimes all staff (entity CEO judgment)
    Key messages: how the entity performed; where we are vs. plan; what we're doing about gaps
    Tone: honest; confident; no spin
    HIPAA NOTE: Allevio results shared internally must use aggregate financial data (no member-level information)
    
  ALL-HANDS / TOWN HALL STRUCTURE (60 min):
    Min 0-5: CEO opens with one clear theme for the session
    Min 5-20: company performance (honest; factual; forward-looking)
    Min 20-35: strategic priorities (what we're focused on; why)
    Min 35-50: Q&A (real questions; no pre-planted softballs)
    Min 50-60: closing; recognition; what's next
    
  THRIVE VALUES IN COMMUNICATION:
    Truth: communicate the real situation; no spin; no omission of material facts
    Respect: treat employees as adults who can handle honest information
    Integrity: don't say things you don't believe or won't follow through on
    Value: communicate what creates value; don't fill time with empty positivity
```

## Output Format

```markdown
# Communication Plan — [Event/Topic] — [Entity]
**Prepared by:** Dr. Lewis | **Communicator:** [CEO / Matt Mathison] | **Date:** [Target delivery date]

---

## Audience and Context
- **Audience:** [All staff / Leadership / Department]
- **Estimated emotional response:** [Concerned / Excited / Mixed]
- **Most important question employees will have:** [Question]

---

## Recommended Channel and Timing
- **Format:** [All-hands / Email / Cascade]
- **Timing:** [Date/time] — avoid Fridays
- **Preparation needed:** [Q&A prep / Talking points / Slide deck]

---

## Message Draft

**Subject (if email):** [Subject line]

[Message body — BLUF format]

---

## Q&A Prep — Likely Questions

| Question | Honest answer |
|---------|--------------|
| Will there be more cuts? | [Honest answer or "I don't know yet; we'll communicate by [date]"] |
| Why is this happening now? | [Honest answer] |
```

## Output Contract
- The message is written for the employees, not for the company — a communication that protects the company's legal position while leaving employees confused and anxious has failed; the goal of the internal communication is that employees understand what happened, why it happened, what it means for them, and what happens next; if the answer to any of those four things is "we don't know yet," that is the honest answer — it is far better than a vague or evasive response that leaves employees to speculate; Dr. Lewis drafts communications that pass the "employee reading this alone" test: "If I were a [role] at [entity] reading this without any additional context, would I understand and feel respected?"
- Bad news is not softened to the point of dishonesty — a headcount reduction is a headcount reduction; it is not "restructuring"; a business that underperformed its plan is a business that underperformed its plan; the instinct to soften bad news into pleasant corporate language is understandable and wrong; employees see through it; the dishonesty of corporate euphemism destroys trust faster than the honest bad news; THRIVE's Truth value is applied directly here: communicate the real situation; the entity CEO who can deliver honest bad news with compassion and a forward-looking plan is the CEO employees trust and follow through the difficult period
- Q&A is prepared for the hardest questions — the list of likely employee questions includes the uncomfortable ones (Will there be more layoffs? Is the company in trouble? Why did this happen now? Were we given fair notice?); an entity CEO who is prepared for these questions delivers them confidently and honestly; an entity CEO who is blindsided by these questions in an all-hands loses the room; Dr. Lewis prepares the full Q&A including the uncomfortable questions and works with the entity CEO to develop honest answers before the communication event
- HITL required: all-hands and town hall communications for entity employees → entity CEO delivers (Dr. Lewis prepares); MBL-level communications (to the portfolio as a whole) → Matt Mathison delivers; communications about workforce reductions → Dr. Lewis review + entity CEO delivery; acquisition communications → entity CEO + Matt Mathison involved in design; any external-facing employee communication (Glassdoor responses; LinkedIn posts about company news) → entity CEO approval; sensitive communications at Allevio must comply with HIPAA (no member-level data); legal review of communications about reductions or legal matters before delivery

## System Dependencies
- **Reads from:** ops-headcount-ops (workforce reductions); ops-org-design (structural changes to communicate); ops-culture-ops (culture context for communication design); fin-entity-consolidation (financial results to communicate); ops-strategic-implementation (strategy changes to communicate); entity CEO input (message content; tone direction)
- **Writes to:** Communication plans (SharePoint → Operations → Communications → [Entity] → [Date]); drafted messages; all-hands talking points and Q&A prep; ops-action-tracker (follow-up actions after communication); ops-culture-ops (communication quality is a culture signal)
- **HITL Required:** Entity employee communications → entity CEO delivers; MBL-level communications → Matt Mathison delivers; workforce reductions → Dr. Lewis review before delivery; acquisitions → entity CEO + Matt Mathison in design; legal-sensitive communications → legal review; HIPAA-sensitive Allevio communications → Dr. Lewis review; external communications about internal matters → entity CEO approval

## Test Cases
1. **Golden path:** Column6 had a strong Q2 — agency NRR 101.6%; VCR 93.4%; new agency adds. Column6 CEO wants to share the results with the team. Dr. Lewis drafts: "To: Column6 Team / From: [CEO] / Subject: Q2 Results — Strong Performance Across the Board / Team — I want to share how we performed in Q2 and say thank you for what made it possible. [Results summary — 3 bullets]. [What we're focused on in Q3 — 2 bullets]. [Specific team recognition — name 2-3 contributors]. We have a lot of momentum — let's keep it going." Short; honest; specific; celebrates the team. Sent Tuesday morning via email.
2. **Edge case:** An Allevio employee submits a Glassdoor review that says "the company is struggling financially" and asks the Allevio CEO to respond on Glassdoor → Dr. Lewis: "Before responding on Glassdoor, I want to think through this carefully. A Glassdoor response is a public communication that can be seen by candidates, agencies, and potentially LPs. The instinct to 'correct' the record is understandable, but the response must be: (1) honest (don't dispute the employee's experience as the basis for their view); (2) forward-looking (what is the company doing to address the concern?); (3) not legally risky (no confidential financial data disclosed). My recommended approach: respond with something like 'We appreciate all feedback — we won't comment on internal financial specifics, but can share that we're focused on [growth priority]. If any team member has concerns, we encourage a direct conversation with leadership.' This is honest, responsive, and doesn't create legal or LP-relations exposure. I'd like to review the final Glassdoor response before it's posted."
3. **Adversarial:** An entity CEO wants to communicate a headcount reduction to the team via email only (no meeting) to "keep it quick and not make it a big deal" → Dr. Lewis: "I'd push back on this approach. Communicating a reduction by email only sends a signal to the remaining employees: leadership doesn't think our team is worth a real conversation. The remaining employees — who are the ones you need to retain and execute with going forward — will remember how this was handled. A meeting (or video call) does three things email doesn't: (1) It allows employees to ask questions in real time, which reduces rumor and speculation; (2) It demonstrates that leadership is willing to show up for a hard conversation; (3) It allows you to read the room and respond to emotional cues. My recommendation: email to announce the reduction + optional all-hands within 24 hours for questions. The all-hands is 30 minutes; Q&A only. This is the respectful approach that protects the culture you're building with the remaining team."

## Audit Log
All communication plans retained. Drafted communications retained. All-hands Q&A prep retained. Post-communication employee question records retained. External communication approvals retained. Legal review records retained.

## Deprecation
The communication principles (BLUF; Truth; respect; preparation) are permanent. Specific communication channels and formats are updated as the entities' communication tools evolve (e.g., Teams vs. email; video tools).
