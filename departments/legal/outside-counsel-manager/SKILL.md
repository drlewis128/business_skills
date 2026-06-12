---
name: outside-counsel-manager
description: "Manage outside legal counsel relationships and billing. Use when the user says 'outside counsel', 'law firm', 'legal fees', 'legal billing', 'attorney invoice', 'outside lawyer', 'legal budget', 'engage counsel', 'legal vendor', 'legal panel', 'RFP for legal', or 'outside counsel guidelines'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <select|invoice|review|budget>] [--matter-type <corporate|litigation|IP|employment|M&A>]"
---

# Outside Counsel Manager

Manage outside legal counsel relationships, engagements, and billing for MBL Partners and portfolio companies. Outside counsel is among the highest per-hour cost of any professional service — unmanaged legal spending, bill padding, and scope creep can quickly erode deal economics or operating margins. This skill manages counsel selection, engagement terms, billing review, and budget compliance.

## When to Use
- Selecting outside counsel for a new matter
- Reviewing and approving outside counsel invoices
- Setting outside counsel guidelines for a new entity
- Quarterly legal spend review against budget
- Assessing whether to move a matter from one firm to another

## Outside Counsel Selection Criteria

| Criterion | Weight | How to Evaluate |
|---------|--------|--------------|
| Relevant expertise | 40% | Have they done this specific type of matter? References? |
| MBL familiarity / existing relationship | 20% | Does counsel already know MBL, Allevio, HIVE? |
| Rate competitiveness | 20% | Compare partner/associate rates vs. market; fixed fees? |
| Firm size / responsiveness | 10% | Is the firm the right size? Will partners do the work? |
| Geographic reach | 10% | Does the matter require multi-state or national coverage? |

## Matter Type — Preferred Counsel Profile

| Matter Type | Preferred Firm Size | Rate Expectation | Fixed Fee Preferred? |
|-----------|------------------|----------------|---------------------|
| Routine corporate (entity maintenance, contracts) | Small-medium | $200-$350/hr | ✅ Yes — use fixed fees |
| M&A (acquisition) | Mid-to-large (M&A specialty) | $350-$600/hr | ❌ Hourly or capped |
| Employment litigation | Employment specialty | $250-$450/hr | ❌ Hourly or contingency |
| IP / trademark | IP specialty boutique | $300-$500/hr | ✅ Fixed for registration |
| Healthcare (HIPAA) | Healthcare specialty | $350-$600/hr | ✅ For compliance work |
| Litigation (general) | Litigation specialty | $250-$500/hr | ❌ Hourly or capped |

## Output Format

