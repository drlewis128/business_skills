---
name: cs-adoption-monitor
description: "Monitor and improve service and product adoption for MBL portfolio company customers. Use when the user says 'adoption', 'adoption monitoring', 'product adoption', 'service adoption', 'utilization', 'usage', 'are customers using the product', 'adoption rate', 'low adoption', 'improve adoption', 'adoption risk', 'usage drop', 'customer not using the service', 'member utilization', 'plan utilization', 'feature adoption', 'using our platform', 'adoption metrics', 'usage metrics', 'monitor utilization', 'adoption health', 'are members using the plan', 'low utilization', 'utilization report', 'usage report', or 'adoption dashboard'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--action <monitor|alert|improve|report>]"
---

# CS Adoption Monitor

Monitor and improve service and product adoption for MBL portfolio company customers — tracking how actively customers are using what they're paying for, identifying adoption gaps that signal churn risk, and intervening with specific enablement actions when adoption drops below healthy levels. Low adoption is the most reliable leading indicator of churn; customers who don't use a service don't renew it.

## When to Use
- Monthly (review adoption metrics for all active accounts)
- Health score review (adoption dimension is one of the 5 health score inputs)
- A new account is onboarded (track adoption from Day 1 — this establishes the baseline)
- A customer hasn't used a service feature they paid for in 30+ days
- Pre-renewal (low adoption 60 days before renewal is a red flag)

## Adoption Monitoring Framework

```
ADOPTION METRICS BY ENTITY:

  ALLEVIO (Employer Group Member Plan Utilization):
  
    PRIMARY ADOPTION METRIC: Member enrollment rate
      Target: ≥85% of eligible employees enrolled in the plan
      Data source: AdvancedMD (enrolled member count vs. eligible employee count from census)
      Red flag: Enrollment <70% of eligible employees — investigate why
      Common causes: Waiving coverage because employees are on a spouse's plan (acceptable);
        employees don't understand the plan (enablement gap); employees had a bad experience with enrollment
        
    SECONDARY ADOPTION METRIC: Clinical care coordination engagement
      Target: ≥30% of high-risk members enrolled in clinical programs (as identified by the clinical team)
      Data source: Allevio clinical team records
      Healthy: Clinical program engagement reduces ED utilization and specialty care costs
      Red flag: <10% high-risk member engagement after 6+ months
      
    TERTIARY ADOPTION METRIC: Telehealth utilization
      Target: ≥15% of members using telehealth at least once in the plan year
      Data source: AdvancedMD telehealth claims
      Red flag: <5% utilization after 12 months — employees may not know about the benefit
      Intervention: Telehealth awareness campaign; add FAQ to next OE materials
      
    ADOPTION HEALTH SCORE CONTRIBUTION (from cs-health-score-tracker):
      Adoption score: 0-5 points (one of 5 dimensions)
        5: >85% enrollment; >30% clinical engagement; >15% telehealth use
        3: 75-84% enrollment; 20-30% clinical engagement; 10-15% telehealth use
        1: <75% enrollment; <20% clinical engagement; <10% telehealth use
        
  COLUMN6 (Agency Campaign Utilization):
  
    PRIMARY ADOPTION METRIC: Active IO cadence
      Target: IO in flight or planned within 30 days (for Priority A/B agencies)
      Data source: Column6 campaign dashboard (active IOs; booked IOs)
      Red flag: No IO in 90+ days (booked or active)
      Tracking: IO booking velocity — how many IOs per quarter? Is it increasing or decreasing?
      
    SECONDARY ADOPTION METRIC: Feature/capability utilization
      Attribution: Is the agency using Column6 attribution features? (Nielsen OneCount; pixel)
      Targeting: Are they leveraging advanced targeting (ACR; behavioral; demographic)?
      Dashboard: Are they logging into the client dashboard? (engagement signal)
      Red flag: Agency books IOs but never uses attribution or advanced targeting —
        they're using Column6 as a commodity (price/delivery) rather than a strategic partner;
        lower loyalty; higher switching risk
        
    ADOPTION HEALTH SCORE CONTRIBUTION:
      Booking velocity (IOs per quarter) and feature utilization depth
      Decreasing velocity or stagnating feature use → Yellow health signal
      
  HIVE (Landowner Engagement):
  
    PRIMARY ADOPTION METRIC: Covercy portal active use
      Target: All landowners registered on Covercy; accessing statements monthly
      Data source: Covercy platform (login frequency; statement downloads)
      Red flag: Landowner not registered on Covercy after 60 days; or hasn't logged in for 3+ months
      Intervention: CS rep calls to help with registration; sends paper statements for those who prefer it
      
    SECONDARY ADOPTION METRIC: Communication responsiveness
      Target: Landowner responds to outreach within 3-5 business days (average)
      Red flag: Landowner hasn't responded to 2+ consecutive outreach attempts
      Escalation: Dr. Lewis personal call after 3 consecutive non-responses

ADOPTION INTERVENTION PLAYBOOK:

  LOW ENROLLMENT (Allevio — enrollment <70%):
    Step 1: Ask the HR Director why: "I'm looking at your enrollment data — we're at 68% of eligible employees.
      Is there a group of employees who are waiving because they have coverage through a spouse?"
    Step 2: If waiving for covered-elsewhere reason: acceptable; note in CRM; no action needed
    Step 3: If waiving for other reasons (cost; confusion; bad experience):
      Build a targeted re-enrollment communication with the HR Director
      Dr. Lewis reviews: is the plan design right for this group?
      
  LOW FEATURE ADOPTION (Column6 — agency not using attribution):
    Don't pitch; demonstrate: "I noticed you haven't set up attribution tracking on the current IO.
      I'd love to show you what it looks like — we had another agency in your category see 412
      attributed conversions last quarter. It takes about 30 minutes to set up.
      When can we schedule that?"
    
  COVERCY NOT ACTIVATED (HIVE):
    CS rep calls directly: "I want to make sure you have access to your royalty statements online.
      Can I walk you through the Covercy setup right now? It takes about 5 minutes.
      I'll stay on the call until you're in."
```

