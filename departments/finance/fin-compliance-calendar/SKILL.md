---
name: fin-compliance-calendar
description: "Track financial compliance deadlines, tax filings, and regulatory submissions across MBL entities. Use when the user says 'compliance calendar', 'compliance deadline', 'tax deadline', 'tax filing deadline', 'filing deadline', 'regulatory deadline', 'regulatory submission', 'estimated taxes', 'quarterly taxes', 'state taxes', 'federal taxes', 'payroll taxes', '941', '940', 'W-2 deadline', '1099 deadline', 'annual report filing', 'state annual report', 'state registration', 'corporate filing', 'registered agent', 'business license renewal', 'license renewal', 'permit renewal', 'compliance tracker', 'compliance tracking', 'what filings are due', 'what is due', 'upcoming deadlines', 'financial compliance', 'finance compliance', 'reporting deadline', 'LP report due', 'quarterly report due', 'annual audit', 'audit deadline', 'K-1', 'K-1 filing', 'tax return deadline', 'extension deadline', 'extension filing', or 'compliance missed'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--period <next-30|next-90|full-year>] [--category <tax|regulatory|lp|audit|payroll|license>] [--action <review|update|alert|report>]"
---

# Fin Compliance Calendar

Track financial compliance deadlines, tax filings, and regulatory submissions across MBL entities — maintaining the master calendar of all required filings, ensuring nothing is missed, and alerting Dr. Lewis and the relevant entity teams 30-60 days in advance. A missed compliance deadline is a controllable, avoidable failure: the IRS charges penalties and interest; state regulators can revoke business registrations; LP disclosure violations are a fiduciary breach. Dr. Lewis maintains the compliance calendar as a living document that is reviewed monthly and updated as new requirements are identified.

## When to Use
- Monthly: review upcoming 60-day compliance deadlines
- A new entity is added to the portfolio (new deadline set to track)
- Tax counsel updates the entity's filing requirements
- Matt Mathison asks what filings are coming up or what is overdue
- Any compliance deadline is missed (post-mortem and recovery)

## Compliance Calendar Framework

```
MASTER DEADLINE CALENDAR (ANNUAL):

  JANUARY:
    □ Jan 15: Q4 estimated federal tax payment (MBL + entities as applicable)
    □ Jan 31: W-2 distribution to employees (all entities)
    □ Jan 31: 1099-NEC distribution to contractors (all entities with >$600 contractor payments)
    □ Jan 31: Federal unemployment tax (FUTA) annual report — Form 940
    □ Jan 31: ACA reporting — 1095-C distribution to full-time employees (if applicable)
    
  FEBRUARY:
    □ Feb 28 (paper) / Mar 31 (e-file): W-2 and 1099 submission to SSA/IRS
    □ Feb: Annual state business report renewals (review by state)
    
  MARCH:
    □ Mar 15: Q4/Annual LP financial disclosure (RVPI; TVPI; DPI — per LP agreement)
    □ Mar 15: S-Corporation federal tax return (if any entity is S-Corp)
    □ Mar 15: Partnership tax return extension filing deadline (if needed)
    
  APRIL:
    □ Apr 15: Federal corporate tax return (C-Corp) or individual return extension
    □ Apr 15: Q1 estimated federal tax payment (all applicable entities)
    □ Apr 15: Q1 payroll tax return (Form 941) due
    □ Apr 30: State income tax returns (vary by state — Utah, Texas, Arizona, Delaware)
    □ Utah: HIVE — Utah severance tax annual report
    
  MAY:
    □ May 15: Q1 LP financial disclosure (to LPs, per LP agreement)
    
  JUNE:
    □ Jun 15: Q2 estimated federal tax payment (all applicable entities)
    □ Jun 30: Mid-year business license renewals (check each entity + state)
    
  JULY:
    □ Jul 31: Q2 payroll tax return (Form 941) due
    
  AUGUST:
    □ Aug 15: Q2 LP financial disclosure (to LPs, per LP agreement)
    □ Aug: Annual registered agent renewals (Delaware if Column6 incorporated there)
    
  SEPTEMBER:
    □ Sep 15: Q3 estimated federal tax payment (all applicable entities)
    □ Sep 15: S-Corporation or Partnership extended tax return due (if extension filed in March)
    □ Sep 30: Annual audit engagement letter signing (for December 31 fiscal year entities)
    
  OCTOBER:
    □ Oct 15: Federal corporate tax return extended deadline
    □ Oct 31: Q3 payroll tax return (Form 941) due
    
  NOVEMBER:
    □ Nov 15: Q3 LP financial disclosure (to LPs, per LP agreement)
    □ Nov: Open enrollment for benefits (if entity provides health benefits)
    
  DECEMBER:
    □ Dec 15: Annual budget submitted to Matt Mathison for approval
    □ Dec 20: Matt Mathison locks annual budget
    □ Dec 31: Entity charitable contributions recorded in the tax year
    □ Dec 31: Estimated tax final payment opportunity (if applicable)

ENTITY-SPECIFIC COMPLIANCE:

  ALLEVIO:
    □ HIPAA: annual Security Risk Assessment (SRA) — no fixed date; schedule annually
    □ OIG: CMS annual exclusion list check for all employees/contractors
    □ AdvancedMD: HIPAA Business Associate Agreement review annually
    □ ACA Reporting: 1094-C and 1095-C (if Allevio is an applicable large employer)
    □ State healthcare licenses: per state where clinical services are provided
    
  HIVE:
    □ Utah Severance Tax: annual return (Utah Tax Commission)
    □ Utah State Income Tax: annual entity return
    □ Mineral lease renewals: per-lease schedule (Dr. Lewis tracks in Covercy lease tracker)
    □ Annual report: Utah Division of Corporations (if HIVE is a Utah LLC/Corp)
    
  COLUMN6:
    □ Delaware franchise tax: March 1 annual filing (if Delaware incorporated)
    □ New York City commercial activity: NYC-1 or relevant NYC filing (if office there)
    □ Digital advertising taxes: monitor state-specific digital services taxes (Maryland; others)
    □ FCC compliance: any applicable broadcast/digital advertising regulations
    
MISSED DEADLINE PROTOCOL:

  If a deadline is missed:
    1. Identify: what was missed; by how many days
    2. Assess: penalty and interest calculation (IRS: 0.5% per month for late payment; failure-to-file: 5%/month up to 25%)
    3. File immediately: the fastest way to stop penalty accrual
    4. Notify: Matt Mathison same day (any missed deadline)
    5. Pay penalty: get the penalty paid to stop further accrual
    6. Root cause: why was it missed? Add to the compliance calendar; set 60-day alert
    7. Document: missed deadline log with root cause and remediation
```

