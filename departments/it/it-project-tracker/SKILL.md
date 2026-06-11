---
name: it-project-tracker
description: "Track IT projects, timelines, and status. Use when the user says 'IT project', 'IT initiative', 'technology project', 'IT project status', 'IT roadmap progress', 'project delivery', or 'IT milestone tracking'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--project <name>] [--format <status|full|brief>]"
---

# IT Project Tracker

Track IT projects from initiation through delivery. IT projects that lack structured tracking run over budget, miss deadlines, and fail to deliver business value. This skill creates and maintains the project status view that keeps stakeholders informed and teams accountable.

## When to Use
- Tracking an in-progress IT project (infrastructure upgrade, system migration, tool deployment)
- Weekly or bi-weekly project status update
- Stakeholder briefing on IT program status
- Post-project retrospective
- IT project portfolio review (what's in flight?)

## Project Phases

| Phase | Activities | Deliverable |
|-------|----------|------------|
| **Initiation** | Scope, objectives, stakeholders, budget | Project charter |
| **Planning** | Tasks, timeline, resources, dependencies, risks | Project plan |
| **Execution** | Build, configure, test, train | Working deliverable |
| **Testing/UAT** | User acceptance testing, issue resolution | Sign-off |
| **Deployment** | Go-live, cutover, monitoring | System live |
| **Close** | Documentation, retrospective, lessons learned | Close report |

## Status Indicators

| Color | Meaning |
|-------|---------|
| 🟢 Green | On track — timeline and budget within 5% of plan |
| 🟡 Yellow | At risk — potential delay or budget overrun flagged; mitigation in progress |
| 🔴 Red | Off track — timeline or budget breach confirmed; escalation required |
| ⚫ Complete | Project closed |

## Output Format

```markdown
# IT Project Status — <Project Name>
**Entity:** <MBL entity> | **Project Manager:** <name>
**Start date:** <date> | **Target completion:** <date> | **Status:** 🟢 / 🟡 / 🔴

---

## Executive Summary

**What this project delivers:** <One sentence — what changes for the business when this is done>
**Status this week:** <Two sentences — what's done, what's next, any risks>
**Key ask:** <If any — decision needed, resource needed, unblocked needed>

---

## Milestone Tracker

| Milestone | Planned Date | Actual/Forecast | Status | Owner |
|-----------|------------|----------------|--------|-------|
| Project kickoff | <date> | <date> | ✅ Done | PM |
| Infrastructure procurement | <date> | <date> | ✅ Done | IT |
| Configuration complete | <date> | <date + 3 days> | 🟡 Delayed | IT Eng |
| User acceptance testing | <date> | <date> | 🔵 Not started | IT + Business |
| Go-live | <date> | <date> | 🔵 Not started | IT |

---

## Budget Tracking

| Category | Budgeted | Spent | Committed | Remaining | Status |
|---------|---------|-------|----------|---------|--------|
| Software licenses | $<N> | $<N> | $<N> | $<N> | On budget |
| Professional services | $<N> | $<N> | $<N> | $<N> | 🟡 +$2K overrun |
| Internal IT hours | <N> hrs | <N> hrs | — | <N> hrs | On track |
| **Total** | $<N> | $<N> | $<N> | $<N> | |

---

## Risk Register

| Risk | Likelihood | Impact | Mitigation | Owner |
|------|-----------|--------|-----------|-------|
| Vendor delivery delay | Medium | High | Escalation contact identified | PM |
| User adoption resistance | Low | Medium | Training planned; champions identified | IT + HR |

---

## Open Issues

| Issue | Priority | Owner | Due | Status |
|-------|---------|-------|-----|--------|
| API integration failing in test environment | High | IT Engineer | <date> | In progress |

---

## This Week / Next Week

**This week completed:**
- [Achievement 1]
- [Achievement 2]

**Next week planned:**
- [Action 1]
- [Action 2]
```

## Output Contract
- Executive summary always leads — stakeholders should get the story in 3 sentences
- Budget tracking always includes committed (not just spent) — encumbrances matter
- Every open issue and risk has a named owner and due date
- HITL required: Dr. Lewis reviews status for any IT project > $25K or affecting financial systems; Matt Mathison briefed on IT projects > $50K or portfolio-wide scope

## System Dependencies
- **Reads from:** Project plan, budget data, vendor contracts, task tracker (provided)
- **Writes to:** Nothing (status report for HITL review and stakeholder distribution)
- **HITL Required:** Dr. Lewis reviews any 🔴 Red status project within 24 hours; Matt Mathison briefed on projects > $50K or cross-entity scope

## Test Cases
1. **Golden path:** ERP migration project, week 8 of 16 → milestone tracker shows 4 complete, 1 delayed (configuration), risk register with 2 active risks, budget at 95% of planned spend (on track), clear next-week actions
2. **Edge case:** Project goes Red due to vendor delays → immediately surfaces to Dr. Lewis with three options: (1) negotiate expedited delivery with vendor, (2) bring in backup resource, (3) extend timeline with revised business impact
3. **Adversarial:** Scope creep added mid-project without budget approval → flags as scope change requiring formal approval, documents original scope vs. requested addition, estimates cost and timeline impact, routes for IT Manager + Finance approval

## Audit Log
Project status reports retained by project and date. Final budget vs. actuals documented at close. Lessons learned captured in post-mortem.

## Deprecation
Retire when entity uses a project management platform (Monday.com, Asana, Jira) for IT project tracking with native status dashboards, milestone tracking, and stakeholder notifications.
