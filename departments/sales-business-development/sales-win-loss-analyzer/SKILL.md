---
name: sales-win-loss-analyzer
description: "Analyze won and lost deals to improve sales performance for MBL portfolio companies. Use when the user says 'win loss', 'win/loss', 'why did we lose', 'why did we win', 'loss analysis', 'deal debrief', 'won deal analysis', 'lost deal analysis', 'sales patterns', 'what is working', 'what is not working', 'close rate analysis', 'loss reasons', 'win reasons', 'competitive win rate', 'why are we losing deals', 'why are deals going to competitors', 'sales lessons', 'sales data', 'win loss review', 'win loss report', or 'deal pattern analysis'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <quarter|year|custom>] [--action <analyze|report|recommend>] [--focus <wins|losses|both>]"
---

# Win/Loss Analyzer

Analyze won and lost deals to identify patterns that improve sales performance for MBL portfolio companies — turning individual deal outcomes into actionable intelligence about messaging, pricing, positioning, and process. The win/loss analysis is the feedback loop that makes every other sales system smarter: it validates the ICP, calibrates the forecast, reveals competitive threats, and identifies the deals that are worth pursuing vs. the ones that waste time.

## When to Use
- Quarterly sales performance review (after at least 10 closed deals)
- When win rates drop below target
- Before revising the ICP, pricing, or outbound sequence
- When a significant deal is won or lost unexpectedly
- Annual sales strategy planning

## Win/Loss Analysis Framework

```
DATA COLLECTION (pull from CRM):
  For every Closed Won deal:
    □ Deal value (ACV)
    □ Lead source (outbound; referral; inbound; broker; event)
    □ Time from first contact to close (sales cycle length)
    □ Prospect's company size (employees; revenue if known)
    □ Industry / segment
    □ Decision-maker title (HR Director; CFO; Media Buyer; etc.)
    □ Primary pain or motivation (cost; coverage; compliance; performance; timing)
    □ Competitive situation (were we competing? against whom? how did we win?)
    □ What the prospect said was most important in choosing us (from the close call or post-close survey)
    
  For every Closed Lost deal:
    □ Deal value (ACV — what we would have won)
    □ Lead source
    □ Stage when lost (discovery; proposal; negotiation; contract)
    □ Loss reason (standard codes: price; competitor; no budget; timing; decision delayed;
        no longer a fit; champion left; failed to connect with economic buyer)
    □ Who they chose instead (if known)
    □ What we could have done differently (rep's assessment)
    □ Was this an ICP-fit deal? (if not, was the loss because of the non-ICP fit?)
    
ANALYSIS — WINS (what is working):
  Win rate by lead source:
    → Which channel produces the highest win rate?
      Allevio hypothesis: Broker referrals win at 50%+; cold outbound wins at 25-30%
    → Focus resources on the highest-win-rate channels
    
  Win rate by company size / segment:
    → Which segment is the sweet spot?
      If Allevio is winning 60% of 75-150 employee deals but only 20% of 300+ employee deals:
        → The ICP should be adjusted to weight toward 75-150 employees
    
  Average deal size by segment:
    → Are larger companies producing more revenue per win even at lower win rates?
      Calculate: Win rate × ACV = expected value per opportunity by segment
      
  Win rate by decision-maker engaged:
    → If deals where the CFO was engaged early win at 2× the rate of deals where only HR was engaged:
        → Change the outreach sequence to target CFOs directly or require CFO intro earlier
        
  Sales cycle length by segment:
    → How long does it take to close by company size / lead source?
    → Forecast uses average cycle length by segment; if actuals differ, recalibrate
    
ANALYSIS — LOSSES (what is broken):
  Loss reason distribution:
    → Top 3 loss reasons by volume: Which reasons dominate?
    → Top loss reason by ACV impact: Which reasons represent the most lost revenue?
    
  Loss stage analysis:
    → If 40% of losses happen after proposal submission: pricing or proposal quality problem
    → If 40% of losses happen in discovery (disqualification): ICP or qualification problem
    → If 40% of losses happen after negotiation: legal / contracting friction problem
    
  Competitive loss analysis:
    → Who are we losing to?
    → What do prospects say about why they chose the competitor?
    → Is there a systematic competitive weakness (price; coverage; brand; relationship)?
    
  Non-ICP loss analysis:
    → What % of losses were non-ICP-fit deals?
    → If 60% of losses came from non-ICP prospects: the team is wasting time on bad-fit deals
    → Recommendation: Tighten ICP qualification; stop pursuing non-ICP deals

  ENTITY-SPECIFIC LOSS PATTERNS TO WATCH:
  
    ALLEVIO:
      Loss to status quo: "We decided to stay with our current carrier" — often means:
        (1) The pain wasn't compelling enough; or (2) The champion couldn't sell it internally
        Action: Stronger pain discovery; executive meeting before proposal
      Loss on pricing: "Your PMPM was higher than we expected"
        Action: Review the value comparison (current cost vs. Allevio); ensure savings math was shown
      Loss due to timing: "We just renewed" — the lead was not in a buying window
        Action: Ask the renewal date in the first outreach email; only pursue active renewal-year leads
        
    COLUMN6:
      Loss to incumbent DSP/SSP: "We're committed to [Google/Amazon/Magnite]"
        Action: Position as a test/supplement; don't fight incumbent head-on; "let us run alongside"
      Loss on brand safety: "We weren't comfortable with the supply quality"
        Action: Lead with IAS/DoubleVerify certification and ads.txt compliance in every first meeting
      Loss due to CPM: "Your CPM was too high"
        Action: Provide CPM in context (CPM × completion rate × audience quality) — not raw CPM
```

