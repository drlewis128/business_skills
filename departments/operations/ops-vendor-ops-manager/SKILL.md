---
name: ops-vendor-ops-manager
description: "Manage operational vendor relationships across MBL Partners portfolio (non-finance). Use when the user says 'vendor management', 'vendor relationship', 'vendor performance', 'vendor review', 'vendor issue', 'vendor problem', 'vendor escalation', 'vendor contract', 'vendor contract review', 'vendor renewal', 'vendor negotiation', 'vendor onboarding', 'vendor offboarding', 'vendor scorecard', 'vendor evaluation', 'vendor selection', 'vendor RFP', 'new vendor', 'vendor risk', 'single-source vendor', 'vendor dependency', 'service provider', 'service provider management', 'service provider review', 'contractor management', 'outside vendor', 'vendor SLA', 'vendor performance review', 'vendor audit', or 'operational vendor'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--vendor <name>] [--action <onboard|review|renew|escalate|terminate|evaluate>] [--category <technology|professional-services|facilities|clinical|field-services|other>]"
---

# Ops Vendor Ops Manager

Manage operational vendor relationships across MBL Partners portfolio — tracking vendor performance, managing contracts and renewals, handling vendor issues and escalations, and ensuring that the entities are getting the service and value they're paying for from their non-financial vendors. This is distinct from the financial vendor work in fin-vendor-spend-analyzer (which focuses on spend optimization); this skill focuses on the operational relationship: is the vendor performing to the SLA? Is the relationship healthy? Is the contract up for renewal? Are there risks in the relationship (single-source dependency; key person risk; financial instability)? Dr. Lewis maintains the vendor relationship intelligence that allows entity CEOs to be decisive about vendor continuity, renegotiation, and replacement.

## When to Use
- A vendor is underperforming relative to the contract SLA
- A vendor contract is approaching renewal (60+ days before renewal)
- A new vendor is being evaluated or onboarded
- A vendor relationship needs to be terminated

## Vendor Operations Framework

```
VENDOR CLASSIFICATION:

  CRITICAL VENDORS (single-source; no near-term alternative):
    Allevio: AdvancedMD (EHR/RCM); Marshall Medical Billing (billing outsource)
    HIVE: Operators (multiple; but each is single-source for their wells)
    Column6: DSP platforms (The Trade Desk; DV360 — each has no-notice cancellation risk)
    MBL: Microsoft; Krista.ai; Monday.com
    Management protocol: formal quarterly reviews; SLA tracking; contingency plan documented
    
  OPERATIONAL VENDORS (substitutable; requires effort to replace):
    Professional services (legal; audit; HR); Facilities; Field services
    Management protocol: semi-annual review; renewal 60 days before expiration
    
  COMMODITY VENDORS (interchangeable; easy to replace):
    Office supplies; non-specialized software
    Management protocol: cost-only focus; renew or switch based on best price

VENDOR PERFORMANCE TRACKING:

  For CRITICAL vendors, track monthly:
    SLA compliance: is the vendor meeting contractually agreed service levels?
    Incident rate: how often does the vendor fail or cause disruption?
    Response time: when issues arise, how fast does the vendor respond?
    Relationship health: is the account manager engaged and responsive?
    Financial stability signal: any indicators of vendor distress?
    
  SLA BREACH PROTOCOL:
    First breach: document and notify vendor account manager in writing
    Second breach in 90 days: formal notice per contract; escalate to Dr. Lewis
    Third breach in 180 days: evaluate replacement; notify Matt Mathison
    
  VENDOR SCORECARD (quarterly for critical vendors):
    SLA compliance: 0-100% | Target: ≥95%
    Incident rate: [N] incidents | Target: <2 significant/quarter
    Response time: average [N] hours | Target: <4 hours for critical
    Relationship: 1-5 rating | Target: ≥4

VENDOR LIFECYCLE MANAGEMENT:

  ONBOARDING (new vendor):
    □ Contract reviewed by Dr. Lewis (key terms: SLA; liability cap; termination; IP ownership)
    □ NDAs signed if vendor has access to sensitive data
    □ Allevio: BAA signed if vendor touches PHI
    □ Access provisioned (ops-data-governance)
    □ Kickoff meeting: roles; escalation path; reporting cadence agreed
    □ Primary contact and escalation contact documented in GHL (vendor record)
    □ Contract stored (SharePoint → Finance → Contracts → Vendors → [Entity] → [Vendor])
    □ Renewal date added to fin-compliance-calendar reminder
    
  RENEWAL MANAGEMENT:
    60 days before: Dr. Lewis reviews contract; vendor performance; market alternatives
    45 days before: negotiation begins (if seeking better terms)
    30 days before: decision made (renew; renegotiate; replace)
    Decision below 30 days before expiration: auto-renew risk or service gap risk
    
  TERMINATION:
    Written notice per contract terms (30/60/90 days — verify before notifying)
    Transition plan: ensure continuity before cutting vendor access
    Final invoice review before closing account
    Access deprovisioning (ops-data-governance)
    Vendor record in GHL updated to "Terminated" with reason note

VENDOR RISK MANAGEMENT:

  SINGLE-SOURCE RISK:
    For every critical single-source vendor: maintain a contingency plan
    Contingency plan: "If [vendor] failed today, we would [action] within [timeframe]"
    Reviewed annually
    
  CONCENTRATION RISK:
    No single vendor should represent >30% of entity's operational spend
    Exception: AdvancedMD at Allevio (EHR lock-in is common in healthcare; accept with contingency)
    
  VENDOR FINANCIAL RISK:
    Monitor for: payment terms changing; key staff departures; account manager turnover
    Annual check: is the critical vendor financially stable? (news search; references)
```

