---
name: cs-feedback-loop-builder
description: "Build and operate a systematic customer feedback loop for MBL portfolio companies. Use when the user says 'feedback loop', 'close the loop', 'customer feedback', 'feedback program', 'customer input', 'what are customers saying', 'collect feedback', 'feedback system', 'act on feedback', 'voice of customer', 'VoC program', 'VoC', 'customer feedback management', 'feedback tracking', 'respond to feedback', 'feedback to product', 'feedback to operations', 'act on customer feedback', 'feedback analysis', 'customer complaints', 'customer suggestions', 'customer sentiment', 'customer input system', 'feedback collection', or 'closing the loop on feedback'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--source <nps|qbr|escalation|survey|ad-hoc>] [--action <collect|analyze|close|report>]"
---

# CS Feedback Loop Builder

Build and operate a systematic customer feedback loop for MBL portfolio companies — collecting customer feedback through structured and unstructured channels, routing it to the right team, closing the loop with the customer who gave the feedback, and using the aggregate to drive product and service improvements. A feedback loop without a close is a feedback graveyard; customers who give feedback and never hear back stop giving feedback — and eventually stop being customers.

## When to Use
- Designing the VoC program for a new portfolio company CS launch
- A customer has given significant feedback (positive or negative) that needs to be acted on
- Quarterly feedback analysis (what are we hearing across the portfolio?)
- Before a product or service change (collect input from affected customers first)
- A QBR or NPS response contains a specific actionable item

## Feedback Loop Framework

```
FEEDBACK COLLECTION CHANNELS:

  1. NPS PROGRAM (cs-nps-program):
     Most structured source; runs annually and post-onboarding
     Promoters (9-10): "What's working well for you?" (positive feedback; amplify it)
     Passives (7-8): "What would make this a 10 for you?" (improvement feedback; act on it)
     Detractors (0-6): "What's most frustrated you?" (critical feedback; Dr. Lewis personal call)
     
  2. QBR FEEDBACK (cs-qbr-preparer):
     "Action items from last QBR" section surfaces commitments we made — did we close them?
     "What's on your mind?" section is the primary qualitative feedback source
     Log verbatim customer language from QBRs — "the HR Director said the enrollment guide
       was confusing" is more actionable than "some customers find the guide confusing"
       
  3. PULSE CHECK FEEDBACK (cs-pulse-check):
     Informal feedback channel; customers say things in pulse checks they wouldn't say in a QBR
     CS rep logs sentiment and key themes after each pulse check
     
  4. ESCALATION FEEDBACK (cs-escalation-manager):
     Complaints and escalations are feedback — the most urgent kind
     Post-escalation debrief always includes: "What would have prevented this?"
     
  5. AD HOC FEEDBACK:
     Customer emails, calls, or mentions something between structured touchpoints
     CS rep logs it immediately in CRM — no feedback is lost

FEEDBACK ROUTING:

  Category A — Operational feedback (how we deliver the service):
    Examples: "The enrollment guide was confusing"; "The pacing report came late"
    Route: CS team lead → Dr. Lewis → relevant process owner (implementation; reporting; etc.)
    Response time: Acknowledged within 48 hours; addressed within 30 days
    
  Category B — Product/service feedback (what we offer, not how we deliver it):
    Examples: "I wish Allevio had a mobile app for members"; "I want Nielsen attribution on all IOs"
    Route: Dr. Lewis → portfolio company leadership → product roadmap
    Response time: Acknowledged within 5 business days; roadmap decision communicated within 60 days
    
  Category C — Relationship feedback (how the CS rep is performing):
    Examples: "My rep is hard to reach"; "I haven't heard from anyone in 2 months"
    Route: Dr. Lewis (directly; do not route through the CS rep who is the subject of the feedback)
    Response time: Dr. Lewis response within 24 hours; coaching conversation within 5 business days
    
  Category D — Strategic feedback (how we should change what we're doing):
    Examples: "You should offer a lower-tier plan for smaller groups"; "I'd buy more if you offered attribution"
    Route: Dr. Lewis → CEO → Matt Mathison (for portfolio-level strategic decisions)

CLOSING THE LOOP (mandatory for all categories):
  Every customer who gives feedback — whether through NPS; QBR; pulse; or ad hoc —
    receives a close within 30 days
  Close protocol:
    "I wanted to follow up on what you shared with me about [specific feedback].
     Here's what we've done: [specific action].
     OR: Here's why we're not able to address that right now: [honest explanation].
     OR: We're building that into our plan for [quarter/year] — I'll update you when it's ready."
  NEVER: "Thank you for the feedback!" (unacceptable close — it confirms you received it but
    does not confirm you acted on it or explains why you didn't)

QUARTERLY FEEDBACK REPORT:
  Dr. Lewis prepares a quarterly feedback summary for the CEO:
    □ Top 3 themes heard this quarter (by frequency and by impact)
    □ Actions taken in response to last quarter's themes
    □ Open items (feedback that has been acknowledged but not yet addressed)
    □ Closed items (feedback addressed this quarter — confirm the loop was closed)
    □ NPS trend (was the last NPS cycle affected by recurring themes?)
```

## Output Format

