---
name: legal-lease-reviewer
description: "Review and negotiate commercial leases for MBL portfolio companies. Use when the user says 'lease', 'commercial lease', 'office lease', 'lease review', 'lease negotiation', 'lease terms', 'review the lease', 'rent', 'landlord', 'tenant', 'lease agreement', 'office space', 'clinic space', 'space lease', 'base rent', 'CAM charges', 'triple net', 'NNN lease', 'gross lease', 'lease renewal', 'lease option', 'personal guarantee on lease', 'sublease', 'lease assignment', or 'property lease'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--lease-type <office|clinic|industrial|retail>] [--action <review|negotiate|renew>] [--landlord <name>]"
---

# Lease Reviewer

Review and negotiate commercial leases for MBL portfolio companies — identifying unfavorable terms, personal guarantee exposure, and hidden costs before a lease is signed. Commercial leases are multi-year obligations that are nearly impossible to exit once signed: a 5-year office lease with no termination for convenience clause commits the company to the full rent obligation even if the business shrinks, pivots, or is acquired. Dr. Lewis reviews all commercial leases before signature and negotiates key terms before the company is locked in.

## When to Use
- A portfolio company is signing a new office, clinic, or operational space lease
- A lease is coming up for renewal
- A lease has a personal guarantee provision that needs to be reviewed
- A lease is being assigned in an M&A transaction
- An existing lease has a change-of-control or assignment clause that is triggered

## Lease Review Framework

```
COMMERCIAL LEASE KEY TERMS:

  BASE RENT:
    Amount: $/sq ft/year or $/month — confirm the total rent through the full term
    Escalation: Annual increases (CPI; fixed %; or negotiated steps)
      Rule: Cap annual escalation at 3% or CPI (whichever is lower)
      Red flag: "CPI + 2%" or uncapped CPI escalation
    Free rent periods: First 1-3 months free rent is common in tenant-favorable markets
    Tenant improvement allowance (TI): Landlord contribution to build-out costs
      Negotiate TI at the time of the lease; not after signing
      
  TERM:
    Initial term: How long? (1-3 years preferred for early-stage; 5 years if significant TI)
    Renewal options: Right to renew at predetermined rent (or fair market value)
      Fair market value renewal: Gives landlord pricing leverage at renewal; negotiate fixed renewal rates
      Option to renew: Must exercise in writing within the option window (calendar this!)
    Early termination: Right to terminate early (with or without penalty)
      "No early termination" is the landlord's preferred position; fight for a termination right
      Penalty: Unamortized TI + 3-6 months rent is a common early termination fee structure
      
  OPERATING EXPENSES AND CAM CHARGES:
    Gross lease: Rent includes all operating expenses (simplest for tenant)
    Triple net (NNN) lease: Tenant pays base rent + operating expenses (taxes, insurance, maintenance)
      For NNN leases: Get a detailed definition of CAM charges and a cap on annual CAM increases
      CAM cap: 5% annual cap on controllable expenses (controllable by landlord)
    Excluded from CAM: Structural repairs; roof; capital improvements; management fees above market
    Audit right: Right to audit landlord's operating expense reconciliation (important for NNN)
    
  PERMITTED USE:
    Narrow use clause: Restricts what the tenant can do in the space
      "Medical practice only" is too narrow if Allevio might expand services
      Preferred: "Any lawful business purpose" or "Healthcare services and related activities"
    Sublease and assignment: Can the tenant sublease part of the space or assign the lease?
      Landlord consent required (standard) but cannot be "unreasonably withheld"
      
  PERSONAL GUARANTEE:
    LANDLORD'S PREFERRED POSITION: Personal guarantee by the business owner or principals
    MBL's position: Resist personal guarantees; offer a limited corporate guarantee instead
    When a personal guarantee is unavoidable:
      Limit the amount: Guarantee only 12-18 months of base rent (not the full lease term)
      Burn-off: Guarantee reduces after 12-24 months of on-time payment (auto-releases if good payment history)
      Limit the guarantors: CEO guarantee only; Matt Mathison and Dr. Lewis should not personally guarantee
      
  ASSIGNMENT AND CHANGE OF CONTROL:
    M&A risk: Many leases require landlord consent for any change of control of the tenant
    This can be a deal-stopper in an M&A transaction if the landlord requires a new personal guarantee
    Negotiate upfront: "Landlord consent to assignment or change of control shall not be unreasonably withheld..."
    "Deemed assignment": Some leases define a change in >50% of ownership as an assignment (triggers consent)
    
  RENEWAL OPTIONS:
    Option to renew: Right (not obligation) to extend the lease for additional term(s)
    Rate: Negotiate a fixed renewal rate or a cap on market rate adjustments
    Exercise window: Must exercise within a specific period (often 6-9 months before term end)
      Calendar this immediately upon signing — missing the window voids the option
    
  HOLDOVER PROVISIONS:
    Holdover = tenant stays past the lease expiration without a new agreement
    Landlord's preferred: Double rent for holdover period
    MBL's position: Month-to-month at 125% of base rent (less severe than 200%)
    
  HEALTHCARE-SPECIFIC (ALLEVIO CLINIC SPACE):
    ADA compliance: Landlord or tenant responsible for accessibility upgrades?
    HIPAA considerations: Is there anything in the lease about data or patient privacy? (unusual but check)
    Specific use: "Licensed healthcare facility" as the permitted use
    Build-out: Who pays for medical-grade HVAC, plumbing, electrical?
    Certificate of occupancy: Is the space currently certificated for medical use?
```

