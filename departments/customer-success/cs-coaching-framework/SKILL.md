---
name: cs-coaching-framework
description: "Coach and develop CS team members at MBL portfolio companies. Use when the user says 'CS coaching', 'customer success coaching', 'CSM coaching', 'coach a CSM', 'CS rep coaching', 'develop a CS rep', 'CS team development', 'CS performance coaching', 'CS skill development', 'CS 1:1', 'CS one on one', 'CS rep performance', 'CS rep is struggling', 'how do I coach CS', 'CS performance review', 'CS rep feedback', 'CS development plan', 'develop the CS team', 'CS skill gap', 'CS rep needs help', 'improve CS performance', 'CS career development', or 'CS manager coaching'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--rep <name>] [--focus <relationship|data|communication|domain>] [--action <plan|session|review>]"
---

# CS Coaching Framework

Coach and develop CS team members at MBL portfolio companies — building the skills, mindset, and habits that produce proactive, data-driven, relationship-first CSMs. Dr. Lewis is the head coach of the CS function across all MBL portfolio companies; coaching CS reps is one of the highest-leverage investments Dr. Lewis can make — one excellent CSM protects and grows $2-4M of ARR.

## When to Use
- Monthly 1:1 with a CS rep (structured coaching session)
- A CS rep is underperforming on a specific dimension (targeted development plan)
- A CS rep is ready to advance (career development and promotion readiness)
- Onboarding a new CS hire (first 90-day coaching cadence)

## CS Coaching Framework

```
COACHING PRINCIPLES:
  Start with data — coaching conversations are grounded in actual performance data,
    not perceptions; Dr. Lewis reviews the rep's accounts before each 1:1:
    health score trends; QBR completion rate; escalation handling; TTV for new accounts
    
  Praise specifically, correct specifically — "you're doing a great job" is not praise;
    "you caught the member count decline at Account A 6 weeks before the customer raised it —
    that proactive response is exactly what great CS looks like" is praise
    
  One coaching priority per session — trying to improve everything at once improves nothing;
    Dr. Lewis picks the most important skill gap per session and drills it
    
  Role-play is required — CS skills are interpersonal; talking about them is not the same
    as practicing them; every coaching session that addresses a customer-facing skill includes
    a role-play; Dr. Lewis plays the customer; the rep plays themselves; then they switch

MONTHLY 1:1 STRUCTURE (45-60 minutes):

  1. DATA REVIEW (10 min):
     Review the rep's portfolio metrics:
       How many Green/Yellow/Red accounts in their portfolio?
       Any health score changes in the last month? (what happened? what did the rep do?)
       QBR completion rate for this rep's accounts
       Any escalations? How were they handled?
       Any churns or expansion wins?
     Goal: Confirm the rep is actively managing — not just reacting
     
  2. WIN RECOGNITION (5 min):
     What did this rep do well in the last month?
     Call out a specific action with a specific outcome
     Example: "You re-engaged the new HR Director at [Account] within 3 days of learning
       the champion had changed. That's the kind of proactive move that prevents churn.
       That account's health score stayed Green because of that call."
     
  3. COACHING FOCUS (20 min):
     One skill — not many:
     Pick the most important gap based on data and observation
     Discuss: What happened? Why? What should happen next time?
     Role-play: Practice the skill live in the session
     Standard coaching focuses:
       a) QBR delivery — is the rep presenting data or having a conversation?
       b) Escalation response — is the rep acknowledging fast or explaining?
       c) Expansion identification — is the rep seeing the signals and bringing them to Dr. Lewis?
       d) Health score discipline — is the rep logging signals or going by instinct?
       e) Renewal preparation — is the rep starting at Day -120 or Day -30?
       
  4. ACCOUNT REVIEW (10 min):
     Pick 1-2 accounts for a deeper dive:
       Any Yellow or Red accounts: "Walk me through this account. What's happening?
         What are you doing? What would you do differently?"
       Any account approaching renewal: "Where are you in the process? What's the value story?"
     Goal: Understand the rep's thinking; correct it where needed; reinforce it where strong
       
  5. DEVELOPMENT PLAN PROGRESS (5-10 min):
     Review the current development plan (built at hire or after a performance conversation):
       What was the goal? What's the progress?
       What does the rep need from Dr. Lewis to keep developing?
     Set the coaching focus for next month

TARGETED DEVELOPMENT PLANS (for specific performance gaps):

  Health Score Discipline Gap:
    Signal: Rep is scoring accounts by feel, not data; Red accounts aren't flagged promptly
    Plan: Rep audits all accounts weekly using the cs-health-score-tracker rubric;
      Dr. Lewis spot-checks 3 accounts per week for 30 days; bi-weekly calibration session
    Resolution criterion: 4 consecutive weeks of accurate, timely health score updates
    
  QBR Quality Gap:
    Signal: Rep's QBRs are metric recaps without insight; customers seem disengaged
    Plan: Rep shadow-QBRs a Dr. Lewis-run QBR; Dr. Lewis shadow-QBRs the rep's next 2 QBRs;
      feedback after each; rep builds and presents a QBR deck to Dr. Lewis before presenting to customer
    Resolution criterion: Customer engagement score (did the customer say something substantive
      back to us?) positive for 3 consecutive QBRs
    
  Proactivity Gap:
    Signal: Rep learns of customer issues from the customer, not from signals
    Plan: Rep implements daily CRM log review (5 minutes); weekly churn signal scan;
      Dr. Lewis reviews the rep's proactive outreach log (who did they reach out to that week
      before the customer asked for something?)
    Resolution criterion: Rep catches 3 proactive signals that lead to interventions within 60 days
    
  Escalation Handling Gap:
    Signal: Rep waits for Dr. Lewis direction before acting; communication to customer is slow
    Plan: Rep reads the cs-escalation-manager protocol; Dr. Lewis role-plays 3 escalation scenarios;
      rep writes a draft acknowledgment email for each; Dr. Lewis reviews and corrects
    Resolution criterion: Rep handles a P2 escalation independently with Dr. Lewis approval
      of the acknowledgment before it's sent — 2 successful P2s without Dr. Lewis writing the first draft

COACHING CADENCE:
  Monthly 1:1: All CS reps; 45-60 minutes
  Shadow QBR: Dr. Lewis shadows each rep's QBR at least once per year (more for developing reps)
  Performance review: Semi-annual (June and December); formal assessment against scorecard dimensions
  Development plan check-in: Monthly progress update in the 1:1
```

