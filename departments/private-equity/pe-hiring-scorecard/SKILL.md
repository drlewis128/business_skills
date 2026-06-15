---
name: pe-hiring-scorecard
description: "Score candidates for PE firm roles at MBL Partners. Use when the user says 'hire for PE', 'PE analyst', 'PE associate', 'operations hire at MBL', 'portfolio operations hire', 'investment team hire', 'evaluate a PE candidate', 'PE hiring', or 'assess a candidate for the fund'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--role <analyst|associate|vp-investments|portfolio-ops|fund-ops>] [--candidate <name>]"
---

# PE Hiring Scorecard

Score and evaluate candidates for MBL Partners private equity roles — from investment analysts to portfolio operations professionals. PE hiring at a small fund requires candidates who can function across investment work (deal sourcing, diligence), portfolio management, and fund operations. Generalists who can do PE work with minimal hand-holding are far more valuable than specialists who need a large team around them.

## When to Use
- Evaluating a candidate for a PE analyst or associate role at MBL
- Hiring a portfolio operations professional (VP/Director level)
- Fund operations hire (CFO/controller for the fund)
- Dr. Lewis is evaluating a new team member to work alongside him
- Matt Mathison asks "what did you think of the candidate?"

## MBL PE Hiring Criteria

```
MBL hires for:
  Small fund mentality: Can do multiple jobs; doesn't need a large support team
  Investment judgment: Can identify a good deal and a bad deal
  Operational orientation: Has rolled up their sleeves in real businesses
  AI/Tech fluency: Comfortable with AI tools; curious about automation
  THRIVE alignment: Truth, Hustle, Respect, Integrity, Value, Enjoy

MBL does NOT hire:
  Prestige-obsessed: Has only worked at large brand-name firms; struggles without a team
  Theory-only: Can model but has never built anything
  Integrity concerns: Anything off in references or background check = hard pass
  THRIVE misalignment: Any THRIVE dimension (especially Integrity) fails = automatic disqualification
```

## Output Format

```markdown
# PE Hiring Scorecard — <Candidate Name>
**Date:** <date> | **Interviewer:** Dr. John Lewis
**Role:** <PE Analyst / Associate / VP Investments / Portfolio Operations>
**Interview round:** <Phone screen / First round / Final>

---

## Candidate Overview

| Item | Detail |
|------|--------|
| Name | <Name> |
| Current role | <Title>, <Company> |
| Years of PE experience | <N> years |
| Years of prior experience | <N> years (banking / consulting / operations) |
| Education | <Degree, School> |
| Source | <Recruiter / Referral / Direct> |

---

## Scorecard (100 points)

### Technical Skills (40 points)

| Criterion | Weight | Score (0-10) | Notes |
|-----------|--------|-------------|-------|
| Financial modeling (LBO, DCF, returns analysis) | 15 | /10 | |
| Due diligence capability (what to look for, how to structure) | 10 | /10 | |
| Portfolio company analysis (EBITDA bridge, variance analysis) | 10 | /10 | |
| Deal sourcing (how to find deals, source evaluation) | 5 | /10 | |
| **Technical subtotal** | **40** | **/40** | |

### Business Judgment (30 points)

| Criterion | Weight | Score (0-10) | Notes |
|-----------|--------|-------------|-------|
| Investment judgment (can they identify a good vs. bad deal?) | 15 | /10 | |
| Value creation thinking (operational improvement ideas, not just financial) | 10 | /10 | |
| Risk identification (do they proactively flag what could go wrong?) | 5 | /10 | |
| **Business judgment subtotal** | **30** | **/30** | |

### Operational Orientation (15 points)

| Criterion | Weight | Score (0-10) | Notes |
|-----------|--------|-------------|-------|
| Has done operational work (not just financial analysis) | 10 | /10 | |
| Comfortable at portfolio company level (not just fund level) | 5 | /10 | |
| **Operational orientation subtotal** | **15** | **/15** | |

### MBL Fit (15 points)

| Criterion | Weight | Score (0-10) | Notes |
|-----------|--------|-------------|-------|
| Small fund mentality (can operate independently) | 5 | /10 | |
| AI/Tech fluency (uses AI tools; curious about automation) | 5 | /10 | |
| THRIVE alignment (Integrity question is a hard disqualifier) | 5 | /10 | |
| **MBL fit subtotal** | **15** | **/15** | |

---

## Total Score: /100

| Score range | Rating | Recommendation |
|------------|--------|---------------|
| 90-100 | Exceptional | Strong hire |
| 80-89 | Strong | Hire with confidence |
| 70-79 | Good | Hire with noted gap to address |
| 60-69 | Acceptable | Conditional — need more info |
| < 60 | Below standard | Pass |

**Candidate total: ____/100 — [Exceptional / Strong / Good / Acceptable / Pass]**

---

## Key Interview Responses

### Investment Judgment Test
*"Walk me through a deal you've worked on — what was the investment thesis, and with hindsight, was it right or wrong?"*
**Response quality:** ✅ Strong (specific thesis, honest about what worked) / ⚠️ Vague / ❌ Poor

**Notes:** [What they said; what it reveals]

---

### Value Creation Test
*"A portfolio company has $1M EBITDA and you need to get it to $1.5M in 2 years. What are the top 3 things you'd do?"*
**Response quality:** ✅ Specific and operational / ⚠️ Financial-only / ❌ Generic

**Notes:** [What they said; quality of operational thinking vs. pure financial thinking]

---

### Small Fund Test
*"At MBL, you'd be one of two investment professionals. Describe a situation where you operated with minimal support and managed multiple responsibilities simultaneously."*
**Response quality:** ✅ Strong (specific, owns the autonomy) / ⚠️ Team-dependent / ❌ Struggled without team

**Notes:** [What they said; autonomy signals]

---

### THRIVE / Integrity Test
*"Tell me about a time you had to deliver bad news to a senior stakeholder — what happened and how did you handle it?"*
**Hard disqualifier:** Any response that involves concealment, blame-shifting, or avoiding the conversation is a disqualifier.
**Response quality:** ✅ Direct and honest / ⚠️ Hedged / ❌ Disqualifying

**Notes:** [What they said; truth and integrity signals]

---

### AI/Tech Fluency Check
*"How are you using AI tools in your current work? What tools? For what tasks?"*
**Response quality:** ✅ Actively using AI (Claude, Cursor, etc.) with specific examples / ⚠️ Aware but not using / ❌ Not engaged with AI

**Notes:** [What they said; signal for MBL's AI-forward approach]

---

## Reference Check Notes

**Reference 1:** [Name, Title, Company]
- "Would you re-hire this person?" ✅ Yes / ⚠️ With reservations / ❌ No
- Key signal: [Most important thing reference said]

**Reference 2:** [Name, Title, Company]
- "Would you re-hire this person?" ✅ Yes / ⚠️ With reservations / ❌ No
- Key signal: [Most important thing reference said]

**Reference 3:** [Name, Title, Company]
- "Would you re-hire this person?" ✅ Yes / ⚠️ With reservations / ❌ No
- Key signal: [Most important thing reference said]

---

## Hard Disqualifiers

- [ ] THRIVE integrity concern raised (interview or references) → **Auto-disqualify**
- [ ] Reference says "wouldn't re-hire" without strong qualification → **Auto-disqualify**
- [ ] Background check issue → **Auto-disqualify**
- [ ] No evidence of operational work — pure financial analyst only → **Flag for Matt Mathison**
- [ ] Zero AI tool awareness or resistance to AI → **Flag for Matt Mathison**

**Disqualifier status:** None / [Describe]

---

## Recommendation

**Hire / Pass / Continue to next round**

**Rationale:** [2-3 sentences — primary strengths, primary concern, clear recommendation]

**Matt Mathison discussion:** [What Dr. Lewis wants to flag for Matt's input before deciding]
```

