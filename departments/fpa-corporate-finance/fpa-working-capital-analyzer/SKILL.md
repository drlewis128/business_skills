---
name: fpa-working-capital-analyzer
description: "Analyze working capital efficiency — DSO, DPO, CCC, and cash conversion. Use when the user says 'working capital', 'DSO', 'days sales outstanding', 'DPO', 'days payable outstanding', 'cash conversion cycle', 'CCC', 'receivables days', 'payables days', 'working capital efficiency', 'working capital management', 'cash tied up in working capital', 'AR days', 'AP days', 'working capital optimization', 'improve cash conversion', 'working capital analysis', 'cash cycle', 'net working capital', 'NWC', or 'working capital trend'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <YYYY-MM or trailing-N-months>] [--benchmark <industry>] [--action <analyze|optimize|present>]"
---

# Working Capital Analyzer

Analyze working capital efficiency for MBL portfolio companies — measuring how quickly the business collects from customers, how long it takes to pay suppliers, and how much cash is tied up in the operating cycle. Working capital is often the invisible cash drain that surprises growing companies: a business can be profitable on paper (P&L looks great) but have no cash because it collects slowly and pays quickly. Dr. Lewis analyzes working capital quarterly and identifies improvement opportunities that release cash without requiring new capital.

## When to Use
- Quarterly financial review — working capital metrics in the board package
- Cash position is declining despite positive EBITDA — working capital is likely the cause
- A portfolio company is about to raise debt or make a distribution — working capital efficiency directly affects available cash
- Exit preparation — buyers will scrutinize the net working capital (NWC) peg in the purchase agreement
- Allevio is experiencing payer claim delays — analyze the AR days separately by payer
- HIVE's cash position is disconnected from production revenue — investigate the revenue-to-cash cycle

## Working Capital Analysis Framework

```
Key working capital metrics:

  DSO (Days Sales Outstanding) — how fast are we collecting from customers?
    Formula: (AR balance ÷ Revenue) × Days in period
    Alternative: AR balance ÷ (Revenue ÷ 365)
    Lower = better (collecting faster = more cash)
    Benchmark targets:
      Allevio — commercial (self-pay): Target ≤30 days
      Allevio — insurance/payer claims: Target ≤45 days (payer complexity; 60 days = concern)
      HIVE Partners: Target ≤45 days (production lag is structural 60-day cycle; DR. LEWIS NOTE: 
        HIVE revenue is structured with a ~60-day production-to-payment lag; do not flag the 
        60-day cycle as a DSO problem — it is a structural contract term, not a collection issue;
        only flag if payments exceed 75 days from production date)
      Column6: Target ≤35 days (advertising agencies pay on net-30 terms)
    
  DPO (Days Payable Outstanding) — how long are we taking to pay suppliers?
    Formula: (AP balance ÷ COGS) × Days in period
    Higher = better (paying later = keeping cash longer, within terms)
    Target: Pay on the due date, not before and not after
      Within terms = positive; early payment = unnecessary cash use; late payment = vendor relationship damage + fees
      Allevio: Pay Marshall Medical Billing on Net 15; other vendors on Net 30
      HIVE: Pay operators per the joint operating agreement (usually Net 30)
      Column6: Pay media vendors on Net 30-45 per contract terms
      
  CCC (Cash Conversion Cycle):
    Formula: DSO + DIO − DPO (Days Inventory Outstanding — 0 for service businesses)
    For services businesses (Allevio, Column6, HIVE): CCC = DSO − DPO
    Lower = better; negative CCC means the business collects before it pays (excellent)
    A rising CCC means cash is being consumed by working capital (concerning)
    
  Net Working Capital (NWC):
    Formula: Current Assets (excl. cash) − Current Liabilities (excl. short-term debt)
    Components:
      Receivables (AR + other receivables)
      + Prepaids and deposits
      − Accounts Payable
      − Accrued expenses
    NWC > 0: The business needs cash to fund its operations (typical)
    NWC < 0: The business generates cash from its operating cycle (excellent — subscription models often achieve this)
    
  NWC as % of revenue (benchmark):
    Target: NWC/Revenue < 15% (well-managed working capital)
    Warning: NWC/Revenue > 20% (significant cash tied up; investigate)
    Critical: NWC trending upward quarter-over-quarter (cash consumption accelerating)
    
Entity-specific working capital considerations:

  ALLEVIO (Healthcare MSO):
    Dual AR buckets: Commercial (employer direct) vs. Insurance/Payer claims
    Commercial AR: DSO should be ≤30 days (employer pays on Net 15-30)
    Insurance/Payer AR: Structurally longer (claim processing + denial/resubmission cycle)
    Payer-specific DSO: Calculate separately by major payer (BCBS, UnitedHealth, etc.)
    Denial rate: High denial rate inflates DSO and consumes staff time on resubmissions
    Allevio does not carry meaningful inventory (service business)
    
  HIVE PARTNERS (O&G):
    Production-to-payment lag: ~60 days from production month to cash receipt — this is a CONTRACT TERM, not a DSO issue
    After the 60-day lag, payment should arrive within 5-10 days of the contractual date
    Flag for DR. LEWIS: Only flag HIVE AR if payments are >75 days from production date
    HIVE does not carry traditional trade receivables; revenue accrual is based on production reports
    LOE payments: Pay operators on the joint operating agreement terms (Net 30)
    
  COLUMN6 (CTV/Programmatic):
    Agency receivables: DSO typically 45-60 days (agency payment cycles are longer than direct advertisers)
    Direct advertiser receivables: DSO should be ≤30 days
    Media vendor payables: Pay on Net 30-45 per media buy contracts
    Unearned revenue: Pre-paid campaign deposits are a FAVORABLE working capital item (cash before service)
    
Working capital improvement actions (if DSO is elevated):
  1. Invoice immediately — don't batch invoicing; invoice at service delivery or month-end (whichever is contractual)
  2. Early payment discount: Offer 2/10 Net 30 (2% discount if paid within 10 days)
  3. Collections follow-up: 7-day, 14-day, 30-day reminder cadence
  4. Credit holds: Suspend service for accounts >60 days past due (Column6 specific)
  5. Payer credentialing (Allevio): Ensure all payer credentialing is current to prevent automatic denials
  
Working capital improvement actions (if DPO is too short — paying too early):
  1. Review payment terms with major vendors — ensure we're paying on the due date, not in advance
  2. Negotiate extended terms with key vendors (Net 45 instead of Net 30)
  3. Set Bill.com payment runs on a schedule that targets the due date, not ASAP
```

