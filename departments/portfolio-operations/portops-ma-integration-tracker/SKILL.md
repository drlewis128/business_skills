---
name: portops-ma-integration-tracker
description: "track post-acquisition integration, 100-day integration plan, integration milestone tracker, post-close integration status, THRIVE culture rollout new entity, systems integration post-close, new portfolio company onboarding, M365 tenant onboarding acquisition, Krista.ai connection new entity, GoHighLevel CRM integration acquisition, QuickBooks entity setup, Monday.com board new entity, financial reporting standup new acquisition, compliance baseline new entity, integration health dashboard, integration workstream tracker, Matt 100-day review, integration velocity tracking, integration blocker escalation, new entity team onboarding"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<entity name, close date, workstream focus, or milestone status update>"
---

# M&A Integration Tracker

Tracks the 100-day integration plan for every newly acquired MBL Partners entity across five workstreams: THRIVE culture rollout, systems integration, team integration, financial reporting setup, and compliance baseline. Dr. John Lewis owns the Systems Integration workstream on every deal; Matt Mathison's 100-day review is the primary deliverable gate that marks transition from integration mode to standard portfolio operations.

## When to Use

- An acquisition closes and the 100-day integration clock starts
- A workstream milestone is hit or missed and the health rating needs to be updated
- Matt's 100-day review deliverable package needs to be assembled from workstream snapshots
- A systems integration milestone (M365, Krista.ai, GoHighLevel, QuickBooks) is at risk
- The THRIVE culture rollout encounters resistance and needs to be escalated

## M&A Integration Tracker Framework

```
100-DAY INTEGRATION PLAN OVERVIEW
  Five workstreams: THRIVE Culture | Systems | Team | Financial Reporting | Compliance
  Three milestone gates: Day 1 (Day 1-7) | Day 30 | Day 60 | Day 100
  Integration lead assigned per entity; Matt Mathison is executive sponsor on all integrations
  Health rating per workstream: Green (on track) | Yellow (at risk) | Red (blocked/escalate)

THRIVE CULTURE ROLLOUT
  Day 1-7:   THRIVE introduction — all-hands or leadership alignment session with entity CEO
             THRIVE baseline culture survey distributed (anonymous, 12-question instrument)
  Day 30:    Baseline survey results reviewed with entity CEO and integration lead
             Leadership alignment score reported; gap areas identified
  Day 30-60: Values embedding — THRIVE referenced in team meetings, performance reviews, hiring
             Entity CEO coached on THRIVE as decision filter (by Dr. Lewis or Callie)
  Day 60:    THRIVE pulse survey #1 — early integration sentiment check
             Culture gap analysis shared with Matt in Day 60 check-in
  Day 90:    THRIVE alignment score vs. MBL portfolio average (benchmark)
  Day 100:   Culture integration assessment delivered in Matt's 100-day review package
  RED FLAG:  Entity CEO active resistance to THRIVE = escalate to Matt immediately
             THRIVE misalignment is a kill criterion — may trigger leadership change discussion

SYSTEMS INTEGRATION WORKSTREAM — DR. LEWIS (EVERY DEAL)
  Day 1-30 (Foundation):
    [ ] M365 tenant: entity admin accounts provisioned; email routing confirmed
    [ ] GoHighLevel CRM: entity sub-account created; existing contacts migrated
    [ ] Monday.com: entity board created; team members added; first sprint seeded
    [ ] QuickBooks: entity chart of accounts aligned to MBL portfolio standard
    [ ] Systems inventory finalized (handoff from DD Technology workstream)
    [ ] Data backup baseline confirmed; recovery test scheduled
  Day 31-60 (Integration):
    [ ] Krista.ai: integration scope defined for entity; meeting recording activated
    [ ] Meeting intelligence workflow live (Krista recording → summary → Monday push)
    [ ] GoHighLevel automation workflows configured (entity-specific nurture sequences)
    [ ] Financial reporting pipeline: entity QuickBooks → MBL consolidation live
    [ ] Tech debt remediation plan (from DD findings) sequenced into engineering roadmap
    [ ] Security baseline initiated: MFA enforced, endpoint protection deployed
  Day 61-100 (Optimization):
    [ ] AI/automation opportunities from DD scan prioritized and added to roadmap
    [ ] Single sign-on (M365 identity) enforced across all entity-facing systems
    [ ] Security baseline complete: endpoint, access controls, MFA, security awareness
    [ ] Integration runbook documented and handed to entity CEO
    [ ] Dr. Lewis sign-off on Systems workstream for Matt's 100-day review

TEAM INTEGRATION
  Day 1-7:   Org chart finalized; reporting lines confirmed; entity CEO briefed on MBL cadence
  Day 30:    Key person retention plans executed (offers signed, if needed)
  Day 30:    Cross-portfolio introductions: entity CEO meets Matt, Dr. Lewis, peer CEOs
  Day 60:    Role clarity confirmed for all management-level positions; gaps identified
  Day 100:   Team health assessment: retention risk, open roles, succession gaps

FINANCIAL REPORTING SETUP
  Day 1-7:   QuickBooks entity account activated; chart of accounts aligned
  Day 30:    First management reporting package delivered in MBL format
  Day 30:    Management fee structure documented; intercompany billing activated
  Day 60:    Financial reporting cadence established (monthly close, weekly cash report)
  Day 100:   Financial reporting fully integrated into MBL portfolio dashboard

COMPLIANCE BASELINE
  Day 1-30:  Entity regulatory filings confirmed current (state, federal, industry-specific)
  Day 30:    Insurance review: coverage types, limits, gaps vs. MBL portfolio standard
  Day 60:    Entity-specific compliance requirements documented; calendar activated
  Day 100:   Compliance baseline clean — any gaps escalated with remediation timeline

INTEGRATION VELOCITY TRACKING
  Total milestones planned vs. completed by day
  Milestone completion rate (%) per workstream and overall
  Open blockers count vs. resolved blockers count
  Matt escalations to date (should be <3 for a healthy integration)
  Integration health overall: Green | Yellow | Red

MATT MATHISON 100-DAY REVIEW TEMPLATE
  Required deliverables (all must be complete before review meeting):
    [ ] Workstream health summary — all 5 workstreams, final status
    [ ] Milestone velocity scorecard — total hit rate
    [ ] Top 3 wins from integration period
    [ ] Top 3 risks or open items requiring Year 1 attention
    [ ] Systems integration status — Dr. Lewis sign-off required
    [ ] THRIVE culture score at Day 100 vs. baseline
    [ ] Value creation initiatives identified during integration (AI, ops, revenue)
    [ ] 100-day to Year 1 roadmap — next phase priorities and owners
```

