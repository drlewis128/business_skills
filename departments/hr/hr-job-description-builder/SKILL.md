---
name: hr-job-description-builder
description: "Write a job description for an open role. Use when the user says 'write a job description', 'job posting', 'JD for this role', 'job description for', 'create a job listing', 'write a job posting', 'hiring for', 'post a job', 'job spec', 'role description', or 'position description'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--role <title>] [--level <entry|mid|senior|executive>] [--remote <yes|no|hybrid>]"
---

# HR Job Description Builder

Write a clear, honest, compelling job description for an open role at an MBL portfolio company. A good job description attracts the right candidates and repels the wrong ones — it's specific about the work, honest about the requirements, and compelling enough to make a strong candidate want to apply. A bad job description is either so generic that everyone applies (wasting screening time) or so intimidating that the best candidates self-select out.

## When to Use
- A role has been approved and needs to be posted
- An existing JD needs to be rewritten because it's attracting the wrong candidates
- Matt Mathison asks for a job posting for a new role
- A portfolio company CEO needs to post a role quickly
- A role description is needed for internal promotion or org chart documentation

## Job Description Framework

```
Effective job description structure:

1. THE HOOK (2-3 sentences): Why would a great candidate want this job?
   What's the opportunity? What will they build or own?
   Not: "XYZ Company is a leading provider of..."
   Yes: "Allevio is adding its first controller — you'll own the financial 
        operations for a 12-practice healthcare MSO scaling to 25 practices 
        this year. You'll build the close process, own compliance, and be 
        the finance infrastructure for our growth."

2. THE ROLE (what you'll do — 4-6 bullets):
   Specific outcomes, not vague responsibilities
   Not: "Responsible for financial operations"
   Yes: "Close the books by Day 7 each month and deliver management reports
        to the CEO and MBL Partners"

3. THE REQUIREMENTS (what we need — 5-7 bullets):
   Separate Must-have from Nice-to-have
   Must-haves are true gates: if a candidate doesn't have this, they can't do the job
   Nice-to-haves are preferences: good to have, not disqualifying

4. THE COMPANY (2-3 sentences):
   What does the company do? Why does it matter? What stage is it at?
   For portfolio companies: honest about being PE-backed, growth-stage, lean team

5. THE OFFER (compensation and benefits):
   Post the range — it saves everyone time and signals confidence
   No range = more applications from misaligned candidates, fewer from aligned ones
```

## Output Format

```markdown
# [Job Title] — [Company Name]
**Location:** [City, State / Remote / Hybrid — City, State]
**Type:** [Full-time / Part-time / Contract]
**Compensation:** $[X] – $[X]/year + [benefits summary]

---

## The opportunity

[2-3 sentences. What will this person build or own? Why is this a good moment to join? Be specific — "you'll be the first controller" or "you'll manage 8 direct reports" or "you'll own the product roadmap for our fastest-growing product line."]

---

## What you'll do

- [Specific outcome, not task list — "Own the monthly close process and deliver financials to the CEO by Day 7"]
- [Specific outcome]
- [Specific outcome]
- [Specific outcome]
- [Specific outcome]
- [Specific outcome — max 6 bullets; if you have more, the role isn't defined well]

---

## What we need

**Must have:**
- [True gate — candidate cannot do the job without this]
- [True gate]
- [True gate]
- [True gate — usually includes 1 THRIVE/values requirement: "You deliver bad news directly and promptly rather than softening or delaying it"]

**Nice to have:**
- [Preference — not a disqualifier]
- [Preference]
- [Preference]

---

## About [Company Name]

[2-3 sentences. What does the company do in plain English? Who does it serve? What stage is it at? For PE-backed portfolio companies: "We're a PE-backed [healthcare MSO / oil & gas operator / media company] with [X] employees. We're lean and growing — you'll have real ownership from Day 1."]

---

## Compensation and benefits

**Base salary:** $[X] – $[X]/year
**Bonus:** [% target / discretionary / none]
**Benefits:** [Health / Dental / Vision / 401K / PTO policy]
**Remote/hybrid:** [Policy]

*We post salary ranges because we think everyone's time — including yours — is too valuable to waste on compensation mismatches.*

---

## How to apply

[Email to / LinkedIn / Application form — keep it simple. No 10-step application for a bookkeeper role.]
```

