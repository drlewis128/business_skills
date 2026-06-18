---
name: fin-audit-readiness
description: "Prepare MBL Partners and portfolio companies for annual financial audits. Use when the user says 'audit', 'audit preparation', 'audit readiness', 'prepare for the audit', 'annual audit', 'external audit', 'audit checklist', 'auditor', 'audit fieldwork', 'audit request list', 'PBC list', 'prepared by client', 'audit package', 'audit findings', 'audit management letter', 'audit response', 'clean audit', 'audit opinion', 'unqualified opinion', 'audit timeline', 'audit schedule', 'audit coordinator', 'coordinate the audit', 'get ready for audit', 'audit documentation', 'support schedules', 'reconciliation for audit', 'audit support', 'audit deliverables', 'auditor questions', 'respond to auditor', or 'audit deadline'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--phase <planning|fieldwork|review|close>] [--year <YYYY>] [--action <prepare|coordinate|respond|review>]"
---

# Fin Audit Readiness

Prepare MBL Partners and portfolio companies for annual financial audits — coordinating the documentation, reconciliation, and response process that enables external auditors to complete their work efficiently and produce a clean audit opinion on schedule. Audit readiness is not a once-a-year scramble; the MBL standard is to maintain audit-ready documentation throughout the year so that the annual audit is a confirmation of what we already know, not a discovery process. An entity that cannot produce clean audit documentation in 30 days has a bookkeeping problem, not an audit problem.

## When to Use
- September-October: Annual audit planning kickoff (schedule auditors; prepare PBC list)
- November-December: Audit fieldwork coordination (respond to auditor requests; resolve findings)
- January-February: Final review and management letter response
- Any time an entity needs to assess its current audit readiness state

## Audit Readiness Framework

```
ANNUAL AUDIT TIMELINE (calendar year entities):

  SEPTEMBER — Auditor Engagement:
    □ Confirm external auditor engagement for the audit year
    □ Agree on audit timeline (fieldwork dates; draft delivery date; final date)
    □ Receive and review the Prepared-By-Client (PBC) document list
    □ Assign internal owner for each PBC item (entity Controller/CFO or Dr. Lewis)
    □ Log all PBC items in exec-action-tracker with due dates
    
  OCTOBER — Pre-Audit Preparation:
    □ Bank reconciliations: all months current and reconciled to QuickBooks
    □ AR reconciliation: AR aging matches QuickBooks; significant items documented
    □ AP reconciliation: AP aging matches QuickBooks; all vendors in Bill.com
    □ Fixed asset register: all additions and disposals documented with supporting invoices
    □ Debt schedule: all loans documented with statements and amortization schedules
    □ Equity roll-forward: beginning equity + net income + contributions - distributions
    □ Intercompany transactions: MBL ↔ entity transactions documented and eliminated
    □ Significant contracts: gather customer contracts; vendor agreements; lease agreements
    □ Prior year adjustments: all prior year audit adjustments posted in current books
    
  NOVEMBER — Fieldwork Support:
    □ Auditor has access to QuickBooks (read-only) and SharePoint document library
    □ All PBC items submitted on schedule (no auditor waiting >48 hours for a document)
    □ Auditor questions answered within 1 business day
    □ Any proposed audit adjustment reviewed with Dr. Lewis before entity Controller accepts
    □ Audit findings (if any) discussed: Is this a control weakness or a misstatement?
    
  DECEMBER — Final Review:
    □ Draft financial statements received from auditor
    □ Dr. Lewis and entity CEO review financial statements for accuracy
    □ Footnote disclosures reviewed for completeness
    □ Management letter (if issued) reviewed for control weaknesses
    □ Management letter responses drafted (Dr. Lewis reviews; entity CEO approves)
    □ Final financial statements approved by Matt Mathison
    □ Signed financial statements distributed to LPs per disclosure obligations

AUDIT DOCUMENTATION STANDARDS:

  REQUIRED YEAR-ROUND:
    □ Monthly bank reconciliations (completed by the 15th of each following month)
    □ Monthly reconciliation of QuickBooks balance sheet accounts to supporting schedules
    □ Signed agreements for all new customer contracts (Allevio: employer group agreements)
    □ Invoice documentation for all expenses >$500 (stored in Bill.com or SharePoint)
    □ Signed approval documentation for all capital expenditures (per approval thresholds)
    □ Payroll records: all payroll registers; W-2s; 1099s current and filed
    □ Corporate records: minutes; resolutions; entity formation documents current
    
  ALLEVIO-SPECIFIC:
    □ HIPAA compliance documentation (annual privacy audit; security risk assessment)
    □ OIG exclusion check records (quarterly for all employees; vendors who bill CMS)
    □ AdvancedMD billing records (procedure codes; payer mix documentation)
    □ Employer group contracts (all active agreements; renewal documentation)
    □ Medical loss ratio calculation (claims / premium; documented per employer group)
    
  HIVE-SPECIFIC:
    □ Mineral lease agreements (all active leases; production entitlement documentation)
    □ Covercy royalty distribution statements (all quarterly distributions; reconciled to bank)
    □ Revenue recognition: royalty income recognized on receipt vs. accrual (consistent method)
    □ Production records: BOE production by property (from operator statements)
    □ Severance tax filings: Utah severance tax payments documented
    
  COLUMN6-SPECIFIC:
    □ IO documentation: all signed insertion orders for the audit year
    □ DSP delivery reports: campaign delivery evidence for all billed IOs
    □ Agency contracts: all signed contracts; rate cards; addenda
    □ Revenue recognition: recognize revenue when campaign delivers; deferred if not yet delivered

MANAGEMENT LETTER RESPONSE FORMAT:

  For each control weakness identified:
    Finding: [Auditor's description of the weakness]
    Management response: [Our assessment — agree/disagree; context]
    Corrective action: [Specific step(s) to remediate]
    Responsible party: [Named owner]
    Target completion date: [Specific date]
    
  Rule: Never dispute a finding that's correct — it wastes auditor goodwill
  Rule: Always have a specific corrective action with a specific date
  Rule: Repeat findings (same finding 2+ years) escalate to Matt Mathison immediately
```