## Output Format

```markdown
# Working Capital Analysis — [Entity] [Period]
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## Working Capital Metrics

| Metric | Current | Prior Quarter | Target | Trend | Status |
|--------|---------|--------------|--------|-------|--------|
| DSO (overall) | [X] days | [X] days | ≤[X] days | ↑/↓/→ | 🟢/🟡/🔴 |
| DPO | [X] days | [X] days | [25-45] days | ↑/↓/→ | 🟢/🟡/🔴 |
| CCC (DSO − DPO) | [X] days | [X] days | ↓ trend | ↑/↓/→ | 🟢/🟡/🔴 |
| AR balance | $[X]K | $[X]K | — | ↑/↓/→ | — |
| AP balance | $[X]K | $[X]K | — | ↑/↓/→ | — |
| Net Working Capital | $[X]K | $[X]K | — | ↑/↓/→ | 🟢/🟡/🔴 |
| NWC / Revenue (LTM) | [X]% | [X]% | <15% | ↑/↓/→ | 🟢/🟡/🔴 |

---

## [Allevio] DSO by Segment

| Segment | AR Balance | Revenue (LTM) | DSO | Target | Status |
|---------|-----------|--------------|-----|--------|--------|
| Commercial (employer) | $[X]K | $[X]K | [X] days | ≤30 days | 🟢/🟡/🔴 |
| Payer/Insurance | $[X]K | $[X]K | [X] days | ≤60 days | 🟢/🟡/🔴 |
| **Blended** | **$[X]K** | **$[X]K** | **[X] days** | **≤45 days** | **🟢/🟡/🔴** |

---

## Cash Impact Analysis

**If DSO were reduced by 5 days:** Cash release of $[X]K (= Revenue/365 × 5)
**If DPO were extended by 5 days:** Cash retention of $[X]K (= COGS/365 × 5)
**Combined opportunity:** $[X]K cash improvement without additional capital

---

## Recommendations

| Issue | Action | Owner | Timeline | Cash Impact |
|-------|--------|-------|---------|------------|
| [DSO elevated] | [Invoice daily; 7-day reminder cadence] | [Controller] | [30 days] | +$[X]K |
| [Early AP payments] | [Set Bill.com runs to due dates] | [Controller] | [Immediate] | +$[X]K |
| [Allevio payer denial rate] | [Credentialing audit with Marshall Medical] | [Allevio CEO] | [60 days] | +$[X]K |
```

