---
name: sales-hiring-scorecard
description: "Score and evaluate sales rep candidates for MBL portfolio companies. Use when the user says 'hiring scorecard', 'sales rep scorecard', 'hire a sales rep', 'evaluate a candidate', 'interview scorecard', 'rep interview', 'assess a sales candidate', 'how to hire a sales rep', 'sales rep hiring', 'what to look for in a sales rep', 'sales hire', 'scoring a candidate', 'compare candidates', 'sales recruitment', 'evaluate a salesperson', 'sales interview guide', 'should we hire this person', 'candidate assessment', 'rep scorecard', 'sales hire decision', 'sales rep evaluation', 'hiring a sales rep', 'sales interview', 'how do we evaluate sales candidates', 'hiring an AE', or 'hiring an SDR'."
metadata:
  version: 2.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--candidate <name>] [--role <territory-rep|account-manager|SDR>] [--action <score|debrief|decide>]"
---

# Sales Hiring Scorecard

Score and evaluate sales rep candidates for MBL portfolio companies — applying a consistent, evidence-based evaluation framework to every candidate so hiring decisions are made on merit, not on how likable the candidate seemed in the interview. A bad sales hire costs 3-6× their annual salary in recruiting; lost productivity; and account disruption. Dr. Lewis runs every sales hiring decision through this scorecard before presenting a recommendation to the CEO.

## When to Use
- Evaluating candidates after a first interview
- Debriefing after a full interview loop (all interviewers score; then align)
- Making the hire/no-hire recommendation to the CEO
- Reviewing a sales rep after their first 30/60/90 days (was our assessment accurate?)

## Sales Hiring Scorecard

```
HIRING CRITERIA — 7 DIMENSIONS (scored 1-5 each; max 35 points):

  1. TRACK RECORD (0-5):
     5: Specific, documented results — quota attainment percentage by year; deal sizes; specific accounts won
       "I hit 118% in 2025 at [Company]. My largest deal was $320K. Here's what I did differently..."
     4: Good results with some documentation; honest about misses
     3: Average results; no clear pattern of overperformance
     2: Vague claims ("I did well") without specifics; or below-quota most years
     1: Red flags — can't recall attainment percentages; blames the company for missing
     
  2. PROCESS ALIGNMENT (0-5):
     Does the candidate's natural sales process match what we need?
     5: Naturally follows a structured discovery process; asks about pain before presenting solutions;
       references qualification frameworks (MEDDPICCC or similar); follows a playbook
     4: Structured approach; not familiar with MEDDPICCC but describes equivalent behaviors
     3: Relationship-based seller; less process-oriented; may struggle with complex B2B
     2: Product-centric ("I show them the product and they love it"); skips discovery
     1: No articulated process; relies entirely on charm or persistence
     
  3. GRIT AND RESILIENCE (0-5):
     Ask: "Tell me about a time you went through a losing streak. How many months; what did you do; how did you turn it around?"
     5: Specific story; faced a real setback; describes a deliberate recovery approach;
       didn't blame the company or the product; bounced back with data
     4: Good story; some ownership; eventual recovery
     3: Vague or avoided the question; no specific example
     2: Blames external factors; "the product wasn't good enough" / "my manager didn't support me"
     1: No experience with a losing streak (raises experience questions) OR serious victimhood pattern
     
  4. COACHABILITY (0-5):
     Ask: "Tell me about a time a manager gave you feedback that changed how you sell. What was the feedback; what did you change?"
     5: Specific example; received hard feedback; made a concrete change; outcome improved
     4: Good example; received feedback; made some change
     3: Vague; "I'm always open to feedback" (not a specific example)
     2: Disagrees with feedback they received ("I disagreed but went along with it")
     1: Defensive about feedback; "my managers were all wrong"
     
  5. MARKET AND BUYER FIT (0-5):
     Allevio: Has sold to HR Directors or CFOs; understands benefits purchasing; not necessarily healthcare
     Column6: Has sold to media buyers or agencies; understands CPM; IO-based buying; programmatic
     HIVE: Has experience in oil and gas; landowner relations; contract negotiation with landowners
     5: Prior experience selling to exactly this buyer in a related market
     4: Has sold to a similar buyer in a different market; can transfer
     3: Has sold to a different buyer in a related market; learning curve expected
     1-2: No related experience; would require 6+ months to develop market knowledge
     
  6. CURIOSITY AND PREPARATION (0-5):
     Before the interview: Did they research the company? Did they prepare thoughtful questions?
     During the interview: Do they ask questions that reveal genuine curiosity about the business?
     5: Researched specific facts about our entity; asks insightful questions; demonstrates they understand
       the model and the market
     4: Good preparation; meaningful questions; shows genuine interest
     3: Standard preparation; generic questions ("What does success look like in this role?")
     2: Minimal preparation; "Can you tell me more about what you do?"
     1: No preparation evident; appears to be interviewing everywhere
     
  7. CULTURE FIT / THRIVE ALIGNMENT (0-5):
     THRIVE: Truth; Hustle; Respect; Integrity; Value; Enjoy
     5: Strong on all 6 dimensions — honest about misses; works hard; treats others well;
       high integrity; creates value; clearly enjoys the work
     4: Strong on most; no disqualifying behaviors
     3: Mixed; some THRIVE alignment; some gaps (track record of job-hopping raises Hustle question)
     2: Red flag on one dimension (evidence of dishonesty; poor treatment of peers or admin)
     1: Clear THRIVE misalignment (arrogance; dishonesty in the interview; disrespects the process)
     
SCORING INTERPRETATION:
  30-35: Strong Yes — hire; move quickly before they take another offer
  24-29: Yes with conditions — clear strengths; address gaps in onboarding
  18-23: Maybe — significant gaps; discussion with CEO required before deciding
  12-17: No — unlikely to succeed in this role; document the rationale
  0-11:  Hard No — not close; don't invest more interview time
  
AUTOMATIC DISQUALIFIERS (any one of these = No regardless of overall score):
  □ Dishonesty about track record (attainment that doesn't check out with references)
  □ Cannot name a single account they closed (blames the company for all losses)
  □ Clear THRIVE violations in the interview (dishonesty; disrespect; arrogance)
  □ Refuses to do a mock discovery call or role play (unwillingness to be evaluated)
  □ Current employer they're badmouthing has a reason to protect them (non-compete)
  
ROLE PLAY (MANDATORY COMPONENT):
  All sales candidates do a mock discovery call (5-7 minutes):
    Scenario: Rep is selling Allevio (or Column6) to a prospect who is an HR Director (or media buyer)
    Dr. Lewis plays the prospect; the candidate plays the sales rep
    Evaluating: Do they ask permission to start? Do they ask about the prospect's situation before
      pitching? Do they ask about the decision process? Do they handle an objection gracefully?
  A candidate who refuses to role play is an automatic disqualifier
```

