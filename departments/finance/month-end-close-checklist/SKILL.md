---
name: month-end-close-checklist
description: "Drive month-end close tasks, status tracking, and escalation through the calendar. Use when the user says 'month-end close', 'close checklist', 'close the books', 'month-end tasks', 'financial close', 'accounting close', 'close status', or 'what's left to close'. Orchestrates the close process and surfaces blockers."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--month <YYYY-MM>] [--status]"
---

# Month-End Close Checklist

Orchestrate the accounting close process — generate the task list, track status, surface blockers, and drive the team to on-time close.

## When to Use
- First business day of each month (initiate close)
- Daily check-ins during close period
- When a close is running behind schedule
- When preparing for audit (close discipline is auditor evidence)

## Standard Close Task List

### Pre-Close (Days 1-3)
- [ ] Bank statement received for all accounts
- [ ] Credit card statements received
- [ ] AR aging reviewed — collections pushed on 60+ day balances
- [ ] AP cutoff confirmed — all invoices for the period received and entered
- [ ] Payroll confirmed posted for all pay periods in month
- [ ] Inventory count completed (if applicable)
- [ ] Intercompany transactions identified and flagged

### Core Close (Days 3-7)
- [ ] Bank reconciliations completed
- [ ] Credit card reconciliations completed
- [ ] AR reconciliation to subledger
- [ ] AP reconciliation to subledger
- [ ] Payroll reconciliation
- [ ] Prepaid expense amortization entries posted
- [ ] Accrued expense entries posted (rent, utilities, accrued payroll)
- [ ] Depreciation/amortization entries posted
- [ ] Intercompany eliminations posted (multi-entity)
- [ ] Revenue recognition review completed (ASC 606 check)
- [ ] Inventory adjustments posted (if applicable)
- [ ] Journal entry review — all JEs approved by appropriate level

### Review & Close (Days 7-10)
- [ ] Trial balance review — all accounts tie
- [ ] P&L flux analysis vs prior month (unexplained variances flagged)
- [ ] Balance sheet flux analysis
- [ ] Management reporting package drafted
- [ ] Close meeting held — team sign-off
- [ ] Books locked in accounting system
- [ ] Financial statements distributed to leadership

## Status Tracking Format

When run with `--status`, prompt for completion status on each task and output:

```markdown
# Month-End Close Status — <entity> — <month>
**Target close date:** <date> | **Current date:** <today>
**Status:** On Track ✅ / At Risk ⚠️ / Behind ❌

## Pre-Close: <N>/<N> complete
- [x] Bank statements received
- [ ] **BLOCKER** — Credit card statement for Chase ending 4521 not received — Owner: <name>

## Core Close: <N>/<N> complete
- [x] Bank reconciliations
- [ ] Payroll reconciliation — in progress — Owner: <name>

## Blockers
1. Chase credit card statement missing — ETA: <date> — Action: Contact Chase directly
2. Intercompany confirmation from Allevio pending — Owner: Morgan Sills — Escalate if not by <date>

## On-Time Risk Assessment
At current pace, close will complete by <date> — <on time / N days late>.
```

## Output Contract
- Status is always current — never reports stale task completion
- Blockers are always surfaced with owner and recommended action
- Read-only — does not modify accounting system records

## System Dependencies
- **Reads from:** Status inputs from user; checklist template
- **Writes to:** Nothing (outputs tracking report)
- **Does NOT modify:** QuickBooks or any accounting system directly

## Deprecation
Retire when accounting system has native close management workflow.
