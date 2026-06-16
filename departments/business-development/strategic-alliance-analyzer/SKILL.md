---
name: strategic-alliance-analyzer
description: "Analyze a strategic alliance opportunity. Use when the user says 'strategic alliance', 'analyze a partnership opportunity', 'should we partner with', 'alliance analysis', 'evaluate a strategic partnership', 'assess a potential partner', 'analyze this partnership deal', 'strategic partnership evaluation', 'partnership due diligence', or 'is this partner worth pursuing'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--partner <company name>] [--type <referral|co-sell|technology|distribution>] [--entity <our company>]"
---

# Strategic Alliance Analyzer

Evaluate a specific strategic alliance opportunity — assessing alignment, financial potential, risks, and the deal terms that would make the partnership work. Not every partnership opportunity is worth pursuing; this skill determines which are and provides the analysis to make the case to Matt Mathison or a portfolio company CEO.

## When to Use
- An inbound partnership inquiry arrives that looks promising
- A potential partner has been identified and needs to be evaluated before outreach
- Matt Mathison asks "what do you think about partnering with [Company]?"
- A LOI or MOU for a partnership agreement is being considered
- A competitive partnership is being proposed that requires a response

## Evaluation Framework

```
Strategic alliance evaluation dimensions:

1. Strategic fit: Does this partner's market, customer base, and mission align with ours?
2. Revenue potential: What specific revenue can this alliance generate — in what timeframe?
3. Competitive impact: Does this partnership strengthen our competitive position?
4. Operational feasibility: Can we actually support this partnership with current resources?
5. Risk profile: What could go wrong — contractually, competitively, operationally?
6. Partner quality: Is this a partner we would be proud of — THRIVE alignment?
```

## Output Format

```markdown
# Strategic Alliance Analysis — <Partner Name>
**Our entity:** <Company> | **Potential partner:** <Partner Company>
**Alliance type:** Referral / Co-sell / Technology / Distribution / Strategic
**Date:** <date> | **Prepared by:** Dr. John Lewis | **For:** Matt Mathison / CEO

---

## Partner Overview

| Item | Detail |
|------|--------|
| Company | <Partner name> |
| Founded | <Year> |
| Revenue (est.) | $<X> (<source>) |
| Business model | <Description> |
| Customer base | <Who they serve — size and description> |
| Why they matter | <Why this partner has the market access or capability we care about> |

---

## Strategic Fit Analysis

| Dimension | Score (1-5) | Evidence | Notes |
|-----------|------------|---------|-------|
| Customer overlap (do they serve who we want to serve?) | [1-5] | [Specific evidence] | |
| Mission / market alignment (same direction?) | [1-5] | [Evidence] | |
| Non-competitive (no future head-to-head risk?) | [1-5] | [Evidence] | |
| Partner capability (can they actually deliver what they're promising?) | [1-5] | [Evidence] | |
| Partner credibility (reputation, financial stability) | [1-5] | [Evidence] | |

**Strategic fit score:** [Total/25] — ✅ Strong / ⚠️ Moderate / ❌ Weak

---

## Revenue Potential Model

| Scenario | Assumptions | Year 1 | Year 3 |
|---------|------------|--------|--------|
| Bear | [Conservative assumptions — low partner engagement, long sales cycle] | $[X] | $[X] |
| Base | [Moderate assumptions — normal adoption curve] | $[X] | $[X] |
| Bull | [Optimistic — partner fully engaged, fast activation] | $[X] | $[X] |

**Key revenue assumptions:**
- Partner's relevant customer base: [N customers]
- Estimated conversion rate of partner customers: [X%]
- Average contract value of a partner-attributed customer: $[X]
- Time to first revenue after signing: [N] months

**Revenue attribution model:** [How we'll track what came from this partner]

---

## Competitive Impact

| Question | Answer |
|---------|--------|
| Does this partner work with our competitors? | ✅ No / ⚠️ Yes — [which ones, on what terms] |
| Could this partner become a competitor? | ✅ Unlikely / ⚠️ Possible — [scenario] |
| Does this partnership block a competitor from this partner? | ✅ Yes / ❌ No / ⚠️ Partial |
| Does exclusivity make sense? | ✅ Yes — [rationale] / ❌ No |

---

## Operational Feasibility

| Requirement | Can we deliver? | Resources required |
|------------|----------------|------------------|
| Partner onboarding (training, materials) | ✅ / ⚠️ / ❌ | [What it takes] |
| Integration (if technical) | ✅ / ⚠️ / ❌ | [Dev resources, timeline] |
| Partner support (ongoing) | ✅ / ⚠️ / ❌ | [Hours/week, who] |
| Compliance (HIPAA, regulatory) | ✅ / ⚠️ / ❌ | [Assessment required] |

---

## Risk Assessment

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|
| Partner doesn't deliver promised volume | Medium | Medium | [Volume commitments in contract; 6-month review] |
| Partner shares our IP or customer data inappropriately | Low | High | [NDA + data sharing agreement; access controls] |
| Partnership becomes competitor | Low | High | [Non-compete clause; exclusivity negotiation] |
| Partner is acquired by a competitor | Low | High | [Change of control clause in agreement] |

---

## Proposed Deal Terms

| Term | Our position | Flexibility |
|------|-------------|-----------|
| Revenue share / referral fee | [X%] | [Low / Medium / High] |
| Exclusivity | [None / Time-limited X months] | [Low — not negotiable without Matt Mathison] |
| Agreement term | [12 months, auto-renew] | [Medium] |
| Data sharing | [Limited — no PHI without BAA] | [Low — legal requirement] |
| Performance milestones | [Partner must refer N customers in 6 months] | [Medium] |
| Termination | [30-day notice; immediate for breach] | [Medium] |

---

## Recommendation

**Verdict:** ✅ Pursue / ⚠️ Pursue with conditions / ❌ Pass

**Strategic fit score:** [N/25]
**Base case Year 1 revenue:** $[X]
**Primary risk:** [The one risk most likely to sink this partnership]

**Recommended next step:** [Specific — "Schedule intro call at VP level" / "Send term sheet" / "Pass with note to revisit in 6 months" / "Pass permanently"]

**Matt Mathison action needed:** [Approve to pursue / Approve deal terms / No action — Dr. Lewis managing]
```

