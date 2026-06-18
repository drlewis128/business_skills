---
name: legal-lp-agreement-tracker
description: "Track LP agreement obligations, reporting requirements, and distribution rules for MBL Partners. Use when the user says 'LP agreement', 'limited partner', 'LP obligations', 'LP reporting', 'LP distribution', 'limited partnership agreement', 'LPA', 'LP consent', 'LP rights', 'LP notice', 'fund documents', 'fund agreement', 'LP reporting requirement', 'LP capital call', 'capital call', 'LP waterfall', 'carried interest', 'preferred return', 'LP update', 'LP quarterly report', 'LP annual report', 'LP meeting', or 'LP information rights'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <fund or portfolio company>] [--obligation-type <reporting|distribution|consent|capital-call>] [--action <track|prepare|review|calculate>]"
---

# LP Agreement Tracker

Track LP agreement obligations, reporting requirements, and distribution rules for MBL Partners' LP relationships — ensuring that all limited partner rights, notices, reporting deadlines, and distribution protocols are honored. LP relationships are MBL's most critical capital relationships: LP partners have contractual rights that must be respected; failure to provide required notices or reports, or making distributions that deviate from the waterfall, creates legal liability and destroys the trust that underlies LP relationships. Dr. Lewis maintains the LP obligation tracker as the operational backbone of MBL's investor relations.

## When to Use
- Preparing quarterly or annual LP reports
- Calculating a distribution — confirming the waterfall calculation
- An LP requests information or exercises a right under the LP agreement
- A new LP is being onboarded (what are their rights?)
- An LP agreement amendment is proposed
- Matt Mathison is making any decision that affects LP rights

## LP Agreement Framework

```
LP AGREEMENT KEY PROVISIONS TO TRACK:

  REPORTING OBLIGATIONS:
    Quarterly financial reports: Most LP agreements require quarterly financials within 45-60 days of quarter-end
      Contents: Portfolio company performance summaries; fund-level financial statements; key metrics
      Recipients: All LP partners; distribution per the LP agreement
    Annual report: Annual fund-level financial statements (audited if required)
      Contents: Audited financials (if required); portfolio company annual summaries; fund performance vs. benchmark
      Deadline: Typically 90-120 days after fiscal year end
    Tax reports (K-1): Annual Schedule K-1 for each LP (federal; state equivalents)
      Deadline: March 15 (federal); state deadlines vary
      Prepared by: Tax counsel or CPA firm; distributed to all LPs
    Valuation reports: Many LP agreements require periodic valuations of portfolio companies
      Frequency: Annual or semi-annual
      Method: Fair value per GAAP ASC 820; or agreed methodology in the LP agreement
      
  LP CONSENT RIGHTS:
    Actions requiring LP consent (typically majority or supermajority of LP interests):
      □ Amendment to the LP agreement or fund documents
      □ Extension of the fund term
      □ Material change in investment strategy
      □ Removal of the general partner (for cause; often requires 75%+ LP consent)
      □ Key person event (loss of a key investment professional; may require LP consent to continue)
    Actions NOT requiring LP consent (GP authority):
      □ Individual portfolio company investment decisions
      □ Hiring and compensation decisions
      □ Routine operations of the fund
      
  DISTRIBUTION WATERFALL:
    The distribution waterfall determines how distributions are allocated between the GP and LPs
    Standard PE waterfall (deal-by-deal or whole-fund — varies by LP agreement):
      Step 1: Return of capital to LPs (all invested capital is returned first)
      Step 2: Preferred return to LPs: Typically 8% cumulative preferred return on invested capital
        (LPs receive 8% annually on unreturned capital before the GP participates)
      Step 3: GP catch-up: After preferred return is achieved, GP receives 100% (or 80%) of distributions
        until the GP has received its carried interest percentage (typically 20% of total distributions)
      Step 4: Carried interest split: 80/20 (80% to LPs; 20% to GP) on remaining distributions
    Example:
      Investment: LP invested $5M; exit proceeds: $9M
      Step 1: LP receives $5M (return of capital)
      Step 2: 8% preferred on $5M × 3 years = $1.2M preferred return → LP receives $1.2M
      Remaining: $9M − $5M − $1.2M = $2.8M
      Step 3: GP catch-up to 20% of all distributions so far: LPs received $6.2M; GP needs $1.55M to reach 20%
        → GP receives $1.55M from the $2.8M
      Remaining: $2.8M − $1.55M = $1.25M
      Step 4: 80/20 split: $1.0M to LPs; $250K to GP (carried interest on the balance)
      Total: LPs receive $6.2M + $1.0M = $7.2M; GP receives $1.55M + $0.25M = $1.8M; $9M total ✅
      
  LP NOTICE REQUIREMENTS:
    Material events: LP agreement typically requires notice to LPs within 30 days of:
      □ Portfolio company acquisition or exit
      □ Material litigation affecting the fund or a portfolio company
      □ Key person event (departure of a named key person)
      □ LP default (another LP fails to fund a capital call)
    Capital calls: X days notice (typically 10-30 business days) before capital is required
    Distribution notices: Typically concurrent with distribution; detail the waterfall calculation
    
  LP INFORMATION RIGHTS:
    Most LP agreements give LPs the right to:
      □ Inspect the fund's books and records (with reasonable notice)
      □ Receive a copy of the LP agreement
      □ Receive the annual financial statements and K-1
      □ Attend annual LP meetings (if applicable)
    Dr. Lewis tracks all LP information requests and responds within the time required by the LP agreement

DISTRIBUTION AUTHORIZATION PROCESS:
  Step 1: Dr. Lewis calculates the distribution amount and waterfall (using the LP agreement definition)
  Step 2: Tax counsel confirms the tax treatment (capital gain vs. ordinary income; UBTI for tax-exempt LPs)
  Step 3: Dr. Lewis prepares the distribution notice and waterfall calculation
  Step 4: Matt Mathison reviews and approves the distribution amount and timing
  Step 5: Wire transfers executed (per the payment protocol — phone verification for all wires >$10K)
  Step 6: Distribution confirmation sent to each LP with their allocation detail

IMPORTANT: ALL DISTRIBUTIONS REQUIRE MATT MATHISON'S APPROVAL
ALL WIRES REQUIRE MATT MATHISON + DR. LEWIS + PHONE VERIFICATION
```

