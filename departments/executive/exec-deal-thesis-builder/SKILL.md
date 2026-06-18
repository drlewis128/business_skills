---
name: exec-deal-thesis-builder
description: "Build acquisition deal theses for MBL Partners investment evaluation. Use when the user says 'deal thesis', 'acquisition thesis', 'investment thesis', 'evaluate the deal', 'analyze the acquisition', 'build the thesis', 'M&A analysis', 'acquisition analysis', 'should we acquire this company', 'evaluate the company', 'deal evaluation', 'deal analysis', 'acquisition target', 'potential acquisition', 'company to acquire', 'fit analysis', 'does this company fit our portfolio', 'THRIVE fit', 'strategic fit', 'deal fit', 'investment case', 'build the investment case', 'deal memo', 'one-pager on the deal', 'LOI preparation', 'letter of intent', 'deal structure', 'acquisition structure', 'acquisition economics', 'deal economics', 'valuation analysis', 'company valuation', or 'should we do this deal'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--company <name>] [--sector <healthcare|oil-gas|ad-tech|other>] [--stage <screen|thesis|deep-dive|LOI>] [--source <inbound|outbound|broker>]"
---

# Exec Deal Thesis Builder

Build acquisition deal theses for MBL Partners investment evaluation — from initial company screen through a structured investment thesis that frames the opportunity, tests the key assumptions, and delivers a THRIVE-filtered GO / NO GO recommendation for Matt Mathison. Every MBL acquisition starts with a thesis: a specific, defensible answer to the question "why is this company worth more under MBL ownership than it is today, and can we deliver that value within a return timeline that meets our LP commitments?"

## When to Use
- An inbound deal is received and needs initial screening
- A target company has been identified for proactive outreach
- Matt Mathison asks "what do you think of [company]?"
- A broker presents an opportunity for MBL's consideration
- A portfolio company CEO brings a potential acquisition target for the entity

## Deal Thesis Framework

```
STAGE 1 — INITIAL SCREEN (30-minute assessment; before any resources are committed):

  Basic filters:
    □ Sector fit: Healthcare / Oil & Gas / Ad-tech / Adjacent (explain the fit)
    □ Revenue range: $1M - $25M ARR (or explain why outside this range is considered)
    □ EBITDA profile: Positive or near-positive (or explain the turnaround thesis)
    □ Geographic fit: US-based (or explain the exception)
    □ THRIVE first pass: anything in the initial profile that conflicts with THRIVE?
    
  Screen output: PASS (advance to thesis) / PASS WITH QUESTIONS / FAIL (with reason)
  Screen time: 30 minutes max
  Screen format: bullet summary for Matt; no deck required

STAGE 2 — INVESTMENT THESIS (2-3 hours; before any management meetings):

  SECTION 1 — COMPANY OVERVIEW:
    What does this company do? (One paragraph; accessible language)
    Revenue model: How do they make money?
    Customer profile: Who buys from them? How concentrated?
    Team: Who runs it? What's their background?
    
  SECTION 2 — THE CORE HYPOTHESIS (the thesis):
    What is the specific value creation opportunity under MBL ownership?
    Template: "Under MBL ownership, [Company] will [specific action] which will create
      [specific outcome] by [specific timeframe], delivering [target return] because [specific reason]."
    This is the thesis. Everything else supports or tests it.
    
  SECTION 3 — THRIVE FIT ASSESSMENT:
    T — Truth: Does management communicate openly? Are the financials clean?
    H — Hustle: Does the business have execution velocity? Is the team action-oriented?
    R — Respect: What is the company's reputation with customers, employees, partners?
    I — Integrity: Any legal, regulatory, or ethical issues in the company's history?
      (One confirmed integrity failure in the business or its leadership = kill criterion)
    V — Value: Can MBL create measurable value? What's the source of that value?
    E — Enjoy: Is this a business in a sector where MBL can add genuine value, not just capital?
    
  SECTION 4 — KEY ASSUMPTIONS:
    The thesis rests on 3-5 assumptions. State them explicitly.
    For each: What is the assumption? What is the evidence it's true?
      What happens to the thesis if this assumption is wrong?
    The weakest assumption is the one to test first.
    
  SECTION 5 — RETURN ANALYSIS:
    Entry valuation assumption: [Multiple on EBITDA or revenue]
    Investment thesis value creation: [Specific value driver]
    Exit valuation assumption: [Multiple on projected EBITDA at exit]
    Target IRR: [>20% target]
    Target hold period: [3-5 years]
    Simple model: Entry EV → Value creation → Exit EV → Return multiple → IRR estimate
    
  SECTION 6 — RISKS TO THE THESIS:
    Top 3 risks: be specific. "Market risk" is not a risk. "The top customer (32% of revenue)
      does not renew in the next 12 months" is a risk.
    For each risk: probability estimate, impact, and mitigation.
    THRIVE filter: Is there an Integrity risk in the deal or the company's history?
    
  SECTION 7 — GO / NO GO RECOMMENDATION:
    Dr. Lewis's recommendation: GO / NO GO / CONDITIONAL GO (with specific conditions)
    For GO: next step (management meeting; LOI preparation; deeper due diligence)
    For NO GO: one-sentence reason
    For CONDITIONAL GO: what conditions must be confirmed before advancing?

LOI PREPARATION (if thesis is approved by Matt Mathison):
    Price anchor: entry valuation range (Dr. Lewis models; Matt approves before any discussion)
    Structure: Asset vs. entity deal; earnout provisions; working capital treatment
    Exclusivity: 30-60 days standard; negotiate based on deal dynamics
    Contingencies: key person retention; financial representation; customer contract confirmation
    Matt Mathison approves the LOI before it is submitted — always.
```

