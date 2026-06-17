---
name: fin-ops-investment-manager
description: "Manage short-term cash investments — money market funds, T-bills, and treasury management. Use when the user says 'cash investment', 'invest cash', 'short-term investment', 'money market', 'treasury bills', 'T-bills', 'excess cash', 'idle cash', 'yield on cash', 'cash yield', 'treasury management', 'cash management', 'invest idle cash', 'sweep account', 'money market fund', 'cash reserves', 'optimize cash', 'earn interest on cash', or 'short-term treasury'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--amount <$>] [--horizon <days>] [--action <evaluate|invest|review|liquidate>]"
---

# Investment Manager

Manage short-term cash investments for MBL portfolio companies — putting idle cash to work in low-risk, highly liquid instruments while maintaining the operating reserve and ensuring capital is available when needed. At PE portfolio companies, excess cash sitting in a non-interest-bearing checking account earns nothing; short-term investment in money market funds or Treasury bills typically earns 4-5% annually (at current rates) with near-zero risk and same-day or next-day liquidity. For a portfolio company with $300K in excess cash, a 4.5% money market yield generates $13,500/year — $13,500 of pure EBITDA improvement for 2 hours of setup work. Dr. Lewis identifies investable excess and acts on it.

## When to Use
- A portfolio company has accumulated cash significantly above the 30-day operating reserve
- Setting up an initial treasury management structure for a new portfolio company
- Annual review of short-term investment policy and current yields
- A major contract payment or capital call has been received — deploy excess until needed
- HIVE Partners LP distribution timing — optimize cash between production receipt and distribution

## Short-Term Investment Framework

```
Investment policy (conservative — preservation first, yield second):

  INVESTMENT OBJECTIVE: Preserve capital; maintain liquidity for operations; earn market-rate yield
  INVESTMENT HORIZON: 1 day to 12 months (no long-term investments for operating cash)
  PERMITTED INSTRUMENTS:
    1. Money market mutual funds (government or prime; minimum AAA-rated fund)
    2. U.S. Treasury bills (T-bills; 4-week, 13-week, 26-week)
    3. FDIC-insured high-yield savings accounts (banks with FDIC coverage to $250K limit)
    4. Bank sweep accounts (automatic overnight sweep into money market)
  PROHIBITED INSTRUMENTS (for operating cash):
    Corporate bonds, equities, crypto, long-term bonds, CDs >12 months, real estate
    
  RESERVE REQUIREMENTS (cash that must remain liquid — not invested):
    Operating reserve: 30 days of operating expenses (stays in checking account)
    Payroll reserve: 1 payroll cycle (Friday payroll uses funds available Tuesday)
    AP reserve: Current week's AP batch
    Total required in operating account: 30-day reserve + payroll + AP batch
    
  INVESTABLE EXCESS = Total cash − Required reserve
  Only the investable excess is eligible for short-term investment
  
By entity:

  ALLEVIO (Healthcare):
    Cash flow timing: Employer group invoices collected Net 15 (predictable); payer reimbursements variable
    Investment opportunity: Periods when payer reimbursements pile up before the next LOE payment cycle
    Recommended: Money market sweep account (automatic; no manual action; 4-5% yield)
    Watch: Maintain $150K minimum in checking for operational flexibility
    
  HIVE PARTNERS (Oil & Gas):
    Cash flow timing: Production payments received ~60 days after production month
    Large payment periods: When multiple production months consolidate, cash can spike significantly
    Investment opportunity: Between production payment receipt and LP distribution (30-60 day window)
    Recommended: 4-week or 13-week T-bills when the hold period is defined
    Tax consideration: HIVE distributions to LPs are taxed as partnership income; investment yield is also partnership income; consult the CPA on any tax implications of investment income
    WTI stress protocol: At <$48/bbl, maintain maximum liquidity (money market only; no T-bills > 4 weeks)
    
  COLUMN6 / SIPROCAL (CTV/Advertising):
    Cash flow timing: Agency payment cycles can create lumpy receipts (large invoice, 30-60 day lag)
    Investment opportunity: Between large agency payment receipts and next operating period
    Recommended: Money market sweep account (automatic; handles lumpy inflows)

Money market sweep account setup (recommended for all entities):

  Step 1: Open a money market account at the same bank or a linked institution (Schwab One Source; Fidelity; Vanguard; bank's own money market)
  Step 2: Set up auto-sweep: end-of-day, funds above the reserve threshold automatically sweep to the money market account
  Step 3: Same-day or next-day liquidity: funds are available to sweep back to checking when needed
  Step 4: Monthly reconciliation: money market balance appears as a separate line item on the balance sheet (Short-Term Investments)
  Step 5: Interest income: recorded monthly in QuickBooks (DR Cash / CR Interest Income)
  
T-bill investment process (for HIVE or large lump-sum excess):

  Step 1: Confirm the hold period (when is the cash needed? Set maturity before that date)
  Step 2: Purchase through TreasuryDirect.gov or a brokerage account (Schwab, Fidelity)
  Step 3: T-bill at discount: purchase price is less than face value; face value is returned at maturity
    Example: 13-week T-bill, face $100,000, purchase $98,750; yield = $1,250 over 91 days = ~5.0% annualized
  Step 4: Record in QuickBooks: DR Short-Term Investments / CR Cash (at purchase price)
  Step 5: At maturity: DR Cash / CR Short-Term Investments (purchase price) + CR Interest Income (yield)
  Step 6: Confirm no cash was needed during the hold period; if needed early, T-bills can be sold before maturity in the secondary market (minor price risk)
  
Current rate environment (as of knowledge cutoff):
  Money market funds: ~4.0-5.0% APY (government) depending on current Fed funds rate
  4-week T-bill: ~4.5-5.0% annualized
  13-week T-bill: ~4.5-5.0% annualized
  26-week T-bill: ~4.5-5.0% annualized
  High-yield savings: ~4.0-4.8% APY
  Note: Rates change with Fed policy; check current rates before investing
```

