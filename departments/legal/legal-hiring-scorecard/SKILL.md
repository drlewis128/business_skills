---
name: legal-hiring-scorecard
description: "Evaluate legal and compliance candidates. Use when the user says 'hire a lawyer', 'legal hiring', 'general counsel', 'compliance officer', 'hiring legal staff', 'evaluate legal candidate', 'interview questions for lawyer', 'legal candidate scorecard', 'hire a compliance manager', or 'in-house counsel'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--role <GC|compliance-officer|legal-counsel|paralegal>] [--entity <name>] [--mode <screen|interview|scorecard>]"
---

# Legal Hiring Scorecard

Evaluate legal and compliance candidates for MBL portfolio companies. Legal hires are among the highest-leverage decisions in the company — a strong General Counsel or Compliance Officer can save multiples of their salary in avoided litigation, regulatory fines, and contract losses. A poor hire or a mismatched one creates risk while creating the false comfort of "having a lawyer." This skill provides structured evaluation for legal and compliance candidates.

## When to Use
- Evaluating candidates for General Counsel, Compliance Officer, or in-house legal roles
- Assessing whether a fractional GC arrangement is right vs. a full-time hire
- Creating the job description and competency requirements for a legal role
- Post-interview structured scoring before a hiring decision
- Annual performance review of existing legal/compliance staff

## Role Profiles

### General Counsel (MBL Partners)
**When needed:** Legal spend consistently above $300K/year; strategic transactions requiring constant legal support; M&A pace accelerating
**Candidate profile:** 8-12+ years experience; M&A, corporate, employment, and compliance background; PE firm or portfolio company experience; business judgment not just legal opinion
**Compensation range:** $200-350K total comp + performance incentive
**THRIVE alignment:** Truth (straight legal assessment), Hustle (fast turnaround), Value (cost control, risk mitigation)

### Compliance Officer (Allevio)
**When needed:** HIPAA incidents increasing; OCR audit received; healthcare growth creating compliance complexity
**Candidate profile:** 5-10 years healthcare compliance; HIPAA expertise; CMS/state licensing experience; CHC or CHPC certification preferred
**Compensation range:** $80-140K
**THRIVE alignment:** Integrity (protecting patient data), Truth (honest compliance assessment)

### Legal Operations Manager / Paralegal (All Entities)
**When needed:** Contract volume growing; outside counsel coordination consuming executive time
**Candidate profile:** 3-7 years legal operations or paralegal experience; contract management, matter management, billing review
**Compensation range:** $65-95K
**THRIVE alignment:** Hustle, Value (leverage legal spend)

## Evaluation Scorecard

### Section 1 — Legal Expertise (60 points)

| Competency | Points | Score | Evidence |
|-----------|--------|-------|---------|
| Core legal specialty match (HIPAA/M&A/employment per role) | 20 | /20 | |
| Regulatory and compliance experience | 15 | /15 | |
| Contract drafting and negotiation | 10 | /10 | |
| Litigation management (not necessarily litigator) | 10 | /10 | |
| Business and transactional experience | 5 | /5 | |

### Section 2 — Business Judgment (25 points)

| Competency | Points | Score | Evidence |
|-----------|--------|-------|---------|
| Communicates legal issues in business terms | 10 | /10 | |
| Can prioritize risk vs. theoretical compliance | 8 | /8 | |
| Has said "no" to a client/business with reasoning | 7 | /7 | |

### Section 3 — Operational Fit (15 points)

| Competency | Points | Score | Evidence |
|-----------|--------|-------|---------|
| Experience in PE-backed or growth company | 5 | /5 | |
| Wears many hats — not just a specialist | 5 | /5 | |
| Technology-forward (contract tools, compliance platforms) | 5 | /5 | |

**TOTAL: ___/100**

### THRIVE Alignment Interview Questions

