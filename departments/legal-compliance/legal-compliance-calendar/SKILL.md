---
name: legal-compliance-calendar
description: "Maintain the legal and regulatory compliance calendar for all MBL portfolio companies. Use when the user says 'compliance calendar', 'legal calendar', 'regulatory calendar', 'compliance deadlines', 'when is the filing due', 'what is due this month', 'legal deadlines', 'regulatory deadlines', 'compliance schedule', 'legal schedule', 'annual compliance', 'quarterly compliance', 'what do we need to file', 'legal obligations this month', 'compliance tracker', 'deadlines this quarter', or 'legal filing schedule'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name|all>] [--period <monthly|quarterly|annual>] [--action <review|generate|alert>]"
---

# Legal Compliance Calendar

Maintain the master legal and regulatory compliance calendar for all MBL portfolio companies — aggregating every recurring legal obligation (corporate filings, regulatory reports, contract renewals, HIPAA reviews, insurance renewals, and more) into a single rolling calendar with 90-day, 60-day, and 30-day advance alerts. Compliance is a rhythm, not a reaction: the companies that stay out of trouble are the ones whose legal obligations appear on a calendar with enough lead time to prepare, not the ones who discover they missed a DOGM production report while it's already past due. Dr. Lewis maintains this calendar as the legal operations backbone of the portfolio.

## When to Use
- At the start of each month — pull this month's and next month's legal deadlines
- At the start of each quarter — review the quarter's compliance obligations
- At the beginning of each year — build the full-year compliance calendar
- When a new obligation is created (new contract, new entity, new regulatory requirement) — add to calendar
- Matt Mathison asks "what are our compliance obligations this quarter?"

## Compliance Calendar Framework

```
RECURRING LEGAL OBLIGATIONS BY FREQUENCY:

  MONTHLY:
    HIVE PARTNERS:
      □ DOGM production report — due last day of following month
        (January production → due February 28)
      □ DOGM UIC injection report (if disposal well) — monthly
      □ Royalty payments per lease terms — typically by end of following month
    ALL ENTITIES:
      □ Contract tracker review — what renewals are coming up in 90 days?
      □ Legal invoice review and approval (Bill.com workflow)
      
  QUARTERLY:
    ALL ENTITIES:
      □ Litigation reserve review (fpa-financial-risk-modeler — confirm reserve is adequate)
      □ Insurance coverage spot check (any operations changes that affect coverage?)
      □ NDA tracker review (any NDAs expiring that are still active?)
    ALLEVIO:
      □ HIPAA training record check — any new employees who need training?
      □ BAA tracker review — any new vendors who need a BAA?
      □ Denial rate review — if >5%, flag to CEO and Marshall Medical Billing
    COLUMN6:
      □ CCPA compliance spot check (if applicable)
      □ IAB compliance check (ads.txt; sellers.json — current?)
      □ Advertiser contract renewal reviews (agency MSA renewals)
    
  SEMI-ANNUAL:
    ALL ENTITIES:
      □ Insurance coverage review (mid-year check for operations changes)
      □ Contract tracker review — 6-month look ahead on renewals
      □ Non-compete review — any active non-competes at or approaching term end?
    ALLEVIO:
      □ HIPAA Security Rule — mid-year review of risk assessment action items
      □ OIG exclusion check for all clinical staff (semi-annual recommended; annual minimum)
      
  ANNUAL:
    CORPORATE:
      □ Arizona Annual Report (Allevio) — due April 30
      □ Utah Annual Renewal (HIVE) — due by anniversary month last day
      □ Delaware Annual Report (if applicable) — due March 1 (Corp) or June 1 (LLC)
      □ All other state filings for foreign-qualified entities
      □ Registered agent confirmation — all states, all entities
      □ Corporate records review — are minutes current? Consents filed?
      □ Entity good standing certificates — obtain fresh certs (for any pending transactions)
    INSURANCE:
      □ D&O renewal (typically annual — calendar 60 days before expiration)
      □ GL renewal (annual)
      □ EPLI renewal (annual)
      □ Cyber renewal (annual)
      □ Professional liability renewal (Allevio; Column6 media)
      □ Energy package renewal (HIVE)
    REGULATORY:
      □ HIPAA annual risk assessment — no hard deadline; Dr. Lewis targets Q1 completion
      □ HIPAA employee training — at hire and annually thereafter
      □ HIVE air emissions inventory (Utah DAQ) — annual
      □ HIVE bond adequacy review — confirm DOGM bond amounts are current
    EMPLOYMENT:
      □ Wage and hour compliance review — confirm all non-exempt employees are properly classified
      □ Handbook review — any legal changes requiring handbook update? (Arizona minimum wage; new laws)
      □ I-9 audit — confirm I-9 records are complete and current for all employees
    CONTRACTS:
      □ Annual contract tracker review — full inventory; identify any stale or overlooked contracts
      □ Material contract performance review — how are key vendors performing?
      □ Software license audit — which licenses are active? Which are under-utilized?
    IP:
      □ Trademark renewal review — any marks approaching 10-year renewal? 5-6 year declaration?
      □ IP assignment audit — any new employees or contractors whose IP assignments need confirmation?
      
  EVENT-TRIGGERED (add immediately when triggered):
    □ M&A transaction: Add all deal-related deadlines (exclusivity; diligence; signing; closing; post-close)
    □ New contract executed: Add renewal date and auto-renewal notice deadlines
    □ New employee with non-compete: Add non-compete term-end date
    □ New vendor with insurance requirement: Add certificate renewal date
    □ Regulatory notice received: Add response deadline (typically within 30 days)
    □ Litigation commenced: Add all procedural deadlines (answer due; discovery cutoffs; trial date)
    □ Data breach: Add notification deadline (AZ: expedient; HIPAA: 60 days; CCPA: 72 hours)
```

