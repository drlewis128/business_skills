---
name: strategy-investment-thesis
description: "Write and maintain the investment thesis for a portfolio company or acquisition target. Use when the user says 'investment thesis', 'write the thesis', 'why did we buy this', 'thesis document', 'what is the investment case', 'thesis update', 'investment case', 'PE thesis', 'deal thesis', 'why this company', 'strategic rationale', 'investment rationale', 'why we invested', 'thesis check', 'thesis still valid', or 'update the thesis'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--stage <write|update|validate|exit-check>]"
---

# Investment Thesis

Write and maintain the investment thesis for MBL Partners portfolio companies and acquisition targets — the single authoritative document that explains why we own this company, how we will create value, and how we will exit. The investment thesis is the north star for every strategic and operational decision during the hold period. When in doubt about a decision — should we hire, invest, divest, or pivot — the thesis provides the answer. At PE portfolio scale, thesis drift is one of the most expensive mistakes: resources allocated to activities that don't advance the thesis, decisions made inconsistently with the original investment logic, and exits that don't reflect the thesis value created.

## When to Use
- Writing the initial thesis for a new acquisition
- Annual thesis update — is the thesis still valid?
- Evaluating a strategic decision against the thesis (does this advance or dilute it?)
- Preparing for LP reporting — restating the thesis and progress
- Exit planning — what is the buyer's thesis for this asset?

## Investment Thesis Framework

```
Investment thesis structure (MBL standard):

1. MARKET OPPORTUNITY:
   Why this market: Size, growth, fragmentation, tailwinds
   Why now: What makes this the right entry timing?
   Market position: Where does this company sit in the market?
   
2. COMPANY QUALITY:
   Business model: How does the company make money? Recurring vs. project?
   Competitive position: Why does this company win? Is the moat real?
   Management: Who runs it? Are they operators or administrators?
   Financial quality: Margins, growth, cash conversion, revenue concentration
   
3. VALUE CREATION HYPOTHESIS (the specific plan to grow value):
   Revenue growth levers: Which are real and executable by this team?
   Margin expansion levers: Which are real and executable?
   Multiple expansion: What de-risks the asset and justifies a higher exit multiple?
   Operating improvements: What specific things will we fix, build, or scale?
   
4. EXIT HYPOTHESIS:
   Exit type: Strategic sale / financial sale / recap
   Buyer universe: Named strategic buyers or PE firms with sector focus
   Exit timeline: When? 3-year, 5-year, 7-year hold?
   Exit multiple: What EBITDA multiple is realistic at exit? What needs to be true?
   Return profile: Target MOIC and IRR
   
5. KEY RISKS AND MITIGATIONS:
   Execution risk: Is the management team capable? What's the bench?
   Market risk: What market changes would break the thesis?
   Regulatory risk: What compliance or regulatory event could impair value? (AKS for Allevio; DOGM for HIVE)
   Competitive risk: Who enters this space and with what?
   Concentration risk: Customer / payer / production / revenue
   
6. THESIS VALIDITY INDICATORS:
   Green flags: What quarterly/annual signals confirm the thesis is on track?
   Yellow flags: What signals suggest the thesis is under pressure but recoverable?
   Red flags: What signals trigger a thesis review (and possibly an early exit)?
   
MBL portfolio thesis summaries:
  Allevio: AZ healthcare MSO consolidation opportunity; fragmented primary care practices; 
    thesis = buy physician practices at below-market multiples + operational improvement + 
    exit to national MSO/hospital system at premium multiple; risk = AKS, OIG LEIE, payer mix
    
  HIVE Partners: Uinta Basin Tier 1 tight oil production; thesis = operational improvement in 
    production and LOE; exit via strategic sale to larger E&P or LP distribution; 
    risk = WTI price, UT DOGM, environmental
    
  Column6/Siprocal: CTV/programmatic advertising infrastructure; thesis = cord-cutting tailwind 
    + programmatic automation + audience data; exit = platform acquisition by larger ad tech; 
    risk = advertiser concentration, programmatic competition
```

## Output Format

