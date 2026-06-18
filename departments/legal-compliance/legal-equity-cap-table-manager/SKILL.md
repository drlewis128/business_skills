---
name: legal-equity-cap-table-manager
description: "Maintain equity cap tables and manage equity events for MBL portfolio companies. Use when the user says 'cap table', 'capitalization table', 'ownership table', 'equity ownership', 'equity split', 'who owns what', 'equity percentage', 'equity grant', 'unit grant', 'option grant', 'equity issuance', 'equity dilution', 'equity waterfall', 'who gets paid at exit', 'exit proceeds', 'ownership structure', 'MBL equity', 'carry', 'profits interest', 'equity vesting', or 'equity management'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <view|update|model|issue>] [--event-type <grant|exercise|transfer|exit>]"
---

# Equity Cap Table Manager

Maintain accurate equity capitalization tables for MBL portfolio companies and model equity events — ownership percentages, equity grants, vesting schedules, and exit proceeds waterfalls. The cap table is the authoritative record of who owns what; errors in the cap table are discovered at the worst possible time (a liquidity event), when millions of dollars are being allocated based on ownership percentages. Dr. Lewis maintains the cap table as a single source of truth and models exit waterfall scenarios to help Matt Mathison understand the return implications of equity events.

## When to Use
- A new equity interest (LLC units, shares, options, profits interests) is being granted
- A new investor is being admitted to a portfolio company
- A key employee receives equity as compensation
- Modeling exit proceeds — who gets what at various exit prices?
- Due diligence requires a current cap table
- The Operating Agreement is being amended to reflect equity changes

## Cap Table Framework

```
CAP TABLE ELEMENTS:

  For LLC portfolio companies (typical MBL structure):
    Units outstanding: Total authorized and issued units by class
    Unit classes: Common units; preferred units (if any); profits interests
    Ownership by holder:
      Holder name: Legal entity or individual name
      Units held: Number of units
      Ownership %: Units held ÷ Total units outstanding
      Fully diluted %: Units held ÷ Total units outstanding (including all authorized options/warrants)
    Vesting schedules: For any equity granted subject to vesting (profits interests, unit grants)
    Capital accounts: Per-unit capital contributions and distributions (for GAAP balance sheet)
    
  CAPITAL ACCOUNT TRACKING:
    Each member's capital account = Contributions − Distributions + Allocated income − Allocated losses
    Capital accounts matter for:
      Liquidation: Distributions at liquidation follow capital accounts before the waterfall
      Tax: Capital accounts track basis for tax purposes
    Confirm capital account methodology with tax counsel at initial structure setup
    
  PROFITS INTERESTS (Common PE compensation tool):
    What it is: Equity-like compensation that participates in future appreciation above a hurdle value
    Tax treatment: No income at grant (if structured correctly); capital gains at exit
    Section 83(b) election: File within 30 days of grant (if making the election — tax counsel advises)
    Vesting: Typically time-vested (3-4 year vest; 1-year cliff) or performance-vested
    Dr. Lewis does NOT grant profits interests without tax counsel review — failure to structure correctly
      results in ordinary income recognition at grant (not the intended tax treatment)

EXIT WATERFALL MODEL:
  At any exit price, the waterfall model determines proceeds allocation:
  
  Step 1: Pay off all debt (outstanding loans; accrued interest)
  Step 2: Return of capital to preferred holders (if any preferred units with liquidation preference)
  Step 3: Distribute remaining proceeds to common unit holders pro rata by ownership %
    If profits interests have a hurdle (participation threshold), calculate separately
    
  EXAMPLE WATERFALL (simple structure):
    Exit enterprise value: $9.8M
    Outstanding debt: $0 (assumed clean)
    No preferred with liquidation preference
    Ownership: MBL Partners 75%; CEO 15%; Key employee profits interest 5%; Minority investor 5%
    Proceeds: $9.8M × 75% = $7.35M → MBL Partners
    Proceeds: $9.8M × 15% = $1.47M → CEO
    Profits interest: $9.8M - $[hurdle] × 5% → Key employee (calculate at hurdle)
    Minority investor: $9.8M × 5% = $490K
    Total: $9.8M ✅ (must foot)

EQUITY EVENTS AND REQUIRED ACTIONS:
  New equity grant:
    □ Board/manager consent resolution authorizing the grant
    □ Unit Grant Agreement or Profits Interest Award Agreement executed
    □ Cap table updated immediately after execution
    □ 83(b) election filed within 30 days (if applicable — tax counsel advises)
    □ Capital account updated
    □ Operating Agreement amendment (if new class of units or new terms)
    
  Transfer of equity:
    □ Operating Agreement: Does it permit transfers? (Most LLC OAs restrict transfers)
    □ Right of first refusal (ROFR): Does MBL have a ROFR on the transferring member's units?
    □ Transfer consent: Required from manager or other members?
    □ Cap table update upon completed transfer
    □ DOGM notification (HIVE — any change in operator ownership structure)
    
  Exit / Liquidity event:
    □ Final cap table reconciliation (must be perfect before any distributions)
    □ Waterfall calculation (exactly how are proceeds allocated?)
    □ Tax withholding (any foreign holders? any employees with profits interests requiring W-2?)
    □ Consult tax counsel before distributing
```

