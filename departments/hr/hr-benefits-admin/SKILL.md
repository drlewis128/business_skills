---
name: hr-benefits-admin
description: "Administer and manage employee benefits. Use when the user says 'employee benefits', 'benefits enrollment', 'benefits administration', 'health insurance enrollment', 'benefits package', 'open enrollment', 'employee benefits setup', 'new hire benefits', 'benefits questions', 'health plan', 'dental vision benefits', 'benefits review', '401k enrollment', or 'manage benefits'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--trigger <new-hire|open-enrollment|annual-review|question>] [--employee <name>]"
---

# HR Benefits Admin

Administer and manage employee benefits for MBL portfolio companies — health insurance, dental, vision, 401(k), PTO, and any other benefits offered. Benefits administration is both a compliance function (COBRA, ACA, 401k) and a retention function (employees who understand and value their benefits are more loyal). Poor benefits administration — enrollment delays, confusing plan information, missed COBRA notices — creates legal exposure and erodes trust.

## When to Use
- A new hire needs benefits enrollment (typically within 30 days of start date)
- Annual open enrollment period is approaching
- An employee has a qualifying life event (marriage, birth, divorce, loss of other coverage)
- An employee has a benefits question
- A portfolio company is setting up a benefits package for the first time
- A benefits vendor (insurance broker, 401k provider) needs to be evaluated or renewed

## Benefits Administration Framework

```
Benefits categories for MBL portfolio companies:

Required by law (ACA, ERISA):
  - ACA compliance: companies with 50+ FTEs must offer affordable health coverage
  - COBRA continuation: offered to separated employees within 14 days of coverage loss
  - FMLA: companies with 50+ employees must offer up to 12 weeks unpaid leave
  - Workers' compensation: required in all states (state-specific)

Standard benefits package (MBL portfolio default for 10+ employee companies):
  - Health insurance (medical, dental, vision) — company contributes to premium
  - 401(k) — with or without employer match
  - PTO policy — see pto-policy-manager skill
  - Paid holidays

Optional / competitive benefits:
  - Life insurance (often low-cost via group plan)
  - Short-term/long-term disability
  - HSA/FSA (paired with high-deductible health plan)
  - Professional development stipend

Benefits broker relationship:
  MBL portfolio companies use a benefits broker who shops multiple carriers.
  Broker renews coverage annually (typically 60-90 days before renewal date).
  Broker handles carrier negotiations, compliance, and employee Q&A support.
```

## Output Format

```markdown
# Benefits Administration — <Company Name>
**Prepared by:** Dr. John Lewis | **Date:** <Date>
**Trigger:** [New hire enrollment / Open enrollment / Annual review / Qualifying life event]

---

## Current Benefits Summary — <Company Name>

| Benefit | Plan / Provider | Employee cost | Employer cost | Notes |
|---------|---------------|-------------|-------------|-------|
| Medical | [Carrier — Plan name] | $[X]/month | $[X]/month | [Deductible, OOP max] |
| Dental | [Carrier] | $[X]/month | $[X]/month | |
| Vision | [Carrier] | $[X]/month | $[X]/month | |
| 401(k) | [Provider] | Employee contribution | [Match: X% up to X%] | [Vesting schedule] |
| Life insurance | [Carrier] | $0 | $[X]/employee | [Coverage: $[X]×salary] |
| PTO | — | — | — | [X days/year / Unlimited / Accrual] |
| Paid holidays | — | — | — | [X days/year] |

**Annual open enrollment:** [Month/Year]
**Benefits broker:** [Name / Company / Contact]
**Plan year:** [Start] to [End]

---

## New Hire Enrollment Checklist

**Employee:** [Name] | **Start date:** [Date] | **Enrollment deadline:** [Date — typically Day 30]

| Benefit | Election | Status | Notes |
|---------|---------|--------|-------|
| Medical | Elected: ✅ / Waived: — | [Plan name + tier: Employee only / Employee+Spouse / Family] | |
| Dental | ✅ / — | | |
| Vision | ✅ / — | | |
| 401(k) | Contribution: [X%] | Enrolled ✅ / Not yet | [Vesting starts: date] |
| HSA / FSA | ✅ / — | $[X] election | |
| Life insurance | Enrolled — default employer coverage | | |
| Beneficiary designation | ✅ / 🔴 Missing | | Required for life insurance and 401k |

**Enrollment deadline:** [Date] — **⚠️ Missing deadline may mean employee must wait until next open enrollment to elect coverage.**

---

## Open Enrollment Checklist

**Open enrollment window:** [Start date] to [End date]
**New plan year starts:** [Date]

| Task | Owner | Deadline | Status |
|------|-------|---------|--------|
| Rate increase announced by carrier | Benefits broker | [Date] | |
| New plan year options communicated to employees | Dr. Lewis | [Date — 2 weeks before enrollment window] | |
| Employee enrollment window open | Benefits broker / HR system | [Date] | |
| Employee enrollment complete (all elections in) | Employees | [End of window] | |
| Non-respondents followed up | Dr. Lewis | [Last 3 days of window] | |
| Final elections submitted to carrier | Benefits broker | [Date] | |
| New ID cards / plan docs distributed | Carrier | By plan start date | |

**Rate change summary:**
- Medical: [+X% / -X% / No change]
- Dental/Vision: [No change typical]
- 401k: [No change — contribution elections are separate]

**Recommendation to employees:** [If rates increased significantly, should employees reconsider plan tier or HSA contribution? Prepare a 1-page plain-English summary of changes.]

---

## Qualifying Life Event (QLE) Tracker

**Employee:** [Name] | **Event type:** [Marriage / Birth / Divorce / Loss of other coverage]
**Event date:** [Date] | **Election change window:** 30 days from event

| Action | Deadline | Status |
|--------|---------|--------|
| Employee notifies HR of QLE | [Date] | |
| Supporting documentation (marriage cert, birth cert) | [Date — 30 days from event] | |
| Coverage change submitted to carrier | [Date] | |
| New effective date confirmed | [Date] | |

---

## COBRA Administration

**Trigger:** Employee separation / Reduction in hours below eligibility threshold

| Step | Required | Deadline | Status |
|------|---------|---------|--------|
| COBRA election notice sent to employee | ✅ Required | Within 14 days of coverage loss | |
| COBRA period: 18 months (termination) / 36 months (divorce) | — | — | |
| Premium: employee pays 102% of full premium | — | — | |
| Employee elects or declines COBRA | — | 60 days from notice | |

**COBRA administration note:** COBRA notice failure carries per-day penalties. This is sent within 14 days, no exceptions.

---

## Annual Benefits Review

| Benefit | Current cost | Market benchmark | Recommendation |
|---------|------------|----------------|---------------|
| Medical (per employee) | $[X]/year | $[X] (industry) | Renew / Renegotiate / Switch carrier |
| Dental/Vision | $[X]/year | | |
| 401k (match cost) | $[X]/year | | |
| **Total benefits cost per employee** | **$[X]/year** | | |

**Benefits cost as % of total compensation:** [X%] — [below / at / above market]
**Renewal recommendation:** [Proceed / Negotiate / Shop alternatives]
```

