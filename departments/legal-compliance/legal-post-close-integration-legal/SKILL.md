---
name: legal-post-close-integration-legal
description: "Manage legal obligations and integration tasks after an M&A transaction closes. Use when the user says 'post-close', 'post-closing', 'integration', 'day one integration', 'post-acquisition', 'day one plan', 'after the deal closes', 'post-close integration', 'new entity integration', 'integrating the acquisition', 'onboarding the acquisition', 'post-close legal', 'post-close obligations', 'transition services', 'integration checklist', 'D+1', 'day one', 'integration planning', or 'M&A integration'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <acquired company>] [--side <buy|sell>] [--phase <immediate|30-day|90-day|annual>] [--action <plan|execute|review>]"
---

# Post-Close Integration Legal Manager

Manage the legal obligations and integration tasks after an M&A transaction closes — from Day 1 notifications through the 90-day integration sprint and into the ongoing post-close obligations (NWC true-up, escrow management, earn-out tracking). The close date is the beginning of a new set of legal obligations, not the end of the deal process. Dr. Lewis manages the legal integration checklist and ensures post-close obligations are met within their contractual deadlines.

## When to Use
- An M&A transaction has closed and integration begins
- Planning the Day 1 integration agenda
- Tracking post-close contractual obligations (NWC true-up, earnouts)
- 30-day and 90-day integration review milestones

## Post-Close Integration Framework

```
DAY 1 (CLOSING DAY):
  Immediately upon transaction close:
  □ Employee notification: All employees notified (by CEO or designated leader)
    Script: Who acquired us; what changes immediately; what stays the same; who to contact with questions
  □ Vendor/supplier notification: Key vendors notified of ownership change
    Reason: Counterparty awareness; any vendors with change-of-control provisions may need consent
    See legal-closing-checklist-manager — consents should be obtained pre-close; but notify all vendors D+1
  □ Customer/client notification: Key customers notified (coordinate with sales/relationship owners)
    Risk: Customer attrition is the biggest post-close revenue risk; proactive notification with reassurance
  □ Bank accounts: New signatory authority added; prior owners' authority removed
  □ Insurance: Notify insurance carriers of change of control; confirm coverage is in place for new entity
  □ IT systems: Password resets; admin account transfers; email domain decisions
  □ Website and marketing materials: Legal entity name correct? Any required disclosures?
  
FIRST 30 DAYS — LEGAL INTEGRATION:
  ENTITY AND CORPORATE:
    □ Operating Agreement / Articles of Organization updated if applicable
    □ Registered agent confirmed (or changed to MBL's preferred agent)
    □ State filings: Any change of ownership notifications required by state (DOGM for HIVE; healthcare 
      licensing for Allevio)
    □ Corporate records review: Are prior board records complete? Any gaps?
    □ Legal entity name: Does the business need to operate under a new name? DBA filing?
    
  CONTRACTS:
    □ Material vendor contracts: Counterparties who required consent — confirm consent obtained
    □ Change-of-control consents: Obtain any remaining consents not closed pre-transaction
    □ Government contracts or healthcare payor contracts (Allevio): Any transfer or re-credentialing required?
    □ Employee agreements: Confirm key employee retention agreements are in place
    □ Contract tracker update: Transfer all contracts to the buyer's contract tracking system
    
  REGULATORY:
    ALLEVIO:
      □ Healthcare facility licensing: Any change-of-control notification to AZ licensing authority?
      □ Provider credentialing: Any provider re-credentialing needed with payors after change of control?
      □ HIPAA BAA update: If operating entity name changed, update BAAs with all vendors
    HIVE:
      □ DOGM: Operator transfer or change of control notification (well permits)
      □ BLM: Any federal lease assignment notification required?
      □ Environmental permits: Any transfer required for existing environmental permits?
    COLUMN6:
      □ IAB: Sellers.json update to reflect new ownership
      □ FTC: No specific notification; but ensure advertising disclosures remain current

FIRST 90 DAYS — INTEGRATION COMPLETION:
  □ Integration of back-office systems: QuickBooks; payroll; HR
  □ Banking consolidation: Move to MBL's preferred banking relationship (or manage separately)
  □ Benefits harmonization: Bring benefits into alignment with MBL portfolio standards
  □ IT security review: Assess cybersecurity posture; implement MBL baseline controls
  □ Insurance consolidation: Can the acquired entity be covered under an MBL umbrella policy?
  □ Finance integration: Monthly reporting to Dr. Lewis; BD7 management report cadence
  □ Legal integration: Legal function under Dr. Lewis oversight; outside counsel rationalized

POST-CLOSE CONTRACTUAL OBLIGATIONS:
  NWC TRUE-UP:
    Deadline: Per purchase agreement (typically 30-45 days after close for closing balance sheet delivery)
    Process: Dr. Lewis prepares the closing balance sheet; calculates the NWC as defined in the agreement;
      delivers to the buyer with a formal NWC calculation; dispute period (15-30 days for the buyer to review)
    See legal-purchase-agreement-reviewer for NWC mechanics
    
  EARNOUT TRACKING:
    If applicable: Set up earnout tracking metrics at close (do not wait until the first measurement period)
    Monthly measurement: Track the earnout metrics against the agreement's definition
    Annual certification: Provide the buyer's earnout calculation with supporting documentation
    Dispute process: If the buyer disagrees with the earnout calculation, follow the agreement's dispute process
    
  ESCROW MANAGEMENT:
    Escrow release date: Calendar the escrow release date immediately upon close
    Release conditions: No pending indemnification claims → escrow is released to seller
    If pending claims: Escrow is retained pending resolution of the claim
    See legal-escrow-holdback-tracker for detailed management
    
  TRANSITION SERVICES (if agreed):
    If seller provides transition services to buyer:
      Defined in the Transition Services Agreement (TSA) — a separate agreement from the purchase agreement
      Services: Specific services for a defined period (typically 3-12 months post-close)
      Pricing: At cost or at a modest markup; not a profit-making arrangement
      Termination: Buyer may terminate individual services as they build independent capability
```

