---
name: portops-hive-regulatory-monitor
description: "HIVE regulatory compliance, Utah DOGM reporting, production reporting deadline, environmental permit tracker, royalty reporting oil and gas, HIVE bonding requirements, OSHA safety compliance oil field, severance tax filing, production tax Utah, HIVE compliance calendar, permit renewal HIVE, regulatory filing overdue, DOGM deadline tracker, oil and gas compliance monitor, Utah Division Oil Gas Mining, HIVE regulatory alert, annual permit renewal, bond renewal tracker, environmental compliance Uinta Basin, regulatory escalation entity CEO"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "optional: month (YYYY-MM), filter (all | overdue | upcoming-30 | upcoming-90 | permits | taxes | safety), or specific domain"
---

# HIVE Regulatory Monitor

HIVE Partners' Uinta Basin operations are subject to a multi-layer compliance stack governed by the Utah Division of Oil, Gas and Mining (DOGM), the Utah State Tax Commission, federal and state environmental regulators, and OSHA. This skill tracks all active compliance obligations, flags upcoming deadlines, escalates overdue filings immediately to the entity CEO and Dr. Lewis, and produces a monthly compliance calendar that ensures nothing falls through the cracks in a regulatory environment where missed deadlines carry fines, permit risk, and enforcement consequences.

## When to Use

- Monthly compliance calendar run: surface all deadlines in the next 60 days with owners and status
- Any regulatory filing is past due — immediate escalation to entity CEO required same day
- Annual permit or bond renewal cycle opens (typically 90 days before expiration)
- Utah DOGM issues a notice, inspection result, or violation — track remediation to closure
- Quarterly OSHA safety metrics review and incident log reconciliation

## HIVE Regulatory Monitor Framework

```
REGULATORY LANDSCAPE
  Primary regulator: Utah Division of Oil, Gas and Mining (DOGM) — production reporting, permits, bonds
  Tax authority: Utah State Tax Commission — severance tax, production tax
  Environmental: Utah DEQ (permits, spill reporting), EPA (federal if federal lands involved)
  Safety: OSHA — field safety, incident reporting, annual 300A posting
  Federal: BLM requirements applicable if any HIVE acreage is on federal or split-estate lands
  Entity responsible party: Entity CEO (operations); Dr. Lewis (oversight and escalation routing)

PRODUCTION REPORTING
  Utah DOGM monthly production report: due by 25th of the following month
  Report content: gross production by well (BBL/day, MCF/day), disposition, water produced
  Data source: Covercy production records; field operator confirmation
  Late filing consequence: DOGM late fee per day; potential notice of violation after 30 days
  Submission confirmation: logged in SharePoint under HIVE / Regulatory / DOGM Submissions

ENVIRONMENTAL PERMIT TRACKING
  Active permits inventory: permit type, permit number, issuing agency, expiration date
  Permit types: air quality (minor source), water discharge (UGW), stormwater (UPDES), spill prevention (SPCC)
  Renewal trigger: 90 days before expiration = advisory in monthly report
  Renewal trigger: 30 days before expiration = Monday.com task assigned to entity CEO, Dr. Lewis as watcher
  Permit condition compliance: ongoing conditions tracked as separate checklist items
  Any permit lapse = immediate escalation to entity CEO and Dr. Lewis; operations review required

ROYALTY REPORTING ACCURACY
  State royalty reporting: monthly to mineral owners by royalty payment due date per lease
  Federal royalty reporting: ONRR (if federal minerals), due by last day of following month
  Royalty statement accuracy audit: quarterly cross-check of Covercy production volumes vs. royalty amounts
  Royalty dispute tracking: open disputes logged with owner name, amount disputed, status
  Royalty underpayment risk: flagged if BBL/day data and royalty check amounts diverge >2%

BONDING REQUIREMENTS
  Plugging and abandonment (P&A) bonds: per-well surety bonds required by Utah DOGM
  Bond type: individual well bond or blanket bond (if applicable under DOGM rules)
  Bond amount: per DOGM current schedule based on well depth and production status
  Renewal trigger: 90 days before surety bond expiration = advisory; 30 days = Monday.com task
  Bond adequacy review: annually or when new wells are added; entity CEO confirms coverage
  Consequence of lapsed bond: DOGM can halt operations on affected wells; immediate escalation required

OSHA FIELD SAFETY COMPLIANCE
  OSHA 300 log: ongoing recording of work-related injuries and illnesses at field locations
  OSHA 300A (annual summary): posted at worksite February 1 through April 30 each year
  Incident reporting: severe injuries (hospitalization, amputation, loss of eye) reported to OSHA within 24 hours
  Recordable incident rate: tracked quarterly vs. industry NAICS benchmark (OSHA 211)
  Near-miss reporting: internal tracking; does not go to OSHA but informs safety program
  Safety training completion: annual Hazard Communication, H2S, confined space — tracked by employee
  JSA (Job Safety Analysis): required before non-routine tasks; compliance audited quarterly

SEVERANCE AND PRODUCTION TAX
  Utah severance tax: assessed on gross value of oil and gas produced; rate per Utah Code 59-5
  Filing and payment: monthly to Utah State Tax Commission; due by last day of following month
  Production tax: if applicable under any HIVE lease terms; tracked separately
  Tax reconciliation: QuickBooks payment records cross-referenced with Utah STC confirmation
  Consequence of late filing: interest and penalty per Utah Code; DOGM notification if tax lien filed

MONTHLY COMPLIANCE CHECKLIST TEMPLATE
  Prepared by 3rd of each month for the prior month's status and next 60-day horizon
  Reviewed by Dr. Lewis; distributed to entity CEO for action items
  All overdue items must be resolved or have a documented remediation plan before distribution
  DOGM notices and open violations remain on report until Dr. Lewis confirms closure
```

