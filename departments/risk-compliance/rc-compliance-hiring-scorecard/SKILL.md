---
name: rc-compliance-hiring-scorecard
description: "Evaluate compliance and risk role candidates — HIPAA/regulatory knowledge, integrity scoring, and professional judgment. Use when the user says 'compliance hiring', 'hire a compliance officer', 'compliance candidate', 'interview compliance', 'evaluate compliance professional', 'compliance role scorecard', 'compliance job candidate', 'Chief Compliance Officer candidate', 'Compliance Manager candidate', 'risk and compliance hire', 'evaluate risk officer', 'compliance job interview', or 'compliance hire scorecard'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--role <compliance-officer|compliance-manager|risk-analyst|HIPAA-officer|CCO>] [--entity <company name>] [--level <junior|mid|senior|executive>]"
---

# Compliance Hiring Scorecard

Evaluate compliance and risk management candidates for MBL portfolio companies — scoring regulatory knowledge, professional judgment, integrity signals, and organizational fit. Compliance hiring requires a different lens than most functional hires; the person must be independent-minded enough to say "we can't do that" to the CEO, technically knowledgeable enough to navigate HIPAA, AKS, and employment law, and practical enough to build controls that actually operate in a small-company environment. A compliance officer who only knows large-enterprise GRC tools or who has never had to be the person who says hard things to the CEO is the wrong hire for MBL portfolio companies.

## When to Use
- Evaluating a compliance officer, compliance manager, or risk analyst candidate
- Structuring the compliance interview process
- Scoring a candidate after interviews
- Making a hire/no-hire recommendation to the CEO or Matt Mathison
- Benchmarking a candidate against the role requirements for MBL portfolio scale

## Hiring Scorecard Framework

```
Role profiles at MBL portfolio scale:

HIPAA/Compliance Officer (Allevio-specific):
  Must-have knowledge: HIPAA Privacy Rule (§164.500-§164.534); HIPAA Security Rule (§164.302-§164.318); OIG LEIE screening; AKS/anti-kickback basics; OSHA recordability; AZ employment law
  Must-have experience: At least 2 years in healthcare compliance (MSO, physician group, hospital, or payer)
  Must-have skills: Can conduct a HIPAA risk analysis independently; knows how to write a BAA; has filed an HHS breach report or supported one; can train clinical staff
  Size experience: Has worked in organizations of 15-50 employees (not only large hospital systems with dedicated compliance teams)
  
General Compliance Manager (MBL portfolio):
  Must-have knowledge: COSO/ERM frameworks; SOC-lite/internal controls; employment law basics (FLSA/ADA/FMLA/Title VII); financial controls (AP, payroll); privacy law basics
  Must-have experience: 3+ years in compliance, audit, or risk at an organization with multiple regulatory frameworks
  Must-have skills: Can write a compliance policy independently; has conducted an internal audit; has delivered compliance training to non-technical audiences
  
Risk Analyst:
  Must-have knowledge: Risk assessment methodology (likelihood × impact); control design and testing; audit sampling
  Must-have experience: 1-2 years in internal audit, risk management, or compliance
  Must-have skills: Can build a risk register; understands the difference between a design test and an effectiveness test; can write an audit finding with root cause analysis
  
Signals to screen for (all levels):
  Integrity: Has said no to something a leader wanted because it was wrong? How did they handle it?
  Independence: Can they hold a position under pressure? Do they have examples of disagreeing with leadership with evidence?
  Practicality: Have they built compliance programs from scratch, not just maintained existing ones?
  Humility: Do they know what they don't know? Do they know when to engage outside counsel?
  Communication: Can they explain a compliance issue to a non-lawyer CEO without over-legalizing?
  
Red flags:
  Compliance theater: Has only worked in large organizations where compliance was a checkbox function; no examples of actually preventing harm or stopping a bad decision
  Overreach: Claims compliance expertise in areas where they clearly don't have it
  Defensiveness about past mistakes: A good compliance person can articulate a mistake they made and what they learned
  No "I said no" story: Has never given an example of declining a business request for compliance reasons — this means they either haven't been tested or capitulate
  Poor integrity signal: Inconsistencies in background; unwilling to discuss prior regulatory findings at their employer
```

## Output Format

