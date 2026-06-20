---
name: pe-distribution-manager
description: "Manage LP distributions and the distribution waterfall for MBL Partners fund. Use when the user says 'distribution', 'LP distribution', 'distribute capital', 'return capital', 'fund distribution', 'distribution notice', 'send a distribution', 'waterfall', 'distribution waterfall', 'carried interest', 'carry', 'carry calculation', 'preferred return', 'hurdle rate', 'catch-up', 'clawback', 'GP return', 'management fee offset', 'distribution schedule', 'distribution timing', 'when to distribute', 'dividend', 'LP payout', 'return proceeds', 'exit proceeds', 'sale proceeds', 'distribution from exit', 'partial distribution', 'distribution reconciliation', 'K-1 distribution', 'tax distribution', or 'distribution ledger'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--type <exit-proceeds|income|management-fee-offset|tax>] [--amount <$XM>] [--action <calculate|draft|approve|track|reconcile>] [--fund <fund-name>]"
---

# PE Distribution Manager

Manage LP distributions and the distribution waterfall for MBL Partners fund — calculating distributions per the LPA waterfall, drafting distribution notices, tracking LP wire receipts, and maintaining accurate LP capital accounts. Distributions are the mechanism by which LPs receive returns on their investment and are the primary measure of fund performance from the LP perspective; distribution timing and accuracy are fiduciary obligations; errors in waterfall calculations create disputes, legal exposure, and LP trust damage. Every distribution is approved by Matt Mathison; every calculation is reviewed by fund counsel before distribution notices are sent.

## When to Use
- An exit or sale generates proceeds to distribute
- A periodic income distribution is scheduled (if the fund makes income distributions)
- A tax distribution is required by the LPA
- The LP capital account needs reconciliation after a distribution

## Distribution Waterfall Framework

```
MBL PARTNERS DISTRIBUTION WATERFALL (verify exact terms per LPA):

  TIER 1 — RETURN OF CAPITAL:
    LPs receive 100% of distributions until cumulative distributions = total capital contributed
    No carried interest in this tier
    
  TIER 2 — PREFERRED RETURN (HURDLE):
    LPs receive 100% of distributions until they have earned the preferred return (typically 8% IRR)
    Preferred return accrues on unreturned capital from the date of contribution
    No carried interest in this tier
    
  TIER 3 — CATCH-UP:
    GP (MBL Partners) receives 100% of distributions until GP has received its carried interest % of total profits
    Catch-up rate: typically 100% to GP until carry ratio is achieved (verify per LPA)
    Example: 20% carry on profits → GP catches up until it has received 20% of total profit
    
  TIER 4 — CARRIED INTEREST SPLIT:
    Remaining proceeds split: LP % / GP % (typically 80/20 in Tier 4)
    Carry % is net of management fee offsets (per LPA)
    
  TAX DISTRIBUTIONS (if required by LPA):
    Some LPAs require mandatory tax distributions to cover LP taxable income
    Calculate: LP allocable taxable income × assumed tax rate (per LPA)
    Tax distributions reduce future distributions in Tier 1 (return of capital)

DISTRIBUTION PROCESS:

  STEP 1 — EXIT EVENT OR INCOME EVENT:
    Source: sale proceeds; refinancing proceeds; income distribution event
    Amount confirmed with legal counsel and fund administrator
    
  STEP 2 — WATERFALL CALCULATION:
    Pull LP capital accounts: total contributed capital; prior distributions; preferred return accrual
    Apply waterfall in sequence (Tiers 1→2→3→4)
    Verify: total distribution = sum of LP distributions + GP carry
    Verify: calculation matches fund counsel's independent waterfall analysis
    
  STEP 3 — FUND COUNSEL REVIEW:
    Distribute calculation to fund counsel before notice
    Fund counsel confirms waterfall math and LP allocations
    Any dispute or ambiguity in LPA interpretation → fund counsel decides
    
  STEP 4 — MATT MATHISON APPROVAL:
    Matt reviews: total distribution amount; per-LP amounts; GP carry; timing
    Matt approves in writing before notice is sent
    
  STEP 5 — DISTRIBUTION NOTICE:
    Notice period: typically 5 business days (verify per LPA)
    Notice includes: per-LP amount; description of distribution source; bank instructions for LP
    Bank instructions: MBL fund account → LP's account of record (verified before sending)
    
  STEP 6 — WIRE AND RECONCILE:
    Wire to all LPs simultaneously (same business day)
    Confirm receipt from each LP contact
    Reconcile: total wired = total distribution amount
    Update LP capital accounts post-distribution

CLAWBACK CONSIDERATION:

  CLAWBACK OBLIGATION (if LPA contains clawback):
    Clawback = GP return of carry distributions if cumulative carry received > carry earned at fund end
    Dr. Lewis tracks running clawback exposure every time carry is distributed
    Clawback reserve: Matt Mathison decides whether to hold reserves (per LPA requirements)
    If carry distributions exceed earned carry at fund end → GP must return the excess
```

## Output Format