## Output Format

```markdown
# LP Obligation Tracker — MBL Partners
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Period:** [Quarter / Year]

---

## Reporting Obligation Status

| Report | Deadline | Status | Delivered |
|--------|---------|--------|----------|
| Q[X] YYYY Quarterly Report | [Date] | ✅ Delivered / ⚠️ In progress | [Date] |
| FY[YYYY] Annual Report | [Date] | ✅ Delivered / ⚠️ Pending audit | [Date] |
| FY[YYYY] K-1s | March 15, [Year] | ✅ Distributed / ⚠️ Pending | [Date] |
| Annual LP Meeting | [Date] | ✅ Held / ⚠️ Schedule | [Date] |

---

## Distribution Summary

**Entity:** [Portfolio Company] | **Distribution date:** [Date] | **Total:** $[X]M

| LP | Units | % | Distribution |
|----|-------|---|-------------|
| MBL Partners GP | [GP units] | 20% (carried) | $[X]K |
| [LP Name 1] | [X] | [X]% | $[X]K |
| [LP Name 2] | [X] | [X]% | $[X]K |
| **Total** | | **100%** | **$[X]M** |

**Preferred return current through [Date]:** ✅ Fully satisfied
**Waterfall step:** [Step 4 — 80/20 split] | **Matt Mathison approved:** ✅ [Date]

---

## LP Consent Actions Pending

| Action | LP vote required | Current status | Deadline |
|--------|----------------|----------------|---------|
| [LP agreement amendment] | [75%] | [Solicitation sent] | [Date] |

---

## LP Information Requests

| LP | Request | Received | Response due | Status |
|----|---------|---------|-------------|--------|
| [LP Name] | Books and records inspection | [Date] | [Date + X days per LPA] | ✅ Responded |
```

## Output Contract
- Waterfall calculation must match the LP agreement exactly — the distribution waterfall is defined in the LP agreement; it is a legal contract; every calculation must follow the agreement's exact definition (what constitutes "invested capital"? how is "preferred return" calculated? is it deal-by-deal or whole-fund?); a waterfall calculated using a different methodology — even if the GP believes it is more equitable — is a breach of the LP agreement; Dr. Lewis reads the LP agreement definition before every distribution and calculates exactly as specified
- All distributions require Matt Mathison's prior approval — every distribution from MBL Partners or any fund vehicle to LPs must be reviewed and approved by Matt Mathison before execution; this is not a formality — Matt Mathison is the managing member with fiduciary duties to the LPs; he must confirm the distribution is correct, appropriately timed, and consistent with the fund's liquidity needs; Dr. Lewis prepares the distribution analysis (waterfall calculation; recommended amount; tax implications); Matt Mathison approves; Dr. Lewis executes
- LP reporting deadlines are contractual obligations — unlike some governance requirements that are best practice, LP reporting deadlines are written into the LP agreement as binding obligations; a fund manager who consistently delivers quarterly reports 3 months late (instead of the 45-day requirement) is in breach of contract; beyond legal breach, late reporting destroys LP confidence and can trigger LP consent rights to remove the GP; Dr. Lewis calendars all LP reporting deadlines and manages them with the same discipline as financial reporting deadlines
- HITL required: Dr. Lewis prepares all LP reports, distribution calculations, and consent solicitations; Matt Mathison reviews and approves all LP reports before distribution and approves all distributions; all distribution wires require Matt Mathison + Dr. Lewis + phone verification; LP consent solicitations require Matt Mathison approval of the proposed action; Dr. Lewis does not make distribution decisions unilaterally; Dr. Lewis does not communicate directly with LPs about matters of material consequence without Matt Mathison's awareness

