---
name: ops-vendor-scorecard
description: "Score vendor performance against contract commitments. Use when the user says 'vendor scorecard', 'vendor performance', 'rate a vendor', 'how is vendor performing', 'vendor review', 'vendor evaluation', 'vendor report card', 'is vendor meeting SLAs', 'vendor KPIs', 'vendor grades', 'supplier scorecard', 'vendor performance review', or 'vendor assessment'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--vendor <vendor name>] [--entity <company name>] [--period <Q1|Q2|Q3|Q4|annual>]"
---

# Ops Vendor Scorecard

Score vendor performance objectively against contract commitments at MBL portfolio companies — producing a numerical grade that enables fair, data-driven vendor reviews and decisions. The vendor scorecard is the enforcement tool behind the vendor relationship (ops-vendor-manager): it captures what actually happened vs. what was promised, so vendor conversations are grounded in facts rather than impressions. Good vendors should score well; poor vendors either improve or are replaced.

## When to Use
- Quarterly review of Tier 1 and Tier 2 vendors (>$10K/year)
- A vendor has missed SLAs and a formal record is needed before escalation
- Annual contract renewal — is this vendor worth renewing at current terms?
- A vendor claims they're performing well but you're not sure
- Comparing two vendors for the same service

## Vendor Scorecard Framework

```
Scoring dimensions (100 points total):
  1. SLA/Uptime Compliance (25 pts)
     - Did the vendor meet contractual uptime/availability commitments?
     - For SaaS: measured vs. contracted uptime (99.5%, 99.9%, etc.)
     - For service vendors: did they deliver on agreed timelines?
     - Score: % of SLA targets met × 25

  2. Quality/Accuracy (25 pts)
     - Is the work/output meeting quality standards?
     - Defect rate, error rate, rework required
     - Customer or internal satisfaction with deliverables
     - Score: subjective 1-5 × 5 points per point

  3. Responsiveness/Communication (20 pts)
     - How fast and clearly does the vendor respond to issues?
     - Time to acknowledge + time to resolve
     - Proactive communication vs. reactive
     - Score: subjective 1-5 × 4 points per point

  4. Relationship/Strategic Value (15 pts)
     - Does this vendor behave like a partner or a transaction?
     - Do they proactively suggest improvements?
     - Do they understand our business?
     - Score: subjective 1-5 × 3 points per point

  5. Commercial/Value (15 pts)
     - Are we getting good value for the price paid?
     - Is pricing competitive vs. market?
     - Are they transparent about changes and costs?
     - Score: subjective 1-5 × 3 points per point

Grade scale:
  90-100: A — Excellent. Renew; deepen relationship.
  80-89: B — Good. Renew with minor improvement expectations.
  70-79: C — Acceptable. Renew with formal improvement plan.
  60-69: D — Below standard. Improvement required before renewal; begin exploring alternatives.
  <60: F — Failing. Initiate exit process; source replacement.

Tier by annual spend:
  Tier 1 (>$50K/yr or operationally critical): Reviewed quarterly + annual deep-dive
  Tier 2 ($10K-$50K): Reviewed semi-annually
  Tier 3 (<$10K): Reviewed annually
```

## Output Format

```markdown
# Vendor Scorecard — <Vendor Name>
**Company:** <Entity> | **Review period:** [Q/Year or Date range]
**Vendor tier:** [Tier 1 / 2 / 3] | **Annual spend:** $[X]
**Contract renewal date:** [Date] | **Days until renewal:** [N]
**Prepared by:** Dr. John Lewis | **Date:** [Date]

---

## Score Summary

| Dimension | Weight | Raw score | Weighted score |
|-----------|--------|----------|---------------|
| SLA/Uptime Compliance | 25 pts | [X/5] | [X pts] |
| Quality/Accuracy | 25 pts | [X/5] | [X pts] |
| Responsiveness/Communication | 20 pts | [X/5] | [X pts] |
| Relationship/Strategic Value | 15 pts | [X/5] | [X pts] |
| Commercial/Value | 15 pts | [X/5] | [X pts] |
| **Total** | **100 pts** | | **[X/100]** |

**Grade:** [A/B/C/D/F] | **Trend vs. last review:** [Improving ↑ / Stable → / Declining ↓]

---

## Dimension Detail

### 1. SLA/Uptime Compliance ([X/25])

| SLA commitment | Target | Actual | Met? |
|---------------|--------|--------|------|
| [Uptime] | [99.5%] | [X%] | ✅/❌ |
| [Response time] | [<4 hrs] | [X hrs avg] | ✅/❌ |
| [Delivery timeline] | [X days] | [X days avg] | ✅/❌ |

**SLA violations this period:** [N incidents — brief description]
**Credits applied:** $[X] (per contract SLA penalty clause)

### 2. Quality/Accuracy ([X/25])

**Quality assessment:** [Specific — what went well, what had errors]
**Rework required:** [N instances] | **Error rate:** [X%]
**Notable quality issues:** [Description if any]

### 3. Responsiveness/Communication ([X/20])

**Average response time:** [X hours] (target: [Y hours])
**Issue resolution time:** [X days] (target: [Y days])
**Proactive communication:** [Yes — examples / No — reactive only]
**Notable communication gaps:** [Description if any]

### 4. Relationship/Strategic Value ([X/15])

**Vendor understands our business:** [Yes / Partial / No]
**Proactive suggestions/improvements:** [N suggestions, [X] valuable]
**Escalation handling:** [How did they handle escalations?]
**Key relationship contacts:** [Primary contact name and quality of relationship]

### 5. Commercial/Value ([X/15])

**Value assessment:** [Are we getting what we're paying for?]
**Pricing vs. market:** [Competitive / Above market / Unknown]
**Surprise costs:** [N unexpected charges totaling $X]
**Transparency:** [High / Medium / Low]

---

## SLA Incident Log

| Date | Incident | Impact | Resolution time | Credits |
|------|---------|--------|----------------|---------|
| [Date] | [Description] | [Impact on operations] | [X hrs] | $[X] |

---

## Renewal Recommendation

**Score:** [X/100] | **Grade:** [A/B/C/D/F]

**Recommendation:** ✅ Renew / ⚠️ Renew with conditions / 🔴 Begin exit process

**Rationale:** [Why — specific, grounded in the scores above]

**Conditions for renewal (if applicable):**
- [ ] [Specific improvement required before or at renewal]
- [ ] [Pricing negotiation target]

**Alternatives identified:** [Yes — [Vendor name] at $[X] / No — begin sourcing]

---

## Matt Mathison Brief (if Tier 1)

[Vendor name] scored [X/100] ([Grade]) for [period]. [One sentence on biggest issue or strength]. [Renewal recommendation in one sentence].
```

