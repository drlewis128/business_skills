---
name: fin-integration-accounting
description: "Manage post-acquisition accounting integration for new portfolio entities. Use when the user says 'integration accounting', 'post-acquisition accounting', 'acquisition integration', 'new entity accounting', 'onboard accounting', 'accounting integration', 'Day 1 accounting', 'new entity setup', 'QuickBooks setup', 'accounting setup', 'chart of accounts setup', 'COA alignment', 'chart of accounts alignment', 'Bill.com setup', 'accounting systems integration', 'integrate financials', 'accounting onboarding', 'accounting migration', 'new portfolio company accounting', 'integrate QB', 'integrate QuickBooks', 'finance integration', 'finance onboarding', 'day one finances', 'first month close', 'opening balance sheet', 'opening balance', 'post-close accounting', or 'portfolio company onboarding'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <entity-name>] [--stage <day1|week1|month1|quarter1|normalized>] [--action <setup|reconcile|review|report>] [--focus <quickbooks|bill-com|controls|coa|close>]"
---

# Fin Integration Accounting

Manage post-acquisition accounting integration for new portfolio entities — establishing the financial infrastructure (QuickBooks; Bill.com; controls; reporting templates), aligning the chart of accounts to MBL's standard, completing the opening balance sheet, and getting the new entity to a clean first-month close. Accounting integration is the operational bridge between the deal model and the operating model: the deal was underwritten on certain financial assumptions; the integration accounting establishes whether those assumptions were reasonable, catches any Day 1 surprises (hidden liabilities; AR quality issues; payroll irregularities), and sets up the financial infrastructure to track VCP milestones. Speed matters — every month without clean financials is a month without visibility into portfolio performance.

## When to Use
- A new entity is acquired and Day 1 financial setup is required
- An existing portfolio entity needs a financial systems overhaul
- The first-month close is approaching for a newly acquired entity
- Matt Mathison asks about the integration status of a new acquisition

## Integration Accounting Framework

```
INTEGRATION TIMELINE (90-DAY PLAYBOOK):

  PRE-CLOSE (Weeks -2 to 0):
    □ Review target's existing accounting system (QuickBooks? Other?)
    □ Review chart of accounts and flag alignment gaps with MBL standard
    □ Review existing AP workflows (Bill.com? Paper? Email?)
    □ Request list of all bank accounts, credit cards, vendor relationships
    □ Identify any accounting risks from diligence: open disputes; unusual accruals; payroll issues
    □ Plan the Day 1 accounting setup sequence
    
  DAY 1 (Close date):
    □ Open new QuickBooks entity (or migrate existing if data quality is acceptable)
    □ Record opening balance sheet (from PPA; from fin-deal-financial-model)
    □ Set up bank account connections in QuickBooks (bank feeds)
    □ Set up Bill.com for the entity (approval workflows; vendor list)
    □ Confirm who has signatory authority on accounts (entity CEO + Dr. Lewis for business-critical payments)
    □ Brief entity leadership on MBL financial controls and approval requirements
    □ Cancel any unauthorized access to financial accounts (change passwords; remove seller's bookkeeper)
    
  WEEK 1:
    □ Reconcile cash: opening balance per bank = opening balance per QuickBooks
    □ Review AR aging inherited from the seller (document any uncollectible AR)
    □ Review AP aging: are there hidden payables the seller didn't disclose? (diligence validation)
    □ Set up payroll access (confirm employee roster; correct pay rates; W-4 documentation)
    □ Identify any prepaid expenses or deposits that need to be recognized
    □ Map all vendor relationships to the MBL approved vendor list (new vendors require Dr. Lewis approval)
    
  MONTH 1 (first full month of MBL ownership):
    □ Complete the first month-end close per fin-entity-close procedures
    □ Reconcile all bank accounts
    □ Confirm revenue recognition method is aligned with MBL standard
    □ Confirm payroll expense is correctly coded (by department; by cost center)
    □ Calculate first month EBITDA: does it align with the deal model's expectations?
    □ Identify any Day 1 surprises (liabilities or revenue issues not in diligence)
    □ Present Month 1 financial summary to Matt Mathison
    
  QUARTER 1 (first full quarter of MBL ownership):
    □ Complete purchase price allocation (PPA) if not finalized at close
    □ Begin management reporting aligned to MBL standard templates
    □ Complete integration into fin-entity-consolidation scope
    □ Set up KPI dashboard for the new entity
    □ Confirm OKRs and VCP milestones established and tracked
    □ Normalize accounting: any legacy accounting practices that don't align to MBL standard — correct now

CHART OF ACCOUNTS ALIGNMENT:

  MBL STANDARD COA STRUCTURE:
    Income:
      4000 - Revenue (primary)
      4100 - Revenue by entity-specific category
      4900 - Other income
    Cost of Revenue:
      5000 - Direct costs / COGS
    Operating Expenses:
      6000 - Payroll and benefits
      6100 - Marketing and advertising
      6200 - Technology and software
      6300 - Facilities and occupancy
      6400 - Professional fees
      6500 - Insurance
      6900 - Other operating expenses
    Non-Operating:
      7000 - Interest expense / income
      
  New entity COA: map existing COA to MBL standard
  Reclassifications: reclassify any misclassified accounts at acquisition date
  Custom categories: add entity-specific accounts within MBL structure (e.g., Allevio: 4110 PMPM revenue; 4120 clinical billing revenue)

DAY 1 FINANCIAL SURPRISES PROTOCOL:

  If diligence missed a liability or asset quality issue:
    Document: what was found, when, and estimated dollar impact
    Quantify: does this affect purchase price? (indemnification claim?)
    Notify Matt Mathison: same day if >$10K impact
    Legal review: if potential purchase price adjustment claim, involve legal
    QuickBooks: record the item as discovered; do not hide or defer
```

