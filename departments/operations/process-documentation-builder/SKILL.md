---
name: process-documentation-builder
description: "Document an operational process as a structured SOP or workflow guide. Use when the user says 'document this process', 'write an SOP', 'standard operating procedure', 'process guide', 'how do we do X documented', 'process documentation', 'workflow document', or 'write up this process'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<process-name-or-description> [--format <sop|flowchart|checklist>] [--audience <staff|manager|new-hire>]"
---

# Process Documentation Builder

Convert a described or observed process into a structured SOP (Standard Operating Procedure), process guide, or workflow document. Good documentation reduces training time and eliminates single-points-of-failure.

## When to Use
- When a process lives only in one person's head
- New employee onboarding (what do they need to know?)
- Process audit or improvement (document before changing)
- Post-acquisition integration (capture the target's processes)
- Before automating a process (must document before automating)
- Compliance requirement for documented procedures

## SOP Structure

### Section 1 — Header
- Process name (kebab-case slug for filing)
- Department / entity
- Process owner (named person, not "team")
- Version and last updated date
- Frequency: How often this process runs

### Section 2 — Purpose and Scope
- What problem does this process solve?
- What is included (and explicitly what is NOT included)
- Who performs this process

### Section 3 — Inputs and Prerequisites
- What information, data, or access is needed before starting?
- What tools or systems are required?
- What must be true before this process begins (preconditions)

### Section 4 — Step-by-Step Procedure
Each step:
- **Action**: What to do (active verb + specific instruction)
- **System**: Which tool or system is used
- **Output**: What is produced by this step
- **Decision points**: If/then branches (when do you take which path?)
- **HITL checkpoints**: Where does a human need to review before continuing?

### Section 5 — Quality Checks
- How do you know the process completed correctly?
- What are the common errors and how to identify them?
- Who do you escalate to if something goes wrong?

### Section 6 — Exceptions and Edge Cases
- What are the most common variations or edge cases?
- How should they be handled?

### Section 7 — Related Processes
- Links to upstream processes (what feeds into this)
- Links to downstream processes (what this feeds into)

## Output Format

```markdown
# SOP: <Process Name>
**Department:** <dept> | **Entity:** <entity>
**Owner:** <name> | **Version:** 1.0 | **Last Updated:** <date>
**Frequency:** <daily | weekly | monthly | ad-hoc>

## Purpose
<Why this process exists in 1-2 sentences>

## Scope
**Includes:** <what's covered>
**Excludes:** <what's not covered>
**Performed by:** <role>

## Prerequisites
- Access to: <system>
- Inputs required: <data or document>

## Procedure

### Step 1 — <Step Name>
**Action:** <specific action>
**System:** <tool>
**Output:** <what is produced>

### Step 2 — ...

## Decision Points
- IF <condition> → Go to Step X
- IF <condition> → Escalate to <person>

## Quality Checks
- [x] <Check 1>
- [x] <Check 2>

## Common Errors
| Error | Cause | Resolution |
|-------|-------|-----------|

## Related Processes
- Feeds from: <upstream process>
- Feeds to: <downstream process>
```

## Output Contract
- Every step has a named action (verb-first), system, and output
- Decision points are explicit — no "use judgment" without criteria
- Owner is a named person, not "the team"
- HITL required before any SOP is published for staff use

## System Dependencies
- **Reads from:** Process description (provided), observations or interview notes
- **Writes to:** Nothing (outputs document for owner review)
- **HITL Required:** Process owner reviews before publishing or training staff on the SOP

## Test Cases
1. **Golden path:** Invoice coding process described verbally → clean 7-step SOP with QuickBooks system references
2. **Edge case:** Process with multiple decision branches → explicit flowchart-style IF/THEN notation for each branch
3. **Adversarial:** Process description that skips steps the describer considers obvious → flags gaps with "Step N appears to be missing — what happens between [Step A] and [Step B]?"

## Audit Log
SOP versions retained with change history. Published SOPs linked to training records.

## Deprecation
Retire when business process management (BPM) platform (Nintex, Process Street) handles documentation natively.