## Output Contract
- Scores are backed by data — SLA/uptime scores come from actual vendor logs, monitoring tools, or contract violation records; quality and responsiveness scores are based on documented incidents, not general impressions; the scorecard protects both sides: it gives good vendors documented credit and gives poor vendors a fair, transparent basis for improvement requirements
- Declining trends are escalated before renewal — a vendor on a C trajectory heading into renewal gets a formal improvement plan at 90-day notice; a vendor on an F trajectory gets an exit notification; Dr. Lewis doesn't wait until renewal day to surface performance issues; the 90-day rule means the action happens before the leverage disappears
- HITL required: Dr. Lewis reviews all Tier 1 scorecards quarterly; CEO reviews Tier 1 scores semi-annually; Matt Mathison is notified when a Tier 1 vendor grades D or F, or when a critical vendor relationship is at risk; renewal decisions >$50K/year require Matt Mathison awareness; exit decisions for Tier 1 vendors require Dr. Lewis + CEO alignment before notice is given

## System Dependencies
- **Reads from:** Vendor contracts, SLA logs, Bill.com payment history, incident records, prior scorecards
- **Writes to:** Vendor scorecard (SharePoint/Ops/<Company>/Vendors/<Vendor>/Scorecards/); renewal recommendation; Matt Mathison brief if Tier 1
- **HITL Required:** Dr. Lewis reviews; CEO reviews Tier 1 semi-annually; Matt Mathison notified for D/F grades or Tier 1 renewal decisions; exit decisions require alignment

## Test Cases
1. **Golden path:** Quarterly review of Allevio's AdvancedMD (Tier 1, $48K/year) → SLA: 99.7% uptime vs. 99.5% contracted = 25/25; Quality: occasional claim submission errors, mostly resolved quickly — 3.5/5 = 17.5/25; Responsiveness: average 6-hour response vs. 4-hour SLA = 3/5 = 12/20; Relationship: account manager proactively flagged 2 payer rule changes = 4/5 = 12/15; Commercial: 8% price increase at last renewal, now at market = 3.5/5 = 10.5/15; Total: 77/100 — Grade C; Recommendation: renew with formal request for response time improvement; not flagging to Matt Mathison (C, improving trend)
2. **Edge case:** Vendor claims 99.9% uptime but you had 3 outages last quarter → Pull the vendor's status page history; document each outage (date, duration, business impact); calculate actual uptime percentage; if it's below contracted SLA, calculate credits owed and request them formally per the contract; a vendor who claims SLA compliance despite outages is either miscalculating or not tracking — either way, the contract defines truth, not the vendor's assertion
3. **Adversarial:** "I have a good relationship with this vendor — they'll do right by us even without the formal review" → Relationships are maintained by the people in them, not the companies; when the account manager changes (and they will), the relationship resets; the scorecard protects you when that happens; it also protects good vendors from being blamed for issues that aren't their fault; respond: "I'm glad the relationship is strong. Let's run the scorecard anyway — it'll either confirm what you already know or surface something worth talking about. Either way, we'll have the data to make the renewal decision confidently."

## Audit Log
All scorecards retained by vendor, company, and period. SLA incident logs retained as attachments. Renewal decisions and rationale retained. Matt Mathison notifications retained. Trend analysis spans at least 4 consecutive quarters once established.

## Deprecation
Retire when portfolio companies have procurement or finance functions that own vendor management, conduct scorecards independently, and report results to Dr. Lewis rather than having him build and own the process.