## Output Format

```markdown
# Legal Compliance Calendar — [Month YYYY]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Covers:** [Current month + 60-day look ahead]

---

## This Month ([Month YYYY])

| Due Date | Entity | Obligation | Owner | Status |
|---------|--------|-----------|-------|--------|
| [Date] | HIVE | DOGM [Month-1] production report | Dr. Lewis | 🟡 In progress |
| [Date] | HIVE | Royalty payment — Lease A | Dr. Lewis | ✅ Filed [Date] |
| [Date] | Allevio | GL insurance renewal (auto-renews — confirm) | Dr. Lewis | 🟡 Confirm |

---

## Next 60 Days

| Due Date | Entity | Obligation | Lead Time | Action |
|---------|--------|-----------|---------|--------|
| [Date] | Allevio | Arizona Annual Report | 45 days | Schedule filing |
| [Date] | All | Q1 litigation reserve review | 30 days | Add to agenda |
| [Date] | Column6 | Agency MSA renewal decision | 45 days | CEO to decide renew/negotiate |

---

## Upcoming Annual Obligations — This Quarter

| Entity | Obligation | Target Date | Status |
|--------|-----------|------------|--------|
| Allevio | HIPAA annual training (3 new hires) | [Date] | Not started |
| HIVE | Air emissions inventory (DAQ) | [Date] | In progress |

---

## Overdue / At Risk

| Obligation | Entity | Was Due | Status | Immediate Action |
|-----------|--------|--------|--------|----------------|
| [Any overdue items] | | | | |

**No overdue items** / **[N] overdue items — see above**
```

