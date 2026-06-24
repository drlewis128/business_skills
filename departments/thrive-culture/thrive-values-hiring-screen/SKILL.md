---
name: thrive-values-hiring-screen
description: "Screen job candidates for THRIVE values alignment at MBL Partners and portfolio companies. Use when the user says 'THRIVE hiring', 'values hiring', 'culture screen', 'culture interview', 'THRIVE interview', 'values interview', 'screen for values', 'screen for culture', 'interview for THRIVE', 'culture fit interview', 'values fit interview', 'THRIVE screen', 'check for Integrity', 'Integrity interview', 'cultural alignment', 'hiring for culture', 'culture questions', 'values questions', 'interview questions THRIVE', 'THRIVE interview questions', 'candidate THRIVE', 'candidate values', 'reference check THRIVE', 'reference check culture', or 'Integrity reference check'."
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[--role <executive|manager|ic|clinical|field>] [--entity <mbl|allevio|hive|column6>] [--pillar <all|truth|hustle|respect|integrity|value|enjoy>]"
---

# Thrive Values Hiring Screen

Screen job candidates for THRIVE values alignment — providing a structured interview framework, behavioral question bank, reference check probes, and scoring guidance that makes culture fit as rigorous as technical fit. The best technical hire who fails the Integrity screen is a liability, not an asset. This skill produces the THRIVE component of the hiring scorecard.

## When to Use
- Mid-interview process — after technical/skills screens pass, before final offer
- Designing the values screen for a new role type
- Training a hiring manager to run THRIVE interviews
- Reference checking for culture alignment

## THRIVE Hiring Screen Framework

```
HIRING SCREEN STRUCTURE:
  When: After skills/technical screen — before final panel; before offer
  Who runs it: Hiring manager (for IC) / Dr. Lewis (for Manager+) / Matt Mathison (for entity CEO)
  Duration: 45-60 minutes
  Format: Behavioral interview (STAR: Situation, Task, Action, Result)
  Scoring: 1-5 per pillar → combined THRIVE hiring score

INTERVIEW QUESTIONS BY PILLAR:

  TRUTH (T):
    "Tell me about a time you delivered bad news to a leader or a client. What was the situation,
     what did you say, and how did they react?"
    "Describe a situation where you knew the actual status of a project was worse than what was
     being reported. What did you do?"
    "Have you ever disagreed with your manager's direction? What happened?"
    Green: Proactive truth-telling; comfortable with discomfort; accurate self-reporting
    Red: Story where they stayed quiet; blamed others for the outcome; vague about their role
    
  HUSTLE (H):
    "Walk me through a time you had a tight deadline that most people thought was impossible.
     What did you do and what was the outcome?"
    "Tell me about a project you initiated without being asked. Why did you start it?"
    "Describe the last time you had to ask for help vs. figured something out yourself. How do you
     decide which to do?"
    Green: Self-initiated; fast-moving; outcome-focused; takes accountability for pace
    Red: Always waited for direction; blames resources for missing deadlines; vague outcomes
    
  RESPECT (R):
    "Tell me about a situation where you disagreed with a teammate. How did you handle it?"
    "Describe a time you worked with someone very different from you — different background,
     communication style, or work style. What did you learn?"
    "How do you give feedback to someone who reports to you when they're underperforming?"
    Green: Listens; acknowledges other perspectives; kind but direct feedback delivery
    Red: Dismissive; "they just couldn't keep up"; no examples of adapting to others
    
  INTEGRITY (I) — MOST IMPORTANT:
    "Tell me about a time you were asked to do something you weren't comfortable with. What happened?"
    "Have you ever witnessed unethical behavior at work? What did you do?"
    "Tell me about a commitment you made that you weren't able to keep. What did you do about it?"
    Green: Clear moral compass; surfaced issues; made it right when they failed a commitment
    Red: Rationalizations; "I just did what I was told"; minimizing ethical issues; no accountability
    
    INTEGRITY PROBE (probe deeper if initial responses are vague):
    "If your manager asked you to report numbers to a client in a way that was technically accurate
     but misleading, what would you do?"
    Answer should be: "I'd push back and explain why. If they insisted, I'd escalate or leave."
    Any answer that accepts misleading reporting = Integrity flag (score 2 or below)
    
  VALUE (V):
    "Tell me about a time you had to prioritize. How did you decide what mattered most?"
    "What's a project you've worked on that you're proud of — not because of the work, but because
     of the impact it had?"
    "Describe a time you eliminated something — a process, a meeting, a project — because it wasn't
     creating value. How did you know it wasn't valuable?"
    Green: Impact-oriented; can explain value created; comfortable killing what doesn't work
    Red: Busy-work answers; can't articulate impact; "we always did it that way"
    
  ENJOY (E):
    "What kind of work do you find most energizing? What drains you?"
    "How do you contribute to the culture of a team?"
    "Tell me about the best team you've ever been part of. What made it great?"
    Green: Self-aware; positive contribution to team energy; excited about the mission
    Red: Chronic negativity pattern; "I just keep my head down"; zero team stories

REFERENCE CHECK THRIVE PROBES (for Manager+ roles; all roles at Allevio):
  "How would you describe [name]'s approach to delivering difficult news?"  (Truth)
  "Was [name] someone who self-initiated, or did they need direction to move?"  (Hustle)
  "How did [name] handle conflict with peers or people who reported to them?"  (Respect)
  "Was there ever a situation where [name] was asked to do something questionable? How did they respond?"  (Integrity)
  "What was [name]'s most significant contribution in terms of actual impact?"  (Value)
  "Did [name] contribute to the team's energy and culture?"  (Enjoy)

ENTITY-SPECIFIC PRIORITY PILLARS:
  Allevio: Integrity + Respect (patient-facing; HIPAA; clinical trust); minimum score per pillar: 4
  HIVE: Integrity + Hustle (field ops; safety; LOI negotiations); minimum Integrity: 4
  Column6: Truth + Hustle (fast-moving media; reporting accuracy); minimum Truth: 4
  MBL HoldCo: All pillars balanced; Integrity non-negotiable kill criterion for all roles
```

