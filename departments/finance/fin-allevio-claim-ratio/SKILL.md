---
name: fin-allevio-claim-ratio
description: "Track and manage Allevio's medical claim ratio — the primary EBITDA lever. Use when the user says 'claim ratio', 'medical loss ratio', 'MLR', 'claims cost', 'medical claims', 'claim cost analysis', 'claim ratio trend', 'improve claim ratio', 'lower claim ratio', 'claim ratio performance', 'claim ratio report', 'claim ratio target', 'claim ratio variance', 'medical cost ratio', 'medical spend', 'claims expense', 'utilization review', 'high utilizer', 'high cost member', 'chronic condition management', 'clinical intervention', 'population health', 'preventive care', 'claims IBNR', 'incurred but not reported', 'claims reserve', 'claims projections', 'what is our claim ratio', 'where are we on claims', or 'Allevio loss ratio'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly|annual>] [--action <review|analyze|project|report|improve>] [--focus <trend|variance|ibnr|utilization|employer-group>] [--group <all|specific>]"
---

# Fin Allevio Claim Ratio

Track and manage Allevio's medical claim ratio — the single most important financial metric in Allevio's business model and the primary EBITDA lever. The claim ratio (medical claims paid / PMPM premium revenue) determines whether Allevio is profitable: at 87%, Allevio keeps 13 cents of every premium dollar after claims; at 93%, only 7 cents. A 6-point improvement in the claim ratio at Allevio's current premium revenue translates to ~$300K of additional EBITDA — equivalent to adding 2-3 new employer groups without any growth. This is the financial instrument that connects Allevio's clinical performance to its financial value.

## When to Use
- Monthly: update claim ratio after close (actual claims vs. PMPM revenue)
- Quarterly: trend analysis and IBNR (incurred but not reported) reserve update
- A high-utilizer or chronic condition situation is driving unusual claims cost
- OE renewal preparation (claim ratio drives the PMPM negotiation)
- Matt Mathison asks about Allevio's financial performance relative to plan

## Claim Ratio Framework

```
CLAIM RATIO DEFINITION AND CALCULATION:

  Formula: Claim Ratio = Medical Claims Paid (or Incurred) / PMPM Premium Revenue
  
  Two views:
    PAID claim ratio: claims actually paid during the period / revenue in the period
    INCURRED claim ratio: claims incurred during the period (including IBNR) / revenue
    
  Allevio uses INCURRED for management reporting:
    Incurred = paid + IBNR (claims incurred but not yet adjudicated/paid)
    IBNR estimate: based on historical claim development patterns; updated quarterly
    
  TARGETS:
    Current: 89% (as of prior quarter)
    Short-term target: 87% (within 12 months; clinical program impact)
    Long-term target: 85% (established program; 3-year horizon)
    
    Action thresholds:
      ≤87%: Green — on target
      87-91%: Yellow — monitor; clinical review; EBITDA impact calculated
      >91%: Red — escalate to Allevio CEO; immediate clinical intervention review

CLAIM RATIO DRIVERS:

  UTILIZATION (how often members use services):
    PCP visits; specialist referrals; ER visits; hospital admissions; imaging
    High utilization: more visits = more claims = higher claim ratio
    Target: reduce unnecessary utilization (ER for non-emergency; avoidable admissions)
    Clinical program: primary care access; care coordination; chronic disease management
    
  UNIT COST (what each service costs):
    Provider rates; facility fees; prescription drug costs; specialty care
    Allevio has limited control over unit cost unless negotiating provider contracts
    Opportunity: steer members to lower-cost, high-quality providers
    
  SEVERITY / MIX:
    Employer group mix: groups with older employees or chronic condition prevalence cost more
    High-cost claimants: a small number of members can drive the ratio significantly
    Note: HIPAA — reporting to Dr. Lewis is AGGREGATE; no identification of specific members
    
  IBNR ESTIMATION:
    Incurred But Not Reported: claims that occurred in the period but haven't been submitted yet
    IBNR is material for healthcare because adjudication lags by 30-90 days
    Method: apply historical claim development factors by service type
    IBNR reserve: the QuickBooks accrual that reflects estimated unpaid claims
    Quarterly update: review actual claim development vs. IBNR estimate; true up as needed

CLAIM RATIO IMPROVEMENT LEVERS:

  (Coordinated with clinical team — Dr. Lewis provides the financial framework;
   clinical team implements the interventions)
   
  LEVER 1 — PRIMARY CARE ACCESS:
    Hypothesis: members with a primary care relationship have lower total costs
    Metric: % of members with established PCP (target: ≥75%)
    Intervention: connect new members to Allevio PCP within 30 days of enrollment
    Expected financial impact: $[X] per member per year (empirical from program data)
    
  LEVER 2 — CHRONIC CONDITION MANAGEMENT:
    Hypothesis: well-managed chronic conditions (diabetes; hypertension; COPD) have lower ER/hospital costs
    Metric: % of members with chronic conditions enrolled in management program
    Clinical enrollment target: ≥30% of eligible members
    Expected impact: 15-25% reduction in hospital admissions for enrolled members
    
  LEVER 3 — PREVENTIVE CARE:
    Hypothesis: annual wellness visits catch conditions early; reduce severity
    Metric: preventive care utilization rate
    Expected impact: 12-18 month lag before cost reduction shows up in claim ratio

REPORTING TO MATT MATHISON:

  Monthly: claim ratio as part of exec-cfo-oversight financial summary
    AGGREGATE ONLY — no individual member or diagnosis information
    Format: "Claim ratio this month: 88.4% (vs. 89.1% last month; target 87%; improving trend)"
    
  Quarterly: claim ratio trend analysis + IBNR update
    Which levers are producing financial results?
    What is the revised full-year claim ratio projection?
    What is the EBITDA impact of the trend vs. the budget assumption?
```

