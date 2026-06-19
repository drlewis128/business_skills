---
name: ops-allevio-quality-metrics
description: "Track and manage Allevio clinical quality metrics and improvement programs. Use when the user says 'quality metrics', 'clinical quality', 'quality measures', 'quality reporting', 'HEDIS', 'HEDIS measures', 'quality scores', 'quality scorecard', 'quality dashboard', 'quality improvement', 'quality program', 'quality initiative', 'clinical quality improvement', 'QI program', 'QI', 'CQI', 'NCQA', 'accreditation', 'clinical benchmarks', 'care quality', 'care quality metrics', 'preventive care quality', 'clinical performance measures', 'quality gap', 'quality gap closure', 'screenings compliance', 'mammography rate', 'colorectal screening', 'diabetes management quality', 'blood pressure control', 'A1c testing', 'medication adherence quality', 'quality report', 'clinical quality report', 'Allevio quality', or 'clinical outcomes'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--measure <preventive|chronic-disease|medication-adherence|access|patient-experience>] [--action <track|report|improve|benchmark>] [--period <monthly|quarterly|annual>] [--audience <allevio-ceo|matt|employer-group|external>]"
---

# Ops Allevio Quality Metrics

Track and manage Allevio clinical quality metrics — monitoring the HEDIS-aligned measures that define clinical quality for employer group healthcare, benchmarking against national standards, and driving quality improvement programs that produce better member outcomes. Clinical quality metrics serve three purposes: (1) internal: identify where clinical programs are working and where they need investment; (2) employer group retention: employers increasingly expect quality data as evidence of value; (3) regulatory and accreditation: NCQA and state-level quality standards require documented quality measurement programs. Dr. Lewis tracks quality metrics as a value creation lever — demonstrated quality improvement strengthens the Allevio employer value proposition, supports PMPM rate integrity at renewal, and protects GRR.

## When to Use
- Quarterly clinical quality review
- Annual quality report preparation (for employer groups or regulators)
- Employer group renewal (quality data supports PMPM rate justification)
- Quality gap closure program design
- NCQA accreditation preparation

## Clinical Quality Framework

```
KEY QUALITY MEASURES (HEDIS-aligned; Allevio employer health context):

  PREVENTIVE CARE QUALITY:
    Well-child visits (pediatric members): % with annual visit | Target: ≥75%
    Annual wellness visits (adult members): % with annual visit | Target: ≥65%
    Colorectal cancer screening: % of eligible adults screened | Target: ≥60%
    Breast cancer screening: % of eligible females with mammography | Target: ≥65%
    Cervical cancer screening: % of eligible females with Pap test | Target: ≥65%
    Influenza immunization: % of eligible members vaccinated | Target: ≥50%
    
  CHRONIC DISEASE MANAGEMENT QUALITY:
    Diabetes — HbA1c testing: % of diabetic members with HbA1c test | Target: ≥85%
    Diabetes — HbA1c control (<8%): % with controlled A1c | Target: ≥60%
    Hypertension — BP control: % with controlled BP (<140/90) | Target: ≥65%
    Depression — follow-up: % of newly diagnosed with follow-up in 30 days | Target: ≥70%
    Asthma — medication adherence: % with appropriate controller medication | Target: ≥70%
    
  MEDICATION ADHERENCE:
    Diabetes medications: adherence rate | Target: ≥80%
    Hypertension medications: adherence rate | Target: ≥80%
    Cholesterol medications: adherence rate | Target: ≥75%
    
  ACCESS QUALITY:
    Timely access to PCP: % with appointment within 7 days of request | Target: ≥90%
    Follow-up after hospital discharge: % seen by PCP within 7 days | Target: ≥75%
    Continuity of care: % of members seeing same PCP >50% of visits | Target: ≥80%

QUALITY REPORTING STRUCTURE:

  INTERNAL (monthly; Dr. Lewis review):
    Claim ratio leading indicators that are quality proxies (PCP connectivity; preventive care)
    Clinical team's quality initiative progress
    
  EMPLOYER GROUP ANNUAL REPORT (annually; employer HR contacts):
    High-level quality summary: "Your enrolled population's health by the numbers"
    De-identified; aggregate data only
    Demonstrates Allevio's value as a population health partner
    Format: 1-2 page executive summary + data appendix
    Reviewed by Dr. Lewis and Allevio CEO before distribution
    
  REGULATORY / ACCREDITATION:
    NCQA MSO standards: documentation of quality program; measurement; improvement
    State-specific employer health plan quality reporting (if applicable)
    Dr. Lewis tracks compliance calendar (fin-compliance-calendar)

QUALITY IMPROVEMENT PROGRAM:

  IDENTIFY GAPS:
    Compare Allevio quality scores to NCQA/HEDIS national benchmarks
    Identify bottom quartile measures (below 25th percentile nationally)
    
  PRIORITIZE:
    Impact on enrolled population (how many members affected)
    Claim ratio connection (does improving this measure reduce future claim spend)
    Feasibility (can Allevio clinical team actually move this measure)
    
  DESIGN INTERVENTIONS:
    Outreach campaign (for members with care gaps)
    Provider reminders (for preventive care ordering)
    Care coordinator follow-up (for chronic disease management gaps)
    
  MEASURE IMPACT:
    Quarterly tracking vs. baseline
    Annual year-over-year comparison
    
EMPLOYER GROUP VALUE PROPOSITION CONNECTION:

  Quality data is a retention and pricing tool:
    At renewal: "Your group's preventive care rate improved from 52% to 67% under Allevio care"
    This is not just feel-good data — it reduces future claim spend and demonstrates ROI
    Employer groups that see their population health improving are more likely to renew
    
  Dr. Lewis uses quality data in GRR analysis:
    High-quality scores in a group → lower GRR risk
    Low quality scores in a group + high complaint rate → high GRR risk
```

