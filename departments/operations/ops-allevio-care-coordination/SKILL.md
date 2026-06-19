---
name: ops-allevio-care-coordination
description: "Manage Allevio care coordination and utilization management to optimize clinical outcomes and claim ratio. Use when the user says 'care coordination', 'care coordinator', 'utilization management', 'utilization review', 'UM', 'prior authorization', 'prior auth', 'auth review', 'authorization', 'care management', 'case management', 'disease management', 'chronic disease management', 'chronic condition', 'high-risk member', 'high-utilizer', 'ER diversion', 'ER utilization', 'emergency room utilization', 'unnecessary ER visits', 'ER avoidance', 'preventive care', 'preventive care outreach', 'care gap', 'care gap closure', 'wellness program', 'wellness outreach', 'PCP connectivity', 'PCP engagement', 'member outreach', 'population health', 'population health management', 'claims management', 'claims reduction', 'claim ratio improvement', 'PMPM optimization', or 'clinical cost management'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--program <utilization|care-management|preventive|chronic-disease|er-diversion>] [--action <review|design|track|escalate|report>] [--metric <er-rate|auth-approval|pcp-connectivity|preventive-rate|chronic-management>] [--period <monthly|quarterly>]"
---

# Ops Allevio Care Coordination

Manage Allevio care coordination and utilization management — tracking the programs that connect members to care efficiently, reduce unnecessary emergency room utilization, manage high-risk chronic conditions, and drive preventive care adherence. Care coordination is the primary operational lever for the claim ratio: Allevio's financial model assumes that proactive, coordinated care reduces unnecessary utilization and keeps the medical claim ratio at or below 87%; when care coordination breaks down (members bypass PCP; ER utilization spikes; high-risk members are not actively managed), the claim ratio climbs and EBITDA erodes. Dr. Lewis tracks care coordination metrics as claim ratio leading indicators — the clinical team runs the programs; Dr. Lewis tracks the outcomes and connects them to the financial model.

## When to Use
- Monthly claim ratio review (care coordination metrics are the leading indicators)
- Claim ratio breach (care coordination failure is often the root cause)
- Quarterly clinical quality review
- A care coordination program is being designed or evaluated
- High ER utilization spike in a specific employer group

## Care Coordination Framework

```
CARE COORDINATION PROGRAMS (Allevio's operating model):

  1. PCP CONNECTIVITY PROGRAM:
     Goal: every enrolled member has an established PCP within 30 days of enrollment
     Target: ≥80% of members with an established PCP relationship
     Method: automated outreach at enrollment; care coordinator follow-up for no-PCP members
     Why it matters: members with established PCPs have 40-60% lower ER utilization
     Metric to track: % members with PCP visit in the last 12 months
     
  2. UTILIZATION REVIEW (UR):
     Goal: ensure authorized care is medically necessary and appropriate setting
     Process: prospective review for elective procedures; concurrent review for inpatient
     Authorization required for: major procedures; specialist visits (model-dependent); imaging
     Target: <2% of denials overturned on appeal (high overturn rate = inappropriate denials)
     Claim ratio impact: inappropriate authorization = unnecessary spend
     
  3. CHRONIC DISEASE MANAGEMENT:
     Target conditions: diabetes; hypertension; COPD; CHF; depression (top claims drivers)
     Method: care coordinator outreach to identified high-risk members; education; medication adherence
     Target: ≥70% of identified high-risk members engaged in management program
     Why it matters: managed chronic conditions = fewer acute episodes = lower claims
     Metric: % of high-risk members with active care coordinator touchpoint in last 90 days
     
  4. ER DIVERSION:
     Goal: redirect non-emergency ER visits to urgent care or telehealth
     Method: 24/7 nurse advice line; telehealth access; member education
     Target: ER utilization rate <100 visits per 1,000 members per year (depends on risk mix)
     Trending: ER utilization rate month-over-month; by employer group
     High ER group: Allevio care coordinator contacts the group's members for education
     
  5. PREVENTIVE CARE OUTREACH:
     Goal: eligible members complete recommended preventive screenings
     Key screenings: annual wellness visit; cancer screenings; immunizations
     Target: ≥60% of eligible members with completed annual wellness visit
     Method: outreach campaign (email/text); employer partner coordination
     Why it matters: preventive care catches conditions early = lower future claim spend

UTILIZATION MANAGEMENT GOVERNANCE:

  ALL DENIALS DOCUMENTED: every authorization denial documented with clinical rationale
  APPEAL RATE MONITORED: appeals >5% of denials → UR process review
  INDEPENDENT REVIEW: member can request external review of denied claim (regulatory right)
  HIPAA COMPLIANCE: all UR decisions are made on clinical grounds; no financial incentive to deny
  
  Dr. Lewis's role in UR: monitors aggregate metrics ONLY; no individual clinical decisions
    Metrics: approval rate; denial rate; appeal rate; overturn rate
    Does NOT: review individual cases; override clinical decisions; access PHI
    
CLAIM RATIO LEADING INDICATOR DASHBOARD:

  Monthly tracking (leading indicators for the claim ratio):
  
  | Indicator | Target | Actual | Claim ratio impact |
  |-----------|--------|--------|-------------------|
  | PCP connectivity rate | ≥80% | [%] | -2 pts per +10% connectivity |
  | ER utilization rate | <100/1K | [N/1K] | -1 pt per -15 ER visits/1K |
  | Chronic disease engagement | ≥70% | [%] | -1.5 pts per +10% engagement |
  | Preventive care rate | ≥60% | [%] | Lower cost; 12-24 month lag |
  | Authorization approval rate | 90-95% | [%] | Flag if <90% or >98% |
```

