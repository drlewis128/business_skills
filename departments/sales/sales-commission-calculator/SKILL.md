---
name: sales-commission-calculator
description: "Calculate and administer sales commissions for MBL portfolio company sales teams. Use when the user says 'commission', 'commission calculation', 'sales commission', 'calculate commission', 'commission payout', 'commission payment', 'commission check', 'how much commission', 'rep commission', 'AE commission', 'commission plan', 'comp plan', 'compensation plan', 'sales comp', 'OTE', 'on-target earnings', 'commission rate', 'commission structure', 'accelerator', 'commission accelerator', 'kicker', 'SPiF', 'SPIF', 'bonus', 'sales bonus', 'quota attainment commission', 'over-quota commission', 'over 100% commission', 'ramp commission', 'new hire commission', 'ramping AE commission', 'commission dispute', 'commission question', 'commission reconciliation', 'commission error', 'who gets the commission', 'split commission', 'commission split', 'shared commission', 'clawback', 'commission clawback', 'Allevio commission', 'Column6 commission', 'broker commission', 'channel partner commission', or 'referral fee'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--rep <name>] [--period <monthly|quarterly>] [--action <calculate|dispute|plan|reconcile>]"
---

# Sales Commission Calculator

Calculate and administer sales commissions for MBL portfolio company sales teams — ensuring accurate, transparent, and timely commission payouts that reward performance, maintain trust with reps, and align incentives with company goals. Commission errors are morale killers; a rep who believes they were shorted commission is a rep who is already halfway out the door. Commission calculations are reviewed by entity CEO + Dr. Lewis before any payment is processed.

## When to Use
- Calculating monthly or quarterly commission payouts for each entity's reps
- Verifying commission accuracy when a rep raises a question
- Designing or updating the commission plan for an entity
- Calculating referral fees for broker channel partners

## Commission Framework

```
COMMISSION PLAN STRUCTURE (all entities):
  Commission rate: % of ACV (Allevio) or IO booking value (Column6) paid to the rep
  Rate is set by entity CEO; approved by Dr. Lewis; reviewed annually
  OTE = base salary + on-target commission (at 100% quota attainment)
  
  Accelerator: higher commission rate for performance above quota
    Standard structure: 100% of rate up to quota; 1.5× rate for 100-120% attainment; 2× rate for >120%
    Accelerator thresholds: entity CEO sets; Dr. Lewis + entity CEO approve before plan is published
    
  Ramp commission (new hires):
    Full commission rate on all closed deals during ramp period
    Commission is calculated against the ramped quota (not full quota) for attainment purposes
    Example: Month 2 of ramp; 50% quota = $300K; rep closes $250K; attainment = 83% of ramped quota
    Commission paid on $250K regardless of attainment percentage
    
ALLEVIO COMMISSION CALCULATION:
  Commission unit: ACV (annual contract value) at contract execution date
  Recognition: commission recognized when employer contract is signed (entity CEO countersigned)
  Rate: [X]% of ACV — entity CEO sets; example structure: 8% of ACV
  Example: 140-employee employer; $75 PMPM × 140 enrolled × 12 months = $126,000 ACV × 8% = $10,080 commission
  Enrolled count for commission: enrolled at contract execution (not final census count; not Month 3 count)
    Note: if enrollment differs materially from estimate post-census (>15% below), entity CEO decides whether to reconcile
  Clawback: if employer cancels within 90 days of go-live: 50% clawback of commission paid (entity CEO + Dr. Lewis authorize)
  
COLUMN6 COMMISSION CALCULATION:
  Commission unit: IO booking value (total IO dollar amount)
  Recognition: commission earned at IO signature (both parties signed)
  Rate: [X]% of IO booking value — entity CEO sets; example structure: 6% of IO value
  Example: $75,000 IO × 6% = $4,500 commission
  Delivery shortfall: if campaign underdelivers >20%: make-good runs; commission on delivered value only (entity CEO + Dr. Lewis)
  Gross margin: commission is only valid on IOs that meet the 35% margin floor; sub-margin IOs require entity CEO authorization
  Clawback: if IO cancels post-signature (agency fault): commission on delivered impressions only; entity CEO decides
  
HIVE COMMISSION / ACQUISITION BONUS:
  HIVE acquisition sourcing is not a standard commission model
  Acquisition bonus: Dr. Lewis receives recognition through salary/bonus structure determined by Matt Mathison; not a per-deal commission
  No independent per-deal commission for HIVE — Matt Mathison decides all HIVE compensation structure
  
BROKER REFERRAL FEE:
  Trigger: broker-referred employer contract is signed + employer reaches go-live
  Fee structure: % of Year 1 ACV or flat fee per enrolled employer — entity CEO sets rate; Dr. Lewis confirms
  Payment: entity CEO + Dr. Lewis authorize each referral fee payment before processing
  No payment: if employer cancels before go-live; or if referral agreement was not signed before the introduction
  
COMMISSION SPLIT (multi-rep situations):
  If two reps are involved in the same deal: entity CEO determines split before deal closes
  Standard splits: 70/30 (primary AE/SDR who sourced); or 60/40 (co-sell); entity CEO decides
  No default: all splits require entity CEO authorization before payment
  Split disputes: entity CEO final decision; Dr. Lewis may advise but does not decide
  
COMMISSION PROCESSING:
  Timing: commission calculated by the 5th of the following month; paid with the next payroll
  Calculation review: entity CEO + Dr. Lewis review commission report before payroll
  Rep receives: commission summary (deal name; ACV or IO value; rate; commission earned; any deductions)
  Disputes: rep submits within 30 days of commission statement; entity CEO + Dr. Lewis review
  
COMMISSION PLAN DOCUMENTATION:
  Each rep has a signed commission plan document (entity CEO + rep signatures)
  Commission plan changes: written; 30-day notice before effective date (if mid-year)
  Plan is published at beginning of each fiscal year; reviewed annually
```

