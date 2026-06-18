---
name: legal-contract-tracker
description: "Maintain the contract repository and renewal calendar for portfolio companies. Use when the user says 'contract tracker', 'contract log', 'track the contracts', 'contract renewal', 'when does the contract expire', 'contract calendar', 'contract repository', 'agreement tracker', 'renewal calendar', 'contract database', 'what contracts do we have', 'track renewals', 'contract obligations', 'contract expiry', 'contract inventory', 'contract management', 'when is the contract up', 'contract archive', 'agreement repository', or 'contract filing'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <log|search|alert|report>] [--filter <expiring|auto-renewing|vendor|customer>]"
---

# Contract Tracker

Maintain the contract repository and renewal calendar for MBL portfolio companies — ensuring that every executed contract is logged, renewal dates are tracked, and the CEO and Dr. Lewis are alerted before auto-renewal deadlines. Contract management failures are a chronic source of unwanted obligations in PE portfolio companies: a contract that auto-renews for another year because no one tracked the 60-day notice deadline costs money and creates difficult vendor conversations. Dr. Lewis maintains the contract tracker as the authoritative record of all obligations.

## When to Use
- A contract is executed — log it within 24 hours of signature
- Monthly contract calendar review — which contracts are coming up for renewal?
- A CEO asks "when does our [vendor] contract expire?"
- Approaching a renewal decision — should the company renew, renegotiate, or terminate?
- Audit or due diligence — provide a complete list of all active contracts

## Contract Tracking Framework

```
CONTRACT RECORD FIELDS (for each contract):

  Identity:
    Contract ID: [Company]-[Counterparty]-[Year]-[Seq] (e.g., ALV-Marshall-2025-001)
    Company / Entity: Allevio / HIVE Partners / Column6 / MBL Partners
    Counterparty: Legal name of the counterparty
    Contract type: Vendor / Customer / Employment / Lease / NDA / M&A / Other
    
  Dates:
    Execution date: Date signed by both parties
    Effective date: When obligations begin
    Initial term end date: When the initial term expires
    Auto-renewal: Yes / No
    Renewal notice deadline: The date by which notice must be given to PREVENT auto-renewal
      If auto-renewal: Set calendar alert 90 days before the renewal notice deadline
      If no auto-renewal: Set calendar alert 90 days before term end
    Renewal decision due: 60 days before renewal deadline (when the CEO must decide renew/renegotiate/terminate)
    
  Financial:
    Annual contract value (ACV): Total annual obligation or revenue
    Total contract value (TCV): Full value over the initial term
    Payment terms: Net 30 / Net 60 / Monthly / Annual / Other
    
  Obligations:
    Key obligations (2-3 bullets): What must the company do under this contract?
    Counterparty key deliverables: What must the counterparty deliver?
    Reporting requirements: Any reports the company must provide?
    
  Compliance:
    HIPAA BAA required: Yes / No (Allevio only — flag if vendor handles PHI without a BAA)
    Insurance requirements: What insurance must the company maintain?
    Compliance certifications: SOC 2? ISO 27001? Required from vendor?
    
  Status:
    Active / Expired / Terminated / In Amendment / On Watch
    On Watch: Contracts with a dispute, late delivery, or concern flagged
    
CONTRACT CALENDAR ALERTS:
  90 days before renewal notice deadline: Alert CEO and Dr. Lewis — "Renewal Decision Upcoming"
  60 days before renewal notice deadline: If no decision made → escalate to CEO with recommendation
  30 days before renewal notice deadline: Final alert — decision must be made within 5 business days
  Day of renewal notice deadline: If terminating, confirm notice was sent; if renewing, log the renewal term
  
RENEWAL DECISION FRAMEWORK:
  For each approaching renewal, Dr. Lewis evaluates:
  1. Has the vendor performed as contracted? (SLA adherence, quality, relationship)
  2. Is the price still at market? (benchmark against alternatives)
  3. Does the company still need this service? (business model changes)
  4. Are there better alternatives available?
  Recommendation: Renew / Renegotiate (keep vendor, improve terms) / Terminate (switch or eliminate)
  
  Renewal escalation thresholds:
    <$10K ACV: CEO decides independently
    $10K-$50K ACV: CEO + Dr. Lewis decide together
    >$50K ACV: CEO + Dr. Lewis + Matt Mathison (if material change in terms)
    
PRIORITY CONTRACTS TO TRACK (examples by entity):

  ALLEVIO:
    Marshall Medical Billing — billing/RCM services; annual value; BAA in place?
    AdvancedMD — EHR system; SaaS license; auto-renewal provisions
    Employer group contracts — each group's PMPM agreement; renewal dates; escalator clauses
    Clinic lease — physical space; terms; personal guarantee provisions?
    
  HIVE PARTNERS:
    LOE service contracts — field services; pricing; termination provisions
    Covercy — production reporting software; annual license
    Gathering/pipeline agreements — transportation; take-or-pay provisions; pricing
    Well insurance policies — annual renewal; coverage adequacy
    
  COLUMN6:
    Ad server / SSP agreements — programmatic platform; pricing; data rights
    Agency master agreements — holding company relationships; credit terms; auto-renewal
    SaaS subscriptions — ad tech stack; annual vs. monthly billing
    Office lease (if any) — term; personal guarantee?
```

