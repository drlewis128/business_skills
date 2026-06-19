---
name: ops-hive-operator-relations
description: "Manage HIVE Partners operator relationships and oversight in the Uinta Basin. Use when the user says 'operator relations', 'operator relationship', 'operator management', 'operator oversight', 'operator performance', 'operator review', 'operator communication', 'operator update', 'operator report', 'operator audit', 'operator accountability', 'oil and gas operator', 'HIVE operator', 'well operator', 'Uinta Basin operator', 'production operator', 'operator JIB', 'joint interest billing', 'JIB audit', 'non-operator rights', 'working interest', 'royalty oversight', 'operator dispute', 'operator conflict', 'operator complaint', 'operator change', 'operator replacement', 'operator default', 'operator non-payment', 'production reporting', 'production data', 'production dispute', 'well performance', 'well status', or 'operator update meeting'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--operator <name>] [--action <review|escalate|audit|dispute|communicate|report>] [--focus <performance|billing|production|relationship|compliance>] [--period <monthly|quarterly|annual>]"
---

# Ops HIVE Operator Relations

Manage HIVE Partners' operator relationships — tracking operator performance, auditing joint interest billing (JIB) statements, managing production reporting compliance, and escalating operator issues that affect HIVE's royalty income or capital exposure. HIVE is a non-operator royalty interest holder: operators drill and produce the wells; HIVE receives royalties from that production; the quality of the operator relationship directly determines the accuracy and timeliness of HIVE's royalty income. A disorganized operator produces incorrect JIB statements, late production reports, and payment errors; an unresponsive operator leaves disputes unresolved; a financially distressed operator creates production continuity risk. Dr. Lewis tracks operator performance as a financial quality signal — the HIVE CEO manages individual operator relationships, but Dr. Lewis flags systemic issues that affect Covercy reconciliation and LP returns.

## When to Use
- Monthly production report review
- JIB statement audit (monthly or quarterly)
- A production or billing dispute with an operator
- Operator financial distress signal identified
- Annual operator performance review

## Operator Relations Framework

```
HIVE OPERATOR RELATIONSHIP STRUCTURE:

  HIVE's role: Royalty interest holder (non-operator)
  Operator's role: Drills wells; produces oil/gas; pays royalties per lease terms
  
  HIVE has rights as a royalty holder:
    Right to accurate monthly royalty statements (Covercy)
    Right to audit operator records (typically 24-month lookback; per lease)
    Right to correct payment for errors discovered in audit
    Right to receive production reports per regulatory schedule
    
  OPERATOR CATEGORIES:
    Primary operators: [N major operators — largest royalty generators]
    Secondary operators: [N smaller operators — lower royalty share]
    The largest 3 operators typically represent 70-80% of HIVE's royalty income

MONTHLY PRODUCTION REVIEW:

  PRODUCTION REPORT REVIEW (by the 25th of the following month):
    Source: Operator statements via Covercy (or direct PDF statements)
    Review for: production volumes by well | price realized (vs. WTI benchmark) | deductions (processing; transportation)
    
  JIB STATEMENT AUDIT (if HIVE has working interest in any wells):
    JIB = Joint Interest Billing — operator bills HIVE for its share of operating costs
    Monthly JIB audit: are the charges consistent with the joint operating agreement (JOA)?
    Flag: any new charge category not previously billed; any charge >20% above prior month
    Right to audit: HIVE can request backup for any JIB line item
    
  RECONCILIATION TO COVERCY:
    Every operator statement is reconciled to the Covercy record
    Any discrepancy: documented and disputed with the operator within 30 days
    Dispute resolution: 30-day target; >$500 unresolved → HIVE CEO escalation
    >$10,000 unresolved or >60 days → Matt Mathison notification

OPERATOR PERFORMANCE METRICS:

  PAYMENT ACCURACY:
    Target: 100% of royalty payments within 3% of calculated correct amount
    Measurement: compare statement calculation to independent calculation using production data
    Pattern: >3% error rate for 2+ consecutive months → formal letter to operator
    
  PAYMENT TIMELINESS:
    Standard: royalties due by the last day of the second month following production month
    Late payment: interest accrues per lease terms (typically 8-12% annualized)
    Persistent late payment (>2 months in 6) → HIVE CEO discussion with operator
    
  PRODUCTION REPORTING:
    Operators must file production reports with Utah DOGM (Division of Oil, Gas & Mining)
    HIVE can verify operator-reported royalties against state production filings
    Material discrepancy between DOGM filing and royalty statement → audit trigger
    
  OPERATOR AUDIT (every 2-3 years or when triggered):
    Request access to operator records per lease audit rights
    Focus: production volumes; price calculations; deduction calculations
    External petroleum engineer or audit firm conducts (not internal only)
    Recovery rate: industry standard is $X recovered per $1 spent on audit

OPERATOR FINANCIAL HEALTH MONITORING:

  SIGNALS OF DISTRESS:
    Late royalty payments (2+ consecutive months)
    JIB statement irregularities (cost items that suggest cash-strapped operation)
    Industry news: operator bankruptcy; asset sales; lender issues
    Production decline without explanation (deferred maintenance signal)
    
  DISTRESS PROTOCOL:
    Identify: document the specific signals observed
    Assess: HIVE CEO consults with industry contacts for ground truth on operator health
    Protect: if distress confirmed, consider whether to invoke audit rights immediately
    Matt Mathison: notified if primary operator shows distress signals
    Legal: involved if operator defaults on royalty payment obligations
```

