---
name: rc-regulatory-change-monitor
description: "Monitor regulatory changes affecting MBL portfolio companies. Use when the user says 'regulatory change', 'new regulation', 'regulatory update', 'compliance change', 'new law', 'regulatory monitoring', 'regulatory environment', 'regulatory risk', 'rule change', 'law change', 'regulation alert', 'compliance update', 'new HIPAA rule', 'CMS final rule', 'AZ regulatory change', or 'regulatory landscape'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <all|Allevio|HIVE|MBL>] [--domain <healthcare|oil-gas|PE|employment|tax|privacy>] [--period <monthly|quarterly>]"
---

# Regulatory Change Monitor

Monitor regulatory changes affecting MBL portfolio companies — tracking new rules, regulations, and guidance from CMS, HHS/OCR, FTC, IRS, OSHA, Utah DOGM, Arizona agencies, and other relevant regulators. Regulatory changes that go unnoticed create compliance gaps; regulatory changes spotted early create competitive and operational advantage (adapting ahead of peers who scramble at the deadline). At Allevio (healthcare), regulatory changes directly affect what services can be billed, how PHI must be handled, and what documentation is required. At HIVE (oil & gas), regulatory changes affect production operations and environmental obligations.

## When to Use
- Monthly regulatory scan — what changed this month that matters to the portfolio?
- A new regulation has been announced — what is the effective date, the impact, and the action plan?
- Preparing for a board meeting or Matt Mathison brief that includes regulatory risk
- A regulatory change creates competitive opportunity — first-mover advantage from early adaptation
- An existing regulation is being challenged or revised — monitor for final rule timing

## Regulatory Monitoring Framework

```
Monitored regulatory domains by entity:
  ALL PORTFOLIO COMPANIES:
    → IRS: Tax rule changes; APA (Accountable Plan rules); W-9/1099 threshold changes
    → OSHA: General industry standards; any new ETS (Emergency Temporary Standards)
    → Federal employment law: FLSA minimum wage changes; DOL overtime rule; ADA guidance; NLRA
    → AZ state employment law: Minimum wage (annually January 1); EPSTA; AZ employment statutes
    → FTC: Non-compete rule changes (FTC ban on non-competes — track litigation and final status)
    
  ALLEVIO (Healthcare):
    → CMS final rules: Physician Fee Schedule (released November annually; effective January 1); MPFS
    → HHS/OCR: HIPAA guidance; enforcement actions (Signal of enforcement priorities)
    → AZ Medicaid (AHCCCS): Rate changes; covered service changes; prior authorization requirements
    → AZ DHS: Facility license requirement changes; behavioral health; rural health
    → CDC/infection control: Guidance updates affecting clinical protocols
    → Prior authorization requirements: Payer-specific — CMS MA and commercial payer PA changes
    
  HIVE PARTNERS (Oil & Gas — Utah/Uinta Basin):
    → UT Division of Oil, Gas and Mining (DOGM): Rule changes; permit requirement changes
    → EPA: Methane regulations; NSPS (New Source Performance Standards) for oil/gas
    → BLM (Bureau of Land Management): If federal mineral rights involved — federal rule changes
    → Utah environmental rules: Water quality; spill reporting requirements
    
  MBL PARTNERS (PE/HoldCo):
    → SEC: Investment Advisor Act compliance if registered
    → SBA: Small business loan/SBIC regulation if applicable
    → Antitrust: HSR filing thresholds for acquisitions (revised annually)
    
Monitoring sources:
  Healthcare: CMS.gov (Final Rules page); Federal Register; HHS.gov/ocr (HIPAA enforcement);
    AHCCCS.gov; AHA/AMA alerts; MGMAConnect; AAFP Practice Management
  Oil & Gas: DOGM.utah.gov; EPA.gov; BLM.gov; IPAA (Independent Petroleum Association)
  Employment: DOL.gov; EEOC.gov; AZ Industrial Commission; SHRM legislative tracker
  Tax: IRS.gov (Newsroom); AICPA tax news; Tax Foundation
  Privacy: IAPP.org; FTC.gov; State AG offices (CCPA enforcement)
  
Response framework:
  Effective in <30 days: Immediate action — assess impact, begin implementation
  Effective in 30-90 days: Begin implementation planning; assign owner; set milestones
  Effective in 90-365 days: Document; include in next planning cycle; monitor for final rule
  Proposed rule (not yet final): Monitor for final rule; comment period if strategic
```