## Output Format

```markdown
# Contract Tracker — [Entity]
**As of:** [Date] | **Maintained by:** Dr. Lewis | **Next review:** [Date]

---

## Active Contracts Summary

| Contract ID | Counterparty | Type | ACV | Status | Initial Term End | Auto-Renews? | Renewal Notice By | Decision Needed |
|------------|-------------|------|-----|--------|----------------|-------------|------------------|----------------|
| ALV-Marshall-2025-001 | Marshall Medical | Vendor | $[X]K | Active | [Date] | Yes | [Date] | 🟡 90 days |
| ALV-GroupA-2024-001 | [Employer Group A] | Customer | $[X]K | Active | [Date] | Yes | [Date] | ✅ 8 months |
| HIV-LOE-2024-001 | [LOE Vendor] | Vendor | $[X]K | Active | [Date] | No | — | ✅ 4 months |

---

## Upcoming Renewal Decisions

| Contract | Decision Needed By | Current ACV | Recommendation | Owner |
|---------|------------------|------------|---------------|-------|
| [Marshall Medical Billing] | [Date — 60 days] | $[X]K | Renew — performance strong; at market | CEO decision |
| [AdvancedMD EHR] | [Date — 90 days] | $[X]K | Renegotiate — price up 15%, alternatives available | Dr. Lewis to benchmark |

---

## Contracts On Watch

| Contract | Issue | Action | Owner | Due |
|---------|-------|--------|-------|-----|
| [LOE Vendor — HIVE] | Late delivery of production reports (twice in Q3) | CEO conversation with vendor; document pattern | CEO | [Date] |
```

## Output Contract
- Log within 24 hours — every executed contract must be logged in the tracker within 24 hours of signature; the most dangerous contract is the one that was signed but never tracked, because its auto-renewal date arrives unannounced; the CEO's job is to sign and run the business; Dr. Lewis's job is to ensure the signed contract lands in the tracker before anyone forgets about it; a contract signed on a Friday must be in the tracker by Monday
- Renewal decision is a business decision, not an administrative one — the contract tracker is not just a calendar system; it is the trigger for a real business decision: is this vendor still the right partner? Is this customer relationship on the right terms? Is this price still fair?; Dr. Lewis brings the renewal recommendation to the CEO with the market context (is the vendor performing? is the price at market?); the CEO decides; the tracker records the decision and the action taken
- Auto-renewals get the most aggressive tracking — a missed auto-renewal notice is expensive; an employer group contract that auto-renews for another year when Allevio was planning to renegotiate the PMPM rate costs a year of higher value; an LOE service contract that auto-renews at above-market rates commits HIVE to an expensive relationship; Dr. Lewis sets the 90-day alert, the 60-day alert, and the 30-day alert for every auto-renewing contract; these alerts are on the CEO's calendar, not just Dr. Lewis's
- HITL required: Dr. Lewis maintains and sends alerts; CEO makes all renewal decisions; Matt Mathison is informed of renewals creating obligations >$50K annual or renewals involving a material change in terms; Dr. Lewis does not terminate or renew contracts without CEO authorization; the CEO must confirm in writing (email) the renewal or termination decision before Dr. Lewis logs it and takes the corresponding action (sending the termination notice or allowing the auto-renewal)