## Output Format

```markdown
# Post-Close Integration Legal Checklist — [Deal Name]
**Entity acquired:** [Company] | **Close date:** [Date] | **Side:** [Buyer / Seller]
**Managed by:** Dr. Lewis | **Last updated:** [Date]

---

## Day 1 (✅ Complete / ❌ Open)

| Action | Status | Owner | Notes |
|--------|--------|-------|-------|
| Employee notification | ✅ | CEO | Delivered 10 AM closing day |
| Key vendor notification | ✅ | CEO + Dr. Lewis | Top 5 vendors notified |
| Bank signatory update | ✅ | Dr. Lewis | New signatories added; old removed |
| Insurance notification | ⚠️ Pending | Dr. Lewis | Carrier response awaited |

---

## 30-Day Obligations

| Action | Owner | Deadline | Status |
|--------|-------|---------|--------|
| DOGM operator transfer (HIVE) | Dr. Lewis + O&G counsel | +30 days | In progress |
| Contract tracker transfer | Dr. Lewis | +30 days | Complete |
| NWC closing balance sheet delivery | Dr. Lewis | [Date] | Due |

---

## Post-Close Financial Obligations

| Obligation | Deadline | Status |
|-----------|---------|--------|
| NWC true-up closing balance sheet | [Date] | In progress |
| NWC true-up buyer review period ends | [Date] | Pending buyer |
| Escrow release date | [Date] | Calendar set |
| Earnout Q1 measurement | [Date] | Tracking active |
```

## Output Contract
- Day 1 employee notification is the most important operational action — employee uncertainty in the hours after a closing announcement is the leading driver of post-close attrition; the most valuable employees are also the most likely to leave immediately if communication is delayed or unclear; the CEO should be on-site (or on a company-wide video call) within 2 hours of the closing announcement; the message should be: who are the new owners; what changes immediately (if anything); what stays the same; where to get answers; Dr. Lewis prepares the employee communication script as part of closing preparation — not as a post-close scramble
- Post-close contractual deadlines start running at close — the NWC true-up clock, earnout measurement period, and escrow release date all begin on the closing date; Dr. Lewis adds all contractual post-close deadlines to the compliance calendar on the day of closing (not later); missing the NWC closing balance sheet deadline gives the buyer an advantage in the NWC negotiation and may constitute a material breach; Dr. Lewis treats post-close contractual deadlines with the same urgency as pre-close conditions
- Regulatory notifications can be longer fuses but cannot be ignored — DOGM operator transfer for HIVE, healthcare licensing notification for Allevio, and IAB sellers.json update for Column6 are regulatory obligations triggered by the closing; they may not have immediate deadlines, but operating without completing them creates compliance risk; Dr. Lewis identifies all entity-specific regulatory post-close notifications on Day 1 and assigns deadlines from outside counsel's guidance
- HITL required: Dr. Lewis manages the integration legal checklist; CEO leads the employee and customer communications; Matt Mathison receives a 30-day and 90-day integration status report; entity-specific regulatory notifications require outside counsel confirmation (healthcare licensing for Allevio; DOGM for HIVE); Matt Mathison must authorize all NWC settlement payments and escrow releases above the thresholds in the purchase agreement

