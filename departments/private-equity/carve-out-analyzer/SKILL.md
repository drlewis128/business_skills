---
name: carve-out-analyzer
description: "Analyze a corporate carve-out acquisition opportunity. Use when the user says 'carve-out', 'carve out acquisition', 'corporate divestiture', 'buying a division', 'subsidiary acquisition', 'spin-off acquisition', 'corporate division sale', 'buying a business unit', 'non-core divestiture', or 'corporate carve-out diligence'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--target <company/division>] [--seller <corporate parent>] [--ask-price <dollar>]"
---

# Carve-Out Analyzer

Analyze a corporate carve-out acquisition — when a large corporation sells a division, subsidiary, or business unit to a buyer (often a PE firm). Carve-outs are more complex than typical PE deals because the target is embedded in a larger corporate infrastructure. Financial statements are commingled; shared services must be stood up independently; and management teams may be unfamiliar with operating as a standalone business. These complexities create risk — and often, significant value creation opportunity.

## When to Use
- A corporate parent is selling a division that overlaps with Allevio/HIVE/Column6 strategy
- An inbound deal is a corporate carve-out — need to understand the additional complexity
- Matt Mathison asks "what's different about buying a division vs. a standalone company?"
- Due diligence on a carve-out is underway — need the right checklist

## Carve-Out vs. Standalone Acquisition

```
Key differences in a carve-out:

1. Financial statements are not standalone:
   Corporate parent provides audited consolidated financials — not the carve-out division's standalone
   Must build "carve-out" or "as if standalone" financials
   Allocated costs (IT, HR, legal, finance, insurance): Were these costs fair? What was actually used?
   Intercompany revenues: Were transactions with parent at market rates? Will they continue?

2. Shared services must be replaced:
   Corporate parent provides services the division didn't pay for (or underpaid for)
   After close: Division must run these services independently OR contract with third parties
   "Stranded costs": Costs that MBL will incur that the parent currently absorbs
   "Dis-synergies": Costs that are higher as standalone vs. in the corporate umbrella

3. Management team may be dependent on parent:
   Division management may have never run a standalone business
   Key functions (CFO, HR, IT, Legal) may have been provided by parent
   Management capability for standalone operations must be assessed carefully

4. Transition Services Agreement (TSA):
   Parent often continues providing services for 6-24 months after close
   TSA fees paid to parent for transition period
   TSA is a critical negotiating point — duration, scope, price

5. Value creation opportunity:
   Parent often didn't optimize the division (wasn't core focus)
   PE can apply operational intensity that corporate bureaucracy prevented
   Carve-out often has better value creation upside than standalone sale

6. Price: Carve-outs often trade at a discount to standalone comps:
   Buyer complexity premium demanded
   Parent motivation to divest (may be willing to reduce price)
   Risk of standalone financial statement restatement
```

## Output Format

