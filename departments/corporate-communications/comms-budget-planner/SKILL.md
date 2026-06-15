---
name: comms-budget-planner
description: "Plan and manage the communications function budget. Use when the user says 'communications budget', 'PR budget', 'comms budget', 'how much should we spend on PR', 'communications spending plan', 'budget for marketing communications', 'comms budget allocation', 'what does communications cost', 'build a PR budget', or 'justify communications spend'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--year <year>] [--total-budget <dollar amount>]"
---

# Comms Budget Planner

Plan and manage the corporate communications budget — allocating resources across media relations, content production, tools, events, and agency support. Communications budgets at MBL portfolio scale are typically small ($15K-$75K annually depending on company size and communications maturity). This skill ensures that limited resources are allocated to the highest-ROI activities and that budget decisions are defensible to Matt Mathison.

## When to Use
- Annual planning — setting the communications budget for a portfolio company
- Mid-year budget review — are we spending in the right places?
- Matt Mathison asks "what does the communications program cost?"
- Evaluating whether to hire in-house or use a PR agency (cost comparison)
- Making a case for a specific communications investment (event sponsorship, PR tool)

## Budget Allocation Framework

```
Communications budget allocation (general guidance for MBL portfolio scale):

Tools and technology (15-25% of budget):
  - Media monitoring (Google Alerts = free; Mention.com = ~$40/mo; Brand24 = ~$50/mo)
  - PR distribution (PR Newswire = ~$400-800/release; use for major announcements only)
  - Email platform for newsletters (Mailchimp = free-$50/mo at portfolio company scale)
  - Design tools for communications assets (Canva Pro = ~$120/year)

Content and production (20-30% of budget):
  - Photography (executive headshots, event) = $500-2,000/session
  - Video (if relevant) = varies widely; likely out of scope at current stage
  - AI tools for content production (Claude subscription = ~$20/month)

Events and speaking (20-30% of budget):
  - Conference attendance and speaking (registration, travel) = $500-3,000/conference
  - Award submission fees (most industry awards have submission fees of $200-500)
  - Event sponsorships (if any) = varies; evaluate ROI carefully

Agency support (0-40% of budget):
  - PR agency retainer = $3,000-8,000/month (for a portfolio company with media program)
  - Project-based PR (e.g., launch announcement) = $2,000-8,000 per project
  - In-house communications manager salary (FTE) = $70,000-100,000/year fully-loaded
    (Note: in-house vs. agency is a strategic question separate from the budget plan)

Contingency (10-15%):
  - Crisis communications response (legal PR firm, rapid response) = $5,000-20,000 if needed
  - Unforeseen opportunity (news hook, inbound media opportunity) = reserve 10%
```

## Output Format

```markdown
# Communications Budget Plan — <Entity Name>
**Entity:** <Company> | **Year:** <Year>
**Total proposed budget:** $<Amount>
**Prepared by:** Dr. John Lewis | **Approved by:** Matt Mathison

---

## Budget Rationale

**Current communications program maturity:** [Foundational / Growing / Established]

**Why this budget level:**
[2-3 sentences — what this budget enables and why it's appropriate for the company's stage. Not a request — a justified recommendation with specific outcomes expected.]

---

## Budget Allocation

| Category | Line item | Annual cost | Monthly cost | Notes |
|---------|-----------|------------|-------------|-------|
| **Tools** | | | | |
| | Media monitoring (Mention.com) | $480 | $40 | Brand24 as alternative |
| | Email platform (Mailchimp) | $240 | $20 | Free tier if <500 contacts |
| | Design (Canva Pro) | $120 | $10 | |
| | AI writing tools (Claude Pro) | $240 | $20 | |
| | PR distribution (PR Newswire) | $1,200 | — | ~3 major releases/year at $400 ea |
| **Tools subtotal** | | **$2,280** | | |
| **Content** | | | | |
| | Executive headshots (annual refresh) | $800 | — | One session/year |
| | Branded presentation templates | $1,000 | — | One-time or refresh |
| **Content subtotal** | | **$1,800** | | |
| **Events / Speaking** | | | | |
| | Conference attendance (2 events) | $3,000 | — | Reg + travel |
| | Award submissions (3-4) | $1,200 | — | ~$300 avg fee per award |
| **Events subtotal** | | **$4,200** | | |
| **Agency / External** | | | | |
| | [PR agency retainer / FTE / None] | $[X] | $[X] | [Rationale] |
| **Agency subtotal** | | **$[X]** | | |
| **Contingency** | | | | |
| | Crisis response reserve | $3,000 | — | Only spend if needed |
| | Opportunistic budget | $2,000 | — | News hook, inbound opportunity |
| **Contingency subtotal** | | **$5,000** | | |
| | | | | |
| **Total** | | **$[Sum]** | **$[Monthly]** | |

---

## In-House vs. Agency Analysis (if relevant)

| Model | Annual cost | Advantages | Disadvantages |
|-------|------------|-----------|--------------|
| In-house communications manager | $70,000-100,000 (fully-loaded) | Full-time focus; institutional knowledge; flexible for internal comms | Higher fixed cost; single person skills range; need to manage |
| PR agency retainer | $36,000-96,000/year ($3K-8K/mo) | Existing media relationships; team of specialists; scalable | Relationship management overhead; attention is shared; may not know business deeply |
| Fractional / project-based | $15,000-40,000/year | Lower cost; expert on specific tasks | Limited availability; no ongoing relationship building |
| Dr. Lewis + AI tools (current) | ~$5,000-10,000/year (tools only) | Very low cost; high speed; integrated with strategy | Limited media relationship depth; constrained by Dr. Lewis time |

**Recommendation:** [Specific recommendation with rationale — what model is right for this company's stage and budget?]

---

## Expected ROI

| Investment | Expected output | How to measure |
|-----------|----------------|----------------|
| $[X] total | [N] press placements; [N] exec LinkedIn posts; [N] conference speaking slots | comms-kpi-dashboard |
| | [N] employee newsletter issues; [N] all-hands meetings | Open rate; all-hands attendance |
| | Crisis readiness (playbook + simulation) | Simulation score |

**Budget effectiveness benchmark:** $[Total] / [N] placements = $[X] per placement (compare to paid media CPM as a reference)

---

## Matt Mathison Summary

**Proposed communications budget for [Year]:** $[Total]
**What this enables:** [3 bullets — specific outputs]
**What's not included at this budget level:** [Honest tradeoffs — what they can't get for this budget]
**Matt Mathison action:** Approve budget / Adjust total / Discuss

---

## Budget vs. Actuals Tracker (update quarterly)

| Category | Budget | Q1 Actual | Q2 Actual | Q3 Actual | Q4 Actual | Full Year Actual |
|---------|--------|----------|----------|----------|----------|----------------|
| Tools | $[X] | | | | | |
| Content | $[X] | | | | | |
| Events | $[X] | | | | | |
| Agency | $[X] | | | | | |
| Contingency | $[X] | | | | | |
| **Total** | **$[X]** | | | | | |
```