## Output Format

```markdown
# HIVE Operator Relations Report — [Month Year]
**Prepared by:** HIVE Operations | **Reviewed by:** Dr. Lewis

---

## Production Summary

| Operator | Wells | Production (BOE) | vs. Prior Month | Royalty Received | Variance |
|----------|-------|-----------------|-----------------|-----------------|---------|
| [Operator A] | [N] | [N] BOE | [+/-N%] | $[X] | <1% ✅ |
| [Operator B] | [N] | [N] BOE | [+/-N%] | $[X] | -4.2% ⚠️ |

---

## Active Disputes

| Operator | Issue | Amount | Age | Status |
|----------|-------|--------|-----|--------|
| [Operator B] | Deduction calculation error | $[X] | [N] days | HIVE CEO in discussion |

---

## Operator Health Assessment

| Operator | Payment timeliness | Accuracy | Health signal | Flag |
|----------|-------------------|----------|--------------|------|
| [A] | On time | ≥99% | 🟢 Healthy | None |
| [B] | 1 late payment | 94% | 🟡 Watch | Payment accuracy under review |
```

## Output Contract
- Every JIB charge is auditable on request — HIVE does not accept operator JIB statements as authoritative without the ability to verify; for any JIB charge that raises a question (new category; large increase; unusual item), HIVE CEO or operations requests backup documentation from the operator within 30 days; the audit right exists for a reason — exercising it periodically keeps operators honest and sometimes recovers significant amounts; the industry standard is $X recovered per $1 spent on systematic audits
- Production reconciliation happens to the penny, monthly — the standard at MBL is that Covercy is reconciled to the penny against operator statements; small discrepancies that round correctly are acceptable; recurring discrepancies even if small are not — they indicate either a calculation error or an unfavorable pricing arrangement that is quietly undercharging HIVE; Dr. Lewis tracks reconciliation variance monthly; any operator with >3% variance for 2+ consecutive months gets a formal notice
- Operator financial distress is a proactive monitor, not a reactive discovery — Dr. Lewis tracks the signals of operator distress (late payments; irregular JIBs; industry news) because HIVE's entire revenue stream depends on operators' ability to produce and pay; discovering an operator is in bankruptcy when they stop paying is a governance failure; the monthly production review includes a brief health check on each primary operator; any distress signal → HIVE CEO + Dr. Lewis assess within 2 weeks; confirmed distress → Matt Mathison
- HITL required: royalty disputes >$10,000 → Matt Mathison notification; operator distress signals on primary operators (those representing >20% of HIVE royalty) → Matt Mathison notification within 2 weeks of identification; formal operator audit (requesting access to operator records) → HIVE CEO authorization + legal review of audit rights under the lease; any dispute that cannot be resolved in 60 days → legal involvement; operator default on royalty obligation → Dr. Lewis + HIVE CEO + legal same day

