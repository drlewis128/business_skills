---
name: finance-hive-lp-distribution
description: "Manage LP distributions for HIVE Partners. Use when the user says 'LP distribution', 'LP payout', 'distribute to LPs', 'investor distribution', 'HIVE distribution', 'HIVE LP payout', 'partner distribution', 'investor payout', 'distribution schedule', 'quarterly distribution', 'annual distribution', 'when do LPs get paid', 'how much do LPs get', 'distribution calculation', 'distribution waterfall', 'preferred return', 'carry', 'carried interest', 'LP returns', 'LP capital return', 'return of capital', 'distribution statement', 'Covercy distribution', 'Covercy payout', 'LP communication', 'LP distribution notice', 'distribution from HIVE', 'distribution coverage', 'can we distribute', 'distribution threshold', 'distribution policy', 'LP payment', or 'HIVE investor payment'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <quarterly|annual>] [--action <calculate|distribute|report|notify>] [--amount <threshold>]"
---

# Finance HIVE LP Distribution

Manage LP distributions for HIVE Partners — calculating distributable cash flow from production and royalty income, applying the distribution waterfall, preparing Covercy distribution entries, communicating with LPs, and ensuring all distributions are reviewed and approved by Matt Mathison before execution. LP distributions are HIVE's primary value delivery mechanism; accuracy, timing, and transparency are the foundation of LP trust.

## When to Use
- Quarterly: preparing the HIVE LP distribution
- Calculating distributable cash (is there enough to distribute after LOE and G&A reserve?)
- LP distribution notice and communication
- Matt Mathison distribution approval

## HIVE LP Distribution Framework

```
DISTRIBUTION CADENCE:
  Standard: quarterly (if distributable cash threshold met)
  Threshold: distributable cash must exceed $20K (net of LOE reserve and G&A operating reserve) to trigger distribution
  If below threshold: cash accumulates until next quarter; LPs notified that no distribution this quarter
  Annual: even if quarterly distributions occurred, annual distribution summary for LP tax reporting
  
DISTRIBUTION CALCULATION:

  Step 1 — Available Cash:
    Covercy balance: all production revenue received + royalty income received in period
    Less: LOE paid in period
    Less: G&A paid in period (entity-level operating costs)
    Less: operating reserve: maintain minimum $50K in Covercy operating account (for LOE payment buffer)
    Less: capital reserve for approved acquisitions (if in acquisition mode; $0 if WTI trigger pause)
    = Distributable Cash
    
  Step 2 — Distribution Waterfall (simplified PE structure):
    Return of Capital: first, return LP invested capital (if applicable per partnership agreement)
    Preferred Return: 8% preferred return to LPs on unreturned capital (if applicable per partnership agreement)
    Carried Interest: after preferred return; typically 20% to GP (Matt Mathison / MBL)
    Remaining: pro-rata to LPs per ownership interest
    
    Note: specific waterfall terms are in the HIVE partnership agreement; Dr. Lewis applies those terms exactly
    Any question about waterfall application → Dr. Lewis + Matt Mathison + legal counsel if needed
    
  Step 3 — Per-LP Distribution:
    Total distributable cash × each LP's ownership percentage = individual LP distribution amount
    Minimum LP distribution: $1,000 (distributions below this accumulate to next quarter)
    
COVERCY DISTRIBUTION PROCESS:
  Dr. Lewis prepares distribution in Covercy (distribution amount; effective date; per-LP breakdown)
  Matt Mathison reviews and approves distribution in Covercy (mandatory before any funds move)
  Covercy executes ACH to each LP's designated bank account
  Distribution timeline: 3-5 business days from Covercy approval to LP receipt
  
LP DISTRIBUTION NOTICE:
  Sent by Dr. Lewis (or Matt Mathison) 3 business days before payment
  Content: distribution amount; effective date; what it represents (Q production + royalty); WTI note
  WTI note: "HIVE realized WTI of $X/bbl in [Quarter]; [above/approaching/below] our $58/bbl acquisition threshold"
  Format: professional email (not casual); saved to LP communication file in SharePoint
  
TAX DOCUMENTATION:
  Annual K-1: each LP receives a Schedule K-1 for their HIVE partnership income
  Dr. Lewis works with CPA to prepare HIVE partnership tax return (Form 1065) and K-1s
  Deadline: K-1s to LPs by March 15 of following year (or extension if applicable)
  
WTI TRIGGER IMPACT ON DISTRIBUTIONS:
  If WTI trigger pause is active: acquisition capital reserve = $0 (no acquisitions being made)
  Distributable cash may actually increase during pause (no capital deployed)
  But LOE must still be paid; if WTI is also reducing revenue significantly, distributable cash declines
  Dr. Lewis models the distribution impact in the quarterly scenario analysis
```

## Output Format

```markdown
# HIVE LP Distribution — Q[N] [Year]
**Prepared by:** Dr. Lewis | **Approved by:** Matt Mathison | **Status:** [Draft / Approved / Distributed]

---

## Distributable Cash Calculation

| Item | Amount |
|------|--------|
| Covercy balance (start of period) | $X |
| + Production revenue received | $X |
| + Royalty income received | $X |
| - LOE paid | ($X) |
| - G&A paid | ($X) |
| - Operating reserve (maintain $50K) | ($X) |
| - Capital reserve (acquisitions) | ($X) |
| **= Distributable Cash** | **$X** |

**Distribution triggered?** [Yes — $X exceeds $20K threshold / No — below threshold]

---

## Per-LP Distribution

| LP | Ownership % | Distribution Amount |
|----|------------|-------------------|
| [LP Name] | X% | $X |
| [LP Name] | X% | $X |
| **Total** | **100%** | **$X** |

---

## Covercy Distribution Entry
[Distribution date; ACH effective date; Covercy confirmation reference]

---

## LP Communication Sent
[Date sent; recipients; WTI note included]
```

