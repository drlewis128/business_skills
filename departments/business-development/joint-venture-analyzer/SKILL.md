---
name: joint-venture-analyzer
description: "Analyze a joint venture opportunity. Use when the user says 'joint venture', 'JV opportunity', 'analyze a JV', 'joint venture analysis', 'should we form a joint venture', 'JV structure', 'joint venture evaluation', 'JV deal', 'co-venture', 'joint company formation', or 'shared business venture'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--partner <partner name>] [--purpose <market entry|product|distribution>]"
---

# Joint Venture Analyzer

Analyze a joint venture (JV) opportunity — a formal business entity created by two or more companies to pursue a specific business objective together, sharing capital, risk, revenue, and control. Joint ventures are the deepest form of partnership: unlike referral, co-sell, or licensing arrangements, a JV creates a shared legal entity with shared governance, shared liability, and shared outcomes. They are appropriate when the opportunity is large enough to justify the complexity, when neither party can pursue it alone, and when the strategic alignment is deep enough to sustain shared governance.

**Critical:** Joint ventures require legal formation, governance agreements, and capitalization. This skill provides the strategic analysis; legal counsel is required before any JV formation decision.

## When to Use
- A partnership opportunity is large enough that a shared legal entity makes more sense than a contract
- Two companies each have something the other lacks (distribution + technology; market access + capability) and neither can succeed alone
- A new market requires local credibility that can only be achieved through a local partner entity
- Matt Mathison asks "should we form a JV with [company]?"
- A potential M&A target is also a JV candidate and the JV path is a lower-capital alternative to acquisition

## JV vs. Alternatives

```
When is a JV the right structure vs. alternatives?

JV is better than:
  - Referral agreement: When both parties need to invest capital and share risk proportionally
  - Co-sell: When the combined opportunity needs its own dedicated team + sales capacity
  - Acquisition: When you want to share risk and the partner won't sell (or you can't afford it)
  - Licensing: When both parties need to co-develop, not just share existing IP

JV is riskier than alternatives because:
  - Shared governance creates decision-making friction (who has final say?)
  - Shared liability means one party's mistake is the other's legal problem
  - Exit is expensive — unwinding a JV is far more complex than ending a contract
  - Cultural misalignment between two companies is amplified in a shared entity
```

## Output Format

```markdown
# Joint Venture Analysis — <JV Name / Purpose>
**Parties:** <Our company> + <Partner name>
**JV purpose:** <Specific business objective — one sentence>
**Structure:** Proposed equity split + governance model
**Date:** <date> | **Prepared by:** Dr. John Lewis | **For:** Matt Mathison / CEO

---

## JV Rationale

**Why a JV vs. alternatives?** [Why is a JV the right structure for this specific opportunity?]
**Neither party can succeed alone because:** [What each party lacks that the other provides]

| Party | What we bring | What we lack |
|-------|-------------|-------------|
| [Our company] | [Capital / technology / brand / team] | [Distribution / local presence / IP / capital] |
| [Partner] | [What they bring] | [What they lack] |

**JV synergy:** The combined entity can [specific outcome] that neither party can achieve independently.

---

## Strategic Fit Analysis

| Dimension | Score (1-5) | Evidence |
|-----------|------------|---------|
| Strategic alignment (same direction / same market) | /5 | |
| Complementary capabilities (each brings what the other lacks) | /5 | |
| Cultural compatibility (governance will work?) | /5 | [What evidence of cultural fit exists?] |
| Financial alignment (both can sustain the JV investment) | /5 | |
| Exit alignment (do both parties agree on what success looks like?) | /5 | |
| **Strategic fit total** | **/25** | |

**Strategic fit verdict:** ✅ Strong (19-25) / ⚠️ Moderate (12-18) / ❌ Weak (<12 — do not form JV)

---

## Financial Analysis

### JV Capitalization

| Item | Our contribution | Partner contribution |
|------|----------------|---------------------|
| Cash | $[X] | $[X] |
| IP/technology (valued at) | $[X] | $[X] |
| Team (FTEs seconded to JV) | [N FTEs × $[X]/year] | [N FTEs × $[X]/year] |
| Other (facilities, equipment) | $[X] | $[X] |
| **Total contribution** | **$[X]** | **$[X]** |
| **Implied equity split** | [X%] | [X%] |

### Revenue Model

| Scenario | Year 1 | Year 2 | Year 3 | Break-even |
|---------|--------|--------|--------|-----------|
| Bear | $[X] | $[X] | $[X] | Month [N] |
| Base | $[X] | $[X] | $[X] | Month [N] |
| Bull | $[X] | $[X] | $[X] | Month [N] |

**Our economic return from JV (base case):**
- Revenue share / equity distributions: $[X]/year
- Less our contribution cost: $[X]/year
- Net return: $[X]/year
- vs. alternative structures: [How does this compare to a referral or licensing arrangement?]

---

## Governance Design

| Governance element | Recommendation |
|------------------|---------------|
| Equity split | [X% us / Y% partner] — [rationale: contributions-based or negotiated] |
| Board composition | [N] board seats: [N us / N partner / N independent] |
| Decision threshold: ordinary | Simple board majority |
| Decision threshold: major (capital calls, acquisitions, exit) | Supermajority ([X%]) or unanimous |
| CEO of JV | [Our nominee / Partner nominee / Independent hire / Shared role] |
| Day-to-day management | [Our team / Partner team / Dedicated JV team] |
| Deadlock resolution | [Escalation → independent mediator → buy-sell provision] |
| Dispute resolution | Arbitration preferred |

---

## Exit Provisions

| Mechanism | Terms |
|-----------|-------|
| Voluntary exit | [N-year lockup before either party can sell; ROFR (right of first refusal) on any sale] |
| Buy-sell provision | [If parties can't agree on strategy, either can trigger buy-sell: set a price, other party must buy or sell] |
| Change of control | [If either party is acquired, the other has a ROFR on the acquiring party's JV interest] |
| Termination for cause | [Material breach of JV agreement allows non-breaching party to buy out at fair market value] |

---

## Risk Register

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|
| Governance deadlock | Medium | High | Clear deadlock resolution in agreement; strong CEO |
| Cultural misalignment slows execution | Medium | High | 90-day cultural alignment assessment before formation |
| One party contributes less than committed | Medium | Medium | Clear contribution schedule in formation agreement; milestones |
| Partner is acquired, new parent is competitor | Low | High | Change of control + ROFR in exit provisions |
| JV underperforms — one party wants out, other doesn't | Medium | High | Clear performance milestones; buy-sell provision |

---

## Recommendation

**Verdict:** ✅ Pursue JV / ⚠️ Pursue with governance modifications / ❌ Use alternative structure / ❌ Do not pursue

**Primary rationale:** [1-2 sentences]
**Key governance condition:** [The most important governance term to lock down before proceeding]
**Alternative if JV doesn't work:** [Referral / co-sell / license / acquisition]
**Next step:** [Specific — draft heads of terms / engage legal / decline with specific reason]

---

## Matt Mathison Summary

JV analysis — [Our company] + [Partner]: [JV purpose]. Strategic fit: [N/25]. Economics: Base case $[X] net return/year (vs. $[X] contribution). Primary risk: [Governance deadlock / culture / contribution failure]. Recommendation: [Pursue / Alternative / Pass]. **Matt Mathison decision needed:** Approve pursuing JV formation / Approve equity split and governance model / No JV — use [alternative structure]
```

