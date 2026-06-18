---
name: exec-value-creation-plan
description: "Build and track value creation plans for MBL Partners portfolio companies. Use when the user says 'value creation plan', 'VCP', 'value creation', 'portfolio value creation', 'how do we create value at', 'value creation roadmap', 'build the VCP', 'entity value creation', 'investment thesis execution', 'thesis execution', 'how do we execute the thesis', 'value drivers', 'what are the value levers', 'value creation milestones', 'operational value creation', 'value creation tracking', 'build the value plan', 'value driver analysis', 'create the value creation roadmap', 'how do we grow this entity', 'what are the growth levers', 'growth plan', 'entity growth strategy', 'ROI from the acquisition', 'exit value creation', or 'how do we maximize value before exit'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|Column6>] [--horizon <1-year|3-year|exit>] [--focus <revenue|margin|operations|people|AI>] [--action <build|review|update|milestone-check>]"
---

# Exec Value Creation Plan

Build and track value creation plans for MBL Partners portfolio companies — translating the acquisition thesis into a specific, actionable roadmap with measurable milestones that creates demonstrable LP returns. A value creation plan (VCP) is the bridge between "why we acquired this company" and "what we're doing every quarter to make it worth more." Every VCP at MBL is THRIVE-filtered, ROI-grounded, and built around the portfolio North Star metrics. A VCP that lives in a deck and is never operationalized is not a plan — it is a document.

## When to Use
- A new entity joins the portfolio (VCP built within 90 days of close per exec-integration-manager)
- Annual planning (VCP updated each January per exec-strategic-planning)
- A significant market change or performance miss requires VCP revision
- Exit planning is initiated (VCP becomes the exit preparation roadmap per exec-exit-planning)
- Matt Mathison asks "what's our value creation story for [entity]?"

## Value Creation Plan Framework

```
VCP STRUCTURE:

  SECTION 1 — ACQUISITION THESIS (why we bought this):
    What we believed when we acquired this entity:
    □ Core hypothesis: [The fundamental value creation opportunity we saw]
    □ Key assumptions: [3-5 assumptions the thesis depends on]
    □ Risk factors acknowledged: [What could go wrong and why we believed we could manage it]
    □ Target return: [IRR target; multiple target; timeline]
    
  SECTION 2 — VALUE DRIVERS (where the value comes from):
    For each entity, the specific drivers that will create value:
    
    Allevio value drivers:
      □ Employer group expansion (GRR ×  growth = NRR improvement)
      □ Claim ratio improvement (clinical intervention → margin expansion)
      □ Clinical program enrollment (preventive care → claim ratio → margin)
      □ AdvancedMD / RCM optimization (collection rate improvement)
      □ Technology-enabled operations (Dr. Lewis / Krista.ai → efficiency)
      □ M&A pipeline (adjacent employer group acquisitions)
      
    HIVE Partners value drivers:
      □ Leased acreage expansion (more acres under management)
      □ Production optimization (wellhead value per acre)
      □ Landowner GRR (retention drives royalty stream stability)
      □ Royalty management efficiency (Covercy platform optimization)
      □ Utah regulatory landscape management (tax and severance optimization)
      
    Column6 value drivers:
      □ Agency NRR expansion (Priority A relationship depth × wallet share)
      □ VCR improvement (delivery quality → price premium)
      □ Holding company expansion (one agency → sibling agencies)
      □ CPM margin improvement (programmatic optimization)
      □ Platform capability expansion (new ad formats; new inventory)
      □ Technology-enabled efficiency (campaign operations automation)
      
  SECTION 3 — VALUE CREATION ROADMAP (what we're doing; by when):
    Quarter-by-quarter milestones across the value drivers.
    Each milestone: specific; measurable; owned by one person; has a due date.
    
    Example (Allevio, Q3 2026):
      □ Expand from 12 to 15 employer groups (Morgan Sills, due September 30)
      □ Clinical enrollment from 28% to 33% (Allevio CEO, due September 30)
      □ AdvancedMD collection rate from 94% to 96% (COO, due September 30)
      □ Krista.ai Phase 2 deployment (Dr. Lewis, due August 31)
      
  SECTION 4 — VALUE CREATION METRICS (how we know we're winning):
    North Star: [Entity NRR or equivalent]
    Leading indicators: [The metrics that predict the North Star]
    Lagging indicators: [The metrics that confirm the North Star]
    EBITDA impact: [How value creation translates to exit multiple]
    
  SECTION 5 — RISKS TO THE VCP (what could derail it):
    For each value driver, what's the risk that it doesn't deliver?
    THRIVE-filtered: Is there an Integrity risk in any of the value creation strategies?
    Contingency: If Risk X materializes, the contingency is Y.
    
  SECTION 6 — EXIT VALUE STORY (what this will look like at exit):
    Target exit timeline: [Year]
    Target EBITDA at exit: [$X]
    Target multiple: [Nx]
    Target enterprise value: [$X]
    The value creation narrative for a potential buyer: [3 sentences on the story]
```

## Output Format

```markdown
# Value Creation Plan — [Entity] — [Year]
**Managed by:** Dr. Lewis | **Approved by:** Matt Mathison
**Acquisition close:** [Date] | **VCP horizon:** [1/3/5 years]

---

## Acquisition Thesis

[2-3 sentences on why MBL acquired this entity and what the core value opportunity was]
**Target return:** [IRR] over [timeline]
**Key assumption:** [The assumption the entire thesis rests on]

---

## Value Drivers and Milestones

| Value Driver | Current | Target | Owner | Timeline |
|-------------|---------|--------|-------|---------|
| [Driver] | [Metric] | [Target] | [Name] | [Quarter] |
| [Driver] | ... | ... | ... | ... |

---

## Quarterly Milestone Tracker

| Quarter | Milestone | Owner | Status |
|---------|----------|-------|--------|
| Q[N] [Year] | [Specific milestone] | [Name] | 🟢/🟡/🔴 |

---

## Value Creation Health

**North Star metric:** [Metric + current + target]
**VCP vs. plan:** [On track / Ahead / Behind]
**Top risk to the VCP:** [Specific risk + mitigation]

---

## Exit Value Story

**Target exit:** [Year] | **Target EV:** [$X]
**The buyer narrative:** [3 sentences on what the VCP creates that a buyer would pay a premium for]
```

