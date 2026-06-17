---
name: rc-sox-lite-assessor
description: "Assess and implement SOX-lite internal controls for PE portfolio companies. Use when the user says 'SOX compliance', 'SOX controls', 'Sarbanes-Oxley', 'internal controls over financial reporting', 'ICFR', 'SOX lite', 'PE internal controls', 'investor controls', 'financial controls framework', 'CFO controls', 'management controls', 'internal control framework', 'COSO controls', or 'financial reporting controls'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <assess|design|implement|report>] [--level <baseline|enhanced>]"
---

# SOX-Lite Assessor

Assess and implement SOX-lite internal controls at MBL portfolio companies — establishing the internal controls over financial reporting (ICFR) framework appropriate for private equity-backed companies that are not publicly traded but have investor reporting obligations, potential exit readiness needs, and the risk of financial misstatement or fraud. "SOX-lite" adapts the Sarbanes-Oxley control framework to private company scale: the same control objectives as SOX (accurate financial reporting, prevention of fraud, management accountability) implemented without the formal PCAOB attestation requirement.

## When to Use
- A portfolio company is preparing for a potential sale or recapitalization (exit readiness)
- Matt Mathison requires confidence in financial reporting accuracy across the portfolio
- A significant financial error or near-miss has occurred — improve controls
- Annual controls assessment — are the ICFR controls current and effective?
- A new CFO or controller is hired — review and document the controls environment
- Due diligence preparation — buyers will test controls; get ahead of findings

## SOX-Lite Framework

```
SOX-lite scope for MBL portfolio (COSO framework adapted):
  
  Entity-Level Controls (ELC):
    → Control environment: Tone at the top (THRIVE); financial policies approved by CEO/Matt Mathison
    → Risk assessment: Management identifies financial reporting risks; addressed in controls
    → Control activities: Policies and procedures that address financial reporting risks
    → Information and communication: Financial information is accurate and timely
    → Monitoring: Controls are monitored for effectiveness (internal audit)
    
  Financial Reporting Controls (key areas):
    → Revenue recognition: Revenue recorded accurately and in the right period
    → Accounts payable and procurement: Purchases authorized and recorded accurately
    → Payroll: Payroll calculated correctly; only authorized employees paid
    → Cash management: Bank reconciliations; unauthorized payments prevented
    → Month-end close: Financial statements accurate by close deadline
    → Related-party transactions: Disclosed and approved (Matt Mathison)
    → Journal entries: Non-routine entries reviewed and approved
    
  IT General Controls (ITGC — foundational):
    → Change management: System changes authorized, tested, and approved before deployment
    → Access to programs and data: Financial systems access is restricted by role and reviewed quarterly
    → Computer operations: Backups complete and tested; monitoring in place
    → Program development: New systems or integrations tested and approved
    
  Key controls (minimum for SOX-lite):
    Control 1: Financial statements reviewed by CEO within 7 days of close
    Control 2: Bank accounts reconciled monthly; reconciliation reviewed by CEO or Dr. Lewis
    Control 3: AP payments >$5K require dual approval (Bill.com workflow configured)
    Control 4: QuickBooks access restricted to authorized users; reviewed quarterly
    Control 5: Payroll changes authorized in writing before processing
    Control 6: New vendors approved before first payment (W-9 required)
    Control 7: Non-routine journal entries (>$1K) require CFO/controller approval and documentation
    Control 8: Related-party transactions disclosed to Matt Mathison before execution
    Control 9: Monthly financial statements provided to Matt Mathison by the 10th of the following month
    Control 10: Annual budget approved by CEO and Matt Mathison before fiscal year start
    
  Segregation of duties (SoD) requirements (key):
    → Accounts payable: Invoice entry ≠ Invoice approval ≠ Payment execution
    → Payroll: Payroll entry ≠ Payroll approval ≠ Payroll disbursement
    → Bank access: Check signer ≠ Bank statement reconciler ≠ AP processor
    → Journal entries: Entry preparer ≠ Entry reviewer/approver
    → Revenue: Revenue recording ≠ Revenue collection/cash handling
    
  Compensating controls (when SoD is not achievable at small company size):
    → CEO/Dr. Lewis monthly analytical review (compare actuals to budget and prior year)
    → External review (CPA firm compilation/review)
    → Enhanced monitoring (daily bank statement review by CEO)
    → Increased internal audit sampling of transactions
```

