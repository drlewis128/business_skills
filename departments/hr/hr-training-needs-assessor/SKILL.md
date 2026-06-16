---
name: hr-training-needs-assessor
description: "Assess training and development needs for a team or company. Use when the user says 'training needs', 'skills gaps', 'what training do we need', 'learning needs', 'development gaps', 'skill assessment', 'training plan', 'assess skills', 'upskill the team', 'team capability gaps', 'what should we train on', 'capability assessment', or 'skills assessment'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--department <dept or all>] [--trigger <annual|role-change|new-initiative>]"
---

# HR Training Needs Assessor

Assess training and development needs for MBL portfolio company teams — identifying capability gaps between what employees need to know and what they currently know. Training investment that isn't anchored in a real gap analysis is wasted: employees sit through training on topics they already know, or skip the skills they actually need. This assessment surfaces the specific gaps, prioritizes by business impact, and produces a training plan that's worth investing in.

## When to Use
- Annually — before the L&D budget is set for the coming year
- When a new initiative or system requires new skills (e.g., launching a new billing system at Allevio)
- When performance reviews reveal a skill gap pattern across multiple employees
- When turnover is high in a specific role — is poor training a contributing factor?
- Matt Mathison asks "are our teams equipped to execute the strategy we're planning?"

## Training Needs Assessment Framework

```
Three-level needs analysis:

1. ORGANIZATIONAL LEVEL: What capabilities does the company need to succeed?
   → Strategic initiatives requiring new skills
   → Compliance requirements (HIPAA, OSHA, licensing)
   → Technology changes (new systems requiring training)

2. ROLE LEVEL: What does each role need to do well to perform?
   → Core competencies for the role
   → Current performance data: where are people underperforming?
   → Manager input: what skills are missing that are affecting output?

3. INDIVIDUAL LEVEL: What does each person need to develop?
   → Performance review development goals
   → 90-day review development areas
   → Career conversations: what does this person want to learn?

Gap = Role requirement — Current capability
Priority = Gap × Business impact of the gap
```

## Output Format

```markdown
# Training Needs Assessment — <Company Name>
**Department(s):** [All / Specific] | **Period:** [Year]
**Prepared by:** Dr. John Lewis | **Date:** <Date>

---

## Organizational Training Priorities

| Training need | Driver | Required by | Priority |
|--------------|--------|-----------|---------|
| [HIPAA Privacy & Security] | Regulatory requirement | All Allevio staff annually | 🔴 Required |
| [QuickBooks Advanced] | New system rollout | Finance team | 🔴 Blocking operations |
| [Manager fundamentals] | Expansion — new managers needed | New managers | 🟡 Important |
| [Financial literacy] | Decision quality — non-finance managers] | Dept heads | 🟢 Development |

---

## Role-Level Gap Analysis

| Role | Required skills | Current capability | Gap | Training priority |
|------|----------------|------------------|-----|------------------|
| Controller | Close process, QB Advanced, Financial reporting | QB proficient, close strong; reporting developing | Financial reporting | 🟡 Medium |
| Practice Manager (Allevio) | HIPAA compliance, patient scheduling, LOE tracking | HIPAA training outdated; scheduling proficient | HIPAA recertification | 🔴 Required |
| Operations Coordinator (HIVE) | LOE tracking, vendor management, field safety | Vendor management developing | Vendor negotiation basics | 🟢 Development |

---

## Individual Development Needs (from performance reviews / 90-day reviews)

| Employee | Development area | Source | Priority |
|---------|----------------|--------|---------|
| [Name] | [Skill] | [90-day review: "communicates reactively"] | 🟡 |
| [Name] | [Skill] | [Performance review development goal] | |
| [Name] | [Skill] | | |

---

## Training Recommendations

| Training | Audience | Format | Cost est. | Timing | ROI rationale |
|---------|---------|--------|----------|--------|--------------|
| HIPAA Annual Recertification | All Allevio staff | Online — [KnowBe4 / Relias] | $[X]/employee | Q1 — before Feb 28 | Regulatory compliance; non-compliance risk far exceeds cost |
| QuickBooks Advanced | Finance team (3 people) | Online course — Intuit | $[X] | Q1 | 2 hrs/month saved × 3 people × 12 months = 72 hours recovered |
| Manager Fundamentals | 2 new managers | 2-day virtual workshop | $[X] | Q2 | Reduces early management mistakes; improves team retention |
| Vendor Negotiation | Ops team (4 people) | 4-hr virtual seminar | $[X] | Q3 | Targeted at LOE cost reduction — potential $[X]K savings |

**Total recommended training investment:** $[X] | **Priority:** [High / Medium / Low split]

---

## Training Budget Request

| Priority | Training | Cost | Approver |
|---------|---------|------|---------|
| 🔴 Required | HIPAA recertification | $[X] | Dr. Lewis authority |
| 🔴 Required | [System training for new tool] | $[X] | Dr. Lewis authority |
| 🟡 Important | Manager fundamentals | $[X] | Matt Mathison approval |
| 🟢 Development | [Other] | $[X] | Dr. Lewis authority |
| **Total** | | **$[X]** | |
```

