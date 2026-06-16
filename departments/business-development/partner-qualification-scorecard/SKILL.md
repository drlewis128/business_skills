---
name: partner-qualification-scorecard
description: "Score and qualify a potential partner. Use when the user says 'qualify a partner', 'partner scorecard', 'is this a good partner', 'evaluate a potential partner', 'partner qualification', 'score a partner', 'partner fit assessment', 'should we partner with them', 'partner vetting', or 'assess partner quality'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--partner <company name>] [--type <referral|co-sell|technology|distribution>]"
---

# Partner Qualification Scorecard

Score a potential partner against the criteria that determine whether they're worth investing BD time and resources. Partner qualification prevents the most common BD failure mode: spending months developing a partnership with a company that looks attractive on the surface but can't deliver the promised volume, has a conflicting partner portfolio, or isn't willing to commit the resources the partnership requires.

## When to Use
- An inbound partner inquiry needs to be quickly assessed
- A target partner has been identified and needs qualification before outreach
- Building a partner pipeline and need to prioritize which prospects to pursue
- A potential partner has completed an initial call and needs a go/no-go assessment

## Qualification Framework

```
Partner qualification evaluates 5 dimensions:

1. Market access: Do they have access to the customers we want?
2. Motivation: Do they have a reason to actively sell/refer our offering?
3. Capacity: Do they have the bandwidth to make this partnership a priority?
4. Credibility: Are they a partner we'd be proud of (THRIVE alignment)?
5. Economics: Can we structure economics that work for both parties?
```

## Output Format

```markdown
# Partner Qualification Scorecard — <Partner Name>
**Our entity:** <Company> | **Partner:** <Company>
**Partnership type:** Referral / Co-sell / Technology / Distribution
**Date:** <date> | **Assessed by:** Dr. John Lewis

---

## Quick Facts

| Item | Detail |
|------|--------|
| Company | <Name> |
| Source | Inbound / Outbound / Referral from [source] |
| Primary contact | <Name, Title> |
| Their customer base | <Description> |
| Their revenue (est.) | $<X> or Unknown |
| Primary reason to partner | <What they expressed> |

---

## Qualification Score (100 points)

### Market Access (30 points)
*Can they actually deliver the customers/volume we need?*

| Criterion | Weight | Score (0-10) | Evidence |
|-----------|--------|-------------|---------|
| Customer base size in our target segment | 15 | /10 | [Their stated or estimated customer count in our ICP] |
| Quality of customer relationships (strong vs. transactional) | 10 | /10 | [How deep are their customer relationships?] |
| Geographic overlap with our markets | 5 | /10 | [Do they operate where we do?] |
| **Market access subtotal** | **30** | **/30** | |

### Motivation (25 points)
*Will they actually sell/refer us, or is this theoretical?*

| Criterion | Weight | Score (0-10) | Evidence |
|-----------|--------|-------------|---------|
| Clear economic incentive for them | 10 | /10 | [What specifically do they get from this partnership?] |
| Alignment with their customer's needs | 10 | /10 | [Does our offering solve something their customers already want?] |
| Executive sponsorship at their company | 5 | /10 | [Is someone senior championing this on their side?] |
| **Motivation subtotal** | **25** | **/25** | |

### Capacity (20 points)
*Do they have the time and resources to make this work?*

| Criterion | Weight | Score (0-10) | Evidence |
|-----------|--------|-------------|---------|
| Dedicated BD/partnerships capacity on their team | 10 | /10 | [Do they have a partnerships team or is this a side project for a sales rep?] |
| No competitive conflicts consuming their BD bandwidth | 5 | /10 | [Are they spread thin across too many partnerships?] |
| Timeline alignment (can they start now?) | 5 | /10 | [When can they actually begin referring/selling?] |
| **Capacity subtotal** | **20** | **/20** | |

### Credibility (15 points)
*THRIVE filter — is this a partner we'd be proud of?*

| Criterion | Weight | Score (0-10) | Evidence |
|-----------|--------|-------------|---------|
| Reputation in market (do their customers trust them?) | 10 | /10 | [References / market reputation] |
| THRIVE integrity alignment (no known ethical issues) | 5 | /10 | [Background check, references] |
| **Credibility subtotal** | **15** | **/15** | |

### Economics (10 points)
*Can we structure a deal that works for both?*

| Criterion | Weight | Score (0-10) | Evidence |
|-----------|--------|-------------|---------|
| Realistic revenue potential (base case >$50K Year 1) | 5 | /10 | [Quick revenue estimate] |
| Economics they'll accept align with our unit economics | 5 | /10 | [Can we afford what they're asking for?] |
| **Economics subtotal** | **10** | **/10** | |

---

## Total Score: /100

| Score range | Rating | Recommendation |
|------------|--------|---------------|
| 80-100 | Priority partner | Advance to alliance analysis + outreach |
| 60-79 | Qualified | Advance with noted gaps to address |
| 40-59 | Conditional | Explore more before committing BD time |
| <40 | Unqualified | Pass — not worth investing BD time |

**Partner score: ____/100 — [Rating]**

---

## Hard Disqualifiers

- [ ] THRIVE integrity concern → **Pass regardless of score**
- [ ] Known conflict — works with direct competitor under exclusivity → **Pass**
- [ ] HIPAA/regulatory risk unresolvable (Allevio-specific) → **Pass until cleared**
- [ ] Economics don't work for either party → **Pass until model changes**
- [ ] No executive sponsor on their side → **Defer — come back in 6 months**

---

## Next Step

**Advance:** Run `strategic-alliance-analyzer` for full analysis → then outreach  
**Explore:** Schedule a qualifying call — [specific questions to answer]  
**Pass:** [Reason in one sentence — preserve the rationale for future reference]

**Matt Mathison visibility:** [Does this need Matt Mathison's awareness? If score ≥80 and it's a major opportunity: yes]
```

