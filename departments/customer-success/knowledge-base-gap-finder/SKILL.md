---
name: knowledge-base-gap-finder
description: "Identify gaps in the customer knowledge base or help documentation. Use when the user says 'knowledge base', 'help documentation', 'KB gaps', 'what articles are missing', 'documentation gaps', 'self-service content', 'help center audit', or 'what do customers need to know'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--source <tickets|nps|training|all>] [--format <article-list|audit>]"
---

# Knowledge Base Gap Finder

Identify gaps in the customer help documentation and knowledge base. A strong knowledge base deflects support tickets, accelerates onboarding, and reduces CSM time on repetitive questions. This skill connects the dots between what customers are asking and what documentation doesn't exist.

## When to Use
- Support ticket volume is high and "how-to" questions are the dominant category
- NPS open-ended feedback mentions documentation or self-service
- CSMs are answering the same question repeatedly across customers
- Planning a knowledge base expansion or audit
- New product feature launched without supporting documentation

## Gap Identification Sources

| Source | How to Use |
|--------|-----------|
| **Support tickets** | "How-to" and "I can't figure out" tickets = missing articles |
| **CSM notes** | Repeated questions = article needed; CSM shouldn't answer the same thing twice |
| **Training Q&A** | Questions asked in training sessions = content gaps in pre-training materials |
| **NPS/CSAT feedback** | Mentions of documentation confusion or gaps |
| **Onboarding failures** | Topics where customers get stuck = missing getting-started content |

## Documentation Categories

| Category | Examples |
|---------|---------|
| **Getting started** | Initial setup, first tasks, system requirements |
| **How-to guides** | Step-by-step workflows for common tasks |
| **Integration setup** | How to connect to specific third-party systems |
| **Troubleshooting** | Common errors and how to resolve them |
| **FAQs** | Frequently asked questions with concise answers |
| **Best practices** | How to get the most from the product |
| **Release notes** | What changed, what's new, how to use new features |
| **Admin guides** | User management, configuration, security settings |

## Output Format

```markdown
# Knowledge Base Gap Analysis — <Entity>
**Date:** <date> | **Sources analyzed:** <list>

---

## Documentation Coverage Assessment

| Category | Current Status | Gap Score (1–5) | Priority |
|---------|--------------|----------------|---------|
| Getting started | Partial | 3 | High |
| How-to guides | Limited | 4 | High |
| Integration setup | None | 5 | Critical |
| Troubleshooting | Good | 2 | Low |
| FAQs | Partial | 3 | Medium |
| Admin guides | Good | 1 | Low |

---

## Identified Gaps (New Articles Needed)

| Topic | Source of Gap | Volume | Priority | Estimated Effort |
|-------|-------------|--------|---------|-----------------|
| How to set up [Integration X] | 12 support tickets | High | Critical | Medium (2-3 hrs) |
| How to export reports to [format] | CSM Q: asked 6× this quarter | High | High | Low (1 hr) |
| Troubleshooting [common error] | 8 tickets, avg CSAT 3.2 | Medium | High | Low (1 hr) |
| Admin: managing user permissions | Training Q&A recurring | Medium | Medium | Medium (2 hrs) |

---

## Existing Articles Needing Updates

| Article | Issue | Priority | Action |
|---------|-------|---------|--------|
| [Article name] | Outdated after [recent product change] | High | Update |
| [Article name] | Too technical for typical user | Medium | Simplify |

---

## Content Calendar Recommendation

**Week 1:** Create integration setup guides (highest ticket deflection potential)
**Week 2:** Create how-to guides for top 3 recurring questions
**Week 3:** Update outdated articles
**Week 4:** Add FAQ section from training Q&A

**Owner:** <CSM / CS Manager / Product Marketing> | **Review:** CS Manager before publishing

---

## Expected Impact

| Action | Estimated Ticket Deflection |
|--------|---------------------------|
| Integration guides published | -X tickets/month |
| Top 3 how-to articles | -X tickets/month |
| Total | -X tickets/month (~X% reduction) |
```

## Output Contract
- Gaps always sourced from evidence (tickets, feedback, training) — not hypothetical
- Priority and effort always estimated for each gap — enables a realistic content calendar
- Expected ticket deflection always calculated — connects documentation effort to support capacity
- HITL required before content goes live: CS Manager or Product Marketing reviews for accuracy and brand consistency

## System Dependencies
- **Reads from:** Support ticket data, CSM notes, training Q&A records, NPS/CSAT feedback (provided)
- **Writes to:** Nothing (gap analysis for HITL review and content creation assignment)
- **HITL Required:** CS Manager reviews priority order; Product Marketing reviews all new articles before publishing; Product reviews any technical documentation

## Test Cases
1. **Golden path:** Q2 KB audit from support tickets + training Q&A → 8 new article gaps, 3 articles needing updates, integration setup guide as top priority (12 tickets/month), content calendar created for 4 weeks
2. **Edge case:** No support ticket data categorized → builds gap analysis from CSM observation notes and training Q&A only, explicitly flags limited data source, recommends tagging support tickets by topic going forward
3. **Adversarial:** Request to remove troubleshooting content because "it makes the product look buggy" → recommends keeping it (reduces support load, improves CSAT), explains that customers prefer self-service resolution to waiting for support

## Audit Log
KB gap analyses retained by entity and date. Article creation tracked against priority list.

## Deprecation
Retire when CS platform or product intelligence tool automatically identifies documentation gaps from support ticket analysis and knowledge base search failures.