## Output Contract
- Cash impact of working capital improvement must be quantified — identifying that DSO is high is the beginning of the analysis, not the conclusion; Dr. Lewis always calculates the cash impact: "If Allevio reduced its commercial DSO from 38 days to 30 days, that would release $28K of cash — equivalent to roughly one payroll cycle of operating reserve"; this framing makes working capital improvement a concrete business priority rather than an abstract financial metric; Matt Mathison responds to cash impact, not DSO numbers
- Distinguish structural from improvable DSO — HIVE's 60-day revenue lag is a contract term, not a DSO problem; Allevio's payer claim processing has structural delays that are different from the commercial AR collection; Dr. Lewis does not flag these structural delays as performance issues; he flags them as context for interpreting the DSO numbers; the improvable portion of DSO (commercial receivables, overdue accounts) is the focus of improvement recommendations
- NWC in exit preparation is a separate, critical exercise — when a portfolio company is being sold, the purchase agreement will include a NWC peg (the normalized level of net working capital expected to be delivered at close); if the actual NWC at close is below the peg, the seller pays the buyer the difference; if above, the buyer pays the seller; Dr. Lewis calculates the NWC peg at the time of exit preparation and monitors it monthly in the 6 months before close; an NWC surprise at close can cost or create hundreds of thousands of dollars
- HITL required: Dr. Lewis analyzes working capital quarterly; CEO receives the analysis as part of the financial package; Matt Mathison receives the summary when NWC/Revenue exceeds 20% or when DSO is trending upward for 2+ consecutive quarters; improvement recommendations are assigned to the controller or CEO with specific timelines; the controller implements changes to the AP payment schedule and invoicing cadence; Dr. Lewis monitors

## System Dependencies
- **Reads from:** QuickBooks balance sheet (AR and AP balances, prepaids, accrued expenses); QuickBooks P&L (revenue and COGS for DSO/DPO calculation); Allevio billing system (segment-level AR by payer vs. commercial); Column6 CRM (AR by advertiser type); HIVE production reports (Covercy — for production-to-payment lag monitoring); prior quarter working capital for trend comparison
- **Writes to:** Working capital analysis report (SharePoint/Finance/<Company>/WorkingCapital/[Quarter].xlsx); board financial package (working capital section); rolling forecast (if AR or AP trend requires a cash flow adjustment); exit preparation NWC analysis (data room); Matt Mathison brief (when NWC trends concerning)
- **HITL Required:** Dr. Lewis analyzes; CEO reviews; Matt Mathison receives when NWC >20% revenue or DSO rising for 2 quarters; controller implements operational changes; all changes to payment terms with vendors require CEO approval; any change to invoicing cadence or credit policy requires CEO approval

## Test Cases
1. **Golden path:** Allevio Q3 working capital analysis → AR balance $145K; LTM revenue $1.18M; DSO = (145 ÷ 1,180) × 365 = 44.8 days; split: commercial AR $62K (DSO 19 days ✅); payer AR $83K (DSO 26 days of payer revenue ✅ — within 60-day target); AP balance $38K; LTM COGS $766K; DPO = (38 ÷ 766) × 365 = 18.1 days ⚠️ (paying too early vs. Net 30 terms); NWC = $145K − $38K + $12K prepaids − $22K accruals = $97K; NWC/Revenue = 8.2% ✅; CCC = 44.8 − 18.1 = 26.7 days; cash impact of DPO improvement: extend DPO from 18 to 28 days = 10 days × ($766K/365) = $21K additional cash retained; recommendation: "Set Bill.com payment runs to pay on due dates — currently paying 12 days early on average. Extending to due dates retains $21K of operating cash with no relationship impact."
2. **Edge case:** Column6 DSO has risen from 42 days to 61 days over two quarters → Dr. Lewis investigates: AR balance has grown $35K in 2 quarters with flat revenue; 3 specific agency clients are slow-paying (combined $28K overdue >45 days); one client has a disputed campaign report (claiming lower impressions than billed); Dr. Lewis presents: "Column6 DSO has risen 19 days over two quarters — 80% of the increase is from 3 agency accounts ($28K total). Two are slow-pay accounts that need escalated collections; one has a billing dispute on impression count. Actions: (1) controller to initiate 30-day past-due escalation calls this week; (2) Column6 CEO to get on a call with [Agency X] to resolve the impression dispute — Dr. Lewis to support with billing data; (3) consider credit hold for [Agency Y] if not paid within 15 days." Matt Mathison notified as the $28K exposure is material; DSO target should recover in 60 days with the above actions
3. **Adversarial:** The CEO wants to use the high AR balance ($145K for Allevio) to justify not needing a LOC: "Our receivables are collectible — they're like having $145K in the bank" → Dr. Lewis corrects the framing: "AR is not cash — it's a promise to pay. At 44.8 days DSO, we typically wait 6-7 weeks to receive the cash from services already delivered. In a business with $98K of monthly expenses, that 6-7 week collection window is a working capital gap. If we had a payer denial spike or a commercial account that went 90 days, that AR becomes impaired, not bankable. The LOC covers exactly this risk — it funds the operating gap while we wait for collections. I'd recommend keeping the LOC available, not closing it."

## Audit Log
All working capital analyses retained by quarter. DSO and DPO trend data maintained (8+ quarters). NWC peg calculations for exit preparation retained permanently. Improvement action tracking (owner, timeline, actual cash impact vs. projected). Matt Mathison notification records for material working capital deterioration.

## Deprecation
Retire when each portfolio company has a CFO who monitors working capital monthly — with Dr. Lewis reviewing the quarterly portfolio working capital summary and Matt Mathison receiving a summary before any exit process.
