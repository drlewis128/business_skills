---
name: cs-onboarding-plan
description: "Build a 30-60-90 day onboarding plan for a new Customer Success Manager hire. Use when the user says 'onboard a new CSM', 'CS onboarding plan', 'new CSM onboarding', '30-60-90 for CS', 'CSM ramp plan', or 'how do we onboard a new CS hire'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<csm-name> [--entity <name>] [--level <entry|mid|senior>] [--book-size <N>]"
---

# CS Onboarding Plan (New CSM)

Build a structured 30-60-90 day onboarding plan for a new Customer Success Manager. CSMs who onboard well build relationships faster, prevent early churn in their book, and hit full productivity in 60-90 days instead of 6 months.

## When to Use
- New CSM starts (build before Day 1)
- CS Manager designing the onboarding program
- Evaluating why recent CS hires are slow to ramp
- Backfill hire taking over an existing book of accounts

## Onboarding Philosophy for CS Roles
- **Listen before acting** — New CSMs should shadow and learn before taking ownership
- **Internal first, customer-facing second** — Know the product, the playbook, and the team before touching customer accounts
- **Warm handoff, not cold transfer** — Every account handoff should be done with the outgoing CSM or manager on the call
- **Shadow the best, not just the average** — Put new CSMs with top performers in the first 30 days

## 30-60-90 Structure

### Days 1–30: Learn (Foundation)
Goals: Know the product, know the CS motion, know the existing accounts
- Complete product training and certification
- Shadow 5+ customer calls (listen only)
- Read all success plans for accounts in their future book
- Understand the CS playbook, tools, and KPIs
- Begin meeting account stakeholders (as a shadow, not owner)

### Days 31–60: Transition (Guided Ownership)
Goals: Begin owning accounts with manager support
- Lead 50% of check-in calls with manager or senior CSM support
- Take primary ownership of lower-complexity accounts
- Deliver first training or QBR with manager present
- Submit first weekly account health report

### Days 61–90: Full Ownership (Independent)
Goals: Own the full book; demonstrate key CS competencies
- Own all accounts (with manager availability, not involvement)
- Deliver first QBR independently
- Identify and escalate first at-risk account
- Submit renewal forecast for next-quarter renewals

## Output Format

```markdown
# CS Onboarding Plan — <CSM Name>
**Manager:** <name> | **Start date:** <date> | **Entity:** <MBL entity>
**Book of business:** <N accounts, $<N>M ARR> | **Level:** Entry / Mid / Senior

---

## Days 1–30: Foundation

**Week 1: Orientation and Product**
| Day | Activity | Owner | Done? |
|-----|---------|-------|-------|
| 1 | HR orientation; system access; team intros | HR + Manager | [ ] |
| 1–3 | Product training (core modules) | Product team | [ ] |
| 2 | CS playbook review | Manager | [ ] |
| 3–5 | Shadow 3 customer calls (listen only) | Senior CSM | [ ] |
| 5 | Success plan for each account in their book | New CSM + Manager | [ ] |

**Weeks 2–4: Customer Immersion**
- [ ] Shadow 5 more customer calls across different use cases
- [ ] Review last 3 QBR packages for Tier 1 accounts
- [ ] Interview 3 existing customers (introduce yourself, ask their goals)
- [ ] Review all open tickets and escalations for accounts in book
- [ ] Product certification completed

**30-Day Check-In Milestones:**
- [ ] Can articulate the CS playbook and health scoring model
- [ ] Has read every active success plan in their book
- [ ] Has been introduced to every Tier 1 account champion
- [ ] Product certified

---

## Days 31–60: Guided Ownership

**Goals:** Own half the book; deliver first QBR

**Account Transitions:** (schedule warm handoff calls for each)
| Account | Tier | Handoff Date | Status |
|---------|------|------------|--------|
| <Account> | 2 | <date> | Not started |
| <Account> | 1 | <date> | Scheduled |

**Key Milestones:**
- [ ] First check-in call led (manager on line)
- [ ] Full 50% book transition complete
- [ ] First QBR delivered (with manager present)
- [ ] First health report submitted

**60-Day Check-In:**
- Health of transferred accounts: No new accounts at Red
- Call quality: Manager observation score ≥ 3/5
- Forecast accuracy: First renewal forecast submitted

---

## Days 61–90: Full Ownership

**Goals:** Own the full book; demonstrate CS competencies

**Key Milestones:**
- [ ] 100% book transferred and owned
- [ ] First solo QBR completed
- [ ] First at-risk account identified and escalated appropriately
- [ ] Renewal forecast submitted for next quarter

**90-Day Performance Review:**
- Account health: No accounts declined from Green to Red without manager notification
- Activity compliance: Check-in cadence met for ≥ 90% of Tier 1-2 accounts
- First QBR quality: Manager rating ≥ 3/5
- NRR impact: No churns attributable to transition period (context-dependent)

---

## Resources

| Resource | Location |
|---------|---------|
| CS Playbook | [Link] |
| Success Plan templates | [Link] |
| Health Scoring guide | `customer-health-scorer` |
| QBR template | `qbr-preparer` |
| CS tool logins | [Link] |
```

## Output Contract
- Ramp structure always explicit — no ambiguity about when new CSM is expected to own accounts
- Account handoff plan always documented — warm handoffs prevent relationship gaps
- 90-day performance review criteria always defined before Day 1
- HITL required: Manager reviews and approves plan; any account handoff > $75K ACV requires manager participation in handoff call

## System Dependencies
- **Reads from:** CS playbook, account list, success plans (provided)
- **Writes to:** Nothing (onboarding plan for manager and new CSM)
- **HITL Required:** CS Manager approves onboarding plan; Dr. Lewis aware of any backfill hire taking over strategic accounts > $100K ACV

## Test Cases
1. **Golden path:** Mid-level CSM, 25-account book, $2.2M ARR → 30/60/90 plan, 12 account warm handoffs staged over 60 days, product certification in Week 2, first solo QBR by Day 70
2. **Edge case:** Backfill hire taking over accounts from a departing CSM → accelerates relationship introduction phase (Days 1-30 focus on meeting customers, not internal training), adds double-speed account review to surface any issues the outgoing CSM didn't flag
3. **Adversarial:** Manager wants new CSM to take full ownership of all accounts on Day 1 to reduce disruption → flags that this approach leads to relationship gaps and early churn, recommends phased handoff, offers a compressed 21-day plan as a middle ground

## Audit Log
CSM onboarding plans retained by hire date and manager. 90-day outcomes tracked for onboarding program improvement.

## Deprecation
Retire when CS enablement platform provides automated onboarding paths with milestone tracking, account transition management, and manager checkpoints.
