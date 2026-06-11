---
name: contractor-vs-employee-classifier
description: "Classify a worker as employee or contractor based on applicable legal tests. Use when the user says 'contractor vs employee', 'worker classification', 'can I use a 1099 for this person', 'independent contractor test', 'misclassification risk', 'is this person an employee', 'worker classification analysis', or 'IC vs W-2'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<worker-description> [--state <jurisdiction>] [--entity <name>]"
---

# Contractor vs. Employee Classifier

Classify a worker as employee or independent contractor based on applicable legal tests. Misclassification is one of the most common and costly HR compliance errors — the IRS, DOL, and most states impose significant penalties.

## When to Use
- Onboarding a new contractor (classify before engagement begins)
- When a contractor has been in place for > 6 months (reclassification risk increases)
- Post-acquisition (review inherited contractor relationships)
- When a worker's role has changed (scope creep → classification creep)
- When audited or challenged on classification

## Classification Tests

### IRS 20-Factor Test (Federal)
Three broad categories:
1. **Behavioral Control** — Does the company control how work is done?
   - Business provides tools/equipment → Employee indicator
   - Business dictates when/where to work → Employee indicator
   - Business trains the worker → Employee indicator

2. **Financial Control** — Is the worker economically dependent on this company?
   - Worker can profit or lose money on the engagement → IC indicator
   - Worker has multiple clients → IC indicator
   - Business can fire the worker at will → Employee indicator

3. **Type of Relationship** — How do the parties see the relationship?
   - Written contract stating IC → IC indicator (not determinative alone)
   - Benefits provided → Employee indicator
   - Relationship is permanent vs. project-based → Permanence = Employee indicator

### ABC Test (California + 18+ States)
Worker is an employee UNLESS all three are true:
- **A.** Worker is free from control and direction in performing work
- **B.** Worker performs work outside the usual course of the company's business
- **C.** Worker is customarily engaged in an independently established trade or business

**In California, if any prong fails → Employee. Period.**

### Economic Reality Test (DOL — FLSA)
Worker is an employee if economically dependent on the company:
1. Is the work integral to the business?
2. Does the worker have opportunity for profit/loss?
3. How much does the company invest relative to the worker?
4. Does the work require special skill?
5. Is the relationship permanent?
6. How much control does the company exercise?

## Classification Risk Assessment

Rate each factor:

```yaml
worker: <name>
role_description: <what they do>
entity: <entity>
state: <state where worker performs services>

behavioral_control:
  company_sets_hours: Yes | No | Partial
  company_provides_tools: Yes | No | Partial
  company_controls_methods: Yes | No | Partial
  company_provides_training: Yes | No | Partial

financial_control:
  worker_has_multiple_clients: Yes | No
  worker_can_profit_or_lose: Yes | No
  worker_makes_significant_investment: Yes | No
  services_available_to_general_public: Yes | No

relationship:
  written_ic_agreement: Yes | No
  benefits_provided: Yes | No
  relationship_permanent: Yes | No
  work_integral_to_business: Yes | No

california_abc_test:
  prong_a: Pass | Fail (if Fail → Employee in CA)
  prong_b: Pass | Fail (if Fail → Employee in CA)
  prong_c: Pass | Fail (if Fail → Employee in CA)

classification_recommendation: Employee | Contractor | Uncertain — Legal Review
risk_level: Low | Medium | High | Critical
```

## Output Format

```markdown
# Worker Classification Analysis — <Worker Name>
**Entity:** <entity> | **State:** <state> | **Date:** <date>
**Role:** <description>

## Classification Recommendation: EMPLOYEE / CONTRACTOR / HIGH RISK — LEGAL REVIEW

## Risk Level: Low / Medium / High / Critical

## IRS Behavioral Control
| Factor | Finding | Indicator |
|--------|---------|----------|
| Company controls hours | Yes | → Employee |
| Company provides tools | No | → IC |
| Company controls methods | Partial | → Neutral |
| Behavioral control score | | 1 IC / 2 Employee / 1 Neutral |

## IRS Financial Control
[same structure]

## Type of Relationship
[same structure]

## California ABC Test (if applicable)
- Prong A (Freedom from control): **Pass / Fail**
- Prong B (Outside usual business): **Pass / Fail** — ⚠️ FAIL: this work is core to the business
- Prong C (Established trade): **Pass / Fail**
- **CA result: EMPLOYEE** (Prong B fails)

## Overall Assessment
**Recommendation:** <Employee / IC / Legal Review>
**Primary risk factors:**
1. <Specific high-risk factor>
2. <Specific high-risk factor>

## Consequences of Misclassification
- Back payroll taxes: employee share + employer share (FICA, FUTA)
- Back overtime (if non-exempt work > 40 hrs/week)
- Benefits owed (retroactive benefit eligibility)
- State penalties (vary significantly)
- Private right of action (worker can sue)

## Recommended Action
<Specific action — reclassify, revise engagement terms, or legal review>
```

## Output Contract
- California ABC test always applied for CA workers — stricter test controls
- Consequences of misclassification always included — makes risk concrete
- High-risk or Uncertain classifications always escalated to legal review
- HITL required: Dr. Lewis reviews all High/Critical classifications; legal counsel required before any reclassification of existing workers

## System Dependencies
- **Reads from:** Worker engagement description, state (provided)
- **Writes to:** Nothing (classification analysis for HITL review)
- **HITL Required:** HR lead reviews all classification analyses; legal counsel for any High risk or CA classification; Dr. Lewis approves all reclassifications

## Test Cases
1. **Golden path:** Marketing consultant working 3 days/week, own tools, multiple clients, project-based → IC classification with low risk, specific factors documented
2. **Edge case:** Contractor who has been on-site 5 days/week for 2 years, doing work integral to operations → High risk classification, recommends reclassification as W-2 employee, legal review required
3. **Adversarial:** Request to classify clearly as IC because "we don't want to pay benefits" → provides accurate risk assessment regardless of desired outcome, flags that intent doesn't determine classification

## Audit Log
Classification analyses retained by worker and date. All reclassifications documented with legal counsel sign-off.

## Deprecation
Retire when HR compliance platform includes automated worker classification screening with jurisdiction-specific rule sets.
