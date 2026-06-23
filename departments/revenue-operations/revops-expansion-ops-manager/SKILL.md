---
name: revops-expansion-ops-manager
description: "Manage expansion revenue operations for MBL Partners portfolio entities. Use when the user says 'expansion revenue', 'upsell', 'cross-sell', 'expansion', 'expansion ops', 'expansion pipeline', 'grow existing accounts', 'account expansion', 'NRR', 'net revenue retention', 'land and expand', 'expansion opportunity', 'expansion motion', 'expand the account', 'upsell the client', 'existing account growth', 'customer growth', 'account growth', 'seat expansion', 'enrollment growth', 'IO growth', 'campaign growth', 'expand Allevio', 'grow agency book', 'expansion tracking', 'expansion forecast', 'expansion revenue target', 'expand within an account', 'account-based expansion', or 'grow inside the base'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--account <name>] [--type <seat|service|io|referral>] [--action <identify|track|forecast|report>]"
---

# RevOps Expansion Ops Manager

Manage expansion revenue operations for MBL Partners portfolio entities — identifying, tracking, and forecasting upsell and cross-sell opportunities within the existing client base to drive NRR above 100% and reduce the revenue pressure on new logo acquisition. Expansion is always higher-margin than new logo: no CAC, established trust, proven value.

## When to Use
- Identifying expansion opportunities in the existing client base
- Building the expansion pipeline for entity CEO visibility
- Tracking NRR and expansion revenue contribution
- Preparing for a growth conversation with a specific employer or agency

## Expansion Ops Framework

```
EXPANSION TYPES BY ENTITY:

  ALLEVIO:
    Seat expansion: employer grows headcount → more employees enroll → PMPM revenue increases automatically at contract terms
      Trigger: employer notifies Allevio HR of headcount change; or Allevio detects enrollment change
      Action: CS lead updates enrollment in AdvancedMD billing; GoHighLevel expansion deal created
      
    Service expansion: employer adds additional Allevio service lines (e.g., adds behavioral health module; adds on-site clinic day)
      Trigger: CS lead identifies at QBR or quarterly check-in; employer raises a new need
      Action: expansion deal entered in GHL (Stage 1 expansion); entity CEO leads sales conversation
      
    Employer referral to another employer (different expansion metric — new logo with referral attribution):
      Track separately: referral-to-close rate; source-of-referral employer
      Not counted in expansion revenue (it's a new logo), but tracked as an expansion benefit metric
      
  COLUMN6:
    IO growth: agency books a larger IO on the second campaign than the first
      Trigger: first IO completes; CS/AE proactively reaches out within 30 days for next campaign discussion
      Action: expansion IO entered in GHL; compared to first IO value → expansion delta tracked
      
    New brand / new campaign type within agency: agency brings Column6 a new advertiser brand that wasn't in the first IO
      Highest-value expansion motion: grows the agency relationship depth
      
EXPANSION IDENTIFICATION PROCESS:
  Allevio (quarterly):
    CS lead reviews all active employer accounts at quarterly check-in
    Expansion trigger checklist:
      ✓ Has employer grown headcount >10% since last contract date? → seat expansion
      ✓ Has employer expressed any unmet employee health need? → service expansion opportunity
      ✓ Is employer NPS ≥8? → referral ask appropriate
      ✓ Any new decision-maker who hasn't been introduced to Allevio's full offering? → re-introduction
      
  Column6 (post-IO):
    AE reviews completed IO within 30 days:
      ✓ Campaign performance (VCR; IVT; reach) — positive? → case for next IO
      ✓ Did agency have other brands on the IO plan that Column6 didn't run? → opportunity
      ✓ Is there a seasonal peak coming? → proactive next-campaign discussion
      
EXPANSION PIPELINE IN GOHIGHLEVEL:
  Tag: "Expansion" (distinct from "New Logo" in deal type field)
  Pipeline: use same Allevio/Column6 pipeline but tag as expansion
  ACV: delta between current contract value and proposed expanded value
  
NRR CALCULATION:
  NRR = (Starting ARR + Expansion ARR - Churned ARR) / Starting ARR × 100
  NRR target: ≥105% (Allevio); Column6: repeat IO rate ≥60% + IO value growth
  
HIPAA (ALLEVIO):
  Expansion conversations use aggregate, de-identified benefit utilization data only
  "Your employees are using [X]% of available appointments" is aggregate and compliant
  "Employee [Name] has used [specific service]" is PHI — never
  Service expansion proposals reviewed by Dr. Lewis for HIPAA compliance before delivery to employer
```

## Output Format

```markdown
# Expansion Ops Report — [Entity] — [Month/Quarter]
**Prepared by:** RevOps | **Data source:** GoHighLevel

---

## Expansion Pipeline

| Account | Expansion type | Expansion ACV | Stage | Owner | Expected close |
|---------|---------------|--------------|-------|-------|---------------|
| [Employer] | Seat expansion | $X | Stage 5 | CS Lead | [Date] |
| [Employer] | Service expansion | $X | Stage 3 | Entity CEO | [Date] |

---

## NRR Tracking

| Metric | This Month | YTD | Target |
|--------|-----------|-----|--------|
| Starting ARR | $X | | |
| Expansion revenue closed | $X | | |
| Churn | -$X | | |
| Ending ARR | $X | | |
| **NRR** | **X%** | **X%** | **≥105%** |

---

## Expansion Opportunities Identified This Quarter

| Account | Signal | Expansion type | Action | Owner |
|---------|--------|---------------|--------|-------|
| [Employer] | Headcount +18% | Seat expansion | Contract amendment | CS Lead |
| [Employer] | NPS 9 + mentioned kids' care need | Service expansion | Discovery call | Entity CEO |
```