## Output Format

```markdown
# THRIVE Hiring Screen — [Candidate Name] | [Role] | [Entity] | [Date]
**Screener:** [Name] | **Interview format:** Behavioral (STAR)

---

## Pillar Scores

| Pillar | Score (1-5) | Key evidence from interview |
|--------|------------|----------------------------|
| T — Truth | [1-5] | "[Quote or paraphrase from candidate]" |
| H — Hustle | [1-5] | |
| R — Respect | [1-5] | |
| I — Integrity | [1-5] | |
| V — Value | [1-5] | |
| E — Enjoy | [1-5] | |
| **TOTAL** | **[/30]** | |

---

## Kill Criterion Check
- Integrity: [score] — [✅ Clear / 🔴 DO NOT HIRE]
- Two-pillar ≤2: [✅ None / 🔴 Flag — escalate]

---

## Reference Check THRIVE Notes
- Truth: [reference feedback]
- Integrity: [reference feedback — most critical]

---

## THRIVE Hiring Recommendation
**[ADVANCE / DO NOT ADVANCE]** — [2-sentence rationale]
```

## Output Contract
- The Integrity interview must include a probe — the surface-level Integrity question ("tell me about a commitment you couldn't keep") will get a rehearsed answer from most candidates; the Integrity probe ("if your manager asked you to report numbers in a misleading way, what would you do?") is designed to surface the actual moral framework; a candidate who answers the probe with "I'd look for a way to make it work" or "it depends on what the numbers were" has just scored a 2 or below on Integrity, regardless of how well they answered the other questions; the probe must always be used for Manager+ roles and for all Allevio clinical roles (where data integrity is a HIPAA compliance requirement); Dr. Lewis conducts Integrity screens personally for all Director+ hires
- THRIVE screen scores are advisory inputs to the hiring scorecard, not the only input — the technical screen, work sample, and reference checks are all part of the picture; however, THRIVE scores have veto power that technical scores do not: a technically excellent candidate who scores Integrity 2 or who has two pillars at 2 is a DO NOT HIRE regardless of technical strength; the combination of weak THRIVE and strong technical ability often produces the most dangerous outcomes — someone who is highly capable but misaligned on values can cause significant damage quickly because they have the skills to execute the wrong things effectively
- HITL required: Integrity score ≤2 → Dr. Lewis notified immediately + entity CEO; DO NOT HIRE recommendation → entity CEO confirmation before closing the requisition; Manager+ Integrity screen → Dr. Lewis conducts personally; entity CEO hire → Matt Mathison reviews THRIVE assessment; reference check THRIVE flags → Dr. Lewis reviews before offer extended

