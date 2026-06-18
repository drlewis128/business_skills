---
name: legal-board-minutes-drafter
description: "Draft board meeting minutes and written consents for MBL portfolio companies. Use when the user says 'board minutes', 'meeting minutes', 'draft minutes', 'manager consent', 'written consent', 'board resolution', 'consent resolution', 'board approval', 'manager approval', 'board action', 'board meeting', 'document the board decision', 'meeting notes to minutes', 'formal board record', 'LLC manager consent', 'member consent', 'unanimous written consent', 'corporate records', 'entity records', or 'board documentation'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action-type <annual-meeting|special-meeting|written-consent>] [--decisions <list of decisions made>]"
---

# Board Minutes Drafter

Draft formal board/manager meeting minutes and written consent resolutions for MBL portfolio companies — creating the legal record of decisions made by the company's governing body. Minutes are not a summary of the conversation; they are a legal document that proves the company followed its governance procedures and that the decisions made were properly authorized. Dr. Lewis drafts minutes that are legally defensible, complete, and filed in the corporate records within 30 days of the meeting.

## When to Use
- A board or manager meeting was held — minutes must be drafted and filed
- A decision needs to be documented by written consent without a formal meeting
- Preparing for an M&A transaction — corporate records must be clean (all decisions documented)
- Annual corporate housekeeping — confirming officers, approving financial statements

## Board Minutes Framework

```
WHAT REQUIRES BOARD/MANAGER APPROVAL (and therefore minutes or a consent):

  By meeting resolution or written consent:
    □ Equity grants (profits interests, unit grants, stock options)
    □ Material contracts (typically >$50K annual value or significant liability)
    □ Officer appointments and removals
    □ Major capital expenditures (above the threshold in the Operating Agreement)
    □ Real property transactions (leases; purchases; dispositions)
    □ Annual budget approval
    □ Debt financing (lines of credit; term loans; promissory notes)
    □ M&A transactions (LOI; definitive agreement; closing)
    □ New equity investor admission
    □ Distributions to members
    □ Related party transactions (manager compensation; loans to/from related parties)
    □ Any actions specifically requiring approval under the Operating Agreement
    
  Annual housekeeping (once per year):
    □ Ratification of all prior actions taken during the year
    □ Confirmation of officers and managers
    □ Approval of prior year financial statements
    □ Arizona Annual Report authorization (and any other state filings)

MEETING MINUTES STRUCTURE:
  
  For an LLC managed by a manager:
    Header: Entity name; meeting type (manager meeting; member meeting; annual meeting; special meeting);
      date; time; location (or "held via teleconference/videoconference")
    Attendees: Who was present (managers; members as observers; others by invitation)
    Quorum: Confirm that a quorum was present to conduct business (per Operating Agreement)
    Call to order: Meeting called to order by [name]
    Approval of prior minutes: Confirm that prior minutes were reviewed and approved (if applicable)
    Business: Document each agenda item and the decision made
      For each agenda item: Describe the matter presented; who presented it; the resolution adopted
      Resolution format: "RESOLVED, that the [Company] hereby [action taken]."
    Adjournment: Meeting adjourned; time
    Signature: Minutes signed by the [manager/secretary] and filed with corporate records
    
WRITTEN CONSENT STRUCTURE:
  Use when: Action needs to be documented but a formal meeting is not practical
  Form: Written consent signed by all managers (or the requisite majority per the Operating Agreement)
  Contents:
    Entity name; date; recitals explaining the matter; the resolution; signatures
  Standard opening:
    "The undersigned, constituting all of the managers of [Company Name], a [State] limited liability 
    company, hereby consent to and adopt the following resolutions without a meeting, pursuant to 
    [Operating Agreement Section X] and applicable state law:"
  Resolution format:
    "RESOLVED, that the Board of Managers of [Company] hereby authorizes and approves [specific action]; and
    FURTHER RESOLVED, that [any additional implementing actions]."
    
FILING AND RECORD-KEEPING:
  Minutes and consents must be signed AND filed within 30 days of the meeting or action
  File in: SharePoint/Legal/<Company>/CorporateRecords/Minutes/[Year]/[YYYY-MM-DD]_Minutes.pdf
    or: [YYYY-MM-DD]_WrittenConsent_[Topic].pdf
  The corporate records file must be complete before any M&A transaction — buyers review all board minutes
    and consents during diligence; missing records create legal uncertainty and deal friction
  Annual review: At year-end, confirm all decisions made during the year have a corresponding minute or consent
```