## System Dependencies
- **Reads from:** Executed contracts (all signed agreements — filed in SharePoint/Legal/<Company>/Contracts/); legal-contract-reviewer (new contracts added to tracker after review and execution); calendar system (renewal alerts added to CEO calendar and Dr. Lewis calendar); financial model (ACV of customer contracts feeds into revenue model); fpa-rolling-forecast-updater (contract value and renewal assumptions)
- **Writes to:** Contract tracker (SharePoint/Legal/MBL/ContractTracker.xlsx — master tracker, one tab per company); renewal decision log (recorded decision + action for every renewal event); CEO calendar alerts (90/60/30-day renewal reminders); contract repository (executed contracts filed by company and year)
- **HITL Required:** Dr. Lewis logs and alerts; CEO decides on renewals; Matt Mathison informed of material renewals (>$50K or significant term changes); termination notices sent by CEO (Dr. Lewis drafts; CEO reviews and sends); Dr. Lewis does not take unilateral action on any contract (no termination, no renewal authorization without CEO approval)

## Test Cases
1. **Golden path:** Allevio signs a new employer group contract (85 members, $87 PMPM, 12 months, auto-renews) → Dr. Lewis logs within 24 hours: Contract ID ALV-GroupB-2026-001; ACV: 85 × $87 × 12 = $88,620; Effective: July 1, 2026; Initial term end: June 30, 2027; Auto-renews: Yes; Renewal notice by: May 1, 2027 (60-day notice per contract); Decision needed: March 1, 2027 (60 days before notice deadline); Dr. Lewis sets calendar alerts: September 30, 2026 (90-day alert to CEO: "Group B renewal decision due in 60 days"); November 1, 2026 (60-day alert); December 1, 2026 (30-day alert — decision must happen this week); HIPAA BAA: Confirm already in place for this employer group; Done — contract is tracked
2. **Edge case:** Dr. Lewis reviews the contract tracker and finds a HIVE LOE service contract ($180K ACV) has an auto-renewal notice deadline in 15 days with no decision logged → Dr. Lewis immediately escalates: "HIVE LOE service contract [HIV-LOE-2024-001] with [Vendor] has a 15-day renewal notice deadline — the decision to renew or terminate was not made during the 90-day or 60-day windows. We have three options: (1) Send termination notice now (15 days is within the notice period per Section 12.2); (2) Allow auto-renewal (commits HIVE to another year at current rate); (3) Send a reservation of rights letter to the vendor and request a brief extension to make the decision. My recommendation: if we are planning to renegotiate, send a termination notice today to preserve our leverage, then negotiate a new agreement. If the vendor is performing and the rate is acceptable, allow the auto-renewal. CEO must decide today." CEO decides; Dr. Lewis executes
3. **Adversarial:** CEO asks Dr. Lewis to "not bother tracking" a $12K annual software subscription "because it's small" → Dr. Lewis pushes back: "I understand the $12K contract feels like noise, but untracked contracts are how companies end up with 5-year obligations they forgot they signed. This one has a 60-day auto-renewal provision — if we miss that window, we're committed for another year. It takes me 5 minutes to log it. The discipline of logging every contract is what makes the tracker reliable — a tracker with gaps becomes untrustworthy. I'll log it now." Contract is logged; CEO is satisfied with the efficient handling

## Audit Log
All contract records retained permanently (including terminated and expired contracts — retained for 7 years per standard record retention). All renewal decision records retained (date of decision, who decided, what action was taken). Alert records retained (did the alerts fire? was the decision made within the timeline?). Contract amendments retained with the original contract. Due diligence exports retained by date (full contract list for M&A data rooms).

## Deprecation
Retire when each portfolio company has in-house counsel or a legal operations manager who maintains the contract repository — with Dr. Lewis reviewing the tracker quarterly for high-value contracts and Matt Mathison informed of all renewals creating obligations >$50K.