## Output Format

```markdown
# Allevio Claim Ratio Report — [Month Year]
**Prepared by:** Dr. Lewis | **HIPAA: Aggregate data only — no member-level PHI**

---

## Claim Ratio Summary

| Metric | This month | Prior month | Target | Trend | Status |
|--------|-----------|------------|--------|-------|--------|
| PMPM premium revenue | $[X] | $[X] | — | ↑/↓/→ | — |
| Medical claims (paid) | $[X] | $[X] | — | ↑/↓/→ | — |
| IBNR reserve | $[X] | $[X] | — | ↑/↓/→ | — |
| Total incurred claims | $[X] | $[X] | — | ↑/↓/→ | — |
| **Incurred claim ratio** | **[%]** | **[%]** | **≤87%** | ↑/↓/→ | 🟢/🟡/🔴 |

---

## EBITDA Impact of Claim Ratio vs. Target

| | Actual claim ratio | Target claim ratio | EBITDA impact |
|-|-------------------|-------------------|--------------|
| Monthly | [%] | 87% | $[+/-X] |
| YTD | [%] | 87% | $[+/-X] |

---

## Claim Ratio Trend (last 6 months)

| Month | Claim ratio | Status |
|-------|------------|--------|
| [M-5] | [%] | 🟢/🟡/🔴 |
| [M-4] | [%] | — |
| [M-3] | [%] | — |
| [M-2] | [%] | — |
| [M-1] | [%] | — |
| Current | [%] | — |

---

## Clinical Program Impact (Aggregate)

| Program | Enrolled members | Expected EBITDA impact | Status |
|---------|-----------------|----------------------|--------|
| PCP connectivity | [N] ([%] coverage) | $[X] | On track |
| Chronic condition mgmt | [N] ([%] eligible) | $[X] | [Status] |
| Preventive care | [N] ([%] completed annual WV) | $[X] | [Status] |
```

## Output Contract
- EBITDA bridge every month — every claim ratio report includes the EBITDA bridge showing exactly what the claim ratio difference from target is costing (or saving) Allevio: "At 89.2% vs. the 87% target, Allevio is leaving $96K of EBITDA on the table this month (2.2% × $4.37M annual revenue / 12 months)"; this translation from ratio to dollars makes the clinical improvement work financially visible and motivates the clinical team's engagement with the financial targets
- HIPAA: no individual member data — the claim ratio analysis and reporting stays strictly aggregate; Dr. Lewis does not see which members drove the claims cost; the clinical team manages individual member interventions; Dr. Lewis sees only totals and program enrollment percentages; the claim ratio report that goes to Matt Mathison contains no member-level information; if a specific employer group has unusually high claims (relevant for renewal negotiation), that information is handled within HIPAA-compliant channels by the Allevio clinical team
- IBNR is a material estimate — the IBNR reserve is an accounting estimate, not a precise number; a material error in the IBNR estimate distorts the claim ratio and the EBITDA report; Dr. Lewis reviews the IBNR methodology quarterly with the billing team and the external auditors; the IBNR estimate is updated every quarter based on actual claim development data; persistent IBNR estimation errors (actual claims consistently higher or lower than IBNR) indicate a flawed development factor that needs recalibration
- HITL required: Matt Mathison receives the monthly claim ratio in the exec-cfo-oversight financial summary; claim ratio >91% triggers immediate Allevio CEO conversation + Matt Mathison notification within 24 hours; IBNR methodology changes require Dr. Lewis approval; annual IBNR review is coordinated with the external auditor; OE renewal PMPM negotiation strategy (which incorporates claim ratio data) is reviewed by Dr. Lewis and Matt Mathison before Allevio CEO presents to employer groups