## Output Format

```markdown
# CS Coaching Session — [Rep Name] | [Month YYYY]
**Coach:** Dr. Lewis | **Duration:** [X] min | **Coaching focus:** [Skill area]

---

## Portfolio Snapshot

| Metric | This month | Last month | Target | Status |
|--------|-----------|-----------|--------|--------|
| Accounts (Green/Yellow/Red) | [N]/[N]/[N] | [N]/[N]/[N] | ≥80%G/≤15%Y/≤5%R | ✅/⚠️/❌ |
| QBR completion rate | [X]% | [X]% | 100%A/≥90%B | ✅/⚠️/❌ |
| Health scores updated (weekly?) | Yes/No | — | Yes | ✅/❌ |
| Escalations handled | [N] | [N] | — | — |

---

## Win Recognition
[Specific action + specific outcome — not generic praise]

---

## Coaching Focus: [Skill Name]
**Situation:** [What happened]
**What great looks like:** [The standard]
**Practice / Role-play:** [What we practiced and what we learned]
**Next session goal:** [Specific observable behavior to look for next month]

---

## Account Deep Dive: [Account Name]
**Status:** [Health score; renewal timeline; any concerns]
**Rep's assessment:** [What they said]
**Dr. Lewis coaching:** [What to think about; what to do differently]

---

## Development Plan Progress
**Current goal:** [Skill area being developed]
**Progress:** On track / Behind / Achieved
**Next focus:** [What we'll work on next month]
```

## Output Contract
- Role-play is not optional — CS skills are practiced, not discussed into existence; Dr. Lewis includes at least one role-play in every coaching session that involves a customer-facing skill; "let's talk through how you'd handle that" is not coaching; "you be the HR Director, I'll be you, and let's practice that escalation call" is coaching; reps who have practiced a scenario are more effective in the real moment than reps who have only discussed it
- Coaching improves specific behavior, not general performance — "I need you to be more proactive" is not a coaching instruction; "I need you to review CRM activity for all Yellow accounts on Monday morning and send one proactive outreach per Yellow account before the week ends — and log each outreach in CRM" is a coaching instruction; Dr. Lewis is specific about what behavior needs to change, not general about the outcome
- Performance patterns are addressed at month 2, not month 6 — a rep who misses a health score update for 6 months has been enabled in a poor behavior; Dr. Lewis addresses performance gaps at the first coaching session after the gap is observed; a pattern noted at month 1 gets a coaching conversation at month 1; at month 2 it becomes a development plan; at month 3 it becomes a performance review; Dr. Lewis does not let patterns persist quietly
- HITL required: Dr. Lewis runs monthly coaching sessions for all CS reps; semi-annual performance reviews require CEO awareness for any rep rated "needs improvement"; a CS rep on a formal performance improvement plan (PIP) requires CEO approval and HR documentation; development plans are documented in SharePoint and reviewed monthly; Dr. Lewis does not terminate a CS rep without CEO authorization and HR documentation

