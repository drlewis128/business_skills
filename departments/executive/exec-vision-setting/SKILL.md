---
name: exec-vision-setting
description: "Set and communicate the company or portfolio vision for MBL entities. Use when the user says 'vision', 'set the vision', 'company vision', 'portfolio vision', 'vision statement', 'mission statement', 'north star', 'BHAG', 'big hairy audacious goal', 'where are we going', 'long-term direction', 'what does success look like in 5 years', 'what is our purpose', 'why do we exist', 'what is MBL about', 'what is Allevio about', 'what is HIVE about', 'what is Column6 about', 'company purpose', 'mission and vision', 'strategic vision', 'vision for the portfolio', 'what is our north star metric', 'define success', or 'long-term goals'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--horizon <1yr|3yr|5yr|10yr>] [--action <build|refine|communicate|test>]"
---

# Exec Vision Setting

Set and communicate the company or portfolio vision for MBL entities — defining where the organization is going, why it exists, and what success looks like at multiple time horizons. Vision is not a slogan; it is the decision-making anchor that determines what MBL invests in, what it walks away from, and how it explains itself to LPs, employees, customers, and competitors. A vision that can't be used to make a hard decision is decorative, not strategic.

## When to Use
- Annual planning cycle (vision sets the ceiling; priorities set the near-term steps)
- Onboarding a new entity CEO (they need to understand where MBL is heading and why)
- A major strategic shift occurs (new entity acquired; market disruption; partnership)
- Investor or LP presentation that requires a portfolio vision narrative
- Matt Mathison needs to articulate MBL's direction to a new stakeholder

## Vision Framework

```
THE VISION ARCHITECTURE (3 levels):

  LEVEL 1 — PURPOSE (WHY WE EXIST):
    One or two sentences. Does not change.
    Not about revenue. Not about returns. About what changes in the world when MBL wins.
    
    MBL Partners purpose (draft): "We acquire and grow companies that create real value for the
      people they serve — employers who need better benefits, landowners who deserve fair returns,
      brands that need to reach their audience. We grow these companies using capital discipline,
      operational focus, and the principle that integrity creates durable returns."
      
    Test: If a new employee reads this on Day 1, do they understand what matters to MBL beyond profit?
    THRIVE filter: If the purpose statement can't pass the Integrity test, it's wrong.
    
  LEVEL 2 — VISION (WHERE WE'RE GOING, 5-10 YEAR):
    One or two sentences. Changes rarely.
    Describes the future state, not the current state.
    Ambitious enough to require sustained growth; specific enough to be disconfirmable.
    
    MBL Partners vision (draft): "A portfolio of market-leading healthcare, energy, and media
      businesses that generate consistently strong LP returns because operational excellence and
      human values compound together over time."
      
    Entity visions:
      Allevio: "The preferred healthcare solution for small and mid-size employers in the Southwest —
        delivering better outcomes and lower costs because high-touch service and clinical rigor
        are the same thing."
      HIVE Partners: "The landowner relationship leader in the Uinta Basin — the operator landowners
        choose because transparency, fair dealing, and fast royalty payment are how we do business,
        not marketing claims."
      Column6: "The CTV and digital partner that agency media buyers recommend because our
        performance data is honest, our client service is better, and we make their results
        look good."
        
  LEVEL 3 — NORTH STAR METRIC (HOW WE MEASURE PROGRESS):
    One metric per entity that captures momentum toward the vision.
    Not revenue (a lagging indicator). Not EBITDA (a financial output, not a customer signal).
    The north star metric should get better as the vision is being achieved.
    
    MBL Portfolio: LP-weighted NRR across all entities (portfolio retention = portfolio health)
    Allevio: Employer group GRR × average claim ratio trend (retained + improving = winning)
    HIVE: Landowner GRR × total royalties distributed (retained + producing = winning)
    Column6: Agency NRR × Priority A relationship depth (retained + deepening = winning)

THE BHAG (BIG HAIRY AUDACIOUS GOAL):

  One 10-year target that would be considered ambitious even if everything goes right.
  Used internally (team motivation) and with LPs (demonstrates ambition + trajectory).
  
  Characteristics of a good BHAG:
    □ Specific enough to know when you've hit it
    □ Ambitious enough that it can't be reached by incremental improvement
    □ Compelling enough that the team talks about it without being prompted
    □ Grounded enough that rational people believe it could happen
    
  Test: "Would achieving this be a genuinely proud moment, or would we just say 'I guess we hit it'?"

COMMUNICATING VISION:

  Rule: Vision is communicated by action, not declaration.
    - If you say "we put landowners first" and then approve a lease that extracts maximum value
      at the landowner's expense, the vision is a lie.
    - Matt Mathison applies the THRIVE filter to every significant decision.
      Decisions that contradict the vision erode it; decisions that reinforce it compound it.
      
  Frequency: Vision is referenced at:
    □ All-hands meetings (annually and at major milestones)
    □ Entity CEO onboarding (Day 1)
    □ LP meeting materials (as the narrative foundation)
    □ Strategic planning (as the ceiling that guides priority choices)
    □ Hiring conversations (THRIVE alignment check is a vision litmus test)
    
  Anti-patterns:
    × Vision statement on the wall but not used in decisions
    × Vision that is so generic it applies to any company in any industry
    × Vision that is changed annually to match the current market trend
    × "We want to be the best in our space" — this is not a vision; it is a desire
```

