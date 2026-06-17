---
name: fin-ops-bank-relationship-manager
description: "Manage banking relationships — credit facilities, fee negotiation, and covenant compliance. Use when the user says 'banking relationship', 'bank relationship', 'credit facility', 'line of credit', 'bank covenants', 'debt covenants', 'bank negotiations', 'bank fees', 'banking fees', 'negotiate banking', 'bank review', 'annual bank review', 'covenant compliance', 'bank covenant', 'credit line', 'revolving credit', 'term loan covenant', 'bank meeting', 'bank waiver', or 'bank compliance'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--bank <bank name>] [--action <review|negotiate|covenant-check|waiver>] [--facility <loc|term-loan|checking>]"
---

# Bank Relationship Manager

Manage banking relationships for MBL portfolio companies — maintaining productive relationships with banking partners, negotiating credit facilities, monitoring covenant compliance, and ensuring the company's banking infrastructure supports its operational and growth needs. Banking relationships at PE portfolio companies are strategic assets: a strong relationship with a banker who understands the business provides access to credit at favorable terms when needed; a damaged relationship or an unexpected covenant violation creates financing risk at the worst possible time. Dr. Lewis manages the banking relationship proactively and involves Matt Mathison for any credit facility negotiations or covenant questions.

## When to Use
- Annual bank review (standard process — meet with bankers each year)
- Evaluating whether to add or renegotiate a line of credit
- Monthly covenant compliance check (if the company has a credit facility)
- Bank fee review — are we paying more than we should?
- A covenant is at risk of being violated — assess and plan
- New portfolio company — evaluate the current banking relationship and facilities

## Banking Relationship Framework

```
Banking infrastructure by entity:

  ALLEVIO (Healthcare MSO):
    Operating account: Primary checking; payroll; vendor payments via Bill.com
    Payroll account: Separate account if payroll provider requires dedicated account
    Line of credit (LOC): Recommended for healthcare companies with AR/reimbursement timing gaps
      LOC purpose: Bridge between claim submission and payer reimbursement (30-60 day lag)
      LOC size: 60-day AR balance (approximately 2 months of payer receivables)
      LOC type: Revolving; draw and repay as cash needs fluctuate
      
  HIVE PARTNERS (Oil & Gas):
    Operating account: For LOE payments and administrative expenses
    Reserve account: For production payment receipts and distributions
    LOC (if applicable): Bridge for timing gaps between production months and payment receipt
      LOC size: 60-day production payment equivalent
      
  COLUMN6 / SIPROCAL (CTV/Advertising):
    Operating account: Primary checking
    LOC (if applicable): For cash flow management between campaign delivery and advertiser payment (30-45 day gap)
    
Credit facility management:

  WHAT TO NEGOTIATE:
    Interest rate: Usually prime rate + spread (e.g., Prime + 1.5% for a healthy small business)
    Commitment fee: Annual fee on the undrawn portion of the LOC (typically 0.25%-0.50%)
    Collateral: Banker will request collateral; healthcare AR is common collateral for Allevio LOC
    Personal guarantee: Common for small businesses; Matt Mathison evaluates whether to accept
    Covenants: The bank's requirements that the company must maintain
    
  COVENANTS (most common for small PE portfolio companies):
    Minimum cash/liquidity covenant: Keep cash ≥ $X at all times (e.g., ≥ 1 month operating expenses)
    Debt service coverage ratio (DSCR): EBITDA ÷ Debt service (principal + interest) ≥ 1.25x
      Example: EBITDA $520K; annual debt service $350K; DSCR = 1.49x → COMPLIANT
      Covenant threshold: DSCR ≥ 1.20x (bank requirement); 1.49x > 1.20x → COMPLIANT
    Minimum EBITDA: EBITDA ≥ $X for the trailing 12 months
    Maximum leverage: Total debt ÷ EBITDA ≤ X (e.g., ≤ 4.0x)
    
  COVENANT MONITORING (monthly):
    Pull the covenant metrics from the financial statements after each close
    Calculate: DSCR; leverage; liquidity; EBITDA
    Compare to covenant thresholds
    If any metric is approaching the covenant threshold (within 15% of the threshold): Alert Dr. Lewis immediately
    If any metric is below the threshold: Covenant violation — must notify bank within 30-60 days per the agreement
    
  COVENANT WAIVER PROCESS (if violation occurs or is anticipated):
    Step 1: Dr. Lewis calculates the exact violation and the expected duration
    Step 2: Dr. Lewis and Matt Mathison are aligned on the recovery plan
    Step 3: Proactive bank communication (don't wait for the bank to notice)
      Call the banker: "We're going to miss the DSCR covenant this quarter due to [specific reason].
        Here's our plan to recover. We're requesting a temporary waiver for Q[N]."
      Banks respond better to proactive disclosure with a plan than to discovered violations
    Step 4: Obtain a written waiver agreement before the covenant violation date
    Step 5: Execute the recovery plan; monitor monthly until the covenant is no longer at risk
    
  BANKING FEE REVIEW (annual):
    Pull 12 months of bank fees from the operating account statements
    Categorize: Monthly service fees; wire fees; ACH fees; overdraft fees; per-item fees; merchant fees
    Compare to market: Get a competitive quote from 1-2 other banks or negotiate with the current bank
    Target: Reduce banking fees by ≥15% annually if fees are above market
    Common quick wins: Switch to a higher-tier account that eliminates per-item fees; negotiate ACH/wire fee caps
    
  ANNUAL BANKER MEETING:
    Timing: Schedule in January-February after year-end financials are available
    Who attends: CEO + Dr. Lewis + primary banker (and banker's supervisor if seeking new credit)
    Content:
      - Year-end financial results vs. prior year and plan
      - Current cash position and 13-week outlook
      - Business update: Key wins, operational changes, M&A activity
      - Credit facility: Is the current LOC still the right size and structure?
      - Banking service review: Are there services we should add or remove?
    Goal: Relationship maintenance; credit facility renewal; and positioning for future financing needs
```

