---
name: legal-risk-assessor
description: "Assess legal risk for business decisions and transactions. Use when the user says 'legal risk', 'what are the legal risks', 'is this legal', 'risk of doing this', 'legal exposure', 'legal assessment', 'legal review this decision', 'before we sign', 'is there a legal problem with this', or 'legal due diligence'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--decision <description>] [--domain <contract|employment|regulatory|financial|IP|all>]"
---

# Legal Risk Assessor

Assess legal risk for business decisions, transactions, and activities for MBL portfolio companies. Legal risk is not binary — it's a spectrum from "no issue" to "do not proceed without legal counsel." This skill provides a structured first-pass legal risk assessment, identifies the highest-risk dimensions of a decision, and determines when outside counsel must be engaged before proceeding.

## When to Use
- Before making a major business decision with legal implications
- Pre-transaction review (new contract, new vendor, new partnership)
- New business initiative — what legal risks are we creating?
- Regulatory change — does our practice need to change?
- When the business says "this is fine legally" but Legal hasn't reviewed it

## Legal Risk Domains

| Domain | Common Risk Sources | Portfolio-Specific Concerns |
|--------|------------------|--------------------------|
| Contract | Ambiguous terms, missing key provisions, unfavorable defaults | Vendor data rights, auto-renewals, liability caps |
| Employment | Termination, discrimination, wage & hour, FMLA | California employees (Allevio, Column6) |
| Regulatory | HIPAA, CCPA, oil & gas regs, SEC/investment | Allevio HIPAA, HIVE UDOGM, Column6 FTC |
| Financial | Accounting fraud, wire fraud, tax | BEC, unauthorized transfers |
| IP | Missing IP assignments, open source, trademark | OpenFang, Allevio care systems |
| Privacy | Data breach, unauthorized sharing, GDPR/CCPA | Column6 (EU ad targeting), Allevio PHI |
| Corporate | Governance failures, fiduciary breach, LP obligations | HIVE LP reporting, M&A representations |

## Risk Scoring Matrix

```
PROBABILITY × IMPACT = RISK LEVEL

  Probability:
    Low    = <10% chance in next 12 months
    Medium = 10-30% chance
    High   = >30% chance

  Impact (if risk materializes):
    Low    = <$25K, reputational, manageable
    Medium = $25K-$250K, regulatory investigation
    High   = >$250K, license risk, class action, LP notification

  Risk Level:
    High × High   = CRITICAL — do not proceed without counsel
    High × Medium = HIGH — counsel recommended before proceeding
    Medium × High = HIGH — counsel recommended
    Medium × Medium = MEDIUM — document and mitigate
    Low × any     = LOW — proceed with standard diligence
```

## Output Format

```markdown
# Legal Risk Assessment — <Decision / Activity>
**Date:** <date> | **Entity:** <name>
**Decision/Activity assessed:** <description>
**Prepared by:** Dr. John Lewis

---

## Executive Summary

**Overall legal risk:** Critical / High / Medium / Low
**Key finding:** <1-2 sentences>
**Recommended action:** Proceed / Proceed with mitigations / Engage outside counsel / Do not proceed pending legal review

---

## Risk Assessment by Domain

| Domain | Risk | Probability | Impact | Level | Rationale |
|--------|------|-----------|--------|-------|---------|
| Contract | Vendor data rights — AI training clause | Medium | High | 🔴 HIGH | Vendor could use confidential data to train AI models without consent |
| Employment | New contractor arrangement — misclassification | Low | High | 🟡 MEDIUM | Contractor role looks like employee; engage counsel to structure correctly |
| Regulatory | New PHI system — HIPAA compliance | Medium | Critical | 🔴 CRITICAL | ePHI processing requires HIPAA risk analysis and BAA before go-live |
| IP | Custom code built by external contractor | High | High | 🔴 HIGH | No IP assignment agreement — contractor may own the code |
| Privacy | New customer data collection | Medium | Medium | 🟡 MEDIUM | Update privacy policy; assess CCPA if CA customers |

---

## HIPAA Assessment (Allevio-specific)

| HIPAA Dimension | Status | Risk |
|---------------|--------|------|
| New system handles ePHI? | Yes | HIPAA risk analysis required before go-live |
| BAA with all vendors? | No — new vendor | Critical: BAA required before any ePHI shared |
| Access controls implemented? | To be built | Verify: MFA, unique user IDs, audit logging |
| Privacy policy updated? | No | Update Notice of Privacy Practices if patient data use changes |

---

## Required Actions Before Proceeding

| Priority | Action | Who | Due |
|--------|--------|-----|-----|
| 🔴 Critical | Execute BAA with new vendor before any PHI shared | Dr. Lewis + Outside Counsel | Before launch |
| 🔴 Critical | IP assignment agreement with contractor | Dr. Lewis + Outside Counsel | This week |
| 🟡 High | Review and negotiate data rights clause in vendor contract | Dr. Lewis | Before signing |
| 🟡 High | HIPAA risk analysis for new system | Dr. Lewis + Allevio Compliance | Before launch |
| 🟢 Medium | Update privacy policy for new data collection | Legal | Within 30 days |

---

## Risk Acceptance Decision

If mitigations are implemented as specified above:
**Residual risk level:** Low / Medium
**Dr. Lewis approval:** Required before proceeding (sign-off below)

_________________________________
Dr. John Lewis — Principal Systems Engineer & Director of AI Strategy
**Date:** <date>
```

## Output Contract
- HIPAA risks always assessed for any activity involving Allevio or PHI — this is the highest consequence area
- Critical risks always require outside counsel engagement before proceeding — no exceptions
- Risk acceptance always documented with Dr. Lewis sign-off — undocumented risk decisions are audit findings
- Mitigation actions always have owners and due dates — risk assessments without accountability are performative
- HITL required: Dr. Lewis reviews and approves risk assessments; outside counsel engaged for Critical risks; Matt Mathison informed of High/Critical risks with financial exposure over $100K

## System Dependencies
- **Reads from:** Business decision/activity description, existing contracts, regulatory requirements (provided)
- **Writes to:** Legal risk assessment and required action list (for Dr. Lewis, Legal, and business decision-maker)
- **HITL Required:** Dr. Lewis reviews; outside counsel for Critical risks; Matt Mathison for major decisions; no "Critical" risk proceeds without outside counsel review

## Test Cases
1. **Golden path:** New SaaS AI tool to be used by Allevio clinical staff → assessment: HIPAA (Critical — PHI likely, require BAA and HIPAA risk analysis), data rights (High — AI training clause in ToS, negotiate or use business version with data protection addendum), IP (Low — no custom development), employment (Low); proceeding only after BAA executed, HIPAA risk analysis completed, and data rights negotiated
2. **Edge case:** Existing business practice that has been running for 2 years without legal review → backward-looking legal risk assessment is important; identify the ongoing risk, remediate if needed, document going forward; "we've been doing it for years" is not a defense to regulatory non-compliance
3. **Adversarial:** Business unit says "Legal always slows things down, we'll take the risk" → the business unit cannot unilaterally accept legal risk for the entity — legal risk acceptance is a management decision that requires Dr. Lewis review and Matt Mathison approval above a threshold; document the disagreement and escalate if necessary

## Audit Log
All legal risk assessments retained with date, reviewer, and outcome. Risk acceptance decisions documented with approver signature.

## Deprecation
Retire when entity hires in-house counsel who owns legal risk assessment as a core function, supplemented by specialist outside counsel.
