---
name: portops-lp-communications-tracker
description: "track LP communications, quarterly letter schedule, LP letter delivery dates, annual LP meeting planning, LP contact database, LP communication archive, side letter obligations, LP correspondence log, LP distribution notice, LP meeting recordings, LP communication deadlines, LP mailing list, fund communication calendar, LP update schedule, limited partner outreach tracker, LP reporting cadence, LP letter drafting queue, LP communication compliance, Matt Mathison LP sign-off, Jimmy Lindsley CC tracking"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<LP name | all | Q1-Q4 | annual-meeting | side-letter-audit>"
---

# LP Communications Tracker

Manages the full lifecycle of limited partner communications for HIVE Partners — from quarterly letter scheduling through annual meeting execution and LP contact database maintenance. Every outbound LP communication requires Matt Mathison sign-off before distribution; Jimmy Lindsley is CC'd on all distributions.

## When to Use
- Drafting or scheduling quarterly LP letters (Q1–Q4 delivery windows)
- Planning and tracking the annual LP meeting agenda, attendees, and follow-ups
- Auditing side letter obligations to ensure LP-specific communication requirements are met
- Maintaining the LP contact database and communication archive

## LP Communications Framework

```
LP COMMUNICATIONS TRACKER — HIVE PARTNERS
==========================================

TIER CLASSIFICATION
-------------------
ALL LP DATA = TIER 1 RESTRICTED
- Each LP sees only their own communications
- No cross-LP data views under any circumstance
- Archive access limited to: Matt Mathison, Dr. John Lewis

QUARTERLY LETTER SCHEDULE
--------------------------
Q1 LETTER  | Report Period: Jan–Mar | Target Delivery: 45 days post-quarter-end (May 15)
Q2 LETTER  | Report Period: Apr–Jun | Target Delivery: 45 days post-quarter-end (Aug 14)
Q3 LETTER  | Report Period: Jul–Sep | Target Delivery: 45 days post-quarter-end (Nov 14)
Q4 LETTER  | Report Period: Oct–Dec | Target Delivery: 75 days post-year-end (Mar 15, coincides with K-1)

LETTER PRODUCTION WORKFLOW
---------------------------
STEP 1: DRAFT     | Dr. Lewis assembles financial data from QuickBooks + Covercy
STEP 2: REVIEW    | Dr. Lewis internal review (accuracy, tone, THRIVE filter)
STEP 3: SIGN-OFF  | Matt Mathison final review and approval (MANDATORY — no bypass)
STEP 4: DISTRIBUTE| Send to LP primary + secondary contacts; CC Jimmy Lindsley
STEP 5: ARCHIVE   | Log in LP communication archive with timestamp + delivery confirmation

ANNUAL LP MEETING
------------------
PLANNING TIMELINE
  T-90 days: Set date, secure venue or virtual platform
  T-60 days: Draft agenda; Matt approves agenda before distribution
  T-45 days: Send formal notice to all LPs per LPA requirements
  T-30 days: Confirm attendance; prepare presentation materials
  T-14 days: Distribute pre-read materials (fund performance summary, portfolio updates)
  T-0:       Execute meeting; record session
  T+7 days:  Distribute meeting summary + recording to all LPs; Jimmy Lindsley CC'd
  T+14 days: Log all LP follow-up questions and assign response owners

SIDE LETTER OBLIGATION TRACKER
--------------------------------
FOR EACH LP WITH SIDE LETTER:
  LP NAME         | [Name]
  SIDE LETTER DATE| [Execution date]
  OBLIGATIONS     | [Specific communication requirements — frequency, format, additional disclosures]
  NEXT DUE        | [Date of next side-letter-required communication]
  STATUS          | CURRENT / PAST DUE / DUE THIS MONTH

LP CONTACT DATABASE (PER LP — ISOLATED)
-----------------------------------------
LP NAME           | [Legal entity name]
PRIMARY CONTACT   | [Name, title, email, phone]
SECONDARY CONTACT | [Name, title, email, phone]
COMM PREFERENCE   | [Email / Portal / Hard copy]
SPECIAL NOTES     | [Side letter? Reporting format preferences?]
LAST COMMUNICATION| [Date + type]
NEXT SCHEDULED    | [Date + type]

COMMUNICATION ARCHIVE LOG
--------------------------
DATE       | LP NAME | TYPE             | SENT BY | MATT APPROVED | JIMMY CC'd | DELIVERY CONFIRMED
[date]     | [name]  | Q1 Letter        | [user]  | YES           | YES        | YES
[date]     | [name]  | Annual Mtg Notice| [user]  | YES           | YES        | YES
[date]     | [name]  | Ad-hoc Update    | [user]  | YES           | YES        | YES
```