## Output Format

```markdown
# Win/Loss Analysis — [Entity] | [Period]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Deals analyzed:** [N] wins, [N] losses

---

## Summary

| Metric | Current period | Prior period | Trend |
|--------|--------------|-------------|-------|
| Overall win rate | [X]% | [X]% | ↑ / → / ↓ |
| Average deal size (wins) | $[X]K | $[X]K | ↑ / → / ↓ |
| Average sales cycle (wins) | [X] days | [X] days | ↑ / → / ↓ |
| Top loss reason | [Price] | [Timing] | — |

---

## Win Rate by Segment

| Segment | Deals | Win rate | Avg ACV | Expected value/opp |
|---------|-------|---------|---------|-------------------|
| Broker referral | [N] | [X]% | $[X]K | $[X]K |
| Cold outbound | [N] | [X]% | $[X]K | $[X]K |
| Inbound | [N] | [X]% | $[X]K | $[X]K |

---

## Loss Reasons

| Reason | # Losses | % of losses | ACV lost | Fix |
|--------|---------|------------|---------|-----|
| Competitor (price) | [N] | [X]% | $[X]K | Improve savings math presentation |
| Timing (just renewed) | [N] | [X]% | $[X]K | Add renewal date to outreach screening |
| No budget | [N] | [X]% | $[X]K | Qualify budget earlier in discovery |

---

## Competitive Intelligence

| Competitor | Times mentioned | Win rate vs. them | Key differentiator they used |
|-----------|----------------|------------------|------------------------------|
| [Competitor A] | [N] | [X]% | [Lower price / larger network] |

---

## Recommendations

| Priority | Recommendation | Impact | Owner |
|---------|----------------|--------|-------|
| 🔴 | Add renewal date screening question to outreach | Stop wasting time on non-renewal-year leads | Dr. Lewis / Sales rep |
| 🟡 | Update Allevio proposal to include savings ROI comparison | Address pricing objection proactively | Dr. Lewis |
```

