---
name: finance-sales-tax-manager
description: "Manage sales tax compliance for MBL Partners portfolio entities. Use when the user says 'sales tax', 'sales tax compliance', 'sales tax filing', 'sales tax return', 'sales tax nexus', 'nexus analysis', 'economic nexus', 'state sales tax', 'Arizona sales tax', 'transaction privilege tax', 'TPT', 'Arizona TPT', 'AZ TPT', 'sales tax registration', 'sales tax collection', 'sales tax remittance', 'sales tax exempt', 'sales tax exemption', 'B2B sales tax', 'SaaS sales tax', 'digital services tax', 'advertising sales tax', 'CTV advertising tax', 'Column6 sales tax', 'healthcare sales tax exemption', 'Allevio sales tax', 'HIVE sales tax', 'mineral extraction tax', 'severance tax', 'use tax', 'out-of-state purchase tax', 'sales tax audit', 'sales tax liability', or 'sales tax overpaid'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--jurisdiction <az|multi-state>] [--action <analyze|register|file|audit>]"
---

# Finance Sales Tax Manager

Manage sales tax compliance for MBL Partners portfolio entities — determining sales tax nexus by state, filing periodic returns, and managing entity-specific tax treatment (Allevio healthcare services; Column6 digital advertising; HIVE oil production). Sales tax is the most frequently mismanaged small business tax obligation because nexus rules and taxability of services vary dramatically by state.

## When to Use
- Evaluating sales tax nexus in a new state where an entity does business
- Filing periodic AZ Transaction Privilege Tax (TPT) returns
- Column6 digital advertising sales tax analysis (multi-state)
- Allevio healthcare services tax exemption analysis

## Sales Tax Compliance Framework

```
ENTITY-SPECIFIC TAX TREATMENT:

  ALLEVIO (MSO/Healthcare):
    Healthcare services: generally exempt from sales tax in most states (including AZ)
    AZ Transaction Privilege Tax (TPT): healthcare services = not subject to TPT
    PMPM billing to employers: employer benefit management fee (not a sale of goods)
    Dr. Lewis confirms with CPA annually that Allevio's service model remains exempt
    Watch: if Allevio sells any physical goods or non-healthcare technology → may trigger sales tax
    
  COLUMN6 (CTV/Mobile/Digital Advertising):
    Digital advertising services: increasingly taxable in multiple states (rapidly changing law)
    Maryland: digital advertising tax (state specific); Column6 should evaluate exposure
    Other states: check nexus + taxability annually as state laws evolve
    AZ: advertising services not subject to AZ TPT (as of current law)
    Agency clients: some states require media companies to collect and remit
    Column6: Dr. Lewis + CPA + entity CEO evaluate multi-state sales tax exposure annually
    
  HIVE (Oil & Gas):
    Oil and gas production: subject to severance taxes (not sales tax) in AZ and UT
    UT severance tax: assessed on oil and gas production at the well; UT operator/RCM handles
    AZ TPT: oil and gas extraction may have TPT implications — Dr. Lewis + CPA confirm annually
    Royalty income: generally not subject to sales tax
    
  MBL PARTNERS (Holding):
    No direct sales → no sales tax liability at holding company level
    Management fees to portfolio companies: typically not subject to sales tax (consulting services)
    
ARIZONA TPT (TRANSACTION PRIVILEGE TAX):
  AZ's version of sales tax (technically a tax on the privilege of doing business; not a true sales tax)
  Entities with AZ business activity review TPT applicability annually with CPA
  TPT returns: monthly or quarterly (based on AZ DOR schedule)
  Dr. Lewis coordinates with CPA for any TPT obligations
  
NEXUS ANALYSIS:
  Physical nexus: entity has employees or office in a state → almost certain nexus
  Economic nexus: post-Wayfair (2018); thresholds typically $100K sales or 200 transactions in a state
  Remote sellers: if Column6 has advertisers in states where digital ads are taxable → evaluate
  Dr. Lewis + CPA conduct nexus review when entity expands operations to a new state
  
USE TAX:
  When entity purchases taxable goods from out-of-state vendor without paying sales tax
  Entity owes use tax to its home state (AZ: same rate as TPT)
  Dr. Lewis reviews significant out-of-state purchases for use tax applicability
```

## Output Format

```markdown
# Sales Tax Compliance Summary — [Entity] — [Period]
**Prepared by:** Dr. Lewis + CPA | **Updated:** [Date]

---

## Entity Sales Tax Status

| Entity | Primary Jurisdiction | Taxable Services? | Nexus States | Current Filing Obligation |
|--------|---------------------|-----------------|-------------|--------------------------|
| Allevio | AZ | No (healthcare exempt) | AZ only | None (exempt) |
| Column6 | AZ + multi-state | Review annually | AZ + [states] | CPA annual review |
| HIVE | AZ + UT | Severance tax only | AZ + UT | UT severance (operator) |
| MBL Partners | AZ | No (holding) | AZ only | None |

---

## Upcoming Sales Tax Actions

| Action | Entity | Deadline | Status |
|--------|--------|---------|--------|
| Annual nexus review | Column6 | Q3 [Year] | 🟡 In progress |
| AZ TPT confirmation | Allevio | Q4 [Year] | 🟡 Pending CPA |
```