## Output Contract
- Alternative structure always evaluated — a JV is only the right answer if simpler alternatives (referral, co-sell, license) cannot achieve the same outcome; the analysis must explicitly compare JV to alternatives before recommending it
- Governance model always designed before recommendation — a JV without a designed governance structure is an analysis of potential revenue with no execution framework; deadlock resolution and exit provisions must be designed, not left to the formation documents
- Exit provisions always designed before formation — the most expensive JV failures come from parties who never agreed on how to get out; the buy-sell provision is the most important protection; it must be in the JV agreement from Day 1
- Cultural fit always assessed — financial models and legal structures don't prevent JV failures caused by governance friction between two companies with different decision-making cultures; cultural alignment is a strategic variable, not a soft variable
- HITL required: Dr. Lewis analyzes; Matt Mathison approves JV concept before any formation work begins; legal counsel required for all JV formation (entity formation, governance agreement, capitalization); M&A counsel if JV has an acquisition path; any JV involving >$50K capital commitment requires Matt Mathison and MBL board awareness

## System Dependencies
- **Reads from:** Partner assessment, financial model, legal templates, governance benchmarks
- **Writes to:** JV analysis (SharePoint/BD/JV Analyses); Matt Mathison brief; legal brief for counsel
- **HITL Required:** Dr. Lewis analyzes; Matt Mathison approves concept; legal required for formation; board awareness for >$50K capital commitment

## Test Cases
1. **Golden path:** HIVE Partners evaluates a JV with a regional pipeline logistics company to serve the Uinta Basin → JV purpose: shared infrastructure for transporting produced oil from HIVE wells to processing facilities; HIVE brings: wells, production volume, local knowledge; Partner brings: pipeline rights, equipment, operational team; Equity: HIVE 40% / partner 60% (partner contributes more capital); Governance: 5-person board (2 HIVE, 3 partner); CEO: partner nominee (they have the ops expertise); Deadlock: independent arbitration; Exit: 3-year lockup, buy-sell at Year 3; Economics: base case $2.1M net return to HIVE over 5 years; primary risk: commodity price decline reduces JV revenue below break-even; Matt Mathison approved concept; legal and M&A counsel engaged for formation; Board notified
2. **Edge case:** A JV is being considered but one party won't disclose their financial statements → this is a hard stop; you cannot enter a JV with a party whose financial stability is unknown; a JV partner who becomes insolvent is a liability, not just a disappointment; require at minimum: audited financials for the last 2 years; 3 customer references; confirmation of no material litigation pending; if they won't provide this, pass
3. **Adversarial:** 18 months into a JV, the partner believes the JV CEO (their nominee) is underperforming but we believe the CEO is performing well — governance deadlock on CEO replacement → this is exactly the scenario the buy-sell provision was designed for; if the parties cannot agree on CEO performance, the buy-sell allows either party to set a price for the JV and the other must buy or sell; this forces a resolution even when governance deadlocks; ensure the buy-sell mechanism is in place before this scenario arises

## Audit Log
JV analyses retained. Formation decisions and capitalization documented. Matt Mathison and board approvals logged. Exit provision triggers and outcomes documented. Legal counsel engagement recorded.

## Deprecation
Retire when MBL Partners has a dedicated M&A and strategic transactions team that manages JV analysis and formation as a standard transaction type.
