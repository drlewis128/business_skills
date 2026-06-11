---
name: cyber-hiring-scorecard
description: "Build a hiring scorecard for cybersecurity and IT security roles. Use when the user says 'hire a security engineer', 'IT security hire', 'CISO hire', 'security analyst hire', 'cybersecurity job description', 'security role scorecard', 'hire for security', 'security headcount', or 'building a security team'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "<role-title> [--entity <name>] [--level <junior|mid|senior|director>]"
---

# Cyber Hiring Scorecard

Build a hiring scorecard for cybersecurity and IT security roles. Security hires are high-stakes — the wrong hire either leaves the organization exposed or creates friction that slows the business. The right hire multiplies the security program. This skill builds structured scorecards and interview processes for security and IT security roles at MBL portfolio companies.

## When to Use
- Opening a new security or IT security role
- Evaluating candidates for an existing security role
- Assessing whether an internal candidate should be promoted into a security role
- Benchmarking a candidate against market expectations
- Building the job description for a security role

## Role Levels

| Level | Scope | Years Experience | Compensation Range |
|-------|-------|----------------|------------------|
| **IT Tech (Tier 1 Support)** | Endpoint support, basic helpdesk, onboarding/offboarding | 0-2 years | $45-65K |
| **IT Engineer / Security Analyst** | Vulnerability management, alert triage, identity management, security tools | 2-5 years | $65-95K |
| **IT Manager / Security Manager** | Program ownership, team leadership, vendor management, incident response | 5-10 years | $90-130K |
| **Fractional CISO** | Strategy, architecture, compliance, board reporting | 10+ years, CISSP/CISM | $150-300K+ (fractional) |
| **Full-time CISO** | Enterprise security program ownership | 10-15+ years | $200K+ |

## Output Format

