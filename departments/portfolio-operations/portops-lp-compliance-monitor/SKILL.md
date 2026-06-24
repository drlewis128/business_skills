---
name: portops-lp-compliance-monitor
description: "LP compliance monitor, fund agreement compliance, LPA obligations, waterfall accuracy verification, clawback provision tracker, LP reporting obligations, SEC compliance exempt offering, Form D filing, state blue sky filings, fund document currency, limited partnership agreement tracking, subscription agreement review, side letter compliance, preferred return calculation audit, carried interest compliance, clawback exposure tracker, GP clawback risk, securities law compliance, LP disclosure requirements, Matt Mathison compliance authorization"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<audit | waterfall-check | clawback-exposure | form-d-status | lpa-obligations | document-currency>"
---

# LP Compliance Monitor

Tracks and audits all fund-level compliance obligations for HIVE Partners — LPA-mandated reporting timelines, waterfall accuracy verification, clawback exposure modeling, SEC exempt offering maintenance (Form D, state blue sky filings), and fund document currency. Matt Mathison authorizes all compliance decisions that affect LP obligations; outside counsel is engaged for any securities law question.

## When to Use
- Verifying waterfall calculations before a distribution to confirm LP preferred return and carried interest are correctly applied
- Modeling clawback exposure — scenarios where the GP may owe return of previously paid carried interest
- Auditing fund document currency (LPA, subscription agreements, side letters — are they signed, current, filed?)
- Running the periodic LPA compliance calendar to confirm all mandatory reporting and notice obligations are met

## LP Compliance Monitor Framework

