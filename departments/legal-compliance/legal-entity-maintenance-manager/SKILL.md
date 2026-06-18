---
name: legal-entity-maintenance-manager
description: "Maintain entity good standing and corporate filings for all MBL portfolio entities. Use when the user says 'entity maintenance', 'annual filing', 'good standing', 'registered agent', 'state filing', 'annual report', 'entity renewal', 'corporate compliance', 'state registration', 'foreign qualification', 'entity structure', 'entity chart', 'corporate structure', 'which entities do we have', 'entity list', 'maintain the entity', 'entity compliance', 'corporate formalities', 'state compliance', or 'entity registration'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--state <AZ|UT|DE|other>] [--action <file|confirm|review|report>]"
---

# Entity Maintenance Manager

Maintain the good standing, annual filings, and registered agent status for all MBL portfolio entities across all states of formation and operation. Entity maintenance is the unglamorous foundation of legal compliance: missing a $45 annual filing can cause a state to administratively dissolve an entity, void contracts executed during the lapse, and require a costly reinstatement process — all for the cost of a lunch. Dr. Lewis maintains the entity compliance calendar and ensures all filing deadlines are met without exception.

## When to Use
- Annual filing season (calendared proactively)
- A new entity is formed — add to tracking
- A portfolio company expands into a new state (foreign qualification required)
- Dr. Lewis is conducting a legal health check across the portfolio
- Due diligence for an M&A transaction requires an entity good standing report

## Entity Maintenance Framework

```
CURRENT MBL PORTFOLIO ENTITY MAP (maintain current list):
  MBL Partners LLC (holding company)
  Allevio [Legal Entity Name] — AZ LLC; formed [Year]
  HIVE Partners [Legal Entity Name] — UT LLC; formed [Year]
  Column6 / Siprocal [Legal Entity Name] — [State] LLC or Corp; formed [Year]
  [Any intermediate holding entities]
  
  NOTE: Confirm exact legal entity names, state of formation, and entity type for each
    Legal name ≠ trade name; contracts must use the legal entity name

FILING CALENDAR (annual):

  ARIZONA:
    Arizona Limited Liability Company — Annual Report
      Filing deadline: On or before April 30 each year
      Fee: ~$45 (online); Arizona Corporation Commission (ACC)
      What to confirm: Registered agent name/address; known place of business; members/managers
      What happens if missed: ACC will issue a Notice of Delinquency; continued non-filing = administrative dissolution
      
  UTAH:
    Utah Limited Liability Company — Annual Renewal
      Filing deadline: On or before the last day of the entity's anniversary month
        (e.g., entity formed in March → annual renewal due by March 31 each year)
      Fee: ~$18 (online); Utah Division of Corporations and Commercial Code
      What happens if missed: Entity placed "expired" status; reinstatement required with late fees
      
  DELAWARE (if any MBL entities are Delaware-formed):
    Delaware LLC — Annual Tax Report
      Filing deadline: June 1 each year
      Fee: $300 minimum annual tax
      Delaware Corp — Annual Report + Franchise Tax
      Filing deadline: March 1 each year (corporations); June 1 (LLCs)
      Franchise tax: Varies by authorized shares (can be $400 to $200K+ for corps; consult counsel)
      
  OTHER STATES:
    If portfolio company does business in additional states, foreign qualification required
    Foreign qualification = registration to do business as a "foreign entity" in a new state
    Typically required when: Office, employees, or significant revenue in the state
    Each foreign-qualified state has its own annual report / renewal requirements

REGISTERED AGENT REQUIREMENTS:
  Every entity must maintain a registered agent in:
    State of formation (domestic registration)
    Any state where the entity is foreign-qualified
  Registered agent requirements:
    Physical address in the state (not PO Box)
    Available during normal business hours to receive legal process
  Options:
    Use a registered agent service ($50-200/year per state) — recommended
    Use CEO or Dr. Lewis as registered agent (not recommended — personal address becomes public record;
      unavailable when traveling creates compliance risk)
  Common registered agent services: Northwest Registered Agent; CT Corporation; Registered Agents Inc.
  
FOREIGN QUALIFICATION:
  When required: Physical presence (office, employees) or significant revenue in a new state
  Process: File a Certificate of Authority (or equivalent) with the new state
  Ongoing: File annual reports in the new state; maintain registered agent
  Failure to qualify: Company cannot sue in state courts; fines/penalties; personal officer liability in some states
  
GOOD STANDING CERTIFICATES:
  M&A transactions, bank loans, and some contracts require a current Certificate of Good Standing
  Obtain from: State agency where entity is registered ($10-25 per certificate; same-day online in most states)
  Certificates expire (typically 30-90 days) — obtain a fresh one for each transaction
  
ENTITY COMPLIANCE CHECKLIST (annual review):
  □ All required annual reports filed on time
  □ All filing fees paid
  □ Registered agent confirmed and current
  □ Business address current with all state filings
  □ Foreign qualifications up to date in all states with employees or operations
  □ Entity name not abandoned or at risk (confirm with state if there are similar names)
  □ Corporate records current (Operating Agreement, minutes, consents — per legal-corporate-governance-manager)
```

