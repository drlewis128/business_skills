---
name: exec-exit-planning
description: "Plan and prepare portfolio company exits for MBL Partners. Use when the user says 'exit planning', 'exit strategy', 'exit the investment', 'prepare for exit', 'when do we exit', 'how do we exit', 'exit timeline', 'exit readiness', 'exit preparation', 'sell the company', 'sell the portfolio company', 'exit Allevio', 'exit HIVE', 'exit Column6', 'M&A exit', 'strategic buyer', 'financial buyer', 'buyer outreach', 'exit multiple', 'exit value', 'exit narrative', 'build the exit story', 'prepare the company for sale', 'exit milestones', 'exit checklist', 'exit due diligence preparation', 'LP return event', 'return capital to LPs', 'what is the exit thesis', or 'what is the exit value'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|Column6>] [--timeline <1-year|2-year|3-year|opportunistic>] [--type <strategic|financial|management|IPO>] [--action <readiness|plan|narrative|milestone>]"
---

# Exec Exit Planning

Plan and prepare portfolio company exits for MBL Partners — creating the exit readiness roadmap, building the buyer narrative, and managing the exit preparation process that maximizes the value realized at sale and delivers on LP return commitments. Exit planning is not an event that happens when you decide to sell; it is a process that starts the moment you acquire a company. Every value creation decision (exec-value-creation-plan) should be made with the exit multiple in mind. An entity that is not ready to sell at any moment is an entity whose exit value is leaving something on the table.

## When to Use
- Beginning formal exit preparation (12-24 months before anticipated exit)
- Updating the exit readiness assessment (annual review)
- An unsolicited offer is received and exit readiness needs to be assessed quickly
- Matt Mathison asks "are we ready to exit [entity]?"
- Exit milestones in the value creation plan need to be tracked

## Exit Planning Framework

```
EXIT READINESS FRAMEWORK (evaluated annually):

  FINANCIAL READINESS:
    □ Clean, audited financial statements (3 years minimum; 5 preferred)
    □ Revenue recognition is clean and defensible (no complex arrangements)
    □ EBITDA margins are at or improving toward target at exit
    □ Working capital is normal (no unsustainable spikes in the exit year)
    □ Off-balance-sheet liabilities identified and disclosed
    □ Financial model that a buyer can diligence: revenue by customer; margin by product/service
    
  LEGAL READINESS:
    □ All material contracts are documented and transferable (or assignability assessed)
    □ No material litigation or regulatory exposure
    □ IP is clearly owned by the entity (no employee or founder IP claims)
    □ Employment agreements are compliant; no undisclosed obligations
    □ HIPAA compliance (Allevio): documented and defensible
    □ Data privacy compliance (all entities): CCPA, GDPR if applicable
    
  OPERATIONAL READINESS:
    □ Operations can run without the current owner / management sponsor (key-person independence)
    □ Customer contracts are multi-year with documented renewal rates
    □ GRR/NRR is at or above target for 2+ consecutive quarters before exit
    □ Leadership team is stable (no anticipated departures in exit window)
    □ Succession is in place for the CEO role (exec-succession-planning)
    
  DOCUMENTATION READINESS:
    □ Board minutes current and complete
    □ Cap table is clean and documented
    □ All equity grants are documented with strike prices and vesting schedules
    □ Insurance is current (D&O; E&O; Cyber as applicable)
    □ Information security practices are documented (SOC 2 or equivalent)

EXIT NARRATIVE FRAMEWORK:

  The exit narrative is the 3-5 minute story a buyer or investor hears about the entity
  that causes them to want to pay a premium multiple.
  
  Structure:
    MARKET: What is the market opportunity? Why is it growing? (30 seconds)
    POSITION: How does this entity win in that market? (30 seconds)
    PERFORMANCE: What has the entity achieved? (Specific metrics) (60 seconds)
    TRAJECTORY: Where is the entity going? (The growth story) (30 seconds)
    VALUE TO THE BUYER: What does owning this add to the buyer specifically? (60 seconds)
    
  Entity-specific exit narrative elements:
  
    Allevio exit narrative:
      Market: Employer-sponsored healthcare is a $940B market with growing employer frustration
        with traditional insurance models and rising claim costs
      Position: Allevio's MSO model delivers clinical quality + cost management + member experience
        in an employer-direct model that insurance companies cannot replicate
      Performance: [GRR; employer groups; claim ratio; clinical enrollment at exit]
      Trajectory: Phoenix metro expansion validated; Tucson/Scottsdale model ready to replicate
      Value to buyer: Access to 18+ employer group relationships with verified GRR >93%;
        plug-and-play clinical operations that can be replicated in a new market
        
    HIVE exit narrative:
      Market: Landowner royalty management in the Uinta Basin is underserved; operators
        compete for well-positioned mineral rights holders with professional management services
      Position: HIVE's landowner-first model has created a trust-based lease portfolio with
        GRR >90% — rare in an industry known for adversarial landowner relationships
      Performance: [Acreage; royalties distributed; landowner GRR at exit]
      Trajectory: Adjacent basin expansion feasible with the same landowner relationship model
      Value to buyer: A proven landowner relationship playbook and a curated mineral rights
        portfolio with documented royalty history
        
    Column6 exit narrative:
      Market: CTV and programmatic video advertising is the fastest-growing segment of digital media
      Position: Column6's agency-first model and VCR performance track record creates
        pricing premium and wallet share expansion in Priority A agency relationships
      Performance: [VCR; agency NRR; Priority A count; revenue at exit]
      Trajectory: Holding company expansion model is validated; 3 new holding companies in pipeline
      Value to buyer: Access to holding company relationships, proprietary VCR optimization
        methodology, and a client base that is stickier than industry average

EXIT PROCESS (12-month timeline for a planned exit):

  Month 1-3: Exit readiness audit; identify and close gaps
  Month 3-6: Prepare CIM (Confidential Information Memorandum)
  Month 6-9: Soft market soundings (Dr. Lewis + Matt Mathison only; no banker yet)
  Month 9-12: Formal process (investment banker engaged; IOIs; LOIs; select buyer)
  Month 12: Close; LP return event
```