## Output Format

```markdown
# Compliance Calendar — [Month Year] Review
**Prepared by:** Dr. Lewis | **Review frequency:** Monthly | **For:** Dr. Lewis + Entity teams

---

## Upcoming 60-Day Deadlines

| Date | Entity | Requirement | Category | Assigned to | Status | Notes |
|------|--------|------------|---------|------------|--------|-------|
| [Date] | [Entity] | Q3 estimated tax | Tax | Dr. Lewis | 🟢 On track | |
| [Date] | [All] | Form 941 Q2 | Payroll | Bookkeeper | 🟡 30 days — prep now | |
| [Date] | MBL | LP Q2 disclosure | LP | Dr. Lewis | 🔴 Needs draft | Matt review by [date] |

---

## Overdue Items (if any)

| Entity | Item | Was due | Days late | Action | Status |
|--------|------|---------|----------|--------|--------|
| [Entity] | [Item] | [Date] | [N] | Filed [date]; penalty [amount] | Resolved |

---

## Annual Calendar — [Year] Status

| Month | Key deadlines | Status |
|-------|--------------|--------|
| Jan | W-2; 1099; Q4 est tax | ✅ Complete |
| Feb | SSA/IRS W-2 submission | ✅ Complete |
| Mar | Q4 LP disclosure | ✅ Complete |
```

