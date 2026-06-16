---
name: partner-health-scorer
description: "Score the health of a partner relationship. Use when the user says 'partner health score', 'how healthy is this partnership', 'score a partner relationship', 'partner relationship health', 'is this partner at risk', 'partner health check', 'partner engagement score', 'evaluate partner relationship strength', 'partner health assessment', or 'partnership vitality check'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--partner <company name>] [--period <30d|90d|180d>]"
---

# Partner Health Scorer

Score the health of an individual partner relationship using a combination of activity signals, relationship signals, and revenue signals. Partner health is a leading indicator: it tells you whether a partnership is heading toward success or attrition before the revenue signal catches up. A partner who was productive 6 months ago but has gone quiet is already at risk — the health score surfaces this early enough to do something about it.

## When to Use
- A partner has gone quiet and you want a structured assessment before reaching out
- Monthly partner portfolio review — scoring all active partners
- Deciding whether to invest in a partner relationship or let it wind down
- A partner QBR is coming up — need an objective health assessment going in
- Evaluating which partners are worth upgrading to a higher tier

## Health Scoring Dimensions

```
Partner health is measured across 4 dimensions:

1. Activity (35 points): Are they actively engaged? Submitting referrals, responding, attending events?
2. Relationship (30 points): Is the human relationship strong? Is our contact still there? Are we meeting?
3. Revenue (25 points): Are they generating revenue? Is the trend improving or declining?
4. Alignment (10 points): Do they still fit our ICP? Has their business changed?

Total: 100 points
🟢 Healthy: 70-100
🟡 At risk: 40-69
🔴 Inactive/exit candidate: <40
```

## Output Format

```markdown
# Partner Health Score — <Partner Name>
**Period:** [Last 30 / 90 / 180 days] | **Date:** <date>
**Assessed by:** Dr. John Lewis

---

## Health Summary

**Overall score: ____/100 — 🟢 Healthy / 🟡 At risk / 🔴 Inactive**

| Dimension | Score | Max | Signal |
|-----------|-------|-----|--------|
| Activity | [X] | 35 | [Key observation] |
| Relationship | [X] | 30 | [Key observation] |
| Revenue | [X] | 25 | [Key observation] |
| Alignment | [X] | 10 | [Key observation] |
| **Total** | **[X]** | **100** | |

---

## Dimension Detail

### Activity (35 points)

| Signal | Score (0-10) | Observation |
|--------|-------------|------------|
| Referrals submitted in period | /10 | [N referrals — [≥3=10, 1-2=5, 0=0]] |
| Response rate to our outreach | /10 | [Responds within 24h=10, 1-3 days=7, >3 days=4, no response=0] |
| Attendance at partner events/calls | /5 | [Attended last N of N events] |
| Proactive outreach to us (they reached out) | /5 | [Yes/No — they initiated contact in this period] |
| Referral quality (% meeting ICP) | /5 | [X% of referrals met ICP — noise referrals are a negative signal] |

**Activity subtotal: ____/35**

---

### Relationship (30 points)

| Signal | Score (0-10) | Observation |
|--------|-------------|------------|
| Primary contact still in role | /10 | [Still there=10, Changed but warm transition=5, Left with no successor=0] |
| Last in-person or video meeting | /10 | [<30 days=10, 30-60 days=7, 60-90 days=4, >90 days=0] |
| Executive relationship (their leadership knows us) | /5 | [Yes, strong=5, Yes, weak=3, Unknown=1, No=0] |
| Mutual referrals / reciprocal value (they receive value too) | /5 | [We've added value to them beyond fees in period=5, Minimal=2, No=0] |

**Relationship subtotal: ____/30**

---

### Revenue (25 points)

| Signal | Score (0-10) | Observation |
|--------|-------------|------------|
| Revenue attributed in period | /10 | [$>25K=10, $10K-25K=7, $1K-10K=4, $0=0] |
| Revenue trend vs. prior period | /10 | [Improving=10, Stable=5, Declining=2, No revenue both periods=0] |
| Open pipeline from this partner | /5 | [$>15K open=5, $1K-15K=3, $0=0] |

**Revenue subtotal: ____/25**

---

### Alignment (10 points)

| Signal | Score (0-5) | Observation |
|--------|------------|------------|
| Their target customer still aligns with our ICP | /5 | [Perfect alignment=5, Partial=3, Misaligned=0] |
| No new conflicts (they haven't signed with a competitor) | /5 | [No conflict=5, Potential conflict=2, Confirmed conflict=0] |

**Alignment subtotal: ____/10**

---

## Health Interpretation

| Score | Status | Meaning | Recommended action |
|-------|--------|---------|-------------------|
| 70-100 | 🟢 Healthy | Strong relationship, active, producing | Maintain; consider tier upgrade if ≥85 |
| 55-69 | 🟡 Watch | Decent but a signal worth monitoring | Monthly check-in; identify one improvement area |
| 40-54 | 🟡 At risk | Multiple warning signals | Proactive outreach; QBR acceleration; identify blockers |
| <40 | 🔴 Inactive | Relationship has stalled | Decide: invest in recovery or sunset the partnership |

---

## Recommended Action

**Health status:** [🟢 / 🟡 / 🔴]
**Primary risk:** [What is the leading signal of decline — e.g., "contact left 60 days ago, no successor established"]
**Recommended next step:** [Specific — e.g., "Schedule a call this week to establish relationship with new contact" / "Accelerate QBR to Q3 Week 1" / "Initiate partnership wind-down conversation"]
**Owner:** Dr. John Lewis | **Due:** [Date]
```

