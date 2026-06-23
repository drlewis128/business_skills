---
name: finance-capex-planner
description: "Plan and track capital expenditures for MBL Partners portfolio entities. Use when the user says 'capex', 'capital expenditure', 'capital expense', 'capital spending', 'capital investment', 'capex plan', 'capex budget', 'capital budget', 'equipment purchase', 'technology investment', 'infrastructure investment', 'capital allocation', 'capital deployment', 'how much should we invest in', 'ROI on this investment', 'is this capex or opex', 'capitalize this', 'expense this', 'asset purchase', 'should we buy or lease', 'make vs. buy', 'HIVE acquisition', 'mineral rights acquisition', 'acreage acquisition', 'well investment', 'drilling investment', 'D&A', 'depreciation', 'amortization', 'capital plan', 'capital request', 'capex approval', 'capital approval', or 'capital investment decision'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--type <technology|acquisition|equipment|infrastructure>] [--amount <50000|100000|500000>] [--action <evaluate|plan|approve|track>]"
---

# Finance CapEx Planner

Plan and track capital expenditures for MBL Partners portfolio entities — evaluating capital investment decisions with ROI analysis, distinguishing CapEx from OpEx, tracking capital deployment against plan, and ensuring all significant capital decisions have Matt Mathison's approval. Capital allocation is one of the highest-leverage decisions in a portfolio company; discipline here compounds into returns.

## When to Use
- Capital investment decision (technology, equipment, acquisition)
- HIVE mineral rights or acreage acquisition evaluation
- Annual CapEx budget planning
- Distinguishing CapEx vs. OpEx treatment for accounting purposes

## CapEx Planning Framework

```
CAPITAL EXPENDITURE DEFINITION:
  CapEx: spending that creates an asset with useful life >1 year; capitalized on balance sheet; depreciated/amortized over useful life
  OpEx: spending that generates benefit within 1 year; expensed immediately on P&L
  
  Common CapEx by entity:
    Allevio: medical equipment; clinical technology; leasehold improvements; AdvancedMD implementation
    Column6: technology platform development (if capitalized under ASC 350); proprietary tools
    HIVE: acreage acquisitions (primary CapEx category); well workover that restores capacity (vs. repairs = OpEx)
    MBL: software systems; IT infrastructure
    
  Common OpEx (not CapEx):
    SaaS subscriptions: expensed as incurred (not capitalized)
    Repairs: expensed unless they extend asset life or restore capacity
    Employee training: expensed
    Marketing: expensed
    
CAPEX ROI ANALYSIS FRAMEWORK:
  For all CapEx >$10K, Dr. Lewis builds a basic ROI analysis:
    Initial investment: total cost (all-in; including implementation, integration, training)
    Annual benefit: revenue generated or cost saved annually (quantify both where possible)
    Payback period: investment / annual benefit
    Simple ROI: (total benefit over 3 years - investment) / investment × 100%
    Decision threshold: payback ≤3 years OR strategic necessity (i.e., required for operations)
    
HIVE ACQUISITION CAPEX (SEPARATE FRAMEWORK):
  Primary CapEx category: acreage acquisitions; mineral rights purchases
  Analysis: finance-hive-acquisition-model (dedicated skill — always use for HIVE CapEx)
  WTI trigger: if WTI <$58 for 2+ consecutive months → all new HIVE CapEx paused (acquisition pause)
  During acquisition pause: CapEx budget line moves to contingency or removed
  
CAPEX APPROVAL AUTHORITY:
  <$5K: entity CEO approves; Dr. Lewis notified
  $5K-$25K: entity CEO + Dr. Lewis approve
  $25K-$100K: entity CEO + Dr. Lewis + Matt Mathison approves
  >$100K: Matt Mathison approves; entity CEO + Dr. Lewis propose
  HIVE acquisitions: all amounts → Matt Mathison approves (capital deployment decision)
  
CAPEX TRACKING:
  All approved CapEx logged in QuickBooks as capital assets
  Monthly: Dr. Lewis reviews CapEx spend vs. plan (quarterly CapEx budget)
  Annual: CapEx plan in annual budget (finance-annual-budget-builder)
  D&A schedule: Dr. Lewis maintains depreciation/amortization schedule in QuickBooks
```

## Output Format

```markdown
# CapEx Evaluation — [Asset/Investment Name] — [Entity] — [Date]
**Prepared by:** Dr. Lewis | **Amount:** $X | **Type:** [Technology / Acquisition / Equipment]

---

## Investment Summary

| Item | Value |
|------|-------|
| Investment description | [1-2 sentences] |
| Total cost (all-in) | $X |
| CapEx or OpEx? | [CapEx — depreciable over X years / OpEx — expense immediately] |
| Depreciation | $X/year (if CapEx) |

---

## ROI Analysis

| | Year 1 | Year 2 | Year 3 | Total |
|--|--------|--------|--------|-------|
| Investment (outflow) | ($X) | | | ($X) |
| Annual benefit | $X | $X | $X | $X |
| Net benefit | | | | $X |

**Payback period:** X months / X years
**3-year ROI:** X%
**Recommendation:** [Approve / Decline / Defer]

---

## Approval Required
[Entity CEO only / Entity CEO + Dr. Lewis / Matt Mathison — per authority matrix]
```

