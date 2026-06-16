---
name: ops-spend-analyzer
description: "Analyze operational spending for cost reduction opportunities. Use when the user says 'analyze spending', 'spend analysis', 'cost reduction', 'where are we spending money', 'operational costs', 'review our expenses', 'find savings', 'cut costs', 'expense analysis', 'cost audit', 'spending review', 'vendor spend', 'operating expense analysis', 'where can we save', or 'OPEX review'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <trailing-12|YTD|quarterly>] [--focus <all|vendors|SaaS|overhead|payroll>]"
---

# Ops Spend Analyzer

Analyze operational spending at MBL portfolio companies — identifying waste, redundancy, over-market pricing, and reallocation opportunities. Spend analysis is one of the highest-ROI operational activities: most companies have 5-15% of their operating costs in spending that is either unnecessary, duplicated, or priced above market. Finding and eliminating this spending produces immediate, sustainable cost reduction without affecting operational capability.

## When to Use
- Annual planning — reviewing OPEX for cost optimization opportunities
- Cash flow is tighter than expected and rapid cost reduction is needed
- A portfolio company is being acquired and its cost structure needs to be assessed
- Matt Mathison asks "where are we spending money?" or "what can we cut?"
- EBITDA improvement is needed and cost reduction is faster than revenue growth
- A new CFO or controller is starting and needs a spend landscape

## Spend Analysis Framework

```
Spend categories:
  People: Payroll + benefits + contractors (typically 40-65% of total OPEX)
  Technology: SaaS subscriptions, hosting, software licenses, IT services
  Occupancy: Office lease, utilities, janitorial, security
  Professional services: Legal, accounting/CPA, HR consulting, marketing agencies
  Vendor/supplier: All non-payroll vendors providing goods or services
  Other OPEX: Insurance, travel, office supplies, equipment maintenance

Cost classification:
  Fixed: Same every month regardless of volume (lease, base salaries, annual subscriptions)
  Variable: Changes with volume (commissions, per-transaction fees, hourly contractors)
  Semi-variable: Fixed base + variable portion (phone plans with overages, tiered SaaS)
  
  Target: understand fixed cost floor (what we spend even at zero revenue) vs.
  variable cost structure (how costs grow as we grow)

Savings opportunity categories:
  Eliminate: Stop spending entirely — service not needed or not used
  Reduce: Same service at lower volume or scope
  Renegotiate: Better price from current vendor (see ops-vendor-manager)
  Consolidate: Multiple vendors for same service → one vendor at better rate
  Replace: Different vendor at lower cost for equivalent service
  Defer: Timing shift that improves cash flow without eliminating spend

Spend concentration risk:
  Top 10 vendors = what % of total OPEX?
  If any single non-payroll vendor >10% of OPEX: concentration risk flag
  Single-vendor dependency + no alternative = negotiating leverage risk
```

## Output Format

