---
name: add-on-acquisition-analyzer
description: "Analyze a potential add-on acquisition for an existing portfolio company. Use when the user says 'add-on acquisition', 'tuck-in acquisition', 'bolt-on', 'platform add-on', 'add to the platform', 'acquisition for Allevio', 'smaller acquisition', 'consolidation target', 'buy and build', or 'acquisition synergies'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--platform <Allevio|HIVE|Column6>] [--target <company>] [--ask-price <dollar>] [--synergies <dollar>]"
---

# Add-On Acquisition Analyzer

Analyze a potential add-on (tuck-in/bolt-on) acquisition for an existing MBL portfolio company. Add-on acquisitions are different from platform investments: you're buying into an existing business with a clear integration path, known synergies, and the platform company as the buyer (not MBL as the direct acquirer). The analysis must assess standalone value, synergy potential, integration risk, and the combined entity's impact on MBL's return profile.

## When to Use
- Allevio wants to acquire a smaller healthcare services company
- Morgan Sills sends an M&A opportunity that fits the Allevio or HIVE platform
- HIVE considers acquiring an adjacent oil field services company
- Column6 evaluates a programmatic tech or media company acquisition
- Matt Mathison asks "should we acquire [Company] as an add-on to Allevio?"

## Add-On vs. Platform Decision

```
Platform acquisition: MBL Fund buys the company directly; it becomes a portfolio company
Add-on acquisition: Existing portfolio company (Allevio/HIVE/Column6) acquires the target

Key differences:
  Buyer: Portfolio company (Allevio) acquires, not MBL Fund directly
  Financing: Typically uses portfolio company's debt capacity + possibly incremental MBL equity
  Integration: Target is absorbed into the platform; not a standalone investment
  Return: Add-on value flows through the platform company's exit value

Why add-ons create value:
  Multiple arbitrage: Buy smaller target at 4-5× EBITDA; platform exits at 8× → instant value creation
  Synergies: Revenue (cross-sell) + Cost (overhead elimination, shared services)
  Scale: Larger combined EBITDA commands a higher exit multiple
  Market position: Geographic expansion, new capabilities, removing a competitor
```

## Output Format

```markdown
# Add-On Acquisition Analysis — <Target Company> (Add-on to <Platform>)
**Date:** <date> | **Owner:** Dr. John Lewis | **Reviewed by:** Matt Mathison
**Platform company:** <Allevio / HIVE / Column6>
**Target:** <Target company name>
**Acquisition type:** Tuck-in / Geographic expansion / Capability add / Competitive elimination

---

## Target Snapshot

| Item | Detail |
|------|--------|
| Company | <Name> |
| Business | <2-sentence description> |
| Revenue (LTM) | $X |
| EBITDA (LTM) | $X (X% margin) |
| Asking price | $X (X× LTM EBITDA) |
| Location | <City, State> |
| Employees | <N> |
| Overlap with platform | [High / Medium / Low] |

---

## Strategic Fit Assessment

| Factor | Assessment | Notes |
|--------|-----------|-------|
| Geographic fit | ✅ / ⚠️ / ❌ | [Target market extends Allevio's reach into AZ North] |
| Customer overlap | ✅ / ⚠️ / ❌ | [20% shared payer network; 0% customer conflict] |
| Service line fit | ✅ / ⚠️ / ❌ | [Same clinical services; immediately integrable] |
| Technology/systems fit | ✅ / ⚠️ / ❌ | [Same EMR system (AdvancedMD) — integration simple] |
| Culture fit | ✅ / ⚠️ / ❌ | [Founder-run; THRIVE alignment strong] |
| Integration complexity | ✅ Low / ⚠️ Medium / ❌ High | |

---

## Synergy Analysis

### Revenue Synergies

| Initiative | Year 1 | Year 2 | Year 3 | Confidence |
|-----------|--------|--------|--------|-----------|
| Cross-sell Allevio services to target patients | $X | $X | $X | Medium |
| Expand target's geography using Allevio brand | $X | $X | $X | Low |
| Shared payer contracting (volume discount) | $X | $X | $X | High |
| **Revenue synergy total** | **$X** | **$X** | **$X** | |

*Revenue synergies are harder to realize than cost synergies — discount by 50% in base case*

### Cost Synergies

| Initiative | Year 1 | Year 2 | Confidence | Type |
|-----------|--------|--------|-----------|------|
| Eliminate duplicate management (CEO/CFO) | $X | $X | High | Headcount |
| Shared billing operations | $X | $X | High | Overhead |
| Shared back-office (HR, IT, legal) | $X | $X | High | Overhead |
| Vendor consolidation (supplies/insurance) | $X | $X | Medium | Supply chain |
| **Cost synergy total** | **$X** | **$X** | | |

**Total synergies (base):** $X by Year 2
**Net synergies (after integration costs):** $X

---

## Combined Entity Pro Forma (Allevio + Target)

| Metric | Allevio (standalone) | Target (standalone) | Combined (pre-synergy) | Combined + Synergies |
|--------|--------------------|--------------------|----------------------|---------------------|
| Revenue | $X | $X | $X | $X |
| EBITDA | $X (X%) | $X (X%) | $X (X%) | $X (X%) |
| Patients/visits | <N> | <N> | <N> | <N> |

---

## Multiple Arbitrage

| | Target | Allevio + Target (exit) |
|-|--------|------------------------|
| EBITDA | $X | $X combined + synergies |
| Acquisition multiple | X× ($X) | X× exit multiple |
| Enterprise value | $X acquired | $X at exit |
| Multiple arbitrage benefit | | +$X (from buying at X× and exiting at X×) |

*Multiple arbitrage: Buy a small business at 4-5×, integrate into a platform that exits at 8×. Even without synergies, the target's EBITDA is now valued at the higher exit multiple.*

---

## Financial Impact on MBL's Return

| | Before add-on | After add-on (Year 2+) |
|-|--------------|----------------------|
| Platform EBITDA | $X | $X |
| Exit multiple | X× | X× (same or higher with scale) |
| Platform EV | $X | $X |
| Incremental equity invested | $0 | $X (for target acquisition) |
| Incremental EV created | — | $X |
| Add-on MOIC | — | X× (on incremental equity) |

---

## Acquisition Financing

| Item | Amount | Notes |
|------|--------|-------|
| Acquisition price | $X | |
| Allevio's existing debt capacity | $X | Available for add-on |
| Incremental debt for add-on | $X | |
| MBL equity contribution (if needed) | $X | Capital call to LPs |
| **Total financing** | **$X** | |

**Post-acquisition leverage:** $X total debt / $X combined EBITDA = X× leverage
**Interest coverage post-acquisition:** X× (comfortable / tight / concerning)

---

## Integration Plan (High Level)

| Phase | Timeline | Key actions | Owner |
|-------|---------|------------|-------|
| Close | Day 1-30 | Legal integration; systems access; staff communication | Dr. Lewis |
| Quick wins | Day 30-90 | Back-office consolidation; billing integration | Allevio mgmt |
| Full integration | Month 3-12 | Full system migration; team restructure | Allevio mgmt |
| Synergy realization | Month 6-24 | Revenue cross-sell; cost savings | Allevio CEO |

**Integration risk:** Low / Medium / High — [primary risk: system migration / management departure / customer attrition]
**Integration cost estimate:** $X one-time (severance, systems, legal)

---

## Recommendation

**Verdict:** ✅ Pursue / ⚠️ Conditional / ❌ Pass

**Rationale:**
- Standalone: X× EBITDA is fair for the sector; but standalone doesn't capture the strategic value
- Combined: $X synergies + $X multiple arbitrage = $X total value creation on $X acquisition cost = X× add-on MOIC
- Risk: [Primary risk and mitigation]

**Matt Mathison action:** Approve pursuing LOI / Arrange Allevio CEO management call with target / Engage Allevio Board to authorize acquisition
```