```markdown
# Carve-Out Analysis — <Division Name> (from <Parent Corp>)
**Date:** <date> | **Owner:** Dr. John Lewis | **Reviewed by:** Matt Mathison
**Target:** <Division name> — a division of <Parent Corp>
**Seller motivation:** [Divesting non-core / Capital needs / Regulatory requirement]
**Asking price:** $X (X× EBITDA)
**Acquisition type:** Full carve-out / Partial (% ownership) / Joint venture

---

## Deal Complexity Assessment

| Factor | Assessment | Risk | Notes |
|--------|-----------|------|-------|
| Financial statement clarity | Standalone / Commingled | High / Medium / Low | [Are carve-out financials available?] |
| Shared services dependency | High / Medium / Low | High / Medium / Low | [What services does parent provide?] |
| Management standalone capability | Capable / Gaps / Unknown | High / Medium / Low | |
| IT systems independence | Independent / Shared | High / Medium / Low | |
| Customer contracts (parent or division?) | Division owns / Mixed | High / Medium / Low | |
| Intercompany revenues | None / Material (X%) | High / Medium / Low | [Will these revenues continue?] |
| Regulatory approvals (if any) | None / Required | | |

**Overall carve-out complexity:** Low / Medium / High / Very High

---

## Standalone Financial Reconstruction

### Carve-Out Financials vs. Allocated Financials

*Corporate carve-out financials include allocated costs that won't survive the sale. Build the "as if standalone" P&L.*

| Line item | As reported (allocated) | Adjustments | Standalone (as if) | Notes |
|----------|------------------------|------------|-------------------|-------|
| Revenue | $X | - Intercompany revenue ($X) | $X | [If parent was a customer] |
| COGS | $X | None | $X | |
| Gross profit | $X | | $X | |
| SG&A (allocated) | $X | + IT stranded cost (+$X) | $X | [IT was shared; must stand up own] |
| SG&A (allocated) | | + HR stranded cost (+$X) | | |
| SG&A (allocated) | | + Finance function (+$X) | | |
| SG&A (allocated) | | + Insurance premium adjustment | | |
| Management fees (parent) | $X | Remove ($X) | $0 | [Parent charged mgmt fee — eliminated] |
| EBITDA (reported) | $X | | | |
| **EBITDA (standalone)** | | | **$X** | |

**Standalone EBITDA:** $X | **Reported EBITDA:** $X | **Difference:** +/-$X
**Carve-out discount:** Standalone EBITDA is [higher / lower] than reported — [reason]

---

## Shared Services Gap Analysis

| Service | Currently provided by parent | Standalone cost | TSA duration | Transition plan |
|---------|------------------------------|----------------|-------------|----------------|
| IT infrastructure | Yes — parent data centers | $X/year | 18 months | Migrate to cloud (AWS/Azure) |
| ERP / accounting | Yes — SAP at parent | $X/year | 12 months | QuickBooks or NetSuite at standalone |
| HR / payroll | Yes — parent HR | $X/year | 6 months | ADP or similar |
| Legal / compliance | Yes — parent legal | $X/year | 12 months | Outside counsel + compliance function |
| Insurance | Yes — umbrella policy | $X/year | At close | Standalone insurance procurement |
| **Total stranded costs (Year 1+)** | | **$X/year** | | |

**TSA cost (if parent charges for transition services):** $X/month × X months = $X total

---

## Management Capability Assessment

| Function | Current status | Standalone ready? | Action |
|---------|---------------|-----------------|--------|
| CEO | Division GM — reports to Corp VP | ⚠️ Needs support | Keep + hire functional leaders |
| CFO | No dedicated CFO — finance handled by parent | ❌ Must hire | First hire post-close |
| HR | No dedicated HR — parent handles all | ❌ Must hire or outsource | HR vendor or hire |
| IT | No dedicated IT leader | ❌ Must hire or MSP | Managed IT services provider |
| Legal | No dedicated legal | ❌ Outside counsel | Retain outside counsel |

**Management hires required at close:** [List] — budget $X/year

---

## Transition Services Agreement (TSA) Terms (Key Issues)

| TSA element | Seller wants | MBL wants | Target outcome |
|------------|-------------|----------|---------------|
| Duration | 6 months (exit quickly) | 18-24 months (need time to stand up) | 18 months |
| Pricing | Market rate + margin | At cost | At cost (no profit to seller) |
| Service levels | Best efforts | SLA-backed | Minimum SLA with credits |
| Exit right | After minimum period | Anytime with 30-day notice | MBL anytime exit with 30-day notice |
| Scope | Limited services | All critical services | Comprehensive at close |

**TSA total cost estimate:** $X (at $X/month × X months)

---

## Valuation Adjustment

| Item | Impact on price |
|------|----------------|
| Reported EBITDA (seller presents) | $X at X× = $X EV |
| Standalone EBITDA (after adjustments) | $X (adjusted) |
| Stranded costs (Year 1 incremental) | ($X) — reduces standalone EBITDA |
| Management hires required | ($X/year) — must be funded |
| TSA costs during transition | ($X one-time) |
| **MBL's supported purchase price** | **$X (X× standalone EBITDA)** |
| **Seller's asking price** | **$X (X× reported EBITDA)** |
| **Negotiation gap** | **$X — need to adjust basis to standalone** |

---

## Value Creation Opportunity (Carve-Out Specific)

| Opportunity | Why it exists | EBITDA impact |
|------------|--------------|--------------|
| Remove corporate overhead | Parent charged $X mgmt fee — eliminated | +$X |
| Faster decision-making | No corporate approval cycle → speed to market | Intangible |
| Sales focus | Parent's sales team split attention → dedicated sales | +$X (estimated) |
| AI/automation | Corporate bureaucracy prevented innovation — MBL deploys | +$X |
| Supply chain renegotiation | Parent consolidated contracts not optimized for division | +$X |

---

## Recommendation

**Verdict:** ✅ Pursue / ⚠️ Conditional / ❌ Pass

**Carve-out specific verdict:** Is the complexity manageable given the price discount and value creation opportunity?

**Key conditions:**
- [ ] Standalone financials or carve-out financials provided before LOI (not just allocated)
- [ ] TSA negotiated to cover all critical services for minimum 18 months at cost
- [ ] CFO hire funded in acquisition model
- [ ] Matt Mathison approves the added complexity vs. simpler standalone deals

**Matt Mathison action:** [Approve pursuing carve-out with these conditions / Pass on complexity / Discuss]
```

