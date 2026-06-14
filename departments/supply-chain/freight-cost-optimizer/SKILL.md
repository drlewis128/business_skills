---
name: freight-cost-optimizer
description: "Optimize freight and shipping costs across the supply chain. Use when the user says 'reduce freight costs', 'shipping cost optimization', 'freight savings', 'carrier rates', 'negotiate freight', 'freight audit', 'shipping invoice audit', 'freight benchmark', 'lower shipping costs', or 'optimize freight spend'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|all>] [--mode <audit|benchmark|optimize|negotiate>]"
---

# Freight Cost Optimizer

Identify and capture freight cost savings through carrier rate negotiation, mode optimization, carrier consolidation, and invoice auditing. Freight costs are often 3-8% of supply chain cost and are consistently overpaid due to poor carrier contracts, mode misuse (air vs. ground), dimensional weight billing errors, and uninspected carrier invoices. For MBL's portfolio, freight cost optimization is most valuable at HIVE (heavy equipment shipments to remote sites) and Allevio (clinical supply distribution).

## When to Use
- Freight costs are growing faster than volume (cost per shipment increasing)
- No carrier contracts — paying list rates
- Air freight used for non-urgent shipments
- Freight invoices are paid without review
- Matt Mathison asks about logistics cost reduction
- New distribution network plan implemented — renegotiate carrier rates to match

## Freight Cost Optimization Levers

```
Lever 1: Carrier rate negotiation (highest impact):
  Mechanism: Negotiate volume-based rates with primary carriers
  Savings: 15-25% off list rates with committed volume
  Requirements: 12 months of carrier data; volume commitment

Lever 2: Mode optimization:
  Mechanism: Shift air freight to ground where lead time allows; LTL to FTL at threshold
  Savings: Air → Ground: 80% savings per shipment
  Requirements: Lead time analysis; safety stock buffer to absorb ground transit time

Lever 3: Freight invoice audit:
  Mechanism: Audit every freight invoice for billing errors (wrong zone, wrong weight, incorrect surcharges)
  Average carrier billing error rate: 1-2% of freight spend
  Savings: 1-2% of freight spend — pure error recovery

Lever 4: Carrier consolidation:
  Mechanism: Use fewer carriers; build volume leverage with each
  Savings: 8-15% on consolidated volume vs. split across many carriers
  Requirements: Evaluate whether multiple carriers serve a legitimate need

Lever 5: Order consolidation:
  Mechanism: Batch orders from same supplier into weekly/bi-weekly shipments vs. per-order
  Savings: Dramatically reduces number of shipments (cost per unit drops)
  Requirements: Supplier cooperation; slightly longer order cycle

Lever 6: Dimensional weight management:
  Mechanism: Optimize packaging to reduce dimensional weight billing
  Carriers charge based on actual weight OR dimensional weight, whichever is greater
  Dimensional weight = (L × W × H in inches) / 139 (UPS/FedEx divisor)
  Savings: 5-10% for poorly packaged shipments
```

## Output Format

