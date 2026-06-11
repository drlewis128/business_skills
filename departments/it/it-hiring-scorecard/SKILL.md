---
name: it-hiring-scorecard
description: "Build and run a hiring scorecard for IT roles. Use when the user says 'IT hiring', 'hire an IT person', 'evaluate IT candidates', 'IT interview', 'IT staff hiring', 'IT technician hiring', 'IT manager hiring', or 'assess IT candidates'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "<role-title> [--entity <name>] [--level <tech|manager|director>] [--format <scorecard|interview-guide>]"
---

# IT Hiring Scorecard

Build a structured hiring scorecard for IT roles. IT interviews that rely on gut feel produce inconsistent results and frequently hire for technical depth at the expense of operational reliability, communication skills, or security mindset. This scorecard evaluates what actually matters for IT roles at MBL's portfolio scale.

## When to Use
- Hiring an IT Technician, IT Manager, or Director of IT
- Building a repeatable IT hiring process for a growing entity
- Evaluating an external IT consultant or MSP team
- Comparing multiple IT candidates with a structured framework

## Role Profiles

| Role | Primary Skills | Key Differentiator | Red Flags |
|------|-------------|------------------|---------|
| **IT Technician (L1/L2)** | Endpoint support, M365 basics, ticketing | Customer service attitude; methodical troubleshooter | Condescending to users; poor follow-through |
| **IT Engineer (L2/L3)** | Networking, server admin, cloud, scripting | Hands-on problem solver; security-aware | Over-engineers simple solutions; avoids documentation |
| **IT Manager** | Team management, vendor management, project delivery, budget | Translates technical to business; proactive communicator | Manages up only; reactive to everything |
| **Director of IT / CTO** | Strategy, architecture, executive communication, board-level reporting | Business acumen; builds IT as a business enabler | Builds empire vs. solves problems; ignores security |

## Scorecard Dimensions

| Dimension | Weight | What to Assess |
|---------|--------|--------------|
| **Technical competency** | 30% | Depth appropriate to role; breadth matters more for small teams |
| **Security mindset** | 20% | Does security come naturally or as an afterthought? |
| **Communication** | 15% | Can explain technical concepts clearly to non-technical people? |
| **Problem-solving approach** | 15% | Methodical? Documents? Learns from failures? |
| **Reliability / follow-through** | 10% | Delivers what was committed? Flags blockers early? |
| **Culture fit (THRIVE)** | 10% | Does their working style match Truth, Hustle, Respect, Integrity, Value, Enjoy? |

## Output Format

