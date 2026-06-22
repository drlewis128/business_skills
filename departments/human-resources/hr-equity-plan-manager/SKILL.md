---
name: hr-equity-plan-manager
description: "Manage employee equity and option plans for MBL Partners portfolio companies. Use when the user says 'equity plan', 'stock options', 'option grant', 'option plan', 'equity compensation', 'employee equity', 'vesting schedule', 'vesting cliff', 'option vesting', 'exercise price', 'strike price', 'stock option exercise', 'ISO', 'NSO', 'incentive stock option', 'non-qualified stock option', '409A', '409A valuation', 'equity grant', 'phantom equity', 'phantom stock', 'profit interest', 'equity pool', 'option pool', 'dilution', 'cap table equity', 'equity refresh', 'option refresh', 'equity acceleration', 'change of control', 'double trigger', 'single trigger', 'unvested options', 'vested options', 'equity termination', or 'option expiration'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--employee <name>] [--action <grant|vest|exercise|terminate|refresh|409a>] [--amount <shares>]"
---

# HR Equity Plan Manager

Administer employee equity and option plans — managing grants, vesting schedules, 409A valuations, exercising events, and termination treatment — for any MBL Partners portfolio company with an equity incentive program. Equity plan administration is a legal and tax function; incorrect 409A valuations, missed grant documentation, or improper ISO classification creates IRS exposure and investor liability; Dr. Lewis coordinates with legal counsel and outside accountants on all equity plan matters.

## When to Use
- A new employee equity grant is being authorized
- Vesting schedule tracking or cliff dates need to be confirmed
- A 409A valuation is due or has expired (>12 months old)
- An employee is terminating and option treatment needs to be determined
- A change-of-control event requires equity acceleration review

## Equity Plan Framework

```
EQUITY TYPES BY ENTITY:

  C-CORP ENTITIES (Column6 if structured as C-corp):
    ISO (Incentive Stock Options): preferred for employees; favorable tax treatment
      Requirements: ISO grant price ≥ FMV per 409A; $100K annual ISO limit per employee
      Tax event: at exercise (AMT potential); at sale (long-term capital gains if held 1+ year)
    NSO (Non-Qualified Stock Options): simpler; no $100K cap; used for amounts above ISO limit
      Tax event: at exercise (ordinary income on spread)
    Equity pool: typically 10-20% of fully diluted shares reserved for employee equity
    
  LLC/PARTNERSHIP ENTITIES (Allevio, HIVE if structured as LLC):
    Profits Interest: most common equity-like instrument for LLC employees
      Hurdle amount: must be set at current FMV at grant (per IRS requirements)
      Tax treatment: structured correctly, no income at grant; long-term capital gains at exit
    Phantom Equity / Phantom Stock: simpler; cash payment tied to equity value at exit
      No cap table dilution; no 409A required (but valuation still recommended)
      Dr. Lewis and legal counsel determine which structure fits each entity

409A VALUATION:
  Required: before any option grant (ISOs/NSOs in C-corp); 
    recommended: annually; required if >12 months since last valuation
  Performed by: independent third-party valuation firm (IRS requirement for IRS safe harbor)
  Cost: $5K-$15K per valuation; entity expense
  Dr. Lewis orders 409A before any grant to an employee; expired 409A = grant price risk
  
STANDARD GRANT TERMS:
  Vesting schedule: 4 years with 1-year cliff (industry standard)
    Year 1: 25% vests at 12-month anniversary (cliff)
    Years 2-4: 1/48th per month (monthly vesting after cliff)
  Exercise period post-termination: 90 days (ISOs); 10 years from grant date (plan maximum)
  Termination for cause: unvested and vested-but-unexercised options may be forfeited (per plan)
  Change of control:
    Double trigger: vesting accelerates only if (1) change of control AND (2) employee is terminated
    Single trigger: vesting accelerates on change of control alone (less common; more expensive)
    MBL standard: double trigger (aligned with PE acquisition context)

GRANT DOCUMENTATION:
  Every grant requires: board/member approval; grant agreement signed by employee;
    409A valuation confirming exercise price; option register entry
  No verbal grants — all equity is documented and signed before communication to employee
  Dr. Lewis coordinates with legal counsel for grant documentation
  Dr. Lewis maintains option register (number of shares; grant date; strike price; vesting schedule; expiration)
  
TERMINATION TREATMENT:
  Voluntary / involuntary (non-cause): 90 days post-termination to exercise vested options (ISO standard)
  Termination for cause: review plan document — may forfeit all options (vested and unvested)
  Dr. Lewis reviews option register and grant agreement before communicating option treatment to departing employee

EQUITY REFRESH:
  Annual or milestone-based refresh grants for high performers and key talent
  Refresh size: typically 25-50% of initial grant
  Requires: Dr. Lewis recommendation; entity CEO approval; Matt Mathison approval for Director+
  409A must be current before refresh grants are issued
```

## Output Format

