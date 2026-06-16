---
name: it-team-skills-assessor
description: "Assess the IT team's capabilities and identify skills gaps. Use when the user says 'IT skills assessment', 'IT team skills', 'IT capability gap', 'IT team capabilities', 'IT skills gap analysis', 'IT team evaluation', 'assess IT team', 'IT training plan', 'IT team development', 'IT skill inventory', 'IT workforce skills', or 'what skills does my IT team lack'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--team-size <N>] [--action <assess|gap-analysis|training-plan|development-plan>]"
---

# IT Team Skills Assessor

Assess the IT team's current capabilities at MBL portfolio companies — identifying skills gaps, prioritizing training investments, and building individual development plans that align the team's capabilities with the IT roadmap. At portfolio scale, Dr. Lewis is often the primary or sole IT resource, which makes this skill as much about self-assessment and prioritizing external resources (vendors, contractors, training) as it is about team development. When an IT team exists at a portfolio company, this skill ensures the team has the skills to execute on the IT roadmap without constant Dr. Lewis involvement.

## When to Use
- Annual IT team skills review — what capabilities do we have and what do we need?
- A new IT initiative requires skills the current team doesn't have
- IT team member feedback indicates a skills gap or development need
- Planning training budget for the next fiscal year
- After an IT incident where the team lacked the skills to respond effectively

## IT Skills Assessment Framework

```
IT skill domains (assess by role relevance):
  Infrastructure and cloud:
    → Microsoft 365 / Entra ID administration (required: all IT roles)
    → Microsoft Intune / endpoint management (required: all IT roles)
    → Azure administration: VMs, storage, networking, Key Vault, Monitor
    → Networking: firewall, switching, VPN, DNS, DHCP, VLANs
    → Server administration: Windows Server, Active Directory (legacy), Linux basics
    → Backup and DR: Azure Backup, restore procedures, DR plan execution
    
  Security:
    → HIPAA Security Rule requirements (required: all Allevio IT staff)
    → Endpoint security: Defender, BitLocker, EDR
    → Identity security: Conditional Access, Privileged Identity Management
    → Incident response: PICERL framework, forensic preservation
    → Vulnerability management: scanning tools, CVSS scoring, remediation prioritization
    → Security awareness training management: KnowBe4, Microsoft Defender for Office
    
  Help desk and operations:
    → Ticket management and SLA adherence
    → Remote support tools
    → Documentation: runbook writing, knowledge base maintenance
    → User training and change management
    → Hardware procurement, configuration, deployment
    
  Applications and integration:
    → Microsoft Power Automate: workflow design, error handling
    → API integration: REST API concepts, Postman/testing, authentication
    → GoHighLevel administration (MBL/North Vista)
    → QuickBooks Online / Bill.com administration
    → Krista.ai platform (AI orchestration — Dr. Lewis primary; skill transfer to IT team over time)
    
  Development (if developer/engineer on team):
    → Programming languages: Rust, Python, TypeScript/JavaScript (role-dependent)
    → Testing: unit tests, integration tests, test-driven development
    → Version control: Git workflows, PR review
    → Security coding: OWASP Top 10, input validation, secrets management
    
Assessment scoring (per domain):
  0 — No knowledge: Cannot perform tasks in this domain without significant guidance
  1 — Awareness: Understands concepts; cannot execute independently
  2 — Practitioner: Can execute standard tasks independently; needs guidance on advanced topics
  3 — Proficient: Executes advanced tasks independently; can mentor others
  4 — Expert: Leads in this domain; develops standards and approaches for others

Gap classification:
  Critical gap: Domain scored <2 AND required for current IT roadmap or compliance
  Development gap: Domain scored 2 AND role expectation is 3+
  Growth opportunity: Domain scored 2-3 AND strategic IT roadmap needs 3-4 in 12 months
  Not applicable: Domain not required for role or entity
```

## Output Format

