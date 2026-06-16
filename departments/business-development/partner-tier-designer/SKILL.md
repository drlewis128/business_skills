---
name: partner-tier-designer
description: "Design a partner tier structure. Use when the user says 'partner tiers', 'design partner program tiers', 'Gold Silver Bronze partner levels', 'partner program structure', 'partner tier benefits', 'create a tiered partner program', 'partner level design', 'partner program framework', 'what tiers should our partners have', or 'partner program levels'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--partner-count <estimated number of partners>]"
---

# Partner Tier Designer

Design a partner tier structure — defining the levels partners earn, the benefits each level receives, and the criteria for moving between tiers. A tier structure motivates high-performing partners to do more (by giving them better rewards for higher volume), while providing a structured path for new partners to grow. Without tiers, all partners are treated equally, which means top performers are under-incentivized and low performers have no motivation to improve.

## When to Use
- Building a new partner program from scratch
- An existing partner program has no differentiation — everyone is treated the same
- Top partners are under-engaged and signaling they want more
- The partner program has grown to >5 partners and needs a structure to manage at scale
- Refreshing or restructuring an existing partner tier program

## Tier Design Principles

```
1. Three tiers is the right number for most programs:
   Gold (top 10-20%), Silver (middle 40-50%), Bronze (entry level / everyone else).
   More than 4 tiers creates confusion; fewer than 3 creates insufficient differentiation.

2. Benefits must be meaningful to partners, not just to us:
   "Priority response" is meaningful. "Access to our partner newsletter" is not.
   Design tier benefits around what top partners actually value: better economics,
   faster support, co-marketing, executive access, and early product access.

3. Criteria must be objective and trackable:
   "Strong relationship" is not a tier criterion. "≥8 qualified referrals in a calendar year"
   is. Partners should be able to self-assess their tier status at any time.

4. Economics must scale meaningfully between tiers:
   If the difference between Silver and Gold economics is 2%, no one will care.
   The tier structure needs meaningful economic differentiation to drive behavior.

5. The barrier to Gold must be achievable by the top 10-20% of partners:
   If no one can hit Gold, it's not motivating. If 60% of partners are Gold, it's meaningless.
```

## Output Format

```markdown
# Partner Tier Structure — <Company Name>
**Program name:** [Company] Partner Program
**Tiers:** Bronze → Silver → Gold
**Effective date:** <date>
**Prepared by:** Dr. John Lewis | **Approved by:** Matt Mathison / CEO

---

## Tier Overview

| Tier | Status | Target partners | Referral economics |
|------|--------|-----------------|-------------------|
| 🥇 Gold | Preferred Partner | Top 10-20% | [X%] referral fee |
| 🥈 Silver | Select Partner | Middle 40-50% | [Y%] referral fee |
| 🥉 Bronze | Certified Partner | All qualified partners | [Z%] referral fee |

---

## Tier Qualification Criteria (Annual)

| Criterion | 🥉 Bronze | 🥈 Silver | 🥇 Gold |
|-----------|---------|---------|------|
| Minimum qualified referrals submitted | [N] | [N] | [N] |
| Minimum partner-attributed revenue closed | $[X] | $[X] | $[X] |
| Partner agreement in good standing | ✅ Required | ✅ Required | ✅ Required |
| Training completion | [Required modules] | [More modules] | [Full program] |
| Referral quality rate (% that meet ICP) | >[X%] | >[Y%] | >[Z%] |

*Tier assessed annually on [Date]. Partners are notified 30 days before assessment.*

---

## Tier Benefits

| Benefit | 🥉 Bronze | 🥈 Silver | 🥇 Gold |
|---------|---------|---------|------|
| **Economics** | | | |
| Referral fee | [Z%] | [Y%] | [X%] |
| Fee payment timing | [45 days] | [30 days] | [15 days] |
| Annual bonus for exceeding targets | — | +[$X] if >[N] referrals | +[$X] if >[N] referrals |
| **Support** | | | |
| Dedicated partner success contact | ❌ | ⚠️ Shared | ✅ Dedicated |
| Response SLA | [5 business days] | [2 business days] | [1 business day] |
| Escalation path | Standard | Priority | Executive |
| **Marketing & Visibility** | | | |
| Listed in partner directory | Basic | Standard | Featured |
| Co-marketing opportunities | ❌ | ⚠️ On request | ✅ Quarterly |
| Co-authored content | ❌ | ⚠️ 1/year | ✅ Up to 4/year |
| **Access & Influence** | | | |
| Quarterly executive access | ❌ | ❌ | ✅ (Dr. Lewis QBR) |
| Early product access | ❌ | ✅ | ✅ |
| Product roadmap input | ❌ | ❌ | ✅ Annual session |
| Dedicated slack/channel | ❌ | ❌ | ✅ |

---

## Tier Progression

**New partners start at:** Bronze

**Tier review cadence:** Annual (every [January 1])

**Upgrade path:** Partners who meet Silver or Gold criteria at annual review are upgraded. Upgrade is effective [45 days] after the review date.

**Downgrade policy:** Partners who fall below their current tier criteria at annual review are notified and given a 90-day grace period to recover. If they still don't meet criteria after the grace period, they move down one tier.

**Immediate disqualification:** Partners who violate the agreement (misrepresentation, exclusivity breach, THRIVE integrity violation) are immediately placed at Bronze or exited from the program, at the company's discretion.

---

## Economics Model

| Tier | Referral fee | On $50K contract | On $100K contract | On $200K contract |
|------|-------------|-----------------|------------------|------------------|
| 🥇 Gold | [X%] | $[X] | $[X] | $[X] |
| 🥈 Silver | [Y%] | $[Y] | $[Y] | $[Y] |
| 🥉 Bronze | [Z%] | $[Z] | $[Z] | $[Z] |

*All fees paid after contract signature + [N] business days. Fee calculated on Year 1 contract value.*

---

## Communication Plan

| Milestone | Action | Owner |
|-----------|--------|-------|
| Program launch | All-partner announcement (existing partners assigned initial tier) | Dr. Lewis |
| Tier upgrade | Personal email from Dr. Lewis (or CEO for Gold upgrades) | Dr. Lewis |
| Tier downgrade | Personal call + written explanation + grace period terms | Dr. Lewis |
| Annual review | All partners notified of tier status + YTD progress | Dr. Lewis |
| Gold achievement | Public recognition in partner newsletter / social | Comms |
```

