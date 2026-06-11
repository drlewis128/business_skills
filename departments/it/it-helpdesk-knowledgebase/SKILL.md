---
name: it-helpdesk-knowledgebase
description: "Build and maintain the IT help desk knowledge base. Use when the user says 'IT knowledge base', 'IT KB', 'helpdesk articles', 'IT self-service', 'document common IT issues', 'IT FAQ', 'employee self-service IT', or 'how do employees solve IT problems themselves'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--action <audit|build|article>] [--topic <wifi|vpn|email|password|<other>>]"
---

# IT Helpdesk Knowledge Base

Build and maintain the IT helpdesk knowledge base. Every ticket that an employee could have resolved themselves is a ticket IT didn't need to handle. A high-quality knowledge base reduces ticket volume by 20-40%, improves resolution speed, and frees IT staff for work that requires human judgment.

## When to Use
- Building the knowledge base from scratch
- Quarterly KB audit (are articles current? What's missing?)
- After a recurring issue — if IT answers the same question 3 times, write an article
- New system deployed — write articles before users ask for help
- Onboarding a portfolio company — create basic IT self-service content

## Article Triggers

| Trigger | Action |
|---------|--------|
| Same question answered 3 times | Write an article |
| New system or tool deployed | Write articles before rollout |
| Quarterly ticket category report | Top 5 ticket types → top 5 article gaps |
| New policy implemented | Write a "What changed and how does this affect you?" article |
| Security awareness training | Write companion articles ("How to report a phishing email") |

## Article Quality Standards

1. **Written for the user, not IT** — No jargon; write at a 7th-grade reading level for technical topics
2. **Outcome-first** — Title says what the user can do after reading ("How to reset your password")
3. **Step-by-step** — Not paragraphs; numbered steps with one action each
4. **Screenshots for complex UIs** — Users follow images faster than text
5. **Tested before publishing** — IT must follow the article themselves before publishing it
6. **Dated and reviewed** — Every article shows a "Last updated" date and is reviewed annually

## Output Format

### Article Template

```markdown
# [How to / What to do when] <Outcome>
**Last updated:** <date> | **IT contact:** [it-support@entity.com] | **Works for:** <Windows / Mac / Both>

---

## When to use this article
<One sentence: What problem does this article solve? E.g., "Use this when you need to connect to the company VPN.">

---

## What you'll need
- [Prerequisite 1 — e.g., your company email and password]
- [Prerequisite 2]

---

## Steps

1. Open [app / go to URL]
2. [Click / enter / select] [specific element]
3. [Next step]
4. When you see [expected result], you're done.

---

## If it doesn't work

| Problem | Try This |
|---------|---------|
| [Error message or symptom] | [Specific fix or workaround] |
| [Another problem] | [Fix] |

Still stuck? Contact IT: [it-support@entity.com] | [Slack #it-help] | [Phone]

---

## Related Articles
- [Link to related article]
```

### Knowledge Base Audit

```markdown
# IT Knowledge Base Audit — <Entity>
**Date:** <date> | **Total articles:** <N>

## Coverage Assessment

| Topic Area | Articles Exist | Quality | Gap |
|-----------|--------------|---------|-----|
| Password reset | ✅ 1 | Good | None |
| VPN setup | ❌ None | — | 🔴 High: 12 tickets/month |
| Microsoft Teams basics | ✅ 2 | Outdated (pre-v2) | 🟡 Update needed |
| New laptop setup | ❌ None | — | 🟡 Medium |
| Printer setup | ✅ 1 | Good | None |
| Email / Outlook | ✅ 3 | Good | None |

## Articles to Create (Priority Order)

| Article | Ticket Volume (justification) | Effort | Owner | Due |
|---------|------------------------------|--------|-------|-----|
| How to connect to VPN | 12 tickets/month — top 1 category | Low (1 hr) | IT Tech | <date> |
| How to set up a new laptop | 8 tickets/month | Medium (2 hrs) | IT Tech | <date> |
| How to join a Teams meeting | 6 tickets/month | Low | IT Tech | <date> |

## Articles to Update

| Article | Last Updated | Issue | Owner | Due |
|---------|------------|-------|-------|-----|
| Microsoft Teams guide | 18 months ago | Pre-Teams v2 UI; screenshots wrong | IT Tech | <date> |
```

## Output Contract
- Every article must be testable — IT follows the steps before publishing
- Articles always include a "still stuck" escalation path — self-service doesn't mean abandoned
- Ticket-volume-based prioritization always drives new article creation — not which article is easiest to write
- HITL required: IT Manager reviews audit and article priorities; Dr. Lewis reviews KB coverage for portfolio company assessments

## System Dependencies
- **Reads from:** Help desk ticket data (by category and volume), system documentation (provided)
- **Writes to:** IT knowledge base (SharePoint, Confluence, Notion) — after IT Manager review
- **HITL Required:** IT Manager reviews articles before publishing; any security-related article reviewed for accuracy before publishing

## Test Cases
1. **Golden path:** Quarterly KB audit → 8 articles exist, 3 new articles needed (VPN, laptop setup, Teams), 2 articles need updating; priority based on ticket volume; VPN article written and published first (top ticket category)
2. **Edge case:** Entity has no KB platform at all → recommends SharePoint wiki as lowest-lift option (already licensed), provides setup guide and article template, estimates 4 hours to build initial 5-article starter set
3. **Adversarial:** IT staff argues writing articles takes too long compared to just answering the question → calculates: VPN question answered 12×/month × 10 min each = 2 hours/month; 1-hour article eliminates 2 hours/month of recurring work, break-even in 2 months

## Audit Log
KB article inventory retained by entity. Article creation, update, and retirement dates tracked. Quarterly coverage assessments archived.

## Deprecation
Retire when entity deploys a dedicated IT service management platform with integrated knowledge base, AI-suggested articles, and ticket deflection tracking.
