---
name: fin-ops-sales-tax-manager
description: "Manage sales tax compliance — nexus determination, collection, and filing. Use when the user says 'sales tax', 'state tax', 'nexus', 'sales tax compliance', 'sales tax filing', 'sales tax collection', 'sales tax registration', 'taxable services', 'use tax', 'state sales tax', 'sales tax nexus', 'economic nexus', 'sales tax exemption', 'resale certificate', 'sales tax liability', 'sales tax audit', 'sales tax registration', or 'sales tax returns'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--state <AZ|all>] [--action <assess-nexus|register|file|audit-prep>]"
---

# Sales Tax Manager

Manage sales tax compliance for MBL portfolio companies — assessing sales tax nexus, determining taxability of products and services, registering in required states, and filing returns on time. Sales tax compliance is the most frequently overlooked compliance area in small business finance, and it has become dramatically more complex since the Supreme Court's South Dakota v. Wayfair decision (2018), which established economic nexus (sales volume or transaction count) as a basis for state tax obligations even without physical presence. Dr. Lewis assesses sales tax obligations for each portfolio entity and manages compliance to prevent the discovery of unregistered obligations during a buyer's due diligence — which is a deal-killer or purchase price adjustment.

## When to Use
- New portfolio company — assess sales tax nexus on Day 30
- A portfolio company starts selling into a new state (including digitally)
- A sales tax notice arrives from a state
- Pre-exit due diligence — confirm sales tax compliance is clean
- A buyer's diligence reveals a sales tax gap — assess exposure and remediate

## Sales Tax Framework

```
Entity-specific taxability analysis:

  ALLEVIO HEALTH (Healthcare MSO):
    Medical services: Exempt from sales tax in virtually all states
    Arizona specifically: Medical services are NOT subject to AZ transaction privilege tax (TPT)
    BUT: The administrative fee/management fee structure of an MSO may have different treatment
    Office supplies purchased by Allevio: Subject to sales tax (use tax on purchases)
    Note: Healthcare is generally exempt but the MSO structure requires specific analysis
    Action: Confirm with CPA that the specific Allevio revenue streams are exempt under AZ TPT
    
  HIVE PARTNERS (Oil & Gas):
    Oil and gas extraction: Subject to production taxes (severance tax, not sales tax)
      Utah severance tax: Paid by the operator; HIVE's net distribution is post-severance-tax
    Equipment and supplies purchased by HIVE: May be subject to UT sales tax
    Real estate transactions: Not subject to sales tax
    Action: Confirm severance tax handling with Covercy/operator; confirm UT sales tax on purchases
    
  COLUMN6 / SIPROCAL (CTV/Programmatic Advertising):
    Digital advertising services: Rapidly evolving — several states have enacted or proposed digital advertising taxes
    States with digital advertising tax (as of 2024): Maryland (ongoing litigation)
    Other states: Monitor for changes
    Publisher services: Typically not taxed but varies by state and contract structure
    COLUMN6 exposure: If Column6 has advertisers or publishers in multiple states,
      economic nexus may be triggered; state-by-state analysis required
    Action: Dr. Lewis + CPA assess Column6's nexus in top 10 revenue states annually

Nexus determination:

  Physical nexus: Company has employees, office, warehouse, or inventory in a state
    Always creates nexus; must collect and remit sales tax in that state on taxable sales
    
  Economic nexus (post-Wayfair, 2018):
    Most states: Economic nexus threshold = $100,000 in sales to that state in a year
      OR 200 transactions in that state in a year
    Once the threshold is exceeded: Must register and collect sales tax going forward
    Retroactive exposure: If the threshold was exceeded in prior years without registration,
      the company may owe back sales taxes plus penalties
    
  Where Allevio has physical nexus:
    Arizona: Yes (physical presence in AZ; TPT license required if selling taxable goods/services)
    Other states: Only if Allevio has employees working physically in another state
    
  Where Column6 may have economic nexus:
    Advertising clients in multiple states may trigger economic nexus; annual revenue-by-state analysis needed

Sales tax compliance process:

  Step 1 — NEXUS ASSESSMENT (quarterly):
    Identify: Which states have physical nexus?
    Identify: Which states have economic nexus (revenue and transaction count by state)?
    Taxability: In each nexus state, are the company's products/services taxable?
    
  Step 2 — REGISTRATION:
    Register in each state where nexus exists and sales are taxable
    AZ: Register for Transaction Privilege Tax (TPT) license with AZ DOR
    Other states: Register via the Streamlined Sales Tax (SST) registration system or state DOR
    
  Step 3 — COLLECTION:
    Configure billing system or invoicing to collect the correct sales tax rate
    Apply exemptions: Healthcare exemptions (Allevio); resale certificates from customers who are exempt
    
  Step 4 — FILING AND REMITTANCE:
    File frequency: Monthly (if large collections), quarterly (most small businesses), or annual
    AZ TPT: File monthly or quarterly online at aztaxes.gov
    Remit: Tax collected must be remitted with the return
    
  Step 5 — EXEMPTION CERTIFICATE MANAGEMENT:
    If selling to customers who are exempt (resellers, nonprofits, government):
      Collect a valid exemption certificate before any tax-exempt sale
      Retain the certificate in case of audit
      No exemption certificate = you are responsible for the tax even if the customer said they were exempt
      
  Remediation for prior-year exposure (if nexus existed but registration was not completed):
    Voluntary Disclosure Agreement (VDA): Most states offer a VDA that limits lookback to 3 years
      and reduces or eliminates penalties for companies that self-disclose
    Dr. Lewis + CPA assess exposure: VDA vs. risk of waiting
    Never ignore sales tax nexus exposure identified before or during exit — buyers will find it and price it in
```