## System Dependencies
- **Reads from:** LP agreement (all obligations; waterfall definition; reporting requirements; consent rights; notice periods); QuickBooks (fund-level financials for LP reports); fpa-exit-value-model and fpa-lp-return-model (for waterfall calculation and preferred return tracking); tax counsel (K-1 preparation; tax treatment of distributions); portfolio company financial data (from each company's QuickBooks — for quarterly LP report); cap table (legal-equity-cap-table-manager — LP unit count and percentages for distribution calculation)
- **Writes to:** Quarterly LP reports (SharePoint/Legal/MBL/LPReporting/[Quarter]_[Year]_LPReport.pdf); annual LP reports (same location); K-1s (prepared by CPA; Dr. Lewis distributes); distribution notices (to each LP with waterfall calculation); LP consent solicitations; LP information request responses; Matt Mathison distribution approval memos; wire instructions (distribution wires; executed per wire authorization protocol)
- **HITL Required:** Dr. Lewis prepares; Matt Mathison reviews and approves all LP reports and distributions; all wires require Matt Mathison + Dr. Lewis + phone verification; LP consent solicitations require Matt Mathison approval of the underlying proposed action; Dr. Lewis does not communicate distribution decisions to LPs without Matt Mathison's approval; tax counsel reviews all K-1s before distribution; Dr. Lewis does not provide legal opinions on LP rights — outside fund counsel advises on any LP rights dispute or consent action

## Test Cases
1. **Golden path:** HIVE exits at $8.2M — calculating and executing the LP distribution → Dr. Lewis pulls the HIVE LP agreement: Waterfall definition: Deal-by-deal; 8% preferred return; GP catch-up to 20%; 80/20 split; LPs invested $4.5M; exit after 4 years; Step 1: Return capital $4.5M to LPs; Step 2: 8% preferred = $4.5M × 8% × 4 years = $1.44M → LPs; Remaining: $8.2M − $4.5M − $1.44M = $2.26M; Step 3: GP catch-up to 20%: LPs received $5.94M; GP needs $1.485M to reach 20%; → GP receives $1.485M from $2.26M; Remaining: $2.26M − $1.485M = $0.775M; Step 4: 80/20: LPs $620K; GP $155K; Total distributions: LPs: $4.5M + $1.44M + $620K = $6.56M; GP: $1.485M + $155K = $1.64M; Total: $8.2M ✅; Matt Mathison reviews waterfall; approves; distribution notices sent; wires executed with phone verification; LP K-1s prepared for the transaction
2. **Edge case:** An LP requests a books-and-records inspection citing their rights under Section 8.3 of the LP agreement — the LP is a minority investor with 5% → Dr. Lewis reviews Section 8.3: Information rights confirmed; LP has the right to inspect books and records with 5-business-day advance notice; the LP has given proper notice; Dr. Lewis informs Matt Mathison: "LP [Name] has invoked their Section 8.3 information rights and will inspect our books on [Date]. We will provide: Fund financial statements; portfolio company summaries; capital account records. We are NOT required to provide: Proprietary deal sourcing methodologies; other LPs' information; management fee calculations that are not required by the LP agreement. I'll prepare the documents and coordinate access. Matt Mathison does not need to be present." Inspection conducted; LP receives required documents; no additional documents volunteered; inspection complete
3. **Adversarial:** An LP disputes the carried interest calculation on the HIVE distribution, claiming that $220K in unreimbursed fund expenses should have been included in the LP capital invested before calculating the preferred return → Dr. Lewis: "This is a waterfall dispute that depends entirely on the LP agreement definition of 'invested capital.' Pull the LP agreement: Section 5.2 — 'Invested Capital means the aggregate amount of Capital Contributions made by the Limited Partners.' The question: Do unreimbursed fund expenses (legal fees; accounting; due diligence) constitute 'Capital Contributions'? The LP agreement's Capital Contribution definition: 'amounts contributed to the fund pursuant to capital calls.' Fund expenses are charged against fund capital — but are they 'Capital Contributions'? Our position: Expenses are charged against the fund's capital account but are not additional 'Capital Contributions' — they do not increase the LPs' invested capital for the waterfall calculation. LP's position: The expenses should be added to invested capital before calculating preferred return. Engage fund counsel to provide a written interpretation of the LP agreement." Fund counsel supports MBL's position; explanation sent to the LP with the fund counsel's analysis; LP accepts

## Audit Log
All quarterly and annual LP reports retained permanently. K-1 records retained permanently. Distribution records retained permanently (amount; waterfall calculation; approval; wire confirmation). LP consent solicitations and results retained permanently. LP information request records retained permanently. Matt Mathison distribution approvals retained permanently. Wire confirmation records retained permanently. LP agreement amendments retained permanently.

## Deprecation
Retire when MBL Partners has a dedicated fund finance and IR function — with Dr. Lewis reviewing the waterfall calculations for accuracy and Matt Mathison approving all distributions and material LP communications.