## Output Format

```markdown
# Regulatory Change Monitor — [Month YYYY]
**Prepared by:** Dr. John Lewis | **Date:** [Date]
**Coverage:** MBL Partners / Allevio / HIVE Partners / Column6

---

## High-Impact Regulatory Changes This Period

### [Regulation Name]
**Issuing authority:** [Agency]
**Entity affected:** [Allevio / HIVE / All]
**Effective date:** [Date]
**Lead time:** [Days until effective]
**Impact summary:** [2-3 sentences — what changes and what Allevio/HIVE must do differently]
**Financial impact:** [$X] [revenue / cost / exposure]
**Action required:** [Specific actions — by whom — by when]
**Priority:** 🔴 Immediate / 🟡 Near-term / 🟢 Monitor

---

## Regulatory Change Log — This Period

| Regulation | Agency | Entity | Effective date | Impact | Priority | Status |
|-----------|-------|--------|--------------|--------|---------|--------|
| CMS Physician Fee Schedule — [Year] Final Rule | CMS | Allevio | Jan 1, [Year] | [+/-X% reimbursement rate] | 🔴 | Implementation planning |
| OSHA [Standard change] | OSHA | All | [Date] | [Impact] | 🟡 | Monitoring |
| AZ Minimum Wage — Jan 1, [Year] | AZ Ind. Commission | All | Jan 1 | $[X]/hr → $[X]/hr | 🟢 | Budget updated |
| FTC Non-Compete Rule — [Status] | FTC | All | [Pending / Effective] | [Impact if effective] | 🟡 | Monitoring litigation |
| HIPAA [Guidance / Final Rule] | HHS/OCR | Allevio | [Date] | [Impact] | 🔴 | Assessment |
| UT DOGM [Rule change] | UT DOGM | HIVE | [Date] | [Impact] | 🟡 | |

---

## Upcoming Regulatory Calendar

| Regulation | Agency | Expected / Effective date | Entity | Action required |
|-----------|-------|------------------------|--------|----------------|
| CMS Physician Fee Schedule Final Rule | CMS | November [YYYY] | Allevio | Monitor; implement for Jan 1 |
| AZ Minimum Wage | AZ Ind. Comm. | January 1 annually | All | Budget update by October |
| HSR merger notification threshold | FTC | Annual | MBL | Update acquisition threshold |
| HIPAA Security Rule NPRM — [Status] | HHS/OCR | [Expected] | Allevio | Monitor proposed rule |

---

## Proposed Rules (Monitor — Not Yet Final)

| Proposed rule | Agency | Comment period | Expected final | Impact if finalized |
|--------------|-------|--------------|--------------|-------------------|
| [HIPAA Security Rule update] | HHS | [Date] | [Expected] | [Enhanced security requirements] |
| [FTC Non-Compete Rule] | FTC | Closed | [Pending litigation] | [Employment contracts — all entities] |

---

## Matt Mathison Brief (quarterly regulatory summary)

Q[N] [YYYY] regulatory: Key changes: (1) CMS PFS: Allevio reimbursement [+/-X%] effective Jan 1 — budget updated; (2) AZ minimum wage: $[X] effective Jan 1 — payroll updated; (3) [Major regulatory event]. Monitoring: [FTC non-compete; HIPAA Security Rule NPRM]. Financial impact: $[X] net across portfolio. Attorney engaged: [Yes — for what / No].
```

