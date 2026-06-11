---
name: qbr-preparer
description: "Prepare a Quarterly Business Review (QBR) for a customer account. Use when the user says 'QBR', 'quarterly business review', 'prepare a QBR', 'QBR agenda', 'QBR deck', 'quarterly review with the customer', or 'business review prep'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--quarter <YYYY-QN>] [--format <internal|customer-facing>]"
---

# QBR Preparer

Prepare a structured Quarterly Business Review for a customer. QBRs are the highest-leverage touchpoint in the CS calendar — done well, they renew, expand, and deepen the relationship. Done poorly, they waste an executive's time and accelerate churn.

## When to Use
- 2 weeks before a scheduled QBR (preparation)
- Customer asks for a business review
- Health score has dropped and you need an executive conversation
- Pre-renewal (QBR in the 90-day renewal window)
- Annual planning with a strategic customer

## QBR Philosophy
The QBR is NOT a product demo or a feature update. It's a business conversation.
- Start with THEIR business: what happened to them this quarter?
- Show what you delivered: results, not activities
- Be honest about gaps: if something didn't land, own it
- Look forward: what's next? (sets up the renewal and expansion conversation)

## QBR Structure

### 1. Business Context (Their Quarter)
- What happened in their business this quarter?
- Did their priorities shift? Any headwinds or tailwinds?
- Any organizational changes that affect the relationship?

### 2. Progress Against Goals (Your Accountability)
- For each success plan goal: what's the current state vs. target?
- Where did you exceed? Where did you fall short?
- Be specific — use numbers, not words

### 3. Usage and Adoption
- Who is using the product, and how much?
- Any usage trends (increasing, decreasing)?
- Segments or teams that aren't engaged yet?

### 4. ROI Summary
- What business value have you delivered? (Use `customer-roi-review`)
- Connect to their language and goals — not your KPIs

### 5. Roadmap Preview
- What's coming that's relevant to them?
- How does the roadmap address their goals?

### 6. Looking Ahead
- Success plan update for next quarter
- Renewal conversation (if in renewal window)
- Expansion opportunities (if appropriate)

## Output Format

```markdown
# QBR Preparation Package — <Account>
**Quarter:** <Q> | **Meeting date:** <date> | **CSM:** <name>
**Customer attendees:** <names/titles> | **Our attendees:** <CSM, Manager, Dr. Lewis?>

---

## Internal Pre-QBR Checklist

- [ ] Health score current and reviewed
- [ ] Success plan progress quantified
- [ ] Product usage data pulled
- [ ] ROI summary prepared
- [ ] Renewal date and risk level reviewed
- [ ] Expansion opportunities identified
- [ ] Any open support issues resolved or addressed
- [ ] Dr. Lewis briefed (if strategic account)

---

## QBR Agenda (60–90 minutes)

| Time | Topic | Owner | Goal |
|------|-------|-------|------|
| 0:00–0:10 | Welcome and their business update | Customer → CSM listens | Understand their quarter |
| 0:10–0:25 | Progress against goals | CSM | Show results honestly |
| 0:25–0:40 | Usage and adoption review | CSM | Surfacing engagement picture |
| 0:40–0:55 | ROI summary | CSM | Quantify value delivered |
| 0:55–1:05 | Roadmap highlights | CSM / Product rep | Build excitement for next quarter |
| 1:05–1:20 | Looking ahead — success plan update | CSM + Customer | Align on next quarter priorities |
| 1:20–1:30 | Open discussion and Q&A | Both | Clear the air; flag concerns |

---

## Progress Against Goals

| Goal | Baseline | Q Target | Q Actual | Status |
|------|---------|---------|---------|--------|
| <Goal 1> | <Baseline> | <Target> | <Actual> | 🟢 / 🟡 / 🔴 |
| <Goal 2> | | | | |

**Summary:** <Honest 2-sentence assessment of goal progress>

---

## Usage and Adoption

| Metric | Last Quarter | This Quarter | Trend |
|--------|------------|-------------|-------|
| Active users / seats | <N> (<X>%) | <N> (<X>%) | ⬆️ / ⬇️ |
| Key feature adoption | X% | X% | |
| Login frequency | X per user/week | X | |

**Insight:** <What the usage data tells you — honest assessment>

---

## ROI Summary

**Value delivered this quarter:**
- [Metric + dollar value or time saved]
- [Metric + impact]

**Cumulative since contract start:** $<N> estimated value / <N> hours saved / [relevant metric]

---

## Looking Ahead — Next Quarter Plan

| Priority | Action | Owner | Timeline |
|---------|--------|-------|---------|
| <Goal 1 continuation> | <specific action> | Customer + CSM | <date> |
| <Expansion opportunity> | <specific ask if appropriate> | CSM | At renewal |

---

## Renewal and Expansion (If In Window)

**Renewal date:** <date> | **Health:** <Green / Yellow / Red>
**Renewal strategy:** <Direct / Executive conversation / Price negotiation>
**Expansion opportunity:** <Specific — upsell or cross-sell identified>

---

## CSM Speaker Notes (Internal Only)

**Elephant in the room:** <Is there a topic we need to proactively address?>
**Champion dynamics:** <How is the champion positioned going into this meeting?>
**Talking points for sensitive topics:** <How to handle gaps or issues>
```

## Output Contract
- Progress against goals always honest — QBR that hides underperformance destroys trust
- ROI always quantified — "we've been helpful" is not a business review
- Renewal/expansion always included if in the window
- Internal notes always separated from customer-facing content
- HITL required: CSM manager reviews before strategic QBRs; Dr. Lewis reviews for accounts > $100K

## System Dependencies
- **Reads from:** Success plan, usage data, support history, health score (provided or from CS platform)
- **Writes to:** Nothing (QBR package for HITL review)
- **HITL Required:** CSM manager reviews all QBR packages; Dr. Lewis joins or reviews for strategic accounts > $100K; expansion conversations require manager approval

## Test Cases
1. **Golden path:** Q2 QBR for $90K ACV healthcare customer → goal progress at 2/3 met, adoption at 74% (up from 60%), $210K estimated ROI, 1 expansion opportunity flagged for renewal conversation
2. **Edge case:** Customer cancelled the QBR twice → don't hold the QBR for the sake of it; instead, send an async QBR summary, schedule a 30-min check-in, and assess whether the relationship has a champion problem
3. **Adversarial:** Request to skip the results section because "this wasn't a great quarter" → refuses to omit results, helps frame honest underperformance with accountability and a recovery plan

## Audit Log
QBR packages retained by account and quarter. Goal progress documented for success plan continuity.

## Deprecation
Retire when CS platform provides automated QBR deck generation from health scores, usage data, and success plan progress.
