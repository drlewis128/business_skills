---
name: ops-vendor-manager
description: "Manage vendor relationships and performance. Use when the user says 'vendor management', 'manage a vendor', 'vendor relationship', 'vendor performance', 'vendor review', 'is our vendor performing', 'vendor accountability', 'vendor contract', 'vendor SLA', 'vendor issues', 'vendor not delivering', 'review vendor performance', 'vendor scorecard', or 'vendor management plan'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--vendor <vendor name>] [--action <review|remediate|terminate|onboard>]"
---

# Ops Vendor Manager

Manage vendor relationships at MBL portfolio companies — ensuring vendors deliver what they promised, at the agreed price, and with acceptable quality. Vendor management is one of the highest-ROI operational disciplines: a poorly managed vendor relationship costs more than the contract value through delays, rework, disputes, and missed SLAs. The standard is clear expectations, documented performance, and proactive relationship management — not reactive firefighting when something goes wrong.

## When to Use
- A new vendor has been onboarded and needs a management structure
- A vendor is not delivering to agreed SLAs and a remediation plan is needed
- Quarterly vendor review — assessing performance across active vendors
- A vendor contract is up for renewal and the renewal decision needs an objective assessment
- Matt Mathison asks "how is [vendor] performing?"
- A vendor relationship is deteriorating and escalation or termination is being considered

## Vendor Management Framework

```
Vendor tiers — management intensity by risk and spend:
  Tier 1 — Strategic (>$50K/year or operationally critical):
    Full SLA tracking, quarterly business review, executive relationship, Dr. Lewis owns
    Examples: AdvancedMD (Allevio RCM), Covercy (HIVE), QuickBooks, Bill.com, major IT vendors
  
  Tier 2 — Preferred ($10K-$50K/year or important but not critical):
    SLA tracking, annual review, manager relationship, Dr. Lewis oversight
    Examples: marketing vendors, specialized service providers, mid-tier software
  
  Tier 3 — Standard (<$10K/year, easily replaceable):
    Contract on file, basic performance monitoring, owner-managed
    Examples: office supplies, minor SaaS tools, one-time services

Vendor onboarding checklist:
  W-9 on file before first payment
  Signed contract with specific deliverables, timelines, and payment terms
  SLAs defined (response time, uptime, delivery deadlines)
  Primary contact identified and confirmed
  HIPAA BAA signed if vendor handles PHI (Allevio — mandatory)
  Vendor insurance verified (COI on file for service vendors)
  Vendor added to approved vendor list
  
Vendor termination triggers:
  3+ consecutive SLA misses
  Material breach of contract
  Significant security or compliance incident
  Vendor insolvency or acquisition that changes service quality
  Better alternative available at significant cost/quality improvement
```

## Output Format

```markdown
# Vendor Management Record — <Vendor Name>
**Company:** <Entity> | **Vendor tier:** [1 / 2 / 3]
**Contract value:** $[X]/year | **Contract period:** [Date] → [Date]
**Primary contact:** [Name, email] | **MBL contact:** [Dr. Lewis or delegate]
**Date:** [Date] | **Last reviewed:** [Date]

---

## Vendor Profile

**Services provided:** [Specific description of what this vendor does for the company]
**Why this vendor:** [Rationale — specific capability, unique value, or switching cost]
**Alternatives considered:** [Are there alternatives? What would it take to switch?]
**Contract type:** [MSA + SOW / One-time / Subscription / Retainer]
**Renewal date:** [Date] | **Notice period:** [X days]
**Payment terms:** [Net 30 / Monthly subscription / Milestone-based]

---

## SLA Tracking

| SLA | Threshold | Current period | Prior period | 12-month avg | Status |
|-----|---------|--------------|-------------|-------------|--------|
| [Response time to support tickets] | <4 hrs | [X hrs] | [X hrs] | [X hrs] | 🟢 / 🟡 / 🔴 |
| [Uptime / availability] | >99.5% | [X%] | | | |
| [Deliverable on-time rate] | >90% | [X%] | | | |
| [Error/defect rate] | <2% | [X%] | | | |

**SLA performance trend:** 🟢 Improving / → Stable / 🔴 Declining

**SLA misses this quarter:** [N] — [List each: date, what was missed, impact, vendor response]

---

## Relationship Health

| Factor | Assessment | Notes |
|--------|-----------|-------|
| Communication quality | 🟢 / 🟡 / 🔴 | [Are they responsive? Proactive? Transparent about issues?] |
| Problem resolution | 🟢 / 🟡 / 🔴 | [When issues arise, do they resolve quickly and fairly?] |
| Contract adherence | 🟢 / 🟡 / 🔴 | [Are they honoring the terms — price, scope, deliverables?] |
| Relationship value | 🟢 / 🟡 / 🔴 | [Do we feel they value us as a client? Are they a partner or a vendor?] |
| **Overall relationship health** | 🟢 / 🟡 / 🔴 | |

---

## Financial Summary

| Metric | Value |
|--------|-------|
| Contract value (annual) | $[X] |
| Actual spend YTD | $[X] |
| Projected full-year spend | $[X] |
| Overruns vs. contract | $[X] (explain: [reason]) |
| Cost per unit (if applicable) | $[X] per [unit] |
| vs. market benchmark | [X% above/below market] |

---

## Renewal / Termination Decision

**Contract expires:** [Date] | **Decision needed by:** [Date — allows for notice period]

**Option A — Renew as-is:**
- Pros: [Continuity, relationship, switching cost]
- Cons: [Price, performance concerns if any]
- Recommended renewal terms: [Same / Negotiate price / Add SLA]

**Option B — Renegotiate:**
- Leverage: [Our spend level, market alternatives, performance gaps they must address]
- Target: [Price reduction X% / New SLA / Additional scope at same price]
- Walk-away: [If they won't meet [specific term], we terminate]

**Option C — Terminate and Replace:**
- Replacement vendor identified: [Yes — [Vendor] / No — need to source]
- Estimated switching cost: $[X] (migration labor + transition period)
- Estimated annual savings from switch: $[X]
- Net benefit of switching: $[savings - switching cost] payback in [X months]

**Recommendation:** [Option A/B/C — with rationale]
**Matt Mathison decision required:** [Yes — Tier 1 vendors and contracts >$50K / No]

---

## Issue Log

| Date | Issue | Severity | Vendor response | Resolution | Status |
|------|-------|---------|----------------|-----------|--------|
| [Date] | [Description] | 🔴 / 🟡 / 🟢 | [How they responded] | [What was done] | ✅ / 🟡 Open |

---

## Action Items

| Action | Owner | By when |
|--------|-------|---------|
| [Remediation plan sent to vendor] | Dr. Lewis | [Date] |
| [Contract renewal negotiation] | Dr. Lewis | [Date — 90 days before renewal] |
```

