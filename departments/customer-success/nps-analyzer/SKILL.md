---
name: nps-analyzer
description: "Analyze NPS scores and feedback to drive customer experience improvements. Use when the user says 'NPS', 'net promoter score', 'NPS results', 'customer satisfaction', 'analyze NPS', 'NPS feedback', 'promoters and detractors', or 'what are customers saying'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <month|quarter>] [--segment <all|by-tier|by-product>]"
---

# NPS Analyzer

Analyze Net Promoter Score results and open-ended feedback to identify experience improvements and churn risks. NPS is only useful if you act on it — a score without a response plan is just a number.

## When to Use
- After each NPS survey cycle (quarterly or semi-annual recommended)
- Health score drops below a threshold (NPS is a component)
- Board or LP update with customer satisfaction metrics
- Customer experience improvement initiative
- Preparing for a QBR with a detractor (understand their specific concern)

## NPS Fundamentals

```
NPS Score = % Promoters (9-10) - % Detractors (0-6)
Passives (7-8) are not counted in the score

Benchmark ranges:
> 70: World-class
50–70: Excellent
30–49: Good
0–29: Room for improvement
< 0: Urgent attention needed
```

## Response Protocol

| Score | Category | Response Required |
|-------|---------|-----------------|
| 9–10 (Promoter) | Highly satisfied | Thank them; ask for referral, reference, or case study |
| 7–8 (Passive) | Satisfied but not loyal | Follow up; understand what would move them to 9-10 |
| 0–6 (Detractor) | Dissatisfied | Contact within 48 hours; understand root cause; save the relationship |

**Close the loop rule:** Every detractor must be contacted within 48 hours. Every passive contacted within 2 weeks. Promoters contacted within 1 month. NPS without follow-up damages trust ("you asked and didn't respond").

## Qualitative Feedback Coding

Categorize open-ended responses into themes:
- Product functionality
- Ease of use / UX
- Support quality and speed
- CSM relationship and service
- Onboarding and training
- Pricing and value
- Integrations and technical issues
- ROI / outcomes achieved

## Output Format

```markdown
# NPS Analysis — <Entity>
**Survey period:** <period> | **Responses:** <N> | **Response rate:** X%

---

## Overall NPS

**NPS Score: <N>** | Benchmark: <above/below/at market>

| Category | Count | % |
|---------|-------|---|
| Promoters (9–10) | <N> | X% |
| Passives (7–8) | <N> | X% |
| Detractors (0–6) | <N> | X% |

**vs. Prior Period:** <N> points (up/down)
**vs. Industry Benchmark:** <N> points (above/below)

---

## Score Distribution

| Score | Responses |
|-------|----------|
| 10 | <N> |
| 9 | <N> |
| 8 | <N> |
| ... | |

---

## Feedback Themes

| Theme | Mentions | Sentiment | Key Quotes |
|-------|---------|---------|-----------|
| Product functionality | <N> | 🟢 Positive | "Feature X saves us hours every week" |
| Support quality | <N> | 🟡 Mixed | "Response times improved but still slow for P1s" |
| Onboarding | <N> | 🔴 Negative | "Training was too rushed; needed more time" |

---

## Detractor Details (Close the Loop Within 48 Hours)

| Customer | Score | Feedback Summary | CSM | Action |
|---------|-------|----------------|-----|--------|
| <Account> | 4 | "Integration problems never fully resolved" | <CSM> | CSM contact within 24 hours |
| <Account> | 3 | "Price increase wasn't justified by value improvement" | <CSM> | Escalate to CS Manager |

---

## Promoter Opportunities

| Customer | Score | Feedback | Follow-Up Opportunity |
|---------|-------|---------|---------------------|
| <Account> | 10 | "Best vendor we work with" | Ask for case study |
| <Account> | 9 | "Our team loves it" | Ask for LinkedIn recommendation + referral |

---

## Key Insights and Actions

1. **Insight:** Onboarding is the top detractor theme (X% of detractor feedback)
   **Action:** Review and extend onboarding program; add milestone check at 30 days

2. **Insight:** Integration issues are driving mid-tier scores down
   **Action:** Product feedback filed; dedicated technical check-in for integration customers

3. **Insight:** Promoters concentrated in [segment] — passives concentrated in [other segment]
   **Action:** Study what's different about the promoter segment and apply to passives

---

## NPS Goal for Next Period

**Current NPS:** <N> | **Target NPS:** <N> | **Primary lever:** <Onboarding / Support / Product>
```

## Output Contract
- Detractors always named with specific action and owner within 48 hours
- Promoters always identified with specific follow-up opportunity
- Theme analysis always grounded in verbatim quotes — not paraphrased
- HITL required before NPS data is used in board reporting or public communication

## System Dependencies
- **Reads from:** NPS survey responses (provided or from survey platform)
- **Writes to:** Nothing (analysis for HITL review and CSM action)
- **HITL Required:** Dr. Lewis reviews NPS results before board/LP distribution; CS Manager owns detractor close-loop assignments; promoter asks approved by Dr. Lewis for public use

## Test Cases
1. **Golden path:** Q2 NPS, 24 responses, NPS of 38 → 6 detractors (onboarding and support themes), 8 promoters (3 case study opportunities), 4 specific improvement actions
2. **Edge case:** Survey sent with < 10 responses → flags low response rate as a signal itself (low engagement), reports available data with explicit caveat, recommends a follow-up outreach to increase next cycle participation
3. **Adversarial:** Request to exclude detractor scores from the reported NPS → refuses, reports all scores as submitted, explains that excluding scores invalidates the metric and destroys its credibility as a management tool

## Audit Log
NPS results retained by entity and period. Detractor follow-up outcomes tracked. Score trends documented over time.

## Deprecation
Retire when CS platform provides integrated NPS surveying, automated close-loop workflows, and real-time score dashboards.