## Output Format

```markdown
# Clinical Quality Scorecard — Q[N] [Year]
**Prepared by:** Allevio Clinical Team | **Reviewed by:** Dr. Lewis

---

## Preventive Care Quality

| Measure | Target | Q[N] | Q[N-1] | Trend | HEDIS Benchmark |
|---------|--------|------|--------|-------|----------------|
| Annual wellness visit | ≥65% | [%] | [%] | ↑↓→ | [%] |
| Colorectal screening | ≥60% | [%] | [%] | ↑↓→ | [%] |

---

## Chronic Disease Management Quality

| Measure | Target | Q[N] | Q[N-1] | Trend | HEDIS Benchmark |
|---------|--------|------|--------|-------|----------------|
| Diabetes HbA1c testing | ≥85% | [%] | [%] | ↑↓→ | [%] |
| Hypertension BP control | ≥65% | [%] | [%] | ↑↓→ | [%] |

---

## Quality Improvement Priorities

| Measure | Current vs. target | Gap | Q+1 initiative | Expected improvement |
|---------|-------------------|-----|---------------|---------------------|
| [Measure] | [%] vs. [%] | [-X pts] | [Outreach campaign] | +[X pts] |

---

## Employer Value Summary (annual; for employer groups)
Overall quality score: [X]/100 | Prior year: [X]/100 | National benchmark: [X]/100
```

## Output Contract
- Quality measures are compared to national HEDIS benchmarks, not internal targets alone — Allevio's internal targets are the operational floor; the HEDIS benchmark is the market standard; if Allevio's preventive care rate is 65% (meeting the internal target) but the HEDIS national benchmark is 71%, that's a data point worth knowing — and disclosing to employers who ask how Allevio compares to the market; Dr. Lewis does not allow quality reporting that compares Allevio only to its own prior period without the external benchmark context
- Quality data is aggregate/de-identified — all quality metrics are population-level; no individual member data is reported to Dr. Lewis, Matt Mathison, or employer groups; the employer annual quality report shows "[Employer Group] population: 65% of eligible members received an annual wellness visit in the past 12 months" — not which individual members did or did not complete the visit; HIPAA governs this absolute boundary
- Quality improvement is tied to claim ratio and GRR impact — every quality gap that is prioritized for improvement has a stated connection to either the claim ratio or the employer GRR; "We're improving the diabetes HbA1c testing rate from 78% to 85%" is paired with "this will contribute to a 0.8 point claim ratio improvement over 12-24 months"; quality is not measured as a compliance exercise — it's measured as a value creation lever that justifies Allevio's employer health partner positioning
- HITL required: employer annual quality reports → Dr. Lewis review + Allevio CEO approval before distribution to employer groups; any quality data shared externally (to regulators; to the public; to prospective employer groups) → Dr. Lewis review; NCQA accreditation documentation → Dr. Lewis + Allevio CEO + external accreditation consultant; quality improvement programs that require capital investment → Allevio CEO + Dr. Lewis budget approval; quality benchmark comparisons must be accurate (no cherry-picking time periods to inflate performance appearance) — Dr. Lewis validates methodology