## Output Format

```markdown
# HIVE Regulatory Compliance Monitor — [Month YYYY]
**Prepared:** [Date] | **Reviewed By:** Dr. John Lewis | **Entity CEO Notified:** [Yes/Date]

## Compliance Status Summary
| Domain                   | Status      | Next Deadline   | Days Out | Responsible |
|--------------------------|-------------|-----------------|----------|-------------|
| DOGM Production Report   | [Status]    | [Date]          | [N]      | Entity CEO  |
| State Royalty Reporting  | [Status]    | [Date]          | [N]      | Entity CEO  |
| Federal Royalty (ONRR)   | [N/A or Status] | [Date]      | [N]      | Entity CEO  |
| Severance Tax Filing     | [Status]    | [Date]          | [N]      | Entity CEO  |
| Environmental Permits    | [Status]    | [Expiry Date]   | [N]      | Entity CEO  |
| Bonding Requirements     | [Status]    | [Renewal Date]  | [N]      | Entity CEO  |
| OSHA Safety Reporting    | [Status]    | [Date]          | [N]      | Entity CEO  |
| DOGM Well Status Reports | [Status]    | [Date]          | [N]      | Entity CEO  |

## OVERDUE ITEMS — IMMEDIATE ESCALATION REQUIRED
| Filing Type       | Jurisdiction | Due Date   | Days Overdue | Consequence         | Action Required        |
|-------------------|--------------|------------|--------------|---------------------|------------------------|
| [Filing type]     | [Agency]     | [Date]     | [N]          | [Fine/permit risk]  | [Specific action]      |

## Upcoming (Next 30 Days)
- [Filing type] | Due: [Date] | Monday.com task: [Task ID] | Assigned: Entity CEO

## Upcoming (31-90 Days — Renewals and Annual Filings)
- [Permit/Bond/Annual filing] | Expiry/Due: [Date] | Renewal window: [Advisory note]

## DOGM Notices and Open Violations
| Notice ID | Date Received | Type              | Status         | Remediation Due | Response Owner |
|-----------|---------------|-------------------|----------------|-----------------|----------------|
| [ID]      | [Date]        | [Violation type]  | [Open/Closed]  | [Date]          | Entity CEO     |

## OSHA Safety Metrics (Quarter-to-Date)
- Recordable incidents: [N] | DART rate: [X] | Days without recordable: [N]
- Near misses reported: [N] | Safety trainings overdue: [N employees]
- OSHA 300A posting status: [Posted [date] / Not yet required / OVERDUE]

## Royalty Dispute Register
- Open disputes: [N] | Total amount in dispute: $[X] | Oldest open dispute: [Date]
```

## Output Contract