## Output Format

```markdown
# Audit Readiness Tracker — [Entity] — [Audit Year]
**Prepared by:** Dr. Lewis | **Auditor:** [Firm] | **Fieldwork dates:** [Date range]

---

## PBC Item Status

| # | Item | Owner | Due date | Status | Notes |
|---|------|-------|---------|--------|-------|
| 1 | Bank reconciliations (all months) | [Owner] | [Date] | ✅/⏳/❌ | |
| 2 | AR aging reconciliation | [Owner] | [Date] | ✅/⏳/❌ | |
| 3 | [Item] | [Owner] | [Date] | ✅/⏳/❌ | |

---

## Audit Timeline

| Milestone | Target date | Status |
|-----------|------------|--------|
| PBC list complete | [Date] | ✅/⏳ |
| Fieldwork start | [Date] | — |
| Draft financials | [Date] | — |
| Management letter | [Date] | — |
| Final financials | [Date] | — |
| LP distribution | [Date] | — |

---

## Open Items (blocking audit completion)

| Item | Owner | Due | Impact |
|------|-------|-----|--------|
| [Item] | [Owner] | [Date] | [What's blocked] |

---

## Management Letter Responses (if applicable)

| Finding | Response | Action | Owner | Due |
|---------|---------|--------|-------|-----|
| [Finding] | Agree/Disagree | [Action] | [Owner] | [Date] |
```

## Output Contract
- Audit-ready year-round, not once-a-year — entities that scramble to pull together documentation in October for a November audit have a bookkeeping problem; the MBL standard is monthly reconciliations, year-round document retention, and clean QuickBooks; if an entity is in this state, the audit is a validation exercise, not a discovery process; Dr. Lewis uses the monthly close checklist (fin-entity-close) to enforce audit-readiness standards year-round
- PBC items delivered within 48 hours — auditors waiting more than 48 hours for a document are auditors who extend their timeline, charge more hours, and become skeptical about what else isn't organized; Dr. Lewis tracks every PBC item in exec-action-tracker and escalates any item that is more than 2 days overdue before it affects the audit timeline
- Repeat findings escalate — a control weakness identified for the second consecutive year means the management letter response from year 1 was not implemented; Dr. Lewis reviews all prior-year management letter items before the new audit begins; any repeat finding goes to Matt Mathison immediately with an explanation of why the year 1 corrective action wasn't completed
- HITL required: Matt Mathison approves the final financial statements before LP distribution; management letter responses are reviewed by Dr. Lewis and approved by the entity CEO; any proposed audit adjustment >$10K is reviewed by Dr. Lewis before entity Controller accepts; Allevio: HIPAA-related audit findings require legal review before management response; annual audit completion and LP distribution schedule are communicated to Matt Mathison and LPs per exec-lp-reporting obligations