## Output Contract
- W-9 and BAA before first payment — these are non-negotiable; a vendor without a W-9 on file cannot be paid (IRS requirement for 1099 threshold tracking); a vendor handling PHI at Allevio without a signed BAA is a HIPAA violation regardless of any other quality of the relationship; these are checked at onboarding and verified before first payment is released through Bill.com
- SLAs must be contractually defined before tracking — "vendor performance" cannot be measured if the contract doesn't specify what performance means; if a vendor contract has no SLAs, the first management action is to add them at the next renewal or as an amendment; tracking against undefined expectations is a dispute waiting to happen
- Renewal decisions have 90-day lead time — vendor contracts with inadequate notice (terminating or renegotiating with less than 30 days notice) destroy leverage and sometimes create contractual liability; Dr. Lewis maintains a renewal calendar with 90-day lead time for all Tier 1 and 2 vendors; the renewal decision is made with enough runway to negotiate or transition
- Termination has structured escalation — vendor termination is not immediate for performance issues (unless there's a material breach or security incident); the escalation path is: (1) documented SLA miss + vendor notification, (2) remediation plan with timeline, (3) second miss → formal notice of intent to terminate, (4) termination; this creates a defensible record and gives the vendor opportunity to correct before the relationship is ended
- HITL required: Dr. Lewis manages all Tier 1 vendor relationships; Tier 2 managed by company manager with Dr. Lewis oversight; renewal decisions for Tier 1 and contracts >$50K require Matt Mathison approval; termination of Tier 1 vendor requires Matt Mathison decision; any vendor security or HIPAA incident requires Matt Mathison notification same day

## System Dependencies
- **Reads from:** Contracts (SharePoint/Legal/<Company>/Contracts/), Bill.com payment history, SLA performance data, vendor invoices
- **Writes to:** Vendor management record (SharePoint/Ops/<Company>/Vendors/); issue log; renewal recommendation; Matt Mathison brief (for Tier 1 renewal or termination)
- **HITL Required:** Dr. Lewis owns Tier 1; Matt Mathison approves Tier 1 renewals >$50K and terminations; BAA and COI verification by Dr. Lewis; payment release contingent on W-9 on file (Bill.com)

## Test Cases
1. **Golden path:** Allevio — quarterly review of AdvancedMD (Tier 1 — RCM platform, ~$8K/month) → SLAs: uptime 99.7% (target >99.5% ✅), support response 3.2 hrs avg (target <4 hrs ✅), claims submission error rate 1.1% (target <2% ✅); Relationship health: 🟢 across all dimensions — responsive account manager, proactive about regulatory updates; Financial: $96K/year as contracted, YTD spend on track; Renewal: 8 months away; Recommendation: renew as-is at current terms; leverage the renewal conversation to secure a price freeze for the next 24 months (current market pricing is flat); no Matt Mathison decision needed unless they attempt to raise rates >10%
2. **Edge case:** A vendor misses 3 consecutive deliverable deadlines but the relationship manager at the vendor is a personal friend of the CEO → The SLA tracking and issue log document the facts regardless of the relationship; Dr. Lewis presents the performance data to the CEO objectively: "Here are the 3 missed deliverables, the impact on our project timelines, and the cost of rework. The question is whether the relationship can recover. I'd recommend a formal remediation conversation with the vendor's leadership (above the relationship manager) to set expectations for the next 90 days." The personal relationship is acknowledged but the performance standard is not compromised
3. **Adversarial:** "We've always used this vendor, they're fine" → "Always used" is not a performance assessment; respond: "I hear you on the continuity value — that's real. What I want to understand is: are we getting what the contract promises, at the market rate, with acceptable quality? Let me spend 2 hours pulling the SLA data and comparing the price to 2 alternatives. If everything checks out, we renew with confidence. If something's off, you'll want to know before the renewal date when you still have leverage."

## Audit Log
All vendor management records retained by vendor and date. SLA performance data retained by quarter. Issue logs retained permanently. Contract versions retained with dates. Renewal decisions and negotiation outcomes retained. Matt Mathison approvals retained. HIPAA BAAs retained permanently (Allevio).

## Deprecation
Retire when portfolio companies have dedicated operations managers who own vendor relationships, maintain vendor scorecards in a vendor management system, and present quarterly vendor reports to Dr. Lewis as oversight rather than requiring Dr. Lewis to manage each relationship directly.