## Output Format

```markdown
# Commission Calculation — [Entity] | [Rep Name] | [Period]
**Entity CEO reviewed:** [Date] | **Dr. Lewis reviewed:** [Date] | **Payroll date:** [Date]

---

## Deals Commissionable This Period
| Account | Close date | ACV / IO value | Commission rate | Commission earned | Notes |
|---------|-----------|---------------|-----------------|-------------------|-------|
| [Name] | [Date] | $[X] | [X%] | $[X] | [Any clawbacks; splits; deductions] |

---

## Attainment Summary
| Metric | Value |
|--------|-------|
| Quota (period) | $[X] |
| Bookings (period) | $[X] |
| Attainment % | [X%] |
| Accelerator triggered | ✅ [X×] / ❌ Not yet |

---

## Commission Summary
| Item | Amount |
|------|--------|
| Base commission | $[X] |
| Accelerator adjustment | $[X] |
| Clawback (if any) | -$[X] |
| **Net commission payable** | **$[X]** |

---

## Authorization
☐ Entity CEO reviewed ☐ Dr. Lewis reviewed ☐ Payroll submitted
```

## Output Contract
- Commission is reviewed by entity CEO + Dr. Lewis before every payroll — no commission payment is processed without dual review; the reason is not distrust of the rep; it is that commission calculations involve multiple variables (enrolled count; IO value; margin; ramp status; split; clawback) and errors in any direction create problems: underplaying the rep creates a dispute and damages trust; overpaying creates a financial liability and sets a precedent; entity CEO + Dr. Lewis dual review catches errors before they reach payroll; the review happens by the 5th of the month following the commission period; if the review isn't complete by the 5th, the commission is flagged as pending and the rep is notified with an expected resolution date
- Clawbacks are enforced — an Allevio employer who cancels within 90 days of go-live triggers a 50% clawback of the commission paid; this is not punitive; it aligns the rep's financial interest with the employer's successful onboarding; a rep who sells an employer that churns in 90 days did something wrong in qualification or onboarding; the clawback motivates the rep to be thorough in discovery, accurate in the proposal, and active in the onboarding check-ins; clawbacks require entity CEO + Dr. Lewis authorization before they're applied; they're communicated to the rep in writing with the calculation and rationale; if the churn was due to Allevio's operational failure (not the rep's), the entity CEO may waive the clawback — that's a judgment call made by entity CEO + Dr. Lewis
- HITL required: every commission payout → entity CEO + Dr. Lewis review before payroll; clawback application → entity CEO + Dr. Lewis authorize; commission split → entity CEO determines before deal closes; broker referral fee → entity CEO + Dr. Lewis authorize before processing; commission plan change → entity CEO + Dr. Lewis approve; 30-day written notice to rep; commission dispute → entity CEO + Dr. Lewis review within 30 days; sub-margin IO commission (Column6) → entity CEO authorizes; HIVE compensation → Matt Mathison decides structure