## Output Contract
- Regulatory changes affecting Allevio revenue are quantified immediately — CMS Physician Fee Schedule changes are published in November for January 1 effectiveness; every year, Dr. Lewis assesses the net reimbursement impact to Allevio and updates the budget forecast before year-end; "reimbursement rates changed" without a dollar amount is not actionable; "$47K net annual impact from conversion factor reduction and CPT code changes" is actionable; the quantification happens within 2 weeks of the final rule publication
- Proposed rules are monitored, not ignored — a proposed rule that takes 18 months to finalize still provides valuable lead time; Dr. Lewis monitors the CMS NPRM (Notice of Proposed Rulemaking) for the Physician Fee Schedule in July to start modeling the financial impact before the November final rule; similarly, the HIPAA Security Rule NPRM (currently proposed) gives lead time to plan for enhanced security requirements before they become mandatory; proposed rules are in the tracker with expected finalization dates
- Regulatory changes create competitive opportunity, not just compliance burden — a new CMS covered service (e.g., remote patient monitoring, behavioral health integration) represents new revenue for Allevio if the billing infrastructure and clinical protocols are ready before competitors; a new prior authorization requirement that competitors struggle with becomes a differentiator for the practice that had the workflow ready; Dr. Lewis frames regulatory monitoring as both risk management and opportunity identification
- HITL required: Dr. Lewis monitors and synthesizes regulatory changes; CEO receives monthly regulatory summary; Matt Mathison receives quarterly brief; attorney involved for: new regulations with significant legal interpretation questions; FTC/DOJ regulatory matters; OCR enforcement guidance; any regulatory change requiring contract modifications

## System Dependencies
- **Reads from:** CMS.gov (Final Rules, fee schedules), Federal Register, HHS/OCR, AZ agencies, UT DOGM, DOL.gov, IRS.gov, IAPP (privacy), AICPA (tax), industry associations (AHA, IPAA, SHRM)
- **Writes to:** Regulatory change log (SharePoint/RC/<Company>/Regulatory/ChangeLog/); monthly CEO summary; Matt Mathison quarterly brief; risk register updates (new regulatory risks); financial forecast updates (CMS rate changes → Allevio budget)
- **HITL Required:** Dr. Lewis monitors and reports; CEO monthly; Matt Mathison quarterly; attorney for legal interpretation, contract implications, enforcement guidance; financial impact quantification reviewed by controller

## Test Cases
1. **Golden path:** November CMS Physician Fee Schedule Final Rule published → Dr. Lewis reviews rule within 1 week of publication; impact analysis: conversion factor changed (down 1.3%); 3 CPT codes used by Allevio have reimbursement increases; 2 have decreases; net impact: -$23K annual revenue; new covered service: remote physiologic monitoring (CPT 99457) — Allevio does not currently offer but it is a growth opportunity; action: (1) update Allevio revenue forecast for Jan 1 ($23K decrease); (2) notify CEO; (3) flag RPM opportunity for strategic discussion (Q1 planning); (4) update AdvancedMD fee schedule by Dec 15; (5) update MAT Mathison quarterly brief; CEO reviews in next meeting
2. **Edge case:** FTC's rule banning non-compete agreements is blocked by a federal court — what do MBL's non-compete agreements require? → The rule's legal status is uncertain; current status: 5th Circuit blocked the rule nationwide pending litigation; existing non-competes are currently enforceable under state law (AZ, UT, TX have different standards); monitor the litigation timeline; alert: Texas (where HIVE may have employees) has traditionally enforced non-competes; AZ limits non-compete scope; do not tear up existing non-compete agreements while the rule is blocked; update employment attorney on monitoring cadence; flag for Matt Mathison quarterly brief as a pending regulatory risk
3. **Adversarial:** "We can't track every regulatory change — it's too much" → The monitoring is filtered to material changes only; a general industry OSHA ergonomics guidance update is tracked at a low priority; a CMS final rule that changes Allevio reimbursement by $50K/year is high priority; the monitoring is systematic (monthly scan of defined sources for defined entities) but the reporting is filtered (only material changes go to CEO; only High-impact changes go to Matt Mathison); the alternative — not tracking — results in discovering a compliance deadline after it has passed, which is always more expensive than the monitoring investment

## Audit Log
Regulatory change logs retained permanently. Monthly CEO summaries retained. Matt Mathison quarterly briefs retained. Attorney engagement records retained. Financial impact analyses retained by regulation and year. Regulatory calendar retained.

## Deprecation
Retire when portfolio companies have dedicated compliance staff who monitor regulatory changes in their specific domains (healthcare compliance for Allevio; environmental compliance for HIVE) — with Dr. Lewis providing portfolio-level regulatory synthesis and Matt Mathison briefing. Monthly portfolio regulatory summary to CEO and Matt Mathison quarterly brief remain permanent governance requirements.
