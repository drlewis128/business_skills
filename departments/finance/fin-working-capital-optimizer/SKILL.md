---
name: fin-working-capital-optimizer
description: "Optimize working capital for MBL Partners and portfolio companies. Use when the user says 'working capital', 'working capital optimization', 'cash conversion cycle', 'CCC', 'improve cash flow', 'free up cash', 'working capital efficiency', 'DSO improvement', 'DPO improvement', 'DIO improvement', 'days inventory outstanding', 'reduce receivables', 'extend payables', 'improve collections', 'accelerate collections', 'working capital analysis', 'net working capital', 'working capital requirements', 'working capital investment', 'working capital management', 'AR optimization', 'AP optimization', 'inventory optimization', 'cash cycle', 'operating cycle', 'working capital reduction', 'working capital release', 'cash release', 'unlock cash', 'how much cash is in working capital', or 'working capital bridge'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|Column6>] [--focus <ar|ap|inventory|ccc>] [--action <analyze|optimize|track|report>] [--horizon <90day|1yr>]"
---

# Fin Working Capital Optimizer

Optimize working capital for MBL Partners and portfolio companies — identifying and releasing cash that is locked in AR, AP, and inventory by improving the cash conversion cycle. Working capital optimization is one of the highest-return, lowest-risk levers available to a PE-backed operating company: it doesn't require revenue growth, it doesn't require cost cuts, and the gains are real cash in the bank that can fund growth or be distributed to LPs. At MBL's portfolio scale, a 10-day improvement in DSO across all entities can release $150K-$300K of cash — cash that was already earned but sitting uncollected.

## When to Use
- Quarterly working capital review (as part of entity operational review)
- Cash position is tighter than expected and the cause is working capital buildup
- DSO or DPO is trending in the wrong direction (fin-ar-manager; fin-ap-manager)
- Pre-exit preparation (optimized working capital improves free cash flow and exit multiple)
- Matt Mathison asks "where is the cash tied up?"

## Working Capital Optimization Framework

```
CASH CONVERSION CYCLE (CCC):

  CCC = DSO + DIO - DPO
  
  Where:
    DSO (Days Sales Outstanding): how long it takes to collect after invoicing
    DIO (Days Inventory Outstanding): how long inventory sits before being sold
    DPO (Days Payable Outstanding): how long it takes to pay vendors
    
  Lower CCC = less working capital needed = more cash available
  
  Entity-specific CCC analysis:
  
    ALLEVIO (service business; low inventory):
      DSO: employer group PMPM payments (target ≤35 days)
           AdvancedMD collections from insurance (target: track separately; insurance billing timing)
      DIO: N/A (no inventory; clinical supplies are de minimis)
      DPO: vendor payments (target: pay to terms; Net 30 = pay on Day 28-30)
      CCC target: 35 - 0 - 28 = 7 days (Allevio should have a very short CCC)
      
    HIVE (royalty business; minimal working capital):
      DSO: royalty receipts from Covercy (target ≤45 days; driven by distribution schedule)
      DIO: N/A (no inventory)
      DPO: operational vendors (target: pay to terms; Net 30)
      CCC target: 45 - 0 - 30 = 15 days
      
    COLUMN6 (service business; no inventory):
      DSO: IO collections from agencies (target ≤55 days; agencies have longer payment terms)
      DIO: N/A
      DPO: DSP media costs (Net 30-45; negotiate longer terms when possible)
      CCC target: 55 - 0 - 38 = 17 days (Column6 has longer inherent CCC due to agency terms)

WORKING CAPITAL IMPROVEMENT LEVERS:

  DSO REDUCTION (collect faster):
    □ Tighten invoice timing: invoice on delivery, not at month-end
    □ Improve payment terms in new contracts: negotiate NET 30 vs. NET 45 for new agencies
    □ Early payment incentives: for strategic partners, offer 2% discount for payment in 10 days
    □ Electronic invoicing: reduces delivery time; triggers payment cycles sooner
    □ Collections process: execute the collections ladder (fin-ar-manager) consistently
    
  DPO EXTENSION (pay slower, within terms):
    □ Negotiate better payment terms with vendors: NET 30 → NET 45 for major suppliers
    □ Stop paying early: if paying on Day 10 of a Net 30 invoice, switch to Day 28
    □ Payment run timing: align payment runs to the end of payment terms (not weekly)
    □ Note: DPO extension only to the contractual term — not beyond (damages vendor relationships)
    
  WORKING CAPITAL RELEASE CALCULATION:
    Current AR: $[X] / Revenue per day: $[X] = [N] days DSO
    Target DSO: [N] days
    Working capital released: (Current DSO - Target DSO) × Revenue per day = $[X]
    
    Example: Allevio DSO improves from 42 to 35 days
    Revenue per day: $5.2M / 365 = $14.2K/day
    Cash released: 7 days × $14.2K = $99K additional cash
    
WORKING CAPITAL BENCHMARKS (service businesses):

  Target benchmarks:
    DSO: Allevio ≤35; HIVE ≤45; Column6 ≤55 (per entity framework)
    DIO: N/A for all entities (service businesses)
    DPO: 28-35 days for all entities (pay to terms; not early; not late)
    NWC as % of Revenue: target <10% for service businesses (lower = better)
    
  Red flags:
    DSO increasing 3+ consecutive months → collections problem (fin-ar-manager)
    DPO < 20 days → paying too early (cash management opportunity)
    NWC > 15% of revenue → too much cash tied up in operations (investigate)
```

