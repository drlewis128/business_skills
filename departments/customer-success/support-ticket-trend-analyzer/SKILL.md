---
name: support-ticket-trend-analyzer
description: "Analyze support ticket trends to identify product and process improvement opportunities. Use when the user says 'support trends', 'ticket analysis', 'what are customers asking for help with', 'support ticket patterns', 'why are customers contacting support', 'support volume', or 'support analysis'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <month|quarter>] [--focus <volume|type|resolution|csat>]"
---

# Support Ticket Trend Analyzer

Analyze support ticket trends to identify product gaps, documentation gaps, and CS process improvements. Support volume is a lagging indicator of product and experience quality — high ticket volume usually means something is confusing, broken, or poorly documented.

## When to Use
- Monthly support operations review
- Product roadmap prioritization — what is causing the most friction?
- CSAT is dropping — is it volume, resolution time, or issue type?
- New feature launch — is support volume spiking for that feature?
- CS team is spending too much time on reactive support — diagnose the root cause

## Ticket Classification Framework

| Category | Examples |
|---------|---------|
| **Product bug** | Errors, crashes, data issues, broken functionality |
| **How-to / usage question** | "How do I do X?" questions that indicate documentation gaps |
| **Integration issue** | API, data sync, third-party compatibility |
| **Access / permissions** | Login issues, role permissions, user management |
| **Billing / account** | Invoice questions, pricing, contract-related |
| **Feature request** | "Can you add X?" — usually logged but not always actioned |
| **Onboarding / training** | Questions that should have been addressed in onboarding |

## Insight Framework

### Volume Analysis
- Total ticket volume trend (month-over-month, or per 100 users)
- Volume by category — where are the most tickets?

### Resolution Analysis
- Average time to first response
- Average time to resolution
- % resolved on first contact (FCR rate)
- Ticket reopened rate (resolution quality signal)

### Customer Impact Analysis
- Which accounts are generating the most tickets? (May indicate struggling customers)
- Are ticket-heavy accounts correlated with lower health scores?
- Which tickets drove the lowest CSAT scores?

## Output Format

```markdown
# Support Ticket Trend Analysis — <Entity>
**Period:** <period> | **Total tickets:** <N> | **Date:** <date>

---

## Volume Summary

| Metric | Value | vs. Prior Period |
|--------|-------|----------------|
| Total tickets | <N> | +/-X% ⬆️/⬇️ |
| Tickets per 100 active users | <N> | |
| Avg first response time | <N> hrs | |
| Avg resolution time | <N> days | |
| First contact resolution (FCR) rate | X% | |
| Reopened ticket rate | X% | |

---

## Volume by Category

| Category | Tickets | % of Total | Avg Resolution | CSAT |
|---------|---------|-----------|---------------|------|
| How-to / Usage questions | <N> | X% | <N> hrs | X% |
| Product bug | <N> | X% | <N> days | X% |
| Integration issue | <N> | X% | | X% |
| Onboarding / Training | <N> | X% | | |

---

## Ticket Trend Analysis

| Category | M-3 | M-2 | M-1 | Current | Trend |
|---------|-----|-----|-----|---------|-------|
| How-to questions | <N> | <N> | <N> | <N> | ⬆️ Increasing |
| Product bugs | <N> | <N> | <N> | <N> | ⬇️ Decreasing |

---

## High-Volume Accounts (Potential Health Risk)

| Account | Tickets This Period | Tickets Prior Period | Change | Health Score |
|---------|-------------------|-------------------|--------|-------------|
| <Account> | <N> | <N> | +X% | 🟡 Yellow |
| <Account> | <N> | <N> | +X% | 🟢 Green (high usage, expected) |

---

## Product Feedback Package

Top recurring issues to escalate to Product:
1. **[Issue]** — <N> tickets, X% of users affected | Priority: High
2. **[Issue]** — <N> tickets | Suggested fix: [Documentation / Product change / UX update]

---

## Documentation Gap Flags

Categories where "how-to" tickets are high → knowledge base articles needed:
1. **[Topic]** — <N> how-to tickets → Create a help article
2. **[Topic]** — <N> tickets → Revise onboarding training to cover this

---

## Process Improvement Actions

| Action | Owner | Impact | Due |
|--------|-------|--------|-----|
| Add [topic] to onboarding session | CS Manager | Reduce how-to tickets by ~X% | <date> |
| Product escalation: [bug] | CS → Product | Reduce bug tickets | <date> |
| Create knowledge base article: [topic] | CSM / Support | Self-service deflection | <date> |
```

## Output Contract
- Volume trend always shown month-over-month — direction matters
- Every insight linked to a specific action — analysis without action is reporting
- Product and documentation feedback packages always prepared for delivery to Product team
- HITL required before ticket data drives headcount decisions or product roadmap changes

## System Dependencies
- **Reads from:** Support platform ticket data (Zendesk, Freshdesk, etc.) with category tags
- **Writes to:** Nothing (analysis for HITL review and CS/Product action)
- **HITL Required:** Product team reviews product feedback package; CS Manager reviews process improvements; Dr. Lewis reviews if ticket volume signals a systemic product problem

## Test Cases
1. **Golden path:** Q2 ticket analysis, 340 tickets → how-to questions (38%, increasing trend), integration issues (22%), bug tickets declining (product improvement working), 2 documentation gaps, 1 product bug escalation
2. **Edge case:** One account generating 40% of total tickets → investigate whether it's a power-user account (expected) or a struggling account, cross-reference with health score
3. **Adversarial:** Support team wants to close tickets as "resolved" without customer confirmation to improve metrics → flags that artificially closing tickets inflates resolution rates and hides real problems, recommends measuring true resolution quality

## Audit Log
Ticket trend analyses retained by entity and period. Product feedback packages tracked to resolution.

## Deprecation
Retire when support platform provides native analytics with automated trend detection, CSAT correlation, and product feedback workflow integration.
