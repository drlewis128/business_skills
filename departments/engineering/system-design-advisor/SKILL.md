---
name: system-design-advisor
description: "Advise on system architecture and technical design decisions. Use when the user says 'how should we design this', 'system design', 'architecture review', 'should we use microservices', 'how do we scale this', 'design this system', 'technical architecture', 'architecture trade-offs', 'should we build or buy', or 'integration architecture'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--system <name>] [--mode <design|review|trade-off>] [--scale <startup|growth|enterprise>]"
---

# System Design Advisor

Advise on system architecture and technical design decisions for MBL engineering. System design decisions are long-lived — a poor architecture choice made today costs multiples to fix in 18 months. This skill applies engineering judgment to architecture decisions using MBL's specific context: Rust-based agent runtimes (OpenFang), Claude API integration, Krista.ai orchestration, and portfolio company-specific constraints (HIPAA for Allevio, oil & gas for HIVE).

## When to Use
- New system or major feature design — before implementation begins
- Evaluating build vs. buy decision
- Scaling challenge — current architecture is hitting limits
- Integration design — connecting two systems that need to communicate
- Architectural review of an existing system before a major refactor
- Portfolio company technology assessment

## Design Principles (MBL Context)

```
1. Orchestration, not replacement
   Krista.ai and agents coordinate systems; systems of record stay external.
   Don't move data you don't own.

2. API-first
   Every capability exposed as an API before building a UI.
   Enables agent consumption before human consumption.

3. Auditable by default
   Every write action logged. Every agent decision traceable.
   HIPAA for Allevio, LP governance for HIVE — audit trail is non-negotiable.

4. Portfolio isolation
   Each portfolio company gets secure, permissioned access.
   Shared infrastructure, isolated data planes.

5. Simplicity over cleverness
   A system you can debug at 2am beats an elegant system that's opaque.
   Add complexity only when simple doesn't scale.
```

## Architecture Patterns Reference

| Pattern | Use When | Avoid When |
|---------|----------|-----------|
| **Monolith** | <10 engineers; early product | >20 engineers with independent release cadences |
| **Microservices** | Teams need to deploy independently; services have different scaling needs | Single team; shared DB; high latency tolerance is low |
| **Event-driven** | Decoupled async processing; audit trail required; fan-out to multiple consumers | Low latency required; simple CRUD workflows |
| **CQRS** | Read and write patterns diverge significantly | Simple domain; small team; premature optimization |
| **Agent architecture** | Autonomous multi-step reasoning required; tool use; variable execution paths | Deterministic rule-based workflows (use simple automation) |
| **Serverless** | Bursty workloads; event processing; low steady-state volume | Long-running processes; high-throughput sustained load |

## Build vs. Buy Framework

```
Build when:
  - Core to your competitive advantage
  - Existing tools don't fit your data model
  - Cost of integration exceeds build cost over 3 years
  - Data cannot leave your environment (HIPAA, GDPR)

Buy when:
  - Commodity capability (auth, payments, email delivery)
  - Time to market is the priority
  - Existing tool covers 80%+ of requirements
  - Maintenance burden of building exceeds licensing cost

Evaluate at:
  - Year 1 cost (build: engineer-months × fully-loaded rate; buy: licensing + integration)
  - Year 3 total cost of ownership
  - Risk: what breaks if the vendor fails?
```

## Output Format

```markdown
# System Design Recommendation — <System Name>
**Date:** <date> | **Advisor:** Dr. John Lewis
**Context:** <entity / problem statement>

---

## Bottom Line

**Recommendation:** <design approach in 1-2 sentences>
**Confidence:** High / Medium / Low
**Key trade-off:** <what we're giving up for what we're gaining>

---

## Problem Statement

**What we're solving:** <specific problem>
**Scale:** <current volume / expected 12-month growth>
**Constraints:** <HIPAA / latency / budget / team size / tech stack>
**Non-requirements:** <what we explicitly are NOT solving>

---

## Recommended Architecture

### Approach: <name>

**Overview:** <2-3 sentences describing the design>

**Components:**
- [Component 1]: <purpose and responsibility>
- [Component 2]: <purpose and responsibility>
- [Data store]: <why this choice>
- [Integration layer]: <how systems connect>

**Data flow:**
1. [Step 1]
2. [Step 2]
3. [Step 3]

---

## Trade-off Analysis

| Dimension | Recommended Approach | Alternative Approach |
|-----------|-------------------|-------------------|
| Complexity | Medium | Low (monolith) / High (microservices) |
| Scalability | Handles 10× current load | Needs rework at 3× |
| Team fit | Matches current Rust/async skills | Would require new skills |
| Time to build | 6-8 weeks | 3 weeks / 16+ weeks |
| Operational overhead | Low | Very low / High |

---

## Risks and Mitigations

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|
| [Risk] | Medium | High | [Plan] |

---

## Integration Points

| System | Integration pattern | Data direction | Auth method |
|--------|-------------------|---------------|-----------|
| Krista.ai | Webhook → REST callback | Inbound events | Bearer token |
| Monday.com | REST API | Write (action items) | OAuth |
| Claude API | SDK | Outbound requests | API key (vault) |

---

## Implementation Sequence

1. [Phase 1 — foundation]: <what to build first and why>
2. [Phase 2 — core capability]: <next>
3. [Phase 3 — optimization]: <last — only if Phase 1-2 work>

**Start here:** [Single most important first step]

---

## Alternatives Considered and Rejected

### Alternative: <name>
**Why rejected:** <specific reason — not just "it's worse">
```

## Output Contract
- Bottom line always first — trade-off and recommendation before design details
- Non-requirements always stated — documenting what we're not solving prevents scope creep
- Implementation sequence always in phases — don't design a system without a build sequence
- HIPAA/compliance constraints always surfaced when Allevio is in scope
- HITL required: Dr. Lewis approves system design before implementation begins; Matt Mathison briefed on designs affecting MBL infrastructure or portfolio integration

## System Dependencies
- **Reads from:** Existing system documentation, OpenFang codebase patterns, MBL systems map
- **Writes to:** Architecture Decision Record (via `architecture-decision-recorder`); system design document (SharePoint/Engineering)
- **HITL Required:** Dr. Lewis approves; security review for systems handling PHI or financial data

## Test Cases
1. **Golden path:** Design the meeting intelligence pipeline for MBL → event-driven architecture: Krista.ai webhook → Azure Function → Claude API (summarization, action extraction) → Monday.com API (push) + SharePoint (archive); audit log at each step; HITL: Dr. Lewis reviews summary quality weekly; approved by Matt Mathison
2. **Edge case:** Allevio needs a patient intake system that touches PHI → HIPAA constraints drive design: PHI stays in Allevio's Azure environment; no PHI to MBL systems; BAA required for any tool that touches PHI; encryption at rest and in transit required; audit log retained 6 years; design reviewed by compliance before build
3. **Adversarial:** Engineer wants to adopt a new technology (Kafka, Kubernetes) to "future-proof" the system → apply the simplicity principle: what specific problem does this solve that the current approach cannot?; if the answer is "scalability" — what is the current load and what is the projection?; premature scaling infrastructure is expensive; document the decision to defer

## Audit Log
System design recommendations and ADRs retained. Build vs. buy decisions documented with rationale. Architecture reviews retained.

## Deprecation
Retire when engineering team has an established architecture review board with documented design standards and an ADR process integrated into the development workflow.