## Output Format

```markdown
## LP Communications Status Report
**Generated:** [Date]  **Scope:** [All LPs | Specific LP]  **Classification:** TIER 1 RESTRICTED

### Quarterly Letter Pipeline
| Quarter | Status | Draft Due | Matt Approval | Distribute By | Delivered |
|---------|--------|-----------|---------------|---------------|-----------|
| Q1 [YY] | ...    | ...       | ...           | May 15        | ...       |
| Q2 [YY] | ...    | ...       | ...           | Aug 14        | ...       |
| Q3 [YY] | ...    | ...       | ...           | Nov 14        | ...       |
| Q4 [YY] | ...    | ...       | ...           | Mar 15        | ...       |

### Side Letter Obligations — Current Period
| LP | Obligation | Due Date | Status |
|----|------------|----------|--------|
| [LP] | [Requirement] | [Date] | CURRENT / PAST DUE |

### Annual Meeting Status
**Date Confirmed:** [Date]  **Format:** [In-person / Virtual]
**Notice Sent:** [Yes/No — Date]  **Attendance Confirmed:** [#] of [#] LPs

### Action Items
- [ ] [Action] — Owner: [Name] — Due: [Date]
```

## Output Contract
- Every LP communication entry includes explicit confirmation that Matt Mathison approved before distribution; any entry missing this field is flagged as a compliance gap requiring immediate remediation before the document is considered archived.
- LP data isolation is enforced at the output level — when producing a report for a specific LP, the agent must verify no other LP names, figures, or identifying data appear anywhere in the output, including headers, footers, and metadata.
- Side letter obligations are surfaced proactively — if any side-letter deadline falls within the next 30 days, the output leads with a BLUF alert regardless of what report was requested.

## System Dependencies
**Reads from:** Covercy (HIVE LP records), QuickBooks (financial data for letter content), Microsoft Outlook (communication history), SharePoint (LP document archive)
**Writes to:** LP Communication Archive (SharePoint), Monday.com (deadline tasks), Outlook (distribution)
**HITL Required:** Matt Mathison approval before ANY LP communication is sent; Dr. Lewis reviews before escalating to Matt

## Test Cases
- **Golden path:** Q2 letter drafted, reviewed by Dr. Lewis, approved by Matt, distributed to 8 LPs with Jimmy CC'd, archived with delivery confirmations — all within the Aug 14 window.
- **Edge case:** LP with side letter requires 60-day advance notice of any material portfolio change; agent detects an upcoming portfolio announcement and surfaces the side letter obligation 62 days in advance.
- **Adversarial:** Request to send an LP update without Matt's approval code present in the workflow — agent halts, flags the missing approval, and refuses to mark the communication as sent.

## Audit Log

Every action taken by this skill is logged with: timestamp, LP identifier, action type, operator (who triggered the action), Matt Mathison approval status, and delivery confirmation. Logs are append-only and stored in SharePoint under /HIVE/LP-Communications/Audit/. Audit logs are reviewed quarterly by Dr. Lewis and annually by outside counsel. Any gap in the Matt-approval chain triggers an immediate escalation to Matt Mathison and is noted in the fund's compliance record.

## Deprecation

This skill is version-locked to HIVE Partners fund operations. If MBL launches a second fund, a new fund-specific instance of this skill will be created rather than extending this one — LP communication obligations are fund-specific and must not be commingled. Deprecate this skill only after HIVE Partners has wound down and all LP obligations have been satisfied, with a minimum 7-year archive retention period post-wind-down per standard fund record-keeping requirements.