## Output Format

```markdown
# Lease Review — [Property] | [Landlord]
**Entity:** [Portfolio Company] | **Space:** [Sq ft; location] | **Date reviewed:** [Date]
**Term:** [X years] | **Base rent:** $[X]/month | **Total commitment:** $[X]K
**Recommendation:** SIGN / NEGOTIATE / DO NOT SIGN

---

## Financial Summary

| Item | Amount | Notes |
|------|--------|-------|
| Base rent | $[X]/month | $[X]/sq ft/year |
| Rent escalation | [X]%/year | CPI-capped? [Yes/No] |
| CAM/operating expenses | $[X]/month | [Gross / NNN] |
| TI allowance | $[X]K | Received / Amortized |
| Total monthly all-in | $[X]/month | Through term end |
| Total lease commitment | $[X]K | Over full initial term |

---

## Key Issues

| Issue | Current Draft | MBL Position | Priority |
|-------|--------------|-------------|---------|
| Personal guarantee | Full-term personal guarantee | 12-month burn-off guarantee | 🔴 High |
| Change-of-control | Landlord consent required; may withhold at will | "Shall not be unreasonably withheld" | 🟡 Medium |
| No early termination right | None | 12-month early exit with 3-month penalty | 🔴 High |
| CAM cap | No cap on escalation | 5% annual cap on controllable expenses | 🟡 Medium |

---

## Recommendation

**[SIGN / NEGOTIATE — X specific items needed / DO NOT SIGN]**
[Rationale + most important negotiating point]
**Personal guarantee: [Required / Not required / Limited to X months]**
```

## Output Contract
- Personal guarantee is a negotiating position, not a given — landlords routinely ask for personal guarantees from business owners, and many sign without pushing back; for PE-backed portfolio companies, personal guarantees by the CEO are inappropriate and Dr. Lewis advises strongly against them; the company has a corporate creditworthiness (backed by MBL Partners); the landlord should rely on the corporate tenant's financial strength, not a personal guarantee; when a personal guarantee cannot be eliminated entirely, Dr. Lewis negotiates a limited guarantee (12-18 months; burn-off after 12 months of on-time payment; exclude Matt Mathison and Dr. Lewis personally); any personal guarantee provision that names Matt Mathison or Dr. Lewis requires their explicit approval before the lease is signed
- Change-of-control provisions are M&A deal risk — a lease with a broad change-of-control provision that requires landlord consent (and allows the landlord to demand a new personal guarantee or a rent increase as a condition of consent) creates significant M&A risk; the company's largest deal asset (a valuable clinic lease with below-market rent) becomes a liability if the landlord can block the deal or extract concessions; Dr. Lewis negotiates the change-of-control provision at the time of the original lease: "Landlord shall not unreasonably withhold, condition, or delay consent to any assignment or change of control of Tenant"
- Calendar the renewal option exercise window immediately — a renewal option that is not exercised within the specified window is lost; the landlord knows this and may use the expired option as leverage in holdover negotiations; Dr. Lewis adds the renewal option exercise deadline to the compliance calendar the day the lease is signed; the alert is set 9 months before the window closes; missing a renewal option on an Allevio clinic lease with below-market rent is an expensive administrative failure
- HITL required: Dr. Lewis reviews; CEO approves and signs; Matt Mathison must approve: (1) any personal guarantee on Matt Mathison or Dr. Lewis; (2) leases with total commitment >$250K; outside counsel for complex lease negotiations or healthcare-specific buildout provisions; Dr. Lewis does not sign leases — the CEO signs; any lease naming Matt Mathison as guarantor requires his explicit approval; lease renewal option exercise windows are calendared immediately upon lease execution