## Output Format

```markdown
# Banking Relationship Report — [Entity] [Bank Name]
**Date:** [Date] | **Relationship manager:** [Banker name] | **Last meeting:** [Date]

---

## Banking Facilities

| Facility | Amount | Rate | Maturity | Outstanding | Collateral |
|---------|--------|------|---------|------------|-----------|
| Operating checking | — | — | — | — | — |
| Line of credit | $[X]K | Prime + [X]% | [Date] | $[X]K drawn | [AR / None] |
| Term loan | $[X]K | [X]% fixed | [Date] | $[X]K | [Equipment/RE] |

---

## Covenant Compliance — [Month]

| Covenant | Threshold | Current | Status | Headroom |
|---------|-----------|---------|--------|---------|
| DSCR (trailing 12 months) | ≥ 1.20x | [X.XX]x | 🟢/🟡/🔴 | [X.XX]x above threshold |
| Minimum cash | ≥ $[X]K | $[X]K | 🟢/🟡/🔴 | $[X]K above threshold |
| Total leverage | ≤ [X.X]x | [X.X]x | 🟢/🟡/🔴 | [X.X]x below threshold |
| Minimum EBITDA (TTM) | ≥ $[X]K | $[X]K | 🟢/🟡/🔴 | $[X]K above threshold |

**Status thresholds:** 🟢=Within 15%+ of threshold (comfortable); 🟡=Within 15% (watch closely); 🔴=Below threshold (violation)

---

## Banking Fee Summary (trailing 12 months)

| Fee type | Annual cost | Per-event cost | Comparison to market | Action |
|---------|------------|---------------|---------------------|--------|
| Monthly service fee | $[X] | — | Above market | Negotiate |
| Wire fees | $[X] | $[X]/wire | At market | No action |
| ACH fees | $[X] | $[X]/ACH | Below market | No action |
| **Total banking fees** | **$[X]** | | | |

---

## Action Items

| Action | Owner | Deadline | Status |
|--------|-------|---------|--------|
| Annual banker meeting | Dr. Lewis + CEO | [Date] | ✅/⚠️ |
| LOC renewal negotiation | Dr. Lewis + Matt | [Date] | ✅/⚠️ |
| Fee negotiation (monthly service fee) | Dr. Lewis | [Date] | ⚠️ In progress |

---

## Matt Mathison Brief (quarterly or event-triggered)

**Banking summary — [Entity]:** [Facilities current; covenant status; any waiver requested; fee negotiation outcome; recommendation].
```