## Output Contract
- ROI framing is always included — communications budgets are often cut first because the ROI is unclear; the budget plan must show what the budget produces and how to measure it; "we need $X for PR" without an ROI framework is a budget that will be challenged
- In-house vs. agency analysis always included when relevant — this is the biggest communications budget decision; if the recommendation is an agency, show the math; if it's in-house, show the comparison
- Tradeoffs always disclosed — if the budget doesn't enable something that would be valuable (e.g., "at this budget level, we cannot do crisis PR firm support — the reserve is our only coverage"), say so explicitly; Matt Mathison needs to make an informed budget decision
- Actuals tracker is set up from the start — a budget without an actuals tracker will exceed budget; the tracker is part of the plan, not an afterthought
- HITL required: Dr. Lewis builds the plan; Matt Mathison approves the budget (required — this is a spend authorization); any budget item over $5,000 requires Matt Mathison specific approval; agency retainer agreements require Matt Mathison signature; no spending without approved budget

## System Dependencies
- **Reads from:** Company communications needs assessment, market rates for PR services, company's overall budget guidelines
- **Writes to:** Communications budget plan (SharePoint/Finance/Budgets/Communications); quarterly actuals tracker
- **HITL Required:** Matt Mathison approves annual budget; Dr. Lewis manages quarterly actuals; any line item exceeding budget by >10% requires Matt Mathison approval

## Test Cases
1. **Golden path:** Allevio communications budget for [Year] → Current stage: Foundational; recommended budget: $18,500; breakdown: tools $2,280, content $1,800, events $4,200, agency (none — Dr. Lewis + AI model), contingency $5,000, PR Newswire $1,200, executive headshots $800, award submissions $1,200, misc $2,020; expected output: 6 press placements, 36 LinkedIn posts, 2 conference speaking appearances, 12 newsletter issues; cost per placement: $3,083 (vs. paid media average CPM of $5,000+ for comparable reach); Matt Mathison approved
2. **Edge case:** Mid-year budget review shows communications is overspending on tools that aren't being used → audit tool usage quarterly; tools that aren't being used should be canceled; a $40/month media monitoring tool that isn't being checked weekly is a $480 waste; the budget plan must include a quarterly "are we using everything we're paying for?" review
3. **Adversarial:** Matt Mathison cuts the communications budget significantly to preserve operating capital → prioritize in this order if budget is constrained: (1) media monitoring (free with Google Alerts); (2) executive LinkedIn (free); (3) AI writing tools ($20/month); (4) media kit (one-time); (5) crisis reserve; everything else is deferrable; the core communications program can function on under $500/year of tool spend if necessary; report the tradeoffs explicitly

## Audit Log
Budget plans retained by year. Actuals tracked quarterly. Budget approval documented. Any mid-year adjustments approved by Matt Mathison and documented.

## Deprecation
Retire when portfolio companies hire finance-integrated communications leaders who manage their own budget as part of the standard P&L structure.