## System Dependencies
- **Reads from:** GHL (closed deals; ACV or IO value; close date; rep ownership; enrolled count at close; IO gross margin); quota assignments (sales-quota-builder); commission plan documents (SharePoint → [Entity] → Sales → Compensation → [Rep] → [Year]); clawback trigger records (employer cancellations within 90 days; Column6 underdelivery); referral fee agreements (SharePoint → Allevio → Broker-Partners); split authorizations (entity CEO records)
- **Writes to:** Commission calculation report (SharePoint → [Entity] → Sales → Commission → [Period] → [Rep]); payroll submission (entity CEO + finance system); commission summary to rep (email; monthly); clawback records (authorization; calculation; communication to rep); referral fee payment records (authorization; payment date; broker); commission dispute records (submitted; resolved; outcome)
- **HITL Required:** Every commission payout → entity CEO + Dr. Lewis review; clawback → entity CEO + Dr. Lewis; commission split → entity CEO determines; broker referral fee → entity CEO + Dr. Lewis; plan change → entity CEO + Dr. Lewis; dispute → entity CEO + Dr. Lewis; Column6 sub-margin IO → entity CEO; HIVE compensation → Matt Mathison

## Test Cases
1. **Golden path:** Allevio AE; June 2026 commission calculation. Closed 2 deals: (1) 140-employee manufacturer; $126K ACV; 8% rate; $10,080 commission; (2) 95-employee construction co.; $85.5K ACV; 8%; $6,840. Total commission: $16,920. Quota (monthly): $80K. Bookings: $211.5K. Attainment: 264%. Accelerator: >120% = 2× rate on the amount above 120% quota ($211.5K - $96K = $115.5K × 16% accelerator = $18,480; plus $16,920 at standard rate on first 120% = $16,920 × 1.5 = $25,380 — entity CEO confirms accelerator calculation). Commission summary reviewed by entity CEO + Dr. Lewis June 5. Payroll June 10. Rep receives commission summary with calculation breakdown.
2. **Edge case:** Allevio employer cancels 45 days after go-live. Rep received $10,080 commission at contract execution → Dr. Lewis: "50% clawback triggered: $5,040 clawback. Before applying: (1) Entity CEO reviews: was the cancellation due to rep's qualification failure or due to Allevio's operational issue? (2) If the employer's stated reason was 'implementation was a disaster and employees couldn't access care' — entity CEO may waive the clawback (Allevio failure, not rep failure). (3) If the reason was 'we realized we didn't have the budget and the CFO never actually approved it' — full clawback applies (qualification failure). (4) Entity CEO decides; Dr. Lewis documents. Clawback communicated to rep in writing with calculation and decision rationale. Clawback processed in next payroll if applied."
3. **Adversarial:** Rep asks "Can I get my commission advanced before the contract is countersigned? I'm confident this one is closing" → Dr. Lewis: "Commission recognition is at contract execution — both parties signed, entity CEO countersigned. Advancing commission before execution creates a liability if the deal falls through (which happens; deals that look certain sometimes don't close). If the deal is at Stage 7 and closing this week, the timing difference is days. If you need a cash flow bridge in the meantime, that's a conversation with the entity CEO about whether an advance against expected earnings is something they can accommodate — that's a non-standard arrangement that requires entity CEO discretion and a written agreement. I can't authorize commission payment before the commission trigger event has occurred."

## Audit Log
Commission calculation records (all periods; all reps; all entities; entity CEO + Dr. Lewis review date; SharePoint). Payroll submission records (date; amount; payroll system). Clawback records (trigger event; decision; calculation; rep communication; applied or waived). Commission split records (entity CEO authorization; deal; split ratio; each rep's amount). Referral fee records (broker; employer; authorization; payment). Commission dispute records (submitted; reviewed; resolved; outcome). Commission plan records (all versions; signatures; effective dates).

## Deprecation
Commission plan reviewed annually at the start of each fiscal year. Commission rates reviewed when OTE benchmarks or market conditions change. Clawback triggers reviewed when average deal size or contract length changes. Accelerator thresholds reviewed when quota model changes. Broker referral fee reviewed when Allevio's pricing or broker channel strategy changes.
