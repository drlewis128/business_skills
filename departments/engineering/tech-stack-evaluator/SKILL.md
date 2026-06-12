---
name: tech-stack-evaluator
description: "Evaluate technology stack choices and recommend additions or changes. Use when the user says 'what language should we use', 'which framework', 'should we switch to X', 'technology choice', 'tech stack decision', 'which database', 'should we use Rust or TypeScript', 'which cloud provider', 'evaluate this technology', or 'technology recommendation'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--decision <technology description>] [--context <use-case>] [--mode <evaluate|compare|recommend>]"
---

# Tech Stack Evaluator

Evaluate technology stack choices and recommend additions or changes for MBL engineering. Technology decisions compound — they define hiring pipelines, performance ceilings, security posture, and the cost of future changes. This skill applies structured evaluation criteria to technology choices with MBL's specific constraints: Rust preference for agent systems, Claude API integration, HIPAA/compliance requirements, and PE portfolio company pragmatism (time-to-value over architectural elegance).

## When to Use
- New project or service — what language/framework/database?
- Evaluating a switch away from current technology (migration cost analysis)
- Adding a new technology to the stack (new database type, messaging system, cache)
- A portfolio company is using a different stack — should we standardize?
- An engineer is advocating for a new technology — evaluate the proposal

## MBL Technology Preferences

### Primary Stack (Preferred)
| Layer | Technology | Reason |
|-------|-----------|--------|
| **Systems/Agent runtime** | Rust | OpenFang; performance; safety; Dr. Lewis expertise |
| **Backend services** | Rust (Axum/Actix) | Consistency with agent runtime |
| **Database** | PostgreSQL | ACID compliance; JSONB for flexible data; strong ecosystem |
| **Cloud** | Azure | Microsoft ecosystem (Teams/SharePoint/Entra); Allevio HIPAA compliance |
| **AI/LLM** | Claude (Anthropic) | Primary; prompt caching; tool use; portfolio familiarity |
| **Task management** | Monday.com | Standard across MBL portfolio |
| **Secrets** | Azure Key Vault / 1Password | Compliance-grade secret management |

### Acceptable Alternatives (Requires Justification)
| Alternative | Acceptable When |
|------------|----------------|
| TypeScript/Node.js | External-facing APIs with heavy JSON processing; team familiarity exceeds Rust ROI |
| Python | ML/data pipeline scripts; not for production services |
| SQLite | Local/embedded use cases; not for multi-user production |
| AWS | Portfolio company already on AWS; not replacing existing Azure infrastructure |

### Technologies Requiring Dr. Lewis Approval Before Adoption
- New programming languages
- New primary databases (different paradigm from PostgreSQL)
- New cloud providers or regions
- Technologies with uncertain security posture for HIPAA compliance

## Evaluation Criteria

| Criterion | Weight | Scoring Guide |
|----------|--------|--------------|
| Solves the specific problem | 25% | 1=poor fit, 5=purpose-built |
| Team familiarity / learning cost | 20% | 1=steep learning curve, 5=team already knows it |
| Security and compliance | 20% | 1=compliance gaps, 5=SOC 2, HIPAA-capable, audited |
| Community and support | 15% | 1=niche/dying, 5=large community, commercial support available |
| Performance for the use case | 10% | 1=wrong paradigm, 5=excellent fit |
| Long-term maintenance burden | 10% | 1=high debt, 5=low maintenance, stable API |

## Output Format

```markdown
# Technology Evaluation — <Technology/Decision>
**Date:** <date> | **Evaluator:** Dr. John Lewis
**Context:** <use case and constraints>
**Decision needed by:** <date>

---

## Recommendation

**Use:** <technology> — or — **Avoid:** <technology>
**Confidence:** High / Medium / Low
**Key reason:** <single most important factor>

---

## Context

**What we're solving:** <specific technical problem>
**Scale:** <expected load, data volume, team size>
**Constraints:** <HIPAA / budget / timeline / existing stack>
**Non-requirements:** <what we are explicitly NOT solving>

---

## Options Evaluated

| Option | Problem fit | Team fit | Security | Community | Performance | Maintenance | **Score** |
|--------|------------|---------|---------|----------|------------|------------|----------|
| [Option A] | 5 | 4 | 5 | 4 | 5 | 4 | **4.55** |
| [Option B] | 4 | 5 | 3 | 5 | 3 | 5 | **4.05** |
| [Option C] | 3 | 2 | 4 | 3 | 4 | 3 | **3.05** |

*Weighted: Problem×0.25 + Team×0.20 + Security×0.20 + Community×0.15 + Perf×0.10 + Maintenance×0.10*

---

## Recommended Option Analysis

### [Option A] — Why

**Strengths:**
- [Strength 1 — specific]
- [Strength 2 — specific]

**Weaknesses / mitigations:**
- [Weakness]: [mitigation]

**HIPAA/compliance assessment:** ✅ Compliant / ⚠️ Requires BAA / ❌ Not compliant (disqualified)

**Migration from current:** [Description of what changes and estimated effort]

---

## Alternatives Considered and Rejected

### [Option B] — Why Not
**Disqualified because:** <specific, not vague — "less performant" without context is not a reason>

---

## Risk Assessment

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|
| [Risk] | Low | Medium | [plan] |

---

## Decision and Next Steps

**Approved by:** Dr. John Lewis | Date: <date>
**Implementation timeline:** <estimate>
**Success metric:** <how we'll know this was the right choice in 6 months>
```

## Output Contract
- Recommendation always before evidence — decision-makers read the summary first
- Specific disqualification reasons always documented — "worse" without specifics is not justification
- HIPAA compliance always assessed when Allevio is in scope — non-compliant = automatic disqualification
- MBL preferred stack bias always transparent — if recommending outside the preferred stack, explain why
- HITL required: Dr. Lewis approves all technology adoption decisions; Matt Mathison notified for decisions affecting portfolio company standardization; new languages or infrastructure components require explicit approval

## System Dependencies
- **Reads from:** Technology documentation, security reports, benchmark data, community metrics (GitHub stars, npm downloads, etc.)
- **Writes to:** Technology decision document (SharePoint/Engineering); ADR (via `architecture-decision-recorder`)
- **HITL Required:** Dr. Lewis approves; Matt Mathison for portfolio-wide decisions; ADR created and retained

## Test Cases
1. **Golden path:** Evaluate message queue options for async agent task processing → Options: Redis (Streams), RabbitMQ, NATS; Redis wins (4.4 score): already in stack (team familiarity 5/5), HIPAA-capable with Azure Redis, Rust SDK excellent, low operational overhead; NATS is technically superior but team unfamiliar (1.5 months to reach parity — not justified); Redis decision documented in ADR
2. **Edge case:** Portfolio company (HIVE) is using MySQL, not PostgreSQL → evaluate migration cost: schema complexity, stored procedures, data volume; if migration cost >3 months of engineer time, accept MySQL for HIVE and document as technical debt; don't force standardization that sets a portfolio company back; document in tech stack map
3. **Adversarial:** Engineer wants to adopt a new language ("Zig would be so much better") → evaluate seriously but require justification: what specific problem does Zig solve that Rust cannot?; team ramp cost; hiring implications; if no compelling answer, decline; document the decision; "it's interesting" is not a business driver

## Audit Log
Technology decisions documented as ADRs. Evaluation scoring retained. Decision rationale archived.

## Deprecation
Retire when MBL has a formal engineering standards body with documented technology radar (ThoughtWorks format) and an established technology approval process.
