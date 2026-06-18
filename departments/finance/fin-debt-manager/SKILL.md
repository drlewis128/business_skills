---
name: fin-debt-manager
description: "Manage debt and credit facilities for MBL Partners and portfolio companies. Use when the user says 'debt management', 'credit facility', 'line of credit', 'LOC', 'term loan', 'debt covenant', 'covenant compliance', 'debt schedule', 'amortization schedule', 'debt repayment', 'refinance', 'interest rate', 'debt service', 'DSCR', 'debt service coverage ratio', 'leverage ratio', 'debt-to-EBITDA', 'lender relationship', 'bank relationship', 'draw on the line', 'credit draw', 'borrowing base', 'credit availability', 'net leverage', 'gross leverage', 'debt covenant waiver', 'covenant breach', 'lender notification', 'debt maturity', 'maturity date', 'refinancing', 'new debt facility', 'debt capacity', 'optimal capital structure', or 'entity debt'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--action <review|draw|repay|refinance|covenant-check|report>] [--facility <term-loan|loc|revolver|other>] [--period <monthly|quarterly>]"
---

# Fin Debt Manager

Manage debt and credit facilities for MBL Partners and portfolio companies — tracking outstanding debt balances, covenant compliance, maturity schedules, and lender relationships. Debt is a tool that MBL uses selectively to enhance returns and provide working capital flexibility; it is not a default financing mechanism for every entity or situation. At MBL's portfolio scale, debt management is primarily about: (1) ensuring existing debt service is current and covenants are met; (2) maintaining good lender relationships so credit is available when needed; (3) evaluating refinancing opportunities when rates or terms improve; (4) knowing when debt is the right tool vs. equity.

## When to Use
- Monthly: debt balance update and covenant compliance check
- Quarterly: full debt schedule review for Matt Mathison and the board
- A draw on a credit facility is needed (working capital; capex)
- A covenant risk is identified (performance decline that may breach a financial covenant)
- Refinancing opportunity arises (rate improvement; facility expansion)
- Matt Mathison asks about entity debt positions

## Debt Management Framework

```
MBL PORTFOLIO DEBT POSITIONS (review and update monthly):

  For each facility:
    Entity: [Entity]
    Lender: [Bank/institution]
    Facility type: [Term loan / Revolving LOC / Equipment loan]
    Original amount: $[X]
    Current balance: $[X]
    Interest rate: [%] ([Fixed / Variable — if variable: index + spread])
    Maturity date: [Date]
    Monthly payment: $[X] (principal + interest)
    Covenant summary: [Key covenants]
    Last compliance check: [Date]
    Next compliance reporting due: [Date]
    
DEBT COVENANT TYPES AND MONITORING:

  FINANCIAL COVENANTS (most common in PE-backed companies):
    
    DSCR (Debt Service Coverage Ratio):
      Formula: EBITDA / Annual Debt Service (principal + interest)
      Typical minimum: 1.2× - 1.5×
      Interpretation: for every $1 of debt service, entity must generate $1.20-$1.50 of EBITDA
      Monitoring: quarterly; compare LTM EBITDA to annual debt service
      
    Leverage Ratio (Net Debt / EBITDA):
      Formula: Total Debt / LTM EBITDA (or Net Debt = Total Debt - Cash)
      Typical maximum: 3.0× - 4.0× (varies by industry and lender)
      Monitoring: quarterly; EBITDA fluctuations affect this ratio more than debt balance changes
      
    Minimum Liquidity:
      Formula: Cash + available credit facility capacity
      Typical minimum: $[X] or [N] months of operating expense
      Monitoring: monthly with cash flow update
      
  OPERATIONAL COVENANTS (common):
    Key person clause: notify lender if entity CEO or CFO departs
    Material adverse change: notify lender of any material event
    Change of control: lender must consent to a change in MBL ownership
    Additional debt: cannot incur new debt above threshold without lender consent
    
  COVENANT BREACH PROTOCOL:
    Step 1: Identify the risk 90+ days before potential breach (from the model)
    Step 2: Dr. Lewis notifies Matt Mathison immediately upon identification
    Step 3: Proactively contact the lender before breach (lenders respond better to proactive disclosure)
    Step 4: Discuss waiver or amendment options with the lender
    Step 5: Negotiate from strength: bring the recovery plan when you call the lender
    
    Do NOT: wait until the covenant is breached to contact the lender
    Do NOT: miss a required covenant compliance report
    Do NOT: make a covenant compliance representation that isn't accurate

DEBT CAPACITY ANALYSIS:

  When evaluating new debt:
    Entity EBITDA: $[X] (LTM)
    Existing debt: $[X] (current)
    Existing leverage: [N]× EBITDA
    Maximum target leverage: 3.0× (conservative) - 4.0× (aggressive)
    Available debt capacity: (3.0× × EBITDA) - existing debt = $[X]
    
    DSCR with new debt:
    Current EBITDA: $[X]
    New annual debt service: existing + new
    DSCR: EBITDA / total debt service = [N]× (must be ≥1.2×)
    
  When NOT to add debt:
    DSCR would fall below 1.2× at base case EBITDA
    The purpose of the debt is to fund operating losses (not capex; not growth)
    The entity is in a deteriorating performance trend
    The exit timeline is <18 months (adds buyer complexity)

REFINANCING EVALUATION:

  Refinance when:
    Current rate vs. market rate differential >1%
    Maturity approaching within 12 months (refinance before maturity, not at maturity)
    Facility size needs to be expanded (growth requires more credit capacity)
    Covenant terms are unnecessarily restrictive given current performance
    
  Refinancing process:
    Prepare: financial statements (2 years); projections (3 years); covenant compliance history
    Approach: existing lender first; if not competitive, go to market
    Timeline: allow 60-90 days for a credit facility refinancing
    Matt Mathison approval required before signing any new credit facility
```

