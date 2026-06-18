---
name: legal-corporate-governance-manager
description: "Manage corporate governance, board minutes, and entity maintenance for MBL portfolio companies. Use when the user says 'board meeting', 'board minutes', 'board resolution', 'consent resolution', 'corporate governance', 'annual meeting', 'entity maintenance', 'good standing', 'registered agent', 'annual report filing', 'corporate formalities', 'shareholder agreement', 'operating agreement', 'company resolutions', 'director approval', 'officer authority', 'corporate records', 'minute book', 'bylaws', or 'organizational documents'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <minutes|resolution|filing|review>] [--state <AZ|UT|DE|other>]"
---

# Corporate Governance Manager

Manage corporate governance obligations for MBL portfolio companies — maintaining corporate formalities, board minutes, consent resolutions, annual filings, and entity good standing. Corporate governance failures are how PE portfolio companies lose the liability protection of the corporate structure: if a company doesn't maintain its corporate formalities (minutes, resolutions, annual filings), a plaintiff can pierce the corporate veil and reach the assets of the parent or owners. Dr. Lewis maintains governance discipline across all portfolio entities and coordinates with outside counsel for structurally complex decisions.

## When to Use
- After every board meeting — draft and retain minutes
- When approval is needed for a major transaction (M&A, equity issuance, large debt, distributions)
- Annual corporate filings and registered agent confirmation
- A significant business decision requires documented board or officer approval
- An acquisition, new entity formation, or restructuring is planned

## Corporate Governance Framework

```
MBL PORTFOLIO ENTITY STRUCTURE (general):
  Each portfolio company is typically organized as an LLC or C-Corp
  MBL Partners has equity interest in each; Dr. Lewis advises on governance
  Operating Agreement (LLC) or Bylaws (C-Corp) govern the company's governance requirements
  
  Standard minimum governance requirements:
    Annual meeting: At least one board/manager meeting per year (documented)
    Major decisions: Board approval required (list varies by operating agreement)
    Annual filings: State-required annual reports and fees
    Registered agent: Maintained in the state of formation
    
DECISIONS REQUIRING BOARD/MANAGER APPROVAL:
  (Per standard LLC Operating Agreements and governance best practices)
  
  Financial decisions:
    □ Annual budget adoption
    □ Capital distributions to members (all distributions → Matt Mathison authorization)
    □ Incurring debt >$[threshold per entity OA] (typically >$50K or >$100K)
    □ Capital expenditure above approval threshold
    □ Entry into multi-year contracts (typically >1 year or >$50K)
    
  Structural decisions:
    □ Issuance of new equity interests (requires manager + member vote per OA)
    □ Admission of new members or investors
    □ Mergers, acquisitions, or dispositions
    □ Amendment of Operating Agreement or Bylaws
    □ Dissolution or liquidation
    
  Personnel decisions:
    □ Appointment or removal of CEO/Officers (as defined by OA)
    □ Compensation of senior officers above threshold (per OA)
    □ Employment agreements with equity or long-term commitments
    
CONSENT RESOLUTIONS (Written Action in Lieu of Meeting):
  Most LLC operating agreements allow decisions by unanimous written consent
    (or majority written consent — check the specific OA)
  Use written consent when: The decision is routine; a formal meeting is not practical
  Written consent must include:
    Date; the specific action approved; signature of all required parties
    Filed in the corporate records
    
ANNUAL CORPORATE FILINGS:
  Arizona LLC: Annual Report due on or before April 30 (filing fee ~$45)
    Filed with Arizona Corporation Commission (ACC)
    Must confirm registered agent and principal address
  Utah LLC: Annual Renewal due on anniversary month
    Filed with Utah Division of Corporations (filing fee ~$18)
  Delaware: Many PE-backed companies are Delaware-formed
    Delaware LLC: Annual Franchise Tax Report + minimum franchise tax
    Delaware Corp: Annual Report + franchise tax (amount varies by authorized shares)
  NOTE: Missing annual filing = company placed "out of good standing" or dissolved
    Out of good standing = cannot execute contracts in the state; may void insurance coverage
    
REGISTERED AGENT MAINTENANCE:
  Every company must maintain a registered agent in every state where it is registered
  Arizona: Various registered agent services ($50-150/year); or Dr. Lewis / CEO can serve
  Utah: Same; registered agent in Utah required for HIVE
  Registered agent must have a physical address in the state (not a PO Box)
  Notify registered agent of any address changes; update with state immediately
  
CORPORATE RECORDS REQUIREMENTS:
  Operating Agreement: Original + all amendments retained permanently
  Minutes and Consents: All board/manager minutes and written consents retained permanently
  Ownership records: Cap table / membership interest records retained permanently
  Annual filings: Copies of all annual reports and receipts retained (7 years)
  Contracts: Per contract tracker
  
PIERCING THE CORPORATE VEIL:
  Courts will pierce the corporate veil (hold owners personally liable) when:
    Failure to maintain corporate formalities (no minutes, no annual meetings, no separate records)
    Commingling of personal and business funds
    Undercapitalization of the entity
    Fraudulent transfer
  Prevention: Separate bank accounts; document board decisions; file annual reports; maintain records
```