## Output Format

```markdown
# Short-Term Investment Analysis — [Entity]
**Date:** [Date] | **Analyzed by:** Dr. Lewis
**Current cash balance:** $[X]K | **Required reserve:** $[X]K | **Investable excess:** $[X]K

---

## Reserve Calculation

| Reserve Component | Amount | Notes |
|------------------|--------|-------|
| 30-day operating reserve | $[X]K | Avg monthly opex $[X]K |
| Payroll reserve (next cycle) | $[X]K | Bi-weekly payroll |
| AP reserve (current week batch) | $[X]K | Tuesday ACH batch |
| **Total required in checking** | **$[X]K** | |
| | | |
| Current cash balance | $[X]K | |
| Less: Required reserve | −$[X]K | |
| **Investable excess** | **$[X]K** | Eligible for short-term investment |

---

## Investment Recommendation

**Instrument:** [Money market sweep / 13-week T-bill / HYSA]
**Amount:** $[X]K
**Expected yield:** ~[X]% APY
**Annual interest income:** ~$[X]K/year (or $[X] over [N] weeks for T-bill)
**Liquidity:** [Same-day / Next-day / At maturity [date]]
**Setup required:** [Sweep account setup 1 hour / TreasuryDirect account / No action if sweep already active]

---

## Investment Ledger

| Instrument | Amount Invested | Purchase Date | Maturity / Liquidity | Rate | Expected Yield |
|-----------|----------------|--------------|---------------------|------|---------------|
| Money market sweep | $[X]K | Ongoing | Same-day | [X]% APY | $[X]K/year |
| 13-week T-bill | $[X]K | [Date] | [Date] | [X]% | $[X] |

---

## Matt Mathison Approval

**Investment action:** [Initiate money market sweep account at [Bank] for Allevio; $[X]K initial transfer]
**Approval required:** Matt Mathison for investment policy changes and initial investment account setup
**ROI:** $[X]K annual interest income on $[X]K investable excess at [X]% yield
```

## Output Contract
- Preserve capital first, yield second — the operating cash of a portfolio company is not investment capital; its purpose is to fund operations, payroll, and vendor payments; Dr. Lewis never sacrifices liquidity or capital safety for higher yield; money market funds, T-bills, and FDIC-insured accounts are the appropriate instruments; any suggestion to invest operating cash in equities, crypto, or long-term bonds is rejected regardless of the potential return; the finance equivalent of a surgeon who gambles with other people's money is a finance director who puts operating cash into speculative instruments
- The 30-day reserve stays in checking — always — before investing any excess, Dr. Lewis calculates the required reserve (30-day operating expenses + next payroll cycle + current AP batch) and confirms that the checking account will retain that balance after the investment; Dr. Lewis never moves cash that might be needed for operations into a short-term investment; if there's any doubt about the next 30 days' cash needs, the cash stays in checking
- Matt Mathison approves the investment policy and initial setup — the decision to establish a money market account or begin buying T-bills is a treasury policy decision that Matt Mathison should approve; Dr. Lewis presents the analysis (investable excess, recommended instrument, expected yield, liquidity characteristics) and gets Matt Mathison's explicit sign-off before transferring funds to any investment account; ongoing investments within an approved policy (the sweep account automatically investing per established rules) do not require ongoing approval, but policy changes do
- HITL required: Dr. Lewis analyzes and recommends; Matt Mathison approves investment policy and initial account setup; any T-bill purchase >$100K requires Matt Mathison approval; monthly investment ledger reconciliation by Dr. Lewis; interest income recorded monthly in QuickBooks; HIVE distributions must wait for production payment confirmation — do not invest cash that is earmarked for LP distributions

