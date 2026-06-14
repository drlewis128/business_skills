---
name: supply-chain-risk-monitor
description: "Identify and monitor supply chain risks affecting operations or portfolio companies. Use when the user says 'supply chain risk', 'vendor supply risk', 'supply disruption', 'supply chain monitor', 'single source risk', 'supplier concentration risk', 'supply chain resilience', or 'what if our supplier fails'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<entity-or-category> [--entity <name>] [--focus <single-source|geopolitical|financial|delivery>]"
---

# Supply Chain Risk Monitor

Identify, assess, and monitor supply chain risks before they become operational disruptions. Supply chain failures are often predictable — this skill surfaces them before they hit.

## When to Use
- Annual supply chain risk review
- When a critical vendor is showing signs of financial stress
- When there's a single-source dependency on a critical input
- Geopolitical events that may affect supplier regions
- Post-acquisition (assess the acquired company's supplier risks)
- When a supply disruption has already occurred (contain and recover)

**Most relevant entities:**
- **HIVE Partners** — oil & gas supply chain (chemicals, equipment, hauling, water disposal)
- **Allevio** — medical supply chain (medications, PPE, medical devices)
- **MBL** — technology vendors (software, hardware, cloud services)

## Risk Categories

| Category | Description | Signal |
|---------|-------------|--------|
| **Single Source** | One supplier for a critical input | No backup if they fail |
| **Financial Health** | Supplier financial instability | Late deliveries, price spikes, payment demands |
| **Geographic Concentration** | Supplier in high-risk region | Geopolitical events, natural disasters |
| **Delivery / Lead Time** | Extended or worsening lead times | Backorders, allocation limits |
| **Regulatory** | Supplier compliance issues | FDA warnings, regulatory actions |
| **Pricing Volatility** | Commodity price swings | Oil, steel, healthcare supply costs |
| **Contract Concentration** | One vendor = large % of spend | Negotiating leverage lost |

## Risk Assessment Matrix

For each critical supplier/input:

```yaml
supplier: <name>
input_provided: <what they supply>
entity: <which portfolio company>
criticality: Critical | Standard | Non-critical
spend_per_year: $<N>
single_source: Yes | No
backup_supplier: <name or "None">
geographic_risk: <region or "Low">
estimated_lead_time: <N weeks>
supplier_financial_health: Strong | Stable | At Risk | Unknown
contract_expiry: <YYYY-MM-DD>
risk_score: 1-10
risk_rating: Low | Medium | High | Critical
mitigation_plan: <current mitigation or "None">
```

## Risk Scoring Guide

| Factor | 1-2 pts | 3-4 pts | 5+ pts |
|--------|---------|---------|--------|
| Single source? | Backup exists | Secondary qualified | No backup |
| Criticality | Non-critical | Standard | Critical/Safety |
| Financial health | Strong | Stable/Unknown | At Risk |
| Geographic risk | Low | Medium | High |
| Lead time | < 2 weeks | 2-8 weeks | > 8 weeks |

Score ≥ 12 = Critical; 8-11 = High; 4-7 = Medium; < 4 = Low

## Output Format

```markdown
# Supply Chain Risk Report — <Entity>
**Date:** <date> | **Scope:** <entity> | **Review Period:** <period>

## Risk Summary

| Supplier | Input | Criticality | Risk Score | Rating | Top Risk Factor |
|---------|-------|-----------|-----------|--------|----------------|
| <Name> | <Input> | Critical | 14 | 🔴 Critical | Single source, no backup |
| <Name> | <Input> | Standard | 8 | 🟡 High | Financial health concern |
| <Name> | <Input> | Critical | 5 | 🟢 Low | Backup supplier qualified |

## Critical Risk Items — Immediate Action Required

### <Supplier Name> — Risk Score 14 (Critical)
**Input:** <what they supply>
**Risk:** No backup supplier; this vendor is sole source for <critical input>
**Financial health:** Unknown (private, no public financials)
**Mitigation needed:**
1. Qualify secondary supplier within 60 days
2. Maintain 90-day safety stock while backup is qualified
3. Request financial disclosure from current supplier

## High Risk Items — Action Within 90 Days

<High risk items>

## Upcoming Contract Renewals (Risk Exposure)
| Supplier | Expiry | Criticality | Action |
|---------|--------|-----------|--------|
| <Name> | <date> | Critical | Begin renewal negotiation now |

## Monitoring Cadence
- Critical suppliers: Monthly review
- High risk: Quarterly review
- Standard: Annual review
```

## Output Contract
- Critical risks always surfaced first with specific mitigation action
- Every critical single-source dependency flagged with backup qualification deadline
- No "monitor closely" recommendations without a specific action and owner
- HITL required before any supplier relationship change is implemented

## System Dependencies
- **Reads from:** Vendor/supplier list, spend data, contract records (provided)
- **Writes to:** Nothing (risk report for HITL action)
- **HITL Required:** Dr. Lewis approves all supply chain risk mitigation plans involving vendor changes or safety stock investments

## Test Cases
1. **Golden path:** HIVE Partners supplier assessment → identifies single-source chemical vendor as critical risk, recommends backup qualification within 60 days
2. **Edge case:** Allevio with regulated medical supplies (can't easily switch suppliers) → flags regulatory constraints, recommends safety stock and contract terms instead of diversification
3. **Adversarial:** Request to downgrade a Critical risk to avoid addressing it → refuses downgrade without factual basis, documents risk acceptance with Tier 1 sign-off

## Audit Log
Risk assessments retained by entity and date. Mitigation actions tracked to completion.

## Deprecation
Retire when supply chain risk management platform provides automated supplier monitoring and early warning signals.
