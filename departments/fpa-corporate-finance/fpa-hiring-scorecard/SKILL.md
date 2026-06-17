---
name: fpa-hiring-scorecard
description: "Evaluate FP&A and finance role candidates using a structured financial scorecard. Use when the user says 'FP&A hiring', 'finance hiring', 'hire a CFO', 'hire an FP&A analyst', 'financial analyst hiring', 'controller hiring', 'finance candidate evaluation', 'interview scorecard', 'finance hire scorecard', 'evaluate finance candidates', 'CFO evaluation', 'hire finance staff', 'finance talent', 'financial candidate', 'who should we hire', 'FP&A candidate', 'finance role', 'controller candidate', 'evaluate the candidates', or 'financial hire decision'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--role <cfo|controller|fpa-analyst|bookkeeper>] [--entity <company name>] [--action <evaluate|compare|recommend>]"
---

# FP&A Hiring Scorecard

Evaluate finance and FP&A candidates using a structured scorecard — ensuring that the MBL portfolio companies hire finance talent that matches their stage, culture, and technical requirements. Hiring the wrong CFO or controller is one of the most expensive mistakes a PE portfolio company can make: the wrong person can damage banking relationships, produce unreliable financials, miss critical reporting deadlines, and undermine the exit process. Dr. Lewis advises on finance hiring for all portfolio companies and evaluates finalists against the structured scorecard before a hiring recommendation is made to Matt Mathison.

## When to Use
- A portfolio company is ready to hire its first finance leader (CFO, VP Finance, Controller)
- An existing finance person is departing and a replacement is needed
- A portfolio company has grown to a complexity that requires a dedicated FP&A resource
- Matt Mathison asks Dr. Lewis to evaluate finance candidates
- Dr. Lewis is helping onboard a new finance hire (what they need to do in the first 90 days)

## Hiring Scorecard Framework

```
FINANCE ROLE TAXONOMY BY STAGE:

  Stage 1 — <$1M Revenue (Allevio early stage; HIVE early; Column6 early):
    Role needed: Part-time bookkeeper + Dr. Lewis as fractional CFO
    Skills: QuickBooks data entry; bank reconciliation; payroll processing
    Hiring criteria: Reliable, detail-oriented; certification or associate's degree in accounting; QBO experience
    Cost: $25-45K salary (part-time) or $1-2K/month bookkeeper contractor
    
  Stage 2 — $1-5M Revenue (current portfolio companies):
    Role needed: Full-time controller or senior accountant + Dr. Lewis as fractional CFO
    Skills: Full-charge bookkeeping; month-end close; QuickBooks Pro/Online; payroll; AP/AR management
    Nice to have: Industry-specific knowledge (healthcare billing for Allevio; O&G accounting for HIVE)
    Cost: $55-80K salary fully-loaded; $65-95K with recruiting fee
    
  Stage 3 — $5-15M Revenue (growth stage; likely 1-2 portfolio companies in 3-5 years):
    Role needed: CFO or VP Finance (replacing fractional with full-time)
    Skills: Full GAAP financials; bank relationship management; budget and forecast; board reporting; deal support
    Differentiators: PE experience preferred; understanding of EBITDA-driven management; clean audit track record
    Cost: $120-180K base salary fully-loaded; $140-220K with recruiting fee + annual bonus
    
  Stage 4 — $15M+ Revenue / Exit preparation:
    Role needed: Experienced CFO with exit transaction experience
    Skills: Investment banker interaction; LP reporting; due diligence; purchase price allocation
    Differentiators: M&A experience; banker relationships; quality of earnings understanding; PE sophistication
    Cost: $180-250K base + bonus; executive recruiting fee

SCORECARD DIMENSIONS (for CFO and Controller roles):

  Technical Skills (0-30 points):
    GAAP accounting fundamentals (0-10): Can they prepare and explain financial statements?
    Financial modeling (0-8): Excel proficiency; driver-based forecasting; variance analysis
    Industry knowledge (0-7): Relevant industry experience (healthcare/O&G/media)?
    Systems proficiency (0-5): QuickBooks experience; relevant industry systems
    
  FP&A and Strategic Finance (0-25 points):
    Budgeting and forecasting (0-10): Have they built and managed an annual budget process?
    Board reporting (0-8): Have they prepared board financial packages?
    Analytical thinking (0-7): Can they identify root causes of variances and explain them clearly?
    
  Character and Judgment (0-25 points):
    Integrity and truth-telling (0-10): Do they surface bad news clearly? No sugarcoating?
    Judgment under pressure (0-8): Have they handled a financial crisis? What did they do?
    Ownership mentality (0-7): Do they own the outcome or explain why it wasn't their fault?
    
  Culture and Communication (0-20 points):
    Executive communication (0-8): Can they communicate financial results in plain language?
    PE / investor mindset (0-7): Do they understand EBITDA management, MOIC, exit multiples?
    Speed and decisiveness (0-5): Do they move fast and decide, or do they hedge and delay?
    
  TOTAL: 100 points
    85-100: Strong hire — exceptional candidate; Dr. Lewis recommends strongly
    70-84: Good hire — solid candidate with one or two development areas
    55-69: Conditional — acceptable if the weaker areas are not critical for this specific role
    <55: Do not hire — meaningful gap in skills, character, or fit
    
  CHARACTER IS NON-NEGOTIABLE:
    If a candidate scores below 7/10 on integrity/truth-telling: Do not hire regardless of total score
    A CFO who sugarcoats results is more dangerous than one who makes the occasional analytical error
    An error in the model can be fixed; an error in judgment about what to tell the CEO and Matt Mathison cannot be easily fixed
```