## Output Format

```markdown
# Deal Thesis — [Company Name] — [Date]
**Evaluated by:** Dr. Lewis | **For:** Matt Mathison
**Source:** [Inbound / Broker / Proactive] | **Stage:** [Screen / Thesis / LOI]

---

## BOTTOM LINE (GO / NO GO)

**Recommendation:** [GO / NO GO / CONDITIONAL GO]
**Reason:** [One sentence — the core reason for the recommendation]
**Next step:** [If GO: what happens next]

---

## Company Overview

**What they do:** [One paragraph]
**Revenue:** $[X] ARR / $[X] trailing 12-month revenue
**EBITDA:** $[X] (or cash flow proxy)
**Team:** [Key person + brief background]
**Customers:** [N customers; concentration: top customer = [X]% of revenue]

---

## The Thesis

"Under MBL ownership, [Company] will [action] which will create [outcome] by [timeframe],
delivering [return target] because [reason]."

---

## THRIVE Fit

| Dimension | Rating | Evidence |
|-----------|--------|---------|
| T — Truth | ✅/⚠️/❌ | [Specific signal] |
| H — Hustle | ... | ... |
| R — Respect | ... | ... |
| I — Integrity | ✅/⚠️/❌ | [Any issues found?] |
| V — Value | ... | ... |
| E — Enjoy | ... | ... |

---

## Key Assumptions (top 3)

1. **[Assumption]** — Evidence: [What supports it] — Risk: [What breaks the thesis if wrong]
2. **[Assumption]** ...
3. **[Assumption]** ...

---

## Return Analysis

| Item | Value |
|------|-------|
| Entry EV | $[X] |
| Target exit EV | $[X] |
| Hold period | [N] years |
| Target IRR | >[20]% |
| Return multiple | [N]× |
```

## Output Contract
- INTEGRITY failure = kill the deal — any integrity issue discovered in a target company (legal matter, regulatory violation, management misconduct, financial misrepresentation) is surfaced to Matt Mathison immediately and is a presumptive kill criterion; the thesis evaluation does not continue past an integrity red flag unless Matt Mathison explicitly decides to investigate and clear the flag; a great business with an integrity issue is a liability, not an asset
- The thesis is one hypothesis, not a list of observations — "the company has strong revenue growth, an experienced management team, and a good market position" is not a thesis; it is a description; the thesis is the specific answer to: "why is this company worth more under MBL ownership than without us?"; if Dr. Lewis cannot state the thesis in one sentence, the thesis isn't ready; if the thesis doesn't include a specific value creation mechanism and a return expectation, it isn't a thesis
- Price discipline starts before the first conversation — before any management meeting or LOI discussion, Dr. Lewis models the entry valuation range and Matt Mathison approves it; the entry price is set before the seller has a chance to anchor; if Dr. Lewis goes into a management meeting without a cleared price range, MBL is negotiating without a framework; Matt Mathison does not negotiate above the cleared range without an explicit re-authorization
- HITL required: Matt Mathison reviews and approves the GO / NO GO recommendation before any management meeting is scheduled; LOI is reviewed and approved by Matt Mathison before submission; price anchor is cleared by Matt before any deal discussion; any INTEGRITY flag triggers immediate Matt Mathison notification; legal counsel reviews deal structure before LOI is submitted

