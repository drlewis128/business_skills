---
name: hr-offer-builder
description: "Build and extend employment offers for MBL Partners portfolio company roles. Use when the user says 'make an offer', 'extend an offer', 'offer letter', 'employment offer', 'job offer', 'offer package', 'offer terms', 'offer comp', 'offer salary', 'negotiate offer', 'offer negotiation', 'competing offer', 'counter offer', 'candidate has another offer', 'offer declined', 'offer accepted', 'verbal offer', 'written offer', 'start date', 'sign-on bonus', 'signing bonus', 'relocation package', 'offer approval', 'how much to offer', 'construct the offer', 'draft the offer letter', or 'offer expiration'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--candidate <name>] [--role <role-title>] [--entity <mbl|allevio|hive|column6>] [--action <build|extend|negotiate|counter>] [--comp <$X>]"
---

# HR Offer Builder

Construct and extend employment offers — including base salary, variable pay, benefits, equity, and non-monetary terms — ensuring the offer is within the approved comp range, authorized by Dr. Lewis before extension, and documented in a signed offer letter before the candidate's start date. Every offer is a binding commitment; all terms in the verbal offer match the written offer exactly.

## When to Use
- A hiring scorecard has been authorized by Dr. Lewis (hr-hiring-scorecard complete)
- Offer terms need to be determined and approved before verbal offer
- A candidate has a competing offer and is negotiating
- An offer letter needs to be drafted

## Offer Construction Framework

```
STEP 1 — VERIFY AUTHORIZATION:
  Confirm Dr. Lewis has authorized offer via hr-hiring-scorecard
  Confirm comp range from hr-job-profiler
  VP+: confirm Matt Mathison has been notified before verbal offer is made

STEP 2 — BUILD OFFER TERMS:

  BASE SALARY:
    Start at target (50th-75th percentile from role profile)
    Adjust based on candidate's experience level vs. the role benchmark
    Floor: never below the role profile floor
    Stretch: available only with Dr. Lewis explicit approval + specific rationale
    
  VARIABLE COMPENSATION (if applicable):
    Allevio commercial roles: bonus tied to employer GRR and enrollment targets
    Column6 commercial roles: commission 8-10% of new ACV; OTE documented
    HIVE operational roles: no variable typical at IC level; discretionary at Director+
    MBL: discretionary bonus based on fund performance (Matt Mathison authorizes)
    
  BENEFITS (standard MBL portfolio company package):
    Medical/dental/vision: employer-contributed (per entity plan); start date eligibility documented
    PTO: minimum 10 days + holidays; AZ Earned Sick Time mandatory (40 hrs/year AZ); UT 24 hrs/year
    401(k): company match (per entity plan; document match %); 6-month or 1-year vesting minimum
    
  EQUITY (if applicable):
    Option grants at IC level: Dr. Lewis approves; vesting schedule per equity plan
    Director+: equity package requires Matt Mathison approval
    Document: number of options; exercise price; vesting schedule; cliff; expiration
    409A valuation used as FMV basis — Dr. Lewis ensures current 409A before any grant
    
  NON-MONETARY TERMS:
    Start date: at least 2 weeks from offer acceptance (respect notice periods)
    Work arrangement: on-site / hybrid / remote (per entity policy)
    Relocation: case-by-case; Dr. Lewis approves any relocation assistance
    Sign-on bonus: used only when base comp cannot reach market; structured with 1-year clawback
    
STEP 3 — VERBAL OFFER (before written):
  Hiring manager delivers verbal offer; Dr. Lewis available for questions
  Confirm all terms verbally match what will be in the written letter
  Give candidate 48-72 hours to respond; not less than 24 hours
  Competing offer response: evaluate competing offer package specifically
    If competing offer is in the range: hold or counter within approved band
    If competing offer exceeds stretch: Dr. Lewis and entity CEO decide whether to match
    Never "auction" the candidate — one counter maximum

STEP 4 — WRITTEN OFFER LETTER:
  Issued same day as verbal acceptance (not after)
  Must include: base salary; start date; FLSA classification (exempt/non-exempt); benefits summary;
    at-will employment language; background check contingency; arbitration clause (per entity policy)
  Signed by entity CEO; countersigned by candidate
  Background check completes before start date (not before offer — contingent offer standard)

COMPETING OFFER PROTOCOL:
  Candidate discloses a competing offer:
    Ask: total comp (base + bonus + equity + benefits) — not just base
    Compare full package, not just salary
    If within range: Dr. Lewis decides whether to counter or accept candidate's decline
    Counter maximum: 1 time; if candidate declines counter, move to next finalist
    Document: competing offer amount; MBL counter; candidate decision
```

## Output Format

