---
name: pe-lp-admin
description: "Manage LP administrative records, compliance, and investor relations operations for MBL Partners. Use when the user says 'LP administration', 'LP admin', 'investor administration', 'investor admin', 'LP register', 'LP registry', 'LP records', 'LP information', 'LP contact information', 'LP onboarding documents', 'subscription documents', 'subscription agreement', 'LP subscription', 'investor onboarding', 'KYC', 'know your customer', 'AML', 'anti-money laundering', 'FATCA', 'FBAR', 'qualified investor', 'accredited investor', 'qualified purchaser', 'investor verification', 'LP verification', 'LP change of address', 'LP contact change', 'LP bank change', 'LP transfer', 'LP secondary', 'LP interest transfer', 'LP estate', 'LP death', 'LP successor', 'LP dispute', 'LP complaint', 'investor relations operations', 'quarterly report delivery', 'K-1 delivery', 'LP tax documents', 'LP document delivery', or 'LP communication log'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--action <onboard|update|verify|transfer|communicate|report>] [--lp <lp-name|all>] [--document-type <subscription|kyc|k1|notice|report>]"
---

# PE LP Admin

Manage LP administrative records, compliance, and investor relations operations for MBL Partners — maintaining the LP register, processing LP onboarding and KYC/AML compliance, managing LP contact and banking updates, tracking LP communications, and ensuring timely delivery of required documents. LP administration is the operational foundation of the fund's LP relationship: every LP must be verified as a qualified investor; every LP's contact and banking information must be current and verified; every required communication (quarterly reports, K-1s, capital call notices, distribution notices) must be delivered on time; every LP interaction must be logged. Errors in LP administration create legal and fiduciary exposure; a missed K-1 or an incorrect distribution creates LP disputes that damage the fund's reputation and may trigger regulatory scrutiny.

## When to Use
- A new LP is onboarding to the fund
- An existing LP updates contact or banking information
- Required LP documents need to be tracked and confirmed as delivered
- An LP submits a complaint, dispute, or information request
- An LP wants to transfer their interest (secondary transaction)

## LP Administration Framework

