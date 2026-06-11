---
name: training-delivery-planner
description: "Plan and deliver product training for a customer. Use when the user says 'customer training', 'deliver training', 'training plan', 'product training', 'train the users', 'training schedule', 'admin training', or 'end user training'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--type <admin|end-user|advanced>] [--format <live|async|hybrid>]"
---

# Training Delivery Planner

Plan and deliver product training for a customer. Training that doesn't land leads to low adoption, which leads to churn. Good training is specific to the customer's use case, not a generic walkthrough of every feature.

## When to Use
- Onboarding (first training delivery)
- Re-training after a significant product update
- Customer has low adoption (re-onboarding)
- New team members added to an existing customer
- Advanced training for power users or admins

## Training Types

| Type | Audience | Focus | Timing |
|------|---------|-------|--------|
| **Admin training** | IT, system admins, power users | Configuration, user management, integrations | Before end-user training |
| **End-user training** | All users | Day-to-day tasks; core workflows | Week 2-3 of onboarding |
| **Advanced training** | Power users who've mastered basics | Advanced features, automation, analytics | Month 2-3 |
| **Refresher** | Existing users | New features, updated workflows | At major product releases |

## Training Design Principles

1. **Use their use cases, not generic demos** — "Here's how you'll handle billing reconciliation" beats "Here's the reconciliation module"
2. **Less is more** — Cover what they'll use in the first 30 days; don't overwhelm with every feature
3. **Practice over presentation** — 30 minutes of supervised practice > 90 minutes of watching you demo
4. **Record everything** — Even if live, record for people who couldn't attend and for future reference
5. **Test comprehension** — End with a short exercise or quiz; don't assume they absorbed it

## Output Format

```markdown
# Training Delivery Plan — <Account>
**Entity:** <MBL entity> | **Training type:** Admin / End-User / Advanced
**Format:** Live / Async / Hybrid | **CSM / Trainer:** <name>

---

## Training Schedule

| Session | Audience | Topics | Date/Time | Duration | Format |
|---------|---------|--------|----------|---------|--------|
| Admin Setup | IT Lead + Admin | User provisioning, config, integrations | <date> | 60 min | Live |
| End-User Training — Group 1 | Finance Team (12 users) | Core workflows: billing, reporting | <date> | 90 min | Live |
| End-User Training — Group 2 | Ops Team (8 users) | Core workflows: scheduling, alerts | <date> | 90 min | Live |
| Advanced Training | Power users (3) | Automation, advanced reporting | <date + 30 days> | 60 min | Live |

---

## Session 1: Admin Training
**Date/Time:** <date> | **Duration:** 60 minutes | **Attendees:** <N>
**Pre-req:** Access provisioned; environment configured

**Agenda:**
1. User management and role assignment (15 min)
2. Integration setup walkthrough (20 min)
3. Key configurations for this customer's use case (15 min)
4. Q&A and open issues (10 min)

**What they'll be able to do after this session:**
- Add and manage users
- Configure the integration with [their key system]
- Understand where to find help documentation

---

## Session 2: End-User Training
**Date/Time:** <date> | **Duration:** 90 minutes | **Attendees:** <N>
**Pre-req:** Admin training complete; user accounts active

**Agenda:**
1. Welcome and navigation overview (10 min)
2. [Core task 1 — their primary use case] (20 min)
3. [Core task 2] (20 min)
4. Practice exercise (25 min — supervised)
5. Q&A (15 min)

**What they'll be able to do after this session:**
- Complete [primary workflow] independently
- Know where to find help when stuck

---

## Training Materials

| Material | Status | Location |
|---------|--------|---------|
| Getting started guide (customer-specific) | Prepared | [Link] |
| Training recording | Will be uploaded after session | [Link after] |
| Quick reference card | Prepared | [Link] |
| Help center / knowledge base | Available | [Link] |

---

## Post-Training Follow-Up

- [ ] Recording sent within 24 hours
- [ ] 2-week check-in scheduled to assess adoption
- [ ] Support contact shared with all attendees
- [ ] Usage monitoring started in product analytics
```

## Output Contract
- Training agenda always customized to customer use cases — no generic walkthrough delivery
- Post-training materials always distributed within 24 hours
- Follow-up check-in always scheduled — training without follow-up loses half its value within 1 week
- HITL required before training is redesigned for an at-risk account (low adoption) — CS Manager must review root cause

## System Dependencies
- **Reads from:** Kickoff notes, use cases from success plan, customer technical setup (provided)
- **Writes to:** Nothing (training plan for HITL review and CSM delivery)
- **HITL Required:** CS Manager reviews training plan for at-risk accounts; Dr. Lewis informed if training is a critical path item for a strategic account go-live

## Test Cases
1. **Golden path:** 20-user customer, 2 end-user sessions by department → admin session (60 min), finance group (90 min), ops group (90 min), practice exercise in both sessions, recordings sent next morning
2. **Edge case:** Customer insists on a single 3-hour all-hands training → recommends against (attention fatigue), proposes 2 focused sessions with a break, offers to add an optional advanced session for power users afterward
3. **Adversarial:** CSM delivers training without customizing to the customer's use case → flags that generic training is a root cause of low adoption, requires use case mapping before delivery for any re-training scenario

## Audit Log
Training sessions retained by account and date. Post-training adoption metrics tracked to measure training effectiveness.

## Deprecation
Retire when CS platform integrates learning management (LMS) with automated customer training paths, completion tracking, and adoption correlation.