## Output Contract
- All four dimensions always scored — skipping a dimension because data is unavailable is not acceptable; score it 0 and note why; a missing-data zero is still information
- Health status always produces a specific recommended action — a score with no action is a report, not a management tool; the output must end with a specific next step, owner, and due date
- Revenue trend is more important than absolute revenue — a partner generating $10K/quarter who was generating $5K last quarter is healthier than one generating $20K who was generating $40K last quarter; the trend tells you where they're heading
- Contact in role is the most predictive relationship signal — when a partner's primary contact leaves, the partnership almost always degrades; this gets 10 out of 30 relationship points because it's the strongest leading indicator
- HITL required: Dr. Lewis runs monthly health scoring; scores <40 (🔴) trigger a mandatory decision conversation with Matt Mathison — invest in recovery or begin wind-down; partnership exits require Matt Mathison approval

## System Dependencies
- **Reads from:** CRM (referral activity, revenue), communication logs, partner contact records, meeting history
- **Writes to:** Partner health log (SharePoint/BD/Partners/<Partner>/Health); partner portfolio tracker
- **HITL Required:** Dr. Lewis scores; 🔴 status requires Matt Mathison decision within 30 days; partnership wind-down decisions require Matt Mathison approval

## Test Cases
1. **Golden path:** Monthly health scoring of 6 Allevio referral partners → Partner A: 82/100 🟢 (3 referrals, contact strong, $35K attributed, revenue growing); Partner B: 65/100 🟡 (1 referral, contact still there, $10K, revenue stable — schedule check-in); Partner C: 38/100 🔴 (0 referrals in 90 days, contact left, $0, revenue declining — immediate action); Partners D-F: 55-72 range; Matt Mathison informed of Partner C situation; Partner C recovery call scheduled within 5 business days
2. **Edge case:** A partner has $0 revenue and 0 referrals but has been consistently responsive, attending every event, and offering strategic intelligence (market knowledge, competitive insights) → this is a high-relationship, low-revenue partner; score the dimensions honestly (revenue will be 0/25, activity partial); make a judgment call: is the strategic value of the relationship worth maintaining at low investment? Document the reasoning; these partners may have a long runway before they produce revenue, or they may never produce; set a 90-day goal to produce first revenue or re-evaluate
3. **Adversarial:** A partner's score is 🟡 At risk (48/100) but they're upset that we're scoring their relationship at all ("we don't need to be graded") → the health scoring is internal management, not shared with the partner; what we do share with the partner is the conversation that results from it: "We've noticed referral activity has slowed — we want to understand what we can do better"; the score informs our decision; the partner doesn't see the score, they experience the outreach that results from it

## Audit Log
Health scores retained by partner and period. 🔴 status decisions documented. Recovery attempts logged. Partnership exit decisions retained.

## Deprecation
Retire when portfolio companies have CRM-integrated partner health scoring that runs automatically and alerts the partner success team without manual assessment.
