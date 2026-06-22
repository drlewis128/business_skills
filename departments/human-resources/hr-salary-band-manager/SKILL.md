---
name: hr-salary-band-manager
description: "Define and maintain salary bands for MBL Partners portfolio company roles. Use when the user says 'salary bands', 'pay bands', 'pay grades', 'salary grades', 'salary structure', 'comp structure', 'compensation structure', 'job levels', 'leveling', 'job grading', 'career ladder', 'pay levels', 'grade structure', 'band compression', 'pay compression', 'salary range structure', 'build salary bands', 'update salary bands', 'review salary bands', 'are our bands current', 'what level is this role', 'job level framework', 'IC levels', 'manager levels', 'promotion threshold', 'grade promotion', 'out of band', 'above band', 'below band', 'band midpoint', or 'salary range spread'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--action <build|review|update|promotion>] [--role-family <clinical|commercial|ops|finance|technical>]"
---

# HR Salary Band Manager

Define and maintain salary bands for portfolio company roles — creating a structured pay framework that enables consistent hiring decisions, promotion clarity, and pay equity. Salary bands are not bureaucracy; they are the mechanism that prevents manager favorites from being paid 40% more than peers doing the same work, and the signal to employees that pay decisions are principled rather than arbitrary.

## When to Use
- Defining salary bands for a new entity or role family for the first time
- Annual review to confirm bands are still market-competitive
- Promotion decision requires band validation
- Pay compression is identified in a pay equity analysis

## Salary Band Framework

```
BAND STRUCTURE (MBL portfolio company standard):

  LEVEL 1 — ENTRY / COORDINATOR:
    Scope: executes defined tasks under supervision; <2 years in function
    Spread: floor to stretch, typically $35K-$55K depending on role family
    
  LEVEL 2 — SPECIALIST / ASSOCIATE:
    Scope: independent execution; some judgment; 2-4 years in function
    Spread: ~$45K-$75K depending on role family
    
  LEVEL 3 — SENIOR SPECIALIST / LEAD:
    Scope: domain expertise; informal leadership; mentors others; 4-7+ years
    Spread: ~$65K-$95K depending on role family
    
  LEVEL 4 — MANAGER / PRINCIPAL:
    Scope: team leadership (2-8 direct reports) or equivalent technical scope
    Spread: ~$80K-$120K depending on role family
    
  LEVEL 5 — DIRECTOR:
    Scope: function leadership; cross-entity scope; Dr. Lewis hire approval
    Spread: ~$110K-$160K depending on role family
    
  LEVEL 6 — VP / EXECUTIVE:
    Scope: entity C-suite or equivalent; Matt Mathison awareness before hire
    Spread: ~$150K-$220K depending on role family (entity revenue-dependent)

ENTITY-SPECIFIC ROLE FAMILIES:

  Allevio (healthcare services):
    Clinical family: Care Coordinator; Clinical Program Manager; Director of Clinical Ops
    Administrative family: Enrollment Coordinator; Office Manager; COO
    Benchmarks: MGMA anchored
    
  HIVE (O&G royalties):
    Operations family: Lease Administrator; Landman; Lease Manager; Director of Land
    Finance family: Royalty Accountant; Controller
    Benchmarks: SPE/Rigzone anchored
    
  Column6 (CTV/programmatic):
    Commercial family: Account Executive; Senior AE; Account Manager; VP Sales
    Operations family: Campaign Manager; Campaign Ops Lead; Platform Director
    Benchmarks: LinkedIn Salary/Levels.fyi anchored
    
  MBL (holding company / PE):
    All roles benchmarked to national market for PE/advisory functions

BAND MECHANICS:
  Band spread: typically 40-50% from floor to stretch (floor × 1.4-1.5 = stretch)
  Midpoint: target for a fully proficient employee at that level
  Compa-ratio: individual salary / band midpoint (target 0.90-1.10)
  Band progression: adjacent bands overlap by ~15% to allow promotion without reset
  
  BAND COMPRESSION:
    Alert when: a Level 2 employee's salary exceeds or is within 5% of a Level 1 new hire
    Alert when: a long-tenure Level 3 employee earns more than a newly hired Level 4 manager
    Cause: below-market bands that have not kept pace with market; inflation; urgent hiring
    Remedy: annual band review + equity adjustments at merit cycle
    
ANNUAL BAND REVIEW:
  Timing: Q4 each year; new bands effective January 1
  Process: Dr. Lewis re-benchmarks each role family with current market data
  Band movement: if market has moved >5% in a role family, bands shift accordingly
  Impact analysis: how many employees are now outside band? what is the equity adjustment cost?
  Entity CEO approves band changes; Matt Mathison is notified if band changes affect >$25K in equity adjustments
  
PROMOTION THRESHOLD:
  Promotion to next level requires: (a) performance at Level n for ≥6 months; 
    (b) scope expansion confirmed by hiring manager; (c) comp at or above new band floor
  Promotion without comp change is not a promotion — it is a title change
  All promotion decisions: Dr. Lewis reviews; entity CEO approves; hr-promotion-framework process
```

## Output Format

