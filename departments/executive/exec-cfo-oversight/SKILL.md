---
name: exec-cfo-oversight
description: "Provide CFO-level oversight and financial governance for MBL Partners and portfolio companies. Use when the user says 'CFO oversight', 'financial oversight', 'financial governance', 'finance review', 'financial controls', 'CFO function', 'financial management', 'finance function', 'financial reporting', 'entity financial review', 'monthly financials', 'review the financials', 'financial close', 'monthly close', 'budget vs actual', 'budget variance', 'financial audit', 'financial controls review', 'QuickBooks review', 'Bill.com review', 'AP management', 'accounts payable', 'expense management', 'cash management', 'payroll review', 'entity financial health', 'financial anomaly', 'billing error', 'financial reconciliation', 'finance controls', or 'show me the financials'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <all|MBL|Allevio|HIVE|Column6>] [--period <monthly|quarterly|annual>] [--action <close|review|reconcile|audit|anomaly>] [--system <QuickBooks|BillCom|payroll>]"
---

# Exec CFO Oversight

Provide CFO-level financial oversight and governance for MBL Partners and its portfolio companies — maintaining the financial controls, reporting cadence, and anomaly detection that ensures MBL's financial data is accurate, its obligations are met on time, and Matt Mathison and LPs always have a reliable picture of the portfolio's financial health. Dr. Lewis is not the CFO at any entity, but he provides the MBL-level financial governance oversight that ensures each entity's finance function is operating correctly, the systems of record (QuickBooks, Bill.com) reflect reality, and financial risks are surfaced before they become crises.

## When to Use
- Monthly financial close review (all entities; due by the 15th of the following month)
- Budget vs. actual variance review (monthly; flagged to Matt Mathison if variance >10%)
- A financial anomaly is detected in QuickBooks or Bill.com
- Matt Mathison asks "where are we financially right now?"
- Annual audit preparation
- A capital request or expense needs financial context and controls review

## CFO Oversight Framework

```
FINANCIAL GOVERNANCE STRUCTURE:

  Systems of record:
    QuickBooks: Financial records (GL; P&L; balance sheet; cash position) — primary system
    Bill.com: AP management (bills; vendor payments; approval workflow)
    Entity payroll systems: Payroll (Allevio; HIVE; Column6 — entity-level; not MBL-managed)
    
  Financial reporting cadence:
    Monthly close: by the 15th of the following month
    Monthly review: Matt Mathison receives financial summary by the 20th
    Quarterly: entity P&Ls reviewed in exec-portfolio-review
    Annual: audited financials prepared by external auditor (one per entity)
    LP: quarterly financial summary included in exec-lp-reporting

MONTHLY FINANCIAL REVIEW CHECKLIST:

  For each entity (by the 20th of each month):
  
    CASH POSITION:
      □ Current cash balance vs. plan
      □ Weeks of operating runway (cash / avg monthly burn)
      □ Upcoming payroll obligations (next 2 payroll dates; amount)
      □ Upcoming large AP obligations (>$10K due in next 30 days)
      
    REVENUE:
      □ Revenue vs. plan (% variance; $ variance)
      □ Revenue by customer/segment (concentration check — any customer >20%?)
      □ Collections rate: AR aging (current; 30-60 days; 60-90 days; 90+ days)
      □ Entity-specific:
          Allevio: employer group PMPM received vs. expected; AdvancedMD collection rate
          HIVE: royalties received vs. projected; Covercy royalty reconciliation
          Column6: IO invoiced vs. collected; agency AR aging
          
    EXPENSES:
      □ Total expenses vs. plan (% variance)
      □ Any unbudgeted expense >$5K? (Requires explanation; >$10K requires Dr. Lewis review)
      □ Payroll as % of revenue (benchmark: <60% for Allevio; <45% for Column6)
      □ Bill.com: any AP anomaly (duplicate invoice; unusual vendor; unexpected amount)?
      
    EBITDA:
      □ EBITDA vs. plan
      □ EBITDA margin trend (last 3 months; is margin improving or deteriorating?)
      
    FINANCIAL CONTROLS CHECKS:
      □ Bank reconciliation completed for the month?
      □ All employee expense reports submitted and approved?
      □ No open bill approvals in Bill.com older than 10 business days?
      □ Payroll tax deposits current?

ANOMALY DETECTION PROTOCOL:

  Dr. Lewis reviews Bill.com and QuickBooks for anomalies monthly:
  
    BILL.COM anomalies to flag:
      □ Duplicate invoice (same vendor; same amount; same date range)
      □ Invoice from an unknown vendor (not in the approved vendor list)
      □ Invoice for an unusually round number (exact $5K, $10K, $25K — potential fraud signal)
      □ Invoice with unusual payment terms (immediate payment for a vendor who normally gets 30 days)
      □ Approval bypass (bill approved without the standard workflow)
      
    QUICKBOOKS anomalies:
      □ Journal entry without a supporting document
      □ Revenue recognition that doesn't match the billing cycle
      □ Expense categorized to an unusual account (e.g., software expense in the "travel" account)
      □ Cash balance change that doesn't reconcile with the bank statement
      
    Escalation: any anomaly → Dr. Lewis investigates within 24 hours
      If explained: documented and closed
      If unexplained: Matt Mathison notification within 24 hours
      If potential fraud: Matt Mathison + legal counsel same-day

CAPITAL CONTROLS (integrated with exec-capital-allocation):

  Dr. Lewis reviews all capital commitments against the approved capital plan:
  
    <$10K: Dr. Lewis approves for MBL-level expenses
    $10K-$50K: Dr. Lewis + entity CEO concurrence
    $50K-$250K: Matt Mathison notification (24hr objection window)
    >$250K: Matt Mathison explicit approval
    
  Bill.com approval workflow enforces these thresholds:
    All expenses >$1K routed through Bill.com approval workflow
    Dr. Lewis is the approval authority for MBL expenses
    Entity CFO/Controller is the approval authority for entity expenses up to the entity threshold
    Matt Mathison receives the monthly capital deployment summary regardless of amount
```

