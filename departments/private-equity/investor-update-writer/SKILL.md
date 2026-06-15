---
name: investor-update-writer
description: "Draft periodic investor update emails for portfolio companies and MBL. Use when the user says 'investor update', 'write investor email', 'update email to investors', 'monthly investor update', 'investor newsletter', or 'draft update for investors'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <month|quarter>] [--audience <seed|series-a|pe|lp>]"
---

# Investor Update Writer

Draft professional investor update communications for portfolio companies — monthly or quarterly. Clear, honest, data-driven. The best investor updates are the ones investors actually read.

## When to Use
- Monthly investor update (seed/early stage companies)
- Quarterly update (PE-backed, later stage)
- After a material event (fundraise close, key hire, product launch)
- When a portfolio company CEO needs a communication template

## What Makes a Great Investor Update
- **Short** — investors have 50 other updates. 400 words or less.
- **Honest** — admit challenges. Investors who find out bad news from you first maintain trust.
- **Specific** — metrics, not adjectives.
- **Actionable** — always end with a specific ask.

## Update Structure

### Header Metrics (above the fold)
The 3-5 KPIs that define health for this business. Show trend direction.

Examples by type:
- SaaS: MRR, Churn, CAC, NRR
- Healthcare/MSO: Revenue, Patient volume, EBITDA margin
- Oil & Gas: Production (BOE/d), Revenue/BOE, EBITDA
- General: Revenue, Gross margin, Cash runway

### Highlights (What went well — 3 bullets max)
Specific wins, with data. Not "great month" — "Closed Acme Corp at $45K ACV, our largest deal to date."

### Lowlights (What didn't go well — honest, specific)
One of the most important sections. Investors respect founders/managers who own their misses.

### Ask (1 specific request)
Introductions, hires, customer referrals, advice on a specific decision. Make it easy to help.

### Next Month / Quarter Preview
What are you focused on? What would make this period a success?

## Output Format

```markdown
# [Entity] Investor Update — <Month/Quarter> <Year>

**Key Metrics**
| Metric | This Period | Prior Period | Trend |
|--------|------------|-------------|-------|
| Revenue | $X | $X | ⬆️ X% |
| EBITDA | $X | $X | ⬆️ X% |
| Cash runway | X months | — | |

---

**Highlights**
- <Specific win 1 with data>
- <Specific win 2 with data>
- <Specific win 3 with data>

**Lowlights**
- <Challenge 1 — what happened, what we're doing about it>

**The Ask**
<One specific request — intro, hire, feedback, resource>

**Next Period Focus**
<1-2 sentences on priorities>

---
Questions? Reach out directly at <contact>.

```

## Output Contract
- Lowlights section is not optional — every update includes it
- Metrics table required — no all-prose updates
- The ask must be specific and singular
- HITL required before sending (Matt or portfolio company CEO must approve)

## System Dependencies
- **Reads from:** Financial metrics (from entity), operational highlights (provided), prior update (for trend comparison)
- **Writes to:** Nothing (draft only)
- **HITL Required:** Portfolio company CEO or Matt Mathison before distribution

## Test Cases
1. **Golden path:** Strong month with clear metrics and one specific ask → clean 350-word update with metrics table
2. **Edge case:** No highlights to report → surfaces the lowlights and ask, flags "no highlights" as unusual for review
3. **Adversarial:** Request to omit the lowlights section → refuses, flags that honest communication is non-negotiable in investor relations

## Audit Log
Investor updates versioned by period and entity. Distribution list and send date documented.

## Deprecation
Retire when portfolio company CRM/IR platform automates investor update drafting with system-pull metrics.