```markdown
# Salary Band Structure — [Entity] | [Role Family] — Effective: [Date]
**Benchmarks:** [MGMA / SPE / LinkedIn / other] | **Reviewed by:** Dr. Lewis

---

## Salary Bands

| Level | Title examples | Floor | Midpoint | Stretch | Spread |
|-------|--------------|-------|---------|---------|--------|
| 1 — Entry | Care Coordinator I; Lease Admin I | $[X] | $[X] | $[X] | [X%] |
| 2 — Specialist | Care Coordinator II; Lease Admin II | $[X] | $[X] | $[X] | [X%] |
| 3 — Senior | Senior Care Coordinator; Senior Landman | $[X] | $[X] | $[X] | [X%] |
| 4 — Manager | Care Ops Manager; Lease Manager | $[X] | $[X] | $[X] | [X%] |
| 5 — Director | Director of Clinical Ops; Director of Land | $[X] | $[X] | $[X] | [X%] |

---

## Current Team Placement

| Employee | Level | Current salary | Compa-ratio | Status |
|----------|-------|--------------|------------|--------|
| [Name] | 2 | $[X] | [X.XX] | 🟢 In band / 🟡 Near floor / 🔴 Below floor |

---

## Compression Alerts
- [ ] No compression identified
- [ ] Compression identified: [description] — equity adjustment recommended: $[X]
```

## Output Contract
- Salary bands are published to managers (not employees) — managers need band information to make hiring and promotion recommendations; employees who know their specific band ceiling sometimes anchor their expectations to the ceiling regardless of performance; MBL's approach is to be transparent that bands exist and that pay is market-referenced, without publishing the specific dollar thresholds to all employees; managers have access to band data and can share with direct reports on request during career conversations
- Annual band review is a mandatory function, not optional — bands that are not reviewed drift below market as inflation and competitive salaries rise; the cost of ignoring bands is not just attrition — it is also compression (new hires paid near experienced employees' salaries) and equity exposure; Dr. Lewis builds the Q4 band review into the annual HR calendar and treats a missed review as a control gap
- Promotions include comp changes — a "title promotion" without a comp change is a recognition gesture, not a role advancement; when an employee is promoted to the next level, their salary should reach at minimum the floor of the new band; if budget cannot support the comp change, the promotion should be delayed until budget is confirmed; communicating a promotion and then not adjusting comp within 60 days destroys credibility
- HITL required: new band structure → Dr. Lewis builds; entity CEO approves; annual band review → Dr. Lewis initiates Q4; band changes >$25K aggregate equity adjustment → Matt Mathison notified; individual out-of-band situations → Dr. Lewis and entity CEO decision; compression alert → Dr. Lewis initiates remedy plan with entity CEO

## System Dependencies
- **Reads from:** hr-compensation-benchmarker (market data); HRIS (current employee comp; levels); hr-merit-review-manager (annual merit cycle connection); hr-promotion-framework (promotion threshold confirmation)
- **Writes to:** Salary band structure (SharePoint → HR → Compensation → [Entity] → Bands → [Date]); manager band reference sheets; HRIS (level codes updated); hr-job-profiler (comp range sourced from bands); entity CEO annual band briefing
- **HITL Required:** New band structure → Dr. Lewis + CEO approval; annual review → Dr. Lewis initiates; >$25K aggregate equity adjustment → Matt Mathison notified; out-of-band situation → Dr. Lewis + CEO; compression → Dr. Lewis remedy plan

## Test Cases
1. **Golden path:** Q4 band review for Allevio clinical role family. MGMA 2024 data shows Care Coordinator market has moved +6% vs. prior year. Current bands are 7% below market (using prior year data). Dr. Lewis updates bands: Level 1 floor $48K→$51K; Level 2 floor $55K→$59K. Impact: 2 employees are now below new band floor. Equity adjustment cost: $6,400/year. Allevio CEO approves. Adjustments applied January 1.
2. **Edge case:** A HIVE Lease Manager is hired at $78K — above the Level 4 stretch of $75K → Dr. Lewis: "We have a green-circle situation — the hire is above band. Options: (1) accept as a one-time exception (document; adjust band to include this salary at next review); (2) negotiate the hire to $74K (within band). Given the market scarcity in Uinta Basin, I recommend option 1 with a note that the Level 4 band should be reviewed in Q4 against Rigzone data. Documenting the exception today."
3. **Adversarial:** A hiring manager wants to offer a Level 3 candidate at a Level 4 salary because "they're worth it" → Dr. Lewis: "Let's evaluate the scope. If they'll be doing Level 4 work (team leadership or equivalent), we should post the role as Level 4 and hire at Level 4 band. If the work is Level 3 but the candidate is exceptional, the Level 3 stretch ($75K) is the right ceiling — and the growth path to Level 4 should be part of the career conversation at onboarding. Making an exception on level skips our entire pay equity framework. I'd prefer to be disciplined here."

## Audit Log
All band structures retained with effective dates. Annual review records retained. Compression alerts and remedies retained. Exception approvals retained. Matt Mathison notifications retained (>$25K aggregate).

## Deprecation
Salary bands are reviewed annually and replaced when market data moves >5% in any role family. Bands are archived when an entity is exited. Band structures are retained permanently as part of the employment record.