## Output Format

```markdown
# Working Capital Review — [Entity] — [Quarter Year]
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## Cash Conversion Cycle

| Metric | Current | Target | Benchmark | Status | Trend |
|--------|---------|--------|---------|--------|-------|
| DSO | [N] days | [N] days | [N] days | 🟢/🟡/🔴 | ↑/↓/→ |
| DIO | N/A | N/A | N/A | — | — |
| DPO | [N] days | [N] days | [N] days | 🟢/🟡/🔴 | ↑/↓/→ |
| **CCC** | **[N] days** | **[N] days** | — | 🟢/🟡/🔴 | ↑/↓/→ |

---

## Working Capital Position

| Item | Amount | Days outstanding | Trend |
|------|--------|-----------------|-------|
| Accounts receivable | $[X] | [N] days | ↑/↓/→ |
| Accounts payable | $[X] | [N] days | ↑/↓/→ |
| **Net working capital** | **$[X]** | — | ↑/↓/→ |

---

## Improvement Opportunities

| Lever | Action | Cash release potential | Timeline | Owner |
|-------|--------|----------------------|---------|-------|
| DSO reduction | [Specific action] | $[X] | [N] days | [Owner] |
| DPO extension | [Specific action] | $[X] | [N] days | [Owner] |

**Total cash release potential:** $[X]
```

## Output Contract
- Cash release is real money — working capital optimization is not a financial engineering exercise; improving DSO from 42 to 35 days at Allevio releases $99K of real cash into the bank account without any revenue growth, cost cutting, or capital injection; Dr. Lewis presents working capital improvement in terms of cash released because that is the language Matt Mathison and entity CEOs respond to; "DSO improved from 42 to 35 days" is a metric; "$99K more cash in the bank" is a result
- DPO extension only to terms, never beyond — the temptation in working capital optimization is to extend payables beyond terms ("just hold the payment for an extra week"); Dr. Lewis does not recommend or execute this; paying vendors beyond their terms damages relationships, triggers late fees, and signals financial stress to vendors who then tighten their own terms or require prepayment; the DPO target is the contractual term — paid at Day 28-30 for Net 30 terms, not on Day 10, not on Day 45
- Working capital connects to exit value — in a sale process, buyers look at the "normalized" working capital of the business; an entity that has high DSO (slow collections) has more cash tied up in AR; buyers either price this in (lower enterprise value) or negotiate a working capital adjustment at closing that reduces the equity proceeds; getting DSO to the target before an exit process starts eliminates a buyer's working capital discount and a closing adjustment negotiation; Dr. Lewis coordinates working capital optimization with exec-exit-planning when an exit is on the 18-month horizon
- HITL required: working capital optimization plans reviewed by Matt Mathison quarterly; any change to customer payment terms (shortening terms below what the contract specifies) requires entity CEO and potentially customer consent; DPO extension negotiations with vendors require entity Controller or CEO involvement; significant working capital releases (>$200K) are flagged to Matt as a cash position update; pre-exit working capital normalization is coordinated with exec-exit-planning and Matt Mathison