## System Dependencies
- **Reads from:** exec-value-creation-plan (what value creation capabilities does MBL have that could apply to this target?); exec-capital-allocation (is there capital available for this deal? Does it fit the portfolio concentration limits?); exec-strategic-planning (does this acquisition advance the portfolio strategy?); exec-ai-strategy-director (does this entity benefit from MBL's AI capabilities?); exec-integration-manager (integration complexity and readiness)
- **Writes to:** Deal thesis (SharePoint → ExecutiveSupport → MA → [Company] → [YYYY] → Thesis); exec-action-tracker (due diligence and LOI milestones as action items); exec-capital-allocation (approved deal updates the capital deployment plan); exec-meeting-prep (management meeting prep sheet — inputs from the thesis); exec-talking-points-builder (talking points for the management meeting — informed by thesis)
- **HITL Required:** Matt Mathison approves the GO / NO GO before management meeting; price anchor cleared before any deal discussion; LOI reviewed by Matt before submission; legal counsel reviews deal structure; INTEGRITY flags trigger immediate Matt notification and are presumptive kill criteria; deal information is restricted to Matt Mathison and Dr. Lewis until Matt authorizes broader disclosure

## Test Cases
1. **Golden path:** A healthcare MSO in Tucson is introduced by a mutual contact; Dr. Lewis screens in 25 minutes: sector fit (adjacent to Allevio; Arizona market expansion thesis); revenue $4.2M TTM; EBITDA $680K; 8 employer groups; key person (CEO-founder). Screen: PASS. Thesis: "Under MBL ownership, Tucson MSO will expand employer group coverage from 8 to 18 groups over 36 months using Allevio's clinical model and MBL's M&A pipeline infrastructure, delivering a projected 2.8× return at a 5.5× EBITDA exit multiple." THRIVE: Integrity flag cleared (one minor regulatory fine 3 years ago, fully resolved and disclosed). GO recommendation. Matt: "Agree. Set up the management meeting." Dr. Lewis prepares exec-meeting-prep. Price anchor: $3.8M-$4.5M entry (6-7× EBITDA) cleared by Matt before meeting.
2. **Edge case:** Inbound from a broker — the company looks attractive but the broker is asking for a fast decision ("we have other interested parties") → Dr. Lewis: "The time pressure is a negotiating tactic; I'm going to treat it as such. I can get you a thesis in 24 hours. If the opportunity is real and the fundamentals are solid, 24 hours won't cost us the deal. If losing this deal because we took 24 hours to build a real thesis is a concern, that tells us something about how we'd operate throughout the negotiation. Recommend we proceed on our timeline." Matt: "Agreed. 24-hour thesis."
3. **Adversarial:** An entity CEO brings a target that they have a personal relationship with and advocates strongly for the deal → Dr. Lewis: "I'll build the thesis on the merits. My only concern: the personal relationship creates a potential objectivity gap. I'll evaluate this company the same way I'd evaluate any other target — THRIVE filter, key assumptions, return analysis. If it passes, great — the relationship is a plus (we already have rapport with management). If it doesn't pass, I'll present the findings to Matt directly and separately from the entity CEO's advocacy. The relationship shouldn't bias the decision; if it does, we're not doing the entity CEO any favors by letting them champion a bad deal."

## Audit Log
All deal theses retained by company and date. Screen records retained (pass/fail and reason). Matt Mathison approval records retained (GO/NO GO decisions; price anchor clearances; LOI approvals). INTEGRITY flags retained (what was found; how it was resolved or why it was a kill). Management meeting records retained. LOI records retained (terms; submitted date; response).

## Deprecation
Retire when MBL has a dedicated M&A or deal team who runs the thesis process — with Dr. Lewis providing the technology and AI strategy assessment component and Matt Mathison retaining the GO / NO GO and LOI approval authority.
