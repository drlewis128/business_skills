---
name: workforce-diversity-tracker
description: "Track workforce diversity metrics and EEO reporting data. Use when the user says 'diversity metrics', 'EEO data', 'workforce diversity', 'DEI metrics', 'diversity report', 'EEO-1', 'representation data', or 'what does our workforce look like demographically'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--report-type <internal|EEO-1|executive>] [--period <YYYY>]"
---

# Workforce Diversity Tracker

Track workforce diversity metrics and EEO data for internal analysis and regulatory compliance. EEO-1 filing is mandatory for 100+ employee companies; diversity tracking is essential for identifying systemic equity gaps.

## When to Use
- Annual EEO-1 preparation (required for 100+ employees)
- Quarterly internal diversity reporting to executive team
- When analyzing whether hiring, promotion, or compensation practices have disparate impact
- Post-acquisition workforce demographic assessment
- Before a pay equity analysis (need demographic data)

## Data Collection Requirements

### EEO-1 Categories (Federal — Required)
Race/ethnicity categories (self-identified):
- Hispanic or Latino
- White (not Hispanic)
- Black or African American (not Hispanic)
- Native Hawaiian or Other Pacific Islander
- Asian (not Hispanic)
- American Indian or Alaska Native
- Two or more races (not Hispanic)

Gender categories (binary for EEO-1; track non-binary separately for internal use):
- Male
- Female

**Critical:** EEO-1 data must be self-reported and voluntary. Do not assume or assign categories.

### Job Category Groups (EEO-1)
| Code | Category |
|------|---------|
| 1.1 | Executive/Senior Level Officials and Managers |
| 1.2 | First/Mid Level Officials and Managers |
| 2 | Professionals |
| 3 | Technicians |
| 4 | Sales Workers |
| 5 | Administrative Support Workers |
| 6 | Craft Workers |
| 7 | Operatives |
| 8 | Laborers and Helpers |
| 9 | Service Workers |

### Internal Diversity Metrics (Beyond EEO-1)
- Representation at each level (IC1 through executive)
- Hiring diversity (new hires by demographic)
- Promotion rates by demographic (equity analysis)
- Turnover by demographic (is one group leaving at higher rates?)
- Pay equity by demographic (see `salary-band-builder`)

## Equity Flags

| Flag | What to Look For |
|------|----------------|
| Representation gap | Demographic underrepresented relative to qualified labor pool |
| Concentration effect | One demographic concentrated in lower-level jobs |
| Pipeline leak | Diverse hiring at entry level but not at senior level |
| Disparate turnover | One group leaving at significantly higher rates |
| Pay gap | Statistically significant compensation difference by demographic |

## Output Format

```markdown
# Workforce Diversity Report — <Entity>
**Period:** <year> | **Total HC:** <N> | **Date:** <date>
**Purpose:** Internal / EEO-1 Filing / Executive

---

## Workforce Composition

| Demographic | Total HC | % of Total | % Management | % Senior/Exec |
|------------|---------|-----------|-------------|--------------|
| White | <N> | X% | X% | X% |
| Black/African American | <N> | X% | X% | X% |
| Hispanic/Latino | <N> | X% | X% | X% |
| Asian | <N> | X% | X% | X% |
| Other/Two or more | <N> | X% | X% | X% |
| Gender: Female | <N> | X% | X% | X% |
| Gender: Male | <N> | X% | X% | X% |

## Level Representation

| Level | Total | % Female | % URG* |
|-------|-------|---------|--------|
| IC1-2 | <N> | X% | X% |
| IC3-4 | <N> | X% | X% |
| M1-2 | <N> | X% | X% |
| Director+ | <N> | X% | X% |

*URG = Underrepresented Group (Black, Hispanic, Indigenous, Multi-racial)

## Equity Flags

⚠️ **Pipeline concentration:** <Demographic> is X% of IC1-2 but only X% of M1+. Review promotion rates.
⚠️ **Turnover disparity:** <Demographic> voluntary turnover is X% vs. X% company-wide. Exit interview analysis recommended.

## EEO-1 Filing Status (if applicable)
**Eligible to file:** Yes (100+ employees) / No
**Data collection complete:** Yes / No
**Filing deadline:** <date>
**Prior year filed:** Yes / No

## Recommendations
1. <Specific DEI action based on data — not generic>
```

## Output Contract
- All demographic data is self-reported and voluntary — never assigned
- Equity flags based on data patterns, not assumptions
- Pay equity always flagged as a separate analysis (this skill does representation; `salary-band-builder` handles comp)
- HITL required before any demographic data is shared externally; legal review before EEO-1 submission

## System Dependencies
- **Reads from:** HRIS demographic data (employee self-report), headcount by level
- **Writes to:** Nothing (report for HITL review)
- **HITL Required:** Dr. Lewis reviews before executive distribution; legal counsel reviews EEO-1 before filing; Matt Mathison approves any public diversity commitments

## Test Cases
1. **Golden path:** Annual diversity report for 75-person entity → composition by demographic, level representation, 2 equity flags with recommended actions
2. **Edge case:** Entity below 100 employees (no EEO-1 required) → notes no filing required, presents internal data for voluntary tracking and improvement
3. **Adversarial:** Request to exclude a demographic category from the report → refuses to selectively exclude data, explains that selective reporting undermines the purpose of equity analysis

## Audit Log
EEO-1 filings retained permanently. Internal diversity reports retained by year. Demographic data stored securely with access controls.

## Deprecation
Retire when HRIS includes automated EEO-1 data aggregation, diversity dashboards, and pay equity analysis.
