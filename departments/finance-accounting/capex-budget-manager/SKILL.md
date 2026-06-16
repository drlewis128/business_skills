---
name: capex-budget-manager
description: "Manage capital expenditure budgeting and approvals. Use when the user says 'capex', 'capital expenditure', 'capital budget', 'equipment purchase', 'capital investment', 'fixed asset purchase', 'approve a capital expenditure', 'capex request', 'capital spending plan', 'property purchase', 'capital allocation', or 'capex approval'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--request <description>] [--amount <dollar amount>]"
---

# CapEx Budget Manager

Manage capital expenditure (CapEx) budgeting, requests, and approvals — the process of evaluating, authorizing, and tracking spending on long-term assets (equipment, technology infrastructure, property, vehicles, production wells). CapEx is different from operating expenses: it's capitalized to the balance sheet and depreciated over time, it represents a longer-term commitment of capital, and it has a direct impact on cash flow in the period it's spent. Bad CapEx decisions are hard to reverse.

## When to Use
- A portfolio company requests approval for a capital purchase
- Annual budget includes CapEx planning — need to evaluate and prioritize capital spending
- Matt Mathison asks "what have we spent on capital this year?" or "what's the capex plan?"
- HIVE Partners — workover wells, pump equipment, production infrastructure
- Allevio — clinical equipment, technology infrastructure for practice implementations
- A portfolio company wants to evaluate the ROI of a capital investment

## CapEx Standards

```
CapEx vs. OpEx distinction:
  CapEx: Assets with useful life >1 year, cost >$2,500 (MBL threshold)
         → Capitalize and depreciate
  OpEx: Consumables, recurring costs, items with useful life <1 year
         → Expense immediately

CapEx approval thresholds (MBL default):
  < $5,000:     Department head can approve; Dr. Lewis notified
  $5,000 - $25,000:  Dr. Lewis must approve
  > $25,000:    Matt Mathison must approve
  Unbudgeted CapEx > $10,000: Always requires Matt Mathison approval regardless of amount

ROI requirement:
  All discretionary CapEx (not legally required, not safety-related) must
  show positive ROI within the asset's useful life.
  Minimum IRR for CapEx: 15% (MBL standard)
```

## Output Format

### CapEx Approval Request

```markdown
# CapEx Request — <Company Name>
**Request date:** <Date> | **Requestor:** <Name / Role>
**Reviewed by:** Dr. John Lewis | **Approval required:** [Dept Head / Dr. Lewis / Matt Mathison]

---

## CapEx Request Summary

| Item | Value |
|------|-------|
| **Asset description** | [Clear description — what is it?] |
| **Business unit / location** | [Allevio / HIVE / MBL Partners / [site]] |
| **Vendor / supplier** | [Name] |
| **Requested amount** | **$[X]** |
| **Budgeted?** | Yes — budgeted at $[X] in [Year] budget / No — unbudgeted |
| **Expected useful life** | [N years] |
| **Annual depreciation** | $[X]/year (straight-line) |
| **Expected activation date** | [Date / Quarter] |
| **Category** | [Equipment / Technology / Vehicles / Leasehold Improvements / Production Infrastructure] |

---

## Business Justification

**Why is this purchase needed?**
[Required response — do not accept vague justification. Be specific: "This pump is required to maintain production at Well 7 following equipment failure. Without it, production from Well 7 (currently 22 BBL/day) drops to 0."]

**What happens if we don't purchase?**
[Specific consequence — "Production loss of 22 BBL/day = $[X]/day in lost revenue" or "Practice implementation for [Client] is delayed by [N] weeks"]

**Alternatives considered:**
[Lease vs. buy / repair vs. replace / defer vs. purchase now — with brief evaluation]
[If no alternatives: state "No viable alternative identified" with reasoning]

---

## ROI Analysis (for discretionary CapEx >$5K)

| | | |
|---|---|---|
| **Asset cost** | $[X] | |
| **Expected benefit type** | [Revenue increase / Cost reduction / Production increase] | |
| **Annual benefit** | $[X]/year | [How calculated — e.g., 22 BBL/day × $[X]/BBL × 365 days] |
| **Simple payback period** | [N months] | |
| **IRR (over useful life)** | [X%] | [Must be >15%] |
| **NPV (at 12% discount rate)** | $[X] | [Positive = approved on ROI; negative = requires strategic justification] |

---

## CapEx Plan Context (Full-Year View)

| | Amount | Status |
|---|---|---|
| Annual CapEx budget | $[X] | Board-approved |
| YTD CapEx spent | ($[X]) | |
| Previously approved unspent | ($[X]) | |
| This request | ($[X]) | Pending |
| **Remaining CapEx budget** | **$[X]** | |
| Remaining budget after this request | $[X] | [Adequate / Tight — [X]% of budget remaining] |

---

## Approval

| Approver | Threshold | Decision | Date | Notes |
|---------|---------|---------|------|-------|
| Requestor (department head) | <$5K | ☐ Approved / ☐ Denied | | |
| Dr. John Lewis | $5K-$25K | ☐ Approved / ☐ Denied | | |
| Matt Mathison | >$25K or unbudgeted>$10K | ☐ Approved / ☐ Denied | | |

**Approval conditions (if any):** [E.g., "Approved pending receipt of 2 competitive quotes" or "Approved — reduce to $[X] (lease vs. buy)"]
```