## Output Format

The output is a complete, signature-ready Minutes or Written Consent document.

```markdown
# Written Consent of the Board of Managers
## [Company Name], a [State] Limited Liability Company

**Date:** [Date]

The undersigned, constituting all of the managers of [Company Name] (the "Company"), hereby consent to and adopt the following resolutions without a formal meeting of the managers, pursuant to Section [X.X] of the Company's Operating Agreement dated [date] and [State] LLC Act Section [X]:

---

**RECITALS**

The Board of Managers has reviewed and considered [brief description of the matter — 2-4 sentences of context].

---

**RESOLUTIONS**

**RESOLVED,** that the Board of Managers of the Company hereby authorizes and approves [specific action, fully described]; and

**FURTHER RESOLVED,** that [name/title] is authorized and directed on behalf of the Company to execute and deliver any and all agreements, instruments, and documents, and to take all such other actions, as [he/she/they] may deem necessary or appropriate to effectuate the foregoing resolutions; and

**FURTHER RESOLVED,** that any and all actions taken by [title] prior to the date hereof in connection with the foregoing are hereby ratified, approved, and confirmed.

---

IN WITNESS WHEREOF, the undersigned have executed this Written Consent effective as of the date first written above.

**[Company Name], LLC**

By: ___________________________
    [Name], Manager

By: ___________________________
    [Name], Manager
```