## Output Format

```markdown
# Entity Compliance Status — MBL Portfolio
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Next review:** [Date]

---

## Entity Status Summary

| Entity | State | Type | Status | Last Filing | Next Due | Action |
|--------|-------|------|--------|------------|---------|--------|
| MBL Partners LLC | [State] | LLC | ✅ Active | [Date] | [Date] | None |
| Allevio [Name] | AZ | LLC | ✅ Active | [Date] | Apr 30, 2027 | — |
| HIVE Partners [Name] | UT | LLC | ✅ Active | [Date] | [Month] 2027 | — |
| Column6 [Name] | [State] | LLC/Corp | ✅ Active | [Date] | [Date] | — |

---

## Upcoming Deadlines

| Entity | State | Filing | Due | Fee | Action Owner |
|--------|-------|--------|-----|-----|-------------|
| Allevio | AZ | Annual Report | Apr 30, 2027 | $45 | Dr. Lewis |
| HIVE | UT | Annual Renewal | [Month] 2027 | $18 | Dr. Lewis |

---

## Registered Agent Status

| Entity | State | Registered Agent | Address | Last Confirmed |
|--------|-------|----------------|---------|---------------|
| Allevio | AZ | [Name/Service] | [Address] | [Date] |

---

## Open Items

| Item | Entity | Status | Action | Owner | Due |
|------|--------|--------|--------|-------|-----|
| [Foreign qualification needed — Column6 expanding to CA] | Column6 | Open | File CA certificate of authority | Dr. Lewis + counsel | [Date] |
```

## Output Contract
- Never miss a filing deadline — entity maintenance is 100% calendar-driven; Dr. Lewis sets reminders 90 days, 60 days, and 30 days before every annual filing deadline; the actual filing is completed 30-45 days before the deadline (not on the deadline); filing early eliminates the risk of a last-minute system failure or forgotten deadline; Dr. Lewis confirms the filing with the receipt or confirmation number from the state agency and logs it in the entity compliance tracker; a filing confirmed by "I think I did it" is not a filing — the confirmation number is the evidence
- Foreign qualification lag = retroactive compliance problem — if a portfolio company has been operating in a new state without qualifying as a foreign entity, the company is technically in violation from the start of operations in that state; the remedy is to file the foreign qualification immediately and pay any back fees or penalties; some states assess penalties for the period of unqualified operation; the longer the company waits, the larger the exposure; Dr. Lewis asks about new state operations as part of the annual entity review: "Do any of our portfolio companies have employees, offices, or significant revenue in a state where we haven't filed?"
- Good standing is a transaction requirement — every M&A transaction, bank loan, and significant commercial contract will require a Certificate of Good Standing for all entities involved; Dr. Lewis maintains the entity compliance status precisely so that when a transaction arises, the entities are all in good standing and can produce a certificate within 24 hours; a transaction that has to be delayed because an entity is out of good standing is an embarrassing and avoidable problem
- HITL required: Dr. Lewis files; CEO confirms accuracy of the entity information (registered agent, business address, members/managers — information that appears on the annual report must be accurate); Matt Mathison informed of any entity good standing issue immediately; outside corporate counsel engaged for entity formation, dissolution, restructuring, or foreign qualification in unfamiliar states; Dr. Lewis does not make entity structural decisions (formation, dissolution) without Matt Mathison and outside counsel approval