## Output Format

```markdown
# Debt Management Summary — [Month/Quarter Year]
**Maintained by:** Dr. Lewis | **Reviewed by:** Matt Mathison | **As of:** [Date]

---

## Portfolio Debt Summary

| Entity | Facility | Balance | Rate | Maturity | DSCR | Covenant Status |
|--------|---------|---------|------|---------|------|----------------|
| [Entity] | [Type] | $[X] | [%] | [Date] | [N]× | 🟢/🟡/🔴 |

**Total portfolio debt:** $[X]
**Average portfolio leverage:** [N]× EBITDA

---

## Covenant Compliance Status

| Entity | Covenant | Requirement | Current | Status | Next check |
|--------|---------|------------|---------|--------|-----------|
| [Entity] | DSCR | ≥1.25× | [N]× | 🟢/🟡/🔴 | [Date] |
| [Entity] | Leverage | ≤3.5× | [N]× | 🟢/🟡/🔴 | [Date] |

---

## Maturity Schedule

| Entity | Facility | Balance | Maturity | Action required |
|--------|---------|---------|---------|----------------|
| [Entity] | [Type] | $[X] | [Date] | [12mo: begin refinancing / >24mo: monitor] |
```

## Output Contract
- Proactive lender communication is always better — a lender who hears about a potential covenant issue from the borrower before it happens is in a partnership relationship; a lender who discovers a covenant breach in a compliance report (or, worse, in a missed payment) is in an adversarial relationship; Dr. Lewis monitors covenant headroom monthly and flags any risk to Matt Mathison and the lender 90+ days before a potential breach; this is not optional when it's convenient — it is a standing obligation
- Debt capacity is a ceiling, not a target — the maximum leverage capacity calculation tells you how much debt the entity could theoretically support; it does not tell you how much debt the entity should have; at MBL's current stage (build and validate before scale), the default posture is conservative leverage with strong covenant headroom; debt is appropriate for growth capex and working capital management, not for covering operating losses
- Matt Mathison approves all credit facility decisions — any new credit facility; any increase in an existing facility; any refinancing; any covenant waiver or amendment: all require Matt Mathison's explicit approval before execution; Dr. Lewis prepares the analysis and the recommendation; Matt decides; this applies regardless of deal size because credit facility decisions create obligations that affect LP returns and entity operational flexibility
- HITL required: Matt Mathison approves all new or modified credit facilities; covenant breach risk identified >90 days out goes to Matt and then proactively to the lender; any covenant compliance representation reviewed by Dr. Lewis for accuracy before submission to the lender; refinancing term sheets reviewed by Matt Mathison and legal counsel before signing; key person departures (exec-ceo-hiring context) trigger lender notification per credit agreement terms