## Output Format

```markdown
# Adoption Monitoring Report — [Account Name] | [Entity]
**Date:** [Date] | **Reporting period:** [Month/Quarter]

---

## Adoption Summary

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| [Member enrollment rate] | ≥85% | [X]% | ✅ / ⚠️ / ❌ |
| [Clinical program engagement] | ≥30% | [X]% | ✅ / ⚠️ / ❌ |
| [Telehealth utilization] | ≥15% | [X]% | ✅ / ⚠️ / ❌ |

---

## Adoption Trends (6 Months)

| Month | Enrollment | Clinical engagement | Telehealth |
|-------|-----------|--------------------|----|
| [Month -5] | [X]% | [X]% | [X]% |

---

## Intervention Needed

| Gap | Intervention | Owner | Due date |
|-----|-------------|-------|---------|
| Telehealth utilization 8% (target 15%) | Add telehealth FAQ to November communication | CS Rep | [Date] |
```

## Output Contract
- Low adoption is a health score input — the cs-health-score-tracker adoption dimension is updated monthly based on the adoption monitoring data; an account with low member enrollment or declining IO velocity has a lower health score regardless of the relationship quality; adoption data is objective, not relational; Dr. Lewis treats low adoption as a churn risk signal, not a data quality issue
- Intervention before the customer notices — the standard CS failure mode is to wait until the customer says "we don't think we're getting value" and then scramble; the adoption monitor catches the low adoption signal 60-90 days before the customer notices the gap and frames it as an absence of value; Dr. Lewis requires that any adoption metric below the Red threshold triggers an intervention within 5 business days — before the customer raises it
- Adoption is not always in our control — an Allevio employer group where 15% of employees are waiving because they're covered on a spouse's plan has low enrollment for a valid reason; the adoption monitor flags the data; the CS rep investigates the cause; if the cause is valid, the health score adoption dimension is adjusted with a note ("enrollment 70%; 15% confirmed dual-coverage waivers — effective eligible enrollment rate 82%"); Dr. Lewis reviews all adoption adjustments
- HITL required: Dr. Lewis reviews adoption monitoring data for all Priority A accounts monthly; any adoption metric below the Red threshold for a Priority A account is escalated to Dr. Lewis within 5 business days; Dr. Lewis approves all health score adoption dimension adjustments (for valid waiver reasons or other contextual factors); adoption-driven health score changes are included in the weekly health score review that Dr. Lewis receives

