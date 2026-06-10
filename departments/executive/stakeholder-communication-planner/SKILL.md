---
name: stakeholder-communication-planner
description: "Plan and schedule stakeholder communications across LPs, board, employees, and partners. Use when the user says 'stakeholder communication plan', 'communication calendar', 'who do we need to communicate to', 'stakeholder mapping', 'communication strategy', or 'comms plan'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--trigger <event|quarterly|annual|ongoing>]"
---

# Stakeholder Communication Planner

Map key stakeholders, plan communication cadences, and ensure the right people get the right information at the right time — consistently and professionally.

## When to Use
- Annual communication calendar setup
- Before a significant event (acquisition, leadership change, major financial results)
- When communications are ad-hoc and need structure
- After a new entity joins the portfolio (establish communication cadence)
- Onboarding a new stakeholder (LP, board member)

## MBL Stakeholder Map

| Stakeholder Group | Examples | Communication Priority |
|------------------|---------|----------------------|
| Limited Partners | HIVE LP investors | Critical — fund obligation |
| Board Members | Directors of portfolio companies | Critical — governance obligation |
| Matt Mathison | Managing Partner | Critical — daily operational |
| Portfolio Company CEOs | Allevio CEO, HIVE operators | Critical — operational oversight |
| Key Vendors / Partners | Krista.ai, key software vendors | Important — relationship |
| Employees | MBL and portfolio staff | Important — retention and culture |
| Bankers / Lenders | Debt providers | Important — covenant and relationship |
| Advisors | Legal, CPA, industry experts | Situational |
| Prospective LPs | New investor prospects | Ongoing development |

## Communication Cadence Planning

For each stakeholder group:
| Frequency | Communication Type | Channel | Owner |
|-----------|------------------|---------|-------|
| Daily | Quick update / check-in | Text / phone | Matt or Dr. Lewis |
| Weekly | WOR summary | Email / Teams | Dr. Lewis |
| Monthly | Entity performance update | Email | Portfolio CEO |
| Quarterly | LP update | Email + portal | Matt / Dr. Lewis |
| Annually | LP annual letter | Formal letter | Matt |
| Event-driven | Material events | Per protocol | Matt |

## Communication Calendar Output

```markdown
# Stakeholder Communication Plan — <Entity> — <Year>

## Communication Calendar

### Recurring
| Cadence | Communication | Audience | Owner | Channel | Next Due |
|---------|--------------|----------|-------|---------|----------|
| Weekly | Executive brief | Matt | Dr. Lewis | Email | Every Mon |
| Monthly | Investor update | Series A investors | CEO | Email | 1st of month |
| Quarterly | LP update | HIVE LPs | Matt | Email | Apr 15 |

### Event-Triggered
| Trigger Event | Audience | Owner | Lead Time | Template |
|--------------|----------|-------|-----------|---------|
| Acquisition close | All stakeholders | Matt | Day of | Use crisis comm template |
| Covenant breach | Lenders | Finance + Matt | Immediately | Legal review required |

## Stakeholder Contact Directory
| Stakeholder | Name | Role | Contact | Last Touch |
|------------|------|------|---------|-----------|
| LP | <name> | Investor | <email> | <date> |

## Communication Gaps (Missing or Overdue)
<any stakeholder group without a current cadence>

## Next 30 Days — Communication Actions
| Date | Action | Audience | Owner | Status |
|------|--------|----------|-------|--------|
```

## Output Contract
- Every stakeholder group has a defined cadence — none are "as needed" without documentation
- Event-triggered communications always have lead time and template guidance
- Communication gaps surfaced and flagged for remediation
- HITL required before plan is finalized or any new communication cadence is established

## System Dependencies
- **Reads from:** Stakeholder directory, existing communication calendar, event calendar
- **Writes to:** Nothing (outputs plan for implementation)
- **HITL Required:** Matt Mathison approves stakeholder communication plans involving LPs or board members

## Test Cases
1. **Golden path:** Annual communication calendar setup → full cadence plan for all 8 stakeholder groups
2. **Edge case:** New LP onboarded mid-year → outputs onboarding communication sequence and how they integrate into existing cadence
3. **Adversarial:** LP has gone 4 months without communication → flags as relationship risk, generates catch-up communication plan

## Audit Log
Communication plans versioned by entity and year. Actual communication dates logged against plan for adherence tracking.

## Deprecation
Retire when CRM (GoHighLevel) provides automated stakeholder communication scheduling with cadence management.