## Output Format

```markdown
# [Entity] Vision Architecture
**Prepared for:** Matt Mathison | **Date:** [Date]

---

## Purpose (Why We Exist)

> [One to two sentences. Present tense. About what changes in the world when we win.]

**THRIVE Test:** ✅ / ❌ | **Notes:** [Any alignment gaps]

---

## Vision (5-10 Year Direction)

> [Where we are going. Future state. Ambitious and specific.]

**Horizon:** [Year it describes, e.g., 2030]

---

## North Star Metric

**Metric:** [Name of the metric]
**Definition:** [Exactly how it is calculated]
**Current value:** [Baseline]
**2030 target:** [Ambitious but credible]
**Why this metric:** [Connection to the vision — why does improving this = achieving the vision?]

---

## BHAG (10-Year Target)

> [Specific. Ambitious. Compelling. Grounded.]

**Why it matters to the team:** [Motivational framing]
**Why it matters to LPs:** [Return framing]
```

## Output Contract
- Vision must pass the decision-usefulness test — the best test of a vision statement is: "Could a mid-level employee use this to decide whether a specific initiative should be approved or killed?" If the vision is too vague to use as a filter, rewrite it; Dr. Lewis requires that every vision statement is tested against at least 3 real decisions the organization has made or is considering before it is presented to Matt Mathison
- Vision is owned by Matt Mathison, drafted collaboratively — Matt Mathison is the primary owner of the MBL portfolio vision; entity CEOs are the primary owners of their entity visions; Dr. Lewis drafts, facilitates, and stress-tests; the vision is not Dr. Lewis's creative output — it is Matt Mathison's and the entity CEO's articulation of where they believe they are going; if the draft feels like it's coming from Dr. Lewis rather than from Matt, the draft is wrong
- North star metric must be leading, not lagging — revenue and EBITDA are lagging indicators of a business that is already performing; the north star metric should be a customer health or relationship metric that predicts future financial performance; GRR, NRR, relationship depth, and claim ratio trend are all leading indicators; "ARR" is not a north star metric because it doesn't tell you whether the customers who generated it are likely to stay
- HITL required: Matt Mathison approves MBL portfolio vision; entity CEOs approve their entity visions (with Matt Mathison concurrence); Dr. Lewis stress-tests all vision statements against real decisions before presentation; BHAG is reviewed by Matt Mathison before use with LPs; any change to a published vision requires Matt Mathison approval and communication to all-hands within 30 days

