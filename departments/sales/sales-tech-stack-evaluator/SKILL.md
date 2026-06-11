---
name: sales-tech-stack-evaluator
description: "Evaluate or audit the sales technology stack for an entity. Use when the user says 'sales tech stack', 'CRM review', 'evaluate our sales tools', 'what sales tools should we use', 'sales software', 'sales technology audit', or 'do we need a new CRM'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--current-tools <list>] [--objective <audit|recommend|consolidate>]"
---

# Sales Tech Stack Evaluator

Evaluate or audit the sales technology stack for an entity. Tool bloat is a real problem — reps spending time in the wrong tools, paying for redundant platforms, or missing critical capabilities. This skill structures the audit and makes a clear recommendation.

## When to Use
- Annual sales operations review
- Sales team is complaining about tool friction or missing data
- Considering adding a new tool (evaluate before buying)
- Onboarding to a portfolio company that may have outdated or redundant tools
- Cost reduction initiative (which tools can we consolidate or cut?)

## Sales Tech Stack Categories

| Category | Purpose | MBL Default / Examples |
|---------|---------|----------------------|
| **CRM** | Deal tracking, account management, pipeline | GoHighLevel (MBL standard) |
| **Sales engagement** | Email sequences, call logging, cadence | Outreach, Salesloft, HubSpot Sequences |
| **Meeting intelligence** | Call recording, transcription, analysis | Gong, Chorus, Fireflies, Krista.ai |
| **Prospecting / data** | Contact discovery, intent data | ZoomInfo, Apollo.io, LinkedIn Sales Nav |
| **Proposal / CPQ** | Proposal creation, pricing, e-signature | PandaDoc, DocuSign, Conga |
| **Revenue intelligence** | Forecasting, deal scoring, pipeline analytics | Clari, People.ai |
| **Enablement** | Sales content, playbooks, training | Highspot, Seismic |
| **Contract / CLM** | Contract management, redlines, signatures | Ironclad, DocuSign CLM |

## Evaluation Framework

Score each tool on:

| Criterion | Weight | Questions |
|-----------|--------|---------|
| Rep adoption | 25% | Are reps actually using it? Is it in their daily workflow? |
| Data quality | 20% | Does the tool produce reliable data you act on? |
| Integration | 20% | Does it integrate with CRM and other core tools? |
| ROI clarity | 20% | Can you measure what this tool is producing? |
| Cost efficiency | 15% | Is the cost justified by the value? |

**Score > 75%: Keep**
**Score 50–74%: Optimize or replace**
**Score < 50%: Eliminate or pilot alternative**

## Red Flags (Recommend Eliminating)

- Tool is paid for but < 40% of reps use it
- Tool duplicates a feature already in the CRM
- Tool requires manual data entry into CRM (no integration)
- No one can articulate what this tool produces for the business
- Contract auto-renewed without review for 2+ years

## Output Format

```markdown
# Sales Tech Stack Audit — <Entity>
**Date:** <date> | **Objective:** Audit / Recommend / Consolidate

---

## Current Stack Inventory

| Tool | Category | Users | Monthly Cost | Contract Term | Last Reviewed |
|------|---------|-------|-------------|--------------|--------------|
| GoHighLevel | CRM | <N> | $<N> | <term> | <date> |
| <Tool> | <Category> | <N> | $<N> | | |

**Total monthly spend:** $<N> | **Annual:** $<N>

---

## Tool Evaluation Scores

| Tool | Adoption | Data Quality | Integration | ROI Clarity | Cost | Total | Verdict |
|------|---------|------------|------------|------------|------|-------|---------|
| GoHighLevel CRM | X/25 | X/20 | X/20 | X/20 | X/15 | X/100 | Keep |
| <Tool> | | | | | | X/100 | Optimize |
| <Tool> | | | | | | X/100 | Eliminate |

---

## Gaps in Current Stack

| Capability | Current Status | Recommended Tool | Priority |
|-----------|--------------|-----------------|---------|
| Call recording + analysis | None | Gong / Fireflies | High |
| Proposal automation | Manual (Word docs) | PandaDoc | Medium |

---

## Recommendations

### Eliminate (Save $<N>/year)
1. **[Tool]** — Score X/100 | Reason: [Why] | Savings: $<N>/year

### Optimize (No Cost Change)
1. **[Tool]** — Specific action: [Admin config, training, or integration fix]

### Add (Investment Required)
1. **[Tool]** — Gap it fills: [Capability] | Est. cost: $<N>/year | Priority: High

---

## Net Annual Impact

| Action | Cost Change |
|--------|------------|
| Eliminate [Tool] | -$<N> |
| Eliminate [Tool] | -$<N> |
| Add [Tool] | +$<N> |
| **Net annual change** | **-$<N> (savings)** |

---

## Implementation Order

1. [Month 1] — Eliminate lowest-value tools
2. [Month 2] — Fill highest-priority gap
3. [Month 3+] — Optimize remaining tools
```

## Output Contract
- Full inventory always documented before recommendations — no recommendations without baseline
- Every eliminate recommendation includes savings amount and timeline
- Every add recommendation includes gap it fills and estimated cost
- Net annual cost impact always calculated
- HITL required: Dr. Lewis and Finance approve any tool additions > $10K/year; IT reviews security before adding new SaaS tools

## System Dependencies
- **Reads from:** Current tool list, user adoption data, contract terms, spend data (provided)
- **Writes to:** Nothing (audit for HITL review)
- **HITL Required:** Dr. Lewis approves all tool additions or eliminations; Finance approves budget impact; IT reviews security posture before any new tool is added

## Test Cases
1. **Golden path:** 6-tool sales stack audit for MBL entity → 2 eliminate (low adoption, duplicate features), 1 optimize (CRM configuration gap), 1 add (call recording gap), net $8,400/year savings
2. **Edge case:** Entity has only 1 tool (basic CRM) → identifies gaps without overcorrecting, recommends 1-2 highest-priority additions matched to current team size, warns against over-tooling a small team
3. **Adversarial:** A vendor is pitching a new sales intelligence tool and asking for an evaluation → evaluates the tool against the framework objectively, scores against current stack, recommends only if it fills a documented gap at better economics than alternatives

## Audit Log
Tech stack audits retained by entity and date. Tool additions and eliminations tracked with rationale.

## Deprecation
Retire when SaaS management platform (Zylo, Torii) provides automated software spend tracking with adoption metrics and contract renewal alerts.
