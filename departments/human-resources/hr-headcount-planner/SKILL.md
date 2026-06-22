---
name: hr-headcount-planner
description: "Build and manage the headcount plan for MBL Partners portfolio companies. Use when the user says 'headcount plan', 'staffing plan', 'headcount planning', 'how many people do we need', 'workforce plan', 'hiring plan', 'staff plan', 'org capacity', 'do we need to hire', 'headcount budget', 'annual headcount', 'staffing model', 'FTE plan', 'headcount approval', 'new headcount', 'headcount request', 'adding headcount', 'backfill', 'backfill approval', 'replacing a role', 'new role approval', 'open headcount', 'approved headcount', 'headcount freeze', 'headcount reduction', 'reducing headcount', 'rightsizing', 'org sizing', 'span of control', 'team size', 'how big should the team be', or 'capacity model'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--year <YYYY>] [--action <build|update|approve|review>] [--type <annual|request|backfill>]"
---

# HR Headcount Planner

Build and manage headcount plans for MBL Partners portfolio companies — translating entity revenue and operational targets into staffing requirements, approving new headcount, managing backfills, and maintaining visibility into open vs. filled vs. approved-not-yet-open positions. Headcount is typically 40-60% of operating cost at portfolio company scale; it is the primary lever for both growth and margin management.

## When to Use
- Annual planning cycle (headcount for next year)
- A new position is requested mid-year
- A backfill decision needs to be made
- Org design or capacity analysis is requested
- Matt Mathison asks about portfolio-wide headcount position

## Headcount Planning Framework

```
ANNUAL HEADCOUNT BUILD (Q4 for next year):

  STEP 1 — BASELINE:
    Current FTE count (actual filled)
    Approved-not-yet-filled roles (open reqs)
    Expected attrition (use prior year rate as starting estimate)
    
  STEP 2 — GROWTH LAYER (from revenue/ops plan):
    For each entity, Dr. Lewis asks:
      "What are your revenue targets for next year?"
      "What is the throughput capacity of your current team?"
      "At what revenue level do you need the next person?"
    Allevio: members-per-coordinator ratio (target: 1:60); GRR impact of understaffing
    HIVE: lease count per ops team member; production volume per FTE
    Column6: clients per AM (NRR impact of overloading)
    
  STEP 3 — REPLACEMENT LAYER:
    Apply expected attrition rate × current FTE = expected replacement reqs
    Adjust for regrettable vs. non-regrettable (non-regrettable may not backfill immediately)
    
  STEP 4 — COST MODEL:
    For each planned role: midpoint salary × 1.35 (fully loaded cost multiplier)
    Total headcount cost = sum of all roles
    Compare to approved labor budget (from fin-budget-builder)
    
  APPROVAL THRESHOLDS:
    New backfill (<$100K fully loaded): Dr. Lewis approves
    New role or backfill ($100K-$200K): Dr. Lewis + entity CEO approve
    New role >$200K or Director+ new role: Dr. Lewis + entity CEO + Matt Mathison notified
    Any headcount that increases total labor budget >10% vs. plan: Matt Mathison approval
    
MID-YEAR HEADCOUNT REQUEST (off-plan):
  Manager submits request to entity CEO + Dr. Lewis:
    Role description (from hr-job-profiler)
    Business justification: "Without this role, [specific business outcome] is at risk"
    Budget: fully loaded cost; line item in entity P&L
    Timing: "I need this person by [date]"
  Approval: per thresholds above
  Dr. Lewis opens the req in HRIS; notifies talent acquisition process
  
BACKFILL DECISIONS:
  Not all departures = automatic backfill
  Decision framework:
    1. Can the work be absorbed without degrading performance? → may not backfill
    2. Is there an opportunity to upgrade the role? → open as enhanced role (job-profiler)
    3. Is this role critical path? → immediate backfill
    4. Was departure performance-related? → evaluate whether role design was correct
  Allevio: clinical roles (care coordinators) → always backfill; direct member care continuity risk
  HIVE: small team → every departure is critical-path until replacement hired
  Column6: commercial roles → evaluate client load before deciding
  
HEADCOUNT FREEZE:
  Trigger: entity misses 2 consecutive months of revenue target vs. plan
  Dr. Lewis + entity CEO review: selective freeze or full freeze
  Freeze does not apply to: critical clinical roles (Allevio); safety roles (HIVE); 
    revenue-generating roles with documented pipeline justification
    
SPAN OF CONTROL:
  IC-to-manager ratio target: 4-8 direct reports per manager
  <4 reports: is the manager layer necessary?
  >8 reports: manager is stretched; quality of coaching and development suffers
  Allevio clinical managers: max 10-12 care coordinators (clinical complexity)
  Dr. Lewis flags span-of-control outliers in quarterly HR ops review
```

## Output Format

