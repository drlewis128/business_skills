---
name: ops-risk-register
description: "Build and maintain an operational risk register. Use when the user says 'risk register', 'operational risks', 'risk assessment', 'what could go wrong', 'identify risks', 'risk management', 'risk inventory', 'business risks', 'operational risk review', 'risk tracking', 'risk log', 'key risks', 'risk and mitigation', 'risk matrix', or 'risk heat map'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--scope <operational|financial|compliance|all>] [--action <build|review|update>]"
---

# Ops Risk Register

Build and maintain operational risk registers at MBL portfolio companies — a structured inventory of the risks that could materially impact operations, finances, people, or compliance, with their likelihood, impact, and mitigation status. A risk register is not pessimism — it's the management discipline of knowing what could go wrong before it does, so you can make deliberate decisions about which risks to mitigate, accept, transfer, or avoid. The standard: no surprise should be a complete surprise.

## When to Use
- A portfolio company needs its first formal risk register
- Annual planning — reviewing and updating the risk landscape
- A significant event has occurred (near-miss, industry incident, regulatory change) that warrants a risk review
- Matt Mathison asks "what are the key risks at [Company] right now?"
- A new initiative (expansion, technology, new service) is being planned and risks need to be assessed
- DR or business continuity planning is underway (ops-business-continuity-planner)

## Risk Register Framework

```
Risk scoring:
  Likelihood (1-5):
    1 — Rare: Could happen but very unlikely in next 12 months
    2 — Unlikely: Has happened in the industry; unlikely to affect us
    3 — Possible: Could reasonably occur in the next 12 months
    4 — Likely: Probably will occur; has happened before or conditions are present
    5 — Almost certain: Expected to occur; already showing early signs

  Impact (1-5):
    1 — Negligible: Minor disruption; no financial impact >$10K
    2 — Minor: Disruption for <1 week; financial impact $10K-$50K
    3 — Moderate: Disruption 1-4 weeks; financial impact $50K-$250K
    4 — Major: Disruption 1-3 months; financial impact $250K-$1M
    5 — Catastrophic: Existential threat; financial impact >$1M or license loss

  Risk score: Likelihood × Impact
    1-4: 🟢 Low — monitor; no immediate action required
    5-9: 🟡 Medium — active monitoring + mitigation plan
    10-14: 🟡 High — immediate mitigation action required
    15-25: 🔴 Critical — Matt Mathison awareness; immediate action required

Risk categories for MBL portfolio:
  Operational: Key person dependency, capacity, supplier failure, system downtime
  Financial: Cash flow, revenue concentration, cost overruns, fraud
  Compliance: Regulatory, legal, HR (EEOC, FLSA), industry-specific (HIPAA for Allevio)
  Market: Customer concentration, competitive pressure, market conditions
  Technology: Cybersecurity, system failure, data loss
  People: Key talent departure, leadership gap, culture deterioration

Healthcare-specific risks (Allevio):
  OIG exclusion (patient-facing employee on exclusion list) — catastrophic
  HIPAA breach — major to catastrophic depending on scale
  Payer contract termination — major
  Provider credentialing lapse — major

Oil & gas-specific risks (HIVE Partners):
  Commodity price decline >30% — major to catastrophic
  Well safety incident — catastrophic (plus regulatory)
  Environmental regulatory change (EPA, BLM) — major
  Water disposal permit revocation — major
```

## Output Format

```markdown
# Operational Risk Register — <Company Name>
**Date:** [Date] | **Last updated:** [Date]
**Prepared by:** Dr. John Lewis | **Reviewed by:** [CEO / Matt Mathison]
**Review cadence:** Quarterly + event-triggered

---

## Risk Heatmap Summary

| Risk score | Count | Highest risk item |
|-----------|-------|-----------------|
| 🔴 Critical (15-25) | [N] | [Risk name] |
| 🟡 High (10-14) | [N] | |
| 🟡 Medium (5-9) | [N] | |
| 🟢 Low (1-4) | [N] | |

---

## Risk Register

### 🔴 Critical Risks (Likelihood × Impact ≥ 15)

| # | Risk | Category | Likelihood | Impact | Score | Owner | Mitigation status | Next action |
|---|------|---------|-----------|--------|-------|-------|-----------------|------------|
| 1 | [Risk description — specific] | [Category] | [1-5] | [1-5] | [L×I] | [Owner] | [Active / Partial / None] | [Specific next action] |

**Risk 1 detail:** [Expanded description — what specifically could happen, what would trigger it, what the realistic worst case is]
**Mitigation plan:** [What is being done to reduce likelihood and/or impact]
**Residual risk:** [Risk after mitigation — is it acceptable?]
**Matt Mathison awareness:** ✅ Informed / 🔴 Needs to know

---

### 🟡 High Risks (10-14)

[Same table format as Critical]

---

### 🟡 Medium Risks (5-9)

[Same table format — briefer detail]

---

### 🟢 Low Risks (1-4)

| # | Risk | Category | Score | Monitor trigger |
|---|------|---------|-------|----------------|
| [N] | [Brief] | | [Score] | [What would cause this to escalate?] |

---

## Portfolio Risk Summary (if multi-entity review)

| Risk | Allevio | HIVE Partners | Column6 | MBL HoldCo |
|------|---------|--------------|---------|-----------|
| Key person dependency | 🟡 | 🟡 | 🔴 | 🟢 |
| Cash runway | 🟢 | 🟡 | 🟢 | 🟢 |
| HIPAA/compliance | 🟡 | N/A | N/A | N/A |
| OIG exclusion | 🟡 (monthly check) | N/A | N/A | N/A |
| Cybersecurity | 🟡 | 🟢 | 🟡 | 🟡 |

---

## Risk Changes Since Last Review

**New risks added:** [N] — [List with brief reason]
**Risks removed (resolved):** [N] — [List]
**Risks escalated (higher score):** [N] — [List with reason for escalation]
**Risks de-escalated:** [N] — [List with reason]

---

## Matt Mathison Brief (3 sentences)

[Company] risk register update: [Overall risk posture — improving/stable/deteriorating]. [Top 1-2 risks requiring Matt Mathison awareness]. [Actions underway / no action needed from you].
```