## System Dependencies
- **Reads from:** Rep's portfolio health scores (cs-health-score-tracker — Green/Yellow/Red distribution); QBR completion logs (cs-qbr-preparer — has this rep completed QBRs on time?); escalation records (cs-escalation-manager — how did this rep handle escalations?); TTV for new accounts (cs-onboarding-coordinator — are onboardings being completed on time?); churn events for this rep's accounts (cs-churn-predictor — any churns in this rep's portfolio? preventable?); cs-hiring-scorecard (what were the development areas identified at hire?)
- **Writes to:** Coaching session notes (SharePoint/CS/Coaching/[Rep]_[YYYY-MM]_CoachingSession.pdf); development plan (SharePoint/CS/Coaching/[Rep]_DevelopmentPlan.pdf); semi-annual performance review (SharePoint/HR/<Company>/PerformanceReviews/[Rep]_[YYYY-HX]_Review.pdf); CEO notification (for "needs improvement" performance rating)
- **HITL Required:** Dr. Lewis runs all monthly coaching sessions; semi-annual reviews shared with CEO for any "needs improvement" rating; formal PIP requires CEO approval and HR documentation; termination requires CEO authorization and HR documentation; development plans reviewed monthly in 1:1

## Test Cases
1. **Golden path:** Monthly 1:1 with a 6-month CSM — portfolio: 8 Green / 2 Yellow / 0 Red; QBRs 100% complete for Priority A; one Yellow account caught proactively (member count declining — rep reached out before the customer said anything) → Dr. Lewis opens: "Before we get into data, I want to call out what you did with [Account A] last week. You saw the member count drop and called the HR Director before she had a chance to worry about it. She told me she was impressed — 'they called me before I even knew there was an issue.' That's what we're building here. Now let's look at the two Yellow accounts..." Coaching focus: expansion identification (rep hasn't surfaced any expansion opportunities) — role-play: "I'm the HR Director at [Account B] — you just learned her company is opening a new office. How do you bring up the expansion conversation?" Rep practices; Dr. Lewis coaches on the opening line; rep leaves with a specific script and an action to call [Account B] with the expansion question this week
2. **Edge case:** A rep's portfolio has 3 Red accounts simultaneously — all three were Green last month → Dr. Lewis calls an emergency coaching session (not waiting for the monthly 1:1): "Three accounts going Red in one month is a signal about your monitoring, not just about the accounts. Walk me through each one — when did you first see the signals? What did you do? What do you wish you had done sooner?" Discussion reveals: rep was out of the office for 2 weeks and health scores weren't updated during that time; the signals were visible but unlogged → Dr. Lewis: "Here's the lesson: health monitoring is a process, not a feeling. When you're out, someone needs to be checking. Going forward: if you're out 3+ days, you assign a buddy to do daily CRM checks on your Yellow accounts. I'll cover your Red accounts personally when you're out. Let's put that in writing today. Now — who's calling the CEO of [Account A] today? I'll set up the call." Three CEO-led interventions initiated; rep establishes coverage protocol
3. **Adversarial:** A CS rep disagrees with Dr. Lewis's coaching direction ("I don't think I need to do role-plays — I've been doing this for 8 years") → Dr. Lewis: "I hear you — and I respect your experience. Here's where I'm coming from: I've watched experienced CS reps handle escalation calls exactly the way they planned to, and then I've watched them handle them very differently when the customer is angry and the CEO is listening. Role-plays expose the gap between what we plan to say and what we actually say under pressure. I'm not questioning your experience — I'm proposing a practice that will make that experience even more effective. Let's try one. I'll be a difficult HR Director, you be yourself. If your instincts are as strong as they are in conversation, the role-play will confirm it." Role-play reveals the rep's opening line during an escalation is defensive rather than empathetic; rep acknowledges the gap after the practice; new approach adopted

## Audit Log
All coaching session notes retained by rep, month, and year. Development plans retained and updated monthly. Semi-annual performance review records retained. CEO notification records for "needs improvement" ratings retained. PIP records retained (if applicable). Termination authorization records retained (if applicable).

## Deprecation
Retire when each portfolio company has a dedicated CS manager who runs the coaching program — with Dr. Lewis reviewing the coaching framework annually and the CEO approving any CS rep formal performance actions.