## Output Format

```markdown
# Hiring Scorecard — [Candidate Name] | [Entity] | [Role]
**Interviewed by:** Dr. Lewis | **Date:** [Date] | **Interview type:** [First / Second / Final]

---

## Score Summary

| Dimension | Score (1-5) | Evidence |
|-----------|------------|---------|
| Track record | [X] | ["Hit 112% in 2025 at [Company]; largest deal $180K; 3 years at company"] |
| Process alignment | [X] | ["Described SPIN methodology; asked pain questions before presenting"] |
| Grit / resilience | [X] | ["Described Q2 2024 losing streak; recovered by refocusing on top 10 accounts"] |
| Coachability | [X] | ["Manager told him to slow down in discovery; changed approach; win rate improved"] |
| Market / buyer fit | [X] | ["5 years selling benefits at [Company]; HR Directors are his core buyers"] |
| Curiosity / preparation | [X] | ["Researched Allevio specifically; asked about MSO differentiation vs. carriers"] |
| THRIVE alignment | [X] | ["Honest about a missed quarter; team-oriented language; no red flags"] |
| **Total** | **[X]/35** | |

---

## Role Play Evaluation

**Score:** ✅ Completed / ❌ Refused (Auto-Disqualifier)
**Observation:** [How did they handle the opening? Did they discover before pitching? Objection handling?]

---

## Automatic Disqualifiers

- [ ] Dishonesty detected
- [ ] Cannot name accounts closed
- [ ] THRIVE violations
- [ ] Refused role play
- [ ] Non-compete concern

---

## Recommendation

**Score:** [X]/35 | **Recommendation:** Strong Yes / Yes / Maybe / No / Hard No
**CEO review required:** [Yes — discuss gaps before deciding / No — straightforward]
**Reference check priority:** [What specifically to verify with prior managers]
**Offer urgency:** [Move fast / Standard pace / Hold for second candidate]
```