## Output Format

```markdown
# Finance Hiring Scorecard — [Candidate Name]
**Role:** [CFO / Controller / FP&A Analyst] | **Entity:** [Company] | **Date:** [Date]
**Interviewer:** Dr. Lewis | **Decision required from:** [CEO + Matt Mathison for CFO; CEO for Controller]

---

## Scorecard Summary

| Dimension | Weight | Score | Notes |
|-----------|--------|-------|-------|
| Technical Skills | 30 | [X]/30 | [One-line finding] |
| FP&A / Strategic Finance | 25 | [X]/25 | [One-line finding] |
| Character / Judgment | 25 | [X]/25 | [One-line finding] |
| Culture / Communication | 20 | [X]/20 | [One-line finding] |
| **Total** | **100** | **[X]/100** | |

**Grade:** Strong / Good / Conditional / Do Not Hire

---

## Detailed Notes

**Technical Skills:** [Specific observations from interview — what they demonstrated, what was missing]

**FP&A / Strategic Finance:** [Specific observations — how they described their budgeting process, board reporting experience]

**Character / Judgment:** [Most important section — how did they handle the integrity and bad-news questions?]

**Culture / Communication:** [How did they communicate? Could Matt Mathison and the CEO work with this person?]

---

## Strengths

1. [Specific, observable strength with example from interview]
2. [Specific, observable strength]
3. [Specific, observable strength]

---

## Concerns

1. [Specific concern — not a generalization; a specific gap or pattern observed]
2. [Specific concern]

---

## Recommendation

**[HIRE / CONDITIONAL / DO NOT HIRE]** — [One to two sentence rationale]

**Compensation:** Proposed offer $[X]K base + [description of bonus / equity] — within market range (see fpa-headcount-cost-modeler for fully-loaded cost)
**Approval required:** CEO + [Matt Mathison for CFO / Dr. Lewis for Controller or above $75K]
```

## Output Contract
- Character scores are not weighted equally — on the scorecard, character/judgment is 25 points; in reality, it is a gate: a candidate who scores below 7/10 on integrity does not get hired regardless of their technical score; a technically excellent CFO who manages up instead of speaking truth is a liability; Dr. Lewis evaluates character directly in the interview: "Tell me about a time you had to deliver very bad news to the CEO or the board — what did you say and how did they react?" and "Tell me about a time you disagreed with the CEO about the financial results — what happened?"; the answer reveals character; Dr. Lewis will not recommend a candidate who gives evasive answers to these questions
- Interview questions are behavioral, not hypothetical — "what would you do if..." questions allow candidates to give the textbook answer; "tell me about a time when..." questions reveal what they actually did; Dr. Lewis uses behavioral interviewing for all key dimensions; for the integrity question, for the crisis management question, and for the executive communication question; a candidate who can describe a specific incident clearly (what happened, what they did, what the outcome was) is more credible than one who speaks in generalities
- The score is a recommendation, not a decision — the CEO makes the hiring decision for the controller role; Matt Mathison approves the CFO hire; Dr. Lewis provides the scorecard and a recommendation; if the CEO wants to hire a candidate Dr. Lewis has scored "Do Not Hire" (e.g., below 55 points), Dr. Lewis states the specific concerns directly and clearly (not politely softened), then respects the CEO's decision while documenting his objection; Dr. Lewis does not implement a veto, but he does surface concerns with precision
- HITL required: Dr. Lewis interviews and scores finalists; CEO makes the hiring decision for all roles; Matt Mathison approves CFO and VP Finance hires; compensation offers >$75K require Matt Mathison approval per the approval matrix; Dr. Lewis does not extend job offers — that is the CEO's communication; Dr. Lewis provides the financial modeling of the fully-loaded cost and the scorecard; the CEO and Matt Mathison decide

