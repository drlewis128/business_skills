---
name: it-onboarding-plan
description: "Build a 90-day onboarding plan for new IT hires. Use when the user says 'IT onboarding plan', 'onboard IT hire', '90-day IT plan', 'new IT employee plan', 'IT new hire onboarding', 'IT staff onboarding', 'IT manager onboarding', 'onboard IT technician', 'new IT staff plan', 'IT team member onboarding', or 'IT 30-60-90 plan'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--role <title>] [--hire <name>] [--entity <company name>] [--start-date <YYYY-MM-DD>]"
---

# IT Onboarding Plan

Build a structured 90-day onboarding plan for new IT hires at MBL portfolio companies — ensuring that IT team members ramp quickly, learn the right systems and processes, and begin contributing at a high level without needing constant supervision. The 90-day plan separates "learned the tools" (Day 30) from "understands the business" (Day 60) from "owns their domain" (Day 90). Without a structured plan, IT hires spend their first 90 days being reactive and never build the deep understanding of MBL's systems and context that makes them genuinely effective.

## When to Use
- A new IT hire starts at a portfolio company — whether IT Technician, IT Manager, or Developer
- An MSP or contractor is beginning an embedded engagement (adapted plan)
- Dr. Lewis is transitioning responsibility for an IT domain to a new team member
- A new IT hire at Day 30 or Day 60 needs a structured check-in against plan milestones

## IT Onboarding Framework

```
90-day structure:
  Days 1-30: Learn and listen
    → Systems: Get access to and understand every system they will manage
    → People: Meet every stakeholder — CEO, controller, department leads, end users
    → Current state: Document what exists (infrastructure, security posture, known issues)
    → No major changes in first 30 days — understand before acting
    
  Days 31-60: Assess and plan
    → Identify top 3-5 IT problems or gaps (documented, prioritized, with proposed fixes)
    → Start executing on quick wins (low-effort, high-impact improvements)
    → Understand the business model deeply enough to prioritize IT by business impact
    → First IT project underway with defined milestones
    
  Days 61-90: Own and deliver
    → Owns their defined IT domains with minimal Dr. Lewis intervention
    → First project delivered or in active delivery
    → IT roadmap draft (or additions to Dr. Lewis's roadmap) for their domain
    → Established rapport with end users and business stakeholders
    → Performance review at Day 90 — explicit pass/redirect/exit conversation

Key onboarding elements by role:
  All IT roles:
    → IT asset inventory: Know every device, account, and service being managed
    → Documentation: Understand and add to the IT knowledge base
    → Help desk: Shadow existing support for Week 1; handle tickets independently by Week 3
    → Security baseline: Understand MBL's security posture and compliance requirements (HIPAA at Allevio)
    
  IT Manager:
    → IT budget: Understand the current IT spend and renewal calendar
    → Vendor relationships: Know the key vendors, their contacts, and their contracts
    → IT roadmap: Understand current initiatives and Dr. Lewis's strategic direction
    → Stakeholder management: Regular 1:1s with CEO and Dr. Lewis established
    
  Developer / Integration Engineer:
    → Codebase walkthrough: Understand existing integrations and automation (Krista.ai, M365, etc.)
    → Development standards: MBL tech standards (see it-technology-standards), security coding practices
    → OpenFang context (if relevant): Architecture, Rust standards, testing requirements
    → First PR reviewed and merged by Day 30; first feature owned by Day 60
    
HIPAA-specific onboarding (Allevio IT hires):
  Before system access: Complete HIPAA Security and Privacy training (mandatory gate)
  AdvancedMD access: Provisioned only after HIPAA training completion documented
  OIG LEIE check: Run on hire date (same day); clear = proceed; excluded = escalate immediately
  PHI handling: Understand what constitutes PHI and the obligations of handling it
  Breach reporting: Know the 60-day HIPAA breach notification clock and escalation path
```

## Output Format