```markdown
# Cybersecurity Hiring Scorecard — <Role Title>
**Entity:** <name> | **Level:** <Junior/Mid/Senior/Director>
**Prepared by:** Dr. John Lewis / HR
**Hiring manager:** IT Manager / Dr. Lewis

---

## Role Context

**Why we're hiring:** <Need (e.g., "Allevio needs dedicated IT Engineer to close HIPAA compliance gaps and manage MDM")>
**Reporting to:** IT Manager / Dr. Lewis
**Team size:** <N IT staff>
**Priority:** Urgent / Normal

---

## Must-Have Criteria (Automatic Disqualify if Missing)

| Criterion | Why Required |
|---------|------------|
| <N>+ years of IT/security experience at the defined level | Basic experience threshold |
| Microsoft 365 / Entra ID administration experience | Primary platform at MBL |
| CompTIA Security+ (or equivalent) — for Security Analyst and above | Baseline security knowledge credential |
| Demonstrated incident response experience | Live environment, not just theory |
| Background check (criminal, employment) | Required for trust level of access |

---

## Scorecard — IT Security Engineer Example

**Interview panel:** IT Manager + Dr. Lewis (1 round; 60 minutes)
**Scoring:** 1 (Poor) — 2 (Below expectation) — 3 (Meets expectation) — 4 (Exceeds)

### Technical Skills (60 points max)

| Skill | Weight | Score (1-4) | Weighted |
|-------|--------|------------|---------|
| Microsoft 365 Administration (Entra ID, Exchange, SharePoint) | 20% | | |
| Endpoint security / EDR (Defender, CrowdStrike, or equivalent) | 15% | | |
| Vulnerability management (scanning, prioritization, remediation) | 15% | | |
| Incident response fundamentals (containment, forensics) | 10% | | |

### Security Knowledge (20 points max)

| Area | Weight | Score (1-4) | Weighted |
|------|--------|------------|---------|
| OWASP Top 10 / common attack vectors | 5% | | |
| HIPAA technical safeguards (for Allevio) | 5% | | |
| Network fundamentals (firewalls, segmentation, VPN) | 5% | | |
| Patch management and vulnerability prioritization (CVSS, CISA KEV) | 5% | | |

### Soft Skills / Culture Fit (20 points max)

| Area | Weight | Score (1-4) | Weighted |
|------|--------|------------|---------|
| Communication — can explain technical risk to non-technical audience | 8% | | |
| Hustle — bias to action, doesn't wait to be told | 7% | | |
| Integrity — won't cut corners on security to make people happy | 5% | | |

---

## THRIVE Alignment Assessment

| Value | Assessment Question | Notes |
|-------|-------------------|-------|
| **Truth** | Tell me about a time you had to deliver bad news about a security finding. What did you do? | |
| **Hustle** | Describe a security incident where speed of response mattered. What did you do in the first 30 minutes? | |
| **Respect** | How do you balance security requirements with business needs when they conflict? | |
| **Integrity** | Have you ever been pressured to overlook a security issue? How did you handle it? | |
| **Value** | What's the most impactful security improvement you've made at a previous employer? | |

---

## Technical Interview Questions

| Question | What It Tests | Strong Answer |
|---------|-------------|--------------|
| "Walk me through how you'd respond to an EDR alert indicating ransomware behavior." | Incident response knowledge, process | Isolate first, investigate second; notify IT Manager; follow playbook; don't touch the infected system |
| "An employee calls saying they got an MFA push they didn't request. What do you do?" | Identity threat recognition | Immediate password reset; check sign-in logs; look for suspicious activity; elevate if needed |
| "What's the difference between CVSS score and exploitability, and how do you prioritize patches?" | Vulnerability management | CVSS = severity of the flaw; exploitability = is it being used? CISA KEV = patch now regardless of CVSS |
| "How do you explain to a non-technical executive that a security incident was 'serious' without causing panic?" | Communication skill | Quantify impact, explain what happened and why, focus on what's being done, avoid jargon |

---

## Reference Check Questions

| Question | What to Listen For |
|---------|------------------|
| How did this person perform under pressure during a security incident? | Calm, methodical, communicates well |
| Did they ever take shortcuts or push back on security requirements? | Integrity indicator |
| How did they work with non-technical staff and leadership? | Communication and collaboration |
| Would you rehire them in a security role? | The only reference check question that matters |

---

## Hiring Decision

| Candidate | Technical | Knowledge | Soft Skills | THRIVE | Total | Hire? |
|---------|---------|---------|-----------|--------|-------|-------|
| Candidate A | 42/60 | 14/20 | 15/20 | | 71/100 | 🟡 Maybe |
| Candidate B | 52/60 | 17/20 | 18/20 | | 87/100 | ✅ Hire |

**Decision threshold:** 80/100 = Hire | 70-79 = Maybe (additional interview) | <70 = No hire

**Dr. Lewis sign-off required for all security hires.**
```

## Output Contract
- THRIVE filter always applied — security staff with poor integrity are a security risk, not an asset
- Dr. Lewis sign-off always required for security hires — security roles have significant access and trust
- HIPAA awareness always tested for Allevio-entity hires — PHI access requires understanding of obligations
- Reference check questions always included — past behavior is the best predictor
- HITL required: Dr. Lewis reviews all security scorecards; IT Manager conducts technical interview; HR manages process; Matt Mathison informed of director-level security hires

## System Dependencies
- **Reads from:** Job requirements, entity context, candidate materials (provided)
- **Writes to:** Hiring scorecard (for HITL review and HR use)
- **HITL Required:** Dr. Lewis approves scorecard and signs off on hire; IT Manager conducts technical interview; HR manages process and compliance

## Test Cases
1. **Golden path:** IT Security Engineer hire for Allevio → scorecard built, 3 candidates interviewed, Candidate B scores 87/100 (strong M365 skills, good HIPAA awareness, THRIVE alignment confirmed in reference check), Dr. Lewis approves, offer extended
2. **Edge case:** Internal IT Tech candidate applying for IT Security Engineer role (promotion) → same scorecard used, technical gaps identified (vulnerability management), structured development plan proposed as condition of promotion
3. **Adversarial:** Hiring manager wants to skip the technical interview and "just hire someone who seems trustworthy" → security roles require both technical competency AND trustworthiness; the scorecard ensures we don't trade one for the other; both the THRIVE assessment and the technical portion are required

## Audit Log
Hiring scorecards retained by role and date. Hiring decisions documented. Diversity considerations documented per HR policy.

## Deprecation
Retire when entity has a formal talent acquisition team with specialized security recruiting, structured interview processes, and ATS integration.
