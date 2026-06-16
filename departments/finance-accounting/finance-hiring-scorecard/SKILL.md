---
name: finance-hiring-scorecard
description: "Score a finance candidate. Use when the user says 'hire a controller', 'finance hiring', 'controller scorecard', 'CFO candidate', 'bookkeeper hiring', 'finance candidate assessment', 'hire a bookkeeper', 'evaluate a finance hire', 'CPA hire', 'accounting hire', 'finance interview scorecard', or 'assess a finance candidate'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--role <bookkeeper|controller|cfo|cpa>] [--candidate <name>]"
---

# Finance Hiring Scorecard

Score a finance or accounting candidate against the criteria that matter for MBL portfolio company finance roles — bookkeeper, controller, or CFO. Finance hiring is high-stakes: a bad bookkeeper produces unreliable financials; a bad controller mismanages the close; a bad CFO makes wrong capital allocation decisions. The scorecard ensures the hire is evaluated on the right dimensions, not just whether they seemed "nice in the interview."

## When to Use
- Interviewing a finance or accounting candidate for a portfolio company
- Evaluating a CFO, controller, or bookkeeper referral
- Setting hiring criteria before posting a finance role
- Deciding between two finance finalists
- Matt Mathison asks about a finance hire at a portfolio company

## Finance Hiring Framework

```
Three finance role tiers — different criteria apply:

Bookkeeper ($35-$60K):
  Primary requirement: Attention to detail, reliability, QuickBooks proficiency
  Not required: Strategic thinking, investor relations, CFO-level analysis
  Risk of bad hire: Unreliable books, slow close, missed reconciliations
  Reference check priority: Follow-through, accuracy, shows up reliably

Controller ($70-$120K):
  Primary requirement: Close ownership, reconciliation rigor, compliance
  Also needed: Can manage up (communicates to Dr. Lewis) and down (manages bookkeeper)
  Risk of bad hire: Closed books that don't reconcile; missed deadlines
  Reference check priority: Close speed, accuracy under pressure, communication

CFO ($150K+):
  Primary requirement: Strategic finance — capital allocation, investor relations, growth
  Also needed: Board-level communication, fundraising, M&A
  Risk of bad hire: Poor capital allocation decisions, LP relationship damage
  Reference check priority: Judgment, strategic impact, investor trust
  
THRIVE hard filter (all levels): Integrity is non-negotiable.
A finance person who adjusts numbers to "look better," hides bad news,
or rationalizes misrepresentations is a catastrophic hire at any level.
```

## Output Format