```
LP COMPLIANCE MONITOR — HIVE PARTNERS
========================================

TIER CLASSIFICATION
-------------------
LP COMPLIANCE DATA = TIER 1 RESTRICTED (capital figures, distributions)
FUND-LEVEL COMPLIANCE CALENDAR = INTERNAL — Matt Mathison + Dr. Lewis + outside counsel
SEC FILINGS = PUBLIC RECORD (Form D is publicly accessible after filing)

COMPLIANCE DOMAINS
-------------------
1. LPA OBLIGATION CALENDAR    — timing of LP reports, notices, meetings per LPA
2. WATERFALL ACCURACY         — correct application of LPA waterfall per distribution
3. CLAWBACK PROVISIONS        — GP exposure if carried interest exceeds realized gains
4. SECURITIES LAW COMPLIANCE  — Form D, state blue sky, exempt offering maintenance
5. FUND DOCUMENT CURRENCY     — LPA, subscription agreements, side letters up to date and signed

═══════════════════════════════════════════════════════
DOMAIN 1: LPA OBLIGATION CALENDAR
═══════════════════════════════════════════════════════
OBLIGATION                 | DUE DATE                          | STATUS
Quarterly LP letter (Q1)   | 45 days post Q1 end (May 15)      | [Current/Late/Upcoming]
Quarterly LP letter (Q2)   | 45 days post Q2 end (Aug 14)      | [Current/Late/Upcoming]
Quarterly LP letter (Q3)   | 45 days post Q3 end (Nov 14)      | [Current/Late/Upcoming]
Annual LP letter (Q4/Annual)| 75 days post year end (Mar 15)    | [Current/Late/Upcoming]
Annual LP meeting          | Per LPA schedule (typically Q1)   | [Current/Late/Upcoming]
K-1 delivery               | March 15 (Sept 15 if extended)    | [Current/Late/Upcoming]
Material change notices    | Per LPA (typically 30 days)       | [Triggered/Not triggered]
Advisory committee notices | Per LPA (LP advisory committee)   | [Applicable/Not applicable]
Fund term / extension vote | Per LPA end date                  | [Date if applicable]

ESCALATION TRIGGER: Any obligation more than 5 days past due → immediate Matt Mathison alert

═══════════════════════════════════════════════════════
DOMAIN 2: WATERFALL ACCURACY VERIFICATION
═══════════════════════════════════════════════════════
LPA WATERFALL ORDER (STANDARD — VERIFY AGAINST ACTUAL LPA)
  TIER 1: Return of Capital (100% to LPs until all invested capital returned)
  TIER 2: Preferred Return (e.g., 8% annualized on unreturned capital — 100% to LPs)
  TIER 3: GP Catch-Up (GP receives until GP has received X% of total profits — per LPA)
  TIER 4: Carried Interest Split (e.g., 80% LPs / 20% GP on remaining profits)

VERIFICATION STEPS PER DISTRIBUTION
  STEP 1: Confirm total distributable proceeds (net of reserves, expenses, fees)
  STEP 2: Calculate LP aggregate unreturned capital → apply TIER 1
  STEP 3: Calculate LP aggregate accrued preferred return → apply TIER 2
  STEP 4: Calculate GP catch-up entitlement → apply TIER 3
  STEP 5: Split remaining proceeds per LPA carried interest percentage → TIER 4
  STEP 6: Allocate LP pool pro-rata to individual LPs per their capital accounts
  STEP 7: Document calculation with source data references (Covercy, QB, LPA section)
  STEP 8: Matt Mathison reviews and confirms before distribution executes

WATERFALL DISCREPANCY RULE: Any variance >$1,000 between calculated waterfall output and
prior draft must be documented, root-caused, and re-approved by Matt before proceeding.

═══════════════════════════════════════════════════════
DOMAIN 3: CLAWBACK PROVISIONS
═══════════════════════════════════════════════════════
CLAWBACK DEFINITION: GP obligation to return previously received carried interest if,
at fund wind-down, total GP carry received exceeds the GP's actual carried interest
entitlement calculated on the fund's overall realized returns.

CLAWBACK EXPOSURE MODEL
  TOTAL CARRY RECEIVED TO DATE    | $[Amount] (cumulative GP carry distributions)
  PROJECTED TOTAL FUND GAINS      | $[Amount] (current portfolio mark + unrealized)
  CARRY ENTITLEMENT AT TARGET     | $[Amount] (LPA rate × projected gains)
  CURRENT EXPOSURE (EXCESS CARRY) | $[Amount] = Carry Received - Carry Entitlement
  EXPOSURE STATUS                 | NO EXPOSURE / WATCH / CLAWBACK RISK

CLAWBACK TRIGGER SCENARIOS
  Portfolio mark-down reducing realized gains → increases clawback exposure
  Early-fund carry distributions before full capital return → increases exposure
  Fund underperformance vs. preferred return → increases exposure

REPORTING: Clawback exposure is reported to Matt Mathison quarterly and disclosed to
LP Advisory Committee (if applicable) per LPA terms. Outside counsel reviews annually.

═══════════════════════════════════════════════════════
DOMAIN 4: SECURITIES LAW COMPLIANCE
═══════════════════════════════════════════════════════
EXEMPT OFFERING STATUS (RULE 506(b) or 506(c) — confirm per fund docs)
  FORM D FILING
    Initial Form D         | Due: 15 days after first sale of securities
    Annual Amendment       | Due: Annually on anniversary of initial filing
    Material Change Amend  | Due: Promptly upon material change
    Current Status         | [Filed / Amendment Due / LATE]
    SEC EDGAR Link         | [EDGAR URL for fund's Form D]

  STATE BLUE SKY FILINGS
    STATE     | FILING TYPE   | FILED DATE | RENEWAL DATE | STATUS
    [State]   | Notice filing | [Date]     | [Date]       | CURRENT / DUE
    [State]   | Notice filing | [Date]     | [Date]       | CURRENT / DUE

  ACCREDITED INVESTOR VERIFICATION
    Subscription agreement confirms accredited status for all LPs
    Verification method: [Self-certification / Third-party verification]
    Last audit of LP accredited status: [Date]
    Next review: [Date]

═══════════════════════════════════════════════════════
DOMAIN 5: FUND DOCUMENT CURRENCY
═══════════════════════════════════════════════════════
DOCUMENT               | VERSION | EXECUTED DATE | PARTIES SIGNED | LOCATION      | STATUS
LPA                    | [v#]    | [Date]        | All LPs + GP   | SharePoint    | CURRENT
GP Operating Agreement | [v#]    | [Date]        | GP members     | SharePoint    | CURRENT
Subscription Agreements| Per LP  | [Per LP]      | Each LP + GP   | SharePoint    | CURRENT/MISSING
Side Letters           | Per LP  | [Per LP]      | Each LP + GP   | SharePoint    | CURRENT/MISSING
Management Agreement   | [v#]    | [Date]        | GP + Mgmt Co   | SharePoint    | CURRENT
Advisory Committee Agmt| [v#]    | [Date]        | LP Advisors    | SharePoint    | N/A / CURRENT

DOCUMENT CURRENCY RULE: Any fund document more than 3 years old without a review annotation
is flagged for counsel review. Any unsigned subscription agreement for an active LP is a
critical compliance gap — escalate to Matt and outside counsel immediately.
```

## Output Format