## Output Contract
- Sales tax is the category where Dr. Lewis explicitly defers to the CPA rather than self-determining compliance — state sales tax law for digital services and healthcare is in active legislative flux; what was not taxable in 2022 may be taxable in 2026 in certain states (Maryland's digital advertising tax being the clearest example); Dr. Lewis's role is to identify when an entity crosses a threshold that warrants a nexus or taxability analysis (new state; revenue milestone; new product category), to ensure that analysis happens with the CPA, and to implement whatever the CPA recommends; Dr. Lewis does not self-determine that a service is "probably not taxable" without CPA confirmation
- Column6 requires the most active sales tax monitoring — digital advertising is the category of services where state sales tax laws are evolving fastest; Column6's CTV and mobile revenue spans multiple states; Dr. Lewis coordinates with the Column6 entity CEO and CPA for an annual multi-state nexus and taxability review; this review should happen in Q3 (before year-end close) and produce a clear list of states where Column6 has or may have collection/remittance obligations; ignoring this creates a potential multi-state tax liability that compounds over multiple years and is very expensive to remediate
- HITL required: all nexus determinations → Dr. Lewis + CPA (CPA decides; Dr. Lewis implements); Column6 multi-state review → entity CEO + CPA + Dr. Lewis annually; Allevio healthcare exemption → CPA confirms annually; HIVE severance tax → entity CEO + O&G counsel + CPA; new state expansion → Dr. Lewis + CPA nexus analysis before operations begin; AZ TPT filing → Dr. Lewis + CPA; use tax analysis → Dr. Lewis identifies; CPA confirms; Matt Mathison notified if unexpected sales tax liability discovered

## System Dependencies
- **Reads from:** QuickBooks (entity revenue by type and jurisdiction; out-of-state purchase records); CPA guidance (taxability determinations; nexus analysis); entity CEO state expansion plans (trigger for nexus review); Column6 revenue reporting by state or agency location
- **Writes to:** Sales tax compliance records (SharePoint → Finance → Tax Compliance → Sales Tax → [Entity]); AZ TPT filings (if applicable); CPA data inputs for multi-state analysis; QuickBooks (use tax entries if applicable); entity CEO nexus analysis reports
- **HITL Required:** Nexus → Dr. Lewis + CPA; Column6 multi-state → entity CEO + CPA + Dr. Lewis annually; Allevio exemption → CPA confirms; HIVE severance → entity CEO + O&G counsel + CPA; new state → Dr. Lewis + CPA before operations; AZ TPT → Dr. Lewis + CPA; use tax → Dr. Lewis identifies; CPA confirms; unexpected liability → Matt Mathison notified

## Test Cases
1. **Golden path:** Annual Column6 sales tax nexus review (Q3 2026). Column6 revenues: $2.8M in 2026 YTD. States where agencies are located: AZ (primary); CA; TX; NY; IL; FL. Dr. Lewis + CPA analyze: (1) AZ advertising services — not subject to AZ TPT ✅; (2) CA — no special digital ad tax; economic nexus threshold not crossed (under $500K in CA) ✅; (3) NY — no digital ad tax; under threshold ✅; (4) MD — Column6 has no MD agencies and under $100M threshold; not applicable ✅; (5) No other state digital ad tax currently in effect. CPA conclusion: Column6 has no current multi-state sales tax collection obligation. Document and review again Q3 2027. Dr. Lewis records result.
2. **Edge case:** Allevio entity CEO asks whether selling a branded wellness kit (physical goods) to employer clients would trigger sales tax → Dr. Lewis: "The healthcare services Allevio currently provides are exempt from AZ TPT and from most states' sales taxes. However, if Allevio begins selling physical goods (branded wellness kits), that's a different tax category — physical goods are generally taxable under AZ TPT (retail classification). Before we launch any physical product sales, I need to brief the CPA on the revenue model: (1) what's the price; (2) is it sold separately or bundled into the PMPM; (3) which states will employers receive it in. A bundled physical good can sometimes be treated differently than a standalone sale. This is exactly the kind of expansion that triggers a nexus and taxability analysis before we start collecting revenue, not after."
3. **Adversarial:** HIVE entity CEO wants to skip the UT severance tax review because "the operator handles it" → Dr. Lewis: "I agree that the UT operator handles the severance tax calculation and remittance — but HIVE as the working interest owner receives the after-severance-tax net revenue; I need to verify that the operator is actually deducting and remitting correctly so that HIVE isn't carrying an underreported royalty income that looks like it's net of taxes when it isn't. The verification is simple: ask the operator to confirm in the annual royalty statement that severance taxes were withheld at the applicable UT rate. If they confirm it, we're done — 15 minutes annually. If they can't confirm it, that's a problem we need to address with our O&G counsel. The exposure of not checking is a multi-year UT state tax underpayment if the operator wasn't remitting correctly."

## Audit Log
Annual nexus analysis records (all entities). Column6 multi-state review records (annual). Allevio healthcare exemption confirmation records (annual). HIVE severance tax verification records. AZ TPT filing records (if applicable). Use tax analysis records. CPA sales tax guidance documentation. Entity CEO expansion notifications. Matt Mathison unexpected liability records.

## Deprecation
State sales tax law reviewed annually (digital ad tax landscape is volatile). Column6 multi-state analysis updated when revenue crosses nexus thresholds in new states. Allevio exemption reviewed when service model changes. HIVE severance tax reviewed when UT or AZ O&G tax regulations change. AZ TPT classification reviewed if entity business model changes.