```markdown
# Freight Cost Optimization Plan — <Entity>
**Date:** <date> | **Analyst:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE / Portfolio>
**Total freight spend analyzed:** $X/year | **Total shipments:** <N>/year

---

## Freight Spend Baseline

| Mode | Annual spend | Shipments | Avg cost/shipment | % of freight | Optimization potential |
|------|------------|---------|-----------------|-------------|----------------------|
| Air express (overnight/2-day) | $X | <N> | $X | X% | 🔴 High — likely mode misuse |
| Parcel ground | $X | <N> | $X | X% | 🟡 Medium — rate negotiation |
| LTL | $X | <N> | $X | X% | 🟡 Medium — rate negotiation |
| FTL | $X | <N> | $X | X% | 🟢 Low — already optimized |
| **Total** | **$X** | **<N>** | **$X** | **100%** | |

**Air freight as % of parcel spend:** X% (target: <5% — air freight should be emergency only)
**Top 3 carriers by spend:** [Carrier A: $X], [Carrier B: $X], [Carrier C: $X]

---

## Mode Analysis — Air Freight Misuse

Air freight is legitimate for:
- Patient-critical stockout emergencies (Allevio)
- HIVE well production-critical emergency parts
- Time-definite commercial commitments with penalties for delay

Air freight that should be ground:
- Routine orders that could be placed earlier (planning failure)
- Items with 3+ days of safety stock (can absorb ground transit)

**Air freight audit results:**
| Shipment | Date | Item | Reason stated | Assessment | Ground alternative | Cost premium |
|---------|------|------|-------------|-----------|-----------------|-------------|
| [#] | <date> | [Item] | "Urgent" | ✅ Legitimate — stockout | N/A | N/A |
| [#] | <date> | [Item] | "Requested by team" | ❌ Could have been ground | 3-day ground | -$X |
| [#] | <date> | [Item] | "Standard order" | ❌ Planning failure | 2-day ground | -$X |

**Potential air-to-ground savings:** $X/year (X% of air spend)
**Root cause of unnecessary air:** Late order placement; insufficient safety stock

---

## Carrier Rate Negotiation

**Current rate status:** List rates (no negotiated rates) / Negotiated — last negotiation: <date>

**Negotiation targets (FedEx / UPS / primary carrier):**

| Service | Current rate | Market benchmark | Target rate | Lever |
|---------|------------|----------------|------------|-------|
| Ground residential | $X base + X/lb | $X | -12% | Volume commitment ($X/year) |
| 2-Day air | $X base + X/lb | $X | -15% | Volume commitment |
| Dimensional weight divisor | 139 | 139 (negotiable for high-volume shippers) | 166 (reduces dim charges) | Volume |
| Fuel surcharge | Indexed to weekly fuel table | Indexed | Cap at 12% | Direct negotiation |
| Residential surcharge | $X/package | $X | -$0.50/package | Volume |

**Estimated annual savings from rate negotiation:** $X (X% of parcel spend)
**Requirements:** 12-month shipment data; volume commitment (verify with demand forecast)

---

## Invoice Audit Results

Freight carriers consistently bill errors — each invoice should be audited.

**Audit sample:** <N> invoices reviewed (representing $X in freight)

| Error type | Occurrences | Amount overbilled | Recovery status |
|-----------|-----------|-----------------|----------------|
| Wrong delivery zone | <N> | $X | Credit requested |
| Incorrect dimensional weight | <N> | $X | Credit requested |
| Duplicate billing | <N> | $X | Credit requested |
| Incorrect service level billed (2-day billed as overnight) | <N> | $X | Credit requested |
| **Total overbilling** | **<N>** | **$X** | **Recovery: $X** |

**Overbilling rate:** X% of freight spend (industry average: 1-2%)
**Annual invoice audit savings (if all invoices audited):** $X

---

## Savings Summary

| Lever | Annual savings | Timeline | Confidence |
|-------|-------------|---------|-----------|
| Rate negotiation (primary carrier) | $X | 90 days | High |
| Air-to-ground mode shift | $X | 30 days (process change) | High |
| Invoice audit (ongoing) | $X | 30 days | High |
| Order consolidation | $X | 60 days | Medium |
| **Total** | **$X** | | |

**As % of current freight spend:** X% reduction
```

## Output Contract
- Air freight always audited first — the highest-value freight optimization is almost always eliminating unnecessary air freight
- Invoice audit always included — freight carrier billing errors are endemic and often overlooked; 1-2% of freight spend is recoverable
- Rate negotiation always based on 12-month data — negotiating without usage data produces poor outcomes; carriers know their own data
- Mode optimization always tied to safety stock — you can only shift to slower modes if safety stock absorbs the additional transit time
- HITL required: Dr. Lewis manages freight optimization; carrier contracts >$25K/year require Matt Mathison approval; credit memos requested by Dr. Lewis; air freight approval policy enforced by Dr. Lewis; HIVE emergency air freight authorized by HIVE GP or Dr. Lewis

## System Dependencies
- **Reads from:** Freight invoices (Bill.com), carrier tracking data, safety stock levels (inventory system), demand forecast
- **Writes to:** Freight savings tracker (SharePoint/Operations/Procurement); carrier rate agreements; overbilling dispute letters
- **HITL Required:** Dr. Lewis manages; Matt Mathison approves carrier contracts >$25K/year; credit memo disputes handled by Dr. Lewis; HIVE emergency freight authorized by HIVE GP

## Test Cases
1. **Golden path:** MBL portfolio freight cost optimization → $X total freight; 18% air freight by spend (should be <5%); invoice audit on 50 invoices: $X overbilling found; rate negotiation with FedEx: $X/year savings; air-to-ground shift plan: safety stock increased by 2 days to absorb ground transit; air freight policy: Dr. Lewis approval required for all air; savings total: $X (-22% of freight spend); implemented in 90 days
2. **Edge case:** Portfolio company is remote (HIVE Uinta Basin) and air freight is often the only practical option for emergency parts → emergency air is legitimate and unavoidable; focus on reducing the need for emergency air (better demand forecasting, better safety stock, pre-positioned critical spares at site); even if 40% of HIVE freight must be air, reducing the 60% ground to better rates is still valuable; don't apply a blanket rule to a unique geographic situation
3. **Adversarial:** A carrier threatens to raise rates if MBL audits their invoices and claims credits → rate threats for exercising audit rights are a negotiating tactic; carriers expect credit claims — they have dedicated claims resolution departments; stand firm; document the threat; if the carrier follows through with rate increases disproportionate to claimed credits, use BATNA (alternative carrier quotes) in the next negotiation; legitimate carriers don't penalize customers for finding billing errors

## Audit Log
Freight spend analysis retained annually. Invoice audit results retained. Credit requests and recovery documented. Rate negotiation history retained. Air freight exceptions documented.

## Deprecation
Retire when MBL uses a freight audit platform (Cass Information Systems, AuditShipment, or similar) with automated carrier invoice auditing and benchmarking, combined with a TMS for rate management.