```markdown
# Compliance Hiring Scorecard — <Role>
**Candidate:** [Name] | **Position:** [Role] | **Entity:** [Company]
**Interview date:** [Date] | **Scored by:** Dr. John Lewis
**Interview format:** [Phone screen / Panel / Case study / All]

---

## Candidate Summary

**Background:** [Years of experience; prior employers; relevant regulatory environments]
**Regulatory coverage:** [HIPAA / OSHA / AKS / FLSA / SOX / GDPR / Other]
**Size of prior organizations:** [N employees — important context]
**Prior role type:** [Staff / Manager / Officer / Consultant]

---

## Technical Knowledge (weight: 35%)

| Area | Score 1-5 | Evidence from interview |
|------|---------|----------------------|
| HIPAA Privacy and Security Rule | [Score] | [Specific answer — does not have to be perfect; must be substantive] |
| OIG LEIE / exclusion compliance | [Score] | |
| Anti-Kickback Statute basics (if Allevio role) | [Score] | |
| Employment law (FLSA/ADA/FMLA/Title VII) | [Score] | |
| Internal controls and audit concepts | [Score] | |
| Risk assessment methodology | [Score] | |
| Data privacy (CCPA / breach notification) | [Score] | |

**Technical average:** [Weighted average] | **Disqualifying gaps:** [Any 1-2 scores]

---

## Professional Judgment (weight: 30%)

| Scenario | Score 1-5 | Notes |
|---------|---------|-------|
| "Tell me about a time you said no to leadership on a compliance issue — what happened?" | [Score] | [Look for: specific, outcome-based, shows backbone] |
| "How would you handle an executive who wanted to bypass a compliance control?" | [Score] | [Look for: escalation path; does not capitulate; knows when to involve Matt Mathison] |
| "Describe a compliance program you built from scratch. What did you do first?" | [Score] | [Look for: risk-based thinking; not just copying templates] |
| "When do you involve outside counsel vs. handle internally?" | [Score] | [Look for: judgment about materiality, not always escalating and not never escalating] |

**Judgment average:** [Average] | **Red flag present:** [Yes — describe / No]

---

## Integrity Signals (weight: 20%)

| Signal | Observed | Notes |
|--------|---------|-------|
| Consistent story on background check | ✅ / ⚠️ | |
| Willing to discuss mistakes and learnings | ✅ / ⚠️ / ❌ | |
| References willing to speak (minimum 2 professional references) | ✅ / ⚠️ | |
| No inconsistencies between resume and verbal description of experience | ✅ / ⚠️ | |
| OIG LEIE / OFAC self-screen (ask: "Would you consent to a background check that includes OIG LEIE screening?") | ✅ / ❌ (auto-disqualify) | |

**Integrity assessment:** [Green / Yellow — detail / Red — disqualify]

---

## Organizational Fit (weight: 15%)

| Factor | Score 1-5 | Notes |
|--------|---------|-------|
| Comfortable in ambiguity at a small company | [Score] | [Small-company vs. large-company compliance mindset] |
| Understands multi-entity portfolio structure | [Score] | [Can they juggle Allevio + HIVE + MBL without siloing?] |
| Communication style matches Dr. Lewis / CEO working style | [Score] | |
| Compensation expectations aligned | ✅ / ❌ | $[Range] — candidate expects $[X] |

---

## Recommendation

**Overall score:** [Weighted average]
**Hire / No-hire / Hold for additional interviews:** [Recommendation]

**Hire rationale:** [2-3 specific reasons — not just "good candidate"]
**Risk with this hire:** [What are the 1-2 weaknesses that need onboarding attention?]
**No-hire rationale:** [Specific disqualifying factor — technical gap, integrity signal, or judgment concern]

---

## Matt Mathison Brief (for senior roles — Compliance Officer / CCO)

[Candidate name] for [Role] at [Company]: Overall score [X/5]. Recommendation: [Hire / No-hire]. Strengths: [2]. Risk: [1]. Salary: $[X]. Start: [Target date]. Background check: [Clear / Pending].
```