## Output Contract
- Proactive covenant communication before violation — the worst banking relationship outcome is a banker who discovers a covenant violation before the company disclosed it; it signals that management is not tracking its own metrics and suggests potential concealment; Dr. Lewis monitors covenants monthly after every close and contacts the banker proactively when any metric is within 15% of the threshold; the banker appreciates the transparency and is far more likely to work with the company on a waiver than if the violation is discovered during the bank's own analysis; a company that self-discloses early almost always gets a waiver; a company discovered in violation without disclosure may face acceleration of the credit facility
- Matt Mathison approves all credit facility negotiations — a line of credit or term loan is a material financial decision for the portfolio company; the terms (interest rate, covenants, personal guarantee requirements) affect the company's operational flexibility and Dr. Lewis's and Matt Mathison's personal exposure; Dr. Lewis prepares the credit facility analysis and recommendation; Matt Mathison makes the final decision on any new facility, any increase in facility size, and any covenant waiver request; Dr. Lewis does not commit to credit facility terms without Matt Mathison authorization
- Annual fee review finds savings every time — banking fees are rarely optimized because no one reviews them; a company that has been with the same bank for 5 years is often paying the standard rate card for services that have been renegotiated to lower rates for new customers; Dr. Lewis reviews all banking fees annually, benchmarks them against market rates, and negotiates; the typical outcome is 15-25% reduction in total banking fees; for a company paying $18,000/year in banking fees, a 20% reduction saves $3,600/year with 2 hours of work — the highest ROI activity in finance operations
- HITL required: Dr. Lewis manages day-to-day banking relationship; Matt Mathison approves all credit facility decisions (new facilities, increases, waivers); CEO attends the annual banker meeting; covenant compliance monitored by Dr. Lewis monthly; any covenant approaching violation (<15% headroom) triggers immediate Dr. Lewis notification to Matt Mathison and CEO

## System Dependencies
- **Reads from:** Bank account statements (bank portal); credit facility agreement (SharePoint Legal); covenant definitions and thresholds (credit agreement); EBITDA and debt service from QuickBooks financial statements; fin-ops-cash-flow-tracker (for LOC draw/repay planning)
- **Writes to:** Covenant compliance tracker (monthly); Matt Mathison quarterly banking brief; banker correspondence (email); fee negotiation records; waiver request letters (if applicable); annual banker meeting agenda and notes
- **HITL Required:** Dr. Lewis manages; Matt Mathison approves all credit facility decisions; CEO attends annual banker meeting; waiver requests require Matt Mathison approval before submission to bank

## Test Cases
1. **Golden path:** Allevio annual banker meeting — January 2026 → Dr. Lewis prepares: year-end financials (P&L: $1.24M revenue, $285K EBITDA — 10% above prior year); covenant compliance: DSCR 1.67x (above 1.20x threshold ✅); minimum cash $151K (above $50K threshold ✅); leverage 2.1x (below 4.0x threshold ✅); banking fee review: $14,800 annual fees; wire fees $45/wire (market is $25); Dr. Lewis negotiates wire fee to $25 saving $400/year; recommends LOC increase from $150K to $200K (AR has grown); meeting: CEO + Dr. Lewis + banker; banker reviews results positively; agrees to LOC increase to $200K at Prime + 1.25% (improved from +1.5%); annual fee review complete; Matt Mathison briefed on LOC increase (approved in advance); all outcomes positive
2. **Edge case:** HIVE's DSCR drops to 1.15x (below the 1.20x covenant threshold) due to WTI oil price decline → Dr. Lewis calculates: EBITDA dropped to $420K (from $520K); debt service unchanged at $350K; DSCR = 1.20 (1.15x if calculating exactly) — below the threshold; Dr. Lewis notifies Matt Mathison immediately; Matt Mathison and Dr. Lewis align on the recovery plan: WTI is at $62/bbl; at $65/bbl (a realistic recovery), DSCR returns to 1.35x; they expect recovery in 60-90 days; Dr. Lewis calls the HIVE banker within 48 hours of the close: "We've experienced a DSCR dip below covenant due to WTI price softness. We're requesting a 90-day waiver while prices recover. Here's our analysis and outlook." Banker reviews; agrees to a 90-day waiver with a monthly check-in; waiver letter received; Dr. Lewis monitors WTI weekly and reports to Matt Mathison; WTI recovers to $66/bbl in Week 8; DSCR returns to 1.38x; waiver period ends without further issues
3. **Adversarial:** The HIVE banker calls Dr. Lewis and says "we've noticed your DSCR has been below covenant for 2 months — we're considering accelerating the facility" → This is the consequence of not monitoring proactively; if this call happens, Dr. Lewis has lost the proactive advantage; Dr. Lewis responds professionally: "You're right, and I should have called you before now. I apologize for the delay. The drop was driven by [WTI price decline — specific]. Here's our current recovery plan and timeline." The banker has leverage because the company is already in violation; Dr. Lewis presents the strongest possible case for a waiver; Matt Mathison gets involved directly; the outcome is likely still a waiver but with less favorable terms than if Dr. Lewis had called proactively; lesson reinforced: Dr. Lewis monitors covenants the same day each close is complete

## Audit Log
All covenant compliance calculations retained by month. Banking fee review records retained annually. Credit facility agreements retained permanently. Waiver requests and waiver letters retained. Annual banker meeting notes retained. Matt Mathison approval for credit facility decisions retained. Fee negotiation outcomes retained.

## Deprecation
Retire when each portfolio company has a CFO who manages banking relationships — with Dr. Lewis supporting covenant review and Matt Mathison approving all credit facility decisions.