## Output Contract
- Gap drives the training, not the training catalog — the assessment starts with the gap (what is missing?), not with a list of available training programs; training that doesn't close a specific gap wastes money and time; every recommended training must be linked to a specific identified gap with a business justification
- Compliance training is mandatory and non-negotiable — HIPAA at Allevio, OSHA for field roles at HIVE, workplace harassment at all companies — these are not optional based on budget; they are tracked separately from development training and treated as regulatory obligations; a missed compliance training creates legal exposure that dwarfs the training cost
- ROI framing for development training — non-required training is justified by ROI; the assessment estimates the business value of closing the gap (time saved, cost reduced, error rate reduced, retention improved); this framing helps Matt Mathison and CEOs approve training spend that would otherwise be cut as "nice to have"
- Individual needs from performance data — the most reliable source of individual training needs is performance review development goals and 90-day review development areas; Dr. Lewis aggregates these across the company to identify patterns (if 6 employees all need "communication skills," that's a program investment, not 6 individual coaching engagements)
- HITL required: Dr. Lewis conducts the assessment with manager input; training recommendations above $5K total require Matt Mathison approval; compliance training is tracked by Dr. Lewis with completion records; training budget is included in annual headcount planning

## System Dependencies
- **Reads from:** Performance review development goals, 90-day review development areas, compliance calendar (mandatory training deadlines), new system rollout plans, manager input, prior training records
- **Writes to:** Training needs assessment (SharePoint/HR/<Company>/Learning & Development/); training budget request; individual development plans; compliance training tracker
- **HITL Required:** Dr. Lewis conducts assessment; managers provide role-level input; Matt Mathison approves training budget >$5K; compliance training completion tracked and reported

## Test Cases
1. **Golden path:** Allevio Q1 training needs assessment → Organizational: HIPAA annual recertification required for all 18 staff (regulatory — non-negotiable, due Feb 28); EHR system upgrade requires 4-hour training for all clinical coordinators (3 people); Role-level: practice managers report difficulty with patient escalation calls (skill gap: de-escalation communication); Individual: 3 employees have "proactive communication" as development area from performance reviews; Recommendations: HIPAA recertification $360 total (Dr. Lewis authority), EHR training $0 (vendor-provided), de-escalation workshop $800 for practice managers (Dr. Lewis authority), group communication skills online course $240 (covers 3 employees — Dr. Lewis authority); Total: $1,400 — all within Dr. Lewis authority; compliance training scheduled Q1; development training Q2
2. **Edge case:** An employee requests a $3,500 professional certification course (CPA exam prep) → this is a significant investment; assess: is the CPA designation in-role-relevant for this employee's current or near-term role? Will Allevio benefit if this person is a CPA? Would this increase their flight risk (CPA-credentialed employees are more marketable)? Structure the analysis: "CPA prep is role-relevant for our controller and accounting staff. The cost is $3,500. The benefit is increased capability and professional development. The risk is that a CPA credential makes them more marketable. Our mitigant is that we also do a compensation market adjustment at their next review to retain them. I recommend approving with a 12-month commitment agreement (if they leave within 12 months, they repay 50% of the course cost)."
3. **Adversarial:** A CEO says "we don't do training — people should figure it out on their own" → present the retention and performance data: "I understand the preference for self-sufficient employees. The issue is that 'figure it out' has a cost: slower productivity ramp, more errors, and higher turnover — employees who feel their employer doesn't invest in them leave faster. Our training recommendation is $1,400 — all required compliance items plus one skill development investment. The compliance items are not optional (HIPAA). The skill investment is a $800 de-escalation workshop that directly addresses patient complaints we've received. That's the ROI case."

## Audit Log
Training needs assessments retained by company and year. Compliance training completion records retained permanently. Development training approvals and completion retained. Individual development plans retained in employee file. ROI analysis and outcomes documented.

## Deprecation
Retire when portfolio companies have dedicated L&D functions with HRIS-integrated learning management systems, annual learning needs survey processes, and compliance training automation that doesn't require Dr. Lewis to manually assess and track training for each company.
