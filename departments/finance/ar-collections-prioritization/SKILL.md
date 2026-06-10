---
name: ar-collections-prioritization
description: "Rank overdue accounts receivable by collectability score and prioritize collections outreach. Use when the user says 'AR collections', 'prioritize collections', 'which customers to call', 'overdue invoices', 'AR aging review', 'collections queue', or 'who owes us money and who should we call first'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<ar-aging-file | paste aging data>"
---

# AR Collections Prioritization

Score and rank overdue accounts to maximize collections ROI — call the accounts most likely to pay large amounts first.

## When to Use
- Weekly collections review
- Before month-end close to accelerate cash
- When cash is tight and collection timing matters

## Scoring Model

For each overdue account, score on:
| Factor | Weight | Signal |
|--------|--------|--------|
| Balance size | 40% | Larger = higher priority |
| Days overdue | 30% | Older = more urgent (but 90+ may be low probability) |
| Payment history | 20% | Good payer who is late = high priority; chronic late payer = lower |
| Customer health signals | 10% | Known dispute, financial stress, or going concern = flag separately |

**Priority tiers:**
- **P1 — Call today:** Large balance, good payer, 30-60 days overdue
- **P2 — Call this week:** Medium balance or 60-90 days overdue
- **P3 — Send demand letter:** 90+ days, small balance, or poor payment history
- **P4 — Escalate/write-off review:** 120+ days, dispute history — involve leadership

## Output Format

```markdown
# AR Collections Queue — <date>
**Total AR Outstanding:** $X | **30+ Days:** $X | **60+ Days:** $X | **90+ Days:** $X

## P1 — Call Today
| Customer | Balance | Days | History | Action |
|----------|---------|------|---------|--------|
| Acme Corp | $45,000 | 38 days | Good payer | Call CFO — invoice dispute suspected |

## P2 — Call This Week
...

## P3 — Send Written Demand
...

## P4 — Leadership Review Required
| Customer | Balance | Days | Issue |
|----------|---------|------|-------|
| XYZ Inc | $8,000 | 127 days | Dispute unresolved — involve Dr. Lewis |

## Talking Points Generator
For each P1 account: draft the specific talking points for the collections call.
```

## System Dependencies
- **Reads from:** AR aging data (QuickBooks export or input)
- **Writes to:** Nothing
- **HITL Required:** Before escalating any account to legal collections

## Deprecation
Retire when CRM or AR system includes AI-driven collections prioritization.
