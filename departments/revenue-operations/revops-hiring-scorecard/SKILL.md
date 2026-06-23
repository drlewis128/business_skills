---
name: revops-hiring-scorecard
description: "Build and apply hiring scorecards for Revenue Operations roles at MBL Partners portfolio entities. Use when the user says 'hiring scorecard', 'RevOps hiring', 'hiring for RevOps', 'revops analyst', 'revops manager', 'revops coordinator', 'operations analyst', 'revenue analyst', 'revenue operations role', 'hiring a RevOps person', 'what to look for in RevOps', 'RevOps job description', 'RevOps interview', 'RevOps interview questions', 'interview scorecard', 'candidate scorecard', 'evaluate RevOps candidate', 'what makes a good RevOps hire', 'RevOps skills assessment', 'hire for RevOps', 'RevOps team building', 'RevOps staffing', 'AE hiring scorecard', 'CS hiring scorecard', 'sales operations hire', 'marketing operations hire', or 'who should we hire for RevOps'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--role <analyst|manager|director|ae|cs>] [--entity <allevio|column6|mbl>] [--action <scorecard|jd|questions|evaluate>]"
---

# RevOps Hiring Scorecard

Build and apply structured hiring scorecards for Revenue Operations roles at MBL Partners portfolio entities — ensuring that every RevOps candidate is evaluated on analytical capability, systems proficiency, process discipline, and THRIVE values alignment, not just impressiveness in conversation. The hire you make in RevOps either amplifies or undermines every other commercial investment.

## When to Use
- Defining a new RevOps role and building the scorecard before posting
- Evaluating a finalist candidate against structured criteria
- Debriefing an interview panel using a consistent framework
- Reviewing a hire's 90-day performance against scorecard criteria

## RevOps Hiring Framework