## System Dependencies
- **Reads from:** QuickBooks (debt balances; interest expense; principal payments); fin-cash-flow-planner (debt service cash flows — principal and interest in the 13-week forecast); fin-financial-model (EBITDA projections used for covenant headroom analysis); credit facility agreements (covenant definitions; compliance reporting requirements; stored in SharePoint)
- **Writes to:** Debt schedule (SharePoint → Finance → Debt → [Entity] → [YYYY]); exec-cfo-oversight (debt service in the monthly financial summary); exec-board-reporting (debt positions and covenant status in the board package); fin-lp-financial-disclosure (entity debt disclosed to LPs); exec-action-tracker (covenant compliance reporting due dates; maturity dates; refinancing milestones)
- **HITL Required:** Matt Mathison approves all new/modified credit facilities; covenant breach risk → Matt notification within 24 hours + proactive lender outreach; covenant compliance representations reviewed by Dr. Lewis; key person departures trigger lender notification (Dr. Lewis coordinates); refinancing term sheets require Matt Mathison + legal review

## Test Cases
1. **Golden path:** Monthly debt review; Allevio has a $250K equipment term loan (2-year; 6.5% fixed; 22 months remaining; $12,500/month payment); DSCR: $287K EBITDA (quarterly annualized $1.15M) / $150K annual debt service = 7.7× (strong; well above 1.25× minimum); leverage: $250K / $1.15M EBITDA = 0.22× (very conservative). No covenant concerns. Next compliance report due in 6 weeks; Dr. Lewis puts in exec-action-tracker. No action required. Note: "Allevio's debt is conservatively positioned. If we pursue the equipment upgrade planned for Q4 ($185K), we could use the existing equipment facility capacity without materially affecting leverage or DSCR."
2. **Edge case:** HIVE's DSCR is trending toward the 1.25× covenant minimum due to a WTI price decline → Dr. Lewis: "HIVE's DSCR is currently 1.38× — above the 1.25× covenant, but the trend is concerning. At $52 WTI (current strip), LTM EBITDA would drop to $[X], which puts DSCR at 1.19× — below the covenant minimum. This is a 90-day risk. I'm recommending two actions: (1) Alert Matt Mathison immediately (today); (2) Call the HIVE lender proactively this week to inform them of the WTI environment and the potential DSCR headroom compression — before the quarterly compliance report is due. I'll prepare a brief for the lender call that shows: current position, WTI sensitivity, and what we're doing about it. Proactive disclosure is always better than reactive. Matt, do you want to be on the lender call or have me handle it solo?" Matt decides call structure.
3. **Adversarial:** Entity CEO wants to draw on the revolving LOC to fund operational expenses without an approved plan → Dr. Lewis: "I won't process a draw on the LOC to fund operating expenses without an approved plan for repayment. Here's why: the revolving LOC is designed for short-term working capital management (bridging the gap between when you pay vendors and when you collect from customers) — not for funding losses. If we draw $150K from the LOC to cover operating expenses, we've borrowed at [X%] to fund a gap that needs to be solved operationally, not financially. The LOC draw is a short-term fix that creates a 90-day principal repayment obligation we may not be able to meet. What I'd rather do: understand why operating expenses are exceeding operating revenue and address that. If it's a timing issue (large invoice due before a major collection), a draw makes sense. If it's a structural deficit, the draw buys 90 days and then we have the same problem plus interest. Tell me which it is."

## Audit Log
All debt schedule versions retained. Covenant compliance check records (date; metrics; result). Lender communications retained (proactive disclosures; covenant discussions; waivers). Credit facility agreements retained permanently. Matt Mathison approval records for facility decisions. Refinancing documentation retained.

## Deprecation
Retire when each entity has a CFO who manages the entity debt portfolio — with Dr. Lewis providing the portfolio-level debt summary and Matt Mathison retaining approval authority for all credit facility decisions and covenant waiver negotiations.