## System Dependencies
- **Reads from:** AdvancedMD (aggregate quality measure data — de-identified); HEDIS national benchmarks (external reference); ops-allevio-care-coordination (care coordination programs that drive quality measures); ops-allevio-clinical-ops (clinical team capacity to run quality improvement programs); fin-allevio-claim-ratio (claim ratio connection to quality)
- **Writes to:** Quality scorecards (SharePoint → Allevio → Operations → QualityMetrics → Q[N]-[YYYY]); employer annual quality reports (per employer group); NCQA documentation (if applicable); Allevio CEO briefings; Dr. Lewis quality dashboard; QBR deck (clinical quality section); GRR analysis (quality data informs employer risk assessment)
- **HITL Required:** Employer quality reports → Dr. Lewis review + Allevio CEO approval; externally shared quality data → Dr. Lewis review; NCQA documentation → Allevio CEO + consultant; quality improvement capital → CEO + Dr. Lewis approval; methodology validation — Dr. Lewis confirms before any external report distribution; all data is aggregate/de-identified (HIPAA absolute)

## Test Cases
1. **Golden path:** Annual quality review for employer group report preparation. Population: 280 members across 6 employer groups. Annual wellness visit rate: 68% (above 65% target; national benchmark 62% — above benchmark). Diabetes HbA1c testing: 81% (below 85% target; national benchmark 82% — near benchmark). BP control: 61% (below 65% target; national benchmark 67% — below benchmark). Dr. Lewis to Allevio CEO: "Quality scores are solid. We're above the national benchmark on preventive care. The two gaps: HbA1c testing and BP control. I recommend the Q3 quality improvement initiative focus on BP control (larger gap vs. benchmark; higher claim ratio impact per point of improvement). The employer annual report is ready — I've reviewed for accuracy and de-identification compliance. Your approval to distribute?"
2. **Edge case:** An employer group HR director asks for the quality report for their specific members — including names of employees who missed their annual wellness visit → Dr. Lewis: "I can't provide individual-level data — that information is protected health information (PHI) under HIPAA and cannot be disclosed to the employer. What I can provide: (1) the aggregate wellness visit completion rate for your group; (2) the demographic breakdown (age group; coverage tier) of members with completed vs. incomplete visits — without names or individual identification; (3) a communication template you can send to all your employees encouraging them to schedule their annual wellness visit; (4) Allevio can run a direct member outreach campaign to your group's members with incomplete visits (Allevio communicates with members directly — the employer does not receive the individual data). Would any of these options be helpful?"
3. **Adversarial:** An employer group at renewal uses competitor claims of higher quality scores to negotiate a lower PMPM rate → Dr. Lewis: "I want to respond with data, not just defensiveness. First: I'd want to verify the competitor's quality data — HEDIS measures have specific measurement period rules and population definitions; quality scores from different time periods or population definitions aren't directly comparable. Second: Allevio's quality scorecard for [Employer Group] is: [key metrics]. Third: the relevant question isn't just 'who has a higher score' — it's 'what has changed for your members under Allevio?' The year-over-year improvement from [prior year] to [current year] for this employer group is [specific metrics]. That's the value we're creating. I'll prepare a side-by-side comparison with the competitor's claims, verify what's actually comparable, and give the Allevio CEO the data to negotiate from a position of fact rather than just price."

## Audit Log
Quarterly quality scorecards retained. Annual employer quality reports retained (per group; with distribution records). HEDIS benchmark comparison data retained. Quality improvement program records retained. NCQA documentation retained. All quality reports reviewed and approved by Dr. Lewis before distribution. PHI handling compliance records retained.

## Deprecation
Review HEDIS measure set annually as NCQA updates the measure specifications. Add or remove measures from Allevio's tracking as the measure set evolves and as Allevio's clinical model matures. The employer value proposition connection to quality data is a permanent feature.