```markdown
# IT Team Skills Assessment — <Company Name>
**Assessment date:** [Date] | **Assessor:** Dr. John Lewis
**Team size:** [N] | **Entity:** [Company]
**Next assessment:** [Date + 12 months]

---

## Team Member Profiles

### [Team Member Name] — [Role]
**Tenure:** [X months] | **Primary domains:** [Infrastructure / Security / Development]

| Skill Domain | Current Score (0-4) | Role Expectation | Gap | Priority |
|-------------|-------------------|----------------|-----|---------|
| M365 / Entra ID admin | [0-4] | 3 | [Score - Expectation] | |
| Microsoft Intune | [0-4] | 3 | | |
| Networking fundamentals | [0-4] | 2 | | |
| HIPAA Security Rule (Allevio) | [0-4] | 3 | | |
| Endpoint security | [0-4] | 2 | | |
| Incident response | [0-4] | 2 | | |
| Documentation / runbooks | [0-4] | 3 | | |
| Help desk / ticket management | [0-4] | 3 | | |
| [Additional domain] | | | | |

**Critical gaps:** [List domains scored <2 that are required]
**Development priorities for next 12 months:** [Top 2-3 specific skills to develop]
**Strengths:** [Domains at 3-4 — leverage these]

---

## Team Capability Heat Map

| Skill Domain | [Member 1] | [Member 2] | Team Average | Gap to Target |
|-------------|-----------|-----------|------------|-------------|
| M365 / Entra ID | [0-4] | [0-4] | [avg] | [target - avg] |
| Intune / MDM | | | | |
| HIPAA (Allevio) | | | | |
| Networking | | | | |
| Security incident response | | | | |
| Documentation | | | | |
| [Domain] | | | | |

**Color legend:** 🔴 <2 (gap) | 🟡 2 (developing) | 🟢 3-4 (proficient)

---

## Critical Gaps (require immediate action)

| Gap | Team member affected | Business risk | Action required | Timeline |
|-----|---------------------|-------------|----------------|---------|
| HIPAA Security Rule knowledge below required level | [Name] | Allevio compliance risk | Enroll in HIPAA Security Rule training (specific course) | 30 days |
| [Gap] | | | | |

---

## Training Plan

| Team member | Skill to develop | Training approach | Cost | Timeline | Success metric |
|------------|----------------|-----------------|------|---------|---------------|
| [Name] | HIPAA Security Rule | Compliancy Group online course (~$300) | $300 | 30 days | Pass certification assessment |
| [Name] | Microsoft Intune | Microsoft Learn (free) + MS-102 exam prep | $0 / $165 exam | 60 days | MS-102 exam passed |
| [Name] | Power Automate | Microsoft Learn (free) + PL-900 | $0 / $165 exam | 90 days | 3 production automations built |
| Dr. Lewis (if applicable) | [Domain] | [Source] | | | |

**Training budget required:** $[Total] | **Budget available:** $[Amount]
**Training budget approval:** [Status — within plan / CEO notification required]

---

## Build vs. Buy Decision

| Capability needed | Build (train team) | Buy (vendor/contractor) | Recommendation |
|-----------------|-------------------|----------------------|---------------|
| Azure advanced admin | [Cost/timeline to train] | [MSP hourly rate × expected hours] | [Recommendation with rationale] |
| Security pen testing | Not applicable | Annual pentest vendor ($[X]) | Buy — specialized; annual need |
| [Capability] | | | |

---

## Individual Development Plans

### [Team Member Name] — Development Plan [Date] — [Date + 12 months]

**Career goal (if discussed):** [e.g., "Become an IT Manager within 24 months"]
**Development focus this year:** [Top 2-3 areas]

| Quarter | Development goal | Method | Measure |
|---------|----------------|--------|---------|
| Q1 | Complete HIPAA training and pass assessment | Compliancy Group | Cert on file by [Date] |
| Q2 | Achieve Intune proficiency (score 3/4) | MS Learn + hands-on projects | MS-102 exam passed |
| Q3 | Lead first IT project independently | Assigned project | Project delivered on time |
| Q4 | Conduct first security phishing simulation | KnowBe4 or Defender | Simulation run; report produced |

---

## Matt Mathison Brief (if significant training investment or capability gap affecting portfolio)

IT team skills assessment [Company] [Date]: [N] team members assessed. Critical gap: [Gap + business risk]. Training plan: $[X] over [timeline]. Key capability investment: [What and why]. Portfolio IT capability on track: Yes / No — [detail].
```