## System Dependencies
- **Reads from:** Bank checking account balance; 13-week cash flow forecast (fin-ops-cash-flow-tracker); AP batch schedule; payroll schedule; HIVE production payment receipt dates; current money market and T-bill rates (TreasuryDirect.gov; bank rates)
- **Writes to:** Investment account (transfer from checking); QuickBooks (Short-Term Investments on balance sheet; Interest Income on P&L); investment ledger (SharePoint/Finance/<Company>/Treasury/); Matt Mathison approval record; monthly reconciliation
- **HITL Required:** Matt Mathison approves investment policy and initial setup; T-bill >$100K requires Matt Mathison approval; Dr. Lewis manages ongoing investment decisions within approved policy; monthly reconciliation by Dr. Lewis

## Test Cases
1. **Golden path:** Allevio cash analysis — balance $385K, 30-day opex $92K → Reserve calculation: 30-day reserve $92K; next payroll $48K; AP batch $22K; required in checking = $162K; investable excess = $385K − $162K = $223K; Dr. Lewis recommends: money market sweep account at Schwab (or the current Allevio bank if they offer sweep); current rate ~4.6% APY; annual yield on $223K = ~$10,258; Matt Mathison approves the sweep account setup; Dr. Lewis transfers $223K to the money market account; sweep set to maintain $165K in checking (5K buffer above reserve); automatic sweep operates daily; Dr. Lewis reconciles monthly; QuickBooks: Short-Term Investments account created (1xxx); interest income recorded monthly; June 2026 interest: $223K × 4.6% ÷ 12 = $854 — DR Cash (sweep returned) / CR Interest Income; first month of yield captured
2. **Edge case:** HIVE receives a $480K production payment in June — LP distribution of $380K is planned for August 1 → Investable period: 60 days (June to August 1); Dr. Lewis calculates: reserve required ($50K HIVE operating); investable: $480K − $50K reserve − $380K earmarked for distribution = $50K genuinely investable; the $380K is earmarked for distribution and should NOT be invested in T-bills (even 4-week T-bills that would mature before August 1 — the risk of needing it early for an unexpected reason is not worth 1-2% for 60 days); Dr. Lewis invests the $50K genuinely investable portion in a money market account; the $380K stays in the HIVE checking account (or a separate distribution-reserve sub-account) where it earns minimal interest but is immediately available for the August 1 distribution; Matt Mathison confirms the distribution date before Dr. Lewis makes any T-bill purchase from the HIVE production receipts
3. **Adversarial:** The HIVE CEO asks about investing $300K of HIVE cash in a private real estate deal: "We'll get 12% annual returns" → Dr. Lewis declines clearly: "HIVE's operating cash policy is: preserve capital, maintain liquidity, earn market rate. Private real estate investments are illiquid (capital is locked for years), not appropriate for operating cash, and expose HIVE to significant capital risk if the deal underperforms. If Matt Mathison wants to consider a private real estate investment as part of HIVE's investment portfolio (separate from operating cash), that's a different conversation involving Matt and the HIVE LP structure. For HIVE operating cash, we'll stay in money market or T-bills." Dr. Lewis does not permit operating cash to be used for speculative investments, regardless of the expected return or the source of the request

## Audit Log
All investment decisions retained (instrument, amount, date, yield, maturity). Investment account statements retained monthly. Matt Mathison approval records retained. QuickBooks reconciliation records retained. Interest income records retained. HIVE production payment and distribution timing records retained.

## Deprecation
Retire when each portfolio company has a CFO or controller managing treasury — with Dr. Lewis setting the investment policy, Matt Mathison approving changes, and Dr. Lewis reviewing the investment ledger quarterly.