## Output Format

```markdown
# Sales Tax Compliance — [Entity]
**Date:** [Date] | **CPA firm:** [Name] | **Reviewed by:** Dr. Lewis

---

## Nexus Analysis

| State | Physical nexus | Economic nexus | Threshold met? | Taxable services? | Registration required |
|-------|--------------|---------------|--------------|-----------------|---------------------|
| Arizona | ✅ Yes | N/A | N/A | AZ TPT applies to some services | ✅ Registered |
| [Other state] | ❌ | ❌/✅ | [Revenue $X vs. $100K threshold] | [Yes/No] | ✅/❌ |

---

## Registration Status

| State | Tax type | Registration # | Status | Filing frequency |
|-------|---------|---------------|--------|----------------|
| Arizona | TPT | [License #] | ✅ Active | Quarterly |
| [Other] | Sales tax | [#] | ✅/❌ Not registered | |

---

## Filing Schedule

| State | Period | Return due | Amount due | Filed | Status |
|-------|--------|-----------|-----------|-------|--------|
| Arizona | Q2 2026 | July 31 | $[X] | [Date] | ✅/⚠️ |

---

## Taxability Analysis — [Entity]

| Revenue stream | Taxable in AZ? | Notes |
|--------------|---------------|-------|
| Medical services (Allevio) | ❌ No | AZ TPT exempts medical services |
| Office supplies purchased | ✅ Yes — use tax | Seller should collect; if not, Allevio remits use tax |
| [Column6 advertising] | ✅/❌/⚠️ | State-specific; MD has digital ad tax; monitor others |

---

## Exemption Certificates on File

| Customer | Certificate type | State | Expiration | On file |
|---------|----------------|-------|-----------|--------|
| [Exempt customer] | Resale certificate | AZ | [Date] | ✅ |

---

## Exposure / Remediation

| Issue | States | Estimated exposure | Approach | Status |
|-------|--------|-------------------|----------|--------|
| Column6 economic nexus in [State X] | [X] | $[X] estimated back taxes | VDA — engage CPA | In progress |
```