```markdown
# Spend Analysis — <Company Name>
**Period:** [Trailing 12 months / YTD / Q[N]] | **Date:** [Date]
**Total OPEX analyzed:** $[X] | **Data source:** [QuickBooks / P&L / Bill.com]
**Prepared by:** Dr. John Lewis | **For:** [CEO / Matt Mathison]

---

## TL;DR — Savings Opportunity Summary

**Total OPEX:** $[X] | **Estimated savings opportunity:** $[X] ([X%] of OPEX)
**No-risk savings (eliminate unused):** $[X] — implement immediately
**Medium-risk savings (renegotiate/replace):** $[X] — implement within 60 days
**Longer-term savings (restructure/defer):** $[X] — plan within 90 days

---

## Spend by Category

| Category | Annual spend | % of OPEX | vs. Prior year | vs. Revenue % |
|---------|------------|---------|--------------|-------------|
| People (payroll + benefits + contractors) | $[X] | [X%] | [+/-X%] | [X%] |
| Technology (SaaS + IT) | $[X] | [X%] | | |
| Occupancy | $[X] | [X%] | | |
| Professional services | $[X] | [X%] | | |
| Vendor/supplier | $[X] | [X%] | | |
| Insurance | $[X] | [X%] | | |
| Other | $[X] | [X%] | | |
| **Total OPEX** | **$[X]** | 100% | | |

**Revenue:** $[X] | **OPEX as % of revenue:** [X%] | **EBITDA:** $[X] ([X%] margin)

---

## Top 20 Vendors by Spend

| Rank | Vendor | Annual spend | Category | Contract? | Last reviewed |
|------|--------|------------|---------|-----------|-------------|
| 1 | [Vendor] | $[X] | [Category] | [Yes/No] | [Date] |
| 2 | | | | | |
| ... | | | | | |

**Spend concentration:** Top 5 vendors = [X%] of total OPEX
**Vendors without contracts:** [N] vendors, $[X] spend — risk flag

---

## Technology Spend Audit

| Tool / Subscription | Annual cost | Users (actual vs. licensed) | Last used | Recommendation |
|--------------------|------------|---------------------------|---------|----------------|
| [Tool 1] | $[X] | [N actual / N licensed] | [Date] | 🟢 Keep / 🟡 Right-size / 🔴 Cancel |
| [Tool 2] | $[X] | | | |

**Unused/underused SaaS:** [N tools], $[X]/year — cancel or right-size
**Duplicate tools:** [e.g., "Using both Zoom and Teams — consolidate"] — $[X] savings

---

## Savings Opportunities

### 🟢 Eliminate (No-Risk — implement immediately)
| Item | Annual savings | Action | Timeline |
|------|--------------|--------|---------|
| [Unused SaaS subscription] | $[X] | Cancel at next billing cycle | [Date] |
| [Vendor with no contract, no activity in 90 days] | $[X] | Cancel | [Date] |

**Eliminate subtotal:** $[X]/year

### 🟡 Renegotiate / Right-size (Medium risk)
| Item | Current cost | Target | Annual savings | Approach |
|------|------------|--------|--------------|---------|
| [Top vendor — above market rate] | $[X] | $[X] | $[X] | [Competitive bid / direct renegotiation] |
| [SaaS over-licensed — 20 users, using 8] | $[X] | $[X] | $[X] | Downgrade plan |

**Renegotiate subtotal:** $[X]/year (est.)

### 🔵 Replace / Consolidate (Requires evaluation)
| Item | Current cost | Alternative | Estimated savings | Switching cost | Net ROI |
|------|------------|------------|-----------------|--------------|--------|
| [Tool A] | $[X] | [Tool B — same function at lower cost] | $[X] | $[X] | $[X] in [X months] |

**Replace subtotal:** $[X]/year (est. — requires validation)

---

## Total Savings Summary

| Category | Annual savings | Confidence | Timeline |
|---------|--------------|-----------|---------|
| Eliminate | $[X] | 🟢 High | Immediate |
| Renegotiate | $[X] | 🟡 Medium | 30-60 days |
| Replace/Consolidate | $[X] | 🟡 Medium | 60-90 days |
| **Total** | **$[X]** | | |

**EBITDA impact:** $[X] annual savings = [+X%] improvement to current EBITDA

---

## Matt Mathison Brief (3 sentences)

[Company] OPEX analysis identified $[X] in savings opportunities from [N] specific items. [Largest single opportunity: description and $ amount]. Recommend Dr. Lewis implement eliminations immediately; renegotiations within 60 days — no capital investment required.
```

