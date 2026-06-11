---
name: job-description-optimizer
description: "Write or optimize a job description to attract the right candidates. Use when the user says 'job description', 'job posting', 'write a JD', 'optimize this job description', 'job ad', 'improve this job posting', 'job listing', or 'help me write this role'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<role-title> [--entity <name>] [--level <entry|mid|senior|director>] [--tone <corporate|startup|conversational>]"
---

# Job Description Optimizer

Write or rewrite a job description that attracts qualified candidates and filters out unqualified ones. A bad JD either repels great candidates or attracts the wrong ones — both cost time and money.

## When to Use
- Writing a new job description from scratch
- Rewriting an existing JD that isn't attracting quality applicants
- Updating a role description after responsibilities have changed
- Standardizing JD format across the organization
- Before posting to job boards (see `job-posting-optimizer`)

## Job Description Principles

### Attract AND Filter
The JD has two jobs: attract qualified candidates and implicitly filter out unqualified ones. Over-inflating requirements filters too hard. Under-specifying attracts noise.

### Must-Haves vs. Nice-to-Haves
Be ruthless about what's truly required. Research shows women are less likely to apply unless they meet 100% of requirements; men apply at 60%. Separate must-haves from preferred to widen the qualified pool.

### Describe the Work, Not the Wish List
Lead with what the person will actually do, not a laundry list of traits. "You'll build..." beats "Ideal candidate has..."

### THRIVE Signal
The JD should signal the culture: Truth (honest about challenges), Hustle (fast-paced expectations), Respect (team-oriented), Value (impact of the role).

## JD Structure

### 1. Role Headline
1-2 sentences. What is this role and why does it matter?

### 2. What You'll Do (Responsibilities)
5-7 bullet points. Use action verbs. Lead with impact, not task.
- "Own the monthly close process for Allevio's $20M revenue line" not "Responsible for month-end close"

### 3. What You'll Bring (Requirements)
Split into Required and Preferred. Keep Required list tight (3-5 items).

### 4. What We Offer
Compensation range (if applicable), benefits highlights, work arrangement, growth opportunity. Specificity here increases application rate.

### 5. About the Company / Entity
2-3 sentences. Who we are, what we're building, why it matters.

## Common JD Anti-Patterns to Fix
| Anti-Pattern | Fix |
|-------------|-----|
| "Rockstar / Ninja / Wizard" | Use specific skill language instead |
| Requirements list > 10 items | Cut to 5 required + 3-5 preferred |
| "Must have X years experience" without reason | Specify the skill, not the years |
| No salary range | Add range — boosts applications 30%+ |
| Generic culture copy ("fast-paced, collaborative") | Specific true statements about the team |
| Passive voice throughout | Active voice, first-person plural ("we", "you'll") |

## Output Format

```markdown
# [Role Title] — [Entity Name]

## About the Role
<2-3 sentences: what this person owns, why it matters, who they work with>

## What You'll Do
- <High-impact responsibility using action verb>
- <Responsibility>
- <Responsibility>
- <Responsibility>
- <Responsibility>

## What You'll Bring

**Required:**
- <Must-have 1>
- <Must-have 2>
- <Must-have 3>

**Preferred (bonus points, not blockers):**
- <Nice to have 1>
- <Nice to have 2>

## What We Offer
**Compensation:** $<low>–$<high> base salary + [benefits summary]
**Location:** <Remote / Hybrid / On-site — City>
**Benefits:** [Key highlights — health, 401k, PTO, etc.]

## About [Entity]
<2-3 sentences about the company, mission, or what makes it interesting>

*[Entity] is an equal opportunity employer.*
```

## Output Contract
- Requirements split into Required vs. Preferred — never combined
- Salary range included when known (flag as missing if not provided)
- Action verbs lead every responsibility bullet
- JD length ≤ 600 words (long JDs reduce application rates)
- HITL required before posting — HR lead reviews for compliance and completeness

## System Dependencies
- **Reads from:** Role requirements (provided), req form from `job-requisition-writer`
- **Writes to:** Nothing (JD artifact for review)
- **HITL Required:** HR lead reviews for EEO compliance language and accuracy before posting

## Test Cases
1. **Golden path:** Operations manager role → clean JD with 6 responsibilities, 4 required qualifications, salary range, and company description
2. **Edge case:** Executive-level role where salary range isn't public → notes that omitting range reduces application rate, recommends adding range or "competitive + DOE"
3. **Adversarial:** JD with discriminatory language (age, family status references) → flags specific language, rewrites to EEO-compliant version

## Audit Log
JDs retained by role and version. EEO compliance review logged.

## Deprecation
Retire when HR platform includes AI JD generation with built-in compliance checking and job board distribution.