## Output Format

```markdown
# Vendor Performance Scorecard — [Vendor Name] — Q[N] [Year]
**Entity:** [Allevio / HIVE / Column6 / MBL] | **Category:** Critical / Operational
**Contract expiration:** [Date] | **Renewal action:** [Date]

---

| Metric | Target | Q[N] Actual | Trend | Status |
|--------|--------|-------------|-------|--------|
| SLA compliance | ≥95% | [%] | ↑ / ↓ / → | 🟢 / 🟡 / 🔴 |
| Incidents | <2/quarter | [N] | ↑ / ↓ / → | 🟢 / 🟡 / 🔴 |
| Response time | <4 hours | [N] hours avg | ↑ / ↓ / → | 🟢 / 🟡 / 🔴 |
| Relationship | ≥4/5 | [Score] | ↑ / ↓ / → | 🟢 / 🟡 / 🔴 |

**Overall: [Score]/4 metrics Green | Recommendation: [Renew / Renegotiate / Replace]**

---

## Issues This Quarter

| Date | Issue | Response | Resolution |
|------|-------|----------|-----------|
| [Date] | [Description] | [Hours to respond] | [Outcome] |

---

## Renewal Recommendation
[One paragraph: recommend renew/renegotiate/replace with specific rationale]
```

## Output Contract
- Vendor renewals are never auto-renewed without a performance review — the 60-day advance review is non-negotiable; Dr. Lewis reviews vendor performance and contract terms before every renewal; a vendor that auto-renews after a poor performance quarter with no renegotiation is a vendor that knows it doesn't have to perform to retain the contract; the 60-day window is the negotiation leverage window — after the contract renews, leverage disappears; Dr. Lewis treats every renewal as a fresh negotiation opportunity
- SLA breaches are documented in writing — when a vendor misses an SLA, the documentation starts immediately; Dr. Lewis sends a written notice (email) to the vendor account manager within 24 hours of the breach; the notice: describes the breach; cites the contracted SLA; asks for a root cause and remediation plan; this documentation is critical if the relationship deteriorates further and termination becomes necessary — the written record establishes the pattern and protects the entity; "I know we talked about it" does not protect anyone
- Critical vendor contingency plans are not theoretical — Dr. Lewis maintains a one-page contingency plan for every single-source critical vendor that answers: "If this vendor failed today, what would we do and how long would it take?"; the contingency plan is reviewed annually and whenever there's a vendor relationship problem; the plan doesn't need to be perfect — it needs to be realistic and actionable; a critical vendor with no contingency plan is an unmanaged risk
- HITL required: vendor terminations for critical vendors require Matt Mathison awareness (not necessarily approval, but awareness) — losing AdvancedMD at Allevio or a major DSP at Column6 has material operational and financial impact; Matt should never be surprised by a critical vendor termination; vendor contracts with total value >$50K require Dr. Lewis review of key terms; >$100K requires Matt Mathison awareness before signing; any vendor who touches LP data requires Matt Mathison approval before contract signature; Allevio BAA requirement is an absolute — no PHI-touching vendor without a signed BAA