## Output Contract
- Distribution accuracy is the most trust-sensitive financial process in the HIVE portfolio — LPs have invested capital expecting returns; any error in the distribution amount (over- or under-distribution) requires a correction that is visible to every LP and creates a credibility problem; Dr. Lewis calculates the distributable cash calculation twice before presenting to Matt Mathison; the math is transparent and documented in the Covercy distribution record; LP trust is built by consistent, accurate, on-time distributions with clear communication about what drove the amount
- The WTI trigger note in LP communications is a transparency commitment, not a red flag — when HIVE distributes to LPs, they deserve to know the WTI context; "HIVE realized WTI of $63/bbl in Q2 2026 — above our $58/bbl acquisition threshold; HIVE continues active acquisition mode" is a positive signal; "HIVE realized WTI of $59.50/bbl in Q3 — approaching our $58/bbl threshold; we are monitoring closely and will notify LPs immediately if an acquisition pause is triggered" is responsible communication; LPs who receive this transparency trust the management team; LPs who hear about a distribution change with no prior WTI context are surprised and unhappy
- HITL required: distribution calculation → Dr. Lewis prepares + Matt Mathison reviews; distribution approval → Matt Mathison mandatory in Covercy before any funds move; LP distribution notice → Dr. Lewis or Matt Mathison sends; K-1 preparation → Dr. Lewis + CPA; waterfall application questions → Dr. Lewis + Matt Mathison + legal counsel; WTI trigger impact on distribution → Dr. Lewis models before distribution; any LP dispute about distribution amount → Matt Mathison notified immediately

## System Dependencies
- **Reads from:** Covercy (production revenue; royalty income; LP ownership table; bank account details; prior distributions); QuickBooks (LOE; G&A; operating account balance); HIVE partnership agreement (waterfall terms; preferred return; carried interest); finance-hive-royalty-tracker (royalty income for period); finance-hive-production-financials (production revenue for period)
- **Writes to:** Covercy (LP distribution entries; distribution approval records); QuickBooks (distribution entries; partner equity accounts); LP communication records (SharePoint → HIVE → LPs → Distributions → [Quarter]); Matt Mathison distribution approval records; annual K-1 preparation inputs (CPA)
- **HITL Required:** Distribution calculation → Matt Mathison reviews; distribution approval → Matt Mathison in Covercy (mandatory); LP notice → Dr. Lewis or Matt Mathison sends; K-1 → Dr. Lewis + CPA; waterfall questions → Dr. Lewis + Matt Mathison + legal; WTI trigger impact → Dr. Lewis models; LP disputes → Matt Mathison immediate

## Test Cases
1. **Golden path:** HIVE Q2 2026 LP distribution. Covercy balance start of Q2: $218K. Production revenue received Q2: $152K. Royalty income received Q2: $44K. LOE paid Q2: $54K. G&A paid Q2: $24K. Operating reserve (maintain $50K): current balance $218K + inflows $196K - outflows $78K = $336K; reserve $50K → distributable cash = $336K - $50K = $286K. Capital reserve: $0 (no acquisitions pending). Distributable: $286K. Q2 distribution to LPs: $286K pro-rata per partnership agreement. Dr. Lewis prepares Covercy distribution. Matt Mathison reviews and approves. 4 LPs receive ACH payments (June 30 effective date). LP notice sent June 27: "Q2 HIVE distribution: $X per LP unit. WTI realized: $63/bbl — above $58/bbl acquisition threshold. HIVE remains in active acquisition mode." All LPs acknowledge receipt.
2. **Edge case:** WTI trigger pause has been active for 6 weeks; Q3 distribution preparation shows only $18K distributable cash (below $20K threshold) → Dr. Lewis: "Q3 distributable cash is $18K — $2K below the $20K threshold. Per our distribution policy, this quarter's distribution is deferred; cash accumulates to Q4. LP communication to be sent this week: 'HIVE Q3 distribution deferred — WTI realized $56.40/bbl (below $58/bbl acquisition threshold); Q3 production revenue was $X. Distributable cash of $18K does not meet our $20K distribution threshold. Cash carried forward to Q4 2026 distribution. We continue to monitor WTI closely and will notify LPs immediately upon any change in acquisition status.' Matt Mathison reviews LP communication before sending."
3. **Adversarial:** An LP calls to dispute their Q2 distribution amount, claiming it should be higher based on their ownership percentage → Dr. Lewis: "I take distribution accuracy very seriously — let me pull the Q2 distribution calculation immediately. The per-LP amounts are calculated from the LP ownership table in Covercy (which reflects the partnership agreement), and each LP's ownership percentage is applied to the distributable cash amount. If there's a discrepancy, it's either (1) a data error in the Covercy ownership table, or (2) a misunderstanding of the ownership percentage. I'll send the LP their specific calculation (ownership % × distributable cash = their amount) within 24 hours. If there's an error in the Covercy ownership table, we correct it and issue a corrective distribution immediately. Matt Mathison is notified of any LP distribution dispute."

## Audit Log
Quarterly distribution calculations (permanent). Matt Mathison approval records in Covercy. LP distribution records (ACH confirmation; per-LP amounts; dates). LP communication records. Waterfall application records. Annual K-1 preparation records. Deferred distribution records (when below threshold). WTI trigger impact records. LP dispute records and resolutions.

## Deprecation
Distribution threshold reviewed annually or when HIVE LP structure changes. Distribution cadence reviewed when Matt Mathison's LP management preferences change. Waterfall terms reviewed only if partnership agreement is amended. Covercy process reviewed when platform capabilities change. LP communication format reviewed annually.