## Output Contract
- Assessment scores are based on demonstrated performance, not self-report alone — a team member who rates themselves 4/4 on M365 administration but consistently escalates routine M365 tasks to Dr. Lewis is demonstrating 2/4 in practice; Dr. Lewis calibrates self-assessment scores against observed performance; discrepancy between self-score and observed performance is itself a data point (overconfidence or underconfidence) and is addressed in the development conversation
- Critical gaps trigger immediate action, not planning — a critical gap (score <2 on a required domain) is not a development goal for Q3; it is a 30-day action item; critical gaps at Allevio that affect HIPAA compliance have a 30-day remediation deadline; business risk from an untrained IT person handling PHI systems is not a future concern — it is a current exposure
- Build vs. buy analysis prevents false economy — training a team member to perform annual penetration testing is almost never the right decision; specialized, infrequent, or highly technical capabilities are better purchased from vendors; the build decision applies when the capability is needed frequently, is within the team's growth path, and the training cost is reasonable relative to the vendor alternative; document the decision
- HITL required: Dr. Lewis conducts all IT team skills assessments; development plans reviewed with team members in 1:1; training investments >$500 per person require CEO notification; training investments >$2K require CEO approval; Matt Mathison notified if a portfolio-level IT capability gap is identified

## System Dependencies
- **Reads from:** IT roadmap (it-roadmap-builder), job descriptions, performance check-in notes, IT incident log (skills gaps often surface during incidents), training completion records
- **Writes to:** Skills assessment report (SharePoint/Ops/<Company>/IT/Team/SkillsAssessment/); individual development plans (SharePoint/Ops/<Company>/HR/Development/<Name>/); training plan and budget (IT budget — it-budget-planner); Monday.com (development milestones)
- **HITL Required:** Dr. Lewis conducts assessment and reviews with team members; training >$500/person: CEO notification; training >$2K: CEO approval; portfolio capability gap: Matt Mathison

## Test Cases
1. **Golden path:** Annual IT skills assessment for Allevio IT team (2 members: IT Technician and IT Manager) → IT Technician: M365 2/4, Intune 1/4 (critical gap — cannot independently enroll devices), HIPAA 3/4, help desk 3/4, incident response 1/4 (gap); IT Manager: M365 3/4, Intune 2/4, HIPAA 3/4, networking 2/4, incident response 2/4, vendor management 3/4; Critical gap: Technician's Intune gap — cannot support MDM rollout; Training plan: Technician → MS Learn Intune track + hands-on with Dr. Lewis (30 days), then MS-102 exam ($165); Incident response: both members enroll in PICERL tabletop training (half-day session, $200 each); development plans drafted and reviewed in 1:1s; training budget: $730 — within IT training budget ✅
2. **Edge case:** Assessment reveals the entire IT team (including Dr. Lewis) lacks advanced Azure networking skills needed for a planned cloud migration project → Build vs. buy analysis: training to expert level (score 4/4) would require AZ-700 certification and significant hands-on time; the migration is a one-time project; recommendation: engage an Azure partner (Microsoft CSP) for the migration project; team members shadow the migration to build to score 2-3 (practitioner); post-migration: Azure managed environment is within current team capabilities; this is the correct "buy" decision; document in training plan as "outsourced with knowledge transfer"
3. **Adversarial:** "Can we skip the skills assessment? We know what the team can and can't do" → The skills assessment is not about knowing what the team can't do at a general level — every manager has a general sense of their team's capabilities; the assessment produces: specific domain scores that calibrate individual development plans; documented evidence that HIPAA training is current (Allevio — audit trail); build vs. buy data for training budget decisions; a year-over-year progression record that shows whether development plans actually resulted in skill growth; "we know generally" does not serve any of these purposes; the assessment takes 2-3 hours per team member and is done annually

## Audit Log
Skills assessment reports retained annually by team member. Individual development plans retained and updated. Training completion records retained. HIPAA training records retained permanently (Allevio). Build vs. buy decisions retained. Matt Mathison notifications retained for portfolio-level gaps.

## Deprecation
Retire when portfolio companies have dedicated HR and IT management functions with formal performance management processes that include skills assessments, development plans, and training budgets — with Dr. Lewis providing strategic input on IT skills roadmap and portfolio-level capability planning.
