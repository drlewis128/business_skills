---
name: quality-assurance-checklist
description: "Run a quality assurance checklist for a deliverable, process, or output. Use when the user says 'QA checklist', 'quality check', 'quality assurance', 'review this for quality', 'pre-delivery QA', 'quality gate', 'does this meet standards', or 'QA this'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<deliverable-type> [--entity <name>] [--output-type <document|process|software|financial>]"
---

# Quality Assurance Checklist

Run a structured quality review on any deliverable before it leaves the team. Catching defects before delivery is 10x cheaper than fixing them after.

## When to Use
- Before sending any deliverable to an external party (client, LP, board)
- Before publishing a document, report, or communication
- As a gate in a process before a hand-off
- After a process change (QA the new process, not the old one)
- Spot-check during operations to maintain standards

## QA Frameworks by Deliverable Type

### Document / Report QA
- [ ] All data matches source (no manual calculation errors)
- [ ] All named people/entities spelled correctly
- [ ] No placeholder text ("TBD", "INSERT", "[NAME]") remaining
- [ ] Date references are correct and consistent
- [ ] Formatting is consistent throughout (fonts, headers, spacing)
- [ ] Version/draft watermarks removed if final
- [ ] Reviewed by someone who didn't write it
- [ ] Approved by appropriate signatory before distribution

### Financial Output QA
- [ ] Numbers reconcile to system of record (QuickBooks, bank)
- [ ] Math checks out (column totals, percentage calculations)
- [ ] Prior period comparison is accurate
- [ ] Currency and unit labels consistent
- [ ] Rounding convention consistent throughout
- [ ] Unusual variances explained
- [ ] HITL review by Finance lead before distribution

### Process Execution QA
- [ ] All required steps completed in sequence
- [ ] All approvals obtained (see `approval-workflow-designer`)
- [ ] Documentation created and filed
- [ ] Handoffs confirmed by recipient
- [ ] Exception handling addressed (not just golden path)
- [ ] Audit trail exists

### Client-Facing Deliverable QA
- [ ] Client name and entity spelled correctly throughout
- [ ] All commitments from contract/SOW addressed
- [ ] Meets agreed format (client may have preferences)
- [ ] No internal notes or comments included accidentally
- [ ] Executive sponsor reviewed before delivery
- [ ] Delivery timing meets agreed deadline

### Communication / Email QA
- [ ] Recipient list correct (no accidental CC/BCC)
- [ ] Subject line clear and accurate
- [ ] Tone appropriate for audience (see THRIVE: Respect)
- [ ] Attachments present and opening correctly
- [ ] No sensitive information in body (encrypt if needed)
- [ ] Reply-to address is correct

## Defect Severity Classification

| Level | Name | Criteria | Action |
|-------|------|----------|--------|
| P0 | Blocker | Factually wrong; would cause harm if delivered | Stop delivery, fix immediately |
| P1 | Critical | Material error that undermines credibility | Fix before delivery |
| P2 | Significant | Noticeable gap but not material | Fix if time allows |
| P3 | Minor | Aesthetic or preference | Log for future version |

## Output Format

```markdown
# QA Report — <Deliverable Name>
**Reviewed:** <date> | **Reviewer:** <name> | **Audience:** <audience>

## QA Verdict: PASS / FAIL / CONDITIONAL PASS

## Defects Found

| ID | Severity | Description | Fix Required | Status |
|----|---------|-------------|-------------|--------|
| QA-001 | P0 | Revenue total doesn't match QB | Yes | OPEN |
| QA-002 | P2 | Header font inconsistent on page 3 | Optional | OPEN |

## P0/P1 Issues — MUST FIX BEFORE DELIVERY
1. <Description of what's wrong and where>
   Fix: <specific correction needed>

## Checklist Results
- [x] Data matches source system
- [ ] No placeholder text — FAIL: "TBD" found on page 4

## Final Verdict
☐ APPROVED for delivery
☐ BLOCKED — resolve P0/P1 issues, then re-review
☐ CONDITIONAL — P0/P1 resolved; P2/P3 logged for next version
```

## Output Contract
- Every P0 issue blocks delivery — no exceptions
- Every issue has a specific location ("page 4, row 7") not just a category
- QA reviewer must be different from the primary author
- HITL required before any client-facing or financial deliverable is sent

## System Dependencies
- **Reads from:** Deliverable (provided), source data for verification
- **Writes to:** QA report (for HITL review)
- **HITL Required:** Deliverable owner reviews QA report and approves corrections before re-delivery

## Test Cases
1. **Golden path:** Financial report QA → finds math error in totals row, flags as P0 blocker, delivery halted
2. **Edge case:** QA request with no stated deliverable type → prompts for type, then applies most conservative checklist
3. **Adversarial:** Pressure to "just approve" despite open P0 items → refuses conditional pass on P0 issues, documents pushback in QA log

## Audit Log
QA reports retained by deliverable and date. P0/P1 defect history tracked to identify recurring quality gaps.

## Deprecation
Retire when quality management platform handles automated QA checklists with digital approval workflows.