## System Dependencies
- **Reads from:** Entity formation documents (Articles of Organization, Certificate of Formation — SharePoint/Legal/[Entity]/Formation/); Operating Agreements (to confirm members and managers); registered agent records; prior year filing confirmations; state agency websites (for filing deadlines, fees, and current status); legal-corporate-governance-manager (for corporate records status)
- **Writes to:** Entity compliance tracker (SharePoint/Legal/MBL/EntityCompliance/Tracker.xlsx); annual filing confirmations (filing receipts filed by entity and year); registered agent update records; Matt Mathison annual entity status report; foreign qualification filings (if needed)
- **HITL Required:** Dr. Lewis files and confirms; CEO confirms entity information is accurate before filing; Matt Mathison approves any new entity formation, foreign qualification, or entity dissolution; outside corporate counsel required for entity formation, dissolution, mergers, and complex restructuring; Dr. Lewis does not dissolve or restructure entities without Matt Mathison and outside counsel authorization

## Test Cases
1. **Golden path:** Annual entity review in January → Dr. Lewis opens the entity compliance tracker; confirms Arizona Annual Report due April 30 (90 days away — schedule the 90-day, 60-day, 30-day reminders now); Utah Annual Renewal due March 31 (HIVE — 90 days — schedule reminders); pulls current state agency records to confirm good standing for all entities; all entities in good standing; registered agents confirmed current; no foreign qualification issues identified; Dr. Lewis files the HIVE Utah renewal in early March and the Allevio Arizona report in early April; both confirmations logged in the entity tracker; all entities in good standing through the year; no issues
2. **Edge case:** Column6 hires its first California-based sales employee in February → Dr. Lewis flags: "Column6 now has an employee in California. California requires foreign qualification (Certificate of Authority) for out-of-state entities doing business in California. 'Doing business in California' includes having an employee. We need to: (1) File a Certificate of Authority with the California Secretary of State ($70 fee); (2) Designate a registered agent in California; (3) File California annual report thereafter (due by the end of the entity's registration anniversary month; $20 + minimum franchise tax). I recommend engaging outside counsel for the California registration because California has additional requirements including an initial Statement of Information within 90 days. I'll get the process started." Outside counsel engaged; California registration completed within 30 days of the employee start date
3. **Adversarial:** Dr. Lewis discovers during a deal due diligence that one of the Allevio holding entities has been administratively dissolved by Arizona for missing 2 consecutive annual reports → Dr. Lewis immediate action: "One Allevio holding entity has been administratively dissolved by the ACC. This is a problem for the pending transaction — the buyer's counsel will flag this as a defect in the diligence report. We need to move immediately: (1) File an Application for Reinstatement with the ACC — reinstatement is available for administratively dissolved entities (filing fee plus back annual report fees); (2) Arizona will issue a reinstatement effective date; (3) Provide the reinstatement certificate to the buyer's counsel with an explanation of the gap and the cure; (4) Ensure the entity's contracts during the dissolution period are still valid — Arizona law is nuanced on this; outside counsel must advise. Timeline: 5-7 business days for ACC to process reinstatement." Dr. Lewis files reinstatement same day; outside counsel advises on contract validity; buyer's counsel updated; transaction proceeds after reinstatement is confirmed

## Audit Log
All annual filing confirmations retained permanently (by entity and year). Registered agent records retained (7 years after change or termination). Foreign qualification filings retained permanently. Good standing certificates retained (by date and transaction). Entity formation documents retained permanently. Any administrative dissolution or reinstatement records retained permanently.

## Deprecation
Retire when MBL Partners engages a corporate law firm on annual retainer to handle all entity maintenance — with Dr. Lewis reviewing the annual compliance calendar and Matt Mathison approving any entity formation, foreign qualification, or dissolution.
