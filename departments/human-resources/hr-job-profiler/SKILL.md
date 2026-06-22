---
name: hr-job-profiler
description: "Profile a role before posting for MBL Partners portfolio companies. Use when the user says 'create a job profile', 'job profiler', 'role profile', 'define the role', 'what are we hiring for', 'role definition', 'job definition', 'job description', 'write a JD', 'define job outcomes', 'role outcomes', 'what does this person do', 'what do we need', 'hiring plan', 'new role', 'open a role', 'role opening', 'headcount request', 'new headcount', 'backfill role', 'backfill position', 'replacement hire', 'what should we hire for', 'role clarity', 'job clarity', 'role spec', 'job spec', 'position spec', 'comp range for role', 'salary range for role', 'what should we pay', 'must-haves for the role', 'competencies for the role', 'THRIVE hiring', or 'outcomes-based job profile'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--role <role-title>] [--level <individual-contributor|manager|director|vp>] [--type <new|backfill>]"
---

# HR Job Profiler

Define a role completely before any sourcing begins — outcomes first, competencies second, compensation range third — for any MBL Partners portfolio company (Allevio, HIVE, Column6) or MBL itself. A job profile written around tasks and duties produces mediocre candidates; a job profile written around outcomes and the problem being solved attracts people who care about results; Dr. Lewis reviews all role profiles and approves all hires above bookkeeper level; VP+ roles require Matt Mathison awareness before posting.

## When to Use
- A hiring manager requests a new headcount or backfill
- A role needs to be defined before sourcing starts
- Compensation range needs to be anchored to outcomes and market data
- A prior job description produced bad candidate pools

## Job Profiling Framework

```
STEP 1 — ROLE CONTEXT:
  Entity: [MBL | Allevio | HIVE | Column6]
  Role title: [working title]
  Reports to: [manager role]
  Type: new headcount | backfill (departing person: [name])
  Approval status:
    <$40K total comp: Dr. Lewis approves
    $40K-$100K: Dr. Lewis approves
    >$100K: Matt Mathison + Dr. Lewis approve
    VP+: Matt Mathison awareness before posting

STEP 2 — ROLE OUTCOMES (not tasks):
  What does success look like in 90 days?
  What does success look like in 12 months?
  What problem does this role exist to solve?
  What will fail or slip if this role is not filled?
  Rule: write outcomes, not activities ("increases employer GRR" not "manages accounts")

STEP 3 — MUST-HAVE COMPETENCIES:
  Hard skills (max 5 — anything beyond 5 is a wish list)
  Soft skills (max 3 — only verifiable ones via interview)
  THRIVE alignment requirements:
    Truth: direct communication; data-driven; no spin
    Hustle: bias for action; executes with urgency
    Integrity: absolute non-negotiable gate
    Value: creates measurable outcomes (not just activity)
  Entity-specific requirements:
    Allevio: HIPAA awareness if accessing any PHI systems; OIG/LEIE clear (all healthcare roles)
    HIVE: Uinta Basin knowledge preferred; comfortable with commodity-cycle volatility
    Column6: programmatic/CTV familiarity for technical roles; agency relationship experience for commercial roles

STEP 4 — COMPENSATION RANGE:
  Research sources: Levels.fyi (tech); LinkedIn Salary; Glassdoor; MGMA (healthcare); industry contacts
  Build a 3-point range: floor (bottom quartile) / target (50th-75th pctl) / stretch (top quartile)
  Fully-loaded cost: multiply annual salary by 1.25-1.35× (1.35-1.45× Year 1 with recruiting)
  Entity budgets: comp is set before approval, not after offer
  Dr. Lewis sets comp ranges; Matt Mathison approves VP+ comp ranges

STEP 5 — DISQUALIFYING FACTORS:
  List 3-5 factors that, if present, are automatic declines regardless of other strengths
  Must include THRIVE Integrity: any confirmed integrity violation = disqualify; no exceptions
  Entity-specific disqualifiers:
    Allevio: OIG/LEIE exclusion (healthcare roles) = disqualify + report to Matt immediately
    All: active restraint-of-trade in direct competitive area = legal review before proceeding
```

## Output Format

```markdown
# Role Profile — [Role Title] | [Entity] — [Date]
**Approval status:** [Dr. Lewis / Matt Mathison + Dr. Lewis] | **Type:** [New / Backfill]

---

## Role Outcomes (90-day / 12-month)

| Horizon | Success looks like |
|---------|------------------|
| 90 days | [Specific outcome] |
| 12 months | [Specific outcome] |

**Problem this role solves:** [1-2 sentences — the actual gap being filled]

---

## Must-Have Competencies

**Hard skills (max 5):**
1. [Skill — verifiable]
2. [Skill]

**THRIVE alignment:** [specific behavioral evidence required for each THRIVE dimension at this level]

**Entity-specific requirements:** [if applicable]

---

## Compensation Range

| Level | Annual salary | Fully-loaded cost |
|-------|-------------|-----------------|
| Floor | $[X] | $[X] |
| Target | $[X] | $[X] |
| Stretch | $[X] | $[X] |

---

## Disqualifying Factors
1. THRIVE Integrity violation (confirmed) — automatic decline; no exceptions
2. [Entity-specific disqualifier — e.g., OIG/LEIE for Allevio healthcare roles]
3. [Role-specific disqualifier]
```