```markdown
# Finance Hiring Scorecard — <Company Name>
**Role:** [Bookkeeper / Controller / CFO / CPA Advisor]
**Candidate:** <Name>
**Interviewer:** Dr. John Lewis | **Date:** <date>

---

## Scoring Summary

| Category | Max points | Score | Grade |
|---------|-----------|-------|-------|
| Technical Skills | 30 | /30 | |
| Execution & Reliability | 25 | /25 | |
| Communication | 20 | /20 | |
| THRIVE Cultural Fit (Integrity-weighted) | 25 | /25 | |
| **Total** | **100** | **/100** | |

**Hire / Strong hire / No hire / Not sure**

---

## Category 1: Technical Skills (30 points)

| Dimension | Max | Score | Evidence |
|-----------|-----|-------|---------|
| **[Bookkeeper]: QuickBooks proficiency — can demonstrate, not just claim** | 15 | /15 | [Ask: "Walk me through how you reconcile a bank account in QuickBooks." Hands-on demo preferred.] |
| **[Controller]: Close ownership — can explain their close process** | 15 | /15 | [Ask: "Walk me through your month-end close process. What day do you target? What's your biggest close risk?"] |
| **[CFO]: Capital allocation and strategic finance** | 15 | /15 | [Ask: "Walk me through a capital allocation decision you made. How did you frame the analysis? What was the outcome?"] |
| Tax and compliance knowledge (appropriate to level) | 8 | /8 | [Ask: "What tax filing obligations have you managed? Any state nexus issues?"] |
| Financial statement construction / review | 7 | /7 | [Ask: "If the balance sheet doesn't balance, what are the three most common causes?"] |

**Technical skills score: ____/30**

---

## Category 2: Execution & Reliability (25 points)

| Dimension | Max | Score | Evidence |
|-----------|-----|-------|---------|
| Meets deadlines consistently | 10 | /10 | [Ask: "Tell me about a time you had multiple competing deadlines. How did you manage them?"] |
| Creates and maintains processes, not just firefights | 8 | /8 | [Ask: "What process improvements have you implemented in prior roles?"] |
| References confirm reliability | 7 | /7 | [Reference: "On a scale of 1-10, how reliable is this person at meeting deadlines and commitments?"] |

**Execution score: ____/25**

---

## Category 3: Communication (20 points)

| Dimension | Max | Score | Evidence |
|-----------|-----|-------|---------|
| Can explain financial information to non-finance people | 8 | /8 | [Ask: "How would you explain what EBITDA is to a CEO who doesn't have a finance background?"] |
| Proactive — surfaces issues before they become surprises | 7 | /7 | [Ask: "Tell me about a time you identified a financial issue and had to communicate it to leadership. How did you approach it?"] |
| Written communication is clear (assess email / sample materials) | 5 | /5 | [Ask for a sample report or memo — review for clarity] |

**Communication score: ____/20**

---

## Category 4: THRIVE Cultural Fit (25 points, Integrity-weighted)

| Dimension | Max | Score | Evidence |
|-----------|-----|-------|---------|
| **Integrity (hard filter): Never adjusts numbers; forthright about bad news; no rationalization** | 12 | /12 | [Ask: "Tell me about a time you saw or were asked to do something that didn't feel right financially. How did you handle it?"] |
| Truth-first — comfortable delivering bad news to leadership | 7 | /7 | [Ask: "Tell me about a time the financials were significantly worse than expected. How did you present it?"] |
| Hustle — self-motivated; doesn't wait to be told what to look at | 6 | /6 | [Are they engaged in the interview? Do they ask insightful questions?] |

**THRIVE score: ____/25**

**⚠️ Integrity hard filter:** Any indication of adjusting numbers, "managing" results, or hiding bad news → automatic No hire regardless of total score.

---

## Interview Questions (Full Set)

**Technical:**
- "Walk me through your QuickBooks chart of accounts setup for a service business."
- "What are the three things that most commonly cause a delayed monthly close?"
- "What tax filings are due for a partnership with operations in two states?"

**Execution:**
- "What does your month-end close calendar look like? What day do you target to have financials ready?"
- "Tell me about the most complex reconciliation you've resolved."

**Communication:**
- "If revenue missed by 20%, how would you present that to the CEO and board?"
- "Tell me about a time you changed how leadership thought about a financial decision."

**Integrity:**
- "Have you ever been asked to do something financially that you weren't comfortable with? What happened?"
- "Tell me about a time you delivered a financial outcome that was significantly worse than expected."

---

## Reference Check Questions (Call 2-3 references)

1. "On a scale of 1-10, how reliable is this person at meeting deadlines and financial close timelines?"
2. "Have you ever had to question the accuracy of their financial work? Describe the situation."
3. "Have you ever seen them 'soften' a bad financial result or delay delivering bad news?"
4. "What type of financial work would you NOT trust them with?"
5. "Would you hire them again to manage your company's financials?"

---

## Hiring Recommendation

**Score: ____/100**
**Hire threshold:** ≥75 (with no Integrity disqualifier)
**Recommendation:** ✅ Strong Hire / ✅ Hire / ⚠️ Consider / ❌ No Hire
**Primary strength:** [What they do best]
**Primary concern:** [Most significant risk]
**Matt Mathison input needed:** [Yes — for controller or CFO roles / No — Dr. Lewis decision for bookkeeper]
```