## Output Format

```markdown
# Integration Accounting Status — [Entity Name]
**Close date:** [Date] | **Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Integration Checklist Status

| Phase | Item | Status | Owner | Notes |
|-------|------|--------|-------|-------|
| Day 1 | QuickBooks setup | ✅ Complete | Dr. Lewis | |
| Day 1 | Bill.com setup | ✅ Complete | Dr. Lewis | |
| Day 1 | Bank account access | ✅ Confirmed | Dr. Lewis | |
| Week 1 | Cash reconciliation | ✅ Clean | Dr. Lewis | $[X] opening balance confirmed |
| Week 1 | AR quality review | ⚠️ Issue | Dr. Lewis | $[X] aged AR at risk |
| Month 1 | First close | 🔲 Pending | Dr. Lewis + [bookkeeper] | Due [date] |

---

## Day 1 Surprises

| Item | Discovery date | Dollar impact | Action | Status |
|------|---------------|-------------|--------|--------|
| [Hidden AP] | [Date] | $[X] | Recorded in QB; reviewed for indemnity | Open |

---

## Month 1 EBITDA vs. Deal Model

| | Deal model (Month 1) | Actual (Month 1) | Variance |
|-|---------------------|-----------------|---------|
| Revenue | $[X] | $[X] | $[+/-X] |
| EBITDA | $[X] | $[X] | $[+/-X] |
| EBITDA margin | [%] | [%] | [+/-pp] |

**Explanation of variance:** [If any significant variance, root cause here]
```