## Output Format

```markdown
# Care Coordination Report — [Month Year]
**Prepared by:** Allevio Clinical Team | **Reviewed by:** Dr. Lewis

---

## Claim Ratio Leading Indicators

| Indicator | Target | Actual | Trend | Claim Ratio Signal |
|-----------|--------|--------|-------|-------------------|
| PCP connectivity rate | ≥80% | [%] | ↑↓→ | 🟢/🟡/🔴 |
| ER utilization (per 1K/yr) | <100 | [N] | ↑↓→ | 🟢/🟡/🔴 |
| Chronic disease engagement | ≥70% | [%] | ↑↓→ | 🟢/🟡/🔴 |
| Preventive care completion | ≥60% | [%] | ↑↓→ | 🟢/🟡/🔴 |
| UR denial rate | 5-10% | [%] | ↑↓→ | 🟢/🟡/🔴 |

---

## Current Claim Ratio: [%] | Target: ≤87% | Gap: [+/-] pts

Leading indicator assessment: [On track to hit 87% / At risk — lagging indicators improving but current claim ratio elevated]

---

## Program Highlights

**Wins:** [e.g., "PCP connectivity improved 3 points — chronic disease outreach campaign effective"]
**Risks:** [e.g., "ER utilization elevated in [Employer Group X] — targeted outreach campaign launched"]
**Action:** [Specific action and owner]
```