```markdown
# Outside Counsel Management Report — <Entity / Portfolio>
**Period:** <quarter/year> | **Date:** <date>
**Prepared by:** Dr. John Lewis

---

## Active Counsel Panel

| Firm | Specialty | Primary Contact | Rate (Partner/Associate) | Retainer? | Primary Entity |
|------|---------|--------------|----------------------|---------|--------------|
| <Firm A> | Corporate / M&A | <Partner name> | $400/$200/hr | No | MBL Partners |
| <Firm B> | Employment | <Partner name> | $300/$175/hr | No | All entities |
| <Firm C> | Healthcare / HIPAA | <Partner name> | $450/$225/hr | No | Allevio |
| <Firm D> | IP | <Partner name> | $375/$195/hr | No | All entities |
| <Firm E> | Litigation | <Partner name> | $350/$175/hr | No | As needed |

---

## Legal Spend Summary — YTD

| Entity | Budget | Actual YTD | Variance | % Used |
|--------|--------|-----------|---------|--------|
| MBL Partners | $<amount> | $<amount> | +/- $<amount> | <N>% |
| Allevio | $<amount> | $<amount> | | |
| HIVE Partners | $<amount> | $<amount> | | |
| Column6 | $<amount> | $<amount> | | |
| **Total** | **$<amount>** | **$<amount>** | | |

---

## Invoice Review Queue

| Invoice | Firm | Matter | Amount | Reviewed | Approved | Issues |
|---------|------|--------|--------|---------|---------|--------|
| INV-001 | <Firm A> | M&A diligence — Target Co | $12,500 | ✅ | ✅ | None |
| INV-002 | <Firm B> | Employment claim — Allevio | $4,800 | ✅ | 🟡 | 3.0 hrs "research" — request detail |
| INV-003 | <Firm C> | HIPAA compliance review | $6,200 | ✅ | ✅ | |

---

## Outside Counsel Guidelines (Standard MBL Terms)

**Billing Standards:**
- Minimum billing increment: 0.25 hours (15 minutes) — no 0.1 hour billing
- No block billing — each task must be described and timed separately
- No billing for administrative tasks (file opening, billing preparation, proofreading by secretary)
- Travel time: 50% of standard rate unless pre-approved
- New attorney/paralegals: first 10 hours on matter are non-billable orientation
- Staffing changes: notify MBL before changing lead attorney or assigning new associates

**Budget and Approval:**
- All matters require engagement letter and budget estimate before work begins
- Matters over $25K require Dr. Lewis written approval; over $100K require Matt Mathison approval
- Budget variance over 20% requires prior written approval before exceeding
- Monthly status updates for all active matters over $10K

**Invoice Requirements:**
- Invoices submitted monthly
- Invoice must include: date, timekeeper, task description, time, rate, amount
- Supporting documents on request

---

## Billing Issue Log

| Invoice | Firm | Issue | Amount in Dispute | Resolution |
|---------|------|-------|------------------|---------|
| INV-002 | <Firm B> | Block billing — "research and review" 3 hrs | $900 | Request itemized; reduce if unjustified |
| INV-010 | <Firm A> | Senior partner billing for paralegal-level tasks | $1,200 | Credit requested |
```

## Output Contract
- Budget thresholds always enforced — no matter proceeds without approval at proper authority level
- Invoice review always conducted before payment — billing errors are common and routine review recovers meaningful cost
- Outside counsel guidelines applied to all new engagements — they must be included in or referenced in engagement letters
- Staffing always monitored — most value erosion comes from over-staffing matters with junior associates
- HITL required: Dr. Lewis approves all new counsel engagements and invoices over $5K; Matt Mathison approves matters over $100K; all engagement letters signed by Dr. Lewis or designee

## System Dependencies
- **Reads from:** Outside counsel invoices, matter files, prior year legal spend (provided by Finance)
- **Writes to:** Legal spend tracker and invoice approval log (for Finance/Bill.com payment)
- **HITL Required:** Dr. Lewis reviews and approves invoices; Matt Mathison approves major matters; Finance processes payment via Bill.com

## Test Cases
1. **Golden path:** Monthly invoice review → Firm A (corporate) invoice $8,500 — reviewed, approved, no issues; Firm B (employment) invoice $4,800 — block billing on 2 entries, $600 credit requested, remaining $4,200 approved; Firm C (HIPAA) invoice $6,200 — approved; total legal spend at 67% of annual budget with 3 months remaining — on track
2. **Edge case:** Matter scope expands significantly (M&A target has more complexity than expected) → require updated budget estimate from outside counsel before authorizing additional work; do not simply approve overages; ensure Dr. Lewis and Matt Mathison are aware
3. **Adversarial:** Outside counsel bills for 30 hours on a matter that was clearly 10 hours of work → request detailed time records; reduce or dispute overbilled time; if pattern continues, evaluate replacing counsel; document in outside counsel performance record

## Audit Log
Invoice approval log maintained. Matter budgets tracked vs. actual. Engagement letters retained. Annual legal spend by entity and matter type.

## Deprecation
Retire when MBL deploys a legal spend management platform (Legal Tracker, SimpleLegal) with automated invoice review, billing guideline enforcement, and matter budget tracking.