```markdown
# IT Hiring Scorecard — <Role Title>
**Entity:** <MBL entity> | **Interview date:** <date>
**Candidate:** <name> | **Interviewer(s):** <names>

---

## Technical Competency (30%)

| Area | Score (1-5) | Notes |
|------|-----------|-------|
| Core technical skills for role (see role profile) | | |
| Microsoft 365 / Entra ID administration | | |
| Security fundamentals (MFA, endpoint, patching) | | |
| Cloud basics (AWS/Azure/GCP) | | |
| Documentation practices | | |
| **Subtotal** | **/25** | |

**Top technical strength:** <note>
**Biggest technical gap:** <note>

---

## Security Mindset (20%)

**Interview questions:**
1. "Tell me about a security incident you've handled or been aware of. What did you do?"
2. "A user asks you to disable MFA on their account because it's inconvenient. How do you respond?"
3. "How do you stay current on security threats?"

| Question | Score (1-5) | Notes |
|---------|-----------|-------|
| Security incident response / awareness | | |
| Resists security shortcuts under pressure | | |
| Proactively identifies security risks | | |
| **Subtotal** | **/15** | |

---

## Communication (15%)

**Assessed by:** How they explain technical concepts in the interview

| Attribute | Score (1-5) | Notes |
|---------|-----------|-------|
| Explains concepts clearly to non-technical listeners | | |
| Listens before answering | | |
| Written communication (resume, cover letter quality) | | |
| **Subtotal** | **/15** | |

---

## Problem-Solving (15%)

**Interview question:** "Walk me through how you would troubleshoot [specific scenario relevant to role]."

| Attribute | Score (1-5) | Notes |
|---------|-----------|-------|
| Methodical — asks clarifying questions, doesn't jump to solutions | | |
| Knows when to escalate vs. when to keep troubleshooting | | |
| Documents and learns from problems | | |
| **Subtotal** | **/15** | |

---

## Reliability / Follow-Through (10%)

**Reference check questions:** "Did they deliver what they committed to? How did they handle it when they fell short?"

| Attribute | Score (1-5) | Notes |
|---------|-----------|-------|
| Track record of commitments met | | |
| Proactive communication when blocked | | |
| **Subtotal** | **/10** | |

---

## THRIVE Culture Fit (10%)

| THRIVE Value | Score (1-5) | Notes |
|-------------|-----------|-------|
| Truth — honest, direct, no spin | | |
| Hustle — bias toward action | | |
| Respect — for users, teammates, vendors | | |
| Integrity — follows through; admits mistakes | | |
| Value — delivers results, not just activity | | |
| **Subtotal** | **/25** | |

---

## Overall Score

| Dimension | Weight | Raw Score | Weighted Score |
|---------|--------|---------|--------------|
| Technical | 30% | /25 | |
| Security mindset | 20% | /15 | |
| Communication | 15% | /15 | |
| Problem-solving | 15% | /15 | |
| Reliability | 10% | /10 | |
| THRIVE fit | 10% | /25 | |
| **Total** | **100%** | | **/100** |

**Hiring recommendation:** Strong Hire / Hire / Maybe / No Hire
**Reasoning:** <2-3 sentences — the strongest reason for or against>

---

## Red Flags Noted

- [ ] Dismissive of security requirements
- [ ] Blames users for IT problems
- [ ] No documentation habits
- [ ] Unclear on what they personally contributed vs. the team
- [ ] Reference concerns
- [ ] Compensation misalignment
```

## Output Contract
- THRIVE filter always applied — THRIVE misalignment is a kill criterion regardless of technical score
- Security mindset always scored separately — security as an afterthought is a disqualifier for any IT role
- References always checked before a final offer — scorecard is not a substitute for reference verification
- HITL required: Dr. Lewis approves IT Manager and above hiring decisions; IT Manager approves IT Tech and Engineer decisions

## System Dependencies
- **Reads from:** Job description, candidate resume, interview notes (provided)
- **Writes to:** Nothing (scorecard for HITL hiring decision)
- **HITL Required:** Dr. Lewis approves IT Manager hires; Matt Mathison informed of Director-level IT hires; IT Manager reviews Tech and Engineer scorecards

## Test Cases
1. **Golden path:** IT Manager candidate → technical score 22/25 (strong), security mindset 12/15 (good), communication 13/15 (strong), problem-solving 12/15 (good), reliability 8/10 (references pending), THRIVE 20/25 (Hustle and Enjoy lower) — weighted 84/100, "Hire" recommendation pending references
2. **Edge case:** IT Technician candidate with excellent technical skills but scored 2/5 on "Respect" dimension (dismissive in interview toward a non-technical question) → "No Hire" recommendation despite technical strength; IT serves users — attitude toward users is non-negotiable
3. **Adversarial:** Hiring manager wants to skip the scorecard for an "obviously great" candidate (personal referral) → uses scorecard anyway; documents scores; referrals don't remove the need for structured evaluation — they just provide a warm lead

## Audit Log
Hiring scorecards retained by role and date. Hiring decisions and outcomes tracked.

## Deprecation
Retire when entity deploys an ATS (Applicant Tracking System) with structured interview scorecards, assessment tools, and collaborative hiring workflows.
