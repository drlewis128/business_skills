---
name: cs-landowner-communicator
description: "Manage landowner communications and relationships for HIVE Partners mineral rights leases. Use when the user says 'landowner communication', 'landowner relations', 'mineral rights communication', 'HIVE landowner', 'landowner update', 'royalty communication', 'lease communication', 'communicate with landowners', 'landowner relationship', 'royalty statement', 'production update to landowner', 'landowner portal', 'Covercy communication', 'HIVE relations', 'landowner outreach', 'mineral rights relationship', 'royalty holder communication', 'update the landowners', 'landowner quarterly update', 'landowner check-in', or 'landowner correspondence'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--landowner <name or parcel ID>] [--type <royalty|development|lease|general>] [--action <update|send|respond|report>]"
---

# CS Landowner Communicator

Manage landowner communications and relationships for HIVE Partners mineral rights leases — keeping landowners informed about development activity, royalty payments, and lease status in a way that is clear, respectful, and consistent. Landowners are not customers in the traditional sense; they are rights holders who have leased their mineral rights to HIVE for a defined period; the relationship is built on trust, transparency, and reliability; a landowner who doesn't hear from HIVE for 6 months is a landowner who starts answering calls from competing operators.

## When to Use
- Monthly royalty payment confirmation (send alongside the Covercy statement)
- Quarterly development update (what's happening on or near the landowner's acreage)
- Lease anniversary check-in (proactive relationship maintenance)
- A development event occurs (new well spud; production change; safety or environmental issue)
- A landowner reaches out with a question or concern

## Landowner Communication Framework

```
COMMUNICATION PHILOSOPHY FOR HIVE:
  Landowners range from sophisticated investors to families who inherited mineral rights
    and may have no understanding of oil and gas development — calibrate the language accordingly
  Err toward simplicity — when in doubt, explain terms; a landowner who is confused is
    a landowner who starts asking others for explanations (often competitors)
  Phone first for sensitive matters — a royalty dispute or a production change is a call,
    not an email; email is for documentation and routine updates
  Frequency prevents surprises — a landowner who receives a monthly update never feels
    abandoned; a landowner who hears from HIVE only at lease renewal time is a churn risk

COMMUNICATION CALENDAR:

  MONTHLY — Royalty Statement Accompaniment:
    Covercy automatically generates and sends royalty statements
    Allevio CS rep (or Dr. Lewis) sends a personal email alongside the statement:
    "Your October royalty statement is available in your Covercy account — your royalties
     for October were $[X]. [If increased vs. last month: 'This reflects the new production
     from Well [X] that came online in September.'] As always, I'm here if you have any questions."
    This takes 3 minutes per landowner; it distinguishes HIVE from operators who send statements
    with no human accompaniment
    
  QUARTERLY — Development Update:
    What development activity occurred near the landowner's acreage this quarter?
    Format: 1-page letter or email (based on landowner preference)
    Content:
      □ Activity on or near the landowner's parcel: drilling; completion; production
      □ Royalty trend: up; stable; or down (with explanation)
      □ General Uinta Basin context: production levels; regulatory environment; pricing (brief)
      □ Looking ahead: what HIVE expects in the next quarter on or near the parcel
    Tone: Informative; not promotional; factual about both good and challenging developments
    
  ANNUAL — Lease Anniversary Letter:
    Sent on the anniversary of the lease execution date
    Content:
      □ How long the landowner has been partnered with HIVE
      □ Total royalties paid to date
      □ Total lease bonus paid
      □ What HIVE has done on or near the parcel
      □ Brief forward look: development plans for the next year
    Purpose: Remind the landowner of the value of the relationship; reinforce trust before
      any competing operator can reach them at the lease end discussion

SENSITIVE COMMUNICATION SITUATIONS:

  Royalty Payment Question:
    Response: Same business day (not next day — same day)
    Do not assume the question is hostile — most royalty questions are genuine confusion
    Opening: "I'm glad you reached out — let me pull your account and walk you through the calculation"
    If the question reveals an error: escalate to Dr. Lewis immediately; cs-escalation-manager P2
    
  Production Decline Communication:
    If royalties will decrease significantly (>20%) due to production decline:
    Call the landowner before the statement arrives — do not let the statement be the first communication
    Opening: "I wanted to call you before your October statement arrives because production from
     Well [X] declined this month — your October royalties will be approximately $[X], which is
     lower than September's $[X]. Here's why... [technical explanation in plain English]."
    This call prevents the "my royalties dropped — nobody told me" complaint
    
  Competing Operator Contact:
    If HIVE learns that a competing operator has contacted the landowner about their parcel:
    Dr. Lewis or CEO calls the landowner immediately: "I understand [Operator] may have
     been in touch with you. I'd like to make sure you have the full picture of what HIVE
     has invested in your acreage and what our plans are for the renewal. Can we schedule
     15 minutes this week?"
    Do NOT criticize the competitor — make the case for HIVE on HIVE's merits

COVERCY PORTAL SUPPORT:
  All landowners should be registered on Covercy for electronic royalty access
  If a landowner can't access Covercy: provide phone support; walk them through the setup;
    note the assistance in CRM
  Some older landowners prefer paper statements — accommodate this; do not pressure toward digital
    if the landowner is uncomfortable; mail paper statements with a personal note
```

## Output Format

