---
name: platform-strategy-advisor
description: "Advise on platform strategy for AI products and ecosystem development. Use when the user says 'platform strategy', 'build a platform', 'should we platformize', 'open up the API', 'ecosystem strategy', 'third-party integrations', 'platform vs product', 'developer ecosystem', 'build vs buy vs partner', or 'platform thinking'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--question <platform|ecosystem|integration|build-vs-buy>]"
---

# Platform Strategy Advisor

Advise on platform strategy — when to build a platform vs. a product, how to create an ecosystem, and how to think about third-party integration strategy for MBL's AI systems. A platform is a foundation that others build on; a product is something users use directly. Platforms have more leverage but more complexity. For MBL, the key platform question is whether the AI orchestration layer (Krista.ai + OpenFang) should be a platform that portfolio companies build on, or a product that Dr. Lewis operates for them.

## When to Use
- A product is working well and you're thinking about how to scale it across the portfolio
- Third parties (portfolio companies, vendors) want to build on top of your product
- Deciding whether to build an integration, buy a vendor, or partner
- OpenFang architecture: should it be an internal tool or a platform?
- Portfolio company assessment: are they building a platform or a product?

## Platform vs. Product Decision Framework

```
Build a product when:
  - You own the full user experience end-to-end
  - You serve a specific, well-understood user segment
  - The problem is narrow and deep; you can build the perfect solution
  - Network effects aren't central to the value

Build a platform when:
  - Others can create value on top of your core better than you can
  - You want network effects: the more participants, the more value
  - The problem space is too broad to solve with a single product
  - You want to capture value from an ecosystem, not just a product

For MBL:
  - MBL AI orchestration: PLATFORM — portfolio companies build workflows on it
  - Meeting Intelligence: PRODUCT — MBL team is the user; direct value delivery
  - OpenFang: PLATFORM — skills/agents built on top of the runtime
  - Agent skill library: PRODUCT-PLATFORM HYBRID — product (skills work out of box) + platform (others can add skills)
```

## Build vs. Buy vs. Partner

```
Build when:
  - Competitive advantage depends on owning the capability
  - No market solution that meets MBL's requirements
  - Cost of building < long-term cost of vendor lock-in
  - Team has the capability

Buy (license/SaaS) when:
  - Commodity capability — no competitive differentiation
  - Speed matters — market solution exists and can be deployed fast
  - Vendor can evolve the capability faster than internal team
  - Cost of building >> cost of licensing

Partner (integration) when:
  - Mutual value: your product + their product > either alone
  - Neither of you should own the full stack
  - Network effects require volume neither of you has alone

Examples for MBL:
  - Meeting transcription: PARTNER (Krista.ai) — commodity function; they're specialized
  - AI reasoning (Claude): PARTNER — Anthropic is best in class; leverage, don't duplicate
  - Agent runtime: BUILD (OpenFang) — this is MBL's core IP; competitive differentiation
  - CRM: BUY (GoHighLevel) — commodity; MBL should not build CRM
```

## Output Format