## System Dependencies
- **Reads from:** Covercy (operator royalty statements; reconciliation); Utah DOGM production filings (independent production verification); fin-hive-royalty-accounting (financial records of royalty receipts); ops-hive-lease-manager (lease terms — audit rights; royalty rate); fin-hive-capex-tracker (capex decisions that affect operator relationships)
- **Writes to:** Operator relations reports (SharePoint → HIVE → Operations → OperatorRelations); dispute records (formal letters to operators); HIVE CEO briefings; Matt Mathison notifications (>$10K disputes; distress signals); Covercy reconciliation records; audit findings and recovery records
- **HITL Required:** Disputes >$10K → Matt notification; primary operator distress → Matt notification within 2 weeks; formal audit of operator records → HIVE CEO + legal authorization; default on royalty → Dr. Lewis + HIVE CEO + legal same day; JOA-based decisions → legal review of rights before exercise

## Test Cases
1. **Golden path:** Monthly operator review. Operator A (primary): production 4,820 BOE; royalty received $71,400; calculated expected $71,800; variance $400 (<1%) — within tolerance; payment on time. ✅ Operator B (secondary): production 1,240 BOE; royalty received $14,200; calculated expected $14,890; variance $690 (4.6%) — above 3% threshold. Dr. Lewis: "Operator B has a 4.6% variance this month — exceeds our 3% tolerance. HIVE CEO is reaching out to Operator B's accounting contact for a breakdown of the calculation. This is the first occurrence — monitoring. If variance persists next month, we send a formal letter."
2. **Edge case:** Operator files for Chapter 11 bankruptcy → Dr. Lewis: "Operator [Name] has filed for Chapter 11 bankruptcy. This is a significant event. Immediate implications: (1) Royalties owed to HIVE prior to the bankruptcy filing may be subject to the automatic stay — we may be an unsecured creditor for pre-petition amounts. (2) Post-petition royalties (from production that occurs after the filing date) should be paid in the ordinary course — HIVE will monitor closely. Immediate actions: (1) Notify legal today — we need to file a proof of claim for any outstanding pre-petition royalties; (2) Notify Matt Mathison — [Operator Name] represents [%] of HIVE royalty; this is a material event; (3) Assess: is production continuing? Are the wells producing normally? (bankruptcy doesn't stop production — operators often continue through Chapter 11). HIVE CEO is on this."
3. **Adversarial:** An operator disputes HIVE's royalty calculation, claiming HIVE's calculation methodology is wrong → Dr. Lewis: "Before this becomes adversarial, I want to resolve it with data. The dispute is about the royalty calculation methodology — our calculation: $[X]; operator's calculation: $[Y]; difference: $[Z]. I'm pulling the lease language that governs the calculation — specifically the royalty base (gross proceeds? net back? posted price?) and the deduction provisions (what can be deducted before calculating the royalty). I'll have our calculation cross-checked against the lease language. If the lease is ambiguous: we engage a petroleum counsel to give an opinion before we either concede or litigate. This is a common dispute in oil and gas — it's usually resolved with a clear reading of the lease. I'll have the analysis to the HIVE CEO within 5 business days."

## Audit Log
Monthly production and reconciliation records retained. JIB audit records retained. Dispute correspondence retained (all letters sent and received). Operator health monitoring records retained. Formal audit results retained. Bankruptcy/default records retained. DOGM cross-check records retained.

## Deprecation
The operator relations framework is maintained as long as HIVE has active royalty interests. Review the primary operator threshold (20% of royalty) annually as the operator mix evolves. Update the Utah DOGM verification process if state reporting requirements change.