## Output Format

```markdown
# Monthly Financial Summary — [Entity] — [Month Year]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison | **Close date:** [Date]

---

## Cash Position

| Item | Amount |
|------|--------|
| Current cash balance | $[X] |
| Operating runway | [N] weeks |
| Next payroll | $[X] on [Date] |
| Large AP due (30 days) | $[X] |

---

## Revenue Summary

| Metric | Plan | Actual | Variance | Status |
|--------|------|--------|---------|--------|
| Revenue | $[X] | $[X] | [%] | 🟢/🟡/🔴 |
| Collections rate | [Target%] | [Actual%] | [%] | 🟢/🟡/🔴 |
| AR 90+ days | $[X] | — | — | 🟢/🟡/🔴 |

---

## EBITDA Summary

| Metric | Plan | Actual | Variance |
|--------|------|--------|---------|
| Revenue | $[X] | $[X] | [%] |
| Expenses | $[X] | $[X] | [%] |
| EBITDA | $[X] | $[X] | [%] |
| EBITDA margin | [%] | [%] | [pts] |

---

## Anomalies

[Any anomaly flagged this month with investigation status]

---

## Controls Status

- [ ] Bank reconciliation: [Complete / Pending]
- [ ] Bill.com workflow: [No open approvals >10 days / [N] items pending]
- [ ] Expense reports: [Current / [N] overdue]
```

## Output Contract
- Financial close by the 15th — no exceptions; the monthly financial close is due by the 15th of the following month; an entity that closes on the 25th means Matt Mathison is reviewing 3-week-old data when he receives the summary on the 28th; Dr. Lewis enforces the close deadline and flags any entity that misses it; the escalation for a missed close: Matt Mathison notification + entity CFO/Controller direct conversation; two consecutive missed close deadlines → Matt Mathison conversation with the entity CEO
- Anomalies are investigated within 24 hours — a Bill.com or QuickBooks anomaly that is discovered and logged "for the monthly review" is a risk management failure; if something doesn't look right, Dr. Lewis investigates it today, not at the end of the month; most anomalies turn out to be benign (miscategorized expense; duplicate that was caught before payment); but the ones that aren't benign are caught by investigating promptly, not by waiting
- Variance >10% gets Matt's attention — any budget variance (positive or negative) greater than 10% on revenue or expenses is flagged to Matt Mathison in the monthly financial summary; the variance doesn't need to be a crisis to be flagged; it's information Matt needs to understand the portfolio trajectory; Dr. Lewis prepares a one-sentence explanation of the variance (what caused it; is it timing, structural, or one-time) with every >10% variance flag
- HITL required: Matt Mathison receives the monthly financial summary by the 20th; any anomaly that cannot be explained within 24 hours goes to Matt; potential fraud signals go to Matt + legal same-day; capital commitments above Dr. Lewis authority require entity CEO concurrence or Matt approval per the thresholds; all annual audits are reviewed by Matt Mathison before LP or board distribution; Dr. Lewis is the financial controls oversight function — the entity finance teams (Controller; CFO) are responsible for the entity-level close and data; Dr. Lewis is the audit and anomaly detection layer above them

