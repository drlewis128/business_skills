---
name: finance-due-diligence-financial
description: "Manage financial due diligence for MBL Partners acquisitions. Use when the user says 'due diligence', 'financial due diligence', 'DD', 'financial DD', 'due diligence checklist', 'QoE', 'quality of earnings', 'quality of earnings report', 'normalized EBITDA', 'EBITDA normalization', 'earnings normalization', 'working capital analysis', 'working capital due diligence', 'net debt', 'due diligence findings', 'due diligence red flag', 'due diligence risk', 'diligence risk', 'DD risk', 'deal killer', 'financial risk target', 'historical financials analysis', 'target financials review', 'balance sheet review', 'cash flow review DD', 'revenue quality', 'customer concentration risk', 'revenue concentration', 'DD data room', 'data room financial', 'financial statements DD', 'income statement analysis', 'balance sheet analysis', 'AR aging DD', 'DD AR', 'DD AP', 'purchase price adjustment', 'price chip', 'price renegotiation DD', 'ratchet', 'PPM', or 'representations and warranties'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--target <name>] [--stage <initial|deep|final>] [--action <checklist|analyze|summarize|flag>]"
---

# Finance Due Diligence Financial

Manage financial due diligence for MBL Partners acquisitions — building the DD checklist, analyzing target financial statements, calculating normalized EBITDA (Quality of Earnings), evaluating working capital, identifying balance sheet risks, and surfacing red flags that affect deal price or structure. Financial DD is the primary risk reduction mechanism between LOI and close; its purpose is to confirm or contradict the LOI model.

## When to Use
- Post-LOI: initiating financial due diligence on a signed LOI
- Quality of Earnings analysis (normalizing target EBITDA)
- Working capital analysis (is the LOI working capital peg right?)
- Final DD summary and price adjustment recommendation to Matt Mathison

## Financial Due Diligence Framework

```
FINANCIAL DD CHECKLIST (DOCUMENT REQUEST):

  1. Financial Statements (3 years + YTD):
     Income statement; balance sheet; cash flow statement
     Management-prepared and, if available, CPA-reviewed or audited
     Monthly P&L for last 24 months (critical for seasonality and trend analysis)
     
  2. Revenue Analysis:
     Revenue by customer (identify top 5 customers; concentration risk: >20% = yellow flag; >30% = red flag)
     Revenue by product/service type (recurring vs. non-recurring; contracted vs. ad hoc)
     Contract list with terms; expiration dates; auto-renewal clauses
     Revenue backlog or ARR schedule
     
  3. EBITDA / Earnings Quality:
     Management's adjusted EBITDA reconciliation (what are they adding back and why?)
     Non-recurring income and expenses (what won't recur post-close?)
     Owner compensation and perks (what should be add-backs vs. what needs replacement costs?)
     One-time windfalls (government grants; one-time contracts; litigation settlements)
     
  4. Working Capital Analysis:
     AR aging (60 and 90+ day balances; are they collectible?)
     Inventory (if applicable; slow-moving or obsolete?)
     AP aging (is payables stretched? any past-due that represent hidden liabilities?)
     Accrued liabilities (deferred revenue; warranty obligations; pending lawsuits)
     Average monthly working capital (last 12 months; set as the peg)
     
  5. Balance Sheet Review:
     Cash (confirm it's unrestricted and available at close)
     Debt (all debt; liens; guarantees; lines of credit)
     Fixed assets (condition; maintenance; any deferred capex?)
     Intangibles (customer lists; IP — owned or licensed?)
     Off-balance-sheet items (operating leases; contingent liabilities)
     
  6. Tax History:
     3 years of filed tax returns (confirm revenue matches financial statements)
     Any open IRS or state tax audits
     Deferred taxes; tax liens; payroll tax compliance
     
  7. Management and Employees:
     Key person risk (is the business dependent on an owner/founder who is leaving?)
     Employment agreements; non-competes (protect against seller competing post-close)
     Any pending HR/employment law claims
     
DD RED FLAGS (DEAL KILLERS OR MATERIAL PRICE CHIPS):
  Revenue concentration >30% single customer: re-price with customer loss scenario
  Unverifiable revenue: revenue in management statements not supported by bank statements
  EBITDA normalization results in >20% reduction from management-stated: re-price
  Balance sheet liabilities not disclosed pre-LOI: price chip equal to liability
  Key person departure risk at close: earnout structure or price reduction
  Open tax audits or IRS liens: escrow for potential liability; or walk away
  Allevio target: any PHI handling that lacks proper BAA infrastructure → compliance risk
```

## Output Format

```markdown
# Financial Due Diligence Report — [Target Name]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Stage:** [Initial / Deep / Final] | **Confidential**

---

## QoE: Normalized EBITDA

| Item | Management Add-back | Dr. Lewis Assessment | Accepted? |
|------|--------------------|--------------------|---------|
| Owner salary | $X | Replace at $X cost | Partial |
| One-time legal fee | $X | Verified one-time ✅ | ✅ |
| Related-party rent | $X | Non-arm's length; remove | ❌ |
| **Normalized EBITDA** | **$X (mgmt)** | **$X (Dr. Lewis)** | |

**LOI price implied multiple at normalized EBITDA: X×**

---

## Risk Summary

| Finding | Severity | Price Impact |
|---------|---------|-------------|
| Customer concentration: [Customer] = X% | ⚠️ YELLOW | Consider customer loss scenario in price |
| Working capital below peg by $X | 🔴 RED | $X price chip at close |
| Open payroll tax issue | 🔴 RED | Escrow $X or walk |

---

## Recommendation
**[PROCEED / PRICE CHIP / WALK] at close.**
```