## Output Contract
- Outcomes are written before sourcing begins — a role profile without defined outcomes produces a job description that attracts experienced-looking candidates who may not solve the actual problem; Dr. Lewis ensures every role profile has at least 2 measurable 90-day and 12-month outcomes before the profile is approved; "support the team" and "manage day-to-day operations" are not outcomes — they are activity descriptions; if the hiring manager cannot describe what success looks like at 90 days, the role is not ready to post
- Compensation is anchored before interviews start — a role that goes to offer without a pre-approved comp range results in either overpaying (offers creep based on candidate expectations) or under-offering (good candidates decline); Dr. Lewis sets the range before sourcing begins; the range is shared with the hiring manager but is not disclosed to candidates until the offer stage; if a candidate's expectations are above the stretch level, Dr. Lewis and the CEO decide whether to adjust the range or pass before investing more interview time
- OIG/LEIE check is required for all Allevio healthcare roles before offer — any healthcare entity employee who is on the OIG Exclusion List or the LEIE creates liability for Allevio; Dr. Lewis verifies with background check provider that OIG/LEIE screening is included for all Allevio roles before the background check order is placed; an OIG/LEIE exclusion hit on a final candidate = immediate decline + notification to Allevio CEO + notification to Matt Mathison; this is not a judgment call
- HITL required: role profile → Dr. Lewis approves before posting; comp range → Dr. Lewis sets; >$100K or VP+ → Matt Mathison awareness before posting; OIG/LEIE check inclusion → Dr. Lewis confirms for Allevio roles; disqualifying factors list → Dr. Lewis reviews

## System Dependencies
- **Reads from:** hr-headcount-planner (approved headcount budget; open rec count); hr-compensation-benchmarker (market comp data); hr-metrics-dashboard (current headcount and open rec status); entity CEO (role context and outcomes); QuickBooks (budget confirmation for fully-loaded cost); GoHighLevel (if sourcing involves inbound leads)
- **Writes to:** Role profile document (SharePoint → HR → Role Profiles → [Entity] → [Role] → [Date]); hr-sourcing-strategy (inputs); hr-interview-designer (competencies for question design); hr-hiring-scorecard (outcomes and must-haves); Matt Mathison headcount notification (VP+)
- **HITL Required:** Role profile approval → Dr. Lewis; comp range → Dr. Lewis sets; >$100K or VP+ → Matt notified before posting; OIG/LEIE inclusion → Dr. Lewis confirms for Allevio; disqualifiers → Dr. Lewis reviews

## Test Cases
1. **Golden path:** Allevio needs a Care Coordinator (new role, $55K target). Hiring manager interview: 90-day outcome = "enrolled in care coordination workflow and managing panel of 50 members independently"; 12-month outcome = "panel of 80-90 members with utilization rate ≥15% above baseline." Must-haves: HIPAA training completed; care coordination or case management experience ≥2 years; Bilingual English/Spanish preferred. OIG/LEIE: required (healthcare role). Comp: floor $50K / target $55K / stretch $60K; fully-loaded $66K-$81K. Dr. Lewis approves profile. Sourcing authorized.
2. **Edge case:** Backfill for a HIVE Lease Manager who left unexpectedly — hiring manager wants to post immediately → Dr. Lewis: "Before posting, we need to define outcomes — what was the departing person NOT doing well that we want the new hire to fix? What does good look like in this role in 12 months? I'll set up a 30-minute call with you this week. We cannot produce a good candidate pool without outcome clarity, and posting without it costs us weeks of interviewing the wrong people."
3. **Adversarial:** CEO wants to post a VP of Sales at Column6 at $200K base without involving Matt Mathison → Dr. Lewis: "VP+ roles require Matt Mathison awareness before posting — this is our standard process for all VP-level hires. This isn't approval of the hire, just awareness that we're opening the role at this comp level so he's not surprised when the offer goes out. I'll send him a one-paragraph note with the role, comp range, and rationale. You'll hear back within 24 hours. Once he's aware, we post."

## Audit Log
All role profiles retained (with Dr. Lewis approval date; comp range; outcomes; disqualifying factors). VP+ roles retain Matt Mathison notification record. OIG/LEIE check confirmation retained for all Allevio roles. Backfill profiles retain departing employee reference.

## Deprecation
Role profiles are archived once the role is filled and the hire is onboarded. Profiles for roles that are eliminated are retained with a note. Template updated when employment law changes affect the disqualifying factors or compensation disclosure requirements.