## Output Contract
- Multiple arbitrage always calculated explicitly — this is the primary value driver of add-on acquisitions in a buy-and-build strategy; make the math visible
- Synergies split revenue vs. cost — revenue synergies are always discounted vs. cost synergies; show the components and confidence levels separately
- Combined entity pro forma always built — the add-on changes the platform's financials and return profile; must model the combined entity, not just the target
- Integration plan always included — add-on acquisitions that fail usually fail in integration, not valuation; even a high-level plan surfaces risks
- HITL required: Dr. Lewis analyzes; Matt Mathison approves pursuing; Allevio/HIVE management leadership co-approves the acquisition (they have to integrate it); LOI requires Matt Mathison; purchase agreement requires Matt Mathison + legal; capital call for equity contribution requires standard LP capital call process

## System Dependencies
- **Reads from:** Target company financials (CIM), platform company financials, synergy inputs from platform management, sector comparable multiples
- **Writes to:** Add-on analysis (SharePoint/Deals/<Target>/Add-on Analysis); combined entity model; deal pipeline tracker
- **HITL Required:** Dr. Lewis analyzes; Matt Mathison approves; platform company CEO co-approves; LOI and PA require Matt Mathison + legal; capital call if needed

## Test Cases
1. **Golden path:** Allevio acquires small Arizona primary care practice → Target: $1.2M revenue, $240K EBITDA, asking $1.2M (5×); cost synergies: $80K (admin overlap); revenue synergies: $60K (Allevio cross-sell, discounted to $30K base); multiple arbitrage: buy at 5×, exit at 8× → $1.92M at exit vs. $1.2M paid = $720K arbitrage; combined EBITDA: $1.44M (from $1.2M + $240K synergies); integration: low complexity (same EMR); recommendation: pursue; Matt Mathison: approve LOI at $1M (4.2×)
2. **Edge case:** Target's largest physician (generating 50% of revenue) won't stay post-acquisition → this changes the acquisition fundamentally; a physician practice where the key revenue-generator leaves is worth dramatically less; run the scenario: revenue drops 50%; synergies may not materialize; EBITDA could go negative; recommendation may flip to pass; if the physician's retention can be secured via employment agreement + equity, re-run the analysis with retention cost factored in; physician retention is a binary risk in healthcare add-on acquisitions
3. **Adversarial:** The Allevio CEO is pushing hard for an acquisition of a company that is much larger and complex than typical tuck-ins (it's 80% the size of Allevio) → a target that is 80% the size of the acquirer is a merger, not a tuck-in; integration complexity and management bandwidth risk are dramatically higher; the combined entity leverage may exceed comfort levels; this needs to be analyzed as a platform acquisition, not a tuck-in; present Matt Mathison with the risk profile of this specific deal vs. the typical tuck-in strategy; management enthusiasm is not a substitute for financial analysis

## Audit Log
Add-on analyses retained. Combined entity models retained. Synergy assumptions documented. Matt Mathison approval retained. Integration plan tracking maintained post-close.

## Deprecation
Retire when portfolio companies have dedicated corporate development or M&A functions that manage their own add-on pipeline and analysis.