## Output Contract
- Compensation range always included — the default for MBL portfolio company job postings is to include the salary range; this reduces the volume of applications from misaligned candidates and signals respect for candidates' time; if the range is truly TBD, state "competitive, commensurate with experience — let's have the conversation"; never post a JD with no compensation information if it can be helped
- Must-haves are actual gates — a job description with 12 "required" qualifications where 4 are nice-to-haves produces either a very small pool (if candidates take it literally) or a meaningless screen (if everyone applies anyway); every must-have must be a true gate: if a candidate doesn't have it, they cannot do the job; be honest about what's actually required vs. preferred
- The hook is specific — a generic company description at the top ("leading provider of..." "dynamic environment...") wastes the first impression; the hook should name the company, state the specific opportunity, and give a strong candidate a reason to keep reading in the first 2 sentences
- Values signal always present — every MBL job description should include at least one must-have that signals THRIVE values — particularly Integrity and Truth-first; for Finance roles this is explicit; for other roles it can be phrased as "You communicate problems early rather than hoping they resolve on their own" or "You'd rather be right than look right"
- HITL required: Dr. Lewis drafts; hiring manager reviews for accuracy (is the "what you'll do" actually what they'll do?); Matt Mathison reviews for executive and senior leadership hires; compensation range requires Dr. Lewis approval before publishing; postings go live only after Dr. Lewis sign-off

## System Dependencies
- **Reads from:** Approved headcount plan, compensation benchmarks, existing org chart, THRIVE values
- **Writes to:** Job description document (SharePoint/HR/<Company>/Recruiting/); LinkedIn job posting; Indeed posting
- **HITL Required:** Dr. Lewis drafts; hiring manager reviews; Matt Mathison approves executive JDs; compensation range requires Dr. Lewis sign-off before publishing

## Test Cases
1. **Golden path:** HIVE Partners Operations Manager JD → Hook: "HIVE Partners manages oil and gas operations in the Uinta Basin, Utah. We're looking for our first dedicated Operations Manager — you'll own production coordination, LOE tracking, and vendor relationships across our active wells. This is a hands-on role building the operational infrastructure for a growing PE-backed producer." What you'll do: 6 specific bullets (field coordination, LOE vs. budget, vendor management, production reporting, safety compliance, HSE tracking); Must-haves: 5+ years oil & gas ops, QuickBooks or equivalent, LOE variance experience, willing to be in the field 40% of time, communicates bad news immediately; Nice-to-have: Uinta Basin experience, Covercy familiarity; Comp: $85K-$105K + 10% target bonus; result: 22 applicants in 2 weeks, 8 qualified, 3 advanced to interview
2. **Edge case:** A CEO wants to post a job with a very wide comp range ($60K-$120K) to "keep options open" → a range that wide signals either that the role isn't defined or that the company is trying to lowball strong candidates; address directly: "A $60K-$120K range will attract a lot of candidates who assume they're worth $120K and disengage when they learn the reality is $70K. Let's define the role more precisely first — what level of experience does the business actually need? Then we can set a tighter range (±20%) that reflects the real budget."
3. **Adversarial:** A CEO wants to post a JD with 15 required qualifications including "10+ years experience with [very specific software] preferred" for a role with a $55K salary → flag this: "This JD has two problems: 15 requirements will eliminate most qualified candidates (most will see 8+ they don't meet and not apply), and the $55K salary won't attract someone with 10+ years of experience. Let me help you separate the true gates from preferences. For a $55K role, I'd expect 3-4 hard requirements and 4-6 nice-to-haves — what are the 3 things without which this person cannot do the job?"

## Audit Log
All job descriptions retained by role, company, and date. Posting dates and channels documented. JD versions tracked (if updated mid-search). Compensation ranges documented. Matt Mathison approvals retained for executive JDs.

## Deprecation
Retire when portfolio companies have HR managers who own job description creation with company-specific templates, approved compensation bands, and posting processes that don't require Dr. Lewis involvement in each new hire posting.
