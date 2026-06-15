---
name: comms-hiring-scorecard
description: "Score candidates for corporate communications roles. Use when the user says 'hire a communications person', 'comms hire', 'PR hire', 'communications manager', 'VP communications', 'communications director', 'evaluate a PR candidate', 'hire for communications', 'communications role scorecard', or 'assess a communications candidate'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--role <manager|director|vp>] [--candidate <name>] [--entity <company>]"
---

# Comms Hiring Scorecard

Score and evaluate candidates for corporate communications roles — from communications managers to Directors or VPs of Communications at MBL portfolio companies. Communications is a function that is easy to hire wrong: a candidate with a PR agency background who's never worked inside a company will struggle with internal alignment; a candidate who's been an internal comms specialist won't know how to pitch a journalist. This scorecard assesses both.

## When to Use
- Hiring a communications manager, director, or VP at a portfolio company
- Evaluating whether to hire in-house vs. engage a PR agency
- Matt Mathison asks "what's the right communications hire for Allevio?"
- Dr. Lewis is building out a communications function and needs to assess candidates

## Communications Hiring Criteria

```
MBL/Portfolio company comms hires must be:
  Multi-functional: media relations + internal comms + executive comms (not just one)
  Writer first: every communications role requires strong writing; assess writing samples
  AI-fluent: comfortable drafting with AI tools; curious about automation in comms workflow
  Proactive: brings story ideas and crisis awareness without being prompted
  THRIVE-aligned: Integrity filter applies; Truth is core to effective communications
  
MBL/Portfolio company comms hires must NOT be:
  Agency-only background with no internal stakeholder experience
  Volume-focused (measures success by press release count)
  Crisis-naive (has never handled a negative story or difficult announcement)
  AI-resistant (not comfortable with AI writing tools)
```

## Output Format

```markdown
# Communications Hiring Scorecard — <Candidate Name>
**Date:** <date> | **Interviewer:** Dr. John Lewis
**Role:** <Communications Manager / Director / VP>
**Entity:** <Company> | **Interview round:** <Phone screen / First / Final>

---

## Candidate Overview

| Item | Detail |
|------|--------|
| Name | <Name> |
| Current role | <Title>, <Company> |
| Years of in-house experience | <N> years |
| Years of agency experience | <N> years |
| Relevant industry experience | <Healthcare / Energy / Media / PE / General> |
| Source | <Recruiter / Referral / Direct> |

---

## Scorecard (100 points)

### Writing and Storytelling (35 points)

| Criterion | Weight | Score (0-10) | Notes |
|-----------|--------|-------------|-------|
| Writing quality (assessed via samples or live test) | 15 | /10 | |
| Media pitch writing (can they write a compelling pitch?) | 10 | /10 | |
| Executive and internal communications writing | 10 | /10 | |
| **Writing subtotal** | **35** | **/35** | |

### Media Relations (25 points)

| Criterion | Weight | Score (0-10) | Notes |
|-----------|--------|-------------|-------|
| Media relationship quality (who do they know?) | 10 | /10 | |
| Media strategy (can they build a coverage plan?) | 10 | /10 | |
| Crisis communications experience (handled negative coverage?) | 5 | /10 | |
| **Media subtotal** | **25** | **/25** | |

### Internal and Executive Communications (20 points)

| Criterion | Weight | Score (0-10) | Notes |
|-----------|--------|-------------|-------|
| Executive communications support experience | 10 | /10 | |
| Internal communications planning and execution | 10 | /10 | |
| **Internal comms subtotal** | **20** | **/20** | |

### MBL Fit (20 points)

| Criterion | Weight | Score (0-10) | Notes |
|-----------|--------|-------------|-------|
| AI/tool fluency (uses AI for drafting; comfortable with automation) | 10 | /10 | |
| THRIVE alignment (Integrity filter) | 5 | /10 | |
| Proactive storytelling instinct (does ideas come naturally?) | 5 | /10 | |
| **MBL fit subtotal** | **20** | **/20** | |

---

## Total Score: /100

| Score range | Rating | Recommendation |
|------------|--------|---------------|
| 85-100 | Exceptional | Strong hire |
| 70-84 | Strong | Hire with confidence |
| 55-69 | Adequate | Hire with noted gaps to address |
| 40-54 | Below standard | Pass |
| <40 | Unqualified | Pass |

**Candidate total: ____/100 — [Rating]**

---

## Key Interview Questions

### Writing Test
*Ask them to draft a media pitch or short press statement on the spot (15 minutes):*
**Quality:** ✅ Strong — natural writer / ⚠️ Adequate — needs polish / ❌ Weak — cannot write under pressure
**Notes:** [What they produced; what it revealed]

### Media Relations Test
*"Name three journalists who cover [industry] who you have a relationship with. How did you build those relationships?"*
**Quality:** ✅ Specific names + stories / ⚠️ Vague / ❌ No relevant relationships
**Notes:**

### Crisis Test
*"Tell me about a time you managed a negative news story or a public-facing crisis. What happened and how did you handle it?"*
**Quality:** ✅ Specific, handled well, honest about what they'd change / ⚠️ Vague / ❌ No crisis experience
**Notes:**

### AI/Tool Test
*"How are you using AI tools in your communications work today? What specifically?"*
**Quality:** ✅ Active user with specific examples (Claude, Jasper, etc.) / ⚠️ Aware but not using / ❌ Not engaged
**Notes:**

### THRIVE / Integrity Test
*"Tell me about a situation where you had to communicate bad news publicly or internally. How did you handle it?"*
**Hard disqualifier:** Any response that involves spin, cover-up, or information suppression
**Quality:** ✅ Honest, direct, owned the communication / ⚠️ Hedged / ❌ Disqualifying
**Notes:**

---

## Hard Disqualifiers

- [ ] THRIVE integrity concern (interview or references) → **Auto-disqualify**
- [ ] Can't write under pressure (failed live writing test) → **Auto-disqualify**
- [ ] No crisis experience AND no awareness of crisis protocols → **Flag for discussion**
- [ ] Zero AI tool engagement or resistance → **Flag for Dr. Lewis / Matt Mathison**
- [ ] Agency-only background with demonstrated inability to work with internal stakeholders → **Flag**

---

## Recommendation

**Hire / Pass / Continue to next round**

**Rationale:** [2-3 sentences — primary strengths, primary concern, clear recommendation]

**Matt Mathison action:** [What needs Matt Mathison's input before deciding]
```