## System Dependencies
- **Reads from:** Lease document from landlord; prior leases with the same landlord (consistency check); fpa-cash-flow-model (does the monthly rent fit within the cash flow model?); fpa-headcount-cost-modeler (does the space accommodate the headcount plan?); legal-contract-tracker (add lease to the tracker with renewal option exercise deadline)
- **Writes to:** Lease review memo; lease negotiation position paper; executed lease (SharePoint/Legal/<Company>/Contracts/Leases/[Property]_Lease_[Date].pdf); contract tracker entry (lease term, monthly rent, renewal option exercise date, CAM reconciliation rights); compliance calendar entry (renewal option window; term expiration)
- **HITL Required:** Dr. Lewis reviews and recommends; CEO approves and signs; Matt Mathison approves leases >$250K total commitment or any personal guarantee provision; outside counsel for healthcare-specific buildout provisions or legally complex lease structures; Dr. Lewis does not sign leases; Dr. Lewis does not consent to Matt Mathison as personal guarantor without Matt Mathison's explicit approval

## Test Cases
1. **Golden path:** Allevio is leasing a new clinic space — 1,800 sq ft at $22/sq ft/year ($3,300/month); 3-year term; landlord sending standard triple-net lease → Dr. Lewis reviews: Financial summary: $3,300 base + ~$600/month CAM (estimated) = $3,900/month all-in; total commitment ~$140K over 3 years; within budget; Key issues: (1) Personal guarantee — landlord requests full-term personal guarantee from CEO (negotiated to 12-month burn-off — CEO guarantees only until 12 months of on-time payments); (2) No early termination right (negotiated: 90-day early termination right with 3-month penalty fee); (3) No CAM cap (negotiated: 5% annual cap on controllable expenses); (4) Change-of-control: "Landlord may withhold consent" → negotiated to "shall not unreasonably withhold"; (5) Permitted use: "Medical practice" → expanded to "Healthcare services and related activities"; all 5 issues resolved; lease signed; renewal option exercise deadline calendared (18 months before term end); CAM audit right confirmed; lease in contract tracker
2. **Edge case:** HIVE signs a 5-year lease for field office space in Vernal, Utah — the landlord is a local family that owns the building and is not sophisticated → Dr. Lewis notes: "This landlord is not using a commercial lease form; the lease document is 3 pages and lacks most standard provisions. Missing: CAM definition; no CAM cap; no holdover provision; no cure period for landlord default; no early termination right; no change-of-control language. At $1,800/month for 5 years ($108K total commitment), this warrants a proper lease. I recommend providing our own lease form or getting outside counsel to provide a more complete lease. The landlord may agree since they likely don't have strong legal representation either. I'll reach out to the HIVE CEO to discuss — the risk of a vague 3-page lease over 5 years is higher than the cost of getting a proper form executed." CEO agrees; real estate counsel provides a proper form; landlord accepts with minor changes; proper lease executed
3. **Adversarial:** Column6's office lease is up for renewal; the landlord is offering renewal at 15% above the current rent, threatening to relet to another tenant if Column6 doesn't agree within 14 days → Dr. Lewis advises: "Do not sign under time pressure. The landlord's 14-day deadline is a negotiating tactic — they do not want to lose an established tenant; re-letting takes months and costs money. Here's the strategy: (1) Does Column6 have a renewal option in the current lease? Check the option terms — if the renewal option specifies a rate, use it; (2) If no option: Request market comparables for the area; if the 15% increase is above market, say so directly; (3) Explore alternatives: cost of moving vs. cost of renewal at 15% premium; use the alternative as leverage; (4) Counter: 5% increase for 2-year term with 2-year renewal option at 5% additional increase — total cost is manageable and provides certainty; (5) Do not sign at 15% without exploring alternatives." Counter offer sent; landlord agrees to 8% increase for 2-year renewal; Column6 stays; move was avoided

## Audit Log
All lease review memos retained. Executed leases retained permanently. Contract tracker entries retained. Renewal option exercise records retained (date of exercise; landlord acknowledgment). CAM reconciliation records retained (7 years). Personal guarantee agreements retained permanently. Any lease disputes retained with outcome.

## Deprecation
Retire when each portfolio company has real estate counsel on retainer for lease negotiations — with Dr. Lewis reviewing the financial terms and Matt Mathison approving any personal guarantee or lease commitment >$250K.