```markdown
# Equity Grant Record — [Employee Name] | [Entity] — [Date]
**Grant type:** [ISO / NSO / Profits Interest / Phantom] | **Authorized by:** Dr. Lewis + Entity CEO

---

## Grant Terms

| Item | Detail |
|------|--------|
| Grant date | [Date] |
| Number of shares/units | [X] |
| Exercise price (FMV per 409A) | $[X] per share |
| 409A valuation date | [Date] — within 12 months: [Y/N] |
| Vesting schedule | 4 years / 1-year cliff |
| Cliff date | [Date] (12 months from grant) |
| Full vest date | [Date] (48 months from grant) |
| Post-termination exercise period | 90 days (ISO) |
| Change of control treatment | Double trigger acceleration |

---

## Option Register Summary — [Entity]

| Employee | Grant date | Shares | Strike | Vested | Unvested | Expiration |
|----------|-----------|--------|--------|--------|---------|-----------|
| [Name] | [Date] | [X] | $[X] | [X] | [X] | [Date] |

---

## 409A Valuation Status
**Most recent 409A:** [Date] | **Expires:** [Date + 12 months] | **Status:** Current / ⚠️ Expiring / ❌ Expired
```

## Output Contract
- No grant is made without a current 409A valuation — a stock option grant with an exercise price below FMV (because the 409A was expired and actual FMV has risen) creates IRS 409A excise tax liability for the employee of 20% + interest on the spread; this is not a theoretical risk — the IRS has assessed these penalties; Dr. Lewis orders a 409A refresh before any new grant if the last valuation is >10 months old (building in 2 months of cushion before the 12-month expiration)
- All grants are in writing before any communication to the employee — a manager who tells an employee "you're getting 10,000 options" before the board has approved and the grant agreement is signed has created an enforceable verbal commitment; the board approval, grant agreement, and option register update all happen before the employee is informed of the specific terms; Dr. Lewis does not communicate grant amounts until documentation is executed
- Termination option treatment is determined from the plan document, not from memory — option plan documents vary by entity; the 90-day post-termination exercise window is the ISO standard but some plans have different terms; Dr. Lewis reads the specific plan document for every departing optionholder to confirm their specific terms before communicating; a mistake on post-termination exercise window advice is an employment law liability
- HITL required: new equity grant → Dr. Lewis + entity CEO approve; Director+ grant → Matt Mathison approves; 409A order → Dr. Lewis initiates (before any grant); grant documentation → legal counsel reviews; option register update → Dr. Lewis confirms; termination option treatment → Dr. Lewis reads plan document; change of control acceleration → Dr. Lewis + legal counsel; equity refresh → Dr. Lewis recommendation + CEO approval + Matt for Director+

## System Dependencies
- **Reads from:** pe-valuation-model (409A context; FMV data); hr-hiring-scorecard (position level — for grant size range); legal-equity-cap-table-manager (cap table impact of grants); option plan document (entity-specific); 409A valuation report (external firm); board/member meeting minutes (grant approval)
- **Writes to:** Option register (SharePoint → Legal → Equity → [Entity] → Option Register); grant agreement (legal counsel drafts; Dr. Lewis coordinates); board/member consent (legal counsel); employee grant summary letter; hr-offboarding-manager (option treatment at separation); cap table (legal-equity-cap-table-manager)
- **HITL Required:** Grant → Dr. Lewis + CEO; Director+ → Matt Mathison; 409A → Dr. Lewis initiates; grant docs → legal counsel; option register → Dr. Lewis confirms; termination treatment → Dr. Lewis reads plan; change of control → Dr. Lewis + legal; refresh → Dr. Lewis + CEO + (Matt for Director+)

## Test Cases
1. **Golden path:** Column6 VP Sales hired. Grant authorized: 50,000 ISOs (within $100K ISO limit at current FMV) at $0.42/share (current 409A, 6 months old — current). 4-year vest; 1-year cliff. Legal counsel prepares grant agreement. Board consent signed. Option register updated. Employee signs grant agreement. Employee notified of full terms in writing: grant date; cliff date; full vest date; exercise price; post-termination window.
2. **Edge case:** Allevio CEO asks to grant profit interests to a key Care Coordinator as a retention tool → Dr. Lewis: "Profit interests are the right instrument for an LLC. I need 3 things before we proceed: (1) legal counsel confirms Allevio's operating agreement permits profit interest grants; (2) a current FMV determination so we can set the hurdle correctly; (3) board/member consent. I'll get this started this week. Timeline to execute: 3-4 weeks with legal counsel. Do not communicate the specific amount to the employee until all documentation is signed."
3. **Adversarial:** An employee terminating voluntarily asks about their options and the CEO tells them they have 30 days to exercise → Dr. Lewis: "I need to verify this against the actual plan document before you confirm anything to the departing employee. Standard ISO is 90 days post-termination. If our plan document says something different, that's what controls — not the standard. I'll read the plan today and give you the confirmed window in writing, which you then share with the employee. Please don't confirm the 30 days until I've verified."

## Audit Log
All option grants retained permanently (IRS audit risk is perpetual for ISOs). 409A valuation reports retained permanently. Grant agreements retained permanently. Option register maintained as living document. Board/member consents retained permanently. Post-termination exercise records retained. Change of control acceleration records retained.

## Deprecation
Equity plan administration is a permanent function for each entity that has an equity plan. The plan is reviewed when new financing rounds change FMV materially, when entity structure changes, or at exit. Plan document amendments require board consent + legal counsel.