## Output Contract
- The payback period is the primary CapEx decision criterion for MBL portfolio entities — Dr. Lewis uses 3 years as the standard payback threshold because portfolio companies at this stage cannot afford to tie up capital in assets that take 5+ years to pay back; the exception is strategic necessity (a clinical technology that Allevio must have to operate) in which case the analysis focuses on total cost of ownership rather than ROI; Dr. Lewis explicitly labels strategic necessity investments and does not dress them up as high-ROI decisions — Matt Mathison knows the difference and respects the transparency
- HIVE CapEx requires a separate acquisition model (finance-hive-acquisition-model) — this is because HIVE acquisitions are fundamentally different from operational CapEx: they are capital deployment decisions in a mineral rights portfolio; they require IRR modeling, WTI sensitivity analysis, and LP returns context that goes beyond a simple payback period; any HIVE CapEx that bypasses finance-hive-acquisition-model and comes as a simple "approve this" request is returned to the entity CEO with a request to build the proper analysis first
- HITL required: CapEx >$5K → entity CEO + Dr. Lewis; CapEx >$25K → Matt Mathison; HIVE acquisitions → all require Matt Mathison; WTI trigger pause → all HIVE CapEx paused; CapEx vs. OpEx determination → Dr. Lewis makes (accounting treatment); D&A schedule → Dr. Lewis maintains; CapEx budget vs. actual >20% variance → Dr. Lewis + entity CEO

## System Dependencies
- **Reads from:** QuickBooks (existing asset schedule; CapEx budget; capital account entries); finance-annual-budget-builder (planned CapEx for the year); finance-hive-acquisition-model (HIVE acquisition evaluations); entity CEO CapEx requests
- **Writes to:** CapEx evaluation reports (SharePoint → [Entity] → Finance → CapEx → [Year]); QuickBooks (capital asset entries; D&A schedule); CapEx approval records; Matt Mathison CapEx approval records; HIVE CapEx pause records (WTI trigger)
- **HITL Required:** >$5K → entity CEO + Dr. Lewis; >$25K → Matt Mathison; HIVE all → Matt Mathison; WTI trigger → all HIVE CapEx paused; accounting treatment → Dr. Lewis; D&A schedule → Dr. Lewis

## Test Cases
1. **Golden path:** Allevio requests approval for a new clinical intake tablet system ($8,400; 8 tablets × $1,050). CapEx or OpEx? Hardware >1 year useful life → CapEx; depreciate over 3 years ($2,800/year). ROI: tablets reduce intake time from 22 minutes to 8 minutes per new patient encounter; estimated clinical staff time savings: 3.5 hours/day × $28/hr = $98/day × 220 operating days = $21,560/year. Payback: $8,400 / $21,560 = 4.7 months ✅. 3-year ROI: ($64,680 savings - $8,400 investment) / $8,400 = 670% ✅. Approval: entity CEO + Dr. Lewis ($5K-$25K threshold). Approved. Logged in QuickBooks. D&A schedule updated.
2. **Edge case:** Column6 wants to capitalize a SaaS DSP platform subscription cost ($36K/year) as CapEx to reduce their P&L expense → Dr. Lewis: "SaaS subscriptions are not capitalizable under GAAP — you don't own an asset; you're purchasing access to a service for a defined period. The $36K/year stays on the P&L as OpEx. If Column6 is building proprietary technology on top of the DSP that creates a distinct internal asset (software development — ASC 350), that specific development cost may be capitalizable — but the subscription itself is not. I'll set up a 30-minute call with the entity CEO and our CPA to confirm the correct treatment for the proprietary development work, if any."
3. **Adversarial:** Entity CEO approves a $45K equipment purchase without Dr. Lewis review ("I thought it was below my limit") → Dr. Lewis: "The approval threshold for CapEx $25K-$100K requires both entity CEO AND Dr. Lewis sign-off — not entity CEO alone. The $25K threshold is where the capital commitment is significant enough that I need to be in the decision loop for portfolio oversight and capital tracking purposes. I'm not second-guessing the equipment decision — it may be exactly right — but the process exists so that I can track capital deployment accurately in QuickBooks, maintain the D&A schedule, and report accurately to Matt Mathison. Please send me the purchase documentation and I'll log it now. Going forward, anything above $25K comes to me before the purchase is made."

## Audit Log
CapEx evaluation records (permanent). Approval records by authority level. QuickBooks capital asset entries. D&A schedules (annual). CapEx budget vs. actual tracking. HIVE CapEx pause records. Matt Mathison CapEx approval records. CapEx vs. OpEx determination records.

## Deprecation
Approval thresholds reviewed annually. ROI methodology reviewed when portfolio risk tolerance changes. CapEx categories reviewed when entity business models change. HIVE CapEx process reviewed when acquisition strategy changes. D&A useful lives reviewed when asset categories change. Payback threshold reviewed when cost of capital changes.
