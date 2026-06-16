---
name: hr-pto-manager
description: "Manage PTO policy and leave tracking. Use when the user says 'PTO policy', 'time off policy', 'vacation policy', 'manage PTO', 'track time off', 'PTO accrual', 'PTO balance', 'PTO payout', 'leave tracking', 'sick leave policy', 'unlimited PTO', 'how much PTO does', 'PTO request', 'time off request', or 'leave management'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <design-policy|track-balance|approve-request|calculate-payout>] [--employee <name>]"
---

# HR PTO Manager

Design, manage, and track PTO (Paid Time Off) and leave policies for MBL portfolio companies. PTO policy is a significant driver of employee satisfaction, retention, and operational planning. It also has legal implications: some states have mandatory sick leave; PTO payout on termination is required in some states but not others. The goal is a policy that's competitive, operationally workable, and legally compliant in each company's state.

## When to Use
- A new portfolio company needs a PTO policy designed
- An existing PTO policy needs to be reviewed for competitiveness or compliance
- An employee's PTO balance needs to be tracked or calculated
- An employee is departing and PTO payout needs to be calculated
- A time-off request needs documentation or approval
- Matt Mathison asks what the PTO policy is at a portfolio company

## PTO Policy Framework

```
Two PTO structures — pick based on company size and culture:

1. ACCRUAL-BASED PTO:
   Employee earns PTO as they work; balance builds over time
   Example: 1.5 days/month = 18 days/year
   Pro: Easy to track; less risk of large payout at separation
   Con: Admin burden; employees feel "nickel-and-dimed" on earned time off
   Best for: Companies with >20 employees; states with complex accrual rules

2. UNLIMITED PTO (discretionary):
   No accrual; employees take what they need; manager approval required
   Pro: No accrual liability; no payout at separation (no accrued balance)
   Con: Employees often take less time off; can create inequity; harder to ensure coverage
   Best for: Professional/knowledge-worker roles; trust-based cultures
   Note: If the policy isn't enforced/encouraged, it becomes fake unlimited PTO

State law critical notes:
   California: Accrued PTO = wages; must be paid out at separation; no use-it-or-lose-it
   Arizona: No statewide PTO law, but Earned Paid Sick Time Act requires sick leave
   Utah: No mandatory PTO; payout is per company policy
   
MBL portfolio default:
   Most portfolio companies have <50 employees in Arizona, Utah, or Texas.
   Standard policy: 15 days PTO (includes sick) + 10 paid holidays = 25 total paid days off/year
   Senior/executive roles: 20 days PTO standard
```

## Output Format

### PTO Policy Document

```markdown
# Paid Time Off (PTO) Policy — <Company Name>
**Effective date:** [Date] | **Approved by:** Matt Mathison
**State(s) of operation:** [States]

---

## PTO Allotment

| Level | Annual PTO days | Notes |
|-------|----------------|-------|
| Full-time employees (year 1-3) | 15 days | Includes sick time |
| Full-time employees (year 4+) | 18 days | Loyalty increment |
| Senior / Director and above | 20 days | |
| Part-time employees | Pro-rated | Based on % of FT hours |

**Paid holidays:** [X] days/year — [List holidays or link to holiday schedule]

**Total paid days off (Year 1 employee):** [15 PTO + X holidays] = [X] days

---

## How PTO Works

**Accrual:** PTO accrues at [1.25 days/month] beginning on the first day of employment. PTO may be taken in increments of [0.5 days minimum].

**Cap:** PTO balance caps at [22 days]. Once the cap is reached, no additional PTO accrues until the balance is reduced. This prevents unlimited accrual of PTO liability.

**Approval:** PTO requests submitted at least [5 business days] in advance for planned time off; same-day or next-day approval at manager's discretion for emergency/illness.

**Rollover:** [PTO not used in the calendar year may roll over up to [5 days]. / PTO does not roll over — use it or lose it per state law / Unlimited — no tracking of balance needed.]

---

## PTO at Separation

| State | PTO payout rule |
|-------|----------------|
| Arizona | Per company policy — [payout accrued balance / no payout — must be stated in policy] |
| Utah | Per company policy — [same] |
| California | **Must pay out all accrued PTO at separation — this is a legal requirement** |

**[Company Name] policy on payout:** [Accrued PTO paid out at separation at current hourly rate / No payout — use-it-or-lose-it annually / Unlimited PTO: no payout because no accrued balance]

---

## PTO Request and Approval Process

1. Employee submits PTO request to manager via [email / HR system / calendar] at least 5 business days in advance for planned time off
2. Manager approves or declines within 2 business days
3. Approved PTO logged in [payroll system / HR system]
4. PTO balance updated in employee record

**Approval criteria:** PTO requests are approved unless: (a) business need requires coverage during that period, or (b) multiple team members are requesting overlapping time that creates coverage risk. Managers may not deny PTO without business justification.

---

## Sick Leave

**Sick leave:** PTO includes sick time. Employees are not required to disclose the nature of an illness to use PTO.

**Arizona Earned Paid Sick Time Act:** Employees accrue sick leave separately per AZ law — 1 hour per 30 hours worked, up to 40 hours/year for companies with 15+ employees. [Company] PTO policy meets or exceeds this requirement.

**Extended illness:** Employees who need more than [5 consecutive sick days] should consult HR regarding FMLA eligibility and short-term disability options.
```