## Output Contract
- OIG LEIE screening and background check is non-negotiable for Allevio-facing roles — any compliance officer, compliance manager, or anyone with access to Allevio systems that interact with Medicare/Medicaid billing must consent to and pass an OIG LEIE screen before an offer is extended; a candidate who declines consent is automatically disqualified; Dr. Lewis adds this as a condition of employment to all compliance role offer letters for Allevio
- The "no" story is the most important interview question — a compliance officer who has never given an example of declining a business request for compliance reasons has not been tested as a compliance professional; the absence of this story is a red flag; the presence of a credible, specific story (with outcome — even if imperfect) is a green flag; what Dr. Lewis looks for: the candidate had a clear compliance position, communicated it to leadership, held it under some pressure, and documents the outcome — the outcome can be mixed (leadership made the call anyway, but with documented risk awareness); what is disqualifying is the absence of any such story or a story where the candidate immediately capitulated
- Small-company compliance experience is weighted more heavily than large-company titles — a Director of Compliance at a 20,000-employee hospital has a dedicated compliance team, legal department, and compliance software; Dr. Lewis is hiring for someone who will be the compliance team; experience at organizations of 15-100 employees where the compliance function was built rather than inherited is the most relevant experience; a Compliance Specialist who built a program from scratch at a 30-person physician practice is a more relevant candidate than a Compliance Director from a large health system who managed a team
- HITL required: Dr. Lewis conducts compliance role interviews and scores the candidate; CEO interviews and scores organizational fit for senior roles; Matt Mathison approves all senior compliance hires (CCO level); background check and OIG LEIE screening completed before offer letter; Dr. Lewis presents hire recommendation to CEO; Matt Mathison briefed on CCO-level hires

## System Dependencies
- **Reads from:** Role requirements (job description); interview notes; reference checks; background check results; OIG LEIE screening (rc-sanctions-screener); compensation benchmarks
- **Writes to:** Candidate scorecard (SharePoint/HR/<Company>/Compliance-Hiring/); hire/no-hire recommendation to CEO; Matt Mathison brief for senior hires; background check and OIG consent documentation
- **HITL Required:** Dr. Lewis scores; CEO interviews senior roles; Matt Mathison approves CCO-level hires; OIG LEIE screen required before offer for Allevio-facing roles

## Test Cases
1. **Golden path:** Evaluating a Compliance Manager candidate for Allevio → Interview conducted by Dr. Lewis; technical: HIPAA knowledge 4/5 (solid on Privacy Rule; weaker on Security Rule technical standards — acceptable with onboarding plan); OIG LEIE knowledge 3/5 (knows the concept; hasn't run the annual check themselves); AKS: 2/5 (limited — gap; Dr. Lewis to manage AKS directly until candidate is trained); judgment: "no" story — declined to approve a referring physician arrangement at prior employer that lacked AKS safe harbor; held position when CFO pushed back; escalated to outside counsel who confirmed the correct call; integrity: consistent background; two references confirm independence and technical credibility; OIG consent given; fit: 4/5 (smaller healthcare organization experience; understands the all-hands compliance role); overall: 3.5/5; recommendation: Hire with onboarding plan for AKS and HIPAA Security Rule technical standards; Dr. Lewis manages AKS directly for Q1 with handoff by Q2
2. **Edge case:** Candidate with stellar credentials but no healthcare experience → For an Allevio Compliance Officer role, HIPAA knowledge is non-negotiable; an excellent compliance professional from financial services who has never operated in a healthcare environment will need 6-12 months before they are operational on HIPAA; if Allevio needs a functioning HIPAA compliance program now, this is the wrong hire for the timing; Dr. Lewis flags this to CEO: "Strong candidate — wrong fit for current urgency; consider for future if HIPAA gap can be bridged by Dr. Lewis coverage for 6 months"; if the CEO can accept the 6-month ramp, the hire may still be the right call; the scoring reflects the gap and the recommendation includes the condition
3. **Adversarial:** "Can we just have our HR manager handle compliance duties?" → An HR manager managing employment law compliance (a slice of the compliance function) is reasonable; an HR manager managing HIPAA, OIG LEIE, AKS, internal audit, and the full compliance calendar is not; the compliance function at Allevio requires specialized knowledge that HR generalists are not trained for; the consequence of under-resourced compliance at a Medicare/Medicaid-participating healthcare entity is OIG recoupment, OCR investigation, and potential exclusion; Dr. Lewis presents the risk-adjusted case for a dedicated compliance hire: the cost of a Compliance Manager ($70-90K/year) is less than one OIG recoupment event; the CEO makes the final call; Dr. Lewis does not recommend the HR manager expansion

## Audit Log
Interview scorecards retained 5 years (EEOC lookback period). Background check and OIG LEIE consent retained. Hire/no-hire decisions and rationale retained. Reference check notes retained. Matt Mathison approval records retained for senior hires.

## Deprecation
Retire when MBL portfolio companies have HR functions that have developed compliance-specific hiring frameworks — with Dr. Lewis reviewing compliance role job descriptions and participating in senior compliance interviews as a technical evaluator.