## Output Contract
- Enrollment deadlines enforced — a new hire who misses the 30-day enrollment window typically cannot elect coverage until the next open enrollment period; Dr. Lewis tracks enrollment status and follows up at Day 15 if elections have not been submitted; the employee is reminded at Day 25 that the deadline is approaching; the deadline is not waived by the company — it is set by the carrier
- COBRA notice within 14 days — this is a federal requirement under ERISA; the 14-day clock starts when coverage ends, not when the company decides to send the notice; failure to provide timely COBRA notice carries statutory penalties; this is a Day-of task on the offboarding checklist, not a "whenever" task
- Benefits explained in plain English — benefits communications written for people who have never chosen a health plan; avoid insurance jargon without explanation; the difference between a PPO and HDHP matters when an employee is choosing; a one-page plain-English comparison is standard in any enrollment communication
- ACA compliance tracked — any MBL portfolio company growing toward 50 FTEs needs to track their ACA "applicable large employer" status; at 50 full-time equivalent employees, mandatory coverage requirements kick in; Dr. Lewis tracks headcount and flags when a company is approaching the threshold
- HITL required: Dr. Lewis administers benefits enrollment and tracks compliance; benefits broker handles carrier relationships and renewals; Matt Mathison approves any change to the benefits package that increases cost by >$10K annually; COBRA notices are sent by Dr. Lewis or the benefits broker on the offboarding day

## System Dependencies
- **Reads from:** Employee records, enrollment elections, carrier plan documents, benefits broker reports, ACA headcount tracker
- **Writes to:** Benefits enrollment records (SharePoint/HR/<Company>/Benefits/); COBRA notices; carrier enrollment submissions; 401k provider enrollment; benefits summary for new hires
- **HITL Required:** Dr. Lewis coordinates enrollment and compliance; benefits broker handles carrier; Matt Mathison approves package changes >$10K annually; COBRA notices never delayed

## Test Cases
1. **Golden path:** Allevio new hire starts June 30 → Benefits packet sent June 27 with enrollment instructions and deadline of July 30; Dr. Lewis follows up July 15 ("Your benefits enrollment deadline is July 30 — have you had a chance to complete it?"); employee completes enrollment July 22: medical (HDHP + HSA $1,500/year), dental, vision, 401k (4% contribution); beneficiary designation completed; enrollment confirmed with carrier by July 25; new ID cards arrive August 1; employee is covered effective July 1
2. **Edge case:** An employee asks to add their domestic partner to health coverage → this depends on state law and plan rules; some carriers cover domestic partners, some do not; some states require it, others do not; respond: "Let me check your specific carrier and state. Domestic partner coverage varies — some plans include it, some don't. I'll confirm with the broker within 24 hours. If it's available, you'll need to submit [documentation] within [QLE window]." Do not promise coverage before verifying.
3. **Adversarial:** A small portfolio company (8 employees) asks if they need to offer benefits → legally, companies with fewer than 50 FTEs are not required to offer health insurance under ACA; however, not offering any benefits severely limits recruiting competitiveness; respond: "You're below the ACA mandate threshold, so it's not legally required. But in the current market, candidates — especially for mid-level roles — often expect health benefits. The cost to offer group health is roughly $400-$600/month/employee for a reasonable plan. The cost of not offering it is often losing candidates to companies that do. I'd recommend at minimum offering a basic medical plan and a simple PTO policy — it's a relatively small investment that significantly increases recruiting success."

## Audit Log
All enrollment elections retained by employee and date. COBRA notices retained with delivery dates. Open enrollment period records retained. ACA headcount tracking retained. Benefits vendor contracts and renewal decisions retained. Annual benefits cost reports retained.

## Deprecation
Retire when each portfolio company has a dedicated HR manager and a PEO or benefits broker who handles enrollment administration, COBRA notices, ACA compliance tracking, and open enrollment communications without requiring Dr. Lewis's coordination for each transaction.
