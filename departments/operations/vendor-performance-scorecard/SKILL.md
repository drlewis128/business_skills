---
name: vendor-performance-scorecard
description: "Score a vendor's performance against contract commitments and internal expectations. Use when the user says 'vendor performance', 'vendor scorecard', 'how is this vendor doing', 'vendor review', 'vendor evaluation', 'rate our vendors', or 'vendor quality review'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<vendor-name> [--period <YYYY-MM|YYYY-QN>] [--contract <id>]"
---

# Vendor Performance Scorecard

Evaluate a vendor's performance against contracted SLAs, quality expectations, responsiveness, and value delivery. Used to support renewal decisions, renegotiations, and vendor management.

## When to Use
- Quarterly vendor review (for strategic vendors)
- Before any contract renewal decision
- After a significant vendor failure or escalation
- Annual vendor portfolio review
- When comparing vendors for a rebid

## Scorecard Dimensions

### 1. Delivery / Quality (30%)
- Did they deliver what was promised?
- Were deliverables on time?
- Were deliverables at the expected quality level?
- Were defects/errors within acceptable range?

### 2. SLA Compliance (25%)
- Did they meet uptime/availability commitments?
- Did they hit response time SLAs?
- Was resolution time within contract terms?
- Any SLA credit events?

### 3. Communication and Responsiveness (20%)
- Do they respond promptly to issues?
- Are they proactive (flag problems before we discover them)?
- Is account management accessible and effective?
- Quality of status reporting?

### 4. Financial Compliance (15%)
- Billing accuracy (no surprise charges)?
- Invoice format matches contract?
- Price compliance (no unauthorized increases)?

### 5. Strategic Value (10%)
- Are they helping us achieve our goals beyond the contract minimum?
- Innovation or improvement suggestions?
- Partnership vs. transaction orientation?

## Scoring

Each dimension scored 1-5:
| Score | Meaning |
|-------|---------|
| 5 | Exceeds expectations — best-in-class |
| 4 | Above expectations |
| 3 | Meets contract requirements |
| 2 | Below expectations — corrective action needed |
| 1 | Unacceptable — escalate / consider replacement |

## Output Format

```markdown
# Vendor Performance Scorecard — <Vendor Name>
**Period:** <period> | **Contract:** <contract ref> | **Reviewer:** <name>
**Date:** <date>

## Scorecard

| Dimension | Weight | Score | Weighted | Evidence |
|-----------|--------|-------|---------|---------|
| Delivery / Quality | 30% | X/5 | X.X | <specific evidence> |
| SLA Compliance | 25% | X/5 | X.X | <uptime X%, X SLA events> |
| Communication | 20% | X/5 | X.X | |
| Financial Compliance | 15% | X/5 | X.X | |
| Strategic Value | 10% | X/5 | X.X | |
| **Overall** | 100% | **X.X/5** | | |

## Grade: A/B/C/D/F

## Key Issues (if any)
1. <Specific issue with evidence and impact>

## Praise (what's working)
1. <Specific positive evidence>

## Renewal Recommendation
✅ Renew as-is / 🟡 Renew with performance improvement plan / 🔴 Rebid or replace
```

## Output Contract
- Evidence required for each dimension score — no unsubstantiated scores
- Overall score calculated mathematically from weighted dimensions
- Renewal recommendation always explicit
- HITL required before any vendor is notified of performance concerns or replacement is initiated

## System Dependencies
- **Reads from:** SLA data, invoice history, communication records (provided), incident log
- **Writes to:** Nothing (outputs scorecard for vendor review meeting)
- **HITL Required:** Finance or Operations lead reviews before vendor performance is communicated

## Test Cases
1. **Golden path:** Strategic SaaS vendor with clean performance period → high scores, ✅ Renew recommendation with specific praise
2. **Edge case:** Vendor with strong delivery but multiple billing errors → delivery score high, financial compliance score 2, renewal conditional on billing remediation
3. **Adversarial:** All 1s requested for a vendor without evidence → requires specific evidence per dimension, cannot produce scorecard without supporting data

## Audit Log
Vendor scorecards retained by vendor and period. Performance trends tracked year-over-year.

## Deprecation
Retire when vendor management platform includes structured performance review workflow.