## Output Contract
- Quarterly cadence is the minimum — a win/loss analysis with fewer than 10 closed deals is statistically unreliable; Dr. Lewis runs the analysis quarterly (minimum) and annually for a comprehensive pattern view; for early-stage portfolio companies with low deal volume, combine multiple quarters to build a meaningful sample before drawing conclusions; "we lost 2 deals to price" is not a pricing problem — it's 2 data points; "we lost 8 of 12 deals to price" is a pricing or value communication problem
- Always present losses and wins together — a wins-only analysis creates a biased view of what's working; the highest-insight discoveries come from comparing the winners and losers in the same segment (same ICP; same lead source; same rep); when a comparable pair diverges in outcome, the difference is actionable intelligence; Dr. Lewis always runs the win/loss analysis on both closed outcomes simultaneously
- Loss reasons must be logged at close — a win/loss analysis is only as good as the data in CRM; if the loss reason is "don't know" or "prospect ghosted us," the data quality is insufficient for analysis; Dr. Lewis enforces the rule: every Closed Lost deal must have a documented reason code at the time of closure; the rep's responsibility is to find out why before marking closed (a brief call or email to the prospect to ask "May I ask what drove the decision?" is almost always possible and often accepted)
- HITL required: Dr. Lewis conducts the analysis quarterly; CEO reviews and confirms the patterns (CEO often has deal-level context that isn't in the CRM); Matt Mathison receives the annual win/loss summary as part of the portfolio sales performance report; ICP changes driven by win/loss findings require CEO approval; competitive intelligence findings are shared with Matt Mathison when a significant competitive threat is identified; Dr. Lewis does not change sales strategy unilaterally based on the analysis — recommendations go to the CEO for decision

## System Dependencies
- **Reads from:** CRM closed deal data (GoHighLevel — Closed Won and Closed Lost records; loss reason codes; deal value; close date; lead source; company size; decision-maker title); discovery debriefs (sales-discovery-framework — what was known about each deal at qualification?); ICP (sales-ideal-customer-profile — was the lost deal an ICP fit?); competitive intelligence (sales-competitive-intel — which competitors are named in the losses?); sales forecast records (sales-forecast-builder — how accurate were the probability estimates for lost deals?)
- **Writes to:** Win/loss analysis report (SharePoint/Sales/<Company>/WinLoss/[Quarter]_[Year]_WinLoss.pdf); ICP revision inputs (sales-ideal-customer-profile — which ICP criteria correlate with wins vs. losses?); outbound sequence revision inputs (sales-outbound-sequencer — which message resonates in won deals?); Matt Mathison annual portfolio sales performance summary; competitive intelligence update (sales-competitive-intel — who are we losing to and why?)
- **HITL Required:** Dr. Lewis conducts and presents; CEO validates the patterns (deal-level context); Matt Mathison receives the annual summary; ICP revisions and strategy changes require CEO approval; Dr. Lewis does not change outbound messaging or proposal content based solely on the win/loss data without CEO discussion — the data identifies what might be wrong; the CEO decides what to do about it

## Test Cases
1. **Golden path:** Allevio Q2 win/loss analysis — 6 wins; 9 losses → Win rate: 40%; by segment: broker referrals 67% win rate (4 of 6); cold outbound 20% win rate (2 of 10); loss reasons: "status quo" (4 losses), "price" (3 losses), "timing — just renewed" (2 losses); recommendation: (1) Prioritize broker referral channel — 3× win rate vs. cold outbound; consider a broker partner incentive program; (2) Ask renewal date in Touch 1 email — 2 of 9 losses were not in a renewal window, wasting 4+ hours of sales time each; (3) The "status quo" losses suggest the champion wasn't able to sell internally — add a CFO meeting to the process before submitting the proposal; CEO approves all three changes; ICP updated to include "renewal due within 12 months" as a positive qualifier
2. **Edge case:** Column6 win/loss data shows only 4 closed deals in Q1 — too small a sample for reliable analysis → Dr. Lewis: "Q1 gave us 4 closed deals — not enough to draw statistically reliable conclusions from the win/loss analysis. What I can do: (1) Combine Q1 + Q2 data into a semi-annual analysis (8+ deals); (2) Supplement with qualitative interviews — reach out to 3 Closed Lost prospects and ask a 3-question post-decision survey; (3) Use the small sample to develop hypotheses to test in Q2, not conclusions to act on. I'll run the full analysis after Q2 closes and we have 10+ closed deals." Approach approved; qualitative survey sent to 3 lost prospects; 2 respond; findings documented as hypothesis for Q2 validation
3. **Adversarial:** Allevio's CEO reviews the win/loss analysis and argues that the 3 "price" losses don't reflect a pricing problem — "those clients just wanted the cheapest option and that's not our customer" → Dr. Lewis: "That's a reasonable hypothesis — but let me test it: of the 3 price losses, how many were ICP-fit deals (50-500 employees; AZ; claim ratio >80%)? If they were non-ICP prospects, you're right — they were the wrong deals and the pricing losses don't indicate a systematic pricing problem. If 2 of 3 were ICP-fit prospects at the right size and claim ratio, the pricing objection is real and we need to either improve the value demonstration (show $127 PMPM current vs. $85 PMPM Allevio) or adjust the model for certain segments. Let me pull the deal characteristics." Pull confirms: 2 of 3 were ICP-fit; value comparison wasn't shown in the proposal; proposal template updated to include the savings calculation by default

## Audit Log
All quarterly win/loss analysis reports retained by entity and period. CRM closed deal data export retained at each analysis date. CEO discussion records retained. Matt Mathison annual summary retained. ICP revision inputs retained. Competitive intelligence updates retained.

## Deprecation
Retire when each portfolio company has a VP of Sales who conducts the win/loss analysis — with Dr. Lewis reviewing the quarterly summary and Matt Mathison receiving the annual portfolio sales performance report.