## Output Contract
- Standalone financial reconstruction always required — buying on allocated financials is buying something that doesn't exist; the standalone P&L is the real asset
- Shared services gap always quantified — every shared service that the parent provides that must be stood up independently has a cost; these "stranded costs" must be in the model, not in footnotes
- TSA terms always addressed — the TSA is one of the most important negotiating points in a carve-out; a bad TSA with too-short duration or too-high pricing creates operational crisis at close
- Valuation adjustment always shown — the deal must be priced on standalone EBITDA, not reported EBITDA; present the gap explicitly
- HITL required: Dr. Lewis builds the analysis; Matt Mathison reviews before LOI; standalone financial audit requires external QoE (quality of earnings) accountants; TSA terms require fund counsel; LOI requires Matt Mathison; carve-out complexity is higher than standalone — all decisions require Matt Mathison deliberate approval

## System Dependencies
- **Reads from:** Carve-out financial statements (allocated), seller-provided information package, shared services lists, management team bios
- **Writes to:** Carve-out analysis (SharePoint/Deals/<Company>/Carve-Out Analysis); deal pipeline tracker; investment thesis
- **HITL Required:** Dr. Lewis analyzes; Matt Mathison approves; QoE accountants for standalone financials; fund counsel for TSA; all LOI/investment decisions → Matt Mathison

## Test Cases
1. **Golden path:** Healthcare services division carve-out from a hospital system → Reported EBITDA: $800K; standalone adjustment: -$150K (stranded IT + HR); standalone EBITDA: $650K; price: $4.5M (ask) = 5.6× standalone; TSA: 18 months negotiated at cost; CFO hire: $180K/year budgeted; management capability: Division VP is capable CEO; value creation: $200K from removing corporate overhead; verdict: pursue; Matt Mathison: approve LOI at $3.9M (6× standalone post-synergy EBITDA)
2. **Edge case:** Carve-out has significant intercompany revenues (parent is a major customer, buying $500K/year in services) — those revenues may not continue → recast the standalone P&L without the intercompany revenue; the real standalone revenue is $500K lower; restate EBITDA accordingly; negotiate a commercial agreement where the parent commits to a minimum purchase for 3 years post-close (or reduce the price to reflect the revenue loss); this is a common carve-out trap — buyer assumes all revenue is real, doesn't notice the intercompany dependency until post-close
3. **Adversarial:** Seller provides only allocated financials ("it's too complex to prepare standalone financials before LOI") → this is a red flag; do not submit an LOI without an understanding of standalone economics; at minimum, require: list of all shared services and their allocated costs; list of all intercompany revenues and their nature; a representation that no material stranded costs exist beyond what's disclosed; if seller won't provide any standalone information, the carve-out risk is unquantifiable and MBL should pass

## Audit Log
All carve-out analyses retained. Standalone financial reconstructions retained with assumptions. TSA negotiation history retained. Matt Mathison approvals retained.

## Deprecation
Retire when MBL has dedicated M&A team with standard carve-out diligence playbook and QoE accounting relationships for rapid standalone financial reconstruction.