## Output Contract
- No legacy systems by Month 3 — the new entity's financial reporting must be on MBL's standard systems (QuickBooks; Bill.com) within 90 days of close; legacy AP systems (email approvals; paper checks; seller's bookkeeper access) are shut down within Week 1; legacy financial reporting that doesn't match MBL's COA structure is reclassified within Month 1; at Month 3, the entity should be indistinguishable in its financial processes from a long-standing portfolio company
- Day 1 surprises go to Matt Mathison same day — there are almost always surprises in the first 30 days of ownership: an undisclosed payable, a customer dispute the seller knew about, a payroll irregularity, an AR write-off that was hidden in diligence; Dr. Lewis documents every discovery, quantifies the impact, and notifies Matt Mathison the same day for anything >$10K; small surprises are logged and included in the Month 1 summary; the pattern of surprises is also data — many surprises suggest diligence quality issues to calibrate on for future deals
- Month 1 EBITDA vs. deal model is the accountability moment — the Month 1 actuals are compared to what the deal model projected for Month 1; a material variance (>15% EBITDA shortfall vs. plan in Month 1) is a red flag that requires a root cause conversation with Matt Mathison; "the deal model was wrong" is an acceptable finding if identified quickly and transparently; the right response is to recalibrate the operating model, adjust the VCP milestones, and be honest with Matt and LPs about the updated outlook; hiding a Month 1 miss is never acceptable
- HITL required: Dr. Lewis confirms all Day 1 financial setups (QuickBooks; Bill.com; bank access) before the entity CEO can make any payments above $1K; Day 1 surprises >$10K go to Matt same day; Month 1 close and EBITDA vs. plan reviewed by Matt Mathison; PPA formalized within 12 months (external valuation for significant acquisitions); any legacy accounting practices that affect prior period financial statements (restatement risk) are immediately disclosed to Matt and legal

## System Dependencies
- **Reads from:** Deal closing documents (purchase agreement; PPA; disclosure schedules); target's existing financial statements; fin-deal-financial-model (deal model assumptions for Month 1 comparison); fin-entity-close (first close procedures)
- **Writes to:** QuickBooks (new entity setup; opening balance sheet); Bill.com (new entity setup; AP workflow); integration status tracker (SharePoint → Finance → Deals → [Entity] → Integration); Day 1 surprise log (SharePoint → Finance → Deals → [Entity] → Integration → Surprises); Matt Mathison notifications; fin-entity-consolidation (new entity added to consolidation scope)
- **HITL Required:** Dr. Lewis confirms all Day 1 setups before entity CEO payment authority; surprises >$10K → Matt same day; Month 1 close reviewed by Matt; PPA finalization involves external valuation specialist and auditors; any restatement risk → Matt + legal immediately; entity CEO briefed on MBL financial controls by Dr. Lewis personally (not delegated)

## Test Cases
1. **Golden path:** Regional MSO acquisition closes June 28; Day 1: QuickBooks entity "Allevio Mountain View" created by June 28 EOD; Bill.com entity connected July 1; bank access transferred to entity CEO + Dr. Lewis signatory authority; seller's bookkeeper access revoked. Week 1 (June 29 - July 5): cash reconciliation: opening bank balance $287K matches QuickBooks opening balance; AR aging reviewed: $412K total AR, $28K aged 90+ days (documentation shows 2 groups who pay late consistently — collectible; noted); AP aging: $83K total AP (all match diligence disclosure — no surprises). Month 1 close (July 1-31): revenue $118K vs. $122K deal model (-3.3%); EBITDA $14.2K vs. $15.6K deal model (-9% — within normal range); Month 1 EBITDA margin 12% vs. 12.8% plan. Summary to Matt July 20: "Integration is clean. No Day 1 surprises. Month 1 is 9% below plan on EBITDA — primarily timing (two employer group payments arrived August 2 vs. July 31). July was a full month clean close. Q3 trajectory looks on plan."
2. **Edge case:** During Week 1, discover that the seller had a $75K payroll tax deposit that was missed (federal 941 deposit from Q1 not paid) → Dr. Lewis: "Day 1 surprise — material. Found $75K federal payroll tax liability (Q1 941 deposit, 4 months overdue) that was not disclosed in diligence. Impact: (1) IRS penalties and interest are accruing ($8-12K estimated); (2) this is a direct purchase price adjustment claim under the representations and warranties (seller represented all taxes were current). Calling Matt now. Immediate actions: (1) record the $75K liability and estimated $10K penalties in QuickBooks; (2) draft the payroll tax payment for ASAP submission (stops penalty clock); (3) legal will send a formal notice to the seller under the indemnification provisions of the purchase agreement. I need Matt's approval to file the payment ($85K including penalties)."
3. **Adversarial:** Entity CEO from the seller's management team pushes back on MBL's financial controls ("we never had to get approval for vendor payments; this slows us down") → Dr. Lewis: "I understand the friction — this is a real change from how you operated before. Here's why the controls exist: (1) MBL has LP capital deployed in this business; those LPs have a right to know that their capital is protected by financial controls; (2) the approval thresholds are calibrated to minimize friction — you have full autonomy for anything under $1,000 (Controller approval); you need my approval for $1K-$10K (which takes 24 hours maximum); only truly large commitments ($50K+) require advance notification. (3) These controls exist to protect you too — financial controls prevent fraud, and fraud at a portfolio company comes back on the entity CEO personally. My goal is to make this as frictionless as possible within the control structure. What specific approvals are causing the most friction? Let's solve the process problem, not remove the control."

## Audit Log
Integration status tracker retained (all checklist items with completion dates). Day 1 setup records (QuickBooks; Bill.com). Day 1 surprise log retained. Month 1 EBITDA vs. plan retained. PPA documentation. Seller's bookkeeper access revocation record. First close workpapers.

## Deprecation
Retire when the entity has completed its first year under MBL ownership, has a clean financial infrastructure, and is operating on MBL standard systems — at which point the ongoing management of the entity's accounting transitions fully to fin-entity-close and the standard portfolio finance skills.