## Output Format

```markdown
# Cap Table — [Entity]
**As of:** [Date] | **Maintained by:** Dr. Lewis | **Version:** [X.X]

---

## Ownership Summary

| Holder | Units | % Ownership | % Fully Diluted | Unit Type | Vesting |
|--------|-------|------------|----------------|-----------|---------|
| MBL Partners LLC | [X] | [X.X]% | [X.X]% | Common | — (fully vested) |
| [CEO] | [X] | [X.X]% | [X.X]% | Common | — (fully vested) |
| [Key Employee] | [X] | [X.X]% | [X.X]% | Profits Interest | 36-month; 12-month cliff |
| **Total** | **[X]** | **100.0%** | **100.0%** | | |

---

## Exit Waterfall — [Exit Price] Scenarios

| Exit EV | Debt Repayment | MBL Partners | [CEO] | [Key Employee PI] | Total |
|---------|--------------|-------------|-------|------------------|-------|
| $5.0M | $0 | $3.75M | $750K | $[PI calc] | $5.0M |
| $7.5M | $0 | $5.63M | $1.13M | $[PI calc] | $7.5M |
| $10.0M | $0 | $7.50M | $1.50M | $[PI calc] | $10.0M |

---

## Vesting Status

| Holder | Grant date | Total | Vested | Unvested | % Vested |
|--------|-----------|-------|--------|---------|---------|
| [Key Employee] | [Date] | [X] units | [X] | [X] | [X]% |

---

## Recent Equity Events

| Date | Event | Units | Holder | Cap table version |
|------|-------|-------|--------|-----------------|
| [Date] | [Profits interest grant] | [X] | [Name] | v[X] |
```

