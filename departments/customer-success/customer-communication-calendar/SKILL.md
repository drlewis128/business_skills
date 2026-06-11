---
name: customer-communication-calendar
description: "Build a proactive customer communication calendar for a CS team. Use when the user says 'communication calendar', 'proactive outreach plan', 'customer touchpoint plan', 'CS communication plan', 'when do we communicate with customers', or 'proactive CS communication'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--tier <1|2|3|all>] [--horizon <quarterly|annual>]"
---

# Customer Communication Calendar

Build a proactive customer communication calendar for a CS team. Reactive CS teams only talk to customers when something is wrong. Proactive CS teams maintain a cadence that builds trust, surfaces issues early, and creates natural moments for expansion and advocacy conversations.

## When to Use
- Building a new CS team's engagement model
- CS team is too reactive (customer-driven, not CSM-driven)
- Before an annual planning cycle (set the communication calendar for the year)
- CSM needs structure for managing a large book of accounts

## Communication Types

| Type | Purpose | Who Initiates |
|------|---------|--------------|
| **Check-in call** | Relationship maintenance; surface any issues | CSM |
| **QBR** | Strategic value review; renewal and expansion | CSM |
| **Product update** | Share new features relevant to the customer | CSM / Marketing |
| **Renewal outreach** | Start the renewal conversation | CSM |
| **Escalation follow-up** | Ensure issue is resolved and relationship repaired | CSM |
| **Milestone celebration** | Celebrate a customer achievement | CSM |
| **Executive check-in** | Exec sponsor relationship touch | Exec Sponsor |

## Communication Cadence by Tier

### Tier 1 (Strategic — High Touch)
- Weekly or bi-weekly check-in calls
- Quarterly QBR
- Monthly product updates (personalized, not blast)
- Bi-annual executive check-in
- Milestone celebrations (proactive)

### Tier 2 (Growth — Managed)
- Monthly check-in calls
- Semi-annual QBR (or QBR on request)
- Quarterly product updates (curated)
- Annual renewal conversation start (120 days out)

### Tier 3 (Scale — Digital)
- Monthly email newsletter (automated)
- Quarterly webinar invite
- Annual renewal communication (automated)
- In-product messages (automated)

## Output Format

```markdown
# Customer Communication Calendar — <Entity>
**Period:** <Q or Full Year> | **Date:** <date>

---

## Tier 1 Communication Calendar (High-Touch)

| Account | Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec |
|---------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| <Account> | Call | Call | QBR | Call | Renewal | QBR | Call | Call | QBR | Call | Renewal | QBR |
| <Account> | Call | Call | Call | QBR | | | | | | | | |

---

## Standard Tier 1 Schedule

| Month | Activity | Notes |
|-------|---------|-------|
| January | Check-in call + goals review | Post-holiday reconnect; set priorities for H1 |
| March | Q1 QBR | 90-day health and success plan review |
| April | Product update (personalized) | Spring release notes relevant to this account |
| June | Q2 QBR | Mid-year check-in; renewal watch begins if < 6 months |
| August | Exec sponsor check-in | Dr. Lewis or CS Manager touches with economic buyer |
| September | Q3 QBR | Pre-renewal strategy if renewal in Dec/Jan |
| October | Renewal conversation initiated (if Dec/Jan renewal) | 90-day window |
| December | Q4 QBR / Year-end wrap | Full year review; plan for next year |

---

## Tier 2 Communication Calendar

| Month | Activity |
|-------|---------|
| February | Monthly check-in |
| April | Quarterly product update email |
| May / June | Semi-annual business review |
| August | Renewal conversation initiated (90 days before renewal) |
| November / December | End-of-year outreach |

---

## Tier 3 (Automated)

| Trigger | Communication | Channel |
|---------|-------------|---------|
| Monthly | Newsletter with product tips | Email (automated) |
| Quarterly | Webinar invite | Email (automated) |
| 90 days before renewal | Renewal email sequence | Email (automated) |
| Feature launch | In-product announcement | In-app |
| <50% usage | Low adoption nudge | In-app + email |

---

## CSM Activity Tracker (Month View)

| CSM | Account | Type | Date | Status |
|-----|---------|------|------|--------|
| <CSM> | <Account> | QBR | <date> | Scheduled |
| <CSM> | <Account> | Check-in | <date> | Completed |
| <CSM> | <Account> | Renewal | <date> | Overdue ⚠️ |
```

## Output Contract
- Cadence defined per tier — no one-size-fits-all communication schedule
- Automated vs. personal communication always distinguished
- Overdue communications always flagged — proactive communication that doesn't happen is a missed opportunity
- HITL required: CS Manager reviews calendar before the quarter begins; Dr. Lewis approves exec sponsor contact schedule

## System Dependencies
- **Reads from:** Customer tier assignments, renewal dates, CS team calendar (provided or from CS platform)
- **Writes to:** Nothing (calendar for HITL review and CS team execution)
- **HITL Required:** CS Manager reviews and approves the quarterly calendar; Dr. Lewis approves his own exec contact schedule

## Test Cases
1. **Golden path:** Quarterly Tier 1-2 communication calendar for 20-account CS book → 8 Tier 1 with monthly touchpoints and quarterly QBRs, 12 Tier 2 with monthly calls and semi-annual reviews, 3 overdue items flagged
2. **Edge case:** Single CSM managing all tiers → prioritizes Tier 1, recommends automating all Tier 3 communication immediately to free up capacity
3. **Adversarial:** CSM wants to reduce Tier 1 check-in frequency from bi-weekly to monthly for all accounts → flags that frequency reduction for Tier 1 increases churn risk, recommends reviewing individual account health before adjusting cadence

## Audit Log
Communication calendars retained by CSM and quarter. Completed vs. missed touchpoints tracked.

## Deprecation
Retire when CS platform provides automated communication scheduling with cadence management by tier and individual account settings.