## Output Contract
- Minutes are a legal document, not meeting notes — the purpose of minutes is to create a legal record that the company's decision-making process followed its governance procedures; minutes that say "everyone talked about the budget and decided to approve it" are legally weak compared to minutes that say "RESOLVED, that the Board of Managers hereby approves the 2027 Operating Budget as presented, totaling $[X]M in revenue and $[X]M in expenses"; Dr. Lewis drafts minutes with formal resolution language for every material decision — this is what corporate records are supposed to look like and what due diligence reviewers expect to find
- The corporate records clean-up before M&A is non-negotiable — every material decision made since the company was formed should be documented in minutes or consents; during M&A due diligence, the buyer's counsel will review all corporate records; missing minutes for equity grants create ownership uncertainty; missing minutes for debt financing create lien questions; missing minutes for officer elections create authority questions; Dr. Lewis prepares the corporate records for M&A review at least 90 days before the expected LOI and identifies any gaps that need retroactive documentation; retroactive minutes can be drafted (with the appropriate date of the decision — not the date drafted)
- Written consents are equivalent to meeting minutes — the Operating Agreement typically permits actions to be taken by written consent of the managers without a formal meeting; written consents are equally valid as meeting minutes; for routine decisions (officer appointments; contract approvals; equity grants), written consents are more efficient than scheduling a formal meeting; Dr. Lewis uses written consents for most routine governance actions and reserves formal meeting minutes for the annual housekeeping meeting and significant strategic decisions where a meeting is appropriate
- HITL required: Dr. Lewis drafts; the manager or authorized officer reviews and signs (Dr. Lewis does not sign minutes as the manager — the company's manager signs); Matt Mathison must sign all consents and minutes for MBL Partners itself and for any decision requiring Matt Mathison's approval (equity issuances; distributions; M&A actions); Dr. Lewis does not file minutes until they are signed by the appropriate manager(s); unsigned draft minutes are not a corporate record

## System Dependencies
- **Reads from:** Meeting notes or the decision summary (what was decided and by whom?); Operating Agreement (to confirm what requires manager approval and who the managers are; quorum requirements; unanimous consent provisions); prior minutes (to confirm the approval of prior minutes is addressed); equity grant documentation (if granting equity — legal-equity-cap-table-manager); material contract details (if approving a contract); fpa-annual-budget-builder (if approving the annual budget)
- **Writes to:** Meeting minutes or written consent (SharePoint/Legal/<Company>/CorporateRecords/Minutes/[YYYY-MM-DD]_[Topic].pdf — signed copy only); corporate records index (summary of all actions taken by year); annual records review log (confirming all decisions during the year are documented)
- **HITL Required:** Dr. Lewis drafts; company manager(s) sign (not Dr. Lewis); Matt Mathison signs all MBL Partners minutes and any portfolio company decision requiring his approval; signed copies filed in SharePoint within 30 days; Dr. Lewis does not file unsigned drafts as corporate records; Dr. Lewis flags to Matt Mathison any decision made without a corresponding written record so it can be documented retroactively

## Test Cases
1. **Golden path:** Allevio's manager (Dr. Lewis as MBL's representative) has approved the engagement of Marshall Medical Billing as the RCM vendor at $4.2K/month — this is above the $50K annual threshold requiring manager approval → Dr. Lewis drafts a written consent: RESOLVED that Allevio MSO LLC hereby approves the engagement of Marshall Medical Billing Inc. as the Company's revenue cycle management provider pursuant to the Revenue Cycle Management Agreement dated [Date] at a fee of $4,200 per month; FURTHER RESOLVED that the CEO is authorized to execute the Agreement on behalf of the Company; recitals explaining the business rationale included; signed by Dr. Lewis as Manager; filed in SharePoint within 7 days; added to the annual corporate records index
2. **Edge case:** An annual records review for HIVE reveals that a $325K equipment loan was taken in March 2026 but there is no corresponding board consent in the corporate records → Dr. Lewis: "The HIVE corporate records are missing a manager consent for the March 2026 equipment loan. The loan is valid — it's been documented with the lender and payments are being made — but the internal governance record is incomplete. I'll draft a retroactive consent dated March [X], 2026 (the date the decision was actually made) that documents the manager's authorization of the loan. Retroactive minutes must be dated as of when the decision was actually made (not today), and they should state that the consent is being prepared to memorialize the action previously taken. Matt Mathison signs as the HIVE manager; filed in the HIVE corporate records." Retroactive consent drafted; signed; filed; corporate records now complete
3. **Adversarial:** During an Allevio M&A due diligence, the buyer's counsel flags that there is no board consent for the 3% profits interest granted to the COO in 2025 → Dr. Lewis responds: "The profits interest grant was properly authorized by the manager's oral approval at the time; the Profits Interest Award Agreement was executed and the cap table was updated; the grant is legally valid. However, the corporate records lack the corresponding written consent. We will prepare a retroactive written consent documenting the manager's authorization of the 2025 COO profits interest grant. The consent will be dated as of the actual grant date. I'll have it drafted, signed, and provided to buyer's counsel within 48 hours. The grant itself is valid; this is a housekeeping correction to the corporate records." Retroactive consent drafted; signed by Matt Mathison (manager); provided to buyer's counsel; due diligence item closed

## Audit Log
All minutes and consents retained permanently in corporate records (organized by entity and date). Annual records review confirmation retained. M&A due diligence corporate records production retained. Retroactive documentation records retained with notation of the date drafted and the date of the underlying decision. Unsigned draft minutes are NOT retained as corporate records — only signed final versions.

## Deprecation
Retire when each portfolio company has corporate counsel on retainer who drafts and maintains corporate records — with Dr. Lewis reviewing all minutes and consents for material decisions and Matt Mathison signing all resolutions requiring his approval.
