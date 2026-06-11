---
name: hr-vendor-evaluator
description: "Evaluate HR technology vendors for HRIS, ATS, benefits, or other HR platforms. Use when the user says 'HR vendor', 'HRIS evaluation', 'HR software', 'ATS comparison', 'which HRIS should we use', 'HR tech evaluation', 'HR platform RFP', or 'compare HR vendors'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<hr-system-type> [--entity <name>] [--budget <annual>] [--size <headcount>]"
---

# HR Vendor Evaluator

Evaluate HR technology vendors across the categories most relevant to MBL and portfolio companies. HR tech is one of the highest-leverage infrastructure investments — the right platform eliminates manual work at scale; the wrong one creates ongoing compliance risk and cost.

## When to Use
- Selecting an HRIS, ATS, or other HR platform for the first time
- Replacing an underperforming or outdated HR system
- Post-acquisition (should the acquired company adopt MBL's stack or vice versa?)
- Annual HR tech stack review (are we getting ROI from what we have?)

## HR Technology Stack Map

| Layer | Purpose | When Needed |
|-------|---------|------------|
| **HRIS** | Employee records, org chart, payroll integration, onboarding | Always (foundational) |
| **Payroll** | Pay calculations, tax filing, compliance | Always (often bundled with HRIS) |
| **ATS** | Applicant tracking, interviews, offers | When hiring volume > 5 reqs/year |
| **Performance Management** | Reviews, goals, 1:1s | When team ≥ 15 people |
| **LMS** | Training and compliance tracking | When compliance training is critical (Allevio) |
| **Engagement** | Surveys, eNPS, feedback | When culture and retention are active concerns |
| **Benefits Administration** | Open enrollment, broker integration | When benefits complexity warrants it |

## HRIS Vendor Comparison (Current Market)

| Vendor | Best For | Price Range | Notable Strength |
|--------|---------|------------|----------------|
| **Rippling** | Fast-scaling companies; IT + HR unified | $8-35/employee/mo | IT provisioning + HR in one; fast setup |
| **BambooHR** | SMBs < 200 employees | $6-12/employee/mo | Clean UX; easy onboarding |
| **Gusto** | Small businesses; payroll-first | $40/mo + $6/employee | Best payroll for small cos |
| **Workday** | Enterprise (1,000+ employees) | $100+/employee/yr | Most comprehensive; most expensive |
| **ADP Workforce Now** | Mid-market; compliance-heavy | $18-30/employee/mo | Compliance depth; payroll reliability |
| **Paychex Flex** | Mid-market; full-service | $39+/mo | HR advisory services bundled |
| **HiBob** | Modern SMB/mid-market | $6-15/employee/mo | Strong UX; engagement features |

**MBL Context:** With portfolio entities at varying sizes, Rippling is a strong candidate — single platform for multiple entities, IT + HR unified, and easy entity management.

## ATS Vendor Comparison

| Vendor | Best For | Price Range |
|--------|---------|------------|
| **Greenhouse** | Mid-market; structured hiring | $6,500+/yr |
| **Lever** | Mid-market; relationship-focused | $5,000+/yr |
| **Workable** | SMB to mid-market | $299+/mo |
| **BambooHR Hiring** | If already on BambooHR | Bundled |
| **Rippling ATS** | If already on Rippling | Bundled |
| **Indeed Apply** | Low-budget; basic tracking | Free to $250/mo |

## Evaluation Criteria

### Must-Have (Eliminate vendors that fail these)
- [ ] Handles multi-entity / multi-company setup (critical for MBL portfolio)
- [ ] SOC 2 Type II compliant (security)
- [ ] Integrates with QuickBooks or existing payroll (or replaces it cleanly)
- [ ] Mobile-accessible
- [ ] I-9, FMLA, and OSHA compliance features
- [ ] US-based support (not offshore-only)

### Scored Criteria (1-5 per dimension)
| Dimension | Weight | Notes |
|---------|--------|-------|
| Multi-entity management | 20% | Critical for portfolio |
| Payroll integration / quality | 20% | Finance dependency |
| Implementation complexity | 15% | Speed to value matters |
| Compliance features | 15% | FMLA, I-9, OSHA |
| UX / ease of use | 10% | Adoption depends on this |
| Reporting and analytics | 10% | People data value |
| Price / ROI | 10% | Budget fit |

## Output Format

```markdown
# HR Vendor Evaluation — <System Type>
**Entity:** <entity> | **Headcount:** <N> | **Date:** <date>

## Must-Have Checklist

| Requirement | Vendor A | Vendor B | Vendor C |
|------------|---------|---------|---------|
| Multi-entity | ✅ | ✅ | ❌ Eliminated |
| SOC 2 Type II | ✅ | ✅ | |
| QuickBooks integration | ✅ | ⚠️ Limited | |

## Scored Evaluation

| Dimension | Weight | Vendor A | Vendor B | |
|---------|--------|---------|---------|--|
| Multi-entity | 20% | 5 (1.0) | 4 (0.8) | |
| Payroll | 20% | 4 (0.8) | 5 (1.0) | |
| Implementation | 15% | 5 (0.75) | 3 (0.45) | |
| **Total** | | **4.3/5** | **3.8/5** | |

## Recommendation
**Recommended vendor:** <Name>
**Rationale:** <2-3 sentences>

## Pricing Estimate
**Recommended vendor:** $<N>/month for <N> employees = $<N>/year
**vs. current solution or manual cost:** <comparison>

## Implementation Considerations
- Timeline: <N> weeks
- Key risks: <migration, training, integration>
- Success criteria: <what does good look like at 90 days>
```

## Output Contract
- Multi-entity requirement always treated as a Must-Have for MBL portfolio context
- Eliminated vendors documented — don't spend time scoring eliminated options
- Pricing estimate always included — can't approve without knowing the cost
- HITL required: Dr. Lewis approves vendor selection; Matt Mathison approves HR tech spend > $25K/year

## System Dependencies
- **Reads from:** Requirements, demo notes, pricing (provided)
- **Writes to:** Nothing (evaluation for HITL review)
- **HITL Required:** Dr. Lewis and HR lead make final selection; Finance approves budget before purchase

## Test Cases
1. **Golden path:** HRIS evaluation for 3-entity portfolio → multi-entity capability as primary filter, Rippling vs. BambooHR vs. ADP scored, recommendation with cost estimate
2. **Edge case:** Vendor the user already wants to buy → conducts objective evaluation, surfaces strengths and weaknesses fairly, supports decision if it holds up to scoring
3. **Adversarial:** Request to recommend a vendor based on personal relationship or existing business relationship → conducts objective evaluation, flags if preferred vendor doesn't score highest, recommends on merit

## Audit Log
Vendor evaluations retained by system type and date. Contracts and pricing documentation retained for renewal negotiations.

## Deprecation
This skill is self-updating as vendors change — review annually and update vendor table and pricing.