## Output Contract
- Revenue model always has 3 scenarios — a single revenue projection for a partnership is not believable; bear/base/bull with explicit assumptions is required; the base case is the most important commitment
- Competitive conflict always assessed — a partnership with a company that also works with our competitors is not automatically a dealbreaker, but it must be disclosed and managed; the analysis must address it explicitly
- Operational feasibility is not optional — partnerships that require more internal resources than they generate revenue are liabilities; the feasibility section prevents partnerships that sound strategic but are operationally draining
- Deal terms are always proposed before negotiation — going into a partnership negotiation without defined positions creates negotiating from strength of the other side; this analysis outputs the deal term starting positions
- HITL required: Dr. Lewis builds the analysis; Matt Mathison approves pursuing any strategic partnership; legal reviews all partnership agreements; HIPAA / compliance assessment required for any Allevio partnership involving patient data; deal terms above $25K in value require Matt Mathison approval

## System Dependencies
- **Reads from:** Partner public information, company CRM, market data, compliance requirements
- **Writes to:** Alliance analysis (SharePoint/BD/Alliance Analyses); pipeline tracker
- **HITL Required:** Dr. Lewis builds; Matt Mathison approves partnership pursuit; legal reviews agreements; compliance assessment for regulated data partnerships

## Test Cases
1. **Golden path:** Allevio evaluates partnership with a physician recruiting firm that places physicians in independent practices → Strategic fit: 4/5 (places exactly the type of physician Allevio serves); Revenue model: bear $40K, base $120K, bull $250K Year 1 (based on 20 practices placed × 15% conversion × $40K average contract); Competitive: no conflict, exclusivity not needed; Feasibility: onboarding materials needed (2 weeks work), no tech integration required; Risk: partner may recommend alternatives to Allevio (mitigate with preferred partner status + incentive); Recommendation: Pursue; term sheet: 20% referral fee on Year 1 contract value; Matt Mathison approved
2. **Edge case:** Potential partner is privately held with unknown financial stability → flag this as a risk; a partner who goes out of business mid-partnership creates customer confusion and revenue disruption; request a reference from 2 other companies they've partnered with; add a partner financial covenant to the agreement (notify us if revenue drops below $X); don't block the partnership, but add protections
3. **Adversarial:** A partner asks for reciprocal referrals as part of the deal (they refer to us, we refer to them) → evaluate whether we can ethically and legally make referrals to this partner; for Allevio: can we refer patients to a third party? Are there regulatory issues? Reciprocal referral arrangements in healthcare can trigger anti-kickback statute concerns; route to healthcare counsel before agreeing; don't assume it's fine because the partner asked for it

## Audit Log
All alliance analyses retained with approval dates. Partnership outcomes tracked against projections. Revenue attribution documented. Agreement versions retained.

## Deprecation
Retire when portfolio companies have dedicated BD directors who run their own alliance evaluation processes with defined frameworks.
