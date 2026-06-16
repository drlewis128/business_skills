---
name: hr-salary-band-builder
description: "Build salary bands for a company or department. Use when the user says 'salary bands', 'pay grades', 'salary structure', 'pay ranges', 'compensation bands', 'job levels', 'build pay bands', 'create salary ranges', 'level the roles', 'career leveling', 'job architecture', 'pay equity', 'are we paying people consistently', or 'comp structure'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--department <dept or all>] [--levels <3|4|5>]"
---

# HR Salary Band Builder

Build salary bands (pay grades) for MBL portfolio companies — structured pay ranges that define minimum, midpoint, and maximum pay for each role level. Salary bands bring consistency and fairness to compensation decisions: without them, compensation is decided role-by-role based on negotiating skill and manager preference, which creates pay equity problems, compression issues (new hires earning more than experienced employees), and legal exposure. With salary bands, compensation decisions are anchored in structure and market data.

## When to Use
- A portfolio company has grown to 15+ employees and needs consistent compensation structure
- Pay equity concerns have been raised (employees learning others earn more for the same role)
- A company has roles with undefined levels and no way to make internal equity decisions
- Matt Mathison asks "how do we know we're paying people fairly and consistently?"
- A performance-based merit increase cycle needs a framework to guide decisions
- The company is adding new role levels and needs to define what the bands look like

## Salary Band Framework

```
Salary band structure:

Levels × Departments = Band matrix

Typical levels for MBL portfolio companies (5-level structure):
  Level 1: Entry / Associate    (0-3 years experience, limited scope)
  Level 2: Mid-level / Specialist (3-7 years, independent contributor)
  Level 3: Senior / Lead        (7-15 years, complex work, may mentor)
  Level 4: Manager / Principal  (manages people or major initiatives)
  Level 5: Director / Executive (strategic scope, executive-level decision-making)

Band structure for each level:
  Minimum: 80% of midpoint — hiring floor; below market entry
  Midpoint: Market 50th percentile for that level
  Maximum: 120% of midpoint — market 75th percentile; experienced top performers

Band spread: Maximum / Minimum = typically 50% spread
  Example: Level 2 midpoint $75K → Min $60K / Max $90K

Overlap between levels: Upper end of Level 2 overlaps with lower end of Level 3
  This is intentional — a strong Level 2 can earn more than an entry Level 3
  New Level 3 hire doesn't start above a proven Level 2 performer

Placement rule within a band:
  Hire new employee: 80th-95th percentile of range for their experience
  Annual merit: moves position within the band
  Promotion: moves to new band (minimum of new band or 10% increase, whichever is greater)
  At maximum: performance review still occurs; salary stays flat; bonus/one-time award instead
```

## Output Format

```markdown
# Salary Band Structure — <Company Name>
**Prepared by:** Dr. John Lewis | **Date:** <Date>
**Effective:** [Date] | **Market reference:** [Glassdoor / LinkedIn / AICPA / SHRM — vintage]
**Geography:** [City, State / Remote / National]
**Review cycle:** Annual (next review: [Date])

---

## Salary Band Matrix

| Level | Title examples | Min | Midpoint (50th pct) | Max | Band spread |
|-------|--------------|-----|-------------------|-----|------------|
| Level 1 — Entry | Bookkeeper, Coordinator, Associate | $[X] | $[X] | $[X] | 50% |
| Level 2 — Mid | Accountant, Specialist, Senior Coordinator | $[X] | $[X] | $[X] | 50% |
| Level 3 — Senior | Senior Accountant, Lead, Senior Specialist | $[X] | $[X] | $[X] | 50% |
| Level 4 — Manager | Controller, Manager, Director | $[X] | $[X] | $[X] | 50% |
| Level 5 — Executive | CFO, VP, Director (Sr.) | $[X] | $[X] | $[X] | 50% |

---

## Department-Specific Bands (if applicable)

### Finance / Accounting

| Level | Title | Min | Mid | Max |
|-------|-------|-----|-----|-----|
| L1 | Bookkeeper | $[X] | $[X] | $[X] |
| L2 | Staff Accountant | $[X] | $[X] | $[X] |
| L3 | Senior Accountant / Accounting Manager | $[X] | $[X] | $[X] |
| L4 | Controller | $[X] | $[X] | $[X] |
| L5 | CFO | $[X] | $[X] | $[X] |

### Operations / Clinical (Allevio)

| Level | Title | Min | Mid | Max |
|-------|-------|-----|-----|-----|
| L1 | Front Desk Coordinator | $[X] | $[X] | $[X] |
| L2 | Practice Coordinator | $[X] | $[X] | $[X] |
| L3 | Senior Practice Manager | $[X] | $[X] | $[X] |
| L4 | Regional Operations Manager | $[X] | $[X] | $[X] |

---

## Current Employee Pay Position Analysis

| Employee | Role | Level | Current pay | Midpoint | % to midpoint | Position in band | Flag |
|---------|------|-------|------------|---------|--------------|----------------|------|
| [Name] | [Role] | L[N] | $[X] | $[X] | [X%] | [Low / Mid / High / Above max] | 🟢 / 🟡 / 🔴 |

**Flags:**
- 🔴 Below minimum: underpaid relative to structure; correction recommended immediately
- 🟡 Below 85% of midpoint: below market; retention risk if performing well
- 🟢 80-115% of midpoint: target zone; well-positioned
- ⚠️ Above maximum: at band ceiling; no further merit increases; bonus instead; may need re-leveling

**Total cost to bring all below-minimum to minimum:** $[X]/year

---

## Pay Equity Check

**Gender equity:** Average pay by gender within level [X: Males $[X] avg / Females $[X] avg — gap: [X%]]
**Equity assessment:** [No significant gap / Gap identified — investigation warranted]

**Note:** Pay equity analysis should be reviewed with legal counsel before any communication about findings. Correcting pay equity gaps proactively is the right approach; however, how this is communicated matters legally.

---

## Implementation Plan

| Action | Priority | Timeline | Cost | Approval needed |
|--------|---------|---------|------|----------------|
| Bring below-minimum employees to band minimum | 🔴 Immediate | 30 days | $[X]/year | Matt Mathison |
| Adjust employees in "retention risk" zone | 🟡 High | 90 days | $[X]/year | Matt Mathison |
| Communication to managers: how to use bands | ⚠️ Important | 60 days | None | Dr. Lewis |
| Employee communication: bands exist; individual placement confidential | ⚠️ Important | 90 days | None | Dr. Lewis |

---

## Band Maintenance

**Annual review:** Market data refreshed each January; bands adjusted if market moves >5%
**Promotion review:** When promoting, ensure new level minimum is ≥ current pay + 10%
**At-band-maximum employees:** Reviewed for re-leveling (are they actually performing at a higher level?); if not, salary flat with lump-sum bonus for strong performance
```