## Output Format

```markdown
# SOX-Lite Controls Assessment — <Company Name>
**Assessment date:** [Date] | **Assessor:** Dr. John Lewis
**Controller/CFO:** [Name] | **CEO:** [Name]
**Matt Mathison aware:** [Date]

---

## Entity-Level Controls

| ELC Component | Assessment | Strength | Gap |
|-------------|-----------|---------|-----|
| Control environment (Tone at top) | [Strong / Adequate / Weak] | THRIVE values; CEO models integrity | |
| Risk assessment | | | |
| Financial policies | | Approved by CEO and Matt Mathison ✅ | |
| Information and communication | | Monthly financials to Matt Mathison ✅ | |
| Monitoring (internal audit) | | Annual audit plan ✅ | |

---

## Key Control Assessment

| # | Control | Design adequate? | Operating effectively? | Evidence | Finding |
|---|---------|-----------------|----------------------|---------|---------|
| 1 | Financial statements reviewed by CEO ≤7 days | ✅ | ✅ Tested | CEO review email timestamps | None |
| 2 | Bank reconciliation — monthly, reviewed | ✅ | ✅ Tested | Reconciliation files with controller sign-off | None |
| 3 | AP dual approval >$5K (Bill.com) | ✅ | ❌ FAIL | 2 payments in sample lacked dual approval | F001 — High |
| 4 | QuickBooks access restricted and reviewed quarterly | ✅ | ⚠️ Partial | Quarterly review not documented | F002 — Medium |
| 5 | Payroll changes authorized in writing | ✅ | ✅ Tested | 10 payroll changes tested; all have written auth | None |
| 6 | New vendor approval + W-9 required | ⚠️ Design gap | N/A | No formal new vendor approval process | F003 — Medium |
| 7 | Non-routine JE approval | ✅ | ✅ Tested | 5 non-routine JEs sampled; all approved | None |
| 8 | Related-party transactions disclosed | ✅ | ✅ | No related-party transactions in period | None |
| 9 | Monthly financials to Matt Mathison by 10th | ✅ | ✅ | 12/12 months on time | None |
| 10 | Annual budget approved by CEO + Matt Mathison | ✅ | ✅ | Budget approval email on file | None |

---

## Segregation of Duties Assessment

| Process | Sufficient SoD? | Compensating control | Risk |
|---------|---------------|---------------------|-----|
| Accounts payable | ✅ 3 roles separated | — | Low |
| Payroll | ✅ 3 roles separated | — | Low |
| Bank/cash | ⚠️ Controller signs checks AND reconciles bank | CEO analytical review monthly | Medium |
| Journal entries | ✅ Entry ≠ Approval | — | Low |

---

## Findings Summary

| # | Finding | Severity | Control | Remediation | Owner | Due |
|---|---------|---------|---------|------------|-------|-----|
| F001 | AP dual approval bypassed on 2 payments | 🔴 High | Control 3 | Bill.com routing corrected; training | Controller | [30 days] |
| F002 | QuickBooks access review not documented | 🟡 Medium | Control 4 | Document quarterly review; add calendar | Dr. Lewis | [60 days] |
| F003 | No formal new vendor approval process | 🟡 Medium | Control 6 | Implement vendor onboarding checklist | Controller | [60 days] |

---

## Exit Readiness Assessment (if sale is being considered)

**Current controls maturity:** [Strong / Adequate / Needs improvement]
**Buyer diligence readiness:** [Ready / Would find [N] High findings / Would find [N] Medium findings]
**Recommended remediation before diligence:** [List with timeline]
**Estimated time to exit-ready controls:** [N months]

---

## Matt Mathison Brief (annual)

[Company] SOX-lite controls assessment [Year]: [N] key controls assessed. High findings: [N] (remediated: [N]; in progress: [N]). Controls posture: [Strong / Adequate / Needs improvement]. Exit readiness: [Ready / Timeline to ready]. Key improvement from prior year: [What].
```