## System Dependencies
- **Reads from:** fin-ar-manager (DSO data; AR aging); fin-ap-manager (DPO data; AP aging); fin-cash-flow-planner (working capital changes in the 13-week cash flow); fin-entity-close (monthly close produces the AR and AP balances used in CCC calculation); QuickBooks (AR and AP balances; revenue for DSO/DPO calculation)
- **Writes to:** Working capital reports (SharePoint → Finance → WorkingCapital → [Entity] → [YYYY]-Q[N]); fin-cash-flow-planner (working capital improvement is a cash flow source in the forecast); exec-exit-planning (working capital optimization feeds into exit preparation); exec-board-reporting (NWC as % of revenue is a board metric); exec-action-tracker (working capital improvement initiatives)
- **HITL Required:** Optimization plans reviewed by Matt Mathison; payment term changes require entity CEO approval; pre-exit normalization coordinated with Matt and exec-exit-planning; significant cash releases (>$200K) flagged to Matt; vendor DPO extension negotiated with Controller/entity CEO involvement

## Test Cases
1. **Golden path:** Q3 working capital review for Column6; DSO: 58 days (above 55-day target; 3-day improvement from Q2 at 61 days — trending right); DPO: 24 days (paying too early; target is 38 days); CCC: 34 days (target 17 days). Improvement opportunity: DPO extension from 24 to 35 days = 11 days × $14.2K revenue/day = $156K cash release. Action: "Column6 is paying vendors an average of 6 days early — specifically the DSP media costs. I'm working with the Controller to move to Day 33-35 payment timing for DSP platforms (they're on Net 45 terms). No relationship damage; no late fees; $156K cash released. I'll also continue the DSO improvement work through the IO collections process. Expected CCC by Q4: 23 days (vs. 34 today; vs. 17 target). Matt, this is a clean operational improvement with no downside — just confirming awareness."
2. **Edge case:** Allevio has 3 employer groups with DSO >60 days despite being on Net 30 terms → Dr. Lewis: "Three employer groups account for $87K of the AR that's 60+ days past due. I've reviewed each: Group A ($42K) — HR director changed during OE; new HR director is processing but delayed; follow-up call scheduled for Thursday (Dr. Lewis directly). Group B ($28K) — billing dispute; they received a different PMPM rate on the invoice vs. what their broker told them; I'm resolving the data discrepancy before the next follow-up. Group C ($17K) — consistent late payer; pays at 45-55 days; not technically in default but above target. For Group C: I recommend changing their invoice terms to Net 15 at the next renewal to normalize their 45-day pay pattern to policy. Groups A and B are recoverable within 30 days. Group C is a chronic slow payer — manage at renewal."
3. **Adversarial:** Controller argues that improving DPO will "anger vendors" → Dr. Lewis: "The vendors have already agreed to the payment terms — Net 30 or Net 45 is in the contract. We're not extending beyond terms; we're paying to terms instead of paying early. If a vendor expects payment on Day 10 of a Net 30 invoice, they've become accustomed to us voluntarily giving away 20 days of float. The standard business practice is to pay within terms. I'm not going to call vendors to announce the change — I'm just going to stop approving weekly payment runs that pay invoices that aren't due yet. Is there a specific vendor relationship where you're concerned about the reaction? If so, tell me which one and why, and I'll evaluate whether a specific exception is warranted."

## Audit Log
CCC trend data retained quarterly per entity. Working capital improvement initiatives and cash release actuals retained. Pre-exit working capital normalization records retained. Payment term changes retained.

## Deprecation
Retire when each entity has a Controller or CFO who manages working capital actively — with Dr. Lewis reviewing the quarterly CCC metrics and Matt Mathison receiving the working capital summary as part of the quarterly portfolio review.
