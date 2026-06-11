---
name: it-training-planner
description: "Plan and track IT staff training and certifications. Use when the user says 'IT training', 'IT staff development', 'IT certification', 'train the IT team', 'IT skills development', 'IT learning plan', or 'upskill IT staff'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--staff <name>] [--focus <security|cloud|microsoft|networking|all>]"
---

# IT Training Planner

Plan and track IT staff training, certifications, and skill development. IT skills decay fast — a certification relevant 3 years ago may not cover current threats or platforms. This skill keeps the IT team current, aligned to the technology stack, and developing toward the next level of capability.

## When to Use
- Annual IT staff development planning
- New technology is being adopted (cloud migration, new security tool)
- IT staff member is preparing for a certification
- Performance review reveals skill gaps
- IT team is expected to take on new responsibilities

## Recommended Certifications by Role

| Role | Foundation | Advanced | MBL-Specific Priority |
|------|-----------|---------|---------------------|
| **IT Technician** | CompTIA A+, CompTIA Network+, Microsoft 365 Fundamentals (MS-900) | CompTIA Security+, ITIL 4 Foundation | Microsoft 365, Security+ |
| **IT Engineer** | CompTIA Security+, AZ-104 (Azure Admin) | AZ-500 (Azure Security), AWS SAA, CCNA | Microsoft 365 + Azure |
| **IT Manager** | ITIL 4 Practitioner, CompTIA Security+, AZ-104 | CISSP, PMP, CISM | Security + Project Management |
| **Director / CTO** | CISSP, CISM | Board-level cyber risk certifications | CISSP, Business acumen |

## Training Budget Benchmarks

| Staff Level | Annual Training Budget | Notes |
|------------|----------------------|-------|
| IT Technician | $1,000-$2,000/year | Online courses, 1 certification |
| IT Engineer | $2,000-$4,000/year | 1-2 certifications, 1 conference |
| IT Manager | $3,000-$6,000/year | 1-2 certifications, 1 conference, leadership development |
| Director | $5,000-$10,000/year | Strategic programs, industry events |

## Output Format

```markdown
# IT Training Plan — <Entity>
**Planning period:** <year> | **IT staff count:** <N>

---

## Staff Training Plans

### <IT Staff Name> — <Role>

**Current certifications:** <list>
**Skills assessment:** <Strong areas and gaps>

| Training Item | Type | Provider | Cost | Timeline | Priority |
|-------------|------|---------|------|---------|---------|
| CompTIA Security+ | Certification | CompTIA | $400 (exam) + $200 (course) | Q2 | High — security mindset required |
| Microsoft Entra ID (AZ-104) | Certification | Microsoft | $165 (exam) + $150 (course) | Q3 | High — core to MBL M365 stack |
| KnowBe4 Security Awareness Admin | Platform training | KnowBe4 | Included in subscription | Q1 | Medium |
| ITIL 4 Foundation | Certification | Axelos | $350 (exam) + $200 (course) | Q4 | Medium |

**Annual training budget:** $1,265 / $2,000 allocated

---

## Team Training Summary

| Staff | Current Certs | Training Q1 | Training Q2 | Training Q3 | Budget Used |
|-------|-------------|-----------|-----------|-----------|-----------|
| [Name] | CompTIA A+, Network+ | KnowBe4 admin | Security+ | AZ-104 | $1,265 |
| [Name] | AZ-104 | | CISSP prep | | $2,800 |
| **Total** | | | | | **$4,065** |

---

## Technology Stack Alignment

| MBL System | Team Proficiency | Gap | Training Action |
|-----------|----------------|-----|----------------|
| Microsoft 365 / Entra ID | 3/5 | Low — needs formal cert | AZ-104 for IT Engineer |
| Krista.ai (AI Orchestration) | 2/5 | High — new platform | Krista.ai admin training |
| AWS (cloud) | 2/5 | Medium | AWS Cloud Practitioner for IT Tech |
| Security (general) | 3/5 | Medium | Security+ for IT Technician |

---

## Quarterly Training Review

| Quarter | Planned Training | Status | Cost |
|---------|----------------|--------|------|
| Q1 | KnowBe4 admin, ITIL prep | ✅ Complete | $200 |
| Q2 | Security+ exam | 🔵 Scheduled | $400 |
| Q3 | AZ-104 | 🔵 Registered | $315 |
| Q4 | ITIL 4 Foundation exam | ⬜ Not started | $350 |
```

## Output Contract
- Training plan always aligned to the current technology stack — certification in obsolete tech is wasted investment
- Budget always tracked per person and in total — training is a real cost, not a "nice to do"
- Certifications always prioritized by technology dependency — if Krista.ai is the AI backbone, Krista.ai training is not optional
- HITL required: Dr. Lewis approves IT training budget; IT Manager owns individual development plans

## System Dependencies
- **Reads from:** Current IT staff certifications, technology stack, IT budget (provided)
- **Writes to:** Nothing (training plan for HITL review and IT budget)
- **HITL Required:** IT Manager approves individual training plans; Dr. Lewis approves any training expenditure > $2,000 per person per quarter; Finance includes training costs in IT budget

## Test Cases
1. **Golden path:** 2-person IT team annual plan → IT Tech: Security+ (Q2) + AZ-104 (Q3), $1,265 budget; IT Engineer: CISSP prep (Q2-Q4), $2,800 budget; total $4,065 within $5,000 IT training budget
2. **Edge case:** IT staff refuses training ("I already know enough") → documents the technology stack gaps, ties training to next-level responsibilities (AZ-104 is required before managing the Azure tenant), frames as career development not remediation
3. **Adversarial:** Finance cuts the IT training budget to $500 total → prioritizes security certifications (CompTIA Security+) above all others, uses free resources where possible (Microsoft Learn, YouTube, Coursera audits), documents the trade-off for Dr. Lewis

## Audit Log
Training plans retained by staff member and year. Certifications achieved documented. Budget vs. actual tracked.

## Deprecation
Retire when entity deploys an LMS (Learning Management System) or HR platform with IT-specific skill tracking, certification management, and budget integration.
