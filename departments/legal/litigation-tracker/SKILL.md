---
name: litigation-tracker
description: "Track and manage active litigation and legal disputes. Use when the user says 'lawsuit', 'litigation', 'legal dispute', 'filed against us', 'complaint', 'demand letter', 'legal claim', 'arbitration', 'mediation', 'threatened lawsuit', 'settlement', 'we got sued', or 'discovery request'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <new|status|strategy>] [--matter <matter-name>]"
---

# Litigation Tracker

Track and manage active litigation and legal disputes for MBL portfolio companies. Litigation is a business risk that requires active management — missed deadlines, unsupervised outside counsel, and poor documentation can turn a manageable dispute into a catastrophic loss. This skill maintains the litigation inventory, tracks critical deadlines, and ensures appropriate HITL escalation for all active matters.

## When to Use
- A new lawsuit, arbitration, or demand letter is received
- Weekly/monthly litigation status review
- Evaluating a settlement offer
- Assessing litigation risk for M&A or LP reporting
- Litigation budget vs. actual tracking

## CRITICAL: Immediate Actions When Litigation Is Received

```
STEP 1 — IMMEDIATE (same day)
  ✅ Do NOT destroy any documents related to the claim
  ✅ Trigger LEGAL HOLD (see legal-hold-manager skill)
  ✅ Notify Dr. Lewis + Matt Mathison
  ✅ Do NOT respond to opposing counsel without legal counsel engaged
  ✅ Do NOT discuss the claim in email or text — assume discoverable

STEP 2 — WITHIN 24-48 HOURS
  ✅ Engage outside litigation counsel
  ✅ File response/answer deadline identified (typically 21-30 days)
  ✅ Check insurance — E&O, D&O, GL, employment practices

STEP 3 — WITHIN 1 WEEK
  ✅ Litigation budget estimate from outside counsel
  ✅ Reserve established in financial statements
  ✅ Insurance carrier notified (if applicable)
```

## Output Format

```markdown
# Litigation Tracker — <Entity / Portfolio>
**Date:** <date> | **Prepared by:** Dr. John Lewis

---

## Active Matters Summary

| Matter | Entity | Type | Status | Next Deadline | Exposure | Outside Counsel |
|--------|--------|------|--------|-------------|---------|---------------|
| <Matter name> | Allevio | Employment — wrongful termination | Active | Answer due <date> | $50K-$200K | <Firm> |
| <Matter name> | MBL Partners | Contract dispute | Demand letter stage | Response due <date> | $75K | <Firm> |
| <Matter name> | HIVE Partners | Environmental complaint | Regulatory — pre-litigation | <date> | Unknown | <Firm> |

**Total estimated litigation exposure:** $<range>

---

## Matter Detail — <Matter Name>

**Entity:** <name>
**Matter type:** Employment / Contract / IP / Regulatory / Personal injury / Other
**Plaintiff/Claimant:** <name>
**Filing date:** <date>
**Jurisdiction:** <court / arbitration forum>
**Outside counsel:** <firm name, partner, contact>
**Insurance:** <carrier, claim number, coverage type>

### Key Facts
<2-4 bullet points on what happened>

### Claims Alleged
- <Cause of action 1>
- <Cause of action 2>

### MBL/Entity Position
<1-2 sentences on defense theory>

### Financial Exposure
| Scenario | Amount |
|---------|--------|
| Best case | $<0 — dismissal> |
| Expected | $<range> |
| Worst case | $<max exposure> |
| Reserve set | $<amount> |

### Critical Deadlines

| Deadline | Date | Status | Owner |
|---------|------|--------|-------|
| Answer / response | <date> | 📅 | Outside Counsel |
| Discovery cutoff | <date> | 📅 | |
| Expert witness disclosure | <date> | 📅 | |
| Mediation / settlement conference | <date> | 📅 | |
| Trial date | <date> | 📅 | |

### Settlement Status
- Settlement offers received: <None / describe>
- Settlement authority: Dr. Lewis + Matt Mathison approve; threshold for board resolution: >$<amount>
- Settlement range: <if in discussion>

### Litigation Budget
| Category | Budget | Actual | Variance |
|---------|--------|--------|---------|
| Legal fees | $<amount> | $<actual> | |
| Expert witness | | | |
| Court costs | | | |
| Total | | | |

---

## Closed Matters (Last 12 Months)

| Matter | Entity | Type | Resolution | Amount | Date Closed |
|--------|--------|------|---------|--------|-----------|
| <name> | | Employment | Dismissed | $0 | <date> |
| <name> | | Contract | Settlement | $<amount> | <date> |
```

## Output Contract
- Legal hold triggered immediately for every new litigation matter — document preservation is non-negotiable
- Answer deadlines always flagged and tracked — missing an answer deadline results in default judgment
- Insurance notification always assessed — many claims trigger D&O, E&O, or EPL coverage that funds the defense
- Settlement authority always defined — who can approve a settlement and at what dollar threshold
- HITL required: Dr. Lewis manages all litigation matters; Matt Mathison approves settlements above threshold; outside counsel handles all court filings and opposing counsel communications; no communications with opposing party without counsel

## System Dependencies
- **Reads from:** Court filing systems, outside counsel updates, insurance policies (provided by outside counsel)
- **Writes to:** Litigation tracker and budget (maintained by Dr. Lewis / Legal)
- **HITL Required:** Dr. Lewis owns litigation strategy; Matt Mathison approves settlements; outside counsel handles all court interactions

## Test Cases
1. **Golden path:** New employment discrimination claim received against Allevio → immediate legal hold triggered, Dr. Lewis and Matt Mathison notified, outside counsel engaged within 24 hours, answer deadline identified (30 days), EPL insurance claim filed, exposure assessed at $50K-$150K, $100K reserve established in Allevio financials
2. **Edge case:** Demand letter received (not a lawsuit yet) → do not ignore; engage outside counsel to assess whether to respond, negotiate, or prepare for litigation; legal hold triggered as precautionary measure; demand letter is often a precursor to filing within 30-60 days
3. **Adversarial:** Business unit manager wants to reach out to the plaintiff directly to "resolve it" → absolutely not — all communications must go through outside counsel; direct contact can waive attorney-client privilege, create additional claims, and violate court rules if litigation has been filed

## Audit Log
Litigation tracker maintained for all active and closed matters. Settlement agreements retained. Litigation budgets tracked against actual. Insurance claim documentation retained.

## Deprecation
Retire when entity deploys a matter management platform (Legal Tracker, Onit) with integrated deadline tracking, budget management, and outside counsel billing integration.