## Output Format

```markdown
# Board/Manager Minutes — [Entity]
**Meeting date:** [Date] | **Location/Method:** [In-person / Video / Written consent]
**Attendees:** [Names and roles]
**Presiding:** [Name]

---

## Call to Order

[Meeting called to order at X:XX by [Name].]

---

## Prior Minutes

[Minutes of the [prior date] meeting were reviewed and approved / First meeting.]

---

## Resolutions / Actions Taken

### Resolution 1: [Title]
**RESOLVED:** That [specific action approved — be precise, not general].

**Approved by:** [Name(s)] | **Opposed:** None | **Abstained:** None

---

## Financial Update

[Brief summary of financials presented — amounts, period, key points]

---

## Discussion Items

[Other items discussed but not requiring formal resolution]

---

## Adjournment

[Meeting adjourned at X:XX. Next meeting scheduled for [date if known].]

---

**Minutes certified by:** [Name, Title] | **Date certified:** [Date]
**Filed in corporate records:** SharePoint/Legal/[Company]/CorporateRecords/[Year]_BoardMinutes.pdf
```

## Output Contract
- Governance is how the corporate veil is maintained — Dr. Lewis treats corporate governance not as administrative overhead but as the legal foundation that protects MBL and its principals from personal liability; a portfolio company that cuts corners on governance (no minutes, no resolutions for major decisions, no annual filings) is a company that is building the plaintiff's argument for piercing the corporate veil; Dr. Lewis reviews the governance checklist annually for each portfolio company and flags any gaps to Matt Mathison; the cost of governance discipline is 2-4 hours per year; the cost of a piercing-the-veil lawsuit is measured in hundreds of thousands
- Minutes must be approved — minutes are not just a record; they are the formal approval of the business decisions made; minutes drafted but never approved and filed have limited legal value; Dr. Lewis drafts minutes promptly after each meeting, sends to the appropriate parties for review, and files the approved minutes in the corporate records within 30 days of the meeting; for written consents, the executed consent is filed in the corporate records immediately upon execution
- Annual filings are a drop-dead deadline — Dr. Lewis calendars all annual filing deadlines at the beginning of each year; the cost of missing a filing is state dissolution or loss of good standing; losing good standing can void contracts (some contracts include a representation that the company is in good standing), prevent the company from suing in state courts, and trigger insurance issues; the Arizona Annual Report ($45) and Utah Annual Renewal ($18) are among the cheapest legal obligations in the portfolio — they must never be missed
- HITL required: Dr. Lewis drafts minutes and resolutions; CEO and all required board members/managers review and sign; any resolution that authorizes a distribution, equity issuance, debt incurrence, or major transaction requires Matt Mathison sign-off per the approval matrix; Dr. Lewis does not sign board minutes as a board member (unless he is one) — he drafts them for signature by the properly authorized individuals; outside corporate counsel required for any restructuring, equity issuance, or amendment to the Operating Agreement