```
ROLE LEVELS:

  REVOPS ANALYST (IC):
    Owns: data pulls; report generation; CRM maintenance; automation QA; SLA tracking
    Requires: GHL proficiency; Excel/Sheets; analytical mindset; process discipline
    Reports to: Dr. Lewis (portfolio RevOps) or entity CEO (entity-level)
    
  REVOPS MANAGER (IC or player-coach):
    Owns: forecast process; pipeline health; cross-functional reporting; tool administration
    Requires: 3-5 years RevOps or sales operations; tech stack management; stakeholder influence
    Reports to: Dr. Lewis or entity CEO
    
SCORECARD DIMENSIONS (5 dimensions; 100 points total):

  DIMENSION 1 — ANALYTICAL CAPABILITY (25 pts):
    Can the candidate read a pipeline report and immediately identify the bottleneck?
    Can they build a VLOOKUP-based CRM reconciliation without guidance?
    Can they tell the difference between a volume problem and a conversion problem?
    Assessment: live exercise during interview (pipeline data set; 15 minutes; no coaching)
    
    Score 5: identified bottleneck correctly; built reconciliation correctly; articulated V vs. C
    Score 4: identified bottleneck; minor formula error; stated the right diagnostic question
    Score 3: identified bottleneck but needed guidance; reconciliation incomplete
    Score 2: confused about bottleneck; exercise took >20 minutes; needed multiple prompts
    Score 1: could not complete exercise independently
    
  DIMENSION 2 — SYSTEMS PROFICIENCY (20 pts):
    GoHighLevel: have they used it? Can they describe pipeline stage management? Custom fields?
    Have they managed a CRM migration or configured a workflow automation?
    Do they understand API integrations conceptually even if not technical implementors?
    Assessment: structured questions; request to walk through a GHL task they've completed
    
    Score 5: GHL or equivalent CRM admin experience; workflow automation built and documented; knows what an API is and when to call one
    Score 4: GHL or equivalent user; has built a simple automation; comfortable learning new systems
    Score 3: CRM user (not admin); no automation experience; willing to learn
    Score 2: minimal CRM experience; describes systems use as "basic"
    Score 1: no meaningful CRM experience; resistant to learning new tools
    
  DIMENSION 3 — PROCESS DISCIPLINE (25 pts):
    Does the candidate naturally document their work?
    Do they think in terms of "what triggers this?" and "what does it affect?"
    Have they designed or improved a revenue process before (with measurable outcome)?
    Assessment: "Tell me about a process you improved" — listen for: what was broken; what you did; how you measured the improvement
    
    Score 5: designed a complete process with clear triggers; documented it; measured before/after; improved measurably
    Score 4: improved an existing process; had metrics; involved at least one other team
    Score 3: improved a process; subjective outcome; minimal documentation
    Score 2: maintained a process; didn't design or measurably improve one
    Score 1: no process improvement experience described; sees process as bureaucracy
    
  DIMENSION 4 — STAKEHOLDER COMMUNICATION (15 pts):
    Can the candidate deliver a BLUF summary of a complex RevOps finding to a non-technical leader?
    Do they say "the data shows" or "I think"?
    Are they comfortable pushing back on a CEO's request if the data doesn't support it?
    Assessment: ask them to summarize the live exercise finding to "the CEO" in 60 seconds
    
    Score 5: led with bottom line; cited data; recommended one action; confident without being dismissive
    Score 4: BLUF summary; data-cited; action stated; slight hedging
    Score 3: explained the finding; took 90+ seconds; buried the recommendation
    Score 2: narrative summary; no clear recommendation; asked "what do you want to do?"
    Score 1: could not summarize without coaching
    
  DIMENSION 5 — THRIVE ALIGNMENT (15 pts):
    Truth: will they tell the CEO the pipeline is at risk even when it's uncomfortable?
    Hustle: do they bring urgency to operations work, or do they optimize for process perfection?
    Respect: do they talk about cross-functional partners with respect?
    Integrity: any sign of data manipulation or "making the numbers look good"?
    Value: can they articulate the business value of the RevOps function?
    Enjoy: do they seem to genuinely like this work?
    Assessment: THRIVE-based behavioral interview questions
    
    Score 5: clear examples of Truth (spoke uncomfortable truth); Hustle (bias for action); Integrity (never massaged data)
    Score 4: good examples in 3-4 THRIVE dimensions; no red flags in others
    Score 3: fine on most; one THRIVE dimension unclear or missing
    Score 2: one THRIVE dimension clear concern (e.g., manipulated metrics to "look good")
    Score 1: multiple THRIVE misalignments
    
HIRING DECISION THRESHOLDS:
  90-100: Strong hire; recommend immediately
  75-89: Hire with confidence; specific development areas noted
  60-74: Conditional hire; entity CEO decides; development plan required
  45-59: Do not hire this role; consider adjacent role if candidate has other strengths
  <45: Do not hire; not ready for RevOps function
  
  Automatic disqualifier (regardless of total score):
    Dimension 5 (THRIVE) score ≤2 → do not hire regardless of other scores
    Dimension 1 (Analytical) score ≤2 AND Dimension 3 (Process) score ≤2 → do not hire (both critical for RevOps)
```

## Output Format

```markdown
# RevOps Hiring Scorecard — [Role] — [Candidate Name]
**Entity:** [Entity] | **Interviewer:** Dr. Lewis | **Date:** [Date]

---

## Scorecard

| Dimension | Max | Score | Notes |
|-----------|-----|-------|-------|
| Analytical Capability | 25 | | |
| Systems Proficiency | 20 | | |
| Process Discipline | 25 | | |
| Stakeholder Communication | 15 | | |
| THRIVE Alignment | 15 | | |
| **Total** | **100** | | |

---

## Disqualifier Check
- Dimension 5 (THRIVE) ≥3? [Yes/No]
- Dimensions 1+3 combined ≥5? [Yes/No]

---

## Key Observations
[3 bullets: strongest dimension; biggest concern; one open question for next round]

---

## Recommendation
[Strong hire / Hire / Conditional / Do not hire] — [One sentence rationale]
```