```markdown
# Landowner Communication Record — [Landowner Name] | HIVE Partners
**Parcel:** [APN] | **County:** [Uinta/Duchesne] | **Lease date:** [Date]
**Communication type:** Monthly royalty / Quarterly update / Development event / Inquiry response
**Date:** [Date] | **Method:** Email / Phone / Letter

---

## Communication Content

[Full text of the email, letter, or call summary]

---

## Landowner Response / Follow-up Required

**Response received:** Yes / No / Pending
**Follow-up required:** Yes — [what; due date] / No
**CRM logged:** Yes
```

## Output Contract
- Same-day response to landowner inquiries — a landowner who sends an email or calls with a question waits the same business day for a response, not 2-3 days; the relationship is built on responsiveness; Dr. Lewis holds the CS team to same-day response for all HIVE landowner inquiries; any inquiry that involves a payment dispute or a legal question is escalated to Dr. Lewis within 1 hour of receipt
- Proactive beats reactive on production changes — a royalty drop that the landowner learns about from the statement before a call from HIVE is a credibility failure; Dr. Lewis requires the CS team to call any landowner whose royalties will decrease by >20% from the prior month before the statement arrives; this takes 5 minutes and prevents a complaint that takes 3 hours to address
- Plain English, not O&G jargon — a landowner who inherited mineral rights from a grandparent may not know what "gross overriding royalty interest" means; Dr. Lewis requires that all landowner-facing communications use plain English; technical terms that must be used should be defined on first use; "the well produced 3,200 barrels of oil this month, which at today's WTI price generates your royalty of $X" is plain English; "your RI on the working interest is generating a WI royalty based on BTU-adjusted production" is not
- HITL required: Dr. Lewis reviews any communication to a landowner who has expressed legal concerns or has engaged an attorney; any communication about a royalty dispute requires Dr. Lewis review before it is sent; competing operator situations are escalated to Dr. Lewis immediately; all HIVE landowner communications for >$50K/year royalty recipients are copied to Dr. Lewis for awareness; CEO is notified of any landowner who has engaged legal counsel or threatened legal action

## System Dependencies
- **Reads from:** Covercy royalty records (monthly royalty amount; year-to-date; trend); HIVE land records (parcel details; APN; county; lease terms; royalty rate); production data (from HIVE's operations team — monthly production by well; any production changes); GoHighLevel CRM (landowner contact preferences; communication history; any open disputes or concerns); cs-health-score-tracker (HIVE landowner health score — drives communication priority)
- **Writes to:** Landowner communication record (GoHighLevel CRM — date; type; content summary; response status); development update letters (SharePoint/HIVE/LandownerComms/[Landowner]/[YYYY-QX]_DevelopmentUpdate.pdf); lease anniversary letter (SharePoint/HIVE/LandownerComms/[Landowner]/[YYYY]_AnniversaryLetter.pdf); cs-health-score-tracker (update communication dimension after each outreach); cs-escalation-manager (if a communication reveals a P1 or P2 issue)
- **HITL Required:** Dr. Lewis reviews communications to landowners with legal concerns or engaged attorneys; royalty dispute communications require Dr. Lewis review before sending; competing operator situations escalated to Dr. Lewis immediately; >$50K/year royalty recipients' communications copied to Dr. Lewis; CEO notified of any legal threat

## Test Cases
1. **Golden path:** Monthly royalty accompaniment email — landowner receives $2,847 royalty in October (vs. $2,710 in September — 5% increase due to new well production from Well 14-H); CS rep sends: "Hi [Name], your October royalty statement is now available in your Covercy account. Your October royalties were $2,847 — slightly up from last month as Well 14-H, which came online in September, continues to ramp up production. Let me know if you have any questions about your statement — I'm always happy to walk you through the details." Landowner responds: "Thank you — I love that I always hear from you when the statement comes. Makes me feel like HIVE actually cares about us." Health score communication dimension: 5/5
2. **Edge case:** November royalties will drop from $2,847 to $1,200 due to Well 14-H going down for scheduled maintenance → CS rep calls the landowner before the statement arrives: "Hi [Name], I'm calling before your November statement arrives because I want to be transparent with you — your November royalties will be significantly lower than October. Well 14-H went down for scheduled maintenance on November 15 and won't be back online until early December. So your November royalties will be approximately $1,200, compared to $2,847 in October. This is temporary — once the well is back online, royalties will return to the October level and we expect December to be back at or above $2,800. I just didn't want you to see the statement without context." Landowner: "I appreciate the heads up — that would have been alarming. Thanks for calling." No complaint; health score maintained
3. **Adversarial:** A landowner calls claiming they were "cheated" because their royalties decreased and they heard that basin-wide production was up this month → Dr. Lewis: "This is a legitimate concern that needs a careful response. Don't argue, don't defend — investigate first. Pull the production data for this landowner's specific wells and confirm the numbers. Basin-wide production up doesn't mean every well is up — individual wells have their own production curves. If the numbers are right, explain them with documentation. If there's a calculation error, fix it immediately and apologize directly. I'm joining this call. Don't respond to the landowner until I'm on the line." Dr. Lewis joins; production data confirms a legitimate decline in the specific wells due to natural production curve; landowner is shown the data; concerns resolved

## Audit Log
All landowner communications retained by landowner name, date, and type. Royalty accompaniment records retained. Development update letters retained. Lease anniversary letters retained. Legal concern escalation records retained. Competing operator situation records retained. Dispute resolution records retained.

## Deprecation
Retire when HIVE has a dedicated landowner relations team — with Dr. Lewis reviewing all communications to landowners with >$50K/year royalties and the CEO joining any communication involving a legal threat or competing operator situation.