## System Dependencies
- **Reads from:** Bill.com (vendor payment history — from fin-vendor-spend-analyzer); SharePoint Contracts folder (current contract terms; renewal dates); GHL vendor records (relationship notes; contact info); fin-compliance-calendar (renewal reminders); ops-data-governance (vendor access status)
- **Writes to:** Vendor scorecards (SharePoint → Operations → VendorManagement → [Entity] → Scorecards); GHL vendor records (performance notes; renewal status; contact updates); ops-action-tracker (renewal actions; SLA breach follow-ups); fin-compliance-calendar (renewal date reminders); deprovisioning requests (ops-data-governance — when vendor terminates)
- **HITL Required:** Critical vendor terminations → Matt Mathison awareness before action; vendor contracts >$100K → Matt awareness before signature; PHI-touching Allevio vendor contracts → BAA required + Dr. Lewis review; single-source vendor replacement decisions → Dr. Lewis + entity CEO + Matt Mathison review; vendor SLA breach patterns (3rd breach in 180 days) → Matt Mathison notification

## Test Cases
1. **Golden path:** Quarterly vendor performance review for Allevio's billing partner, Marshall Medical Billing. SLA: clean claim rate ≥95%; collection rate ≥93%; denial rate <5%. Q2 actuals: clean claim rate 96.2% ✅; collection rate 91.8% 🟡 (just below 93% threshold); denial rate 4.1% ✅. Scorecard: 3/4 Green; 1 Yellow. Dr. Lewis: "Collection rate dipped to 91.8% — below the 93% target. I've asked Marshall for a breakdown by denial category. Preliminary data shows the shortfall is concentrated in a new employer group with insurance they haven't billed before (learning curve). I expect normalization over 60 days. I'm documenting this in the scorecard and will recheck in July. No formal breach notice required — first instance, below threshold but not severely."
2. **Edge case:** A vendor account manager leaves and is replaced by someone who is disengaged and unresponsive → Dr. Lewis: "I've noticed a pattern with [Vendor] since the account manager change: 3 unanswered emails in 4 weeks; a support ticket that was open 8 days without resolution (SLA is 2 days); and the new AM has not proactively checked in. Before I escalate internally to the entity CEO, I'm going to the vendor's management: 'We've had a rough transition since [Former AM] departed. I want to reset our relationship with a 30-minute call this week — here's the outstanding support ticket that needs immediate resolution, and I'd like to understand the new AM's engagement model. If this doesn't improve in 30 days, I will raise it to your executive team.' This approach gives the vendor a chance to fix it before I take the harder path."
3. **Adversarial:** An entity CEO wants to terminate a critical single-source vendor without a replacement ready → Dr. Lewis: "Before we terminate [Vendor], I need to make sure we're not trading one problem for a bigger one. [Vendor] is currently [function] — if we terminate tomorrow, what happens to [critical function]? My concern: we don't have a replacement ready, and [function] can't go down for more than [timeframe] without material impact to operations. Options: (1) Start the replacement search NOW and terminate only after the replacement is proven; (2) Negotiate a performance improvement plan with [Vendor] — force improvement without cutting the cord until we're ready; (3) Terminate and accept a planned service gap with a clear recovery plan. I recommend option 1 or 2 depending on how bad the current situation is. What's the specific problem driving the termination? That determines how urgently we need to act."

## Audit Log
Vendor onboarding records retained (contract date; BAA status; kickoff confirmation). Performance scorecards retained. SLA breach notifications retained (date sent; vendor response). Renewal decisions retained (with performance data at time of decision). Termination records retained (notice date; effective date; final invoice; deprovisioning confirmation). Contingency plan versions retained.

## Deprecation
The vendor management framework is operational and ongoing. Individual vendor relationships evolve — add new vendors to the tracking system as they're onboarded; archive terminated vendors. The framework itself is reviewed annually for coverage and process quality.
