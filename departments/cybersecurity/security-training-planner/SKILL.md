---
name: security-training-planner
description: "Plan and track security training for IT and security staff. Use when the user says 'security team training', 'IT security training', 'certifications', 'security certifications', 'CISSP', 'CompTIA Security+', 'staff development', 'IT training plan', 'train the security team', or 'professional development for security'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--role <IT-manager|IT-engineer|IT-tech|all>] [--mode <plan|track|recommend>]"
---

# Security Training Planner

Plan and track security training for IT and security staff. Employee security awareness training (KnowBe4, phishing simulations) is for everyone. This skill is for technical security training — certifications, platform skills, and the specialized knowledge that IT and security staff need to protect the organization. A trained IT team is a better security team.

## When to Use
- Annual professional development planning for IT and security staff
- After a new technology is deployed (training needed)
- Post-incident — skill gap identified in the response
- Evaluating certification programs for IT staff
- Budgeting for security training in the annual security budget

## Training Tiers

| Tier | Audience | Focus | Time Investment |
|------|---------|-------|---------------|
| **Tier 1 — Platform Operations** | IT Tech, IT Engineer | Microsoft M365, Entra ID, Defender, Intune | 40-80 hours/year |
| **Tier 2 — Security Fundamentals** | IT Manager, IT Engineer | Security+, CySA+, network security | 80-120 hours/year |
| **Tier 3 — Advanced Security** | IT Manager, Fractional CISO | CISSP, CISM, cloud security, HIPAA | 120-200 hours/year |

## Recommended Certifications by Role

| Role | Recommended Cert | Cost | Time | Priority |
|------|----------------|------|------|---------|
| IT Tech | CompTIA A+, CompTIA Security+ | $400-700 exam | 3-6 months study | High |
| IT Engineer | CompTIA Security+, CompTIA CySA+ | $400-700 exam | 3-6 months | High |
| IT Manager | CompTIA Security+, Microsoft SC-200 (Sentinel), SC-300 (Identity) | $500-800 | 6-9 months | High |
| Fractional CISO (Dr. Lewis) | CISSP, CISM | $700-800 exam | Ongoing maintenance | Maintained |

## Platform-Specific Training (Microsoft)

| Platform | Certification | Cost | MBL Relevance |
|---------|-------------|------|-------------|
| Microsoft Entra ID | SC-300 Identity and Access Admin | $500 | Identity threat detection, Conditional Access |
| Microsoft Defender | SC-200 Security Operations Analyst | $500 | Alert triage, threat hunting |
| Microsoft Sentinel | AZ-204 or SC-200 | $500 | Log management, SIEM operations |
| Microsoft Intune (MDM) | MD-102 Endpoint Admin | $500 | Device compliance, MDM management |
| Microsoft Purview (DLP) | SC-400 Information Protection | $500 | DLP, data classification |

## Output Format

```markdown
# Security Training Plan — <Entity>
**Period:** <year> | **Entity:** <name>
**Prepared by:** Dr. John Lewis / IT Manager

---

## Staff Training Matrix

| Staff Member | Role | Certifications Held | Next Cert Target | Platform Skills Needed | Budget | Status |
|-------------|------|-------------------|----------------|----------------------|--------|--------|
| <Name> | IT Manager | CompTIA Security+ | SC-200 (Sentinel) | Sentinel, Defender | $1,200 | Planned Q2 |
| <Name> | IT Engineer | None | CompTIA Security+ | Entra ID, Defender | $1,000 | Q1 priority |
| <Name> | IT Tech | CompTIA A+ | CompTIA Security+ | M365 Admin, Intune | $800 | Q3 |

**Total training budget:** $3,000 / **Allocated:** $3,000

---

## Q1 Training Priorities

| Staff | Training | Format | Cost | Deadline | Status |
|-------|---------|--------|------|---------|--------|
| IT Engineer | CompTIA Security+ exam prep | Self-paced (Udemy + Professor Messer) | $30 course + $450 exam | June 30 | In progress |
| IT Manager | SC-200 (Microsoft Sentinel/Defender) | Microsoft Learn (free) + practice exam | $500 exam | Sept 30 | Planned |
| IT Tech | Intune + M365 Admin (MS Learn) | Free Microsoft Learn paths | $0 | Q2 | Not started |

---

## Skills Inventory

| Skill Area | IT Tech | IT Engineer | IT Manager |
|-----------|---------|-----------|-----------|
| Entra ID / Active Directory | 🟡 Basic | 🟡 Basic | ✅ Proficient |
| M365 Administration | ✅ Proficient | ✅ Proficient | ✅ Proficient |
| Microsoft Defender | 🟡 Basic | 🟡 Basic | 🟡 Basic |
| Incident response | ❌ Limited | 🟡 Basic | ✅ Proficient |
| Network security | ❌ Limited | 🟡 Basic | 🟡 Basic |
| Security compliance (HIPAA/SOC2) | ❌ Limited | ❌ Limited | 🟡 Basic |
| Sentinel / SIEM | ❌ None | ❌ None | 🟡 Basic |

---

## Annual Training Budget

| Category | Budget | Source |
|---------|--------|--------|
| Certification exam fees (3 staff) | $1,500 | IT training budget |
| Study materials and courses | $500 | IT training budget |
| Conference / security event (1 staff) | $1,000 | IT budget |
| **Total** | **$3,000** | |

---

## Training Outcomes (By Year End)

| Target | Status | Impact |
|--------|--------|--------|
| IT Engineer — CompTIA Security+ | In progress | Foundational security credential for team |
| IT Manager — SC-200 | Planned | Enables Sentinel deployment and management |
| All staff — Defender for Endpoint basics | Planned | Better EDR alert handling |
| IT Tech — Intune/MDM competency | Planned | Better device management coverage |
```

## Output Contract
- Training tied to specific skill gaps and deployment needs — no training for training's sake
- Certification pathways prioritized based on MBL technology stack (Microsoft-heavy)
- Budget tracked and justified — IT training is a security control, not a perk
- Skills inventory updated as certifications are earned — track actual capability growth
- HITL required: Dr. Lewis approves training plan; IT Manager identifies specific staff training needs; Matt Mathison approves budget in annual planning; HR coordinates certification reimbursement

## System Dependencies
- **Reads from:** IT staff credentials, technology stack (Microsoft 365/Azure), identified skill gaps from recent incidents
- **Writes to:** Training plan (for HITL review and budget approval)
- **HITL Required:** IT Manager and Dr. Lewis collaborate on plan; Finance approves budget; HR manages reimbursement

## Test Cases
1. **Golden path:** Annual IT training plan → IT Engineer CompTIA Security+ by Q2 (closes skill gap), IT Manager SC-200 (enables Sentinel), IT Tech Intune proficiency (closes MDM gap); total budget $3,000, approved by Matt Mathison
2. **Edge case:** New Microsoft Sentinel deployment — no one on the team knows Sentinel → SC-200 becomes Q1 priority for IT Manager; Microsoft Learn path assigned immediately (free); exam budgeted for Q3 after deployment experience
3. **Adversarial:** IT staff member wants to get a certification that doesn't align with MBL's technology stack → redirects to certifications that directly improve MBL security capability; professional development is most valuable when it serves both the individual and the organization

## Audit Log
Training plans and completion records retained by staff member and year. Certifications documented. Budget tracking documented.

## Deprecation
Retire when entity has a formal L&D (Learning and Development) program that manages IT/security training as part of a broader professional development framework.