## System Dependencies
- **Reads from:** QuickBooks (all entities — GL; P&L; balance sheet; cash); Bill.com (AP management; approval workflow; vendor payments); Allevio: AdvancedMD (billing and collection data); HIVE: Covercy (royalty payment reconciliation); Column6: DSP reports (IO invoicing vs. collection); exec-capital-allocation (approved capital plan — the benchmark against which actual spending is reviewed)
- **Writes to:** Monthly financial summaries (SharePoint → ExecutiveSupport → FinancialReporting → [Entity] → [YYYY]-[MM]); exec-kpi-dashboard (financial metrics — cash; EBITDA; collection rate — feed into the dashboard); exec-portfolio-review (quarterly financials feed into the portfolio review); exec-lp-reporting (quarterly financial data for LP reports); exec-action-tracker (financial close deadlines; anomaly investigation actions)
- **HITL Required:** Matt Mathison receives monthly financial summary by the 20th; anomalies unexplained after 24 hours go to Matt; potential fraud goes to Matt + legal same-day; capital threshold approvals per exec-capital-allocation; annual audit reviewed by Matt before distribution; Dr. Lewis is the oversight layer — entity finance teams own the close; Dr. Lewis audits and escalates

## Test Cases
1. **Golden path:** Monthly close for Allevio; close completed by entity Controller on the 12th; Dr. Lewis reviews by the 14th; Revenue: $1.24M vs. $1.20M plan (+3% — 2 new employer groups activated in the final week; positive variance explained); EBITDA: $287K vs. $265K plan (+8%); Cash: $1.8M (18 weeks runway; comfortable); Bill.com: 3 invoices reviewed; one anomaly identified — invoice from "Phoenix Office Supplies LLC" for $3,450 (vendor not on approved list); investigation: Allevio COO confirms this is a legitimate new vendor approved informally; Dr. Lewis: "Add to the approved vendor list and route future invoices through the standard approval workflow — no off-list vendors going forward." Monthly summary to Matt by the 16th. No critical flags. Matt: "Clean month. Good work."
2. **Edge case:** HIVE royalty reconciliation shows $18K discrepancy between Covercy royalty distribution records and QuickBooks cash receipt entries → Dr. Lewis: "This is a timing or recording discrepancy — most likely a Covercy payment that hit the bank but wasn't recorded in QuickBooks yet, or a QuickBooks entry that doesn't match the Covercy statement. I'm investigating today. If it's not resolved by tomorrow, I'm escalating to you and to the HIVE Controller." Investigation reveals: 3 Covercy payments from Q3 were recorded in Q4 books; timing adjustment; no actual discrepancy in cash. Dr. Lewis: "Resolved — timing issue in the books. Controller has adjusted. No further action needed." Anomaly closed in the tracker.
3. **Adversarial:** An entity employee submits a $7,500 expense report with minimal documentation ("team building event") → Dr. Lewis: "This requires documentation before approval. At $7,500, this is a significant unbudgeted expense that needs: (1) the event description and attendees, (2) the business purpose aligned to the operating plan, and (3) receipts. I'm holding the approval until those are provided. The entity CEO is cc'd on the request. This is not a personal audit — it's the standard for any expense above $5K that wasn't in the approved budget. If the event was legitimate, the documentation takes 10 minutes." Employee provides documentation. Event was legitimate. Dr. Lewis approves. "Going forward: any team event >$2,500 should be pre-approved, not submitted after the fact."

## Audit Log
All monthly financial summaries retained by entity and month. Close date records retained (was the close on time?). Anomaly investigation records retained (what was flagged; what was found; how it was resolved). Variance >10% explanation records retained. Capital commitment records retained. Potential fraud incident records retained. Annual audit records retained.

## Deprecation
Retire when each entity has a qualified CFO or Controller who manages the financial close and reporting independently — with Dr. Lewis providing the portfolio-level financial oversight, the AI/technology expense governance, and Matt Mathison retaining the monthly financial review and capital approval authority.