```markdown
# Distribution Notice — [Fund Name] — [Date]
**Prepared by:** Dr. Lewis | **Reviewed by:** Fund Counsel | **Approved by:** Matt Mathison

---

## Distribution Summary

| | Amount |
|-|-------|
| Total distributable proceeds | $[X] |
| Tier 1 — Return of capital | $[X] |
| Tier 2 — Preferred return | $[X] |
| Tier 3 — Catch-up to GP | $[X] |
| Tier 4 — LP share (remaining) | $[X] |
| **Total LP distributions** | **$[X]** |
| **GP carried interest** | **$[X]** |

---

## Per-LP Distribution Schedule

| LP | Capital contributed | Prior distributions | This distribution | Cumulative returned | Notes |
|----|---------------------|---------------------|------------------|---------------------|-------|
| [LP 1] | $[X] | $[X] | $[X] | $[X] | Tier 1+2 |
| [LP 2] | $[X] | $[X] | $[X] | $[X] | Tier 1+2+4 |

---

## Clawback Exposure Tracker

| GP carry distributed (cumulative) | GP carry earned (IRR basis) | Current clawback exposure |
|-----------------------------------|----------------------------|--------------------------|
| $[X] | $[X] | $[X] or None |
```

## Output Contract
- Every waterfall calculation is confirmed by fund counsel before distribution — Dr. Lewis's calculation is a first pass; fund counsel provides the authoritative confirmation; the LPA governs the waterfall and counsel's interpretation is final on any ambiguous clause; distributing the wrong amount to an LP creates a legal obligation to recover the overpayment (often impossible) or results in an underpayment that triggers LP complaints; the fund counsel review is not optional even when the calculation appears straightforward
- Matt Mathison approves every distribution before notices are sent — distributions represent return of LP capital and GP carry; they are the most consequential financial events in the fund's life; Matt owns the decision on distribution timing (is now the right time to distribute? should we hold proceeds for re-investment?); Matt approves the exact amounts; Matt's written approval is required before any notice goes out
- Clawback exposure is tracked at every carry distribution — if the fund distributes carry early and then underperforms on later investments, the GP may owe a clawback; Dr. Lewis maintains a running clawback exposure calculation that is updated with every carry distribution; Matt Mathison is briefed on clawback exposure whenever carry is distributed; if clawback exposure exceeds a material threshold (>20% of cumulative carry distributed), Matt determines whether to hold reserves
- HITL required: every distribution → fund counsel review + Matt Mathison written approval; any carry distribution → clawback exposure analysis briefed to Matt; distribution to LPs with conflicting bank instructions → phone verification required; tax distributions → fund tax counsel review before calculation; clawback obligation triggered → Matt Mathison + legal counsel immediately

## System Dependencies
- **Reads from:** LPA (distribution waterfall terms; clawback provisions; notice periods); LP capital account ledger (contributed capital; prior distributions; preferred return accrual); sale proceeds or income event (source of distributable proceeds); fund counsel (waterfall confirmation); QuickBooks (fund cash balance; LP capital accounts)
- **Writes to:** Distribution notices (SharePoint → Governance → Distributions → [Date]); LP capital account ledger (updated after each distribution); QuickBooks (distribution entries; carry receivable); clawback exposure tracker; Matt Mathison approvals (retained); pe-lp-quarterly-report (distribution history for LP reporting)
- **HITL Required:** Every distribution → fund counsel review + Matt approval; carry distribution → clawback briefing to Matt; bank instruction verification → phone confirmation; tax distributions → tax counsel; clawback trigger → Matt + legal

## Test Cases
1. **Golden path:** Allevio is sold. Total proceeds: $18M. LP invested capital: $10M. Preferred return (8% IRR, 4 years): $3.4M. Total to LPs before carry: $13.4M. Carry pool: $18M - $13.4M = $4.6M. Catch-up: GP receives 100% until GP has 20% of total profit ($18M - $10M = $8M profit → 20% = $1.6M to GP). Catch-up: $1.6M to GP. Remaining: $4.6M - $1.6M = $3.0M → 80/20 split. LP additional: $2.4M. GP additional: $0.6M. Total GP carry: $2.2M. Total LP: $15.8M. Fund counsel confirms. Matt approves. Distribution notices sent 5 days before wire. All LPs receive correct amounts.
2. **Edge case:** An LP's bank of record is no longer operational (bank was acquired) → Dr. Lewis: "LP 3's designated bank account is at [Bank], which was acquired by [New Bank]. I need to verify the new account details directly with LP 3 before issuing the wire. I'll call their CFO at the number on file and get updated wiring instructions on letterhead. This may delay LP 3's wire by 2-3 business days — I'll notify them of the reason. The delay does not affect the other LPs' wires."
3. **Adversarial:** An LP argues their preferred return calculation should use a different compounding convention than the LPA specifies → Dr. Lewis: "This is a fund counsel question. I'm sending the LP's question and the LPA language to [Fund Counsel] for a definitive interpretation. Until fund counsel rules, I won't distribute any amounts that are in dispute — I'll hold the disputed portion in escrow. The other LPs' distributions will proceed on schedule. Matt Mathison: I'm briefing you on this LP dispute; if fund counsel's ruling goes against our calculation, the distribution amount changes. Expected resolution: [timeline from counsel]."

## Audit Log
All distribution calculations retained permanently (with fund counsel confirmation date; Matt approval date). Distribution notices retained. Wire records retained (date; amount; LP confirmation). LP capital account history retained. Clawback exposure tracker history retained (updated at every carry distribution). LPA interpretations documented (with fund counsel opinion).

## Deprecation
Distribution management is a permanent function for the life of each fund. Process updated when LPA is amended or at next fund vintage.
