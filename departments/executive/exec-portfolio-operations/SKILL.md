---
name: exec-portfolio-operations
description: "Manage day-to-day portfolio operations across MBL Partners' entities. Use when the user says 'portfolio operations', 'portfolio ops', 'operate the portfolio', 'portfolio management', 'portfolio health', 'portfolio check', 'how are the entities doing', 'portfolio status', 'portfolio update', 'entity operations', 'operating model', 'portfolio operating rhythm', 'entity check-in', 'portfolio management system', 'portfolio health check', 'operating cadence', 'portfolio governance', 'manage the portfolio', 'portfolio status report', 'what is happening across the portfolio', 'entity performance summary', 'how is Allevio doing', 'how is HIVE doing', 'how is Column6 doing', 'portfolio operations review', or 'portfolio management review'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <all|MBL|Allevio|HIVE|Column6>] [--focus <performance|operations|people|risk|capital>] [--cadence <weekly|monthly|quarterly>] [--action <status|issue|intervention>]"
---

# Exec Portfolio Operations

Manage day-to-day portfolio operations across MBL Partners' entities — maintaining the operating rhythm, surfacing issues early, coordinating cross-entity resources, and ensuring each portfolio company is executing against its value creation plan. Portfolio operations is the connective tissue between MBL's strategic priorities and what actually happens at Allevio, HIVE, and Column6 on any given week. Dr. Lewis is the operating intelligence layer: he sees across all entities simultaneously, identifies patterns and anomalies, and makes sure Matt Mathison always has an accurate picture of portfolio health without needing to attend every entity-level meeting.