## Output Contract
- VCP milestones are the same as operating commitments — a value creation plan milestone that is not logged in exec-action-tracker is a milestone that will not be tracked; Dr. Lewis converts every VCP milestone into an action item with one owner, one due date, and one definition of done; the VCP is not a strategy document that sits on SharePoint — it is a live operating instrument that feeds the monthly portfolio operations review and the quarterly board package
- The acquisition thesis is revisited quarterly — value creation assumptions change; market conditions change; the entity changes; if the thesis that drove the acquisition is no longer valid, the VCP needs to be updated; Dr. Lewis reviews the thesis quarterly against current data and flags any assumption that is no longer holding; Matt Mathison decides what to do when an assumption breaks ("pivot the VCP," "hold and monitor," "accelerate exit")
- Exit value story is built from Day 100 — every VCP includes a section on the exit value narrative from the beginning; not because exit is imminent, but because building toward a clear exit story focuses every investment decision: "Does this action increase our EBITDA, our multiple, or both?"; if a value creation action doesn't contribute to either, it needs a different justification; Dr. Lewis keeps the exit value story current and uses it to filter capital deployment decisions
- HITL required: Matt Mathison reviews and approves the VCP at launch and annually; quarterly milestone reviews are part of the portfolio review (exec-portfolio-review); Matt approves any VCP revision that changes the return target or timeline; any VCP milestone that is RED for two consecutive quarters triggers a Matt Mathison conversation about the value driver; exit value story is reviewed by Matt and board annually

## System Dependencies
- **Reads from:** exec-strategic-planning (entity strategy feeds VCP direction); exec-capital-allocation (capital available for VCP execution); exec-portfolio-review (quarterly milestone status); exec-kpi-dashboard (current entity metrics vs. VCP targets); exec-deal-thesis-builder (acquisition thesis at close — VCP's starting point); exec-exit-planning (VCP feeds the exit preparation roadmap)
- **Writes to:** VCP documents (SharePoint → ExecutiveSupport → ValueCreation → [Entity] → [YYYY]); exec-action-tracker (VCP milestones as action items); exec-portfolio-operations (VCP status as a portfolio ops health indicator); exec-board-communication (VCP update as part of the board package); exec-lp-reporting (value creation progress as part of LP quarterly report)
- **HITL Required:** Matt Mathison reviews and approves the VCP at launch and annually; quarterly milestone reviews are in exec-portfolio-review (Matt's meeting); VCP revisions require Matt approval; RED milestone for two consecutive quarters triggers Matt conversation; exit value story reviewed by Matt and board annually

## Test Cases
1. **Golden path:** Allevio VCP year 2 annual update; Dr. Lewis reviews Q4 milestone completion: employer groups grew from 12 to 15 (3-year plan milestone hit a year early); claim ratio improved to 86% (ahead of 87% target); clinical enrollment at 33% (behind 35% target — 2 points short); VCP update: "Employer group expansion ahead of plan — revise 3-year target from 25 to 30 groups; accelerate clinical enrollment target to compensate for the short Q4 result; maintain AdvancedMD collection rate target." Exit value story updated: "An acquirer in [Year+2] will see: a 20-group MSO with GRR >92%, claim ratio <85%, and a clinical program enrollment of 40% — a rare combination of revenue stability and clinical quality that commands a premium multiple." Matt approves. VCP updated. Board receives the update in the annual board package.
2. **Edge case:** A key VCP assumption breaks — the Arizona employer market consolidates faster than expected and the employer group expansion target is no longer achievable → Dr. Lewis flags immediately: "The Allevio VCP's employer group expansion target assumed 18+ employer groups available to acquire in the Phoenix metro. That assumption is no longer holding — three competitors have moved aggressively and we're seeing 12, not 18. The VCP needs revision. Options: (1) Pivot to a geographic expansion thesis (Tucson; Flagstaff); (2) Accelerate the M&A thesis (acquire a smaller MSO with existing groups); (3) Revise the target down and hold the capital. Matt, which direction do you want to take this?" Matt: "Present option 1 and 2 with rough numbers. Let's decide at the next board."
3. **Adversarial:** LP asks to see the Allevio VCP directly → Dr. Lewis: "This is a Matt Mathison decision on what to share with this LP. My recommendation: share the 'exit value story' section and the high-level value driver summary — those communicate the investment thesis without disclosing the specific operational milestones or the detailed financial model that represents MBL's proprietary strategy. Sharing the full VCP with an LP (including the detailed milestone tracker) creates a negotiating disclosure risk if the LP ever references it in a fund discussion. I'd share the narrative; hold the playbook." Matt: "Agreed. Draft a 1-page VCP summary for this LP."

## Audit Log
All VCP documents retained by entity and year. Milestone tracking records retained quarterly. Thesis revision records retained (what changed; why; Matt Mathison approval). Exit value story revisions retained. LP VCP disclosure records retained (what was shared; who authorized; date). Matt Mathison review and approval records retained.

## Deprecation
Retire when MBL has a dedicated portfolio operations function managing VCP tracking — with Dr. Lewis providing the technology and AI value creation inputs and Matt Mathison retaining the VCP approval authority and quarterly review.