```markdown
# Investment Thesis — [Company Name]
**Date written:** [Date] | **Last updated:** [Date]
**Author:** Dr. John Lewis | **Matt Mathison reviewed:** ✅ [Date]
**Status:** ✅ Intact / ⚠️ Under pressure — [reason] / ❌ Broken — [reason]

---

## Thesis in One Paragraph

[2-4 sentences: the market opportunity + why this company wins in it + how we create value + what we exit into. This paragraph should be readable to an LP in 30 seconds and be completely accurate. No jargon. No hedging.]

---

## Market Opportunity

**Why this market:** [Size + growth + fragmentation — specific data]
**Why now:** [What makes 2026 the right entry timing — market, regulatory, or competitive catalyst]
**Our entry position:** [How we entered; what we paid; what we got]

---

## Company Quality

| Dimension | Assessment | Detail |
|---------|----------|--------|
| Business model | [Recurring/Project/Hybrid] | [How revenue is earned] |
| Revenue growth | [X]% CAGR | [Last 2 years] |
| EBITDA margin | [X]% | [LTM; trend direction] |
| Revenue concentration | [Top customer: X%] | 🟢/🟡/🔴 |
| Management | [Strong/Adequate/Weak — honest] | [Who owns the outcome] |
| Competitive position | [Leader/Challenger/Niche] | [Moat description] |

---

## Value Creation Hypothesis

**Revenue levers (specific, quantified):**
1. [Lever: Add 1 provider → +$180K annual revenue; timeline: Q2 Year 1]
2. [Lever]
3. [Lever]

**Margin levers (specific, quantified):**
1. [Lever: Billing lag reduction 45→30 days → $60K annual cash improvement; timeline: Year 1]
2. [Lever]

**Multiple expansion levers:**
1. [Lever: HIPAA audit-ready → removes compliance discount → estimated +0.5-1.0× exit multiple]
2. [Lever: CPA-reviewed financials → removes financial quality discount → +0.25×]

**Target EBITDA at exit:** $[X]M (vs. $[X]M entry) — [X]× improvement over hold period

---

## Exit Hypothesis

**Target exit:** [Q/Year] | **Hold period:** [N] years
**Exit type:** [Strategic sale to larger MSO / Financial sale to healthcare PE / Recap]
**Buyer universe (named):** [Name 1 (rationale)]; [Name 2]; [Name 3]
**Entry multiple:** [X]× EBITDA | **Target exit multiple:** [Y]× EBITDA
**Target MOIC:** [X]× | **Target IRR:** [X]%

---

## Key Risks

| Risk | Probability | Impact | Mitigation | Owner |
|------|------------|--------|-----------|-------|
| [Management retention] | Medium | High | Employment agreements + equity | CEO |
| [Payer concentration] | Low | High | Payer diversification program | COO |
| [AKS violation (Allevio)] | Low | Critical | Attorney review of all referral arrangements | Dr. Lewis |
| [WTI price decline (HIVE)] | Medium | High | Production cost reduction; hedging | CEO |

---

## Thesis Validity Dashboard

| Signal | Current status | Threshold for action |
|--------|--------------|---------------------|
| [Revenue growth] | [X]% | <5% two consecutive quarters = yellow flag |
| [EBITDA margin] | [X]% | <[X]% = yellow; <[X]% = red |
| [Provider count (Allevio)] | [N] | <[N] at 12 months = red flag |
| [Production (HIVE)] | [N] BBL/day | <[N] two consecutive months = red |
| [Payer concentration] | [X]% | >50% = red flag |

**Overall thesis status:** ✅ Intact / ⚠️ Under pressure / ❌ Broken

---

## Matt Mathison Brief

[Company] investment thesis [Date]: [One sentence thesis summary]. Thesis status: [Intact / Under pressure / Broken]. MOIC to date: [X]×. Projected exit MOIC: [X]× by [Date]. Key risk: [One sentence]. Value creation on track: [Yes / Specific item at risk]. Recommended LP communication: [No change / Update in next report / Immediate notification].
```

