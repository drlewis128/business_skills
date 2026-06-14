---
name: contract-compliance-tracker
description: "Track supplier contract compliance and manage contract milestones. Use when the user says 'contract compliance', 'supplier contract tracking', 'contract milestones', 'contract obligations', 'are suppliers meeting their contracts', 'contract renewal tracking', 'SLA compliance', 'contract monitoring', 'contract calendar', or 'vendor contract management'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|all>] [--mode <audit|calendar|compliance>]"
---

# Contract Compliance Tracker

Track supplier contract compliance — are suppliers meeting their contractual obligations? And manage contract milestones — when do contracts expire, when do auto-renewals trigger, and what needs to happen before each deadline? Contracts that are signed and filed are not managed contracts. Without tracking, you miss auto-renewal windows, can't enforce SLAs, and lose the leverage that contracts create.

## When to Use
- Setting up contract tracking for a new portfolio company
- A contract is approaching auto-renewal — need time to decide
- Supplier is missing SLAs — need documentation for enforcement
- Annual contract review — which contracts are due for renegotiation?
- Matt Mathison wants visibility into contract obligations and renewals

## Contract Compliance Framework

```
Two sides of contract compliance:
  
  1. Supplier compliance (are they doing what they promised?):
     SLA compliance: On-time delivery, quality, support response time
     Pricing compliance: Are they billing at contracted rates?
     Terms compliance: Payment terms, insurance, compliance certifications
     Reporting compliance: Are they providing contractual reports?
  
  2. Buyer compliance (are WE doing what we promised?):
     Payment compliance: Paying on time per terms
     Volume commitments: Meeting minimum purchase commitments
     Exclusivity: Not buying from excluded competitors if agreed
     Notice requirements: Giving required notice for renewals, terminations
```

## Output Format

```markdown
# Contract Compliance Tracker — <Entity / Period>
**Date:** <date> | **Owner:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE / Portfolio>
**Contracts tracked:** <N> | **Total contract value:** $X/year

---

## Contract Calendar (Next 90 Days)

| Supplier | Entity | Contract value | Action required | Action deadline | Days remaining |
|---------|--------|--------------|----------------|----------------|---------------|
| AdvancedMD | Allevio | $X/year | Renewal decision | <date> | 28 days |
| Cardinal Health | Allevio | $X/year | Auto-renewal window closes | <date> | 45 days |
| [Contractor] | HIVE | $X/year | Notice to cancel (if not renewing) | <date> | 15 days 🔴 |
| Microsoft | MBL | $X/year | No action — auto-renews favorably | <date> | 60 days |

**🔴 Urgent (action required within 15 days): 1 contract**
**Action: [Contractor] HIVE — send notice to cancel OR confirm renewal intent by <date>**

---

## Contract Registry

| # | Supplier | Entity | Tier | Value/year | Start | End | Auto-renewal? | Notice period | Status |
|---|---------|--------|------|-----------|-------|-----|-------------|-------------|--------|
| 1 | AdvancedMD | Allevio | A | $X | <date> | <date> | Yes — 90 days | 90 days | 🟡 Renewal due |
| 2 | Cardinal Health | Allevio | A | $X | <date> | <date> | Yes — 30 days | 30 days | ✅ Active |
| 3 | GoHighLevel | MBL | B | $X | <date> | <date> | Monthly | Cancel 30 days | ✅ Active |
| 4 | [Contractor] | HIVE | B | $X | <date> | <date> | No | 30 days | 🔴 Expired — fix |
| 5 | Microsoft | MBL | B | $X | <date> | <date> | Annual | 30 days | ✅ Active |

**No contract (but should have one):** <List categories with recurring spend >$5K/year without a contract>

---

## SLA Compliance Audit

| Supplier | SLA metric | Contracted target | Actual (last 90 days) | Compliance | Evidence |
|---------|-----------|-----------------|---------------------|-----------|---------|
| AdvancedMD | System uptime | 99.9% | 99.7% | 🔴 Below target | System logs |
| AdvancedMD | Support response | <4 hours | 6.2 hours avg | 🔴 Below target | Ticket log |
| Cardinal Health | On-time delivery | ≥95% | 91% | 🟡 Below target | PO receipt log |
| GoHighLevel | API uptime | 99.5% | 99.6% | ✅ Compliant | API monitoring |

**SLA violations requiring formal notice:**
- AdvancedMD: 2 SLA misses (uptime + support response) → formal written notice required per contract Section X.X
  - Notice triggers: 30-day cure period; if not resolved, service credit or termination for cause
  - Action: Dr. Lewis drafts formal notice; sends to AdvancedMD account manager and legal

---

## Pricing Compliance Audit

| Supplier | Contracted unit price | Billed unit price | Variance | Status | Action |
|---------|---------------------|-----------------|---------|--------|--------|
| Cardinal Health | $X/unit | $X/unit | $0 | ✅ Correct | None |
| [Supplier] | $X/service | $X/service | +$0.50 (+5%) | 🔴 Overbilling | Request credit memo |
| AdvancedMD | $X/month | $X/month | $0 | ✅ Correct | None |

**Overbilling identified:** $X (annualized) — request credit memo immediately

---

## Our Compliance (Buyer Obligations)

| Contract | Our obligation | Status | Risk |
|---------|--------------|--------|------|
| Cardinal Health | Minimum annual purchase: $X | ✅ On track to meet | None |
| [Supplier] | Exclusivity: No competing product | ✅ Compliant | None |
| AdvancedMD | Net 30 payment terms | ⚠️ 2 invoices paid late this quarter | Vendor may impose late fee |

---

## Contract Compliance Action Plan

| Action | Supplier | Priority | Owner | Due date |
|--------|---------|---------|-------|---------|
| Send formal SLA violation notice | AdvancedMD | 🔴 Critical | Dr. Lewis | <date + 3 days> |
| Request credit memo for overbilling | [Supplier] | 🔴 High | Dr. Lewis | <date + 5 days> |
| Renewal decision: AdvancedMD | Allevio | 🟡 High | Dr. Lewis | <date + 28 days> |
| Renewal/cancel decision: [Contractor] HIVE | HIVE | 🔴 Urgent (15 days) | Dr. Lewis | <date + 15 days> |
| Execute contract for [recurring spend category] | MBL | 🟡 Medium | Dr. Lewis | 30 days |

---

## Auto-Renewal Risk Management

| Contract | Auto-renewal date | Notice period | Notice must be sent by | Action |
|---------|-----------------|-------------|----------------------|--------|
| AdvancedMD | <date> | 90 days | <date - 90 days> | Review and decide; calendar set |
| Cardinal Health | <date> | 30 days | <date - 30 days> | Calendar set; likely renew |
| [Contractor] HIVE | <date> | 30 days | **<Today - 15 days> 🔴 PAST DUE** | Send notice TODAY |

**Critical: Auto-renewal trap detected.** [Contractor] HIVE auto-renewal window has closed. Options: (1) Send notice immediately (may be late — check contract for grace period); (2) Accept renewal for 1 year; begin replacement sourcing immediately if not renewing.
```