## System Dependencies
- **Reads from:** exec-strategic-planning (annual priorities — vision sets the ceiling that priorities operate under); exec-thrive-assessment (THRIVE alignment — is the vision THRIVE-aligned?); entity performance data (do the current numbers tell a story consistent with the vision?); LP meeting materials (what have we communicated to LPs about direction?); prior vision documents (SharePoint/Strategy/MBL/Vision/)
- **Writes to:** Vision document (SharePoint/Strategy/[Entity]/Vision/[YYYY]_VisionArchitecture.pdf); exec-strategic-planning (north star metric → planning anchor); exec-okr-tracker (vision → OKR cascade — do the OKRs move us toward the north star?); exec-all-hands-planner (vision slides and narrative for all-hands); exec-lp-reporting (vision narrative for LP communications)
- **HITL Required:** Matt Mathison approves MBL portfolio vision; entity CEOs approve entity visions with Matt concurrence; Dr. Lewis stress-test against real decisions before presentation; BHAG reviewed by Matt before LP use; any vision change requires Matt approval + all-hands communication within 30 days

## Test Cases
1. **Golden path:** Annual planning kickoff; Dr. Lewis prepares entity vision architectures for Matt's review; Allevio vision: "The preferred healthcare solution for small and mid-size employers in the Southwest — delivering better outcomes and lower costs because high-touch service and clinical rigor are the same thing." North star metric: employer group GRR × claim ratio trend. Matt: "That's right — when GRR goes up and the claim ratio goes down simultaneously, we've won. If we have good retention but the claim ratio is rising, something is wrong with the product. If the claim ratio is great but GRR is weak, something is wrong with the relationship." Vision approved. Dr. Lewis runs the decision test: "Does this help us decide whether to invest in clinical program expansion vs. a new sales hire?" Matt: "Yes — if the claim ratio is the north star, we invest in clinical first." Vision passes.
2. **Edge case:** Column6 CEO proposes a vision: "To be the fastest-growing CTV company in the U.S." → Dr. Lewis: "Growth rate is not a vision — it's a goal. A fastest-growing company can grow by sacrificing quality, undercutting pricing, or flooding the market with substandard delivery. Does that describe what Column6 is trying to be? I don't think so. What is Column6 actually about? What do agency media buyers say when they recommend you?" Column6 CEO: "They say we make their campaigns look good — our VCR is consistently better than alternatives and our reporting is honest." Dr. Lewis: "That's your vision. You're the partner that makes their work look good. Build the statement from there." Revised vision: "The CTV and digital partner that agency media buyers recommend because our performance data is honest and our results are better." Column6 CEO: "That's exactly it."
3. **Adversarial:** LP asks at a quarterly meeting: "What's MBL's vision for the portfolio in 5 years?" Matt improvises a response that contradicts the documented vision → Dr. Lewis (privately, after the meeting): "What you said to the LP — 'we want to be a diversified PE platform with 10+ companies by 2030' — is not what the vision document says. The vision says 3 market-leading companies with consistently strong LP returns. That's a different direction. Which is it? Because if we're actually targeting 10+ companies, the acquisition strategy, the operating model, and the capital allocation all change. I need to know the real direction before the next LP meeting so we're not saying two different things." Matt: "You're right — 3 well-run companies is the right direction. I was riffing. Let's make sure I have the vision language in front of me for the next meeting." Dr. Lewis updates the LP talking points to include the vision statement explicitly.

## Audit Log
Vision documents retained by entity and year. THRIVE test records retained. Decision-usefulness tests retained (what decisions were tested; did the vision help or not). All-hands communication records retained. LP vision communications retained. Vision change approval records retained.

## Deprecation
Retire when MBL has a Chief Strategy Officer who owns vision development — with Matt Mathison retaining final approval of all portfolio and entity visions and Dr. Lewis reviewing THRIVE alignment annually.