## System Dependencies
- **Reads from:** AdvancedMD (Allevio — enrolled member count; telehealth claims; clinical program enrollment); Column6 campaign dashboard (IO booking log; feature utilization — attribution setup; targeting configuration; dashboard login frequency); Covercy (HIVE — landowner login frequency; statement downloads); cs-health-score-tracker (adoption dimension — reads from and writes back to); cs-success-plan-builder (adoption targets set at onboarding — what was the customer's enrollment commitment?)
- **Writes to:** Adoption monitoring report (GoHighLevel CRM — monthly data logged); cs-health-score-tracker (adoption dimension score — updated monthly from monitoring data); intervention plan (cs-at-risk-responder — when adoption drops below Red threshold); Dr. Lewis monthly adoption summary (all Priority A adoption metrics in one view); cs-kpi-dashboard (portfolio-level adoption metrics by entity)
- **HITL Required:** Dr. Lewis reviews Priority A adoption data monthly; adoption below Red threshold triggers Dr. Lewis notification within 5 business days; health score adoption adjustments require Dr. Lewis approval; adoption-driven health score changes included in the weekly health score review

## Test Cases
1. **Golden path:** Monthly Allevio adoption review — 135-member group; enrolled: 119 (88% — target ≥85% ✅); clinical program engagement: 12 of 38 high-risk members identified (32% — target ≥30% ✅); telehealth utilization: 22 of 119 members used telehealth in the plan year (18.5% — target ≥15% ✅); all three adoption metrics Green; health score adoption dimension: 5/5; no intervention needed; logged in CRM; included in monthly health score update
2. **Edge case:** Column6 agency — 3 active IOs this quarter but no attribution tracking set up despite discussing it at the last QBR → CS rep: "I noticed we still haven't set up the Nielsen OneCount attribution for the Q4 campaign. I know we discussed it at the QBR — I want to make sure we're getting the data you need. Can we schedule a 30-minute setup call this week? I'll have our attribution team on the line." Agency: "Honestly we're not sure our client will care about the attribution data." CS rep: "I understand — and it's worth knowing before the campaign ends. Once you see a CPA comparison, you have something concrete to put in your client recap. Without it, we're telling a reach story, not a results story. The setup takes 30 minutes. Want to try it on this IO and see?" Agency agrees; attribution set up; campaign wrap report includes 287 attributed conversions; agency lead says "that's exactly what my client needed." Attribution adoption increases to 100% for this agency
3. **Adversarial:** Dr. Lewis reviews adoption data and sees that Allevio telehealth utilization for a 45-member group is 4% (target 15%) — below Red threshold → Dr. Lewis: "This is a 4% telehealth utilization rate — that means 1 or 2 members have used it in the entire plan year. Either the members don't know it exists, or there's an access issue. I want a 5-minute pulse check with the HR Director this week: 'Have you mentioned the telehealth benefit to your employees? Are you seeing questions about it?' If they don't know it exists, we need to fix that now — not at OE. CS rep: send a telehealth awareness flyer to the HR Director for distribution. Today." Flyer sent; HR Director distributes to employees; month 2 telehealth utilization: 11%; month 3: 16% — above target

## Audit Log
All monthly adoption monitoring records retained by account, entity, and date. Intervention plans retained with outcome documentation. Health score adoption dimension adjustment records retained with Dr. Lewis approval. Dr. Lewis monthly adoption summary records retained.

## Deprecation
Retire when each portfolio company has an integrated analytics function that automatically tracks and alerts on adoption metrics — with Dr. Lewis reviewing the adoption model quarterly and the CEO approving any changes to the adoption targets.
