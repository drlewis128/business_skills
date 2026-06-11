---
name: employer-brand-advisor
description: "Advise on employer brand strategy to attract quality candidates. Use when the user says 'employer brand', 'employer branding', 'employment brand', 'why would someone work here', 'EVP', 'employee value proposition', 'how to attract talent', 'talent brand', or 'culture marketing'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--focus <EVP|channels|content|glassdoor>]"
---

# Employer Brand Advisor

Develop employer brand strategy and Employee Value Proposition (EVP) to attract and retain top talent. Companies with strong employer brands hire 50% more qualified applicants and pay 50% less per hire.

## When to Use
- Struggling to attract quality candidates despite competitive compensation
- Glassdoor ratings are poor (< 3.5) and affecting recruiting
- Preparing to scale hiring for a new initiative
- Post-acquisition (how does the new entity present itself as an employer?)
- Building a talent pipeline before opening reqs

## Employee Value Proposition (EVP) Framework

The EVP answers: "Why would a talented person choose to work here over somewhere else?"

### EVP Dimensions
| Dimension | Questions to Answer |
|---------|-------------------|
| **Mission / Purpose** | Why does this company exist? Does the work matter? |
| **Growth** | Can I grow my career here? Will I learn? |
| **Compensation** | Am I paid fairly and competitively? |
| **Culture** | What's it like to work here? (THRIVE values) |
| **Team** | Who will I work with? Will I be respected? |
| **Flexibility** | Can I do this work sustainably? |
| **Impact** | Will my work make a difference? |

### EVP Development Process
1. **Listen** — Survey current employees: what do they value most? What would they tell a friend?
2. **Audit** — What are we actually offering? Don't describe what we wish we offered.
3. **Differentiate** — What's unique about us vs. competitors for talent?
4. **Draft** — Write the EVP (1-2 sentences for each dimension)
5. **Validate** — Test with employees: does this sound like us?
6. **Activate** — Put the EVP into job postings, career page, social content, offer conversations

## MBL THRIVE-Based EVP Building Blocks

Leverage THRIVE as the foundation for employer brand:
- **Truth** — Honest about what the work is and isn't; no bait-and-switch
- **Hustle** — Fast-paced, execution-focused; if you like to move fast, you'll thrive here
- **Respect** — Team-oriented; people are treated with dignity at every level
- **Integrity** — We do what we say; leadership is consistent
- **Value** — Everyone's contribution matters; ROI thinking is rewarded
- **Enjoy** — We take the work seriously but enjoy the journey

## Employer Brand Channels

| Channel | Use When | Investment |
|---------|---------|-----------|
| Glassdoor responses | Always — reputation management | Time only |
| LinkedIn Company Page | Always — professional talent sees this first | Content creation |
| Careers page | Always — your owned channel | Website build |
| Employee testimonials | Strong culture signal for candidates | Employee time |
| Job description language | Every posting | Included in JD effort |
| Social media (LinkedIn, Instagram) | Culture content, team highlights | Content creation |
| Employee referral program | Best hires often come from referrals | Referral bonus |

## Glassdoor Management

Respond to every Glassdoor review — positive and negative:
- **Positive:** Thank genuinely; reinforce the specific value mentioned
- **Negative:** Acknowledge the feedback; don't be defensive; explain what's changing (if true)
- **Never:** Incentivize employees to post positive reviews (Glassdoor violation); post fake reviews; respond dismissively

## Output Format

```markdown
# Employer Brand Assessment — <Entity>
**Date:** <date>

## Current Brand Audit

**Glassdoor Rating:** <X>/5 (<N> reviews)
**LinkedIn Followers:** <N>
**Career Page:** Exists / Does not exist / Outdated
**Active EVP:** Defined / Informal / None

## EVP Draft

### Mission
"<One sentence on why the company exists and why it matters>"

### Growth
"<What career and skill growth looks like here>"

### Culture
"<What it's like to work here — grounded in THRIVE>"

### Compensation
"<Honest statement about comp philosophy>"

## Employer Brand Channel Recommendations

| Channel | Priority | Recommended Action | Timeline |
|---------|---------|------------------|---------|
| Glassdoor | High | Respond to all unanswered reviews | 2 weeks |
| Careers page | High | Build or update with EVP + team photos | 60 days |
| LinkedIn | Medium | Post 2x/month: culture, team stories | Ongoing |
| Employee referral | High | Launch referral program with $X bonus | 30 days |

## Quick Wins (0-30 Days)
1. Respond to all Glassdoor reviews
2. Add company culture section to job descriptions
3. Ask 3 happy employees for LinkedIn recommendations

## 90-Day Employer Brand Plan
<Sequenced actions with owners and timelines>
```

## Output Contract
- EVP always grounded in what's actually true — never aspirational fiction
- Glassdoor strategy always addresses responding to negative reviews — silence is worse than response
- Quick wins always included — employer brand takes time; give something actionable now
- HITL required: Matt Mathison and Dr. Lewis approve EVP before it's published externally

## System Dependencies
- **Reads from:** Current job postings, Glassdoor reviews, employee engagement data (provided)
- **Writes to:** Nothing (strategy document for HITL review)
- **HITL Required:** Dr. Lewis and Matt Mathison approve EVP and public-facing employer brand content before publication

## Test Cases
1. **Golden path:** Entity with no defined EVP and 3.2 Glassdoor rating → full EVP draft, Glassdoor response strategy, 90-day employer brand plan
2. **Edge case:** Small entity (< 15 employees) where elaborate employer brand is premature → simplified EVP and 3 high-impact actions (Glassdoor, career page, referral program)
3. **Adversarial:** Request to claim benefits or culture practices that don't exist → refuses to include inaccurate EVP elements, recommends aspirational framing only for things actively being built

## Audit Log
EVP versions retained by entity and date. Glassdoor response log maintained.

## Deprecation
Retire when employer branding platform (Phenom, Beamery, Clinch) handles EVP management, career site, and candidate engagement in one system.