## System Dependencies
- **Reads from:** Job description and role context (entity CEO + hiring manager); THRIVE playbook (thrive-playbook-builder — Integrity kill criterion language; pillar definitions); hr-hiring-scorecard (THRIVE is one dimension of the scorecard — this skill populates it); prior THRIVE assessments for the team being hired into (thrive-culture-baseline — what gaps are we addressing with this hire?)
- **Writes to:** THRIVE section of hr-hiring-scorecard (score + evidence per pillar); Integrity kill criterion record (SharePoint → [Entity] → People → THRIVE-Screens → [Name]-[Date]); hiring decision record (offer/no-offer + THRIVE basis); entity CEO notification (kill criterion or Manager+ hire); Dr. Lewis notification (all Integrity flags)
- **HITL Required:** Integrity ≤2 → Dr. Lewis immediately + entity CEO; two-pillar gap → Dr. Lewis; Manager+ screen → Dr. Lewis conducts personally; entity CEO hire → Matt Mathison reviews; reference flag → Dr. Lewis before offer

## Test Cases
1. **Golden path:** Screening a Column6 account manager candidate. All pillars score 4+. Integrity probe: "If my manager asked me to inflate impression numbers in a client report, I'd refuse. I'd tell the client what we actually delivered and find a way to explain why the program still had value. If my manager pushed me, I'd escalate — I'm not willing to misrepresent numbers to clients." Score: I:5. T:5 (told a client their campaign underperformed within 24 hours of data coming in). H:4. R:4. V:4. E:5. Total 27/30. Recommendation: ADVANCE. Reference check confirms Truth and Integrity patterns. Offer authorized.
2. **Edge case:** Candidate for Allevio clinical coordinator scores I:4 in the interview but a reference check probe ("Was there a situation where they were asked to do something questionable?") returns: "There was one time where the team was under pressure to code some encounters a certain way and [name] just went along with it. I wouldn't say she pushed back." This conflicts with the interview score. Dr. Lewis: "This reference response is an Integrity signal — adjusting to I:3. This is above the kill criterion but it's a gap for a clinical role where coding accuracy is a HIPAA compliance issue. I'm recommending we address this directly in the offer conversation and include a probationary THRIVE check at 30 days."
3. **Adversarial:** Hiring manager says: "The THRIVE screen is slowing down our hiring process — can we skip it for entry-level roles?" Dr. Lewis: "I understand the urgency. Here's what I can do: for entry-level roles, I'll reduce the THRIVE screen to 20 minutes — Truth and Integrity only, plus one reference check Integrity probe. We can skip Hustle/Respect/Value/Enjoy screening at that level since they're coaching-recoverable. But Integrity is non-negotiable at every level. If someone is joining any MBL entity and can't pass a basic Integrity screen, we don't want them in the organization regardless of the role. I'll build you a streamlined 20-minute version."

## Audit Log
All THRIVE hiring screens retained in SharePoint (entity; candidate name; role; date; scores; evidence; screener; recommendation). Kill criterion records (entity; candidate; score; reason; Dr. Lewis notification; entity CEO action; outcome). Reference check THRIVE records (probes asked; responses; flags; Dr. Lewis review). Offer linkage records (THRIVE score at time of offer; offer outcome; entity CEO authorization).

## Deprecation
Interview questions reviewed annually with Callie and Fitz (testing for predictive validity). Integrity probe updated if legal counsel recommends changes. Reference check probes reviewed annually. Entity-specific priority pillars reviewed when entity industry context changes. Scoring guidance reviewed when culture baseline data reveals scoring inconsistencies across interviewers.