## Output Contract
- Every risk is specific — "cybersecurity risk" is a category, not a risk; "unauthorized access to patient billing records in AdvancedMD due to shared credentials among 4 billing staff" is a risk; the specificity determines the quality of the mitigation; vague risks produce vague mitigations
- Likelihood × Impact scoring is calibrated to the company — a 🔴 Critical risk at a 12-person company may be scored differently than at a 100-person company; the scoring scale anchors to the company's specific context and financial position; a $250K operational loss is different in magnitude for Allevio at $3M revenue vs. a $30M revenue company
- Critical risks have Matt Mathison awareness — any risk with a score ≥15 requires Matt Mathison to be informed; he may not be managing the mitigation, but he needs to know the risk exists; surprises are worse than known risks; Dr. Lewis delivers the brief, not a full report
- Risk register is a living document — reviewed quarterly and updated whenever a significant event occurs (near-miss, industry incident, regulatory change, new contract, staff departure); a risk register last updated 12 months ago is not a risk management tool — it's a historical document
- HITL required: Dr. Lewis builds and maintains risk register; company CEO reviews quarterly; Matt Mathison receives risk brief when critical risks exist or escalate; critical risks (≥15) with no mitigation plan require Matt Mathison decision; risk register drives insurance review, business continuity planning, and compliance calendar

## System Dependencies
- **Reads from:** Financial reports (cash runway), HR records (key person assessment), compliance calendar, vendor risk profiles, cybersecurity assessment, prior risk register
- **Writes to:** Risk register (SharePoint/Ops/<Company>/Risk Management/); Matt Mathison brief; drives: ops-business-continuity-planner, ops-insurance-reviewer; inputs to: annual planning
- **HITL Required:** Dr. Lewis builds; CEO reviews; Matt Mathison receives brief for critical risks; critical risk mitigations approved by Matt Mathison; quarterly review scheduled

## Test Cases
1. **Golden path:** Allevio annual risk register → Key risks identified: (1) OIG exclusion — Likelihood 3 (possible), Impact 5 (catastrophic — patient-facing, Medicare participation at risk) = 🔴 15; Mitigation: monthly OIG LEIE check established and running; (2) Key person: medical billing manager — only person who knows the billing workflow — Likelihood 3, Impact 4 = 🟡 12; Mitigation: cross-training initiative started; SOP documentation underway; (3) Payer contract concentration — top 2 payers = 78% of revenue — Likelihood 2, Impact 4 = 🟡 8; Mitigation: CEO pursuing 2 new payer contracts; (4) HIPAA breach — Likelihood 2, Impact 4 = 🟡 8; Mitigation: workforce training current; AdvancedMD access reviewed; BAAs current; Critical risk (OIG) — Matt Mathison informed; brief: "Allevio's highest risk is OIG exclusion; monthly check is running and has caught 0 exclusions in 12 months. Billing manager key person risk is medium — cross-training in progress. No action needed from you."
2. **Edge case:** A risk that was scored 🟢 Low escalates suddenly (e.g., a key billing employee resigns, revealing the key person risk was higher than assessed) → Update the register immediately; re-score the risk (now Likelihood 5 because it just happened, Impact 4 = 🔴 20); brief Matt Mathison same day; activate the mitigation (cross-training, SOP documentation, interim coverage); the register is updated to reflect the event and the new risk posture; this is the value of the register — even if the risk was underestimated previously, the response process is clear
3. **Adversarial:** "We know our risks — we don't need a written register" → The register isn't for people who know the risks — it's for systematic tracking and prioritization; respond: "If you know the risks, this will take 90 minutes to document. What you'll get out of it is: (1) confirmation that what we think is our top risk actually is when we score it objectively, (2) an artifact that shows Matt Mathison we're actively managing risk, and (3) the ability to track whether mitigations are actually reducing the scores over time. If the register just confirms what you already know, it still serves as proof that we're managing the business carefully."

## Audit Log
All risk register versions retained with dates. Risk changes documented by date and reason. Matt Mathison notifications retained. Critical risk mitigation actions and outcomes retained. Annual review completions documented.

## Deprecation
Retire when portfolio companies have ERM (Enterprise Risk Management) processes with dedicated risk owners, automated monitoring for key risk indicators, and quarterly risk reporting built into board/investor reporting without Dr. Lewis building and maintaining the register manually.