```markdown
## LP Compliance Monitor Report — HIVE Partners
**Date:** [Date]  **Prepared by:** Dr. John Lewis  **Classification:** INTERNAL — MATT MATHISON + COUNSEL

### BLUF
[2–3 sentences covering the compliance posture. Example: "HIVE Partners fund compliance is CURRENT with 2 items requiring attention in the next 30 days: Q3 LP letter due Nov 14 and Form D annual amendment due Nov 22. No waterfall discrepancies in the last distribution. Clawback exposure is $0 at current portfolio marks."]

### Compliance Dashboard
| Domain | Status | Next Action Due | Owner |
|--------|--------|-----------------|-------|
| LPA Obligations | CURRENT / AT RISK | [Date] | Dr. Lewis / Matt |
| Waterfall Accuracy | VERIFIED / UNVERIFIED | [Last distribution] | Dr. Lewis |
| Clawback Exposure | $0 / $[Amount] WATCH | Quarterly review | Dr. Lewis |
| Form D / Blue Sky | CURRENT / DUE | [Date] | Outside Counsel |
| Fund Documents | CURRENT / [X] GAPS | [Review date] | Dr. Lewis + Counsel |

### LPA Obligation Calendar — Next 90 Days
| Obligation | Due Date | Status | Owner |
|------------|----------|--------|-------|
| [Obligation] | [Date] | UPCOMING / LATE | [Owner] |

### Waterfall Verification — Last Distribution ([Date])
| Tier | Calculated Amount | Distributed Amount | Variance | Status |
|------|------------------|--------------------|----------|--------|
| Return of Capital | $[Amt] | $[Amt] | $[Variance] | MATCH |
| Preferred Return | $[Amt] | $[Amt] | $[Variance] | MATCH |
| GP Catch-Up | $[Amt] | $[Amt] | $[Variance] | MATCH |
| Carried Interest | $[Amt] | $[Amt] | $[Variance] | MATCH |

### Clawback Exposure
**Current Exposure:** $[Amount] / NO EXPOSURE
**Basis:** [Brief explanation]

### Open Compliance Items
- [ ] [Item] — Owner: [Name] — Due: [Date] — Priority: HIGH / MEDIUM
```

## Output Contract
- Waterfall verification output must include source data references (Covercy export date, LPA section cited, QB reconciliation date) for every tier calculation — an unattributed waterfall figure is treated as unverified and the distribution is held until attribution is complete.
- Clawback exposure is reported as a dollar figure even when $0 — the report must never omit this field, because silence on clawback exposure creates ambiguity in the LP record and potential fiduciary risk if LPs later assert they were not informed of the risk.
- Securities compliance items (Form D amendments, state blue sky renewals) are surfaced 45 days before their due date with escalation to outside counsel — these filings have no grace period, and late filing is an SEC violation that Matt Mathison must be informed of immediately.

## System Dependencies
**Reads from:** LPA and fund documents (SharePoint), Covercy (capital and distribution data for waterfall and clawback inputs), QuickBooks (cash verification), SEC EDGAR (Form D filing status), state securities portals (blue sky filing status)
**Writes to:** Compliance Calendar (SharePoint/Monday.com), Waterfall Verification Log (SharePoint), Clawback Exposure Model (internal spreadsheet maintained by Dr. Lewis), Fund Document Registry (SharePoint)
**HITL Required:** Matt Mathison authorizes all compliance decisions affecting LP obligations; outside counsel engaged for all securities law questions, Form D filings, and document interpretation; Dr. Lewis does not make unilateral compliance determinations

## Test Cases
- **Golden path:** Pre-distribution compliance check — waterfall calculated across all tiers, verified against Covercy and QB, no variance, clawback exposure at $0, all LPA obligations current, Matt reviews and approves, distribution executes.
- **Edge case:** A portfolio company mark-down reduces fund NAV by 30% — agent models clawback exposure increase, calculates new exposure amount, flags it to Matt and outside counsel, and queues an LP Advisory Committee disclosure if required by LPA.
- **Adversarial:** Dr. Lewis attempts to approve a distribution without a completed waterfall verification — agent blocks the distribution workflow, requires waterfall verification sign-off, logs the attempted bypass, and routes an alert to Matt Mathison.

## Audit Log

All compliance monitoring actions are logged with: domain, obligation type, due date, completion date, operator, and Matt Mathison acknowledgment (for items requiring his decision). Waterfall verification logs include the full tier-by-tier calculation, source data references, variance analysis, and Matt's approval timestamp. Clawback exposure model versions are retained with each quarter's inputs and outputs — never overwritten, only versioned. Compliance audit logs are stored in SharePoint /HIVE/LP-Compliance/Audit/ with attorney-client privilege assertions on documents prepared at counsel's direction. Logs are retained for a minimum of 10 years post-fund wind-down per SEC recordkeeping requirements.

## Deprecation

This skill is active through fund wind-down and the subsequent compliance tail period (minimum 10 years). Final compliance actions include: last Form D amendment reporting fund closure, final state blue sky termination notices, final waterfall verification for wind-down distribution, and outside counsel sign-off on fund dissolution. Do not deprecate until outside counsel confirms all compliance obligations have been discharged. Archive all compliance records permanently — LP audit rights and potential regulatory review may surface years after wind-down.