## System Dependencies
- **Reads from:** Entity's Operating Agreement and Bylaws (governing document for what decisions require approval and at what level); prior board minutes (to reference prior resolutions); annual filing calendar (SharePoint/Legal/MBL/CorporateFilings/AnnualCalendar.xlsx); registered agent confirmation records; cap table (for equity-related resolutions); financial statements (for financial update section of minutes)
- **Writes to:** Board minutes (SharePoint/Legal/<Company>/CorporateRecords/[Year]_BoardMinutes.pdf); written consent resolutions (SharePoint/Legal/<Company>/CorporateRecords/[Year]_Consents/); annual filing confirmations (receipt filed in SharePoint/Legal/<Company>/AnnualFilings/); registered agent update records; cap table (if equity issuance resolution executed)
- **HITL Required:** Dr. Lewis drafts; CEO and required board members review and approve minutes; any resolution requiring equity issuance, distribution, debt incurrence, or material contract requires Matt Mathison approval per the approval matrix; annual filings submitted by Dr. Lewis or outside corporate counsel; Dr. Lewis does not make governance decisions unilaterally — all major decisions require approval from the appropriate level per the Operating Agreement

## Test Cases
1. **Golden path:** Allevio's annual board/manager meeting — first week of Q4 → Dr. Lewis prepares: Agenda (financial update; FY budget review and approval; CEO compensation review; any pending resolutions); Dr. Lewis drafts minutes template before the meeting; meeting occurs (video call; 45 minutes); Dr. Lewis completes the minutes within 48 hours: financial update section (LTM EBITDA $852K; revenue $1.25M; cash 82 days); Resolution 1: Adoption of FY 2027 Annual Operating Budget as presented; Resolution 2: CEO compensation confirmed at $[X] for FY 2027; no other formal resolutions; minutes sent to CEO for review within 48 hours; CEO approves; minutes filed in SharePoint; Arizona Annual Report filed in April; registered agent confirmed; all governance obligations current
2. **Edge case:** Dr. Lewis discovers that HIVE missed its Utah Annual Renewal for the current year (discovered in September — filing was due in April) → Dr. Lewis immediate action: "(1) File the Utah Annual Renewal immediately — late filing is possible with a late fee; do not wait; (2) Confirm that HIVE has not executed any contracts in the state of Utah since the lapse (if out of good standing, contracting ability is impaired); (3) Confirm insurance coverage is not affected (some policies have a good-standing warranty); (4) Log the miss in the governance tracker with root cause; (5) Add a 90-day advance alert to the calendar for next year." Filing submitted same day; good standing restored; Dr. Lewis adjusts the calendar to prevent recurrence
3. **Adversarial:** The Column6 CEO wants to issue equity to a new key hire (3% equity stake) and asks Dr. Lewis to "just update the cap table" → Dr. Lewis stops: "Equity issuance is a formal action that requires board/manager approval per Column6's Operating Agreement (Section 8.2), and MBL Partners as the majority member must approve (per Section 8.2(c) — unanimous consent of members). This isn't something I can handle by just updating a spreadsheet. The process: (1) Draft a written consent resolution authorizing the equity issuance with the specific terms (number of units, class, vesting schedule, consideration); (2) Route to Matt Mathison for MBL Partners approval; (3) Execute a Unit Grant Agreement with the new hire; (4) Update the cap table after the executed resolution is in the corporate records; (5) Notify the company's accountant (equity comp has tax implications — 83(b) election for restricted units). I'll draft the resolution and Unit Grant Agreement — outside counsel should review before execution given the equity comp tax complexity." Outside counsel engaged; proper process followed

## Audit Log
All board minutes retained permanently. All consent resolutions retained permanently. Annual filing confirmations retained (7 years). Equity issuance records retained permanently. Operating Agreement and all amendments retained permanently. Registered agent records retained (7 years after termination of relationship). Any governance gap discoveries retained with root cause and remediation.

## Deprecation
Retire when each portfolio company has outside corporate counsel on retainer to handle governance — with Dr. Lewis reviewing the governance calendar annually and Matt Mathison approving any resolution that authorizes distributions, equity, or structural changes.
