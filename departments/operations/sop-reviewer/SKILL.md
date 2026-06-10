---
name: sop-reviewer
description: "Review an existing SOP for completeness, accuracy, and effectiveness. Use when the user says 'review this SOP', 'SOP review', 'is this SOP good', 'update the procedure', 'check this process document', 'SOP audit', or 'does this SOP cover everything'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<sop-text-or-file> [--focus <completeness|accuracy|clarity|compliance>]"
---

# SOP Reviewer

Review an existing Standard Operating Procedure against quality criteria — completeness, clarity, decision coverage, and operational accuracy.

## When to Use
- Before republishing an SOP (annual review cycle)
- After a process error or near-miss (did the SOP cause or allow it?)
- When onboarding reveals that staff can't follow the SOP as written
- During an audit (auditor needs to review documented procedures)
- Post-acquisition (review target's SOPs before adopting)

## Review Criteria

### 1. Completeness
- [ ] Purpose and scope defined?
- [ ] Prerequisites listed (access, data, tools)?
- [ ] All steps documented with action + system + output?
- [ ] Decision points covered with explicit branching?
- [ ] Quality checks present?
- [ ] Escalation path defined?
- [ ] Exception handling documented?

### 2. Clarity
- [ ] Each step has an active verb (not "ensure X" or "consider Y")?
- [ ] Steps are specific enough to follow without prior knowledge?
- [ ] Jargon explained or avoided?
- [ ] No ambiguous instructions ("as appropriate", "if needed")?
- [ ] Appropriate length (not so long it's never read)?

### 3. Accuracy
- [ ] System names current (no outdated tools referenced)?
- [ ] Screenshots or references current (if any)?
- [ ] Step sequence actually matches how the process works?
- [ ] Escalation contacts current (named people still in role)?

### 4. Compliance
- [ ] Any regulatory requirements covered?
- [ ] HITL checkpoints at appropriate steps?
- [ ] Sensitive data handling noted (HIPAA, financial data)?
- [ ] Approval trail documented?

### 5. Metadata
- [ ] Version and date updated?
- [ ] Named process owner (not "team" or "department")?
- [ ] Review date set?

## Output Format

```markdown
# SOP Review — <SOP Name>
**Reviewed:** <date> | **Version Reviewed:** <version>
**Reviewer:** <name>

## Completeness Score: <N>/7 sections present

## Missing Elements
- [ ] <Missing section or step>

## Clarity Issues
| Issue | Location | Recommendation |
|-------|----------|----------------|
| "Review as appropriate" in Step 4 | Step 4 | Specify what criteria constitute "appropriate" |

## Accuracy Flags
- Step 7 references "QuickBooks Desktop" — confirm if still using Desktop vs. QBO

## Compliance Gaps
- No HIPAA data handling note on Step 3 (patient info accessed) — add data handling requirement

## Recommended Revisions (Priority Order)
1. <Critical — must fix before next use>
2. <Should fix in next version>

## SOP Readiness
✅ Publish / ⚠️ Minor revisions needed / ❌ Major revision required before publishing
```

## Output Contract
- All 5 criteria reviewed — no skipping sections "not relevant"
- Clarity issues always include a specific suggested fix, not just identification
- Compliance gaps separated from accuracy issues
- HITL required before any SOP revision is published

## System Dependencies
- **Reads from:** SOP document (provided)
- **Writes to:** Nothing (review output for process owner)
- **HITL Required:** Process owner reviews and approves all SOP revisions before republishing

## Test Cases
1. **Golden path:** Well-written SOP with minor date issue → 4/5 criteria pass, one accuracy flag, ✅ Publish with minor fix
2. **Edge case:** SOP where step sequence is wrong (observed process differs) → flags step sequence inaccuracy as high priority — staff following wrong order
3. **Adversarial:** SOP for healthcare billing process with no HIPAA data handling note → flags as compliance gap, requires add before publishing

## Audit Log
SOP review records retained by document version and date. Changes from reviews documented.

## Deprecation
Retire when quality management system (QMS) handles SOP version control and review workflow.