## System Dependencies
- **Reads from:** QuickBooks (all entities — the audit is a verification of the books); Bill.com (AP documentation; vendor records); Allevio: AdvancedMD (billing documentation; employer group records); HIVE: Covercy (royalty statements; distribution records); Column6: IO database (signed IOs; delivery records); prior-year audit management letters (what was flagged before)
- **Writes to:** Audit files (SharePoint → Finance → Audits → [Entity] → [YYYY]); exec-action-tracker (PBC item deadlines; management letter action items); exec-lp-reporting (final audited financials are a required LP disclosure); exec-board-reporting (audit completion and any findings go to the board); fin-internal-controls (management letter findings inform the internal controls improvement plan)
- **HITL Required:** Matt Mathison approves final financial statements before LP distribution; management letter responses approved by entity CEO; audit adjustments >$10K reviewed by Dr. Lewis; Allevio HIPAA findings require legal review; repeat findings escalate to Matt immediately

## Test Cases
1. **Golden path:** September 1 audit planning kickoff for Allevio; auditor engagement confirmed (same firm as prior year); fieldwork scheduled November 15-December 5; PBC list received: 22 items; Dr. Lewis assigns owners and due dates in exec-action-tracker; October 31 PBC check: 19/22 items submitted; 3 pending (employer group contract for 2 new groups added in August; updated fixed asset register; Q3 payroll tax deposit confirmation); Dr. Lewis follows up directly; all 3 delivered by November 12. Fieldwork: 4 auditor questions answered within 24 hours; no significant findings; proposed adjustment of $8,500 for deferred revenue timing (acknowledged; posted). Management letter: 1 finding (bank reconciliation for August completed late by 3 days); response: "Corrected — September and October reconciliations completed by the 8th. Will maintain monthly cadence going forward." Final financials delivered December 20. Matt reviews and approves. LP distribution January 5.
2. **Edge case:** HIVE auditor flags that Covercy royalty income recognition method has changed mid-year → Dr. Lewis: "This requires a policy decision before we respond. The auditor is right that the method changed — we shifted from cash to accrual for royalty recognition in Q3 because the Covercy distributions became more predictable. This is a legitimate accounting policy change, but it needs to be documented as such and applied consistently going forward. My recommendation: (1) prepare a formal accounting policy memo documenting the change and the rationale; (2) apply the change retroactively to the beginning of the year (for consistency); (3) disclose the policy change in the financial statement footnotes. I'll draft the policy memo today. The auditor will accept a documented, consistently-applied policy — what they won't accept is an undocumented mid-year shift." Entity Controller: "Agreed. Draft it."
3. **Adversarial:** Entity CEO wants to push back on a correct audit finding to avoid the management letter → Dr. Lewis: "I understand the instinct, but I'd recommend against disputing a finding that's accurate. The auditor found that [specific finding] — and they're right, that's what happened. Pushing back on a correct finding does two things we don't want: (1) it damages our relationship with the audit team (we need them to be reasonable partners in future years); (2) if they feel they need to defend their position, they'll document it more thoroughly, not less. The better path: agree with the finding, provide context where useful, and have a specific corrective action with a specific date. The management letter will have one item; it's not a crisis. What would be a crisis is if we dispute it, they dig in, and we're still negotiating this in March."

## Audit Log
All annual audit packages retained by entity and year. PBC item completion dates retained (was everything submitted on time?). Audit adjustment records retained. Management letter findings retained (current year and prior year — for repeat finding tracking). Final financial statement approval records (Matt Mathison sign-off date and method). LP distribution records.

## Deprecation
Retire when each entity has a Controller or CFO who manages the annual audit process — with Dr. Lewis serving as the portfolio-level audit coordinator and Matt Mathison retaining approval authority for final financial statements and LP distribution.