## Output Contract
- Financial DD exists to protect MBL from paying for future cash flows that won't materialize — the most common DD failure is a management-adjusted EBITDA that includes add-backs that shouldn't be accepted (e.g., adding back the owner's entire $300K salary when replacing the owner with a $200K manager means the real add-back is $100K, not $300K); Dr. Lewis challenges every management add-back with a two-question test: (1) Is this genuinely non-recurring? (2) If so, does it create a cost in future periods that management is not showing? A rigorous QoE analysis often reduces management-stated EBITDA by 10-30%; that reduction directly affects valuation and purchase price
- Working capital analysis protects MBL from a cash squeeze at close — if the LOI sets a working capital peg of $400K but the business has been running at $250K working capital for the last 12 months, MBL will need to inject $150K in working capital at close that wasn't in the deal model; this is called the working capital trap and it's extremely common when sellers stretch AR collection before close (to show a high cash balance) and let AP build (to show reduced expenses); Dr. Lewis reviews monthly working capital for the last 12 months, identifies the historical average, and recommends that the LOI peg be set at that historical average — not the seller's preferred month
- HITL required: DD findings summary → Matt Mathison reviews before close decision; red flag discovery → Matt Mathison + legal counsel notified immediately; price chip recommendation → Matt Mathison approves before communicating to seller; walk decision → Matt Mathison; QoE analysis → Dr. Lewis completes; legal counsel reviews reps and warranties; Allevio-type target → HIPAA compliance DD required; employment law review → legal counsel; tax audit review → CPA + Dr. Lewis; final DD sign-off → Matt Mathison authorizes close

## System Dependencies
- **Reads from:** Target data room (financial statements; tax returns; contracts; bank statements; HR records); finance-loi-financial-model (LOI model assumptions to verify/contradict); comparable transaction databases; CPA inputs (tax analysis); legal counsel inputs (employment; contracts; IP)
- **Writes to:** DD report (SharePoint → M&A → [Target] → Due Diligence → Financial DD Report); Matt Mathison deal review package; legal counsel risk summary inputs; price adjustment recommendation; close/walk recommendation; deal decision log (permanent); finance-deal-valuation (updated valuation after DD)
- **HITL Required:** DD summary → Matt Mathison reviews; red flag → Matt Mathison + legal immediate; price chip → Matt Mathison approves; walk → Matt Mathison; HIPAA compliance (Allevio-type) → separate review; employment → legal counsel; tax → CPA + Dr. Lewis; final sign-off → Matt Mathison authorizes close

## Test Cases
1. **Golden path:** MBL DD on Phoenix MSO target (post-LOI at $2.6M base). Dr. Lewis reviews 36 months of management P&L + tax returns. Management-stated EBITDA: $380K adjusted. QoE findings: (1) Owner salary $180K add-back — replacement management cost estimated $150K → net add-back $30K; (2) One-time legal fee $45K — documented, one-time ✅ → full add-back; (3) "COVID recovery grant" $80K — non-recurring ✅ → full add-back. Normalized EBITDA: $380K - ($180K - $30K) = $380K - $150K + other add-backs = Dr. Lewis normalized: $320K. (Reduced from $380K; LOI model used $300K conservative estimate — close to DD result.) Working capital: historical 12-month average $185K; LOI peg $200K → $15K price chip at close. Revenue concentration: largest employer = 18% of revenue ✅ (below 20% flag). No tax issues. Recommendation: PROCEED; $15K price chip on working capital; final price $2.585M.
2. **Edge case:** DD reveals that the target's largest customer (28% of revenue) has a month-to-month contract (not the multi-year contract management represented) → Dr. Lewis: "Management represented that [Customer A] was on a 3-year contract; DD reveals the contract is month-to-month. At 28% of revenue, this is a yellow flag approaching red. I'm running a customer loss scenario: if [Customer A] churns post-close, EBITDA drops by approximately $95K (their revenue × gross margin %). That reduces normalized EBITDA from $320K to $225K. At 10× multiple: $2.25M vs. $2.6M LOI price — a $350K valuation gap. My recommendation: (1) require seller to secure a 12-month commitment from [Customer A] before close (condition to closing), OR (2) restructure the LOI with a $350K earnout tied to [Customer A] retention for 12 months post-close. Matt Mathison to decide which approach to take in seller negotiation."
3. **Adversarial:** Seller's broker pushes back on Dr. Lewis's QoE normalization, saying "every PE buyer accepts these add-backs; you're being unreasonable" → Dr. Lewis: "The add-backs I'm challenging are specific: the owner's salary at $180K — my position is that $150K is needed for a replacement manager, making the legitimate add-back $30K, not $180K; and the 'COVID recovery grant' — this is a one-time non-recurring item that I'm accepting as a full add-back. I'm not questioning the add-backs categorically; I'm questioning one specific add-back with a documented basis. If other PE buyers accepted $180K as a full add-back without modeling replacement management costs, they either planned not to hire a replacement manager (in which case, what is their operating plan?) or they overpaid for the business. My job is to get the math right for Matt Mathison. I'm happy to discuss the replacement cost assumption — if the seller can show us that the management team is staying and no replacement is needed, the add-back analysis changes."

## Audit Log
DD document request records. Data room access records. QoE analysis records (add-back-by-add-back). Working capital analysis records. Revenue concentration analysis. Red flag discovery records and notifications. Price chip recommendation records. Matt Mathison DD review and approval records. Walk decisions. Legal counsel DD inputs. CPA tax review inputs. Final close authorization records.

## Deprecation
DD checklist updated when acquisition complexity increases. QoE methodology reviewed when market practices change. Working capital peg methodology reviewed after each acquisition's post-close experience. Red flag thresholds reviewed annually. Allevio-type target HIPAA DD reviewed when healthcare regulations change.