## Output Contract
- 5-dimension framework always scored — scoring all 5 dimensions prevents the most common qualification error: a partner who scores brilliantly on market access but has zero internal motivation to sell; the full scorecard reveals this before any BD time is invested
- Hard disqualifiers always checked — THRIVE integrity and competitive conflict are automatic passes regardless of score; they must be explicitly assessed, not just considered
- Next step is always specific — the scorecard must end with a clear disposition: advance/explore/pass; "we'll see" is not a next step
- Economics quick estimate always included — if the base case revenue potential is below the threshold to justify BD investment, the score on other dimensions doesn't matter; economics are assessed early
- HITL required: Dr. Lewis runs the scorecard; scores ≥80 flagged to Matt Mathison; any partnership with potential contract value >$25K requires Matt Mathison awareness; integrity disqualifiers are logged; pass rationale retained for future reference

## System Dependencies
- **Reads from:** Partner website, market data, prior relationship history, competitive intelligence
- **Writes to:** Partner qualification log (SharePoint/BD/Partner Pipeline); partner CRM
- **HITL Required:** Dr. Lewis qualifies; scores ≥80 flagged to Matt Mathison; major opportunity decisions require Matt Mathison

## Test Cases
1. **Golden path:** Healthcare consulting firm inbound inquiry for Allevio referral partnership → Market access: 22/30 (serves 50 independent AZ physician practices — right target, relationships described as "strong"); Motivation: 20/25 (clear referral fee economics, their clients keep asking about billing support; executive sponsor unclear — 5 points lost); Capacity: 15/20 (BD team of 2, but currently managing 3 other partnerships); Credibility: 13/15 (good market reputation, no integrity concerns); Economics: 9/10 (base case $80K Year 1 at 20% referral fee); Total: 79/100 — Qualified; Next: schedule qualifying call to assess executive sponsor + capacity; flag to Matt Mathison (high opportunity)
2. **Edge case:** Potential partner has a strong score but one of their founding team members had a public lawsuit with a former employer → this touches THRIVE integrity; investigate the specifics before either passing or advancing; a frivolous lawsuit is different from fraud or employment violations; get the facts, document them, and escalate to Matt Mathison for a judgment call; don't advance without his decision on integrity concerns
3. **Adversarial:** A potential partner pushes hard for a decision before the scorecard is complete ("We need an answer this week or we're going with your competitor") → artificial urgency is a negotiating tactic; do not let it compress the qualification process; a bad partnership entered quickly is worse than a good partnership entered carefully; if the pressure is genuine and the opportunity is real, complete the scorecard in 24 hours but don't skip it; if the partner is unwilling to wait 24 hours for a qualification review, that itself is a signal about their credibility

## Audit Log
All qualification scorecards retained. Advance/explore/pass dispositions logged. Pass rationale retained for future reference. Revenue outcomes tracked for qualified partners that advanced.

## Deprecation
Retire when portfolio companies have dedicated BD teams with their own partner qualification processes and CRM-integrated scoring tools.
