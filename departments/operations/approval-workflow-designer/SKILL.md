---
name: approval-workflow-designer
description: "Design an approval workflow for a business process. Use when the user says 'approval workflow', 'approval process', 'who needs to approve this', 'design an approval chain', 'multi-step approval', 'approval matrix', 'approval routing design', or 'build an approval process'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<process-to-approve> [--threshold <dollar-amount>] [--entity <name>]"
---

# Approval Workflow Designer

Design a structured approval workflow for any business process — defining who approves what, under what conditions, and how approvals are tracked.

## When to Use
- Designing an approval process from scratch
- Reviewing an existing approval process (too slow, too many steps)
- When automating an approval workflow in Monday.com or another platform
- Post-acquisition (harmonize approval authorities)
- After an unauthorized action occurred (add controls)

## Approval Design Principles

### Principle 1: Tiered by Risk
Higher risk (more money, more irreversibility) → more approvers.
Lower risk (small amounts, easily reversed) → streamlined or no approval.

### Principle 2: Clear Delegation of Authority (DOA)
Each role has explicitly defined approval authority. No ambiguity about who can approve what.

### Principle 3: Avoid Approval Loops
Every approval path must terminate. No circular dependencies.
- Bad: A needs B's approval, B needs A's approval
- Good: A can approve up to $X; above $X goes to B

### Principle 4: Escalation Path
If the designated approver is unavailable, there must be a backup or escalation.

### Principle 5: Auditability
Every approval must be logged: who approved, what they approved, when.

## Standard Approval Matrices

### Spend / Purchase Approval
See `po-approval-routing` for the full MBL matrix.

General structure:
| Amount | Approver |
|--------|---------|
| < $500 | Department manager |
| $500–$5K | Department manager + Finance |
| $5K–$25K | Director + CFO |
| $25K–$100K | CFO + CEO/MD |
| > $100K | CEO/MD + Matt Mathison |

### Hire Approval
| Decision | Approver |
|---------|---------|
| Backfill (budgeted) | Department manager + HR |
| Net new hire (budgeted) | Department manager + HR + Finance |
| Net new hire (unbudgeted) | All above + Matt Mathison |
| Executive hire | Matt Mathison |

### Contract Execution
| Contract Value | Signatory Authority |
|--------------|-------------------|
| < $10K/year | Department manager |
| $10K–$50K/year | Dr. Lewis |
| > $50K/year | Matt Mathison |
| Any multi-year | Matt Mathison |
| Any with IP/exclusivity terms | Matt Mathison + legal review |

## Workflow Design Output

```markdown
# Approval Workflow Design — <Process Name>
**Entity:** <entity> | **Version:** 1.0 | **Owner:** <name>

## Workflow Summary
**What requires approval:** <description>
**Trigger:** <what initiates the workflow>
**Outcome states:** Approved / Rejected / Pending / Escalated

## Approval Matrix

| Condition | Approver(s) | Sequence | Turnaround SLA | Backup |
|---------|------------|---------|---------------|--------|
| Amount < $5K | Dept manager | Single | 24 hours | Finance lead |
| Amount $5K-$25K | Dept manager → Finance | Sequential | 48 hours total | CFO |
| Amount > $25K | Dept manager → CFO → Matt | Sequential | 72 hours total | — |

## Decision Paths

### Approved
→ Trigger next step in process (PO issued, hire initiated, etc.)

### Rejected
→ Notify requester with reason → Requester may revise and resubmit

### Escalated (approver unavailable > SLA)
→ Auto-escalate to backup approver after SLA expires

## Approval Record (What gets logged)
- Approver name
- Timestamp
- Decision (approved/rejected)
- Comments / conditions
- Document or request ID

## Implementation Notes (Monday.com / Automation)
<How to implement this in Monday.com automations or existing tools>
```

## Output Contract
- Every approval path has a named backup approver
- Every approval has a turnaround SLA
- Rejection always includes feedback mechanism for requester
- Audit log specification always included
- HITL required before any new approval workflow is published for operational use

## System Dependencies
- **Reads from:** Process description, spending authority policy (this skill)
- **Writes to:** Nothing (design document for review and implementation)
- **HITL Required:** Matt Mathison approves any approval workflow that affects financial authority or executive decisions

## Test Cases
1. **Golden path:** Expense report approval workflow → tiered matrix by amount with manager and Finance as dual approvers above $500
2. **Edge case:** Workflow where all approvers might be unavailable simultaneously → flags gap, recommends ultimate escalation to Matt Mathison as backstop
3. **Adversarial:** Approval workflow designed to self-approve (requester = approver) → flags SOD (Segregation of Duties) violation, requires independent approver

## Audit Log
Approval workflow designs versioned. Implemented workflows' audit trails retained in the business system.

## Deprecation
Retire when Monday.com or ERP handles approval workflow design through visual workflow tools with built-in audit trails.