```
LP REGISTER (Master Record — maintained by Dr. Lewis):

  PER LP RECORD CONTAINS:
    Full legal name (exactly as on subscription documents)
    Entity type (individual; trust; LLC; pension fund; family office; etc.)
    Jurisdiction (state/country of formation or domicile)
    Committed capital amount: $[X]
    Pro-rata percentage: [X%]
    Subscription agreement date and version
    KYC/AML status: Verified [Date] | Needs renewal [Date]
    FATCA classification (US person; foreign person; exempt payee; etc.)
    Qualified investor status: Accredited Investor / Qualified Purchaser (required for most PE funds)
    
    PRIMARY CONTACT:
      Name; title; email (primary); email (secondary); phone
    
    BANK ACCOUNT (for distributions and confirmations):
      Bank name; ABA routing; account number; account name
      Last verified: [Date] | Verified by: [Dr. Lewis / phone call]
    
    DOCUMENT DELIVERY:
      Capital call notices: email to [primary + secondary contact]
      Distribution notices: email to [primary + secondary contact]
      Quarterly reports: email to [primary + secondary contact]
      K-1s: email or secure portal delivery per LP preference
    
    COMMUNICATION LOG:
      Date; type; subject; who; outcome

LP ONBOARDING PROCESS (new LP to the fund):

  STEP 1 — SUBSCRIPTION DOCUMENTS:
    LP executes subscription agreement (fund counsel drafts; Dr. Lewis coordinates)
    LP provides: entity formation documents; tax ID; beneficial ownership information
    
  STEP 2 — KYC/AML VERIFICATION:
    Verify LP identity and beneficial ownership (per fund counsel KYC program)
    AML screening: screen LP and beneficial owners against OFAC sanctions lists
    Political Exposed Person (PEP) check
    Source of funds documentation (for large LPs)
    Result: Pass / Fail / Escalate to Matt Mathison + legal
    
  STEP 3 — QUALIFIED INVESTOR VERIFICATION:
    Confirm LP meets the fund's investor qualification standard
    Most PE funds: Qualified Purchaser ($5M+ in investments) for unlimited LP count
    Accredited Investor ($1M+ net worth) triggers 3(c)(1) LP count limit (max 99 LPs)
    Failure to qualify → LP cannot participate → legal counsel guidance
    
  STEP 4 — FATCA CLASSIFICATION:
    US LPs: provide W-9
    Foreign LPs: provide W-8 (appropriate form per entity type)
    File with fund administrator; update annually or on material change
    
  STEP 5 — BANK ACCOUNT VERIFICATION:
    LP provides wire instructions (bank; ABA; account; name)
    Dr. Lewis verifies via phone to LP's CFO/treasurer (number from docs, not email)
    Verification documented before first capital call or distribution
    
  STEP 6 — LP REGISTER UPDATE:
    New LP added to master LP register
    Pro-rata percentages recalculated for all LPs (or confirmed if fund is closed)
    Matt Mathison notified of new LP addition

ONGOING LP ADMINISTRATION:

  CONTACT CHANGE PROTOCOL:
    Email from LP requesting contact change: acknowledge; send verification form
    Verify change by calling existing contact OR requiring signed letter on letterhead
    Update LP register after verification; Dr. Lewis signs off
    
  BANK ACCOUNT CHANGE PROTOCOL:
    Email request from LP is insufficient — phone verification required (fraud risk)
    Require: signed letter on LP letterhead with new account details
    Phone verification: call LP's CFO/treasurer at number on file
    Matt Mathison notification for any bank account change
    
  SECONDARY TRANSFER (LP interest transfer):
    LP must request transfer in writing to MBL Partners (attention: Matt Mathison)
    LPA governs transfer rights (right of first refusal; consent requirement)
    Matt Mathison and legal counsel evaluate and approve/deny
    Transfer documents: fund counsel drafts; both parties sign
    LP register updated after closing

REQUIRED DOCUMENT DELIVERY CALENDAR:

  Capital call notices: within LPA notice period (10 business days minimum)
  Distribution notices: within LPA notice period (5 business days minimum)
  Quarterly LP reports: within 45 days of quarter-end (or per LPA)
  Annual audited financials: within 90 days of year-end (March 31 target)
  K-1s: by April 15 (or by extended deadline if applicable)
  Annual meeting notice: per LPA (typically 30 days advance notice)
  
  DELIVERY TRACKING:
    Log every document delivery: date sent; recipient; delivery method
    Undeliverable email: escalate to secondary contact; then call
    LP confirms receipt: document in communication log
    No response: follow up at 5 days; escalate to Matt Mathison at 10 days (if critical document)
```

## Output Format

```markdown
# LP Register Summary — [Fund Name] — [Date]
**Maintained by:** Dr. Lewis | **Last updated:** [Date]

---

## LP Roster

| LP | Entity type | Committed capital | Pro-rata % | KYC status | Qualified status | Primary contact |
|----|------------|-----------------|-----------|-----------|-----------------|----------------|
| [LP 1] | LLC | $[X] | [X%] | ✅ Current | QP | [Name] |
| [LP 2] | Trust | $[X] | [X%] | ⚠️ Due renewal | AI | [Name] |

---

## Document Delivery Log (YTD)

| LP | Document | Date sent | Confirmed | Notes |
|----|---------|----------|---------|-------|
| All | Q2 Quarterly Report | [Date] | ✅ All | — |
| [LP 3] | K-1 | [Date] | ⚠️ Unconfirmed | Follow-up needed |

---

## KYC Renewal Schedule

| LP | Last verified | Renewal due | Days until renewal |
|----|-------------|------------|-------------------|
| [LP 2] | [Date] | [Date] | [N] |
```

