---
name: implementation-tracker
description: "Track and manage a customer implementation project. Use when the user says 'implementation', 'track the implementation', 'implementation status', 'go-live planning', 'implementation project', 'deployment tracker', or 'customer is implementing'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--go-live-date <date>] [--complexity <simple|standard|complex>]"
---

# Implementation Tracker

Track and manage a customer implementation project from kickoff to go-live. Implementation is where promises become reality — missed deadlines, unclear ownership, and silent blockers are the top causes of early churn. This skill structures the project to deliver on time.

## When to Use
- Any customer with a defined implementation phase (not just "activate and use")
- Go-live date was committed during the sales process
- Implementation has multiple stakeholders or workstreams
- Implementation is stalling or behind schedule
- New CSM taking over an in-flight implementation

## Implementation Complexity Tiers

| Tier | Complexity | Timeline | CSM Involvement |
|------|-----------|---------|----------------|
| **Simple** | Activation + basic config | 1–2 weeks | Light — 1-2 calls |
| **Standard** | Config + training + integration | 2–6 weeks | Moderate — weekly calls |
| **Complex** | Multi-system, multi-team, phased rollout | 6–12+ weeks | Heavy — daily/near-daily |

## Implementation Phases (Standard)

### Phase 0: Pre-Implementation (Before Kickoff)
- [ ] Handoff document reviewed
- [ ] Contract requirements understood
- [ ] Technical requirements confirmed
- [ ] Stakeholders identified on customer side
- [ ] Environment provisioned

### Phase 1: Configure and Setup
- [ ] Admin access granted
- [ ] Core configuration complete
- [ ] Integrations tested (if applicable)
- [ ] Data migration complete (if applicable)

### Phase 2: Train and Enable
- [ ] Admin training delivered
- [ ] End user training delivered
- [ ] Training materials provided

### Phase 3: Pilot and Test
- [ ] Pilot user group (5–10% of users) live
- [ ] Feedback collected and addressed
- [ ] Issues resolved

### Phase 4: Go-Live
- [ ] Full user rollout
- [ ] Announcement and change management
- [ ] Go-live support on standby

### Phase 5: Post Go-Live Stabilization
- [ ] 30-day check-in
- [ ] Usage tracking started
- [ ] First health score set

## Output Format

```markdown
# Implementation Tracker — <Account>
**Entity:** <MBL entity> | **Go-live target:** <date> | **Complexity:** Simple / Standard / Complex
**CSM:** <name> | **Customer implementation lead:** <name>

---

## Implementation Status

**Current phase:** Phase <N> — <Phase name>
**Overall status:** 🟢 On track / 🟡 At risk / 🔴 Behind

| Milestone | Target Date | Owner | Status |
|-----------|------------|-------|--------|
| Kickoff meeting | <date> | CSM | ✅ Complete |
| Admin access provisioned | <date> | Customer IT | ✅ Complete |
| Core configuration | <date> | CSM | ⚠️ In progress |
| Integration testing | <date> | Customer IT + CSM | ❌ Not started |
| Admin training | <date> | CSM | Pending |
| Pilot go-live | <date> | Customer | Pending |
| Full go-live | <date> | Both | Pending |

---

## Open Blockers

| Blocker | Owner | Impact on Go-Live | Action |
|---------|-------|-------------------|--------|
| IT access not provisioned | Customer IT Lead | Blocks Phase 1 | CSM escalates to Champion by <date> |
| Integration API key pending | Customer CTO | Blocks Phase 1 | CSM follows up daily |

**Risk assessment:** At current pace, go-live will be <on time / delayed by N days>

---

## Risks

| Risk | Probability | Impact | Mitigation |
|------|------------|--------|-----------|
| IT delays integration by > 1 week | Medium | High | CSM escalates to Champion tomorrow |
| User training attendance low | Low | Medium | Champion sends all-hands invite this week |

---

## Communication Log

| Date | With | Summary | Follow-Up |
|------|------|---------|----------|
| <date> | Champion + IT | Phase 1 status call | CSM follows up on API key |

---

## Go-Live Readiness Checklist

**Technical:**
- [ ] All integrations tested and green
- [ ] Data migration validated (if applicable)
- [ ] Admin accounts active and tested

**User readiness:**
- [ ] All users trained or training scheduled
- [ ] Quick reference guide distributed
- [ ] Help desk / support contact communicated

**Business:**
- [ ] Go-live communication sent to all users
- [ ] Success criteria confirmed with customer

**CSM go-live support:**
- [ ] CSM available on go-live day
- [ ] Rapid response protocol in place for day-1 issues
```

## Output Contract
- Blockers always surfaced with specific action and owner — no passive monitoring
- Go-live date impact always assessed — customers need to know if the timeline is at risk as early as possible
- Go-live readiness checklist always completed before launch — no go-live without a green check
- HITL required: Dr. Lewis notified if go-live will be delayed beyond committed date; CS Manager informed of any complex implementation blockers

## System Dependencies
- **Reads from:** Handoff document, contract deliverables, technical requirements (provided)
- **Writes to:** Nothing (tracker for HITL review and CSM/customer execution)
- **HITL Required:** CS Manager notified if go-live delay > 2 weeks; Dr. Lewis notified if delay impacts a commitment made by Sales; customer notified of any delay before it becomes a surprise

## Test Cases
1. **Golden path:** Standard implementation for a 50-user customer → 5-phase plan, API integration blocker identified early, escalated to champion, go-live on day 34 (within committed 45-day window)
2. **Edge case:** Implementation is blocked entirely for > 2 weeks due to customer IT freeze → escalates to CS Manager, notifies champion, documents delay in CRM, prepares a revised timeline with new go-live date
3. **Adversarial:** CSM declares implementation complete before go-live checklist is done → refuses to mark complete, requires all readiness criteria to be met, explains that premature go-live declaration is a leading cause of early churn

## Audit Log
Implementation trackers retained by account and go-live date. Planned vs. actual timelines documented for onboarding program improvement.

## Deprecation
Retire when project management integration (Asana, Monday.com) is embedded in the CS workflow with automated milestone tracking and status updates.