```markdown
# Headcount Plan — [Entity] — [Year]
**Prepared by:** Dr. Lewis | **Approved by:** Entity CEO [+ Matt Mathison if >10% over plan]
**Total planned FTE (year-end):** [X] | **Current FTE:** [X] | **Net adds:** [X]

---

## Headcount by Function

| Function | Current FTE | Attrition expected | Net new | Year-end target | Fully loaded cost |
|---------|------------|-------------------|---------|----------------|-----------------|
| Clinical (Allevio) | | | | | |
| Commercial | | | | | |
| Operations | | | | | |
| Finance/Admin | | | | | |
| **Total** | | | | | **$[X]** |

---

## Planned Hires — [Year]

| Role | Level | Q | Business justification | Midpoint salary | Fully loaded |
|------|-------|---|----------------------|----------------|-------------|
| [Role name] | [L1-L6] | [Q1-Q4] | [One-line] | $[X] | $[X] |

---

## Open Requisitions (approved; not yet filled)
| Req ID | Role | Status | Target fill date |
|--------|------|--------|----------------|

---

## Headcount Freeze Status
☐ No freeze active | ☐ Selective freeze (roles affected: [list]) | ☐ Full freeze until: [Date/condition]
```

## Output Contract
- Every headcount addition has a business justification — "we need more people" is not a justification; "we are projecting to add 200 members in Q2, and at 60 members per care coordinator, we need 3.3 additional FTEs by Q1 to handle the ramp" is a justification; Dr. Lewis requires a written business justification for every non-backfill role; the justification is one sentence that connects the role to a specific business outcome, revenue impact, or operational risk; it lives in the headcount plan and can be referenced if the role is later questioned
- Fully loaded cost is presented, not just salary — a salary of $75K does not cost $75K; with employer-side taxes, benefits, and overhead, the fully loaded cost is $97,500-$108,750 (1.30-1.45× multiplier); Dr. Lewis presents fully loaded cost for every role in the headcount plan; entity CEOs who approve a $75K hire without understanding the $105K fully loaded cost are making budget decisions with incomplete information
- Backfill is a decision, not an automatic action — the departure of an employee creates an opportunity to evaluate whether the role should be backfilled, upgraded, or left open; Dr. Lewis presents the backfill decision framework to the entity CEO for every departure; for clinical Allevio roles, backfill is automatic; for all others, the CEO makes an explicit decision with Dr. Lewis's recommendation; this discipline prevents headcount creep and keeps org design intentional
- HITL required: annual headcount plan → Dr. Lewis builds; entity CEO approves; >10% budget increase → Matt Mathison; new role <$100K → Dr. Lewis approves; new role or backfill $100K-$200K → Dr. Lewis + entity CEO; new role >$200K or Director+ → Matt Mathison notified; headcount freeze decision → Dr. Lewis + entity CEO; backfill decision → entity CEO with Dr. Lewis recommendation

## System Dependencies
- **Reads from:** fin-budget-builder (approved labor budget; headcount cost constraints); hr-job-profiler (role definition for new hires); hr-metrics-dashboard (attrition rate; current FTE count); hr-attrition-analyzer (attrition forecast); ops-okr-program (entity operational targets that drive headcount); hr-salary-band-manager (midpoint salary for cost model)
- **Writes to:** Headcount plan (SharePoint → HR → Headcount → [Entity] → [Year]); HRIS open requisition (approved reqs); Monday.com hiring board; fin-budget-builder (actual vs. plan headcount cost); Matt Mathison notification (>$200K or >10% plan)
- **HITL Required:** Annual plan → Dr. Lewis builds + entity CEO approves; >10% plan → Matt Mathison; <$100K → Dr. Lewis; $100K-$200K → Dr. Lewis + CEO; >$200K/Director+ → Matt Mathison; freeze → Dr. Lewis + CEO; backfill decision → entity CEO with Dr. Lewis rec

## Test Cases
1. **Golden path:** Allevio 2027 headcount plan (Q4 2026 build). Current FTE: 22. Projected member growth: 400 new members → need 6.7 additional coordinators. Expected attrition (12%): 2.6 replacements. Plus 1 Director of Operations (new role). Total net adds: 10. Fully loaded cost: $840K. Labor budget variance: +$120K vs. approved plan → entity CEO + Dr. Lewis approve; <10% variance → no Matt Mathison required. Plan locked. Recruiting calendar: 3 coordinators Q1; 3 Q2; Director Ops Q1.
2. **Edge case:** Manager requests 2 new roles mid-year, 3 months into a headcount freeze → Dr. Lewis: "The entity is in a selective freeze. I need to determine whether these roles qualify as freeze-exempt. Tell me: (1) are these revenue-generating roles with documented pipeline? (2) are they critical to clinical care continuity? (3) what specifically breaks if we wait 90 days? If they're not freeze-exempt, the freeze stands. If they are, I'll bring an exception to the entity CEO with your justification."
3. **Adversarial:** Entity CEO approves a role verbally with a manager and tells the manager to start recruiting before Dr. Lewis has approved → Dr. Lewis: "I understand you've committed to the manager, and I want to support that. But I need to formally review and approve the requisition before recruiting begins — this protects you too. Without my sign-off, there's no budget line confirmed, no job profile approved, and no HR file opened. If you hired someone without a formal req and there's a later dispute about the role's terms, we have no documentation. Give me 24 hours to do the intake and formally open the req."

## Audit Log
Annual headcount plans retained with approval records (3 years). Mid-year request and approval records retained. Backfill decision records retained (decision + rationale). Headcount freeze records (dates; trigger; duration). Matt Mathison notifications retained. Budget variance records retained.

## Deprecation
Approval thresholds reviewed annually alongside compensation benchmarks. Fully loaded multiplier reviewed annually with benefits cost changes. Entity-specific headcount triggers (coordinator ratio; clients per AM) reviewed when business model changes.