## Output Contract
- SOX-lite is about substance, not documentation theater — a policy document that says "all AP requires dual approval" but where the actual Bill.com workflow allows single approval above the threshold is a documented control that provides no actual risk reduction; the controls assessment tests whether the controls work, not whether they are written down; written controls that do not operate effectively provide false comfort and fail diligence when a buyer actually tests them
- Exit readiness is the strategic motivation for SOX-lite at PE portfolio scale — buyers will conduct financial due diligence that includes controls testing; controls failures found in diligence reduce the purchase price or kill the deal; Dr. Lewis builds controls that will pass external diligence before a transaction is on the table; the controls program is the asset that allows Matt Mathison to tell a buyer "our internal controls have been independently assessed and are operating effectively" — which is both true and a competitive advantage
- Related-party transactions are disclosed to Matt Mathison before execution — any transaction between a portfolio company and a related party (management-owned vendor, family member of CEO, connected entity) must be disclosed to Matt Mathison before it is executed; this is non-negotiable; related-party transactions that are discovered in diligence without prior disclosure are the most damaging diligence finding (suggests concealment, regardless of intent); Dr. Lewis maintains a related-party register and reviews it annually
- HITL required: Dr. Lewis conducts SOX-lite assessment; CEO reviews findings; High findings escalated to CEO within 48 hours; financial fraud indicators escalated to CEO + Matt Mathison + attorney immediately; Matt Mathison receives annual SOX-lite summary; exit readiness assessment shared with Matt Mathison before any sale process begins

## System Dependencies
- **Reads from:** QuickBooks (financial records), Bill.com (AP workflow/approval logs), payroll records, bank statements, rc-controls-tester (controls testing results), rc-audit-plan-builder (audit schedule), rc-internal-audit-report (prior findings)
- **Writes to:** SOX-lite assessment report (SharePoint/RC/<Company>/InternalAudit/SOXLite/); findings tracker; controls documentation; CEO and Matt Mathison annual brief; exit readiness assessment
- **HITL Required:** Dr. Lewis assesses; CEO reviews findings; High findings to CEO within 48 hours; fraud findings to CEO + Matt Mathison + attorney immediately; Matt Mathison annual; exit readiness shared with Matt Mathison before sale process

## Test Cases
1. **Golden path:** Annual SOX-lite assessment for MBL Holdings → 10 key controls assessed; ELC: strong — THRIVE values embedded in operations; CEO models accurate financial reporting; monthly financials to Matt Mathison 12/12 on time ✅; Key controls: 9 pass on design and effectiveness; 1 Finding: QuickBooks has 3 user accounts for former employees not yet deactivated (access review control operating ineffectively) — Medium finding; IT controls: change management is informal (verbal approval of system changes) — Medium finding; design gap; SoD: Bank reconciliation — controller reconciles and has signing authority — compensating control: CEO reviews bank statements monthly (documented); Findings: 2 Medium; remediation plan created; CEO informed; Matt Mathison annual brief sent; exit readiness: adequate controls with 2 medium gaps; recommend resolution before any sale process; estimated 60 days to exit-ready
2. **Edge case:** CEO discovers a payment to a vendor owned by a family member of the controller — was this disclosed? → Related-party transaction investigation triggered; pull all payments to this vendor from QuickBooks; determine when the relationship was established; was there a disclosure to Dr. Lewis and Matt Mathison before payments began? If no: related-party transaction without disclosure is a significant control failure and a governance concern; escalate immediately to CEO and Matt Mathison; attorney involvement; assess whether the transaction was at arm's length (market rate); document the investigation; implement a related-party disclosure requirement going forward; if concealment is suspected: fraud investigation protocol
3. **Adversarial:** "We're private — SOX doesn't apply to us" → Correct on the legal requirement; SOX applies to public companies; incorrect on the practical reality: private equity-backed companies prepare for transactions where buyers apply SOX-equivalent scrutiny; investors (Matt Mathison) have fiduciary obligations that require confidence in financial reporting; lenders conducting covenant compliance testing rely on accurate financials; the SOX-lite framework is the private company equivalent that provides the same assurance without PCAOB attestation; the cost of implementing it is low; the cost of failing diligence is transaction value loss

## Audit Log
SOX-lite assessments retained annually. Findings and remediation records retained permanently. Related-party transaction register retained permanently. Exit readiness assessments retained. Matt Mathison annual briefs retained. Attorney engagement records retained permanently.

## Deprecation
Retire when portfolio companies have dedicated CFO/Controller functions with formal ICFR documentation and external audit/review providing independent assurance — with Dr. Lewis reviewing controls assessment findings and advising on IT general controls. Matt Mathison annual controls summary is a permanent governance requirement.