```markdown
# IT Onboarding Plan — <Role Title>
**Hire:** [Name] | **Start date:** [Date]
**Entity:** [Company] | **Manager:** Dr. John Lewis
**30-day check-in:** [Date] | **60-day check-in:** [Date] | **90-day review:** [Date]

---

## HIPAA Pre-Access Requirements (Allevio only)
- [ ] HIPAA Security and Privacy training completed and documented (BEFORE any system access)
- [ ] OIG LEIE exclusion check run on start date — Result: Clear ✅ / Flagged ⚠️
- [ ] Signed HIPAA Workforce Member Acknowledgment on file

---

## Week 1 — Foundation

| Day | Activity | Owner | Complete |
|-----|---------|-------|---------|
| Day 1 | Systems access provisioned (see it-onboarding-provisioner) | Dr. Lewis | |
| Day 1 | Introductions: Dr. Lewis, CEO, controller, department leads | Dr. Lewis | |
| Day 1 | Office walk-through and physical security orientation | Dr. Lewis | |
| Day 2-3 | Shadow Dr. Lewis for current IT activities (help desk, monitoring, admin tasks) | Dr. Lewis | |
| Day 2-3 | IT asset inventory: physical devices, cloud accounts, SaaS tools | [Hire name] | |
| Day 3-5 | M365 admin center walk-through: users, groups, licenses, security | [Hire name] | |
| Day 3-5 | Entra ID and Intune: enrolled devices, conditional access, compliance policies | [Hire name] | |
| Day 4-5 | Read IT knowledge base (SharePoint): runbooks, SOPs, known issues | [Hire name] | |
| Day 5 | First solo help desk ticket resolved and documented | [Hire name] | |

---

## Days 1-30: Learn and Listen

**Milestone goal:** Independently handles help desk; understands all systems under management; no major incidents caused by incomplete knowledge

| Area | Activities | Completion target |
|------|-----------|-----------------|
| **Systems access** | All role-relevant systems provisioned and functional | Day 1 |
| **IT asset inventory** | Device inventory, software inventory, SaaS tool list — documented | Day 10 |
| **Security baseline** | Reviews current security posture report (it-security-assessor output) | Day 7 |
| **Help desk** | Shadowing → co-handling → independent by Day 21 | Day 21 |
| **Infrastructure review** | Documents current network, server, cloud, backup configuration | Day 20 |
| **Stakeholder meetings** | 1:1s with CEO, controller, department leads — understand their IT needs | Day 14 |
| **Documentation review** | Reads all existing runbooks; flags outdated or missing content | Day 21 |
| **HIPAA (Allevio)** | Understands all PHI handling requirements; passes HIPAA training assessment | Day 5 |

**Day 30 check-in:** [Dr. Lewis conducts 30-min review]
- What systems does the hire feel confident in? Where do gaps remain?
- What are the 3 biggest IT problems they've observed?
- Are they handling tickets independently?
- Any blockers to full productivity?

**Day 30 pass criteria:** ✅ Handles tickets independently; ✅ knows the asset inventory; ✅ can explain current security posture

---

## Days 31-60: Assess and Plan

**Milestone goal:** Identifies top IT gaps and begins executing on quick wins; first project underway

| Area | Activities | Completion target |
|------|-----------|-----------------|
| **IT gap assessment** | Top 5 IT risks or improvements — prioritized with business impact rationale | Day 40 |
| **Quick wins** | 2-3 improvements executed (patching gap, unused license cleanup, etc.) | Day 50 |
| **First project** | First defined IT project underway with milestones in Monday.com | Day 45 |
| **Vendor relationships** | Met key vendors; understands contracts and renewal dates | Day 45 |
| **Documentation contributions** | Written at least 2 new runbooks or updated 3 existing ones | Day 60 |
| **Budget familiarity** | Understands IT budget; can explain cost per user and renewal calendar | Day 50 |

**Day 60 check-in:** [Dr. Lewis conducts 45-min review]
- Are they thinking proactively (gap identification) or reactively (ticket triage only)?
- Is the first project on track?
- Are they communicating effectively with non-technical stakeholders?
- Any performance or THRIVE alignment concerns?

**Day 60 pass criteria:** ✅ Gap assessment submitted; ✅ first project milestones on track; ✅ quick wins delivered

---

## Days 61-90: Own and Deliver

**Milestone goal:** Owns their IT domains; first project delivered; established stakeholder confidence

| Area | Activities | Completion target |
|------|-----------|-----------------|
| **Domain ownership** | Manages their IT domains independently; Dr. Lewis consulted, not directed | Day 90 |
| **First project delivery** | Project completed or at defined milestone; documented and communicated | Day 90 |
| **IT roadmap input** | Draft 12-month IT priorities for their domain; reviewed with Dr. Lewis | Day 80 |
| **Knowledge base** | IT knowledge base updated with all major learnings from first 90 days | Day 85 |
| **Stakeholder trust** | CEO and department leads report confidence in IT responsiveness | Day 90 |

**Day 90 review:** [Dr. Lewis + CEO, 60-min structured review]
- Explicit pass/redirect/exit conversation — ambiguity at Day 90 is a failure mode
- Review against all 30-day and 60-day milestones
- Establish 6-month goals and development path
- Document outcome in personnel file

**Day 90 pass criteria:** ✅ Domain owned independently; ✅ project delivered; ✅ CEO stakeholder confidence; ✅ no THRIVE misalignment

---

## Key Contacts and Context

| Person | Role | Relationship to IT hire |
|--------|------|------------------------|
| Dr. John Lewis | Director of IT Strategy / Manager | Direct manager; IT strategy and architecture escalation |
| [CEO name] | Chief Executive Officer | Primary business stakeholder; approves IT budget |
| [Controller name] | Controller | Finance system owner; coordinates QB/Bill.com access |
| [Clinic Manager — Allevio] | Clinic Operations | Primary end user; escalation for clinical IT issues |

---

## Matt Mathison Notification
IT hire ([Name], [Role]) started at [Company] on [Date]. 30/60/90-day milestone plan in place. Dr. Lewis managing onboarding.
```

