---
name: cs-playbook-builder
description: "Build a Customer Success playbook for the CS team. Use when the user says 'CS playbook', 'customer success playbook', 'build a CS process', 'document the CS approach', 'how does CS work here', 'CS handbook', or 'what is the CS motion'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--segment <smb|mid-market|enterprise>] [--scope <full|onboarding|retention|expansion>]"
---

# CS Playbook Builder

Build a structured Customer Success playbook for the CS team. A playbook is the codified answer to "how do we deliver great customer success at scale?" — it makes best practices replicable, onboarding of new CSMs faster, and customer outcomes more consistent.

## When to Use
- Building the CS team's operating manual
- New CSM joins and needs to understand the motion
- CS outcomes are inconsistent across the team
- Scaling the CS function at a portfolio company
- Annual CS program refresh

## Playbook Sections

### 1. CS Philosophy and Goals
- What does success look like for our customers?
- What are our CS team's primary KPIs? (NRR, renewal rate, NPS, TTV)
- How does CS support the company's growth strategy?

### 2. Customer Segmentation
- How do we tier customers? (see `customer-segmentation-model`)
- What coverage model does each tier receive?

### 3. Customer Lifecycle Playbooks
Stage-by-stage CSM actions:
- Onboarding → Adoption → Value Realization → Renewal → Expansion → Advocacy

### 4. Success Plans and QBRs
- When do we build success plans? (All Tier 1-2 customers)
- What goes in a success plan? (see `success-plan-builder`)
- QBR frequency by tier

### 5. Health Scoring
- How do we define health? (see `customer-health-scorer`)
- What actions are triggered at each health level?

### 6. Renewal Process
- 120-day renewal timeline (see `renewal-manager`)
- How do we forecast renewals?

### 7. Expansion Motion
- When do we approach expansion? (see `expansion-opportunity-planner`)
- How do we work with Sales on expansion?

### 8. Escalation Protocols
- What constitutes an escalation?
- Who is in the escalation chain?
- How do we resolve and prevent repeat escalations?

### 9. Tools and Systems
- What tools does the CS team use?
- What does "good CRM hygiene" look like for CS?

### 10. Metrics and Expectations
- Activity expectations (check-in frequency, QBR completion)
- KPI targets by CSM and team

## Output Format

```markdown
# Customer Success Playbook — <Entity>
**Version:** <N> | **Owner:** <CS Manager / Dr. Lewis> | **Last Updated:** <date>

---

## 1. CS Mission

"Our CS team ensures every customer achieves the outcomes they came for, renews and expands their relationship with [Entity], and becomes an advocate in our market."

**Primary KPIs:**
- NRR target: X%
- Renewal rate: > 90%
- NPS target: > <N>
- Time-to-first-value: < <N> days

---

## 2. Customer Tiers

| Tier | Coverage | CSM Ratio | Examples |
|------|---------|---------|---------|
| Tier 1 (Strategic) | High-touch | 1:15 | Accounts > $100K ACV |
| Tier 2 (Growth) | Managed | 1:35 | $25K–$100K ACV |
| Tier 3 (Scale) | Digital | 1:100 | < $25K ACV |

---

## 3. Customer Lifecycle — Stage by Stage

| Stage | CSM Actions | Success Criteria | Timing |
|-------|-----------|----------------|--------|
| Kickoff | Run kickoff meeting; set success plan | Goals confirmed; plan signed | Days 0–10 |
| Onboarding | Drive implementation; track milestones | Go-live achieved | Days 10–45 |
| Adoption | Weekly check-ins; adoption tracking | > 60% seat activation | Days 45–90 |
| Value realization | QBR; ROI documentation | First goal achieved | Day 90+ |
| Renewal | Renewal conversation; renewal close | Signed renewal | 30+ days before expiration |
| Expansion | Expansion proposal | ACV increase | At renewal or trigger |

---

## 4. Success Plans

- **Tier 1:** Full success plan within 30 days of kickoff; quarterly review
- **Tier 2:** Lightweight success plan within 45 days; semi-annual review
- **Tier 3:** No formal plan; goals set in onboarding email sequence

---

## 5. Health Score Response Protocol

| Health | Response | Timeline |
|--------|---------|---------|
| 🟢 Green | Standard engagement | — |
| 🟡 Yellow | Increase call frequency; identify root cause | Within 5 days |
| 🔴 Red | Activate intervention plan | Within 48 hours |

---

## 6. Escalation Protocol

**P1 (Critical):** CSM → CS Manager → Dr. Lewis within 1 hour
**P2 (High):** CSM → CS Manager within 4 hours
**P3 (Medium):** CSM owns; loop in manager if not resolved in 3 days

---

## 7. Activity Expectations by Tier

| Tier | Check-in Frequency | QBR Frequency | Success Plan Review |
|------|------------------|--------------|-------------------|
| Tier 1 | Weekly | Quarterly | Quarterly |
| Tier 2 | Monthly | Semi-annual | Semi-annual |
| Tier 3 | No regular calls | None (digital) | Annual (email) |

---

## 8. Tools

| Tool | Used For |
|------|---------|
| CRM (GoHighLevel) | Account records, renewal dates, escalation tracking |
| [CS Platform] | Health scores, usage data, success plans |
| [Support Platform] | Ticket management, CSAT |
| Krista.ai | Meeting intelligence, automated summaries |

```

## Output Contract
- All lifecycle stages covered — no playbook with gaps
- Health score response protocol always included — CSMs need to know what to do when health changes
- Activity expectations always specific (not "stay engaged") — measurable by CSM manager
- HITL required: Dr. Lewis and CS Manager approve playbook before team rollout; changes require CS Manager sign-off

## System Dependencies
- **Reads from:** CS team structure, customer segmentation model, linked skill outputs (provided)
- **Writes to:** Nothing (playbook document for HITL review and CS team distribution)
- **HITL Required:** Dr. Lewis and CS Manager review and approve before team rollout; major process changes require Tier 1 sign-off

## Test Cases
1. **Golden path:** Full CS playbook for MBL entity → 10 sections, 3-tier segmentation, lifecycle stage matrix, health response protocol, escalation chain, tool reference
2. **Edge case:** Solo CSM with no manager layer → adapts playbook for single-person CS team, escalation goes directly to Dr. Lewis, tier model simplified to 2 tiers
3. **Adversarial:** Request to build a playbook that sets low activity expectations to reduce CSM workload → builds expectations based on industry benchmarks and customer retention data, recommends that low activity expectations produce high churn rates, provides evidence

## Audit Log
Playbook versions retained by entity and version. Changes tracked with date and approver.

## Deprecation
Retire when CS enablement platform manages playbook versioning, distribution, usage tracking, and CSM training certification.