---

### PTO Balance Tracker

```markdown
# PTO Balance — <Employee Name>
**Company:** <Entity> | **Start date:** [Date] | **Current date:** [Date]

| Period | Accrued | Used | Balance |
|--------|---------|------|---------|
| [Month 1] | 1.25 days | [X] days | [X] days |
| [Month 2] | 1.25 days | | |
| **YTD Total** | **[X] days** | **[X] days** | **[X] days** |

**Payout calculation at separation (if applicable):**
[Balance] × [Daily rate = annual salary / 260 working days] = $[X] payout
```

## Output Contract
- State law always governs — PTO policy cannot override state law; California's mandatory PTO payout, Arizona's Earned Paid Sick Time Act, and any state-specific requirements override company policy; when an MBL portfolio company operates in a new state, Dr. Lewis checks the state's PTO/sick leave law before applying the standard policy
- Payout policy must be stated in writing — if the company's policy is "no PTO payout at separation," that must be in the written policy; an unwritten "no payout" policy is difficult to enforce; many employees assume they'll be paid out unless the policy explicitly says otherwise; the policy document makes it unambiguous
- Approval cannot be arbitrary — PTO denial must have a business reason; managers who deny PTO without explanation create morale and legal risk; the policy states that approvals are based on business need, and denials require a documented reason; patterns of denial for certain employees (but not others) create discrimination risk
- Unlimited PTO still needs management — an unlimited PTO policy without encouragement to actually use it becomes "zero PTO in practice"; Dr. Lewis monitors whether employees with unlimited PTO are actually taking time off; employees who haven't taken time off in 6+ months may be burning out; Dr. Lewis flags and encourages manager conversations
- HITL required: Dr. Lewis designs and reviews PTO policy; Matt Mathison approves before distribution; managers approve individual PTO requests; PTO payout calculations at separation reviewed by Dr. Lewis before payroll processes; California payout is mandatory and non-negotiable

## System Dependencies
- **Reads from:** Employee start dates, PTO elections, payroll system (for accrual tracking), state leave law databases, offer letters (for PTO commitment made at hire)
- **Writes to:** PTO policy (SharePoint/HR/<Company>/Policies/); employee PTO records (payroll system); separation PTO payout (final paycheck input)
- **HITL Required:** Dr. Lewis designs policy; Matt Mathison approves; managers approve requests; Dr. Lewis calculates separation payouts; California PTO mandatory payout confirmed before final check

## Test Cases
1. **Golden path:** Allevio (Arizona, 18 employees) PTO policy design → Standard: 15 days PTO (includes sick) + 10 paid holidays; accrual: 1.25 days/month starting Day 1; cap: 22 days; rollover: up to 5 days carry to next year (rest forfeits); AZ EPTA compliance: verified — 15 days/year exceeds AZ requirement of 40 hours/year; payout at separation: accrued balance paid at hourly rate (AZ doesn't require but company policy is to pay out — stated in writing); policy approved by Matt Mathison; distributed to all employees with acknowledgment; employee handbook updated
2. **Edge case:** An employee is departing and claims they have 25 days of accrued PTO but the payroll system shows 12 days → discrepancy must be resolved before the final paycheck; pull the accrual calculation from start date using the accrual rate and all approved PTO taken; reconcile against the payroll record; if there's a system error, correct it and pay the accurate balance; never pay more or less than the documented accrued balance; document the reconciliation before the paycheck is issued
3. **Adversarial:** A CEO wants to implement a "use-it-or-lose-it" policy (no rollover) in California → this is illegal in California; accrued PTO is considered wages and cannot be forfeited; explain: "Use-it-or-lose-it PTO is not permitted in California. Accrued PTO is treated as earned wages under CA law — requiring employees to forfeit earned wages is an illegal wage theft claim waiting to happen. We can implement a cap (stop accruing at X days) and strongly encourage employees to take time off, but we cannot require them to forfeit earned PTO. The cap is how California-compliant companies manage the liability."

## Audit Log
All PTO policy versions retained with effective dates and approvals. Individual PTO accrual records retained by employee and period. PTO payout calculations at separation retained. PTO denial decisions documented. AZ EPTA compliance tracking retained.

## Deprecation
Retire when portfolio companies have HRIS-integrated PTO tracking with automated accrual calculations, manager approval workflows, and state law compliance checks that don't require Dr. Lewis to manually track PTO balances and payout calculations for each employee.