## Output Contract
- THRIVE integrity check is a hard disqualifier — it is not a scored criterion at 5 points; it's a binary gate; a candidate who fails the integrity question is disqualified regardless of their total score
- AI fluency always assessed — MBL operates in an AI-first way; a hire who resists AI tools creates a capability gap and culture mismatch
- Small fund mentality always tested — the most dangerous PE hire for a small fund is a "brilliant specialist" who needs a team; this criterion is weighted and explicitly probed
- Reference check always included before offer — "would you re-hire?" is the only reference question that matters; anything other than an enthusiastic "yes" requires follow-up
- Matt Mathison review before offer — Dr. Lewis does not make final hire decisions alone; Matt Mathison must be consulted, especially for senior roles
- HITL required: Dr. Lewis interviews and scores; Matt Mathison reviews scorecard and discusses before extending offer; any THRIVE/integrity flag goes to Matt Mathison immediately; offer letter requires Matt Mathison signature

## System Dependencies
- **Reads from:** Candidate resume and materials, interview notes, reference check responses
- **Writes to:** Hiring scorecard (SharePoint/HR/Recruiting/<Role>/<Candidate>); hiring decision record
- **HITL Required:** Dr. Lewis interviews; Matt Mathison reviews; offer requires Matt Mathison; integrity flags → Matt Mathison immediately

## Test Cases
1. **Golden path:** PE associate candidate, 3 years at a middle-market PE firm → Technical: 85/100 (strong modeling, solid diligence; no LBO model ever built from scratch); Judgment: 28/30 (specific investment thesis; identified operational levers not just financial); Ops: 12/15 (1 portfolio company board observer role; hasn't directly run an ops improvement); MBL fit: 14/15 (Claude user, comfortable with autonomy, THRIVE clear); Total: 89/100 — Strong; Reference: "would hire again immediately" ×3; Recommendation: hire; concern: no deep ops experience — pair with Dr. Lewis on early value creation work
2. **Edge case:** Strong financial candidate but references reveal they're difficult to work with ("brilliant but abrasive") → the THRIVE "Respect" criterion is 5 points but the pattern across 2-3 references is a cultural flag that exceeds 5 points of impact; a difficult-to-work-with person in a small 2-3 person fund creates environment problems quickly; present the reference pattern honestly to Matt Mathison; do not rationalize around it because the financial skills are strong
3. **Adversarial:** A candidate claims to have built complex models but in the technical exercise provides a simple non-LBO analysis → the technical test is the most reliable signal; what's on the resume is what the candidate says they can do; what they produce in 2 hours under light pressure is what they actually do; score them on the exercise, not the resume; a candidate who overstates their capabilities on a resume is also signaling something about their integrity

## Audit Log
All scoring sheets retained. Interview notes retained. Reference check notes retained. Hire/pass decisions documented with rationale. Matt Mathison decisions recorded.

## Deprecation
Retire when MBL grows to a point where a dedicated people/HR function manages recruiting and hiring with formal ATS and structured interview processes.