## Output Contract
- Writing test is always live — reviewing a polished portfolio only shows what the candidate produced with unlimited time; a 15-minute live writing test shows what they produce under realistic conditions; this is the most important assessment
- THRIVE integrity is a hard disqualifier — a communications professional whose instinct is to spin, suppress, or mislead is a liability regardless of their media relationships; the function requires a commitment to truth-first communication
- AI fluency is mandatory — the communications function at MBL operates with AI tools; a candidate who won't use AI creates a workflow gap and signals resistance to MBL's operating model
- Matt Mathison review before offer — Dr. Lewis does not make final hire decisions alone for a VP-level communications role; Matt Mathison's view matters
- HITL required: Dr. Lewis interviews and scores; Matt Mathison reviews for VP-level roles; offer requires Matt Mathison approval; integrity flags → Matt Mathison immediately

## System Dependencies
- **Reads from:** Candidate resume, writing samples, interview notes, reference check responses
- **Writes to:** Hiring scorecard (SharePoint/HR/Recruiting/<Role>/<Candidate>); hiring decision record
- **HITL Required:** Dr. Lewis interviews; Matt Mathison reviews VP-level hires; offer requires Matt Mathison; integrity flags escalated immediately

## Test Cases
1. **Golden path:** Communications Manager candidate for Allevio → Writing: 33/35 (strong pitch, clear crisis statement); Media: 21/25 (2 solid healthcare reporter relationships, one crisis handled well); Internal: 18/20 (supported CEO communications at prior healthcare company); MBL fit: 18/20 (Claude user, strong THRIVE alignment, proactive with 3 story ideas in the interview); Total: 90/100 — Exceptional; Reference: "would hire immediately" ×3; Recommendation: offer
2. **Edge case:** Strong media relations candidate with great relationships but poor writing (8/35 on writing) → writing is the foundation of communications; strong relationships are valuable but they can't compensate for poor writing at the management level; media relationships can be built; writing fundamentals cannot be taught to an adult professional who doesn't have them; pass with a specific note about the gap
3. **Adversarial:** A candidate claims impressive media relationships but when pressed for specifics, can't name a single journalist they've placed a story with in the past 12 months → this reveals that the relationships are not active; media relationships decay fast in a field where journalists change beats frequently; relationships that haven't been used in 12 months are introductions, not relationships; downgrade the media relations score significantly

## Audit Log
All scoring sheets retained. Interview notes retained. Live writing test output retained. Reference check notes retained. Hire/pass decisions documented. Matt Mathison approvals recorded.

## Deprecation
Retire when MBL Partners or portfolio companies have HR functions managing communications recruiting with formal processes.