## Output Contract
- The calendar is only as current as the entries — the compliance calendar has zero value if it contains only the obligations that were loaded at the beginning of the year; every new contract, every new employee with a non-compete, every new regulatory notice creates new calendar entries; Dr. Lewis adds these immediately — not at the next scheduled review; the discipline that makes the calendar valuable is: when a new obligation is created, it is on the calendar that day; the compliance calendar is a living document, not a static spreadsheet
- 90-60-30 alert cadence — for every deadline, Dr. Lewis sets three calendar reminders: 90 days (first awareness; start planning); 60 days (if action is needed, it should begin now); 30 days (final preparation; if this isn't in motion, escalate); the 90-day alert gives enough time to handle every compliance obligation without rushing; the 30-day alert is a fire alarm — if something is not in motion at 30 days, there is a problem; this three-alert cadence eliminates surprises
- Monthly pull of the calendar is mandatory — at the first business day of each month, Dr. Lewis reviews the calendar for the current month and the next 60 days; this review generates the work plan for the month; the review takes 20 minutes; the work it prevents is measured in emergency legal fees and regulatory penalties; Dr. Lewis treats this as a non-negotiable monthly routine, not something to do when there's time
- HITL required: Dr. Lewis maintains and monitors; CEO receives the monthly compliance summary for their company's obligations (Dr. Lewis presents the calendar as part of the BD7 management report); Matt Mathison receives the portfolio-wide compliance calendar quarterly; any overdue obligation is escalated to the CEO and Dr. Lewis same day as discovery; Dr. Lewis does not submit regulatory filings without CEO confirmation of the underlying data (e.g., DOGM production report requires HIVE CEO to confirm the production data is accurate)

## System Dependencies
- **Reads from:** All legal and compliance skills (each generates calendar entries when new obligations are created); contract tracker (renewal dates, auto-renewal notice deadlines); insurance renewal dates; entity annual filing calendar; DOGM filing schedule; HIPAA training records; IP maintenance calendar; employment law tracker (classification review dates; handbook review dates); litigation calendar (procedural deadlines); fpa-planning-calendar-manager (for alignment with financial close calendar)
- **Writes to:** Compliance calendar (SharePoint/Legal/MBL/ComplianceCalendar.xlsx — master calendar, all entities); monthly compliance summary (sent to each CEO by BD5); quarterly portfolio compliance summary (to Matt Mathison); calendar alerts (shared calendar system for CEO and Dr. Lewis); any overdue obligation escalation memo
- **HITL Required:** Dr. Lewis maintains; CEOs receive monthly summaries and confirm data accuracy for regulatory filings; Matt Mathison receives quarterly portfolio summary; Dr. Lewis escalates all overdue items immediately (does not wait for the next scheduled review); Dr. Lewis does not submit any regulatory filing without CEO confirmation of the underlying data that supports the filing

## Test Cases
1. **Golden path:** January 2027 — first business day of the year → Dr. Lewis opens the compliance calendar; confirms annual reload: Arizona Annual Report (Allevio) — due April 30; sets 90-day reminder January 30; Utah Renewal (HIVE) — due by March 31; sets 90-day reminder January 1 (already at 90 days — schedule February 1 filing); HIVE January production report — due February 28; set calendar to prepare and file by February 20; HIPAA annual training for 3 new Allevio employees added November 2026 — not yet trained; schedule training for January 31; insurance renewals: D&O renews March 15 — set 60-day reminder January 14; contract tracker: one Column6 agency MSA auto-renews March 1 with 30-day notice required (notice must be by February 1 if terminating); decision needed by January 15; calendar is current; January work plan generated in 20 minutes
2. **Edge case:** On January 15, Allevio signs a new employer group contract with a 90-day notice-to-terminate auto-renewal provision → Dr. Lewis adds immediately: Contract ID: ALV-GroupC-2027-001; auto-renews: January 15, 2028; notice deadline: October 15, 2027 (90 days before renewal); 90-day alert: July 15, 2027; 60-day alert: August 15, 2027; 30-day alert: September 15, 2027; renewal decision due: August 15, 2027; calendar updated same day; Allevio CEO receives confirmation of the entry with the alert dates
3. **Adversarial:** Dr. Lewis realizes in early April that the Arizona Annual Report for Allevio was due April 30 and is still unfiled — he did not receive the 90-day or 60-day reminders because the email alert was accidentally deleted → Dr. Lewis acts: "The Arizona Annual Report for Allevio is due April 30 — 25 days away. This is not a crisis but requires immediate action. Filing now: (1) Log in to the Arizona Corporation Commission eFiling portal; (2) Confirm Allevio's current registered agent, principal address, and members/managers; (3) File the Annual Report and pay the $45 fee; (4) Retain the confirmation receipt. Done — I've filed it today, April 5. Going forward, I'm adding a secondary reminder in a different calendar system and setting a paper calendar reminder in January each year for the April 30 deadline." Filed April 5; no late penalty (filed on time); process improved

## Audit Log
All compliance calendar entries retained by year (compliance calendar snapshot at year-end). Monthly compliance summaries retained (what was due; what was completed; what was overdue). Matt Mathison quarterly summaries retained. All filing confirmation receipts retained (cross-referenced to calendar entries). Any overdue item escalations retained with resolution. Calendar version history retained (when entries were added, by whom).

## Deprecation
Retire when MBL Partners has a dedicated legal operations or compliance function that maintains the master calendar — with Dr. Lewis reviewing the calendar quarterly and Matt Mathison receiving an annual compliance certification for the portfolio.