## Output Contract
- Savings opportunities are specific, named, and quantified — "reduce SaaS spend" is not a finding; "$12,400/year in 3 unused SaaS subscriptions — cancel [Tool A] at $7,200/year, downgrade [Tool B] at $3,600/year, consolidate [Tool C+D] to save $1,600/year" is a finding; every savings opportunity names the specific vendor or item, the current cost, and the estimated savings
- Technology spend audit always includes user count vs. licenses — software licensing is one of the most common sources of waste at portfolio companies; a tool licensed for 25 users with 6 actual users is paying for 19 seats at the vendor's full price; the audit pulls actual user data (system admin reports, login activity) not assumed usage
- No-risk savings are implemented immediately — items in the "Eliminate" category (unused subscriptions, duplicate tools, vendors with no recent activity) don't require negotiation or risk analysis; they require a cancellation; Dr. Lewis can implement these within the current week; the only thing that slows them down is checking that no one is actually using the tool before cancelling
- Renegotiation uses data — knowing the market price is the first step to renegotiating; before approaching a vendor about pricing, Dr. Lewis pulls 2-3 competitive quotes; the negotiation opens from a position of information ("our peers pay $X for equivalent capability — we'd like to align to that") rather than a position of desire ("we'd like a discount")
- HITL required: Dr. Lewis conducts spend analysis; CEO reviews all savings recommendations before implementation; cancellations and plan changes implemented by Dr. Lewis or designated finance/ops staff; renegotiations conducted by Dr. Lewis; any spend reduction >$25K/year or involving a Tier 1 vendor reviewed with Matt Mathison before action

## System Dependencies
- **Reads from:** QuickBooks P&L, Bill.com payment history, bank statements, vendor contracts, SaaS admin panels (user count and license data)
- **Writes to:** Spend analysis report (SharePoint/Finance/<Company>/OPEX/); vendor renegotiation log; cancellation tracker; EBITDA impact summary
- **HITL Required:** Dr. Lewis conducts; CEO reviews before action; cancellations approved by CEO; renegotiations led by Dr. Lewis; Matt Mathison reviews savings >$25K/year or Tier 1 vendor changes

## Test Cases
1. **Golden path:** Allevio annual spend analysis → Total OPEX $2.1M; Technology audit: 12 SaaS subscriptions reviewed; Found: DocuSign ($4,800/year, 2 active users out of 15 licensed) → downgrade to 2-user plan at $1,200/year ($3,600 savings); Zoom ($7,200/year, 42 licenses) + Teams already included in M365 subscription → cancel Zoom ($7,200 savings); Project management tool ($3,600/year, 0 active logins in 90 days) → cancel ($3,600 savings); Vendor renegotiation: billing software support contract ($18,000/year — market is $12,000 for equivalent); approach vendor with competitive quote — agree to $14,400/year ($3,600 savings); Total identified: $17,400/year = 0.83% of OPEX but full EBITDA flow-through; Matt Mathison: "Allevio spend analysis found $17,400/year in savings — primarily unused SaaS and one renegotiated support contract. Dr. Lewis implementing eliminations this week; renegotiation complete by month end."
2. **Edge case:** A significant vendor contract is flagged as above-market but the CEO has a personal relationship with the vendor's owner → The analysis identifies the cost variance objectively; the business decision (whether to renegotiate, given the relationship) is the CEO's to make; present the data: "This contract is $8,400/year above what we'd expect to pay for equivalent service. I want to flag it — not to damage the relationship, but so you can make an informed decision. You can tell them we've done a market review and you want to align to market; that's honest and fair. Or you can decide the relationship value exceeds the $8,400 premium — that's also a valid choice. Either way, the decision should be conscious."
3. **Adversarial:** "We already went through this exercise last year" → Ask: "What changed in the past 12 months? New team members with different tool preferences? New SaaS tools added as one-offs? Vendors that renewed automatically? In my experience, 6-10 new spending items accumulate in a 12-month period — mostly SaaS subscriptions and vendor renewals that no one explicitly approved. The analysis last year is a baseline; this year's is the delta. I can focus just on what changed since last year — typically a 2-hour analysis."

## Audit Log
All spend analyses retained by company and date. Savings opportunity calculations documented. Cancellations and renegotiations logged with dates and amounts. EBITDA impact verified at next quarterly financial review. Matt Mathison reviews documented.

## Deprecation
Retire when portfolio companies have controllers or CFOs who conduct regular spend reviews as part of the monthly close process, with automated vendor spend tracking and technology utilization monitoring that surfaces waste without Dr. Lewis conducting a manual analysis.