## System Dependencies
- **Reads from:** Purchase agreement (post-close obligations; NWC calculation; earnout terms; escrow provisions; TSA if any); closing checklist (legal-closing-checklist-manager — what was completed at close vs. what carries to Day 1+); vendor contract tracker (contracts with change-of-control provisions that need post-close consents); regulatory calendar (entity-specific post-close regulatory notifications); fpa-ma-financial-support (earnout model; NWC model); legal-escrow-holdback-tracker (escrow tracking)
- **Writes to:** Post-close integration legal checklist (SharePoint/Legal/MBL/MA/[Deal]_IntegrationChecklist.xlsx); NWC closing balance sheet (SharePoint/Legal/MBL/MA/[Deal]_NWCCloseBS.xlsx); regulatory notification records; Matt Mathison 30-day and 90-day integration reports; employee notification script (archived); earnout tracking model updates
- **HITL Required:** Dr. Lewis manages; CEO leads employee/customer communications; Matt Mathison receives 30/90-day reports and approves any NWC settlement or escrow release above purchase agreement thresholds; entity-specific regulatory notifications confirmed by outside counsel (DOGM; healthcare licensing); Dr. Lewis does not represent the company to regulators without counsel guidance in the post-close period; all settlement payments (NWC adjustments) >$25K require Matt Mathison approval

## Test Cases
1. **Golden path:** HIVE sale — closing day and D+30 → Day 1: CEO calls all HIVE employees (30 people) on a videoconference at 11 AM post-close; script: new owner is [Buyer]; operations continue unchanged; HIVE management stays in place; Uinta Basin focus unchanged; Dr. Lewis simultaneously notifies bank (new signatories), insurance carrier (change of control), top 5 vendors, and DOGM (operator transfer notification initiated); D+5: NWC closing balance sheet preparation begins (QuickBooks pulled; closing date balance sheet prepared); D+30: NWC closing balance sheet delivered to buyer per SPA ($295K actual vs. $280K peg — HIVE receives a $15K post-close payment); DOGM operator transfer filed (O&G counsel confirms); all D+30 obligations complete
2. **Edge case:** Allevio acquisition (buyer side) — acquired company's largest payor contract has a change-of-control provision requiring payor consent within 30 days of closing; the consent was not obtained pre-close because it was missed in the consent analysis → Dr. Lewis immediately: "The [Payor] contract requires consent to our acquisition within 30 days. We're at Day 1 now — we have 29 days. CEO must contact [Payor] today; get a letter or email acknowledging the change of control and confirming continued contract terms; if [Payor] requires a formal consent document, healthcare counsel must prepare and deliver it within the 30-day window. This is the highest-priority post-close legal action — loss of [Payor] contract is a material adverse event for Allevio." Consent process initiated Day 1; payor confirms continued contract terms in writing within 15 days; 30-day deadline met
3. **Adversarial:** The buyer of Allevio disputes the NWC calculation — buyer claims the actual NWC at close was $255K (vs. Dr. Lewis's calculation of $305K); the dispute centers on whether $50K of deferred revenue is included in current liabilities → Dr. Lewis follows the purchase agreement's dispute process: "The NWC calculation dispute process: (1) We have delivered our closing balance sheet showing NWC of $305K; (2) Buyer delivered a written dispute notice within the permitted period claiming NWC was $255K; (3) The parties have 15 days to resolve the dispute directly; (4) If not resolved, the dispute goes to the neutral accountant ([Named Accounting Firm] per SPA); (5) The neutral accountant's determination is binding. The dispute turns on whether deferred revenue is a current liability in the NWC definition. The SPA definition [read exact language]: 'NWC means current assets minus current liabilities as determined in accordance with GAAP consistently applied, excluding deferred revenue from current liabilities.' Our position: Deferred revenue is explicitly excluded — NWC is $305K. M&A counsel confirms our interpretation." Neutral accountant agrees with seller; $305K confirmed; buyer pays the $25K NWC adjustment

## Audit Log
All post-close integration checklists retained by deal. NWC calculations and dispute records retained permanently. Earnout measurement records retained through the earnout period + 5 years. Escrow release records retained permanently. Regulatory notification records retained permanently. Employee notification scripts retained. Matt Mathison integration reports retained.

## Deprecation
Retire when MBL Partners has a dedicated integration manager — with Dr. Lewis managing post-close legal obligations and Matt Mathison approving integration milestones and settlement payments.