```markdown
# Feedback Loop Report — [Entity] | Q[X] [YYYY]
**Prepared by:** Dr. Lewis | **Feedback period:** [Date range]

---

## Top Feedback Themes This Quarter

| Theme | Frequency | Category | Action taken |
|-------|----------|---------|-------------|
| "Enrollment guide too complex" | 4 accounts | Operational | Guide revised; rolling out Q4 |
| "Pacing report timing" | 2 accounts | Operational | Friday noon hard deadline enforced |

---

## Loop Closure Status

| Feedback | Customer | Category | Loop closed | Close date |
|---------|---------|---------|------------|----------|
| Enrollment guide | [Account A] | A | Yes | [Date] |
| Attribution tracking | [Account B] | B | In progress | [Expected date] |

---

## Open Items (Acknowledged, Not Yet Closed)

| Feedback | Customer | Category | Target close |
|---------|---------|---------|-------------|
| | | | |
```

## Output Contract
- Every feedback loop must be closed — a feedback program that collects but doesn't close is worse than no feedback program; customers who give feedback and don't hear back feel ignored and won't give feedback again; Dr. Lewis requires that every piece of feedback received through any channel has a close documented in CRM within 30 days; open items from prior quarter are the first item reviewed in the next quarter's feedback report
- Verbatim language matters — "the enrollment guide was confusing" is specific; "some customers find the guide confusing" is generic; Dr. Lewis trains the CS team to log customer feedback in the customer's own words, not in a paraphrase; the product team and operations team need verbatim language to understand what to fix; paraphrased feedback produces paraphrased solutions
- Relationship feedback bypasses the CS rep — if a customer says the CS rep is hard to reach, routing that feedback through the CS rep to close the loop is not appropriate; Dr. Lewis handles all Category C (relationship) feedback directly; the CS rep receives a coaching conversation (cs-coaching-framework), not the customer's direct feedback
- HITL required: Dr. Lewis reviews all Category B (product/service) and Category D (strategic) feedback before routing; Dr. Lewis personally closes all Detractor (NPS 0-6) feedback loops; Dr. Lewis handles all Category C relationship feedback directly; quarterly feedback report reviewed by CEO; any feedback that reveals a systemic issue (3+ customers reporting the same problem) triggers an immediate Dr. Lewis review and a CS Ops Review agenda item

## System Dependencies
- **Reads from:** cs-nps-program (NPS responses and verbatim comments); cs-qbr-preparer (QBR action items and customer input); cs-pulse-check (pulse check sentiment and key themes logged in CRM); cs-escalation-manager (escalation root causes — these are feedback about what went wrong); GoHighLevel CRM (all logged customer touchpoints and verbatim feedback notes)
- **Writes to:** Feedback log (GoHighLevel CRM — each feedback item with category; date; source; action; loop-close status); quarterly feedback report (SharePoint/CustomerSuccess/<Company>/FeedbackReports/[YYYY-Q]_FeedbackReport.pdf); CEO quarterly summary (email — feedback themes; actions taken; NPS trend); cs-ops-review (quarterly feedback themes are a mandatory input to the ops review); product roadmap input (Category B feedback routed to portfolio company leadership)
- **HITL Required:** Dr. Lewis reviews Category B and D feedback before routing; Dr. Lewis personally closes Detractor NPS feedback loops; Category C relationship feedback handled directly by Dr. Lewis (not routed through the CS rep); quarterly feedback report reviewed by CEO; systemic issues (3+ customers) trigger immediate Dr. Lewis review

## Test Cases
1. **Golden path:** Q3 Allevio feedback analysis — 8 feedback items collected: 4 through QBRs; 2 through NPS pulse; 2 through ad hoc CS rep logs; top theme: "enrollment guide too complex" (3 accounts; Category A operational); action: CS team revises the enrollment guide before Q4 OE season; close protocol: CS rep sends each of the 3 accounts an email: "In our last QBR, you mentioned the enrollment guide was confusing for employees. I wanted to let you know we've revised it — I've attached the new version. Let me know if you'd like a walkthrough before you distribute it for open enrollment." All 3 accounts acknowledge the close; one responds "thank you for actually doing something about it — that's rare"; Q4 NPS for the same accounts: all 3 scored 9+ (Promoters)
2. **Edge case:** An NPS Detractor (score: 3) from a Column6 agency — verbatim: "The reporting is too manual and hard to read. I have to translate every metric for my client." → Dr. Lewis calls within 24 hours: "I saw your NPS response — thank you for being honest. I want to understand exactly what you're looking for in a report. Can you walk me through how you present the results to your client?" 30-minute conversation reveals: the agency needs a one-page executive summary, not the detailed breakdown; Dr. Lewis: "We'll build you a custom one-pager for your client presentation. Give me 2 weeks." Custom report template built; agency responds: "This is exactly what I needed. Next IO is already on my list."
3. **Adversarial:** A CS rep responds to customer feedback by saying "I'll pass that along to the team" — but does not log it in CRM, does not route it, and does not close the loop → Dr. Lewis: "When you say 'I'll pass that along,' the customer hears 'I'll make sure it goes nowhere.' Feedback that isn't logged doesn't exist for the next person who serves this account. Feedback that isn't routed never reaches the person who can fix it. Feedback without a close leaves the customer thinking we don't care. Here's the standard: every piece of customer feedback gets logged in CRM within 1 hour of the call (verbatim, if possible); I review the CRM log to confirm routing; you close the loop with the customer within 30 days. I'll spot-check 3 feedback items per month."

## Audit Log
All feedback items retained in CRM by source, customer, and date. Loop closure records retained (date; what was communicated; customer response). Quarterly feedback reports retained. CEO quarterly summary records retained. Systemic issue escalation records retained. Category C coaching records retained (separate from the customer feedback log).

## Deprecation
Retire when each portfolio company has a dedicated VoC (Voice of Customer) function with formal feedback management tools — with Dr. Lewis reviewing the quarterly feedback themes and the CEO approving any strategic changes to the product or service in response to customer feedback.