## Output Contract
- Structured scorecards consistently produce better RevOps hires than "gut feel" interviews — the single biggest hiring mistake in the RevOps function is hiring for communication skill and likability when the role requires analytical rigor and process discipline; charming candidates who cannot complete the live data exercise will charm the entity CEO, charm the interview panel, and then fail to produce accurate pipeline reports; Dr. Lewis uses the live exercise as a de-facto ability test — it is designed to take 15 minutes for a competent candidate; the exercise cannot be prepared for without the actual skills, unlike typical interview questions
- THRIVE disqualification is a hard stop — if a candidate describes massaging CRM data to make the pipeline "look better for the board" or "cleaning up" closed-lost deals to keep conversion rates high, Dr. Lewis terminates the interview and informs the entity CEO immediately; this is an Integrity violation and it is the exact behavior that makes RevOps data untrustworthy; the entire RevOps function is built on data integrity; a RevOps analyst who games the data is worse than no RevOps analyst — they create false confidence in a broken commercial system
- HITL required: candidate scorecard → entity CEO reviews before offer; any "Conditional hire" → entity CEO decides; RevOps Manager hire → Dr. Lewis reviews candidate and scorecard; offer terms → entity CEO + Dr. Lewis; live exercise design → Dr. Lewis reviews annually; THRIVE violation during interview → Dr. Lewis + entity CEO immediate

## System Dependencies
- **Reads from:** GoHighLevel (role requirements — system to be used); revops-tech-stack-manager (systems proficiency assessment context); GTM playbook (role context for THRIVE alignment questions); entity CEO (role requirements; team context)
- **Writes to:** Hiring scorecard (SharePoint → [Entity] → HR → Hiring → RevOps → [Candidate] → [Date]); interview debrief records; entity CEO hiring recommendation; 90-day onboarding plan (after hire decision)
- **HITL Required:** Scorecard → entity CEO reviews; conditional hire → entity CEO decides; manager hire → Dr. Lewis reviews; offer → entity CEO + Dr. Lewis; THRIVE violation → entity CEO immediate

## Test Cases
1. **Golden path:** Allevio RevOps Analyst candidate. Live exercise: pulled bottleneck correctly (Stage 5→6 conversion 38% vs. 65% target); built reconciliation with one minor formula error; correctly framed as "conversion problem, not volume." Dimension 1: 4/5. Systems: used HubSpot (not GHL but equivalent); built drip workflows; understands API conceptually. Dimension 2: 4/5. Process discipline: improved lead routing process at prior employer; reduced average response time from 6.2hr to 2.1hr; documented in Notion; shared with leadership. Dimension 3: 5/5. Stakeholder communication: 60-second summary to "CEO" was BLUF, data-cited, action-clear. Dimension 4: 4/5. THRIVE: described speaking up about inflated pipeline projections at prior company to sales leadership (uncomfortable; did it anyway). Hustle: bias for action evident. Integrity: no red flags. Dimension 5: 5/5. Total: 88/100. Recommendation: Hire with confidence. Entity CEO agrees. Offer extended.
2. **Edge case:** Candidate has 6 years of experience but fails the live exercise (couldn't identify the bottleneck; said "you need more context to know") → Dr. Lewis: "Experience doesn't predict performance in this role — analytical instinct does. The exercise is designed to be solvable with the data provided; the bottleneck is identifiable by anyone who has read a pipeline report before. The candidate's response 'you need more context' is a pattern I've seen before: it's a way of avoiding a wrong answer rather than committing to an analysis. In RevOps, 'you need more context' is sometimes true — but in this case, the data is sufficient. Dimension 1: 1/5. I recommend we not proceed."
3. **Adversarial:** Entity CEO wants to hire a personal referral without using the scorecard because "I trust my network" → Dr. Lewis: "I completely respect your network and referrals often do produce excellent hires. I'd like to run the referral through the same scorecard we use for all candidates — not to validate your judgment, but to protect both of you. If the referral scores well on the scorecard, you have a data-backed case for the hire. If they don't, you have a reason to have a direct conversation with the referral source about what development is needed before the role is a fit. Bypassing the scorecard for referrals creates two risks: (1) a hire that doesn't work, which damages your relationship with the referral source anyway; (2) a team perception that referral hires get preferential treatment. 90 minutes for the scorecard protects everyone."

## Audit Log
Hiring scorecard records per candidate (permanent). Interview debrief records. Entity CEO hire/no-hire decisions with rationale. Live exercise design versions. THRIVE violation records (if any). 90-day performance review records (hired candidates vs. scorecard prediction). Referral hire scorecard completion records.

## Deprecation
Scorecard dimensions reviewed annually or when RevOps function scope changes. Live exercise updated when GHL version or entity pipeline configuration changes. THRIVE criteria reviewed when MBL THRIVE framework updates. Hiring thresholds reviewed when entity revenue ops complexity changes. Role definitions reviewed when entity team structure changes.