## When to Use
- Weekly portfolio operations review (what's happening this week across all entities)
- Monthly portfolio health check (one level deeper than the weekly; includes people and capital)
- A cross-entity issue or coordination need is identified
- An entity is underperforming and needs more active MBL engagement
- Matt Mathison asks "what's going on across the portfolio right now?"

## Portfolio Operations Framework

```
PORTFOLIO OPERATING RHYTHM:

  Weekly (Monday, before CEO briefing):
    □ Pull current metrics from exec-kpi-dashboard (5 portfolio metrics + entity spotlights)
    □ Review exec-action-tracker (what's overdue; what's due this week)
    □ Review Krista transcripts from the prior week (exec-weekly-briefing)
    □ Identify any Tier 3 alerts (same-day action required)
    □ Feed into exec-ceo-briefing by 8 AM
    
  Monthly (mid-month):
    □ Full entity status by area: Performance, Operations, People, Risk, Capital
    □ Cross-entity issues or coordination needs
    □ Forward look: what's coming in the next 30-60 days that needs preparation
    □ Action item review: what's open, overdue, or due in the next 30 days
    
  Quarterly (portfolio review timing):
    □ Full portfolio review per exec-portfolio-review
    □ Capital allocation review per exec-capital-allocation
    □ Succession health review per exec-succession-planning
    □ THRIVE culture assessment per exec-culture-builder

ENTITY STATUS FRAMEWORK (5 dimensions; monthly):

  PERFORMANCE:
    Allevio: GRR (target >90%); claim ratio (target <87%); clinical enrollment (target >30%)
    HIVE: leased acres; royalties distributed; landowner GRR (target >85%)
    Column6: VCR (target ≥92%); agency NRR (target >95%); Priority A relationship count
    Status: 🟢 On track | 🟡 Watch | 🔴 Action required
    
  OPERATIONS:
    Is the entity operating smoothly day-to-day?
    Action item completion rate (>85% = GREEN; 70-85% = YELLOW; <70% = RED)
    Key deliverables on schedule?
    Any system or infrastructure issues?
    
  PEOPLE:
    Leadership team health (succession; engagement; THRIVE signals)
    Any open key roles?
    Any retention risks?
    Coaching and development on track?
    
  RISK:
    Legal or regulatory exposure? (Any pending matters?)
    Market or competitive risk that changed this month?
    Financial risk: cash position; collections trend; upcoming capital needs
    Customer concentration risk: any single customer >20% of revenue?
    
  CAPITAL:
    Cash position vs. plan
    Upcoming capital requests or needs
    Any unexpected capital draws?
    Spend vs. budget

CROSS-ENTITY COORDINATION:

  Shared resources (when applicable):
    Technology infrastructure: Dr. Lewis manages; entities benefit
    Legal counsel: shared (with entity-level billing)
    Accounting/CFO-level: shared (with entity-level allocation)
    Brand and marketing support: Dr. Lewis coordinates North Vista
    
  Cross-entity learning:
    Pattern discovered at one entity that applies to others
    Example: Column6's VCR recovery protocol → shared as best practice to other entities
    Dr. Lewis facilitates the cross-entity knowledge share
    
  Cross-entity issues:
    Any situation where one entity's decisions affect another entity
    Example: Shared legal counsel has a capacity constraint that affects all three entities
    Dr. Lewis escalates to Matt Mathison for prioritization
```

## Output Format

```markdown
# Portfolio Operations Review — [Month/Year]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Portfolio Health Summary

| Entity | Performance | Operations | People | Risk | Capital | Overall |
|--------|------------|-----------|-------|------|---------|---------|
| Allevio | 🟢/🟡/🔴 | 🟢/🟡/🔴 | 🟢/🟡/🔴 | 🟢/🟡/🔴 | 🟢/🟡/🔴 | 🟢/🟡/🔴 |
| HIVE | ... | ... | ... | ... | ... | ... |
| Column6 | ... | ... | ... | ... | ... | ... |

---

## Key Issues This Month

| Entity | Issue | Dimension | Status | Owner | Due |
|--------|-------|----------|--------|-------|-----|
| [Entity] | [Issue] | [Dimension] | 🟢/🟡/🔴 | [Name] | [Date] |

---

## Action Items Due This Month

[Summary from exec-action-tracker — overdue and due this month]

---

## Cross-Entity Notes

[Any coordination need, shared resource issue, or cross-entity learning worth noting]

---

## Forward Look (Next 30-60 Days)

| Entity | What's coming | Preparation needed |
|--------|-------------|-------------------|
| [Entity] | [Event or deadline] | [What to prepare] |
```

## Output Contract
- Portfolio ops is intelligence, not administration — the monthly portfolio operations review is not a data dump of everything happening at each entity; it is Dr. Lewis's informed synthesis of what matters this month: what's green, what's yellow, what's red, and what requires Matt Mathison's awareness or decision; if Matt could get the same picture by reading entity reports himself, the portfolio ops layer has added no value; the value is the cross-entity pattern recognition and the early signal detection
- Tier 3 alerts bypass the monthly cadence — any metric or event that hits a Tier 3 threshold (from exec-kpi-dashboard) does not wait for the monthly portfolio ops review; it generates a same-day alert to Matt Mathison; the monthly review catches trends; the alert system catches breaks; both are necessary; Dr. Lewis monitors the portfolio daily at the alert level and monthly at the trend level
- Cross-entity isolation is maintained — portfolio operations coordination does not mean sharing confidential entity information across entities; information from Allevio's performance is not shared with HIVE's leadership; information from HIVE's royalty situation is not shared with Column6; cross-entity coordination happens at the MBL level (Matt Mathison + Dr. Lewis), not at the entity leadership level; portfolio isolation is a MBL architecture principle
- HITL required: Matt Mathison receives the monthly portfolio operations review; Tier 3 alerts go to Matt same-day; cross-entity coordination decisions are approved by Matt Mathison before implementation; any entity intervention (increased MBL involvement; capital action; leadership change) is Matt Mathison decision; Dr. Lewis coordinates and prepares but does not decide

## System Dependencies
- **Reads from:** exec-kpi-dashboard (all entity metrics; Tier 3 alerts); exec-action-tracker (open action items; completion rates); exec-weekly-briefing (weekly meeting intelligence inputs); exec-portfolio-review (quarterly full review data); exec-capital-allocation (capital position and deployment status); exec-succession-planning (people health across entities); exec-culture-builder (THRIVE health across entities)
- **Writes to:** Monthly portfolio operations review (SharePoint → ExecutiveSupport → PortfolioOps → [YYYY] → [Month]); exec-ceo-briefing (portfolio ops summary feeds the weekly and monthly CEO briefing); exec-action-tracker (any new cross-entity action items); exec-value-creation-plan (portfolio ops data informs value creation plan progress tracking)
- **HITL Required:** Matt Mathison receives the monthly review; Tier 3 alerts go to Matt same-day; cross-entity coordination decisions require Matt approval; entity interventions are Matt Mathison decisions; Dr. Lewis prepares, monitors, and flags — Matt decides and directs

## Test Cases
1. **Golden path:** Monthly portfolio ops review; Allevio 🟢 overall (GRR 93%; one new claim ratio watch item flagged for next month); HIVE 🟡 overall (leased acres on track; one competing operator situation ongoing — Dr. Lewis monitoring); Column6 🟢 overall (VCR 92.3%; Gap Media onboarding on track); Cross-entity: "Legal counsel flagged capacity constraint for October — all three entities have matters that could come due simultaneously; recommend coordinating timelines to avoid simultaneous peaks." Matt: "Coordinate with legal; see if anything can shift to November." Dr. Lewis logs the coordination action. Review complete; no Tier 3 alerts this month. Monthly portfolio health: 2 green, 1 yellow (HIVE competing operator — known and monitored).
2. **Edge case:** A previously green entity (Column6) has a sudden drop in VCR to 88% mid-month → Tier 3 alert triggered immediately (>30-day gap from 92%+ target); Dr. Lewis same-day briefing to Matt: "Column6 VCR dropped to 88% this week — 4 points below target. Preliminary diagnosis from the Column6 CEO: a targeting parameter change in one of the larger agency IO packages affected delivery rates across 3 campaigns. They're isolating it now. I expect a root cause in 24 hours. I'll update you then. If they can't isolate it within 72 hours, I recommend a direct call with the Column6 CEO." Matt: "Keep me posted. 72-hour window sounds right."
3. **Adversarial:** Matt asks Dr. Lewis to share HIVE financial details with the Allevio CEO because he thinks there's a lesson to learn → Dr. Lewis: "I'd recommend against sharing HIVE-specific financials with the Allevio CEO directly — portfolio isolation means each entity CEO sees their own entity's data, not cross-portfolio data. But I can do this instead: extract the principle we want Allevio to take from the HIVE situation — the lesson without the confidential data — and present it to the Allevio CEO as a general portfolio learning. What's the specific lesson you want to transfer?" Matt: "The cash reserve discipline HIVE uses." Dr. Lewis: "I'll frame it as 'a practice across the portfolio' and share the reserve formula — without naming HIVE."

## Audit Log
All monthly portfolio operations reviews retained by month and year. Tier 3 alert records retained (what triggered; when; who was notified; response). Cross-entity coordination actions retained. Entity intervention records retained (what intervention; who decided; outcome). Matt Mathison review records retained.

## Deprecation
Retire when MBL has a Portfolio Operations function (VP or COO at the holding company level) who manages this work — with Dr. Lewis retaining the technology and AI strategy inputs and Matt Mathison retaining the escalation and decision authority.