## Output Contract
- Technical skills tested with specifics, not self-reported — a candidate who claims "QuickBooks expert" but can't explain a bank reconciliation process is not a QuickBooks expert; the interview must include at least one specific, demonstrable technical question per role level; test the skills, don't accept the label
- References always called before offer — the most important indicator of finance performance is what a prior manager says under direct questioning; self-reported excellence in finance is common; references who confirm close speed, accuracy, and integrity are the signal
- Integrity hard filter — automatic disqualifier — a finance person who has adjusted numbers, softened results, or rationalized misrepresentations is not a candidate regardless of technical skill; the harm a finance person with integrity problems can cause is exponentially higher than a technically weaker candidate who is honest
- Controller and CFO hires require Matt Mathison involvement — bookkeeper hires are Dr. Lewis decisions; controller and above require Matt Mathison to interview the finalist; CFO hires require Matt Mathison as primary decision-maker
- HITL required: Dr. Lewis conducts scoring for bookkeeper and controller; Matt Mathison interviews controller and CFO finalists; all offers at controller and above require Matt Mathison approval; no hire with Integrity disqualifier regardless of role level

## System Dependencies
- **Reads from:** Job description, candidate resume, reference responses, work samples (if requested)
- **Writes to:** Hiring scorecard (SharePoint/HR/<Company>/Hiring/Finance/); Matt Mathison brief for controller and CFO hires
- **HITL Required:** Dr. Lewis scores; Matt Mathison interviews controller/CFO; Matt Mathison approves controller/CFO offers; no hire with Integrity disqualifier

## Test Cases
1. **Golden path:** Allevio controller hire → Candidate with 8 years at regional CPA firm, now in industry; Technical: QB proficiency high (demonstrated bank rec process without prompting; knew exact QB keyboard shortcuts); close process: "5-7 day target; my biggest risk is payroll timing — I front-load payroll recording to Day 1"; Tax: aware of AZ TPT, familiar with 1099 filings; score 27/30; Execution: references confirm "never missed a deadline in 5 years"; self-directed process improvements cited (automated AP aging reports); score 22/25; Communication: clear explanation of EBITDA to non-finance person in interview; proactive — "I send a 1-page flash report to the CEO by Day 5 even before the close is complete"; score 18/20; THRIVE: Integrity: "I was once asked to move a large expense to next month to hit a budget target — I told the CFO I couldn't do that; there was tension but it was the right call"; forthright with bad news ✅; score 22/25; Total: 89/100; Recommendation: Strong Hire; Matt Mathison interviewed and agreed; offer extended
2. **Edge case:** A candidate scores 82/100 but the integrity question reveals they once "adjusted the timing of a revenue recognition entry to hit a quarterly target at a prior employer" → Integrity disqualifier; regardless of 82 total score: No Hire; document: "Candidate scored 82/100 but disclosed adjusting revenue timing to hit a quarterly target at prior employer. This is an Integrity disqualifier per MBL hiring standards. While the candidate presented it as a minor timing adjustment, revenue recognition manipulation — even when rationalized as immaterial — is the first step toward financial fraud. No hire."
3. **Adversarial:** A CEO says "I know this person personally and they're great — just hire them without the scorecard" → the scorecard applies to every hire; a personal relationship is not a substitute for technical vetting and reference checks; respond: "I understand you trust them personally, and that's valuable context. The scorecard will almost certainly confirm what you believe — and if it does, we hire with high confidence. The process also protects you legally: a documented hiring process with objective scoring is important if the hire ever goes wrong. Let me run the process; it'll take 3 hours and we'll have a clear recommendation by the end of the week."

## Audit Log
Hiring scorecards retained by candidate and date. Reference check notes retained. Integrity disqualifier decisions documented with specific evidence. Matt Mathison interview outcomes retained. All offers and rejections documented.

## Deprecation
Retire when portfolio companies have dedicated HR functions with finance-specific hiring frameworks that include skills testing, structured interviews, and reference check protocols that don't require Dr. Lewis's direct involvement in every finance hire.