```markdown
# Platform Strategy Recommendation — <Topic>
**Date:** <date> | **Advisor:** Dr. John Lewis
**Question:** <specific strategic question being answered>

---

## Recommendation

**BLUF:** <1-2 sentence recommendation>
**Confidence:** High / Medium / Low
**Key assumption:** <the most important thing this recommendation depends on>

---

## Platform vs. Product Analysis (if applicable)

| Dimension | Evidence | Platform lean | Product lean |
|-----------|---------|--------------|-------------|
| Network effects present? | <evidence> | ✅ | |
| Others create value on top? | <evidence> | ✅ | |
| Narrow, well-understood use case? | <evidence> | | ✅ |
| Full UX ownership desired? | <evidence> | | ✅ |

**Verdict:** Build as <Platform / Product / Hybrid>
**Rationale:** <2-3 sentences>

---

## Build vs. Buy vs. Partner Analysis (if applicable)

| Capability | Option | Rationale | Cost (rough) | Timeline |
|-----------|--------|-----------|-------------|---------|
| [Capability 1] | Build | Core IP; competitive differentiation | <est.> | <est.> |
| [Capability 2] | Buy | Commodity; vendor is best in class | $<N>/mo | Immediate |
| [Capability 3] | Partner | Mutual value; neither should own fully | Revenue share | <est.> |

---

## Ecosystem Strategy (if building a platform)

**Who builds on the platform?**
| Builder type | What they build | How they get access | Value they receive |
|-------------|----------------|--------------------|--------------------|
| Portfolio companies (Allevio, HIVE) | Workflow automations | Invited; Dr. Lewis onboards | AI workflows without building AI |
| Internal team | Agent skills | GitHub contribution | Shared capability |

**Platform governance:**
- Who approves new integrations/skills? Dr. Lewis (quality gate)
- How do third-party contributions get reviewed? Skill Auditor skill (12-rule check)
- What's the revenue model (if any)? <Internal tool: N/A / External: subscription / revenue share>

---

## Integration Strategy

**Current integrations:** <list existing>
**Integration priority stack:**

| Integration | Priority | Value to MBL | Build / API / Partner |
|------------|---------|-------------|----------------------|
| Microsoft (Outlook/Teams) | Critical | Identity + comms backbone | API |
| Krista.ai | Critical | Meeting transcription + AI orchestration | Partner |
| Monday.com | High | Action items + sprint management | API |
| QuickBooks | Medium | Financial reporting | API |
| GoHighLevel | Medium | CRM outreach | API |

**Integration standards:** All integrations must be auditable, permissioned, and logged per MBL architecture principles.

---

## Risks

| Risk | Mitigation |
|------|-----------|
| Platform complexity outpaces team capacity | Cap third-party access; Dr. Lewis reviews each new builder |
| Vendor lock-in (Krista.ai, GoHighLevel) | Maintain API abstraction layer; evaluate alternatives annually |
| Portfolio companies build conflicting versions | Dr. Lewis is platform governor; one shared skill registry |
```

## Output Contract
- Build vs. Buy vs. Partner always explicit — "it depends" without a recommendation is not strategy
- Ecosystem governance always defined if recommending platform — ungoverned platforms fracture quickly
- Integration priority stack always assessed for MBL context — using the known systems map
- Key assumption always stated — strategy recommendations built on hidden assumptions are brittle
- HITL required: Dr. Lewis approves all platform strategy recommendations; Matt Mathison aligned on major strategic direction changes; platform decisions that affect portfolio company workflows require both

## System Dependencies
- **Reads from:** MBL systems map, current integration inventory, OpenFang architecture documentation
- **Writes to:** Platform strategy recommendation (SharePoint/Strategy); integration roadmap
- **HITL Required:** Dr. Lewis approves; Matt Mathison aligned on major strategic shifts

## Test Cases
1. **Golden path:** Should MBL build a developer-facing API for the agent skill registry? → Analysis: current users are internal only (n=4); network effects limited to MBL portfolio (n=4 companies); team capacity would be consumed by developer relations; Verdict: NOT a developer platform now; build internal platform tooling instead; revisit when portfolio is stable and skill count >200; recommendation: keep skill registry as internal platform; document the API for future external access
2. **Edge case:** Portfolio company (Allevio) wants to build their own custom skills on OpenFang → support this but govern it; give Allevio a forked branch or sandboxed environment; Dr. Lewis reviews Allevio skills before production deployment; this is the right direction — portfolio companies extending the platform is the goal; formalize the governance process now before it's ad hoc
3. **Adversarial:** A vendor offers to integrate their product with MBL's AI orchestration layer for "free" (in exchange for data sharing) → data is a primary asset; free integrations that require data sharing must be evaluated carefully; what data, how it's used, who has access — these are not secondary questions; Dr. Lewis reviews all data-sharing integrations; any data sharing with third parties requires Dr. Lewis and Matt Mathison approval

## Audit Log
Platform strategy recommendations retained. Integration decisions documented. Annual architecture review of build/buy/partner decisions.

## Deprecation
Retire when MBL has a dedicated platform team and formal partner/ecosystem program with established governance and legal frameworks.