## Output Format

```markdown
# Exit Plan — [Entity] — [Date]
**Horizon:** [N-year target / Opportunistic]
**Prepared by:** Dr. Lewis | **Approved by:** Matt Mathison

---

## Exit Readiness Score

| Area | Status | Key gap | Resolution |
|------|--------|---------|-----------|
| Financial | 🟢/🟡/🔴 | [Gap if yellow/red] | [Action] |
| Legal | 🟢/🟡/🔴 | [Gap] | [Action] |
| Operational | 🟢/🟡/🔴 | [Gap] | [Action] |
| Documentation | 🟢/🟡/🔴 | [Gap] | [Action] |

**Overall exit readiness:** [READY / READY IN [N] MONTHS / NOT READY — major gaps]

---

## Exit Narrative (draft)

[5-paragraph narrative per the framework above — market, position, performance, trajectory, value to buyer]

---

## Exit Economics

| Item | Value |
|------|-------|
| Current EBITDA | $[X] |
| Projected exit EBITDA | $[X] |
| Target exit multiple | [N]× |
| Target exit EV | $[X] |
| Entry EV | $[X] |
| LP return multiple | [N]× |

---

## Exit Readiness Milestones (tracked in exec-action-tracker)

| Milestone | Owner | Due | Status |
|-----------|-------|-----|--------|
| Audited financials current | [CFO/Controller] | [Date] | 🟢/🟡/🔴 |
| Customer contracts documented | [COO] | [Date] | |
| IP ownership confirmed | [Legal] | [Date] | |
```

## Output Contract
- Exit readiness is built over years, not in the exit quarter — the exit readiness checklist is reviewed annually; gaps identified in the current year are addressed in the following year's value creation plan; a company that is "not ready to exit" 12 months before the target exit date has a problem that took years to create and will take longer than 12 months to fix; Dr. Lewis identifies and escalates exit readiness gaps to Matt Mathison as a portfolio operations risk issue, not a future problem
- The exit narrative is tested with a friendly audience before the formal process — before engaging an investment banker, Dr. Lewis and Matt Mathison test the exit narrative with 2-3 trusted advisors or LP contacts who know the sector; the goal is to identify narrative gaps, valuation range expectations, and the likely universe of buyers; this soft market sounding is done under NDA and before any formal process is launched
- Buyer selection is a strategic decision, not just an economic one — the highest price offer is not always the right buyer; a strategic buyer who will accelerate the value creation story for the remaining portfolio or who will treat the team and customers well is worth a modest price premium to MBL; Matt Mathison makes the buyer selection decision with Dr. Lewis's recommendation; the recommendation includes: financial terms + likely treatment of the team + strategic alignment with MBL's broader portfolio
- HITL required: Matt Mathison approves the exit timeline and narrative; any soft market sounding or banker engagement requires Matt Mathison authorization; LP notification of exit planning is Matt Mathison decision (timing and format); final buyer selection and deal terms require Matt Mathison explicit approval; Dr. Lewis coordinates the exit readiness process and documents the narrative; legal counsel is engaged for the formal exit process