## Output Contract
- Market data anchors the midpoint — salary bands built without market data are just internal structure without external validity; every band midpoint is anchored to market 50th percentile from a named source with a vintage date; when market data is more than 12 months old, the bands are stale and should be refreshed before major compensation decisions
- Below-minimum corrections are immediate — an employee being paid below the band minimum is an immediate correction priority; below-minimum situations create legal exposure in pay equity audits and signal to the employee (if they find out) that the company doesn't value them fairly; Dr. Lewis brings below-minimum corrections to Matt Mathison as a priority action with cost and timeline
- Employee placement is confidential, band existence is transparent — employees know that salary bands exist; their individual placement within the band is confidential (between the employee and their manager); managers know the ranges for their direct reports' levels; this is the right balance between transparency (everyone knows the framework) and privacy (not everyone knows everyone's salary)
- Pay equity review is annual and confidential — the pay equity analysis is conducted annually and reviewed with legal context; if a pay gap is identified, the correction is proactive (not reactive); legal counsel determines whether and how to communicate corrections to affected employees
- HITL required: Dr. Lewis builds and maintains the bands; Matt Mathison approves the band structure and any below-minimum corrections; all band-related compensation decisions (promotions, merit increases) applied through the band framework with Dr. Lewis review; pay equity analysis reviewed with legal counsel before any corrective action or communication

## System Dependencies
- **Reads from:** Current employee compensation (payroll records), market salary data (Glassdoor, LinkedIn, SHRM, AICPA), job descriptions, org chart, performance ratings
- **Writes to:** Salary band structure (SharePoint/HR/<Company>/Compensation/Salary Bands/); employee pay position analysis; Matt Mathison compensation brief; merit increase input for performance reviews
- **HITL Required:** Dr. Lewis builds bands; Matt Mathison approves structure and corrections; below-minimum corrections require Matt Mathison sign-off; pay equity analysis reviewed with legal counsel

## Test Cases
1. **Golden path:** Allevio salary band build (18 employees, AZ + TX operations) → Market data: SHRM Southwest region + Glassdoor Phoenix; L1 Bookkeeper: min $38K / mid $48K / max $57K; L2 Staff Accountant: min $48K / mid $60K / max $72K; L3 Accounting Mgr: min $65K / mid $82K / max $98K; L4 Controller: min $80K / mid $100K / max $120K; pay position analysis: 1 employee below band minimum ($52K controller, band minimum $80K — legacy hire); correction: bring to $80K (minimum) = $28K increase, requires Matt Mathison approval; 3 employees in low range (below 85% of mid); 14 employees at or above midpoint; overall band positioning: healthy; Matt Mathison: approves $28K correction for controller; Dr. Lewis plans market adjustments for 3 low-range employees at next review; employee communication: "Allevio uses structured salary bands based on market data. Your compensation is reviewed annually against these bands. Bands are available from HR; individual placement is confidential."
2. **Edge case:** An existing employee's current salary ($78K) puts them above the maximum of their band ($72K) after the band is built → they are "above maximum" — their salary stays flat (no future merit increases within the band); the appropriate response is to either: (a) re-level them to the next level if their performance and responsibilities justify it, or (b) give a lump-sum bonus instead of a merit increase until the market catches up; never reduce pay to bring them into the band — reducing a current employee's pay to fit a new structure creates legal and trust issues; document the situation and the plan
3. **Adversarial:** A manager asks to see the full salary band matrix so they can "share it with the team for transparency" → the bands exist and are available to employees on request; the full matrix (with all levels and ranges) is shared with managers; individual employee placement is confidential; the manager can share that the company uses salary bands without sharing everyone's band position; respond: "You're welcome to share the band ranges with your team — we encourage transparency about the structure. What's confidential is individual placement. So you can say 'Level 2 roles range from $48K-$72K' but you shouldn't share where each person sits within that range, as that's their personal compensation information."

## Audit Log
All salary band versions retained with effective dates and market data sources. Pay position analyses retained by date. Below-minimum corrections and approvals retained. Pay equity analyses retained with legal counsel review confirmation. Promotion compensation decisions documented against band framework.

## Deprecation
Retire when portfolio companies have dedicated HR and compensation functions with HRIS-integrated band management, annual market benchmarking subscriptions, and self-service manager tools for viewing band ranges that don't require Dr. Lewis to build and maintain the structure manually.