## Output Contract
- The one-paragraph thesis is the document — every other section is evidence; if the one-paragraph thesis can't be written clearly, the thesis isn't clear enough to guide decisions; Dr. Lewis does not approve a thesis document that requires more than one paragraph to state the investment case; the one-paragraph version is what gets read by an LP, presented to a lender, and used by the CEO to make daily decisions
- Thesis validity indicators are observable, not aspirational — a thesis validity indicator must be something that can be measured from available data; "the company is executing well" is not a validity indicator; "EBITDA margin ≥15% for three consecutive quarters" is a validity indicator; "provider headcount at or above plan" is a validity indicator; if a validity indicator can't be tracked, it's replaced with one that can be
- A broken thesis requires immediate Matt Mathison escalation and a decision — when a red flag threshold is crossed, the response is not to update the thesis document; the response is to convene Matt Mathison within 72 hours and make a decision: (1) thesis is recoverable with specific interventions, (2) accelerate exit before further value loss, (3) write down the position and recapitalize; thesis documents don't fix broken businesses; honest thesis assessments enable the right response
- HITL required: Dr. Lewis writes and maintains; CEO reviews for operational accuracy; Matt Mathison approves the thesis at entry and all material updates; LP-level thesis communication requires Matt Mathison approval; thesis status changes (Intact → Under pressure → Broken) trigger immediate Matt Mathison notification

## System Dependencies
- **Reads from:** Financial statements (QuickBooks), market analysis (strategy-market-analyzer), competitive intelligence (strategy-competitive-intelligence), VCP progress (strategy-value-creation-plan), compliance status (rc-compliance-ops-review)
- **Writes to:** Thesis document (SharePoint/Strategy/<Company>/Thesis/); LP reporting input (strategy-lp-reporting); exit planning (strategy-exit-planner); annual strategic plan (strategy-annual-plan-builder)
- **HITL Required:** Dr. Lewis writes and maintains; CEO reviews; Matt Mathison approves at entry and all material updates; Matt Mathison for LP communication about thesis status

## Test Cases
1. **Golden path:** Writing the initial investment thesis for Allevio → One-paragraph thesis: "Allevio operates in the fragmented Arizona primary care MSO market — a $280M serviceable market growing at 7% annually driven by physician practice consolidation and AZ population growth. Allevio's differentiation is its physician-centered model (practices retain clinical autonomy while gaining operational support) and its Scottsdale/Phoenix network of referral relationships. We create value through three levers: adding 2 providers over 24 months (+$360K annual revenue), reducing billing lag from 45 to 30 days (+$60K cash), and achieving HIPAA audit-ready certification (removes buyer discount, estimated +0.5-1.0× exit multiple). Exit target: strategic sale to a national MSO or hospital system in Year 4-5 at 7-9× EBITDA, delivering 22-26% IRR." Matt Mathison reviews and approves before close.
2. **Edge case:** Annual thesis update — revenue grew 8% but EBITDA margin dropped from 18% to 13% due to provider recruitment costs → Thesis validity indicators: revenue growth ✅; EBITDA margin 🟡 — 13% is below the 15% yellow flag threshold; root cause: $85K in provider recruitment costs (one-time) + additional $35K in ongoing admin support for new provider; if this is permanent cost structure, EBITDA margin recovers to 16% after new provider panel fills (12-18 months); thesis status: Under pressure (yellow flag); Matt Mathison briefed; decision: no change to exit timeline; monitor margin recovery over next 2 quarters; VCP updated to include margin recovery as a tracked initiative; next thesis update at Q3 with assessment of whether margin recovery is on track
3. **Adversarial:** "Let's update the thesis to reflect our new strategic direction" — but the new direction is different from the original investment rationale → Thesis updates should reflect evolving execution of the same investment rationale, not a pivot to a new thesis; a thesis update that changes the business model, the exit buyer universe, or the return profile is a material change that requires Matt Mathison approval; if a CEO wants to "update the thesis" to justify a decision that doesn't fit the original logic, Dr. Lewis flags this as a potential thesis drift event; the decision is brought to Matt Mathison with: (1) original thesis, (2) proposed new direction, (3) whether the new direction delivers better or worse risk-adjusted returns; Matt Mathison decides; Dr. Lewis does not update the thesis document to rationalize a decision already made

## Audit Log
Investment theses retained permanently (PE portfolio history). Annual thesis updates retained. Matt Mathison approval records retained. Thesis validity dashboard snapshots retained quarterly. Red flag escalation records retained.

## Deprecation
Retire when MBL develops a formal investment committee process with a standardized thesis template — with Dr. Lewis maintaining the operational validity indicators and compliance inputs while the investment team owns the financial thesis modeling.