## Output Contract
- Score from evidence, not from energy — the most common hiring mistake is confusing charisma with competence; a high-energy, charming candidate who can't name their quota attainment from last year is not a good sales hire; Dr. Lewis scores every dimension from specific evidence (what the candidate said; what they documented) not from how they felt in the interview; interviewers write their evidence notes before giving a score
- Reference checks validate the track record — the most important dimension (track record) is the easiest to embellish; Dr. Lewis conducts reference checks before extending any offer; the reference check specifically asks the prior manager: (1) What was this rep's quota attainment in each year you managed them? (2) What was their best deal? (3) What would you say is their biggest weakness? (4) Would you hire them back? A reference who won't answer specifically is a yellow flag
- Role play is a requirement, not optional — a rep who refuses to do a mock discovery call or a mock cold call opener is either (a) unprepared for a structured sales process or (b) unwilling to be evaluated; Dr. Lewis makes a brief role play a standard part of every sales interview; the role play reveals in 5 minutes what an interview conversation often cannot; the rep who handles a role play confidently — even imperfectly — is more trustworthy than one who polishes their interview answers
- HITL required: Dr. Lewis conducts the interview and submits the scorecard; CEO reviews all scorecards and makes the hire/no-hire decision; Dr. Lewis does not extend a verbal offer without CEO approval; offers are made in writing by HR (hr-employment-agreement-manager) after CEO approval; Matt Mathison is informed when a sales hire materially changes the headcount plan; Dr. Lewis does not hire anyone who triggered an automatic disqualifier regardless of the overall score

## System Dependencies
- **Reads from:** Job description (SharePoint/HR/<Company>/JobDescriptions/SalesRep_[Date].pdf); compensation benchmarks (hr-hiring-scorecard — base salary range; OTE; equity if applicable); quota plan (sales-quota-setter — the hired rep will have a specific quota; set expectations in the interview); territory plan (sales-territory-planner — what territory will this rep cover?); sales playbook (sales-sales-playbook — process expectations shared with the candidate during the interview)
- **Writes to:** Hiring scorecard (SharePoint/HR/<Company>/Hiring/[Candidate]_Scorecard_[Date].pdf); CEO hire recommendation memo; reference check notes; offer letter (coordinated with hr-employment-agreement-manager); onboarding plan trigger (sales-onboarding-plan — begins on the hired rep's first day); CRM rep record (GoHighLevel — new rep added with territory assignment)
- **HITL Required:** Dr. Lewis scores and recommends; CEO decides and approves the offer; HR issues the written offer and employment agreement; Matt Mathison informed of headcount changes; Dr. Lewis does not hire without CEO approval; Dr. Lewis does not override an automatic disqualifier under any circumstance; any non-compete concern is reviewed by outside counsel before an offer is extended

## Test Cases
1. **Golden path:** Evaluating a candidate for Allevio's West Valley territory rep role → Dr. Lewis conducts the interview: Candidate has 4 years at an Arizona-based group health broker; sold to HR Directors and CFOs; 2024 attainment: 108%; largest deal: $240K PMPM equivalent; mock discovery call: excellent — asked about renewal timing; pain; decision-maker; champion; no product pitching during discovery; THRIVE: honest about one miss year (2023 — maternity leave affected pipeline); no red flags; Scoring: Track record: 5; Process: 5; Grit: 4; Coachability: 4; Market fit: 5; Curiosity: 4; THRIVE: 5; Total: 32/35 — Strong Yes; CEO reviews scorecard; agrees; offer extended; candidate accepts
2. **Edge case:** Candidate is impressive in the interview but refuses to do the mock discovery call: "I don't really believe in role plays — I think real conversations are what matter" → Automatic disqualifier triggered; candidate not hired regardless of otherwise strong interview; CEO informed of the disqualifier reason; decision documented
3. **Adversarial:** CEO wants to hire a candidate (personal relationship) who scores 14/35 with an automatic disqualifier (cannot name any account they personally closed) → Dr. Lewis presents the data honestly: "14/35 is in the No range; the automatic disqualifier requires at minimum a reference check to confirm individual contribution before we proceed. If references confirm the rep was closing independently, I'll revisit the score. If references confirm the rep was an SDR setting meetings for others, the disqualifier stands." CEO agrees to the reference check; references reveal the candidate was not a closer; CEO decides not to hire; Dr. Lewis documents the conversation

## Audit Log
All hiring scorecards retained by candidate, entity, and date. CEO hire/no-hire decision records retained. Reference check notes retained. Automatic disqualifier records retained. Offer letter records retained. Post-hire performance comparison records reviewed at 90 days.

## Deprecation
Retire when each portfolio company has a VP of Sales and HR Business Partner who own the sales hiring process — with Dr. Lewis reviewing the scorecard criteria annually and the CEO making the hire decision for senior sales roles.