## Output Contract
- 90-day contract calendar always shown — the most common contract management failure is missing an auto-renewal notice window
- SLA violations always documented with specific evidence — "supplier is performing poorly" is not enforceable; "SLA of 99.9% uptime; actual 99.7% per system logs attached" is
- Overbilling always flagged immediately — overpayments not recovered quickly become lost money
- Auto-renewal traps always highlighted — missed auto-renewal windows are the most avoidable and costly contract management failure
- HITL required: Dr. Lewis manages contract compliance and calendar; formal SLA violation notices reviewed by Dr. Lewis and sent with entity leadership awareness; renewal decisions >$25K require Matt Mathison; credit memo requests approved by Dr. Lewis; contract terminations require Dr. Lewis + Matt Mathison

## System Dependencies
- **Reads from:** Contract copies (SharePoint/Legal/Contracts), supplier performance data, invoice data (Bill.com)
- **Writes to:** Contract registry and calendar (SharePoint/Operations/Procurement/Contracts); SLA violation notices; credit memo requests
- **HITL Required:** Dr. Lewis manages; Matt Mathison on renewals >$25K; SLA notices require entity leadership awareness; terminations require Matt Mathison

## Test Cases
1. **Golden path:** Quarterly contract compliance review → 15 contracts tracked; 1 urgent auto-renewal (15 days); 2 SLA violations (AdvancedMD); 1 overbilling ($X); 1 contract with no agreement (recurring spend >$5K/year); actions: SLA notice drafted; credit memo requested; renewal decision meeting scheduled with Matt Mathison; contract initiated for uncontracted category; auto-renewal notice sent; all actions tracked
2. **Edge case:** Auto-renewal window has already passed by 5 days → review the contract for grace period language; if no grace period, the contract has auto-renewed; accept this reality; begin renegotiation process immediately if the terms are unfavorable; use this as evidence to tighten the contract management calendar going forward; never panic-terminate a contract without understanding the implications
3. **Adversarial:** Supplier disputes the SLA violation claim ("your logs are wrong; ours show 99.9%") → contracts typically specify whose measurement methodology governs; if the contract doesn't specify, negotiate a mutually agreed measurement approach; if disputed SLA = disputed credit = potential dispute, escalate to Dr. Lewis + legal counsel; document all communications; the formal written notice is still the right first step regardless of the dispute

## Audit Log
Contract registry maintained. SLA violation notices retained. Credit memo requests retained. Renewal decisions documented. Auto-renewal calendar maintained. Overbilling recoveries documented.

## Deprecation
Retire when MBL has a CLM (Contract Lifecycle Management) platform with automated renewal alerts, SLA tracking, and compliance monitoring built in.