## System Dependencies
- **Reads from:** Job description (what skills and experience are required for the specific role); fpa-headcount-cost-modeler (fully-loaded compensation cost modeling — to confirm the offer is within the approved budget); compensation benchmarks (market salary data for the role, location, and company stage); prior-period financial model (to understand the technical complexity the candidate will face); current finance team structure (who the hire will work with or manage)
- **Writes to:** Hiring scorecard (SharePoint/Finance/MBL/Hiring/[Candidate]_[Role]_Scorecard.pdf); hiring recommendation memo to CEO and Matt Mathison; compensation offer financial model (fully-loaded cost for the approval); new hire 90-day plan (after the hire is made — what should the new finance person accomplish in their first 90 days to be effective)
- **HITL Required:** Dr. Lewis interviews and scores; CEO makes the hiring decision; Matt Mathison approves CFO and VP Finance hires; all finance hires with compensation >$75K require Matt Mathison's approval; Dr. Lewis does not extend offers, negotiate compensation directly, or send rejection communications — those are the CEO's actions

## Test Cases
1. **Golden path:** Allevio is hiring its first full-time controller ($72K base) → Dr. Lewis interviews 3 finalists; Candidate A: GAAP 9/10 (CPA; 5 years public accounting); FP&A 7/8 (built a budget but limited forecasting); Character 22/25 (strong integrity answers; one weak spot on communication under pressure); Culture 16/20 (PE naive but smart); Total: 85/100 — Strong; Candidate B: GAAP 7/10; FP&A 5/8; Character 18/25 (evasive on the bad news question — "I always try to present things positively"); Culture 17/20; Total: 72/100 — but character concern; Dr. Lewis recommendation: "Candidate A at 85/100. Candidate B's evasive response to the bad news question is a concern — 'presenting things positively' is not what we need in a finance role; we need accurate and timely reporting. I recommend Candidate A with a strong preference. Compensation of $72K base + standard benefits is within the approved range ($55-80K for this stage). CEO makes the hire decision; at $72K, Dr. Lewis approval is required per the matrix — I approve. CEO executes the offer."
2. **Edge case:** HIVE needs a controller with oil and gas accounting experience; the best local candidate has strong GAAP skills but no O&G experience → Dr. Lewis evaluates: Technical 24/30 (strong GAAP, weak O&G — scored 6/7 on industry knowledge); rest of scorecard 70/70; Total 94/100 but for the O&G knowledge gap; Dr. Lewis recommendation: "This candidate is technically strong with excellent character. The O&G knowledge gap is real but trainable: O&G accounting is a specialty but not rocket science — production accounting, LOE allocation, and Covercy integration can be learned in 60-90 days with the right guidance. I will personally brief the new hire in the first month on the HIVE-specific accounting requirements (production statements, LOE reconciliation, WTI pricing). The character and GAAP fundamentals are what matter most. I recommend hiring." CEO and Matt Mathison agree; hire is made with Dr. Lewis onboarding commitment
3. **Adversarial:** The CEO of Column6 has already offered the CFO role to their personal acquaintance before Dr. Lewis could interview the candidate → Dr. Lewis requests a post-offer interview: "I understand the offer is out. Before we onboard, I'd like to meet with [Name] — not to reverse the decision, but to understand their background so I can set up the right onboarding plan and ensure we're aligned on what 'month 1' looks like for the CFO. In 45 minutes I can also confirm whether there are any concerns I should flag to you before the start date." If the interview reveals a character concern (integrity issue), Dr. Lewis reports directly to the CEO and Matt Mathison — not to reverse the hire (the offer is made) but to ensure they are aware; Dr. Lewis documents the concern and builds the onboarding plan to surface any issues quickly. "The offer is made and I respect the process. Here's what I'll do: build a 90-day plan that includes specific financial deliverables (month-end close, variance analysis) so we can assess quickly whether [Name] is performing to the standard. If there are concerns at Day 30, we'll address them early."

## Audit Log
All interview scorecards retained by candidate and date. Hiring recommendations retained (accepted and rejected). Compensation offer financial models retained. 90-day onboarding plans retained. Post-90-day performance check retained (did the hire perform as expected?). Any failed hires documented with root cause (hiring scorecard vs. actual outcome).

## Deprecation
Retire when MBL Partners has an HR function or talent acquisition capability that owns the structured interview process — with Dr. Lewis reviewing the technical and character scorecard for all finance roles and Matt Mathison approving CFO and VP Finance hires.
