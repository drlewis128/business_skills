---
name: portops-lp-relationship-manager
description: "LP relationship manager, LP contact profiles, LP communication frequency, LP satisfaction signals, LP re-investment interest, LP inquiry log, LP relationship health, limited partner outreach tracker, LP touchpoint tracker, LP pre-meeting prep, LP call brief, LP follow-up tracker, LP decision maker profile, LP next fund interest, LP relationship cadence, Matt Mathison LP relationship, LP communication preferences, LP response time tracking, LP meeting notes, LP relationship dashboard"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<LP name | all | pre-call-brief | re-investment-signals | inquiry-log>"
---

# LP Relationship Manager

Maintains LP relationship profiles, tracks communication cadence and satisfaction signals, logs inbound LP inquiries, and generates pre-call briefing sheets for Matt Mathison before any LP interaction. Matt Mathison owns all LP relationships; Dr. Lewis manages logistics, scheduling, and intelligence gathering only. Each LP profile is fully isolated — no cross-LP data views.

## When to Use
- Preparing Matt for an upcoming LP call or meeting (pre-call brief)
- Logging a new inbound LP inquiry and routing it to Matt for response
- Tracking which LPs have signaled interest in re-investment or next-fund participation
- Auditing communication frequency to ensure no LP has gone silent beyond the expected cadence

## LP Relationship Manager Framework

```
LP RELATIONSHIP MANAGER — HIVE PARTNERS
=========================================

TIER CLASSIFICATION
-------------------
ALL LP RELATIONSHIP DATA = TIER 1 RESTRICTED
- Each LP profile is isolated — no cross-LP comparison or aggregation shared with any LP
- Re-investment signals and satisfaction data are internal strategy intel only
- Matt Mathison owns all LP relationships; Dr. Lewis has read/write access for logistics support

LP PROFILE (PER LP — ISOLATED)
---------------------------------
LP LEGAL NAME            | [Full legal entity name]
FUND COMMITMENT          | $[Amount] (reference only — full capital detail in portops-lp-capital-tracker)
PRIMARY DECISION MAKER   | [Name, Title, Email, Phone]
SECONDARY CONTACT        | [Name, Title, Email, Phone]
LP COUNSEL               | [Name / Firm — for legal communications]
COMM PREFERENCE          | [Email / Call / In-person / Portal] | [Frequency preference]
RELATIONSHIP OWNER       | Matt Mathison (ALL LPs)
LOGISTICS SUPPORT        | Dr. John Lewis

RELATIONSHIP HISTORY
  FIRST INVESTMENT DATE  | [Date]
  TOTAL INTERACTIONS YTD | [Count]
  LAST INTERACTION       | [Date] — [Type: Call / Meeting / Email / Letter]
  NEXT SCHEDULED         | [Date] — [Type]
  AVERAGE RESPONSE TIME  | [X days — how quickly LP typically responds to outreach]
  ENGAGEMENT LEVEL       | HIGH / MEDIUM / LOW (based on response rate, question volume, meeting requests)

SATISFACTION SIGNALS
  SIGNAL TYPE            | POSITIVE / NEUTRAL / NEGATIVE
  INDICATORS:
    Rapid email responses          → POSITIVE engagement
    Unsolicited check-in calls     → POSITIVE engagement
    Questions about next fund      → POSITIVE + RE-INVESTMENT signal
    Delayed responses (>7 days)    → WATCH flag
    Requests for additional data   → NEUTRAL (may signal concern or active due diligence)
    Legal inquiry / counsel review → ESCALATE to Matt immediately
    Redemption/transfer inquiry    → ESCALATE to Matt immediately

RE-INVESTMENT INTEREST TRACKER
--------------------------------
LP NAME       | SIGNAL TYPE                  | DATE       | CONTEXT              | STATUS
[LP Name]     | Next fund inquiry            | [Date]     | [Conversation notes] | ACTIVE INTEREST
[LP Name]     | Follow-on co-invest ask      | [Date]     | [Conversation notes] | EVALUATING
[LP Name]     | No signal yet                | —          | —                    | NO SIGNAL
[LP Name]     | Declined next fund interest  | [Date]     | [Reason if known]    | NOT PURSUING

INBOUND INQUIRY LOG
--------------------
DATE        | LP NAME | CONTACT     | INQUIRY TYPE              | ROUTED TO | RESPONSE DUE | RESOLVED
[Date]      | [Name]  | [Contact]   | Performance question      | Matt      | [Date]       | Yes/No
[Date]      | [Name]  | [Contact]   | Capital call clarification| Dr. Lewis | [Date]       | Yes/No
[Date]      | [Name]  | [Contact]   | Legal/transfer inquiry    | Matt      | URGENT       | No

INQUIRY ROUTING RULES
-----------------------
PERFORMANCE QUESTIONS     → Matt Mathison (primary) + Dr. Lewis (data support)
CAPITAL ACCOUNT QUESTIONS → Dr. Lewis (initial response) → Matt for anything beyond standard ledger
LEGAL / TRANSFER INQUIRIES→ Matt Mathison + outside counsel — ESCALATE SAME DAY
RE-INVESTMENT INTEREST    → Matt Mathison — log signal, do not respond until Matt directs
COMPLAINTS / CONCERNS     → Matt Mathison — ESCALATE SAME DAY; log immediately

PRE-CALL BRIEF STRUCTURE
--------------------------
LP NAME                  | [Name]
CALL DATE/TIME           | [DateTime]
PARTICIPANTS (THEIR SIDE)| [Contact names]
PARTICIPANTS (OUR SIDE)  | Matt Mathison [+ Dr. Lewis if applicable]
PURPOSE                  | [Quarterly check-in / Q&A / Re-investment discussion / Issue resolution]

RELATIONSHIP SNAPSHOT
  Last interaction: [Date] — [Outcome]
  Current satisfaction signal: [POSITIVE / WATCH / ESCALATED]
  Open items from prior calls: [List]
  Capital position summary: [MOIC / Distribution status — from portops-lp-capital-tracker]

TALKING POINTS (FOR MATT)
  1. [Fund/portfolio update — top 1-2 items]
  2. [LP-specific capital or distribution context]
  3. [Any open inquiry resolution]
  4. [Re-investment/next fund — if signal exists]

WATCH ITEMS (FOR MATT)
  - [Any concern, delayed response, or sensitivity to handle carefully]

SUGGESTED CLOSE
  - [What outcome Matt should aim for: confirm satisfaction / surface re-investment intent / resolve open item]
```