## Output Contract
- 60-day advance alerts are non-negotiable — the compliance calendar review happens monthly; every item due within 60 days is flagged and assigned to a responsible party; a deadline that isn't being actively managed 60 days out is a deadline that is at risk; Dr. Lewis owns the alert system — not the entity bookkeeper, not the tax advisor; Dr. Lewis is the compliance calendar owner and the escalation path when preparation is falling behind
- Tax advisor coordinates, Dr. Lewis tracks — Dr. Lewis is not a tax attorney and does not file complex entity tax returns himself; he coordinates with the external tax advisors (CPA firm) who prepare and file the returns; but the compliance calendar is Dr. Lewis's responsibility, not the tax advisor's; the tax advisor's job is to prepare the return; Dr. Lewis's job is to make sure the tax advisor gets the data they need on time, the filing happens by the deadline, and the estimated tax payments are made on time without waiting for the return to be filed
- Missed deadline → Matt Mathison same day — any missed filing deadline is a Matt Mathison notification event, regardless of dollar amount; a small business license renewal missed is a compliance failure; a payroll tax 941 missed is a potential penalty; a federal corporate return missed is a significant penalty; Matt needs to know so he can evaluate whether there are any downstream consequences (e.g., LP disclosure impact; investor representation breach); the notification is factual: "What was missed; what the penalty is; what we're doing to remedy"
- HITL required: Matt Mathison notified same day of any missed deadline; LP disclosure deadlines (March; May; August; November) all require Matt approval on the content before distribution; tax return filings coordinated with tax counsel and reviewed by Dr. Lewis before submission; any significant penalty (>$5K) requires Matt notification; state registration or license renewal that is missed creates potential business operation risk — entity CEO notified same day; compliance calendar reviewed by Dr. Lewis monthly and updated as new requirements are identified

## System Dependencies
- **Reads from:** Tax advisor communications (CPA firm — filing calendar and extension elections); LP agreements (LP report due dates); entity formation documents (state of incorporation; annual report dates); state registration records; fin-lp-financial-disclosure (LP report production schedule); fin-tax-planner (estimated tax payment schedule)
- **Writes to:** Compliance calendar master (SharePoint → Finance → Compliance → Calendar → [YYYY]); 60-day alert notifications (email to responsible parties); missed deadline log (SharePoint → Finance → Compliance → MissedDeadlines); Matt Mathison notifications (direct communication)
- **HITL Required:** Matt notified same day of any missed deadline; LP disclosures require Matt approval; all tax filings coordinated with tax counsel; estimated tax payments approved by Dr. Lewis before remittance; significant penalties (>$5K) → Matt notification; entity CEO notified of any registration/license lapse same day

## Test Cases
1. **Golden path:** Monthly compliance review for August; 60-day look-ahead: (1) August 15 — Q2 LP disclosure: draft ready July 25; Matt review August 5-10; distribution August 15; ON TRACK; (2) October 15 — Column6 federal corporate return (extended from April): tax advisor preparing; data package sent August 1; ON TRACK; (3) October 31 — Q3 Form 941 all entities: bookkeeper reminder scheduled September 1; payroll data easily available; ON TRACK. No overdue items. Full compliance. Dr. Lewis: "August compliance calendar is clean. Three active items, all on track. Next 30-day item: August 15 LP disclosure — Matt's review is scheduled."
2. **Edge case:** Tax advisor calls August 10 saying they need more time on Column6's corporate return and want to extend to the January 15 deadline (super-extension) → Dr. Lewis: "The April extension was already filed; the October 15 deadline is the final extension. A super-extension to January 15 is not available for corporate returns — October 15 is the absolute final deadline. I'm calling the tax advisor to clarify: if they need more time, we can file for a good-faith underpayment to stop penalties, but the return itself has to be filed by October 15 or we face a failure-to-file penalty (5%/month up to 25%). I need from the tax advisor: (1) confirmation they understand October 15 is hard; (2) what specific data or information is causing the delay; and (3) a firm completion date. If the October 15 deadline is genuinely at risk, Matt Mathison is being notified today."
3. **Adversarial:** Entity CEO claims they don't need to register in a new state where they're doing business because "no one checks" → Dr. Lewis: "I can't let this go undocumented. If Column6 is providing services and has employees or contractors in [State], there are nexus implications for income tax, sales tax, and business registration. 'No one checks' is not a legal opinion — it's a risk tolerance statement, and it's not one I can make for MBL. What I need to do: (1) confirm with our tax advisor whether Column6's activity in [State] creates nexus; (2) if it does, determine the registration and filing requirements; (3) assess any prior-year exposure if we've had nexus without registering. Most states have voluntary disclosure programs that reduce penalties for companies that self-report. The cost of getting this right is usually lower than the cost of getting caught. This is going to Matt Mathison for a decision."

## Audit Log
Monthly compliance calendar reviews retained. Missed deadline records retained permanently (with root cause and remediation). Tax filing records retained 7 years. Payroll tax records retained 4 years. LP disclosure records retained permanently. State registration records retained (active). License and permit renewal records retained.

## Deprecation
Retire when MBL has a dedicated Operations Manager or General Counsel who maintains the compliance calendar — with Dr. Lewis providing financial compliance oversight and Matt Mathison retaining accountability for LP-facing compliance deadlines and fiduciary compliance.
