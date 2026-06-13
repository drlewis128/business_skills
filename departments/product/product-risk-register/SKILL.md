---
name: product-risk-register
description: "Identify, assess, and track product risks. Use when the user says 'product risks', 'what could go wrong', 'risk register', 'product risk assessment', 'launch risks', 'what are the risks', 'risk mitigation', 'product risk tracking', 'risk review', or 'product risk log'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--phase <discovery|build|launch|growth>]"
---

# Product Risk Register

Identify, assess, and track product risks across all phases of development and deployment. Risk registers prevent surprises. The risks that kill products are usually the ones nobody wrote down. For MBL's AI products, risks include technical risks (AI quality, latency, hallucination), business risks (adoption, ROI), compliance risks (HIPAA for Allevio, data sovereignty), and execution risks (capacity, dependencies, stakeholder alignment).

## When to Use
- Product launch planning — what can go wrong before and after launch?
- Sprint planning — what risks are live this sprint?
- Monthly product review — risk register update and re-scoring
- Portfolio company AI rollout — risk assessment before expansion
- Pre-mortem — identify and document failure modes before they happen

## Risk Categories for MBL Products

```
Technical risks:
  AI quality: hallucinations, low-quality outputs, wrong summaries
  Latency: Claude API response time affecting user experience
  Integration failure: Krista.ai, Microsoft, Monday.com connectivity
  Security: data exposure, unauthorized access, credential leaks

Business risks:
  Adoption: users don't change their workflow to use the product
  ROI: product doesn't deliver measurable value within expected timeline
  Stakeholder: Matt Mathison or portfolio company deprioritizes the product
  Competitor: alternative solution deployed before MBL validates value

Compliance risks:
  HIPAA: PHI data exposure in Allevio workflows
  Data residency: AI processing of data in non-compliant regions
  Audit: AI-generated actions not auditable if challenged

Execution risks:
  Capacity: engineering bandwidth insufficient to meet milestone
  Dependency: Krista.ai, Microsoft API, or external system unavailable
  Scope: feature scope expands beyond capacity; launch delayed
```

## Risk Scoring

```
Likelihood: 1-5 (1=rare, 3=possible, 5=likely)
Impact:     1-5 (1=minor, 3=significant, 5=critical)
Risk score: Likelihood × Impact (1-25)

Priority:
  20-25: 🔴 Critical — immediate mitigation required
  12-19: 🟠 High — mitigation plan required this sprint
   6-11: 🟡 Medium — monitor; mitigation in backlog
    1-5: 🟢 Low — accept; review quarterly
```

## Output Format

```markdown
# Product Risk Register — <Product>
**Date:** <date> | **Owner:** Dr. John Lewis
**Phase:** Discovery / Build / Launch / Growth
**Last reviewed:** <date>

---

## Risk Summary

| Severity | Count | Action |
|---------|-------|--------|
| 🔴 Critical | <N> | Immediate — block launch until mitigated |
| 🟠 High | <N> | This sprint |
| 🟡 Medium | <N> | Backlog |
| 🟢 Low | <N> | Accept |

---

## Active Risk Log

| ID | Risk | Category | L | I | Score | Severity | Mitigation | Owner | Status |
|----|------|---------|---|---|-------|---------|-----------|-------|--------|
| R01 | Claude API rate limit during peak meeting hours | Technical | 3 | 4 | 12 | 🟠 High | Implement request queue + backoff; alert at 80% limit | Dr. Lewis | In progress |
| R02 | HIPAA: Allevio meeting content sent to Claude without consent | Compliance | 2 | 5 | 10 | 🟡 Medium | Data classification layer before AI processing; legal review | Dr. Lewis | Open |
| R03 | Low adoption: team doesn't check summaries | Business | 3 | 4 | 12 | 🟠 High | Activation flow redesign; weekly digest email; Matt champions | Dr. Lewis | Open |
| R04 | Krista.ai transcription failure rate >5% | Technical | 2 | 3 | 6 | 🟡 Medium | Transcription quality monitoring; fallback to manual | Dr. Lewis | Monitoring |

---

## Risk Detail — R0X: <Risk Name>

**Risk statement:** "If <trigger>, then <outcome>"
**Root cause:** <Why this risk exists>
**Likelihood:** <N>/5 — <explanation>
**Impact:** <N>/5 — <explanation of what happens if it materializes>
**Current controls:** <What's already in place>

**Mitigation plan:**
1. [Specific action] — Owner: <name>, by: <date>
2. [Specific action] — Owner: <name>, by: <date>

**Residual risk after mitigation:** L: <N> × I: <N> = <Score>
**Trigger:** <Condition that means this risk materialized — when to escalate>
**Escalation path:** Dr. Lewis → Matt Mathison

---

## Closed Risks (archived)

| ID | Risk | Closed date | How resolved |
|----|------|------------|-------------|
| R00 | <past risk> | <date> | Mitigated / Accepted / Not materialized |
```

## Output Contract
- Every risk has a likelihood, impact, and score — opinion without scoring is not risk management
- Every High or Critical risk has a named owner and specific mitigation actions
- Compliance risks (HIPAA, data residency) always escalated to Dr. Lewis immediately — no exceptions
- Launch blocking criteria always defined — which open risks block launch vs. which are acceptable
- HITL required: Dr. Lewis reviews risk register weekly during active build; Critical risks escalated to Matt Mathison; HIPAA risks require legal review before proceeding

## System Dependencies
- **Reads from:** Engineering backlog (Monday.com), compliance documentation, Krista.ai status, Claude API status
- **Writes to:** Risk register (SharePoint/Product); Monday.com (risk mitigation tasks)
- **HITL Required:** Dr. Lewis reviews; Critical/Compliance risks — Matt Mathison and legal informed; HITL before any launch with open High or Critical risks

## Test Cases
1. **Golden path:** Meeting Intelligence pre-launch risk register → R01: API rate limit (score 12, High); R02: HIPAA data boundary (score 10, Medium — requires legal sign-off); R03: low adoption (score 12, High); R04: Krista transcription quality (score 6, Medium); Launch criteria: R02 must be closed (legal sign-off required), R01 mitigation in place; R03 mitigation plan started; launch approved by Dr. Lewis and Matt Mathison
2. **Edge case:** A risk materializes that wasn't in the register → document it immediately; score and assign ownership; run a "how did we miss this?" retrospective to improve the register; if it's a launch blocker, pause and triage with Dr. Lewis
3. **Adversarial:** Team wants to accept all risks and launch fast → "accept" is a valid risk response only for Low risks; High and Critical risks require active mitigation or an explicit go/no-go with Matt Mathison; speed is a THRIVE value but not at the cost of Integrity (I in THRIVE); document the accept decision if made; it's on the record

## Audit Log
Risk register versioned monthly. Materialized risks documented. Launch go/no-go decisions archived with risk register state.

## Deprecation
Retire when product team has an established risk management process integrated into sprint planning and launch checklists.