## Output Format

```markdown
## LP Relationship Brief — [LP Legal Name]
**CLASSIFICATION: TIER 1 RESTRICTED — [LP NAME] ONLY**
**Prepared for:** Matt Mathison  **Prepared by:** Dr. John Lewis  **Date:** [Date]

### BLUF
[1–2 sentences: relationship health and purpose of this interaction. Example: "Meridian Capital is an engaged LP with POSITIVE satisfaction signals — this call is their quarterly check-in; no open concerns, and they have signaled interest in the next fund."]

### LP Profile Snapshot
| Item | Detail |
|------|--------|
| Primary Contact | [Name, Title] |
| Last Interaction | [Date — Type] |
| Engagement Level | HIGH / MEDIUM / LOW |
| Re-investment Signal | YES / NO / EVALUATING |

### Open Items
- [Open item 1 — from prior call/letter]
- [Open item 2]

### Talking Points for Matt
1. [Point 1]
2. [Point 2]
3. [Point 3]

### Watch Items
- [Sensitivity or concern to handle carefully]

### Suggested Close
[One sentence: what Matt should walk away with from this interaction]

---
*Source: LP relationship log, portops-lp-capital-tracker, portops-lp-communications-tracker*
```

## Output Contract
- Pre-call briefs are delivered to Matt Mathison at least 24 hours before the scheduled LP interaction — same-day briefs are flagged as LATE and Dr. Lewis documents why the standard lead time was not met.
- Re-investment signals are never acted upon, discussed with the LP, or shared outside MBL without Matt's explicit direction — these are internal strategy signals only, and premature signals to an LP about next-fund planning can create regulatory and expectation-management issues.
- LP profile isolation is absolute — a request for "all LP relationship statuses" produces a fund-level summary that contains no LP-identifying data beyond what Matt is reviewing for internal planning purposes; no output from this skill ever combines two LPs' satisfaction data in a form that could be shared externally.

## System Dependencies
**Reads from:** Covercy (LP contact data, capital position for brief context), Microsoft Outlook (communication history, response time analysis), Microsoft Teams/Calendar (meeting history), portops-lp-capital-tracker (capital summary for brief), portops-lp-communications-tracker (letter history)
**Writes to:** LP Relationship Log (SharePoint), Monday.com (follow-up tasks from calls), Pre-meeting Prep system (Matt's briefing package), Inbound Inquiry Log (SharePoint)
**HITL Required:** Matt Mathison directs all LP relationship decisions; Dr. Lewis handles logistics and intelligence preparation only — Dr. Lewis does not respond to LP inquiries on relationship or performance matters without Matt's direction

## Test Cases
- **Golden path:** Matt has a quarterly call with "Summit Ridge Partners" in 48 hours — agent pulls relationship history, capital snapshot, last letter content, open items, and re-investment signals; produces a clean brief delivered 36 hours before the call.
- **Edge case:** LP sends an inbound email asking about transferring their LP interest to a new entity — agent logs the inquiry, immediately escalates to Matt and flags outside counsel involvement required, and does not respond to the LP pending Matt's direction.
- **Adversarial:** Request to produce a "comparative LP satisfaction dashboard" showing all LPs' engagement levels in a single view for sharing with an external advisor — agent refuses, explains the Tier 1 isolation policy, and offers instead a fund-health summary with no LP-identifying data.

## Audit Log

All LP interaction logs, inbound inquiry records, and pre-call briefs are stored in SharePoint /HIVE/LP-Relationships/Audit/ with append-only access. Logs record: LP identifier, interaction date, interaction type, participants, outcome notes, open items created, and who prepared the record. Re-investment signal logs include the signal date, source quote or context, and Matt Mathison's acknowledged receipt of the signal. Audit records are reviewed semi-annually by Dr. Lewis and used as input to annual LP strategy planning with Matt.

## Deprecation

This skill remains active through fund wind-down. Final LP relationship records should be archived permanently as they document the fund's history with each LP — critical for reference if LPs participate in a successor fund. Deprecate only after wind-down is complete and all LP obligations (capital return, K-1s, final reporting) are satisfied. For a successor fund, clone this skill and initialize fresh LP profiles — do not carry relationship history forward unless Matt explicitly directs it.