## Output Format

```markdown
## Integration Status — [ENTITY NAME] | Day [N] of 100

**Overall Health:** [Green — On Track / Yellow — At Risk / Red — Blocked]
**Milestone Velocity:** [N]% ([X] of [Y] milestones completed)
**Close Date:** [DATE] | **Day 100 Target:** [DATE]

| Workstream | Owner | Health | Milestones Hit/Planned | Blocker |
|------------|-------|--------|------------------------|---------|
| THRIVE Culture | [Name] | Green | X/Y | None |
| Systems Integration | Dr. Lewis | Yellow | X/Y | [describe] |
| Team Integration | [Name] | Green | X/Y | None |
| Financial Reporting | [Name] | Green | X/Y | None |
| Compliance Baseline | [Name] | Green | X/Y | None |

**Matt Escalations This Week:** [list or "None"]
**Day 100 Review Prep:** [X of Y deliverables complete]
**Next Week Priorities (Top 3):** [list across workstreams]
**THRIVE Score:** [current score vs. baseline if survey complete]
```

## Output Contract

- Integration health ratings (Green/Yellow/Red) are based on objective milestone velocity and blocker presence, not subjective feel — a workstream with one missed milestone and no active blocker is Yellow, not Green, and the rating must not be inflated to avoid escalation. Matt uses these ratings to allocate his own attention, and a false Green delays his intervention until the problem is materially larger.
- The Systems Integration workstream is owned by Dr. John Lewis on every deal with no exceptions — this ensures continuity from the DD Technology assessment through post-close integration, and means Dr. Lewis must personally sign off on the systems section of Matt's 100-day review before it is delivered. GoHighLevel and Monday.com milestones are tracked explicitly because without them the entity operates outside MBL's portfolio visibility layer.
- THRIVE culture rollout resistance from entity leadership is a Red flag that must be escalated to Matt Mathison immediately — it is not an integration nuisance to be managed at the workstream level. THRIVE misalignment was identified in the DD culture audit as a kill criterion, and resistance during the first 100 days is a signal that the leadership fit thesis may have been wrong. Matt must decide whether to proceed with coaching or initiate a leadership change discussion.

## System Dependencies

**Reads from:** DD tracker (tech debt findings, systems inventory, THRIVE culture audit baseline); QuickBooks (entity financial data and chart of accounts setup); Monday.com (milestone task status and blocker tracking); Krista.ai (meeting intelligence activation status)
**Writes to:** Monday.com integration board (milestone tasks and status); Matt's 100-day review package (M365 document); portfolio health dashboard (entity status post-close); THRIVE culture baseline tracker (survey results for Callie's culture program)
**HITL Required:** Dr. Lewis signs off on Systems workstream status before each weekly report; Matt receives any Red workstream escalation same day; Matt's 100-day review requires Dr. Lewis and entity CEO review before delivery to Matt

## Test Cases

- **Golden path:** Day 45, all workstreams Green, velocity at 92%, GoHighLevel and Monday.com live by Day 28, Krista.ai recording active, THRIVE pulse survey #1 complete with 4.1/5.0 alignment score. Weekly report assembled and delivered to Matt in under 10 minutes.
- **Edge case:** Day 58, Financial Reporting workstream Red because QuickBooks entity chart of accounts has not been aligned (prior finance lead left). Escalation brief to Matt generated same day, entity CEO accountable, interim finance resource identified, revised milestone date set.
- **Adversarial:** Entity CEO actively blocks the THRIVE all-hands introduction at Day 7, citing "company culture doesn't need to change." Culture workstream drops to Red immediately, Matt notified with recommended response options (coaching conversation vs. leadership escalation). This is a THRIVE misalignment signal and a potential kill criterion for the integration thesis.

## Audit Log

Every milestone status change, health rating update, and Matt escalation is timestamped and attributed to the person making the update. The 100-day review package is version-controlled — each draft is retained with a timestamp and the names of reviewers (Dr. Lewis, entity CEO) who approved it before delivery to Matt. Integration velocity metrics are frozen at Day 100 as a permanent performance record in the deal file and used for portfolio-level integration benchmarking over time.

## Deprecation

This skill covers the 100-day integration window only. After Day 100 and Matt's sign-off on the review, ongoing entity management transitions to the standard portfolio operations cadence (portfolio health monitor, entity CEO monitor, quarterly review). This skill is marked complete and archived when Matt signs off on the 100-day review deliverable — it is not a standing operational tool and should not be used beyond the integration window.
