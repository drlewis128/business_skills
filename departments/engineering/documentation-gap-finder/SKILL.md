---
name: documentation-gap-finder
description: "Identify missing or stale documentation in engineering projects. Use when the user says 'documentation gaps', 'what docs are missing', 'outdated documentation', 'docs audit', 'where is the documentation', 'documentation review', 'what needs to be documented', 'our docs are stale', or 'documentation health'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--repo <name>] [--scope <api|architecture|ops|onboarding>] [--mode <audit|generate|prioritize>]"
---

# Documentation Gap Finder

Identify missing or stale documentation in engineering projects. Documentation debt compounds — each undocumented decision is a question answered by the next engineer who touches that code. In MBL's context with agent systems and LLM integrations, documentation is also the training data for future agents and the audit trail for compliance. This skill audits documentation coverage and prioritizes what to write first.

## When to Use
- New engineer is starting and the onboarding documentation is sparse
- A post-mortem identified that missing documentation contributed to an incident
- Quarterly documentation health review
- Before a major refactor — ensure key decisions are documented before code changes
- Adding a new portfolio company integration that needs documentation

## Documentation Categories and Required Coverage

### For Every Repository
| Document | Required | Location | Update Trigger |
|---------|---------|---------|---------------|
| README.md | ✅ Required | Root | Any architectural change |
| Developer setup guide | ✅ Required | README or docs/setup.md | Any toolchain change |
| Architecture overview | ✅ Required | docs/architecture.md | Any design decision |
| API documentation | ✅ Required (if API exists) | OpenAPI spec or docs/ | Every endpoint change |
| CHANGELOG.md | ✅ Required | Root | Every release |
| ADRs (Architecture Decision Records) | ✅ Required (key decisions) | docs/decisions/ | Each significant decision |
| Runbooks | ✅ Required (for production services) | docs/runbooks/ | Post-incident or new alert |

### For OpenFang / Agent Systems Specifically
| Document | Required | Notes |
|---------|---------|-------|
| Crate-level documentation | ✅ Required | Each crate has a doc comment explaining purpose |
| Agent loop documentation | ✅ Required | How the agent loop works; tool selection logic |
| Tool definitions | ✅ Required | Each tool: purpose, parameters, expected output |
| Prompt documentation | ✅ Required | System prompts documented with intent and constraints |
| Audit log schema | ✅ Required | What is logged, format, retention |
| Configuration reference | ✅ Required | Every config value with type, default, and purpose |

## Documentation Staleness Indicators

```
High risk of staleness:
  - Last commit date on doc file > 6 months older than main codebase
  - Doc references functions/files that no longer exist
  - "TODO: document this" comments in code
  - Setup guide references old version numbers
  - API docs describe endpoints that return different schemas

Confirmation of staleness:
  - New engineer followed the setup guide and it failed
  - An incident was longer than necessary due to runbook gaps
  - An API consumer was surprised by a response format change
```

## Output Format

```markdown
# Documentation Audit — <Repository/Project>
**Date:** <date> | **Auditor:** Dr. John Lewis
**Repository:** <repo> | **Commits audited:** <N>

---

## Documentation Health Summary

**Coverage score:** <N>% (required docs present and current)
**Critical gaps:** <N> — documents that don't exist but must
**Stale documents:** <N> — documents last updated > 6 months ago vs. code
**Estimated effort to close gaps:** <N> engineer-days

---

## Critical Gaps (Missing — Must Create)

| Document | Priority | Why Critical | Owner | Target |
|---------|---------|-------------|-------|--------|
| API endpoint reference | P1 | External consumers relying on undocumented behavior | Dr. Lewis | Sprint N |
| Runbook: "High Error Rate" alert | P1 | Alert fires; no runbook = slow incident | [name] | Sprint N |
| Architecture overview | P2 | New engineers can't orient | Dr. Lewis | Sprint N+1 |

---

## Stale Documents (Need Update)

| Document | Last updated | Code last changed | Gap | Action |
|---------|------------|-----------------|-----|--------|
| README.md | 2025-01 | 2026-04 | 16 months | Update setup instructions; add new env vars |
| docs/agent-loop.md | 2025-06 | 2026-03 | 9 months | Document new tool routing logic |

---

## TODOs in Code (Hidden Documentation Debt)

| File | Line | TODO Content | Priority |
|------|------|-------------|---------|
| src/agent/router.rs | 42 | `// TODO: document why we skip tool validation for internal tools` | P2 |
| src/api/handlers.rs | 128 | `// TODO: add API docs for this endpoint` | P1 |

---

## Documentation That's Current

| Document | Last updated | Status |
|---------|------------|--------|
| CHANGELOG.md | 2026-06 | ✅ Current |
| Setup guide | 2026-05 | ✅ Current |
| OpenAPI spec (partial) | 2026-06 | ⚠️ Covers 60% of endpoints |

---

## Prioritized Action Plan

**This sprint:**
1. <Highest priority missing doc — 1 engineer-day estimate>

**Next sprint:**
2. <Second priority>

**This quarter:**
3. <Lower priority but important>
```

## Output Contract
- Critical gaps separated from stale documents — missing > stale in urgency
- Effort estimate always included — documentation work competes with feature work for capacity
- Code TODOs always included — hidden documentation debt in comments is real debt
- Owner always assigned for critical gaps — unassigned docs never get written
- HITL required: Dr. Lewis reviews documentation audit and prioritization; Matt Mathison notified if API documentation gaps affect portfolio company integrations

## System Dependencies
- **Reads from:** Repository file structure, git history (last modified dates), code TODO comments, OpenAPI spec (if present)
- **Writes to:** Documentation audit report (SharePoint/Engineering); Monday.com documentation tickets
- **HITL Required:** Dr. Lewis reviews audit; prioritization approved by Dr. Lewis; critical API doc gaps escalated to Matt Mathison if affecting integrations

## Test Cases
1. **Golden path:** Documentation audit of OpenFang repo → 6 required docs present; 2 critical gaps (missing runbooks for 3 alerts, incomplete API spec); 3 stale docs (README 14 months behind code, agent loop doc 9 months behind); 8 code TODOs; prioritized: runbooks (P1 — on-call risk), API spec (P1 — integration risk), README (P2 — onboarding); effort estimate: 3 engineer-days
2. **Edge case:** Repository has extensive inline code comments but no external documentation → inline comments are not a substitute for architecture documentation; a new engineer shouldn't have to read 50K lines to understand the system's design; create a 1-page architecture overview that references the relevant code sections
3. **Adversarial:** Team says "the code is self-documenting, we don't need documentation" → self-documenting code explains what; architecture documentation explains why; runbooks explain what to do when it breaks; no amount of clean code explains a business decision made 18 months ago; produce the gap list and let the incident history speak for itself

## Audit Log
Documentation audit results retained quarterly. Critical gap resolution tracked in Monday.com.

## Deprecation
Retire when repository adopts automated documentation generation (rustdoc, OpenAPI from code annotations) covering >80% of required documentation automatically.