## System Dependencies
- **Reads from:** exec-value-creation-plan (VCP becomes the exit preparation roadmap — milestones feed into exit readiness); exec-portfolio-review (entity performance trajectory — the story a buyer sees); exec-kpi-dashboard (current entity metrics — exit narrative performance data); exec-capital-allocation (exit returns feed into LP distribution planning); exec-lp-reporting (exit event triggers an LP communication); exec-board-governance (board approval required for exit transactions)
- **Writes to:** Exit plan (SharePoint → ExecutiveSupport → ExitPlanning → [Entity] → [YYYY]); exec-action-tracker (exit readiness milestones as action items); exec-lp-reporting (exit narrative used in LP reporting forward section); exec-board-communication (exit planning update for board packages); exec-investor-relations (LP communication about exit event)
- **HITL Required:** Matt Mathison approves exit timeline; soft market soundings authorized by Matt; investment banker engagement authorized by Matt; LP notification timing/format is Matt's decision; buyer selection and deal terms approved by Matt; board approval per exec-board-governance; legal counsel engaged for formal process; all exit information restricted to Matt/Dr. Lewis until formal process authorization

## Test Cases
1. **Golden path:** Allevio exit planning — 3-year target; Dr. Lewis conducts annual exit readiness audit: Financial 🟢 (3 years of clean financials; EBITDA trending up); Legal 🟡 (customer contracts documented but 3 are month-to-month — need to convert to multi-year before exit); Operational 🟢 (GRR 93%; COO is successor-ready); Documentation 🟡 (D&O insurance expired — renew); Overall: READY IN 18 MONTHS. Exit narrative drafted. Gaps logged as exec-action-tracker items. Matt: "Get the month-to-month contracts to multi-year by Q3. Renew the D&O this week." Dr. Lewis: "Done." 18-month plan on track.
2. **Edge case:** An unsolicited strategic buyer approaches Matt directly with interest in Column6 → Dr. Lewis: "Before we respond, I need to assess two things: (1) exit readiness — are we ready for a process today? and (2) whether this buyer's offer range is credible given our current metrics. Give me 48 hours. I'll do a rapid exit readiness check and build a rough valuation range so we know whether engaging is worth the process cost. My preliminary view: Column6 is 12-18 months from optimal exit readiness (VCR improvement and Priority A expansion are still in flight). But if the offer range is significantly above our target, we may want to engage regardless." Matt: "48 hours. Go."
3. **Adversarial:** An LP asks to know which portfolio companies are being prepared for exit → Dr. Lewis: "This is Matt Mathison's call on what to disclose. My recommendation: share the general exit strategy (MBL is building toward value creation events across the portfolio in a 3-5 year horizon for each entity) without naming specific entities or timelines. Early disclosure of exit preparation can affect management motivation, customer behavior, and competitive positioning. If this LP is asking because they need to plan their own liquidity position, Matt might offer a more direct conversation about the anticipated LP return timeline — without specifically naming which entity and when." Matt: "Use that framing."

## Audit Log
All exit plans retained by entity and year. Exit readiness audit results retained annually. Exit narrative drafts retained (versions and dates). Market sounding records retained (who was contacted; when; under what terms; what feedback was received). Banker engagement records. Buyer process records (IOIs; LOIs; diligence requests). LP exit communication records. Final transaction retained.

## Deprecation
Retire when MBL has a dedicated M&A or investment banker relationship managing exit processes — with Dr. Lewis providing the technology and AI value narrative and Matt Mathison retaining the exit decision authority and LP communication responsibility.