---

### Annual CapEx Budget Summary

```markdown
# CapEx Budget — <Company Name> — <Year>
**Total CapEx budget:** $[X] | **Board-approved:** [Date]
**Managed by:** Dr. John Lewis

| Project / Asset | Amount | Quarter | Status | ROI |
|----------------|--------|---------|--------|-----|
| [Item 1] | $[X] | Q[N] | Approved / Pending / Spent | [X%] IRR |
| [Item 2] | $[X] | | | |
| [Total] | **$[X]** | | | |

**YTD CapEx vs. budget:**
Spent: $[X] | Budgeted: $[X] | Remaining: $[X] | % Utilized: [X%]
```

## Output Contract
- Business justification always required — no CapEx approved without a specific, written justification; "we need it for the business" is not a justification; the justification must state why the specific asset is needed, what the consequence of not purchasing is, and what alternatives were considered
- ROI analysis required for all discretionary CapEx >$5K — required (safety, compliance) CapEx doesn't need ROI; discretionary CapEx does; IRR must exceed 15%; purchases that don't meet the IRR threshold require strategic justification from the CEO and Matt Mathison approval regardless of amount
- Budget context always shown — every CapEx request must show how much of the annual CapEx budget has been spent/committed and how much remains; a $10K request that puts the company $20K over the CapEx budget is a different decision than a $10K request with $80K of budget remaining
- Approval thresholds enforced without exception — the tiered approval system exists specifically to ensure appropriate oversight of capital decisions; Dr. Lewis does not approve anything requiring Matt Mathison's approval without it; any pressure to bypass approval thresholds must be escalated
- HITL required: Dr. Lewis reviews all CapEx requests; Matt Mathison approves all CapEx >$25K and all unbudgeted CapEx >$10K; actual capital purchases are verified against approvals; any CapEx spend without prior approval is a control failure requiring Matt Mathison notification

## System Dependencies
- **Reads from:** Annual CapEx budget, QuickBooks (YTD CapEx tracking), fixed asset register, prior CapEx approvals
- **Writes to:** CapEx approval form (SharePoint/Finance/CapEx/); fixed asset register; QuickBooks (capitalized asset entries)
- **HITL Required:** Dr. Lewis reviews all; Matt Mathison approves >$25K and all unbudgeted >$10K; purchases verified against approvals

## Test Cases
1. **Golden path:** HIVE Partners workover request — Well 3 pump replacement ($42,000) → Budgeted: Yes ($50K allocated in 2026 CapEx budget); Asset: submersible pump, useful life 8 years; Justification: current pump failing, production at risk — Well 3 produces 18 BBL/day ($1,238/day at $68.80/BBL); ROI: annual production revenue $451K - LOE $112K = $339K net; pump payback 46 days; IRR: >100% (clear approval on ROI); YTD CapEx: $8K spent of $50K budget; request $42K leaves $0 CapEx budget; approval threshold: Matt Mathison (>$25K); Matt Mathison approved in 48 hours; asset capitalized, useful life 8 years, depreciation $5,250/year; approved June 1, received June 14, operational June 18
2. **Edge case:** A CEO requests $15K in equipment that was not in the annual budget but claims it's an emergency — a vendor is requiring immediate payment → verify the urgency: "What specifically is the consequence of not paying by [date]?" If the consequence is loss of a contract or production stoppage, it may warrant unbudgeted approval (which requires Matt Mathison regardless of amount at $10K+); if the "emergency" is driven by vendor pressure rather than true business necessity, investigate whether the deadline can be negotiated; do not approve unbudgeted CapEx without Matt Mathison regardless of the pressure
3. **Adversarial:** A portfolio company CEO tries to expense a $12,000 equipment purchase as an operating expense to avoid the CapEx approval process → this is a GAAP capitalization issue; assets with useful life >1 year and cost >$2,500 must be capitalized; expensing them to avoid oversight is an accounting and governance violation; correct the entry: "This $12,000 [asset] has a useful life of [N years] and exceeds our $2,500 capitalization threshold. It must be recorded as a fixed asset and depreciated. I'm also adding it to the CapEx log retroactively for Matt Mathison's visibility." Escalate to Matt Mathison.

## Audit Log
All CapEx approvals retained with approval dates and approver names. Annual CapEx budget tracked monthly. Unbudgeted CapEx items flagged and retained separately. Fixed asset register updated for each capitalized item. Depreciation schedules retained in QuickBooks.

## Deprecation
Retire when portfolio companies have dedicated finance teams with formal CapEx approval workflows and fixed asset management software that provides automated tracking without Dr. Lewis's direct involvement.
