---
name: fx-exposure-summary
description: "Summarize foreign currency exposure and calculate translation and transaction risk. Use when the user says 'FX exposure', 'currency risk', 'foreign currency', 'FX summary', 'translation risk', 'transaction exposure', 'hedge currency', or 'what is our FX risk'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <YYYY-MM>] [--base-currency <USD>]"
---

# FX Exposure Summary

Identify and quantify foreign currency exposure across MBL portfolio companies, categorize by exposure type, and surface hedging recommendations where material.

## When to Use
- Monthly for entities with significant non-USD revenue or expense
- Before a significant cross-border contract is signed
- When exchange rates move materially (>3-5% in a short period)
- Board/LP reporting that includes international operations
- During M&A diligence on international targets

## Exposure Types

### Transaction Exposure
**Definition:** Future cash flows denominated in foreign currency — invoices receivable/payable in foreign currency.
- AR in foreign currency → USD weakens = more USD received (gain)
- AP in foreign currency → USD weakens = more USD paid (loss)
- **Most actionable** — can hedge with forwards or options

### Translation Exposure
**Definition:** Impact on consolidated financials when foreign subsidiary financials are translated to USD.
- Balance sheet translated at period-end spot rate
- P&L translated at average rate for the period
- OCI (Other Comprehensive Income) captures the translation adjustment
- **Lower priority for PE portfolio companies** — affects reported, not cash, earnings

### Economic Exposure
**Definition:** Long-term competitive impact of exchange rate changes on business model.
- If you compete with foreign companies, their cost structure changes with FX
- **Strategic — flag but don't model in this skill**

## Currency Exposure Matrix

For each material currency:
```
Currency: EUR
Open AR (receivable): $X
Open AP (payable): $X
Net exposure: $X (long/short)
1% rate move impact on P&L: $X
10% adverse move impact: $X
Hedged: Yes/No | Hedge instrument: <forward/option/natural>
```

## Output Format

```markdown
# FX Exposure Summary — <Entity> — <period>
**Base Currency:** USD | **As of:** <date>

## Material Currency Exposures

| Currency | Spot Rate | Open AR | Open AP | Net Exposure | 10% Move Impact |
|----------|-----------|---------|---------|--------------|-----------------|
| EUR/USD | 1.08 | $X | $X | Long $X | +/-$X |
| GBP/USD | 1.27 | $X | $X | Short $X | +/-$X |

## Materiality
Exposures > $50,000 net per currency are considered material for MBL purposes.
**Material exposures this period:** <N> currencies

## Hedging Status
| Currency | Exposure | Hedged | Instrument | Expiry | Unhedged Balance |
|----------|----------|--------|------------|--------|-----------------|
| EUR | $X | 70% | Forward | Aug 31 | $X |

## Translation Impact
Portfolio entities with non-USD reporting currencies:
- <Entity>: Reported in <currency> — translation adjustment this period: $X

## Recommended Actions
1. EUR exposure $X unhedged — consider forward contract if Q3 EUR revenue confirmed
2. No hedging program in place — exposure is within acceptable range at current volumes

## P&L Sensitivity
| Scenario | EUR/USD moves | Net P&L impact |
|----------|--------------|----------------|
| Base | 1.08 | $0 |
| Adverse 10% | 0.97 | -$X |
| Favorable 10% | 1.19 | +$X |
```

## Output Contract
- Materiality threshold: $50K net exposure per currency (flag for attention)
- Does not recommend specific hedge instruments without CFO/treasury engagement
- HITL required before any hedging transaction is executed

## System Dependencies
- **Reads from:** AR aging (by currency), AP aging (by currency), open contracts, current FX rates
- **Writes to:** Nothing
- **HITL Required:** Before executing any hedging transaction

## Test Cases
1. **Golden path:** USD-only business → outputs "no material FX exposure" in one line
2. **Edge case:** Company with EUR AR and EUR AP of similar size → identifies natural hedge, minimal net exposure
3. **Adversarial:** Large unhedged GBP payable with GBP strengthening → surfaces adverse P&L impact, escalates for hedging decision

## Audit Log
Monthly FX summaries retained with rate data used and hedge status. Material FX decisions documented.

## Deprecation
Retire when treasury management system (Kyriba, GTreasury) handles FX exposure tracking automatically.