## Output Contract
- Expansion requires a proactive motion, not a waiting game — an Allevio employer who grew from 45 to 55 employees over the last 6 months has 10 additional employees who are eligible for the benefit; if Allevio doesn't proactively update the enrollment and contract to reflect the growth, those 10 employees are not covered and Allevio is leaving $X PMPM in revenue on the table; Dr. Lewis requires CS leads to run the employer headcount check quarterly and update GoHighLevel immediately when expansion triggers are detected; expansion revenue is the highest-margin revenue in the book — it requires no CAC, the relationship is already established, and the value is already proven
- NRR above 100% is the sign of a healthy business — if Allevio retains 100% of base ARR (GRR = 100%) but never grows existing accounts, NRR = 100% and Allevio is flat; every new logo must cover all cost growth; with NRR at 105-110%, existing accounts are growing the base, new logos are additive, and the revenue model is compounding; Dr. Lewis tracks NRR monthly and uses it as the primary signal of CS team effectiveness and product-market fit in the installed base; a declining NRR trend (even if still above 100%) signals a problem with expansion identification or delivery on value
- HITL required: service expansion proposal → entity CEO leads conversation (not CS lead); Allevio service expansion content → Dr. Lewis HIPAA review before employer presentation; NRR below 100% for 2 months → entity CEO + Dr. Lewis; expansion deal >$30K ACV → entity CEO involved; Column6 IO growth conversation → AE + entity CEO for Tier 1 agencies

## System Dependencies
- **Reads from:** GoHighLevel (employer/agency records; expansion deals; NPS data; enrollment flags); AdvancedMD (aggregate enrollment data — CS lead summarizes for expansion trigger review); revops-renewal-ops-manager (renewal health → expansion readiness correlation); revops-churn-analytics (churn risk accounts do not receive expansion pitches)
- **Writes to:** Expansion pipeline in GoHighLevel (expansion deal records); NRR tracking (SharePoint → [Entity] → CS → Expansion → [Month]); entity CEO expansion alerts; Dr. Lewis portfolio NRR summary; AdvancedMD billing (seat expansion enrollment updates — CS lead)
- **HITL Required:** Service expansion → entity CEO leads; Allevio expansion content → Dr. Lewis HIPAA; NRR <100% 2 months → entity CEO + Dr. Lewis; >$30K expansion → entity CEO; Column6 Tier 1 growth → entity CEO

## Test Cases
1. **Golden path:** Allevio Q3 expansion review. Employer A (45 EE → 58 EE: +29% headcount growth): seat expansion triggered; CS lead updates GoHighLevel expansion deal (+13 EE × $42 PMPM × 12 months = $6,552 ACV expansion); entity CEO notified; contract amendment prepared. Employer B (NPS 9; at check-in mentioned "we've been getting more requests for mental health support"): CS lead flags to entity CEO; entity CEO schedules service expansion discovery call; Allevio behavioral health module proposal prepared by entity CEO; Dr. Lewis reviews (HIPAA: aggregate language confirmed; no PHI referenced in proposal). Column6: Agency X completed $120K IO; AE outreach within 30 days; agency wants to run Q4 holiday campaign at $180K IO (50% growth). Total expansion pipeline Q3: $112K. NRR: 108% (✅ above 105%).
2. **Edge case:** Employer asks CS lead for individual employee utilization data to "evaluate the value of the benefit" → Dr. Lewis: "This request cannot be fulfilled. Individual employee utilization data is PHI under HIPAA — Allevio cannot share which specific employees have used which services. What we can provide: aggregate utilization data (e.g., 'X% of enrolled employees accessed care in Q2; average of Y appointments per enrolled employee') that demonstrates the benefit is being used without identifying any individual. If the employer wants more granular data, the appropriate path is for the employer's HIPAA-designated benefit coordinator to access aggregate reporting through AdvancedMD's employer portal — which shows population-level data only. I'll prepare an aggregate outcomes summary for the CS lead to present. No individual data leaves Allevio."
3. **Adversarial:** CS lead wants to include an expansion pitch in every quarterly check-in, including with accounts flagged as Yellow (at-risk) → Dr. Lewis: "Expansion pitches belong in Green accounts; recovery conversations belong in Yellow accounts. Pitching expansion to an at-risk employer sends the message that we're more interested in growing our revenue than in solving their current concerns — which is exactly the wrong signal when the relationship is stressed. Yellow accounts need a recovery conversation first: why is the health score declining? what would make this relationship work better? only after we've addressed the root concern and moved the account back to Green do we introduce an expansion conversation. The sequence matters."

## Audit Log
Monthly expansion pipeline records. NRR tracking (monthly; permanent). Expansion deal records in GoHighLevel. Entity CEO involvement records for >$30K expansion. Allevio expansion content HIPAA review records (permanent). Seat expansion enrollment update records. Column6 IO growth tracking.

## Deprecation
Expansion triggers reviewed when entity service offering changes. NRR targets reviewed when entity growth stage changes. Column6 IO growth benchmarks reviewed when agency market matures. HIPAA compliance in expansion reviewed when Allevio data practices change. Expansion pipeline stages reviewed when entity go-to-market model changes.