## System Dependencies
- **Reads from:** AdvancedMD (aggregate claims data — paid claims by period; HIPAA-compliant aggregate); fin-allevio-pmpm (premium revenue — the denominator of the claim ratio); clinical program data (aggregate enrollment and outcomes — from clinical team; no PHI); prior IBNR estimates (QuickBooks accrual records)
- **Writes to:** Claim ratio reports (SharePoint → Finance → Allevio → ClaimRatio → [YYYY]-[MM] — HIPAA-protected); fin-financial-model (claim ratio is a key driver in the Allevio financial model); exec-cfo-oversight (claim ratio in monthly financial summary); fin-kpi-dashboard (claim ratio is an Allevio KPI); exec-value-creation-plan (claim ratio improvement is a VCP milestone)
- **HITL Required:** Claim ratio >91% → Allevio CEO + Matt within 24 hours; IBNR methodology changes require Dr. Lewis approval; OE renewal strategy incorporating claim ratio data reviewed by Matt; clinical program investment decisions coordinated with Dr. Lewis (financial model impact); no member-level PHI ever leaves HIPAA-compliant environment

## Test Cases
1. **Golden path:** May claim ratio; PMPM revenue $429K; paid claims $378K (88.1%); IBNR reserve $4K (historical development factor for May = 1%); total incurred claims $382K; incurred claim ratio 89.1%. EBITDA impact vs. 87% target: 2.1% × $429K = $9K EBITDA gap this month / $108K gap annualized. Trend: 6-month trend: 91.2% → 90.4% → 89.8% → 89.4% → 89.3% → 89.1% (improving; clinical programs are working). Clinical program update: PCP connectivity 68% (↑ from 63% last month); chronic condition enrollment 22% (↑ from 18%); target 30%. Summary to Matt: "Allevio claim ratio is 89.1% — improving trend for the 5th consecutive month. Still above the 87% target; trajectory suggests 87% within 3-4 months if current program momentum holds. EBITDA gap vs. target: $108K annualized. The clinical program enrollment gains are the driver — PCP connectivity is working."
2. **Edge case:** One employer group has unusually high claims in Q2 → Allevio CEO brings this to Dr. Lewis's attention → Dr. Lewis: "I can acknowledge the group-level issue for the renewal negotiation context, but I can't work with individual member data. Here's what I can do financially: for the OE renewal discussion with that employer group, we can provide aggregate data showing their group's premium revenue vs. our cost to serve — without breaking it down to individual members or diagnoses. The PMPM renewal rate for high-cost groups can be adjusted based on aggregate experience — that's standard in employer healthcare arrangements. I'd recommend Allevio's clinical team and Privacy Officer prepare the aggregate summary for the renewal negotiation, and I'll review the financial terms. What I need from you: the gross claims paid for that group in aggregate for the year — no member breakdown."
3. **Adversarial:** Matt asks why the claim ratio isn't improving faster when the clinical programs have been running for 6 months → Dr. Lewis: "Fair question. Here's the honest analysis: clinical interventions for chronic condition management typically show cost reduction on a 12-18 month lag. The 6-month trend improvement we're seeing (91.2% → 89.1%) is actually faster than industry typical for a new program. The biggest lag is in the chronic condition population — we've enrolled 22% of eligible members (target: 30%), and the fully-enrolled members show a 23% reduction in ER utilization (clinical team data) but the savings won't fully show up in the claim ratio until the enrolled members complete a full 12 months in the program. The two things that would accelerate the improvement: (1) get enrollment from 22% to 30% faster; (2) any new employer groups added in the next 12 months should prioritize groups with younger, healthier populations to improve the overall risk mix. Neither is a financial decision — both are operational. Want me to frame this for Matt as an investment case for the clinical team's enrollment resources?"

## Audit Log
Monthly claim ratio records retained. IBNR methodology and quarterly updates retained. Claim ratio trend data retained rolling 24 months. EBITDA impact calculations retained. OE renewal negotiation financial summaries retained. External auditor IBNR review records retained.

## Deprecation
Retire when Allevio has a dedicated CFO and/or actuarial resource who manages the claim ratio analysis — with Dr. Lewis providing the portfolio-level financial impact summary and Matt Mathison receiving the quarterly Allevio financial overview.