| Value | Question |
|-------|---------|
| **Truth** | Tell me about a time you gave legal advice the business didn't want to hear. What happened? |
| **Hustle** | Describe a deal or transaction you closed under time pressure. What shortcuts did you take (if any) and do you regret them? |
| **Respect** | Describe how you work with non-lawyers to get compliance programs adopted without heavy-handedness. |
| **Integrity** | Tell me about a situation where you observed a potential ethics violation. How did you handle it? |
| **Value** | How do you measure your contribution to the business? What ROI metrics would you track? |
| **Enjoy** | What kind of legal work do you find most engaging? What would you avoid if you could? |

## Output Format

```markdown
# Legal Candidate Evaluation — <Role>
**Date:** <date> | **Candidate:** <name>
**Role:** <role> | **Entity:** <name>
**Interviewer:** Dr. John Lewis

---

## Candidate Summary

**Background:** <2-3 sentences>
**Years experience:** <N> | **Specialty:** <area>
**Bar admitted:** <states>
**Salary expectation:** $<amount>

---

## Scorecard Results

| Section | Points Available | Score | % |
|---------|----------------|-------|---|
| Legal Expertise | 60 | <N> | <N>% |
| Business Judgment | 25 | <N> | <N>% |
| Operational Fit | 15 | <N> | <N>% |
| **Total** | **100** | **<N>** | **<N>%** |

---

## THRIVE Alignment

| Value | Response Quality | Score (1-5) |
|-------|----------------|-----------|
| Truth | | |
| Hustle | | |
| Respect | | |
| Integrity | | |
| Value | | |
| Enjoy | | |
**THRIVE Total: /30**

---

## Key Strengths

1. <strength 1>
2. <strength 2>
3. <strength 3>

## Key Concerns

1. <concern 1>
2. <concern 2>

## Recommendation

**Advance to next round:** Yes / No / Maybe — explain
**Offer recommendation:** Yes / No / Conditional
**Suggested offer range:** $<amount>-$<amount>

---

## Dr. Lewis Sign-Off

All legal and compliance hires require Dr. Lewis approval.

_________________________________
Dr. John Lewis | Date: <date>
```

## Output Contract
- Business judgment always weighted heavily — a lawyer who can only say "no" without alternatives is not a fit for a growth company
- THRIVE filter always applied — a legal hire who fails THRIVE alignment is not a fit regardless of legal credentials
- Dr. Lewis sign-off always required for all legal and compliance hires — this is a non-delegable approval
- Fractional GC option always considered for lower spend levels — sometimes the right answer is not a full-time hire
- HITL required: Dr. Lewis reviews all candidates and approves hires; Matt Mathison approves General Counsel hire and all legal staff above $150K total comp; outside recruiters for GC search

## System Dependencies
- **Reads from:** Candidate resume, interview notes, reference check results (provided)
- **Writes to:** Candidate evaluation scorecard (for Dr. Lewis and Matt Mathison)
- **HITL Required:** Dr. Lewis reviews and approves; Matt Mathison approves GC and above threshold; HR processes offer

## Test Cases
1. **Golden path:** GC candidate evaluation → Legal expertise 48/60 (strong M&A, moderate HIPAA — will need to learn), Business judgment 22/25 (strong — gave business concrete "no with alternatives" example), Operational Fit 12/15 (PE experience, no compliance platform experience), THRIVE 25/30 (strong on Truth, Hustle, Integrity; Enjoy answer revealed preference for pure legal work vs. cross-functional); recommendation: advance — strong candidate, discuss compliance platform onboarding expectation
2. **Edge case:** Strong technical candidate but no PE/portfolio company experience → assess: will this candidate be able to function as a "business lawyer" in a fast-moving PE environment or will they over-lawyer everything? Look for evidence of adaptability and speed; consider 90-day trial arrangement if budget allows
3. **Adversarial:** Matt Mathison wants to hire a friend-of-friend without a structured evaluation → even for internal referrals, use the structured scorecard; if the candidate is strong, the scorecard will confirm it; if they're weak, the scorecard gives you an objective basis for not hiring; undocumented hiring decisions create discrimination claim risk

## Audit Log
Candidate scorecards retained for 2 years. Hiring decisions documented. Offer letters retained. Background check documentation retained.

## Deprecation
Retire when entity has an established HR and talent acquisition function with standardized legal hiring processes and competency frameworks.