## Output Contract
- Three tiers always (Bronze/Silver/Gold) — unless there are <10 total partners, in which case a two-tier structure (Standard/Preferred) is acceptable; four or more tiers without a partner program of >50 partners is almost always too complex
- Criteria must be objective and numeric — tier criteria that can't be measured precisely create disputes and accusations of favoritism; every criterion must be trackable in the CRM
- Economics must differ meaningfully between tiers — if the economics difference is <3 percentage points between adjacent tiers, the tier structure is providing visual differentiation without substantive motivation; make it meaningful
- Benefits must include at least one non-economic benefit per tier — economics motivate referral volume, but non-economic benefits (executive access, co-marketing, product input) motivate relationship depth and advocacy; include both
- HITL required: Dr. Lewis designs; Matt Mathison approves tier economics (any change to referral fee structures); legal reviews tier benefit commitments that could be interpreted as contractual; all-partner communication reviewed by CEO before sending

## System Dependencies
- **Reads from:** Partner agreements, partner performance data, competitive partner program benchmarks
- **Writes to:** Partner program documentation (SharePoint/BD/Partner Program); partner agreements (if tiers are incorporated by reference); partner communications
- **HITL Required:** Dr. Lewis designs; Matt Mathison approves economics; legal reviews; CEO approves partner-facing communication

## Test Cases
1. **Golden path:** Allevio launches a formal partner tier program with 8 referral partners → analyzed performance data: 2 partners generate 70% of referrals; 3 partners are moderate; 3 are essentially inactive; Gold criteria: ≥8 referrals OR ≥$80K attributed revenue (will hit 2 partners in first year); Silver: ≥4 referrals OR ≥$30K; Bronze: signed + ≥1 qualified referral; Economics: Gold 22%, Silver 18%, Bronze 15%; top partners upgraded to Gold Day 1 with retroactive credit; sent personalized letters from CEO; Gold partners each expressed they "had no idea we were valued at this level" — immediate engagement increase
2. **Edge case:** A Gold-tier partner's performance drops significantly in Year 2 (their champion left, they got distracted) → the downgrade conversation is the hardest in partner management; lead with the relationship: "We want to understand what's changed before we discuss tier status"; give a genuine 90-day recovery plan with specific targets; if they can't hit them, downgrade to Silver — but do it personally and explain it as a tier review, not a punishment; most partners recover when given a specific goal
3. **Adversarial:** A partner argues the tier criteria are unfair — they sent 7 high-quality referrals but Gold requires 8, and 1 referral fell through due to a company-side issue (we couldn't close it) → evaluate whether the criteria are working as intended; if the partner was genuinely Gold-performing but was blocked by a company-side issue, use executive discretion to award Gold for the year; document the override and the rationale; and consider whether the criteria need refinement (perhaps "6 qualified referrals OR $80K attributed" gives more paths to Gold)

## Audit Log
Tier structure retained by version and effective date. Partner tier assignments logged annually. Upgrade/downgrade decisions and rationale documented. Economics changes approved by Matt Mathison and logged.

## Deprecation
Retire when portfolio companies have dedicated partner program managers who own the tier structure as a standing program element with its own annual review cycle.