## Output Contract
- All care coordination reporting is aggregate population data — no individual member data is reported to Dr. Lewis or Matt Mathison; Dr. Lewis receives population-level metrics (PCP connectivity rate; ER utilization per 1,000; chronic disease engagement rate) without any individual member identification; this is both a HIPAA compliance requirement and a design principle; the clinical team manages individual member care; Dr. Lewis manages the portfolio-level financial implications of population-level metrics
- Leading indicators are reported alongside the claim ratio, not just the claim ratio — the claim ratio is a lagging indicator (it tells you what happened); the care coordination metrics are leading indicators (they tell you what is likely to happen); Dr. Lewis does not allow a claim ratio report that only shows the claim ratio without the leading indicators that explain it; "claim ratio is 89.1% — here's why and here's what is being done to improve it" is the correct format; "claim ratio is 89.1%" alone is incomplete
- ER utilization spikes get employer-group-level analysis — when ER utilization is elevated, the analysis drills to the employer group level (without PHI) to identify whether the spike is concentrated in a specific group or spread across the population; a concentrated spike in one employer group often has an explainable cause (a covered condition that the group's workforce is disproportionately affected by; a member communication failure; a PCP access gap); an explainable cause has an addressable solution; Dr. Lewis connects the operational analysis to the clinical team's response
- HITL required: UR policy changes (criteria for authorization; denial criteria) → Allevio CEO + Medical Director approval; any UR program that could be perceived as financially incentivizing denials → legal review; chronic disease management program design → Allevio CEO + Medical Director; care coordination staffing changes (hiring/departing care coordinators) → Allevio CEO (clinical) + Dr. Lewis (budget); claim ratio >91% driven by identified care coordination gap → Dr. Lewis escalation to Allevio CEO + Matt Mathison within 24 hours

## System Dependencies
- **Reads from:** AdvancedMD (aggregate utilization data — de-identified; no PHI); fin-allevio-claim-ratio (claim ratio and component analysis); ops-allevio-clinical-ops (provider panel; access metrics); ops-allevio-quality-metrics (quality measures that overlap with care coordination)
- **Writes to:** Care coordination reports (SharePoint → Allevio → Operations → CareCoordination); Allevio CEO briefings (leading indicator alerts; program status); Matt Mathison notifications (claim ratio >91% with care coordination root cause); ops-action-tracker (care coordination improvement actions); QBR deck (clinical quality / care coordination section)
- **HITL Required:** All data is aggregate/de-identified (no PHI to Dr. Lewis or Matt); UR policy changes → Allevio CEO + Medical Director; financially-incentivized denial concern → legal review; care coordinator staffing → CEO (clinical) + Dr. Lewis (budget); claim ratio >91% with care coordination root cause → Matt escalation within 24 hours

## Test Cases
1. **Golden path:** Monthly review shows claim ratio at 88.3% (above 87% target). Leading indicators: PCP connectivity at 77% (below 80% target — explanation: 3 new employer groups enrolled in Q1; members haven't established PCPs yet); ER utilization at 94/1K (within target); chronic disease engagement at 68% (2 points below target); preventive care at 61% (meeting target). Dr. Lewis analysis: "Claim ratio is elevated 1.3 points above target. The leading indicator story: PCP connectivity is lagging for the 3 new Q1 groups — this is expected in months 1-3; the clinical team's proactive PCP connection outreach to new members should normalize this by June. ER utilization is controlled — no spike. Chronic disease engagement is 2 points below target — the care coordinator has a targeted outreach campaign running for the 3 identified high-risk employer groups. Projection: claim ratio should return to ≤87% by Q3 if PCP connectivity closes to 80% as planned."
2. **Edge case:** ER utilization spikes from 94/1K to 142/1K in one month → Dr. Lewis: "Significant ER utilization spike this month — from 94/1K to 142/1K. This is a material signal. Before escalating to Matt, I'm getting an employer-group breakdown from the clinical team to see if this is population-wide or concentrated. Preliminary data: 87% of the spike is concentrated in 2 employer groups — [Group A] and [Group B]. Common factor being investigated: both groups had PCP scheduling issues in [month] (access gap). Likely connection: members who couldn't access PCP in time used the ER instead. Clinical team is conducting targeted ER outreach with both groups. If the PCP access issue is confirmed, I'm flagging to the Allevio CEO as an access gap that needs immediate clinical ops intervention — not just a care coordination response. Update to Matt: I'll have the root cause in 48 hours."
3. **Adversarial:** Allevio CEO wants to tighten authorization criteria to reduce denials and improve the claim ratio → Dr. Lewis: "I want to make sure we design this carefully. There are two ways to reduce claim spend through utilization management: (1) appropriate use of authorization to ensure medical necessity — this is clinically sound and reduces waste; (2) inappropriately tight criteria that deny medically necessary care — this creates legal exposure, member complaints, and potential regulatory action. Before any UR policy change, I want: (a) the Medical Director's review of the proposed criteria changes; (b) a legal review of whether the proposed criteria meet the medical necessity standard under applicable law; (c) the expected impact on appeal rate — if we change criteria and our appeal overturn rate goes from 1% to 8%, that's a signal we're over-denying. I'll work with you and the Medical Director to design criteria that protect the claim ratio without creating regulatory risk."

## Audit Log
Monthly care coordination reports retained (aggregate data only). ER utilization spike investigations retained. UR policy change records retained (with Medical Director and legal sign-off dates). Care coordination program design records retained. Claim ratio leading indicator dashboards retained. Employer-group-level utilization analysis retained (de-identified).

## Deprecation
Review care coordination program design annually against the evolving risk mix of the enrolled population and against Allevio's clinical model maturity. The leading indicator framework (PCP connectivity → ER utilization → claim ratio) is a permanent operational connection.