## Output Contract
- KYC/AML is a legal compliance obligation, not a preference — every LP in the fund must be verified before they can make capital contributions; a LP that has not completed KYC cannot receive capital call notices or distributions; Dr. Lewis tracks KYC expiration dates and initiates renewal 90 days before expiration; failed AML screening (OFAC match; PEP with elevated risk) is immediately escalated to Matt Mathison and legal counsel; the fund cannot maintain a relationship with an LP that fails AML without explicit legal counsel guidance
- Bank account changes require phone verification every time — wire fraud targeting PE fund distributions is a documented risk category; an email requesting a bank account change (even if it looks like it's from the LP's CFO) is not sufficient authorization to change the wiring destination; Dr. Lewis verifies every bank account change by calling the LP's known contact at the number on file from the subscription documents; Matt Mathison is notified of every bank account change
- Document delivery is a fiduciary obligation with legal deadlines — K-1s delivered after April 15 create LP tax problems; audited financials delivered after the LPA deadline is a breach of the LPA; Dr. Lewis maintains a delivery calendar and initiates each document delivery 5 days before the deadline; undeliverable documents (bounced email; no response) are escalated immediately; delivery is not complete until confirmed by the LP
- HITL required: new LP onboarding → Matt Mathison notified; KYC/AML failures → Matt + legal immediately; LP interest transfers → Matt Mathison + legal approval; bank account changes → Matt notified after phone verification; LP complaints → Matt Mathison within 24 hours; LP qualified investor status issues → legal counsel review; fund LP count approaching limits (3(c)(1): 99 LPs) → Matt + legal before adding new LP

## System Dependencies
- **Reads from:** LP subscription documents (source of truth for LP identity; commitments; qualifications); KYC/AML screening service (OFAC; PEP databases); pe-capital-call-manager (capital call delivery); pe-distribution-manager (distribution delivery); pe-fund-accounting (K-1 inputs; capital account data); QuickBooks (LP capital account records)
- **Writes to:** LP register (master record — SharePoint → Governance → LPAdmin → LPRegister); communication log (every LP interaction); document delivery log; KYC renewal calendar; Matt Mathison notifications (new LPs; AML failures; bank changes; complaints; transfers)
- **HITL Required:** New LP → Matt awareness; KYC/AML failure → Matt + legal immediately; LP transfer → Matt + legal approval; bank change → Matt notified; LP complaint → Matt within 24 hours; LP count limits → Matt + legal before adding

## Test Cases
1. **Golden path:** New LP (a family office) requests to invest. Dr. Lewis initiates onboarding: subscription agreement executed; entity docs received; KYC initiated (entity principals screened against OFAC — clear; PEP check — clear); qualified purchaser verification (LP has $12M in investments — QP qualified); W-9 provided; bank wiring instructions received and verified via phone call to LP's CFO. LP register updated: LP #5 added; 17% pro-rata (adjusting from prior 4 LPs). Matt Mathison notified. First capital call notice sent per the next investment event.
2. **Edge case:** LP 2 sends an email saying their CFO left and the new CFO's contact info is different → Dr. Lewis: "I've received a contact update from LP 2. Before I update the LP register, I need to verify this through the existing contact channels: I'll call the current CFO number on file to confirm the departure and get the new CFO's direct phone. If I can't reach the existing contact, I'll require a signed letter on LP letterhead with the update, counter-signed by at least one other authorized signatory. Once verified, I'll update the register and log the change. Matt Mathison: FYI on the LP 2 contact change — I'll confirm it's legitimate before updating."
3. **Adversarial:** An LP demands all other LPs' contact information and capital commitment amounts, claiming they need it for a legal dispute with the fund → Dr. Lewis: "LPs do not have a right to other LPs' personal information or commitment amounts — this is private investor data that the fund is obligated to protect. I'm referring this request to fund counsel immediately. If the LP is initiating legal action against the fund, all further communication goes through legal counsel. Matt Mathison: I've received a legally motivated information request from [LP] — I'm not responding until fund counsel advises. I'll send you the counsel's response once I have it."

## Audit Log
LP register version history retained permanently. KYC/AML verification records retained (with dates; screening results). Document delivery logs retained. Bank account verification records retained. Communication logs retained. LP transfer records retained. Complaint logs retained.

## Deprecation
LP administration is a permanent function for the life of each fund and for the required statutory retention period after fund wind-down (typically 7 years). KYC/AML standards are updated annually as regulatory requirements evolve.
