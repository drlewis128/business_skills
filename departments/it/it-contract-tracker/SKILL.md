---
name: it-contract-tracker
description: "Track and manage IT contracts and renewals. Use when the user says 'IT contracts', 'IT contract renewals', 'track IT agreements', 'technology contracts', 'IT vendor contracts', 'contract expiration', or 'IT agreement tracker'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--action <audit|renewal-alert|review>] [--period <30d|60d|90d|annual>]"
---

# IT Contract Tracker

Track and manage IT vendor contracts, renewals, and obligations. Auto-renewed contracts at last year's pricing with unused features are pure margin erosion. This skill tracks every IT contract, surfaces renewals 90 days out, and prepares the renegotiation strategy before the vendor knows you're thinking about it.

## When to Use
- Annual contract audit (what are we committed to and when?)
- 90-day renewal horizon review (what's coming up?)
- Before any new vendor relationship is signed
- Post-M&A — what contracts did the acquired company have?
- Budget planning — what contracts are renewing and at what cost?

## Contract Fields

| Field | Description |
|-------|-------------|
| Contract ID | Internal reference (CT-<NNN>) |
| Vendor | Vendor name |
| Product/Service | What was contracted |
| Contract type | SaaS, Professional Services, Hardware, MSP, Support |
| Annual value | Contract value per year |
| Contract start | Start date |
| Contract end | End date (or "Month-to-month") |
| Auto-renewal | Yes / No — and when notice must be given |
| Notice period | Days required to cancel before auto-renewal |
| Payment terms | Monthly / Annual / Upfront |
| Contract owner | IT Manager / Dr. Lewis / specific department |
| Obligations | Non-standard terms, minimum commitments, data handling |

## Renewal Risk Assessment

| Risk | Indicator | Action |
|------|---------|--------|
| **High — auto-renewing with poor performance** | SLA miss history + auto-renewal pending | Renegotiate or cancel before notice period |
| **High — auto-renewing without usage review** | Contract cost > $5K, no utilization check done | Usage review before renewal |
| **Medium — price increase expected** | Known vendor price increase pattern | Get pricing locked before renewal |
| **Low — happy, well-priced, auto-renewing** | High satisfaction, competitive pricing | Let auto-renew; note for record |

## Output Format

```markdown
# IT Contract Register — <Entity>
**Date:** <date> | **Total contracts:** <N> | **Total annual value:** $<N>

---

## Contract Register

| ID | Vendor | Product | Annual Value | Renews | Auto-Renew? | Notice Required | Owner | Risk |
|----|--------|---------|------------|--------|------------|----------------|-------|------|
| CT-001 | Microsoft | M365 Business Premium | $<N> | <date> | Yes | 30 days | IT Manager | Low |
| CT-002 | Krista.ai | AI Orchestration | $<N> | <date> | No | — | Dr. Lewis | Low |
| CT-003 | GoHighLevel | CRM | $<N> | Monthly | Yes | None | Sales | Low |
| CT-004 | [MSP] | Managed IT Services | $<N> | <date> | Yes | 60 days | IT Manager | High — SLA issues |
| CT-005 | AWS | Cloud infrastructure | $<N>/mo | M-to-M | N/A | None | IT Eng | Low |

---

## Renewal Alert — Next 120 Days

| Contract | Vendor | Annual Value | Renewal Date | Days Out | Auto-Renew? | Notice Deadline | Action |
|---------|--------|------------|------------|---------|------------|----------------|--------|
| CT-004 | [MSP] | $<N> | <date> | 28 days | Yes | <date - 10 days> | ⚠️ URGENT — cancel or renegotiate by <date> |
| CT-001 | Microsoft | $<N> | <date> | 45 days | Yes | <date - 20 days> | Review seat count; renegotiate if usage changed |
| CT-006 | [Vendor] | $<N> | <date> | 85 days | No | — | Begin renewal conversation |

---

## Renegotiation Targets

| Vendor | Reason | Strategy | Target Savings | Owner |
|--------|--------|---------|-------------|-------|
| [MSP] | SLA compliance 78% — below contractual 95% | Enforce SLA credit; use as leverage to renegotiate terms or terminate | $<N>/year or better SLA | IT Manager |
| Microsoft | 3 unused seats since last renewal | Rightsize from 25 to 22 seats | $<N>/year | IT Manager |

---

## Obligations and Non-Standard Terms

| Contract | Obligation | Impact | Monitor |
|---------|-----------|--------|---------|
| CT-002 (Krista.ai) | 30-day notice to adjust scope; no auto-renewal | Requires Dr. Lewis review before each renewal | Annual |
| CT-004 (MSP) | 60-day notice to cancel; SLA credits per incident | Must track SLA misses to claim credits | Monthly |
```

## Output Contract
- Contracts with auto-renewal always surfaced at 90-day mark — auto-renewal without review is prohibited
- Notice period deadlines always calculated — "renewal date" without "cancel-by date" is incomplete
- Every contract with performance issues paired with a renegotiation strategy
- HITL required: IT Manager owns contract register; Dr. Lewis reviews any contract renewal > $25K; Finance approves multi-year commitments; Legal reviews non-standard obligation terms

## System Dependencies
- **Reads from:** IT contract files, finance records, vendor performance data (provided)
- **Writes to:** Nothing (contract register for HITL review and procurement action)
- **HITL Required:** IT Manager reviews 90-day renewals; Dr. Lewis approves renewals > $25K; Finance approves multi-year contracts; Legal reviews any contract amendment or new contract > $50K

## Test Cases
1. **Golden path:** Annual audit, 12 contracts → 3 auto-renewing in 90 days, 1 MSP with SLA issues flagged as renegotiation target, 3 contracts with unused seats ($4,200/year in waste identified), all notice deadlines calculated
2. **Edge case:** Contract with 90-day notice period and renewal in 95 days → immediate escalation to IT Manager and Dr. Lewis — notice period expires in 5 days; if they miss this window, they're locked in for another year
3. **Adversarial:** Vendor claims the auto-renewal already occurred because IT missed the notice window → reviews contract language precisely, consults Legal if vendor is incorrect, documents the lesson and adds calendar alerts for all future renewal notice deadlines

## Audit Log
Contract register retained by entity and version. Renewals, renegotiations, and cancellations documented with dates and owners.

## Deprecation
Retire when entity deploys a contract management platform or procure-to-pay system with automated renewal alerts, obligation tracking, and legal review workflows.
