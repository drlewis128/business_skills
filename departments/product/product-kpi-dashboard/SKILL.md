---
name: product-kpi-dashboard
description: "Generate the product KPI dashboard for executive review. Use when the user says 'product KPIs', 'product dashboard', 'product performance', 'product health', 'how is the product doing', 'product scorecard', 'product metrics summary', 'weekly product review', 'product report', or 'product status'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--period <weekly|monthly|quarterly>] [--audience <internal|executive|board>]"
---

# Product KPI Dashboard

Generate the product KPI dashboard for MBL products and portfolio company products. The product dashboard answers: is the product growing, retaining, and delivering value? For AI-first products like MBL's agent systems, it also answers: is the agent actually helping, how much does it cost to run, and what's the quality like?

## When to Use
- Weekly product review with Dr. Lewis
- Monthly product summary for Matt Mathison
- Quarterly board/LP briefing on product progress
- Portfolio company product assessment
- Benchmarking a product against its own historical performance

## Core Product KPIs

| KPI | What It Measures | Good Direction |
|-----|----------------|---------------|
| **North Star Metric** | Core product value delivered | Up |
| **Daily/Weekly Active Users** | Engagement | Up |
| **Retention (D7/D30/D90)** | Users returning | Up |
| **Feature adoption rate** | New features being used | Up |
| **User satisfaction (CSAT/NPS)** | User experience quality | Up |
| **Time to value** | Speed from signup to first value | Down |
| **Error rate** | Reliability | Down |
| **Support ticket volume** | Product confusion / bugs | Down |

## AI/Agent-Specific KPIs (for MBL systems)

| KPI | Target | What It Signals |
|-----|--------|----------------|
| Agent success rate | >90% | Reliability of AI output |
| Output quality rating | >4/5 | Value of AI output |
| Prompt cache hit rate | >50% | Cost efficiency |
| Claude API cost/session | Benchmark and track | Cost to serve |
| HITL intervention rate | <10% | Autonomy level |
| Agent completion latency P95 | <30s | Performance |

## Output Format

```markdown
# Product KPI Dashboard — <Product>
**Period:** <week/month/quarter> | **Date:** <date>
**Product:** <name> | **Entity:** <entity>
**Prepared by:** Dr. John Lewis

---

## Executive Bottom Line

**Product health:** Strong / Improving / Stable / At risk / Declining
**Key win this period:** <specific achievement with metric>
**Top concern:** <what needs attention>
**Action needed:** <specific ask or decision>

---

## North Star Metric

| Metric | This Period | Last Period | Trend | Target |
|--------|-----------|-----------|-------|--------|
| [North Star] | <value> | <value> | ↑ +12% | <target> |

**On track to target:** ✅ / 🟡 / ❌

---

## Engagement and Retention

| Metric | This Period | Last Period | Trend | Target |
|--------|-----------|-----------|-------|--------|
| Weekly Active Users | <N> | <N> | ↑ | <N> |
| D7 retention | 65% | 58% | ↑ | >70% |
| D30 retention | 42% | 38% | ↑ | >50% |
| Feature adoption (new features) | 38% | — | — | >40% |

---

## Quality and Reliability

| Metric | This Period | Target | Status |
|--------|-----------|--------|--------|
| Error rate | 0.3% | <1% | ✅ |
| P95 latency | 185ms | <300ms | ✅ |
| Support tickets | 12 | <15 | ✅ |
| User CSAT | 4.2/5 | >4.0 | ✅ |

---

## AI/Agent Metrics (if applicable)

| Metric | This Period | Target | Notes |
|--------|-----------|--------|-------|
| Agent success rate | 94% | >90% | ✅ |
| Output quality (rated) | 4.1/5 | >4.0 | ✅ |
| Prompt cache hit rate | 68% | >50% | ✅ Efficient |
| Claude API cost/session | $0.018 | <$0.03 | ✅ |
| HITL intervention rate | 4% | <10% | ✅ |
| Completion latency P95 | 18s | <30s | ✅ |

---

## Feature Performance

| Feature | Launched | Adoption | North Star Impact | Status |
|---------|---------|---------|-----------------|--------|
| [Feature A] | W3 | 42% | +8% NS | 🟢 Working |
| [Feature B] | W1 | 12% | Inconclusive | 🟡 Investigate |
| [Feature C] | W-4 (old) | 78% | Stable | ✅ Core |

---

## Issues This Period

| Issue | Severity | Impact | Resolution |
|-------|---------|--------|-----------|
| [Issue 1] | Medium | 3% users affected | Resolved W2 |
| [Issue 2] | Low | Cosmetic | In backlog |

---

## Next Period Priorities

1. <Action item from data — specific>
2. <Investigation needed>
3. <Feature launch or test>
```

## Output Contract
- North star metric always first — it's the leading signal for everything else
- AI/agent metrics always included for agent systems — these are unique to MBL's product category
- Feature performance always tracked — shows whether shipped features are working
- Issues always documented with resolution status — known issues without resolution plans are risks
- HITL required: Dr. Lewis reviews weekly; Matt Mathison receives monthly summary; board/LPs receive quarterly version; agent quality issues escalated to Dr. Lewis immediately

## System Dependencies
- **Reads from:** Product analytics (event log), Claude API usage API, support ticket system, Monday.com (action items)
- **Writes to:** Product KPI report (SharePoint/Product); Monday.com weekly update
- **HITL Required:** Dr. Lewis reviews; Matt Mathison receives monthly; quality issues alert Dr. Lewis

## Test Cases
1. **Golden path:** Monthly Meeting Intelligence dashboard → North star: 47 action items created/week (↑ from 12, target 50); WAU: 8 users (team + Matt); D7 retention: 87%; agent success rate 95%; CSAT 4.3/5; cost $0.015/session; Feature A adoption 62% — strong; bottom line: on track for north star target; one concern: Feature B adoption low (12%) — investigate
2. **Edge case:** A metric moved significantly but no obvious cause → before drawing conclusions, check: was there a product change?; a bug fixed?; an external event?; don't report "engagement up 40%" without understanding why — can't replicate what you don't understand
3. **Adversarial:** Leadership reports "product is great" based on usage volume alone → volume without retention is a leaky bucket; report retention alongside volume; a product with 1000 new users per week but 10% D7 retention is worse than one with 100 new users and 80% retention; include retention in every product health report

## Audit Log
Weekly/monthly/quarterly dashboards retained. Metric history maintained. Feature performance records retained.

## Deprecation
Retire when product team deploys a dedicated product analytics platform with automated dashboard generation and anomaly alerting.