## Output Contract
- Nexus analysis must be conducted annually and at any significant revenue change — the economic nexus thresholds ($100K or 200 transactions per state) can be crossed without realizing it; a Column6 that grows from $500K to $3M in revenue likely crossed economic nexus in several states it wasn't tracking; Dr. Lewis conducts an annual nexus review using the prior year revenue by state and compares to each state's threshold; if thresholds are crossed, registration is initiated immediately (not after the next revenue year); the CPA reviews the nexus analysis annually
- Voluntary disclosure is almost always better than audit discovery — if Dr. Lewis identifies that a portfolio company has had nexus in a state for 3 years and has not been collecting/remitting sales tax, the VDA approach is almost always better than waiting for the state to audit the company; the VDA limits the lookback period (typically 3-4 years vs. unlimited in an audit), reduces or waives penalties, and creates a clean compliance record going forward; Dr. Lewis engages the CPA to evaluate the VDA option for any identified exposure before exit
- Exemption certificates are the company's defense in an audit — when a company makes a tax-exempt sale (to a government entity, a nonprofit, or a reseller), the exemption is the customer's responsibility, not the company's; BUT if the company doesn't have a valid exemption certificate on file, the auditing state will hold the company liable for the tax (plus penalties and interest) even though the customer claimed exemption; Dr. Lewis ensures that the controller collects and retains exemption certificates before any tax-exempt sale is made; an exemption certificate is valid for the length stated on the certificate (often 3 years); renew before expiration
- HITL required: Dr. Lewis owns the sales tax nexus assessment; CPA manages the technical analysis and VDA negotiations; Dr. Lewis approves all VDA decisions and state registrations; any sales tax audit or significant exposure assessment is escalated to Matt Mathison; buyers' due diligence sales tax findings escalated to Matt Mathison immediately with a remediation plan

## System Dependencies
- **Reads from:** Revenue by state (QuickBooks or Column6 CRM by customer billing address); customer billing addresses; exemption certificates; AZ DOR TPT license records; prior sales tax returns; CPA nexus analysis
- **Writes to:** AZ TPT returns (aztaxes.gov); other state returns (state portals); exemption certificate file (SharePoint/Finance/<Company>/SalesTax/Exemptions/); VDA submissions; Matt Mathison exposure brief; sales tax registration records
- **HITL Required:** Dr. Lewis owns nexus assessment and registration; CPA manages technical analysis; any VDA or significant exposure requires Matt Mathison notification; sales tax audit requires Dr. Lewis and CPA coordination

## Test Cases
1. **Golden path:** Allevio annual sales tax review → Dr. Lewis pulls prior year AZ revenue: 100% AZ-based; medical services — AZ TPT exempt; office supply purchases $28,000 — subject to use tax (most vendors collected AZ sales tax; 2 vendors did not = $1,800 in taxable purchases without tax collected); use tax owed: $1,800 × 8.6% AZ rate = $155; Dr. Lewis reports the use tax on the next AZ TPT return; no economic nexus in other states (Allevio is AZ-only); nexus review complete; CPA reviews and approves
2. **Edge case:** Column6 has grown advertising revenue to $4.2M with advertisers across 28 states — nexus assessment needed → Dr. Lewis pulls Column6 revenue by advertiser state; 6 states have >$100K in Column6 revenue: CA $1.8M, TX $680K, FL $520K, NY $480K, IL $220K, OH $145K; all 6 exceed the $100K economic nexus threshold; taxability analysis: advertising services are not taxable in TX, FL, IL, OH; CA has complex rules — digital advertising may be taxable under CA; NY has certain digital advertising rules; Dr. Lewis engages CPA to analyze CA and NY taxability and to initiate VDA for any states where Column6 should have been collecting; Matt Mathison briefed on the exposure assessment; VDA initiated for states where exposure is confirmed
3. **Adversarial:** A buyer's due diligence team discovers that Column6 has economic nexus in 8 states but has not filed sales tax returns → This is a deal-risk issue discovered at the worst possible time; Dr. Lewis immediately assesses the exposure: (1) which states, how many years, what revenue, what estimated tax; (2) VDA eligibility in each state; (3) exposure estimate for the purchase price adjustment conversation; Dr. Lewis presents to Matt Mathison: "Column6 has approximately $[X] in potential sales tax exposure across 8 states from [Year] to [Year]. VDA is available in all 8 states, which limits the lookback and waives penalties — we estimate VDA total cost at $[X]. We recommend disclosing this to the buyer proactively, initiating VDA in all 8 states, and adjusting the purchase price by the estimated VDA cost." Surprises in due diligence are worse than disclosed issues — Dr. Lewis surfaces and prices the exposure rather than hoping the buyer doesn't find it

## Audit Log
All nexus analyses retained by year. State registrations retained. Sales tax returns retained for 7 years. Exemption certificates retained for 7 years after the last sale covered. VDA agreements retained permanently. Sales tax audit correspondence retained permanently. Buyer due diligence responses retained.

## Deprecation
Retire when each portfolio company has a CPA or tax advisor managing sales tax compliance — with Dr. Lewis reviewing the annual nexus assessment and approving all VDA decisions.
