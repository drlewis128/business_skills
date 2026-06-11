---
name: job-posting-optimizer
description: "Optimize a job posting for distribution across job boards. Use when the user says 'job posting', 'post this job', 'optimize for Indeed', 'job board posting', 'where to post this job', 'job distribution strategy', 'posting strategy', or 'get more applicants'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<role-title> [--entity <name>] [--location <city|remote>] [--budget <N>]"
---

# Job Posting Optimizer

Optimize and distribute job postings to maximize qualified applicant volume. A well-distributed posting on the right boards costs the same as a poorly-distributed one — and generates 3-5× the applicants.

## When to Use
- After job description is approved (see `job-description-optimizer`)
- Before opening on job boards
- When a posting has been live for 2+ weeks with insufficient applicants
- When applicant quality is poor (wrong people applying)
- Post-acquisition (establish posting strategy for a new entity's roles)

## Job Board Strategy by Role Type

### General Professional Roles (Finance, Operations, Admin)
| Board | Strength | Cost |
|-------|---------|------|
| **LinkedIn Jobs** | Professional network, high-quality candidates | Pay-per-click (~$5-15/click) |
| **Indeed** | Highest volume; cost-effective for non-specialized roles | Free + sponsored ($0.25-1.50/click) |
| **Glassdoor** | Candidates research companies here anyway | Bundled with Indeed |
| **ZipRecruiter** | Good distribution network | ~$299-499/month |

### Clinical / Healthcare (Allevio)
| Board | Strength | Cost |
|-------|---------|------|
| **Indeed Health** | Strong healthcare volume | Sponsored posts |
| **Health eCareers** | Specialized healthcare; quality candidates | Annual subscription |
| **Vivian Health** | Nursing and clinical staff | Specialized |
| **LinkedIn** | Credentialed professionals | Standard |

### Oil and Gas / Technical (HIVE)
| Board | Strength | Cost |
|-------|---------|------|
| **Indeed** | Strong blue-collar and technical | Standard |
| **Rigzone** | Oil and gas specific | Subscription |
| **Energy Jobline** | Upstream and midstream | Subscription |
| **LinkedIn** | For senior technical roles | Standard |

### Technology Roles
| Board | Strength | Cost |
|-------|---------|------|
| **LinkedIn** | Best for tech professionals | Standard |
| **Indeed** | Volume | Standard |
| **Built In** (local) | Tech community in major cities | Subscription |
| **AngelList / Wellfound** | Startups and growth companies | Free |
| **GitHub Jobs** | Software engineers specifically | Free |

## Posting Optimization Checklist

Before posting:
- [ ] Salary range included (required in CO, NY, WA, CA; boosts applicants everywhere)
- [ ] Location clearly stated (remote / hybrid / city)
- [ ] Job title is searchable (no internal jargon — "Analyst II" vs. "Financial Analyst")
- [ ] First paragraph hooks the reader (mission, impact, opportunity)
- [ ] Requirements are accurate (not inflated)
- [ ] Benefits highlights included
- [ ] Mobile-friendly formatting (most job board views are mobile)
- [ ] EEO statement at the bottom

## Applicant Tracking
From each source:
- Track applications by source (where did they find us?)
- Track screen-to-interview rate by source (which boards send qualified candidates?)
- Optimize spend toward highest-converting sources

## Output Format

```markdown
# Job Posting Strategy — <Role Title>
**Entity:** <entity> | **Location:** <location> | **Salary Range:** $<N>–$<N>
**Priority:** <hiring urgency — high/medium/low>

## Recommended Posting Plan

| Board | Justification | Est. Cost | Est. Applicants | Priority |
|-------|-------------|---------|----------------|---------|
| LinkedIn Jobs | Best for professional roles | ~$200/mo | 30-60 | P1 |
| Indeed (sponsored) | High volume, cost-effective | ~$100/mo | 80-150 | P1 |
| <Specialized board> | <Reason> | <Cost> | <Est.> | P2 |

**Total estimated monthly budget:** $<N>
**Total estimated monthly applicants:** <N>–<N>

## Posting Optimization Notes
- <Specific improvements recommended for this posting>

## Go-Live Checklist
- [ ] JD approved by HR and hiring manager
- [ ] Salary range confirmed and included
- [ ] ATS or email routing configured to receive applications
- [ ] EEO statement at bottom
- [ ] Posted links sent to hiring manager for sharing

## Applicant Tracking Setup
Source tracking: <how you'll know which board sent each applicant>
Review cadence: <how often hiring manager reviews new applicants>
```

## Output Contract
- Salary range always recommended for inclusion — and flagged as legally required in applicable states
- Specialized board recommendations always matched to role type
- Expected applicant volume and cost always estimated
- HITL required: HR lead approves posting plan and budget before going live; hiring manager confirms all postings are live

## System Dependencies
- **Reads from:** Approved JD from `job-description-optimizer`, budget, location data (provided)
- **Writes to:** Nothing (posting strategy for HITL review and execution)
- **HITL Required:** HR lead approves posting spend and go-live; candidate tracking method confirmed before launching

## Test Cases
1. **Golden path:** Clinical coordinator role in Phoenix for Allevio → healthcare-specific boards, Indeed as volume source, $300/month plan, salary range included
2. **Edge case:** Remote role that can be based anywhere → nationwide posting strategy, LinkedIn and Indeed as primaries, note that remote opens applicant pool significantly
3. **Adversarial:** Request to post job without salary range to "negotiate better" → recommends including range (legal in 4+ states, boosts applicants 30%+, filters poor-fit applicants out early)

## Audit Log
Posting records retained by role and entity. Applicant source tracking data retained for EEO applicant flow documentation.

## Deprecation
Retire when ATS includes integrated job board distribution with automated source tracking and spend optimization.