```markdown
# Offer Summary — [Candidate Name] | [Role] | [Entity] — [Date]
**Authorized by:** Dr. Lewis | **Status:** Pending verbal / Verbal accepted / Written signed

---

## Offer Terms

| Component | Amount / Terms |
|-----------|--------------|
| Base salary | $[X]/year |
| Variable / commission | [X%] of [metric]; OTE $[X] |
| Sign-on bonus (if any) | $[X]; 1-year clawback |
| Start date | [Date] |
| Work arrangement | [On-site / Hybrid / Remote] |
| PTO | [X days] + AZ Earned Sick Time (40 hrs/yr) |
| 401(k) match | [X%] match; [X]-year vest |
| Equity (if any) | [X options] @ $[exercise price]; [4-yr vest / 1-yr cliff] |

---

## Competing Offer Status
☐ No competing offer disclosed
☐ Competing offer: $[X] total comp at [Company] — MBL counter: $[X] — Outcome: [accepted/declined]

---

## Offer Status
☐ Verbal offer extended: [Date] by [Name]
☐ Verbal accepted: [Date]
☐ Written offer letter issued: [Date]
☐ Written offer signed: [Date]
☐ Background check initiated: [Date]
```

## Output Contract
- Verbal offer terms must match written offer exactly — a verbal offer that includes a signing bonus and a written offer that omits it creates a contract dispute and damages the candidate relationship; Dr. Lewis reviews the written offer letter draft before it is sent to confirm it matches the verbal exactly; any discrepancy between verbal and written is resolved before the letter is sent, not after
- One counter per competing offer — bidding wars damage the entity's negotiating position and set a poor precedent with the new hire (the first impression of the entity is "they lowball and then cave"); Dr. Lewis authorizes one counter maximum; if the candidate declines the counter, the offer is withdrawn and the next finalist is contacted; the entity does not continue negotiating after one counter
- All non-standard terms require explicit approval — a relocation package, an unusually large sign-on bonus, or a non-standard commission structure that has not been pre-approved by Dr. Lewis (and Matt Mathison for VP+) is not offered verbally on the spot; if the candidate raises a request during the verbal offer call that was not in the approved offer terms, the response is "let me get back to you on that within 24 hours"; no verbal commitments to non-standard terms are made without Dr. Lewis approval
- HITL required: offer authorization → Dr. Lewis confirms hr-hiring-scorecard approval before verbal; verbal offer → hiring manager delivers with Dr. Lewis available; counter to competing offer → Dr. Lewis decides; offer letter draft → Dr. Lewis reviews; equity offer → Dr. Lewis approves options; equity Director+ → Matt Mathison approves; sign-on bonus → Dr. Lewis approves with clawback language

## System Dependencies
- **Reads from:** hr-hiring-scorecard (authorization confirmation); hr-job-profiler (approved comp range; role level); hr-compensation-benchmarker (market validation); hr-equity-plan-manager (if equity is in the package); hr-background-check (contingency language in offer)
- **Writes to:** Offer summary (SharePoint → HR → Offers → [Entity] → [Candidate] → [Date]); offer letter (template filled); candidate pipeline tracker (status: offered); hr-onboarding-planner (trigger: start date confirmed); payroll system (compensation record); QuickBooks (budget confirmation of new FTE cost)
- **HITL Required:** Offer authorization → Dr. Lewis confirms; verbal offer → hiring manager with Dr. Lewis available; competing offer counter → Dr. Lewis decides; non-standard terms → Dr. Lewis approves; equity → Dr. Lewis + (Matt for Director+); offer letter → Dr. Lewis reviews; VP+ offer → Matt notified

## Test Cases
1. **Golden path:** Column6 Senior Account Manager. Offer: $92K base; $15K OTE commission (10% new ACV); 10 days PTO + sick; 401(k) 3% match; hybrid. Verbal delivered by Column6 CEO. Candidate accepts verbally. Written letter issued same day. Background check initiated. Candidate starts in 2 weeks.
2. **Edge case:** Candidate discloses a competing offer at $98K base vs. MBL's $92K offer → Dr. Lewis: "Their $98K offer is $6K above our target and $2K above our stretch. Full package comparison: competing offer has no equity; no OTE upside; lower 401(k) match. MBL's total comp at OTE is $107K vs. $98K at the competitor. Recommended response: explain total OTE package directly to candidate. No base counter needed — the OTE story is the right comparison. If candidate still wants base match: Dr. Lewis decision point."
3. **Adversarial:** Hiring manager verbally promises candidate 4 weeks PTO and a company car during the offer call before consulting Dr. Lewis → Dr. Lewis: "I need to correct what was communicated on that call before the letter goes out. Our standard package is 10 days PTO + AZ Sick Time. A company car is not a standard benefit at Column6. I'm calling the candidate today to clarify: 'I want to make sure we communicate the full package clearly before we send the written offer.' I'll handle the call. This will not create a legal obligation if corrected before written offer, but we need to move quickly."

## Audit Log
All offer summaries retained. Written offer letters retained permanently (employment records). Competing offer records retained (terms; counter; outcome). Authorization records from Dr. Lewis retained. Non-standard terms approvals retained. VP+ Matt Mathison notifications retained.

## Deprecation
Offer letter templates reviewed annually for compliance with state employment law changes (AZ, UT). Commission and OTE structures reviewed when entity comp plans are updated.