## Output Contract
- Cap table errors at exit are the most expensive errors — a cap table with an unrecorded equity grant, a vesting error, or an ownership percentage mistake that is discovered the day before closing is catastrophic; Dr. Lewis reconciles the cap table against the Operating Agreement, all executed grant agreements, and all transfer records at least annually and immediately before any M&A transaction; the cap table must have a documented chain of custody: every unit outstanding can be traced to a board resolution and an executed grant agreement; if it can't, the unit doesn't appear on the cap table
- 83(b) election is a 30-day hard deadline — when a profits interest or restricted equity grant is made, the tax decision about whether to file a Section 83(b) election must be made within 30 days; after 30 days, the election cannot be filed; filing the election (or not filing) has significant tax consequences — it is a decision that belongs to the grantee with tax counsel's advice; Dr. Lewis notifies the grantee and tax counsel within 24 hours of any equity grant that may require an 83(b) election; he does not make the decision for the grantee but ensures they know the deadline exists
- Transfer restrictions are in the Operating Agreement — most LLC operating agreements include significant restrictions on equity transfers: right of first refusal (ROFR) for MBL before a member can sell to a third party; transfer consent requirements; permitted transfer definitions; these provisions protect MBL's control of the portfolio companies; Dr. Lewis reviews the Operating Agreement before any transfer is completed; a transfer completed without satisfying the ROFR or consent requirement may be void under the Operating Agreement
- HITL required: Dr. Lewis maintains the cap table; new equity grants require board/manager consent (legal-corporate-governance-manager); Matt Mathison must approve any new equity issuance (dilutes MBL's ownership); tax counsel must review profits interest structures before grant; Dr. Lewis does not issue equity unilaterally; authorized manager under the Operating Agreement issues equity after board consent; Dr. Lewis models but does not distribute exit proceeds — that is Matt Mathison's authorization per the distribution decision framework

## System Dependencies
- **Reads from:** Operating Agreement (equity structure; transfer restrictions; ROFR provisions); all executed grant agreements (unit grants, profits interest award agreements, transfer agreements); board/manager consent resolutions (authorization for equity grants); cap table version history (SharePoint/Legal/<Company>/CapTable/); tax counsel advice (on profits interest structure and 83(b) elections); fpa-exit-value-model (exit scenarios for waterfall modeling)
- **Writes to:** Cap table (SharePoint/Legal/<Company>/CapTable/[Date]_CapTable.xlsx — versioned); exit waterfall model (SharePoint/Legal/<Company>/CapTable/[Deal]_Waterfall.xlsx); Matt Mathison equity summary; equity event log (every grant, transfer, or cancellation with date and supporting document reference); vesting schedule tracker
- **HITL Required:** Dr. Lewis maintains; Matt Mathison approves all new equity issuances; board/manager consent required for all equity grants; tax counsel advises on profits interest structure; Dr. Lewis does not make 83(b) election decisions for grantees; Matt Mathison authorizes all exit proceeds distributions per the distribution decision framework; Dr. Lewis does not issue equity by updating the cap table without the corresponding executed grant agreement and board consent

## Test Cases
1. **Golden path:** Allevio grants a new 3% profits interest to its COO as part of her compensation package → Dr. Lewis process: (1) Board consent drafted and executed (legal-corporate-governance-manager) authorizing the profits interest grant; (2) Dr. Lewis works with tax counsel to confirm the profits interest is structured correctly (hurdle value set at current company FMV; proper documentation); (3) Profits Interest Award Agreement executed by company manager and COO; (4) Tax counsel advises COO on 83(b) election (decision is hers); 83(b) election filed by COO within 30 days if elected; (5) Cap table updated: COO added with 3% profits interest; existing holders diluted proportionally; Dr. Lewis confirms the cap table still sums to 100%; (6) Exit waterfall model updated with COO's profits interest economics; (7) Matt Mathison briefed: "COO received 3% profits interest (hurdle: $[FMV]); this dilutes MBL's stake from 75% to 72.75%. At exit, COO participates 3% in any appreciation above the hurdle." All documentation filed in SharePoint; cap table versioned; done
2. **Edge case:** Allevio's minority investor (5%) wants to sell their interest to a third party → Dr. Lewis reviews the Operating Agreement: Section 9.3 — ROFR: MBL Partners has a right of first refusal on any proposed transfer; the minority investor must first offer the interest to MBL at the same price and terms proposed by the third party; Dr. Lewis notifies the CEO and Matt Mathison immediately: "The minority investor has proposed selling to [Third Party] at $490K (5% × $9.8M implied value). MBL has a ROFR. Matt Mathison must decide within [30 days per OA] whether to exercise. If MBL exercises, MBL purchases the 5% at $490K and increases its ownership from 75% to 80%. If MBL does not exercise, the transfer proceeds to [Third Party] subject to the transfer consent provisions. Financial analysis: buying 5% at $490K implies $9.8M EV — consistent with our current exit model. This is an attractive price to consolidate ownership before exit." Matt Mathison decides; Dr. Lewis documents the ROFR response
3. **Adversarial:** A former HIVE employee claims he was promised 10% equity in HIVE verbally by the CEO in 2023 but was never given a written grant agreement → Dr. Lewis reviews the cap table: no record of any grant to this former employee; no board consent; no grant agreement; "The cap table has no record of any equity grant to [Name]. For a unit grant to be valid under HIVE's Operating Agreement, it requires (a) manager consent resolution; (b) a written Unit Grant Agreement; and (c) cap table update. None of these occurred. The CEO may have made a statement about potential equity, but a verbal promise is not a valid grant under the Operating Agreement. We should document our position in writing and consult employment counsel — a claim for breach of oral contract for equity compensation is a litigation risk even if the contractual position is strong. Matt Mathison must be aware of this claim." Employment counsel engaged; litigation hold issued; Dr. Lewis documents the absence of any grant record

## Audit Log
All cap table versions retained permanently (versioned by date of update). All grant agreements retained permanently. Board consent resolutions for equity grants retained permanently. 83(b) election records retained permanently (or until statute of limitations for the tax year + 3 years). Transfer records retained permanently. ROFR decision records retained. Exit waterfall calculations retained permanently. Any disputes about cap table accuracy retained permanently.

## Deprecation
Retire when each portfolio company has a dedicated CFO and corporate counsel who maintain the cap table — with Dr. Lewis reviewing the cap table annually for exit readiness and Matt Mathison approving all new equity issuances.
