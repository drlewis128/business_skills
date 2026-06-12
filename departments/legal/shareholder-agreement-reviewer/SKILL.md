---
name: shareholder-agreement-reviewer
description: "Review shareholder, member, and partnership agreements. Use when the user says 'shareholder agreement', 'operating agreement review', 'membership agreement', 'partnership agreement', 'equity agreement', 'investor rights agreement', 'right of first refusal', 'drag-along', 'tag-along', 'buy-sell agreement', 'shareholder rights', or 'equity terms'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <LLC-operating|shareholder|LP-agreement|investor-rights>] [--mode <review|flag|compare>]"
---

# Shareholder Agreement Reviewer

Review shareholder, member, and partnership agreements for MBL portfolio companies. These agreements govern the fundamental relationship between equity holders — they define voting rights, transfer restrictions, exit mechanisms, and how disputes are resolved. A poorly negotiated or outdated shareholder/operating agreement can trap equity, block exits, or create unresolvable disputes among partners. This skill flags key provisions and identifies gaps.

## When to Use
- Reviewing a proposed shareholder or operating agreement before signing
- Evaluating an existing agreement before a new investment or partner addition
- Pre-M&A due diligence — reviewing the target's equity agreements
- Resolving a dispute about member/shareholder rights
- Adding a new investor or LP

## Key Provisions to Review

| Provision | What It Governs | Red Flags |
|---------|--------------|---------|
| **Voting rights** | Who can vote on what; majority vs. supermajority thresholds | Minority investor controls on routine decisions |
| **Transfer restrictions** | When equity can be sold or transferred | Lock-up periods, right of first refusal, board approval required |
| **Right of First Refusal (ROFR)** | Existing holders can match before outside sale | ROFR timelines too long (>30 days) create market friction |
| **Tag-along rights** | Minority holders can join a majority sale | Missing tag-along disadvantages minority; LPs typically require it |
| **Drag-along rights** | Majority can force minority into a sale | Drag-along threshold too low exposes minority to forced exit |
| **Anti-dilution** | Protection from economic dilution | Full ratchet anti-dilution is punishing for founders |
| **Distributions** | When and how profits are distributed | Discretionary distributions give control to majority |
| **Buy-sell provisions** | How to exit a deadlocked partnership | No buy-sell = no exit from a deadlock |
| **Non-compete** | Post-exit restrictions on departing members | Overly broad non-competes may not be enforceable |
| **Dissolution** | How the entity winds down | Missing dissolution provisions create litigation risk |
| **Fiduciary duties** | Duties of managing member/board | Elimination of fiduciary duties is a significant risk |

## Output Format

```markdown
# Shareholder / Operating Agreement Review — <Entity>
**Date:** <date> | **Agreement type:** LLC Operating Agreement / Shareholder Agreement / LP Agreement
**Parties:** <list>
**Version/Date:** <agreement date>
**Prepared by:** Dr. John Lewis + Outside Counsel

---

## Executive Summary

**Overall assessment:** Well-structured / Has gaps / Significant issues
**Key finding:** <1-2 sentences>
**Recommendation:** Execute as-is / Negotiate specific terms / Require legal counsel before signing

---

## Provision Review

| Provision | Present? | Terms | Assessment | Action |
|---------|---------|-------|---------|--------|
| Voting rights | ✅ | Simple majority for ordinary; 75% supermajority for M&A, financing | ✅ Market standard | None |
| Transfer restrictions | ✅ | 12-month lock-up; ROFR applies | 🟡 ROFR period 45 days — long | Negotiate to 20 days |
| Tag-along rights | ❌ | Not present | 🔴 Risk — minority has no exit protection | Add tag-along provision |
| Drag-along rights | ✅ | Requires 67% approval | ✅ Reasonable threshold | None |
| Anti-dilution | ✅ | Weighted average (narrow-based) | ✅ Acceptable | Monitor if new rounds planned |
| Distributions | ✅ | Quarterly distributions at Board discretion | 🟡 Discretionary — no guaranteed return | Consider minimum distribution requirement |
| Buy-sell provision | ❌ | Not present | 🔴 Risk — no exit from deadlock | Add shotgun or appraised-value buy-sell |
| Non-compete | ✅ | 18 months, 50-mile radius | 🟡 Enforceability varies by state | Review for AZ law compliance |
| Dissolution | ✅ | Standard dissolution on 75% vote | ✅ | None |
| Fiduciary duties | ✅ | Standard duties preserved | ✅ | None |
| Indemnification | ✅ | Broad indemnification of members | ✅ | None |

---

## Critical Issues (Must Address Before Signing / Before Litigation)

### 1. Missing Tag-Along Rights
**Risk:** If the majority (MBL Partners) sells its stake, minority investors have no right to participate in the exit at the same price and terms. Minority can be left with an unknown new majority partner.
**Recommendation:** Add standard tag-along rights provision before any new investment.
**Outside Counsel Action Required:** Yes

### 2. No Buy-Sell Provision
**Risk:** If the managing members reach a deadlock on a material business decision, there is no contractual mechanism to resolve it. Results in dissolution (costly) or litigation.
**Recommendation:** Add a shotgun buy-sell (either party can name a price; the other must buy or sell at that price) or an appraised-value buy-sell.
**Outside Counsel Action Required:** Yes

---

## Negotiation Priorities

| Issue | MBL Position | Counterparty Position | Priority | Strategy |
|-------|------------|---------------------|---------|---------|
| Tag-along rights | Require standard tag-along | Not in current draft | High | Non-negotiable — add to closing conditions |
| ROFR period | 20 days | 45 days in draft | Medium | Negotiate to 30 days as compromise |
| Buy-sell | Require shotgun clause | Not in current draft | High | Frame as protecting both parties |
```

## Output Contract
- Tag-along and drag-along always assessed — these are fundamental investor protections that LPs and institutional investors require
- Buy-sell provisions always assessed — deadlock in a multi-owner LLC without a buy-sell is a litigation waiting to happen
- Non-compete enforceability always flagged — varies significantly by state; Arizona is relatively favorable but still limited
- Fiduciary duty modifications always flagged — agreements that eliminate manager fiduciary duties are a significant risk
- HITL required: Dr. Lewis reviews provision analysis; Outside counsel reviews and negotiates; Matt Mathison approves final agreement; no agreement signed without Legal sign-off

## System Dependencies
- **Reads from:** Proposed agreement text (provided)
- **Writes to:** Provision review report (for Outside Counsel and Matt Mathison)
- **HITL Required:** Outside counsel reviews; Dr. Lewis and Matt Mathison approve; both parties' counsel must execute any amendments

## Test Cases
1. **Golden path:** New investor's proposed LLC Operating Agreement → tag-along rights missing (critical — add), ROFR period 45 days (negotiate to 30), no buy-sell (critical — add), anti-dilution weighted average (acceptable), distributions discretionary (add minimum quarterly distribution), outside counsel engaged to draft amendment and negotiate
2. **Edge case:** Existing operating agreement predates a significant ownership change → original agreement may not reflect current ownership; check if amendment was executed; if not, current ownership may not have voting rights consistent with their economic stake; engage outside counsel immediately
3. **Adversarial:** Counterparty says "standard agreement, no changes" → there is no such thing as a standard agreement that requires no review; any agreement affecting equity is material; require minimum 5 business days for review; walk away from any deal that doesn't allow for legal review

## Audit Log
All reviewed agreements retained. Issue logs documented. Amendment history maintained.

## Deprecation
Retire when entity has fully standardized operating agreement templates with outside counsel review cadence, or when entity-level legal operations are delegated to in-house counsel.