## Output Contract
- No major IT changes in the first 30 days — understanding the current state before acting is what separates an IT professional who improves the environment from one who breaks things they don't yet understand; the "no major changes" rule applies to: firewall rule changes, server configuration, security policy modifications, application configuration; help desk and routine maintenance proceed normally; the discipline of observing first prevents the classic new IT hire mistake of "improving" something they didn't fully understand and causing an outage
- Day 90 review is an explicit pass/redirect/exit conversation — a Day 90 review that avoids hard feedback is not a review; if the hire is performing well, say so explicitly and establish 6-month goals; if they are underperforming, say specifically what needs to change and by when; if they are not the right fit, make the exit decision; ambiguity at Day 90 extends a performance problem by months; Dr. Lewis and the CEO conduct Day 90 reviews together for Manager-level hires
- HIPAA training is a hard gate for Allevio IT hires — no PHI system access until HIPAA training is completed and documented; this includes AdvancedMD and any system that contains or can access PHI; the training completion is documented in the employee file; this is not a checkbox — it is a legal compliance requirement and a condition of employment for Allevio IT roles
- HITL required: Dr. Lewis conducts all 30/60/90-day check-ins; CEO included in Day 90 review (Manager+ hires); HIPAA training gate enforced before PHI access (Allevio); Matt Mathison notified of new IT hires at Director level; hiring exit decisions (underperformers) by Dr. Lewis + CEO

## System Dependencies
- **Reads from:** Hiring scorecard (it-hiring-scorecard), IT knowledge base (SharePoint), IT asset inventory, security posture baseline (it-security-assessor), Monday.com (project tracking)
- **Writes to:** 90-day onboarding plan (SharePoint/Ops/<Company>/HR/Onboarding/<Hire>/); milestone tracking (Monday.com); Day 90 review outcome (personnel file); IT knowledge base updates
- **HITL Required:** Dr. Lewis conducts 30/60/90 check-ins; CEO at Day 90 for Manager+; HIPAA training gate enforced (Allevio); Matt Mathison for Director-level IT hires

## Test Cases
1. **Golden path:** New IT Manager hired at Allevio (start date June 30) → HIPAA training completed Day 1 (documented); OIG LEIE check clear ✅; Week 1: M365/Entra ID/Intune walkthrough; help desk shadowing; met CEO, controller, clinic manager; Day 10: asset inventory complete; Day 21: handling tickets independently ✅; Day 30 check-in: 3 IT gaps identified (MDM enrollment gap at Clinic B, HIPAA BAA tracker incomplete, backup test overdue); Day 40: gap assessment submitted; Day 45: MDM enrollment project started (Monday.com milestone tracking); Day 60 check-in: 2 quick wins complete (backup tested, 4 unused licenses removed = $88/month); Day 90 review: MDM project complete; BAA tracker updated; controller says "IT response is dramatically better than before"; Day 90 pass ✅ — 6-month goals set
2. **Edge case:** New IT hire at Day 30 has not handled any help desk tickets independently — either shadowing has extended too long or the hire is not confident enough to work without supervision → Day 30 check-in surfaces this immediately; Dr. Lewis identifies root cause: the hire has not read the knowledge base runbooks (they don't know the documented procedures) vs. they have read them but cannot apply them (competency gap); for the first: assign specific runbooks and follow-up in 1 week; for the second: extend supervised period with specific milestone (5 solo tickets by Day 45) and make clear that Day 60 assessment will be a performance decision point
3. **Adversarial:** "The new hire is technically excellent — can we skip the 90-day structure and just let them run?" → The 90-day structure is not a limitation on excellent hires — it is the mechanism for excellent hires to demonstrate that excellence in the specific MBL context; an IT professional who is excellent at a 500-person tech company operates differently than one in a 20-person healthcare company where IT directly serves patients; the "no major changes in Day 1-30" rule benefits excellent hires most — it prevents them from making confident changes that break something they didn't yet understand about the environment; the 90-day structure also builds CEO and stakeholder trust, which an excellent IT hire needs to do their best work

## Audit Log
90-day onboarding plans retained per hire. 30/60/90 check-in notes retained. Day 90 review outcomes retained in personnel file. HIPAA training completion records retained permanently (Allevio). OIG LEIE check results retained (Allevio). Matt Mathison notifications retained for Director-level hires.

## Deprecation
Retire when portfolio companies have dedicated HR functions with structured IT onboarding programs that include HIPAA-specific onboarding (Allevio) and domain-specific technical onboarding tracks — with Dr. Lewis reviewing 90-day outcomes for IT Manager+ hires.
