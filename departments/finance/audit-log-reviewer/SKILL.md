---
name: audit-log-reviewer
description: "Review system audit logs for anomalous access, unauthorized changes, or suspicious patterns. Use when the user says 'review audit log', 'who changed this', 'audit trail', 'access log review', 'who accessed the system', 'suspicious activity in logs', 'QuickBooks audit trail', or 'what changed in the system'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<log-file-or-export> [--system <quickbooks|billcom|monday>] [--period <YYYY-MM>] [--user <name>]"
---

# Audit Log Reviewer

Analyze system audit logs to detect unauthorized access, suspicious data changes, and anomalous user behavior. Surfaces findings for investigation without making definitive fraud conclusions.

## When to Use
- Monthly audit log review (financial systems — QuickBooks, Bill.com)
- After a suspected data breach or unauthorized change
- When a transaction appears altered after posting
- During external audit (auditors request system access logs)
- Before terminating an employee's system access (capture baseline)
- After an employee leaves (review their final-days activity)

## Supported Systems

### QuickBooks (Audit Trail Report)
Key events to review:
- Deleted transactions (highest risk)
- Modified posted transactions
- User login/logout activity
- Vendor record changes (name, bank account, address)
- New user accounts created
- Permission changes

### Bill.com (Activity Log)
- New vendor bank accounts added
- Payment approvals
- User role changes
- ACH payment modifications
- Bulk payment runs

### Monday.com (Activity Log)
- Board access changes
- Data deletion
- Automation modifications
- Integration changes

## Anomaly Patterns (Red Flags)

### Financial Integrity
- Any deleted posted transaction (requires explanation in QuickBooks)
- Posted entry modified after period close
- Journal entry posted by non-accounting user
- Large round-number entries with no supporting document reference

### Access Anomalies
- Login outside of business hours (before 7am, after 8pm, or weekends)
- Login from unfamiliar IP/location
- Failed login attempts > 3 in succession
- User accessing data outside their normal role/department

### Change Risk
- Vendor bank account changed < 48 hours before payment run
- New payee added and paid in same day
- Employee's own expense reports approved by the employee
- Admin permission granted to non-Finance user

### Termination Risk (departing employee)
- Data export activity in final 2 weeks
- Mass record access (viewing many records rapidly)
- Password change immediately before last day

## Output Format

```markdown
# Audit Log Review — <System> — <period>
**Log Source:** <system> | **Period:** <start> to <end>
**Total Events Reviewed:** <N>

## Critical Findings — Investigate Immediately
| Event | User | Date/Time | Detail | Risk |
|-------|------|-----------|--------|------|
| Vendor bank account changed | jsmith | Jun 5, 11:42pm | Vendor #142 bank routing changed | 🔴 HIGH |

## High Risk Findings — Review Within 48 Hours
| Event | User | Date/Time | Detail |
|-------|------|-----------|--------|

## Anomalies — Monitor
| Event | User | Date/Time | Note |
|-------|------|-----------|------|

## Clean Areas
No anomalies found in: <list areas reviewed with no issues>

## Summary
| Risk Level | Count |
|-----------|-------|
| 🔴 Critical | <N> |
| 🟠 High | <N> |
| 🟡 Anomaly | <N> |
| 🟢 Clean | <N> |

**Recommended next step:** <specific action — e.g., "Investigate jsmith's Jun 5 vendor change before next payment run">
```

## Output Contract
- Findings stated as "requires investigation" or "anomaly detected" — never "confirmed fraud"
- All critical findings include the specific event detail and recommended action
- CONFIDENTIAL — audit log findings visible to Tier 1 only until investigation is complete

## System Dependencies
- **Reads from:** QuickBooks Audit Trail report, Bill.com activity log, or other system log exports
- **Writes to:** Nothing (outputs findings for Tier 1 review)
- **HITL Required:** Before any user access is revoked or investigation is launched based on findings
- **Data sensitivity:** CONFIDENTIAL — do not share with Tier 3

## Test Cases
1. **Golden path:** Clean logs with expected activity → outputs "no anomalies detected" summary with coverage confirmation
2. **Edge case:** User working late on month-end close triggering after-hours flags → correctly contextualizes with known close schedule, reduces false positive severity
3. **Adversarial:** Vendor bank account changed 6 hours before ACH run → flags as critical, outputs payment hold recommendation

## Audit Log
Audit log reviews are themselves logged (meta-audit): reviewer, date, system, period covered, and findings summary. Reviews must be conducted by authorized Finance Tier 1 or delegated Tier 2.

## Deprecation
Retire when SIEM or dedicated fraud detection platform (e.g., Relativity, ACFE tools) handles automated anomaly detection with alerting.