- Any overdue filing must appear under the dedicated "OVERDUE ITEMS — IMMEDIATE ESCALATION" section with the exact number of days overdue, the specific filing type and governing agency, and a plain-language description of the consequence of continued non-filing (fine schedule, permit risk, or DOGM enforcement action). Overdue items may not be buried in the general status table — they require visual separation and same-day escalation to the entity CEO and Dr. Lewis regardless of when in the monthly cycle they are detected.
- The compliance status summary must cover all eight domains on every monthly run without exception. A domain may not be omitted because no deadline falls in the current month; the required entry is "No deadline this month — next due: [date]" which confirms the domain is being actively monitored and has not been accidentally excluded from the tracking system.
- Environmental permit and bonding renewal triggers must fire at 90 days before expiration as advisory entries and at 30 days as Monday.com tasks assigned to the entity CEO with Dr. Lewis as watcher. The 90-day trigger is not optional — permit renewals in Utah can take 60 to 90 days to process, making a 30-day-only trigger insufficient to prevent a lapse in permit coverage.
- DOGM notices and open violations must remain on the report with "Open" status until Dr. Lewis personally confirms closure with supporting documentation from DOGM. Violations do not auto-close based on the passage of the remediation deadline — only documented agency confirmation of closure is acceptable because unresolved violations can affect bonding, permit renewals, and future acquisition approvals from DOGM.

## System Dependencies

**Reads from:** SharePoint (HIVE Partners / Regulatory / Calendar, permit documents, bond certificates, DOGM correspondence, OSHA 300 logs), QuickBooks (severance and production tax payment records, royalty expense entries), Utah DOGM online portal (production report submission status and violation notices), Utah State Tax Commission records (severance tax filing confirmation), Covercy (production volumes for royalty accuracy cross-check)
**Writes to:** Monday.com (upcoming deadline tasks assigned to entity CEO, overdue escalation cards with Dr. Lewis as watcher), SharePoint (monthly compliance reports under HIVE Partners / Regulatory / Monthly Reports, violation register under HIVE Partners / Regulatory / Violations), email (overdue escalation to entity CEO and Dr. Lewis same day; 90-day permit and bond advisory to entity CEO)
**HITL Required:** Any overdue filing remediation plan requires entity CEO approval then Dr. Lewis escalation routing confirmation; DOGM violation response requires entity CEO to own the response, Dr. Lewis to review before submission, and Matt Mathison to be notified of any violation with potential enforcement or permit consequence; annual permit and bond renewal submissions require entity CEO to sign and file with Dr. Lewis confirming receipt acknowledgment from the agency

## Test Cases

- **Golden path:** All filings current, no overdue items, two permits expiring in 75 days — monthly report shows all-green status summary across all eight domains, two advisory entries in the 31-90 day section, no escalation triggers fire, Monday.com tasks pre-created for the 30-day window before each expiration
- **Edge case:** DOGM monthly production report submitted on the 25th (deadline day) but the submission confirmation receipt is not yet uploaded to SharePoint — system must flag status as "Pending — confirmation required" and must not resolve to "Filed" until the confirmation document is logged; a pending status at deadline day triggers a same-day advisory to entity CEO to confirm and upload the receipt
- **Adversarial:** Severance tax filing goes overdue because the entity CEO believed QuickBooks auto-submitted the payment and assumed filing was complete — the monitor must detect the non-filed status from Utah State Tax Commission records (not QuickBooks payment alone, since payment and filing are separate actions), fire the overdue escalation, and log the assumption gap so the compliance process is updated to require explicit STC filing confirmation distinct from the QuickBooks payment record

## Audit Log

Every regulatory monitor run logs: run timestamp, data sources checked with their last-updated timestamps, compliance status for all eight domains at time of run, any overdue items detected with days-overdue count, escalation notifications sent with recipient, method, and timestamp, and any HITL actions triggered. DOGM violation records are maintained in a dedicated violation register in SharePoint under HIVE Partners / Regulatory / Violations — these records are retained indefinitely because violation history affects future permit approvals and asset sale due diligence. All other compliance run logs are retained 7 years per MBL policy.

## Deprecation

This skill is deprecated if HIVE Partners engages a dedicated oil and gas regulatory compliance firm to manage all DOGM, OSHA, and tax obligations on a managed-service basis with their own tracking system, or upon full exit from all Uinta Basin operations. Before deprecation, all open compliance items must be resolved or formally transferred to the successor responsible party with written acknowledgment. The transfer must be reviewed by Dr. Lewis, confirmed by the entity CEO, and approved by Matt Mathison before this skill is retired from the skill registry.

---

MBL CONTEXT:
- MBL Partners = private equity holding firm; Matt Mathison = Managing Partner (final authority)
- Dr. John Lewis = Principal Systems Engineer & Director of AI Strategy
- HITL chain: Dr. Lewis → entity CEO → Matt Mathison
- HIVE Partners = oil & gas; Uinta Basin UT; LP returns; Covercy (ops system); WTI $58/bbl for 2+ consecutive weeks → PAUSE new acquisitions; BBL/day production metric; key metric is BOE (barrel of oil equivalent)
- THRIVE = Truth, Hustle, Respect, Integrity, Value, Enjoy
