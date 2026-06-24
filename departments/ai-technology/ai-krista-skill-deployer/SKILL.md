---
name: ai-krista-skill-deployer
description: "Deploy and manage skills within Krista.ai for MBL Partners AI orchestration. Use when the user says 'Krista skill', 'deploy a Krista skill', 'add a skill to Krista', 'Krista skill deployment', 'Krista capability', 'Krista new capability', 'Krista skill library', 'Krista skill registry', 'Krista skill update', 'Krista skill version', 'Krista skill management', 'Krista skill deprecation', 'Krista skill activation', 'Krista skill test', 'Krista skill rollback', 'install a Krista skill', 'Krista skill catalog', 'configure Krista skill', 'Krista skill prompt', 'Krista prompt engineering', 'Krista instructions', 'update Krista instructions', 'Krista skill quality', 'Krista skill audit', 'Krista capability audit', 'what can Krista do', 'Krista skill inventory', 'Krista skill list', or 'Krista capabilities'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--skill <name>] [--entity <mbl|allevio|hive|column6>] [--action <deploy|update|test|deprecate|audit>]"
---

# AI Krista Skill Deployer

Deploy and manage skills within Krista.ai for MBL Partners AI orchestration — writing, testing, versioning, and maintaining the instruction sets that define Krista's capabilities within each workflow. Every Krista workflow is powered by a skill (a set of instructions + context); the quality of the skill determines the quality of Krista's output.

## When to Use
- Deploying a new Krista skill for any MBL workflow
- Updating an existing Krista skill based on quality audit findings
- Testing a Krista skill before activating it in a production workflow
- Deprecating a Krista skill when its workflow is retired

## Krista Skill Deployment Framework

```
KRISTA SKILL ANATOMY:
  System instruction: the persistent context that defines Krista's role for this workflow
    → Who Krista is in this context (Dr. Lewis's AI assistant for MBL meeting intelligence)
    → What Krista is responsible for (summarize; extract action items; format output)
    → What Krista must never do (include PHI; make financial commitments; speculate beyond source)
    → Output format specification (BLUF; tables; sections; exact template)
    
  Knowledge context: entity-specific information Krista uses
    → MBL entity vocabulary (Allevio; HIVE; Column6; Matt Mathison; THRIVE)
    → Entity-specific constraints (Allevio HIPAA; HIVE WTI trigger; Column6 client confidentiality)
    → Key people and their roles (who are action item owners; who gets reports)
    
  Example conversations (few-shot prompting):
    → Good example: transcript excerpt → correct Krista output
    → Edge case example: ambiguous transcript → correct Krista response (ask clarifying question; flag for Dr. Lewis)
    → Error example (what NOT to do): transcript with PHI reference → correct Krista response (flag; do not include)
    
DEPLOYMENT PROCESS:
  Step 1: Write skill specification (system instruction + knowledge context + examples)
  Step 2: Test in Krista sandbox (non-production; safe inputs; verify output quality)
  Step 3: Run against 3 real-world inputs (using past data; verify accuracy)
  Step 4: Dr. Lewis reviews test outputs → approve or iterate
  Step 5: Deploy to production workflow (Krista.ai team configures; Dr. Lewis monitors first 5 runs)
  Step 6: Version in skill library (SharePoint → MBL → AI Strategy → Krista → Skills)
  
SKILL VERSIONING:
  v1.0: initial deployment
  v1.X: minor improvements (accuracy fixes; edge case handling; format updates)
  v2.0: major revision (workflow change; new system integration; fundamental prompt redesign)
  All versions retained in skill library (rollback capability)
  Change log required for every version update
  
ENTITY-SPECIFIC SKILL REQUIREMENTS:
  All Allevio skills: HIPAA instruction mandatory in system instruction
    "Never include individual member names, diagnoses, utilization rates, or health data.
     Report only employer-aggregate metrics. Flag any input that appears to contain member PHI."
  All HIVE skills: WTI trigger instruction mandatory
    "If WTI price < $58/bbl is mentioned for 2+ consecutive weeks, flag for Dr. Lewis immediately."
  All LP-facing skills: approval gate instruction mandatory
    "All outputs for LP recipients require Dr. Lewis review and approval before distribution."
```

## Output Format

```markdown
# Krista Skill Specification — [Skill Name] v[N]
**Workflow:** [Meeting Intelligence / Pre-Meeting Prep / etc.] | **Entity:** [MBL/All]
**Deployed:** [Date] | **Owner:** Dr. Lewis | **Status:** Active

---

## System Instruction
[Full system instruction text — this is what Krista receives as its operating context]

---

## Knowledge Context
[Entity vocabulary; key people; constraints; output format]

---

## Example Conversations
**Example 1 (golden path):**
Input: [...]
Output: [...]

**Example 2 (edge case):**
Input: [...]
Output: [...]

---

## Change Log
- v1.0 [Date]: Initial deployment
- v1.1 [Date]: [Action item attribution fix — see audit report June 2026]
```

## Output Contract
- A Krista skill is as good as its system instruction, and a vague system instruction produces vague outputs — Dr. Lewis writes Krista system instructions with the same precision as a software API contract; every output format is specified exactly; every constraint is stated explicitly; "summarize the meeting" is not a Krista system instruction; "produce a BLUF-first meeting summary in the format specified below; include only confirmed decisions and assigned action items; exclude discussion threads that did not produce a decision or assignment; if the transcript contains any reference to individual member health data, output only: 'Meeting contained potentially PHI-adjacent language — Dr. Lewis review required before distribution'" is a Krista system instruction
- Every Krista skill must be tested with adversarial inputs before deployment — after testing with good inputs, Dr. Lewis tests with inputs designed to break the skill: a meeting transcript where two participants have the same first name; a financial report where the entity name is ambiguous; an Allevio meeting where a participant mentions a member name; the adversarial test reveals the edge cases that the skill handles poorly before they appear in production; if the adversarial test reveals a handling gap, the skill specification is updated and retested before deployment; no Krista skill ships to production without passing the adversarial test
- HITL required: skill development → Dr. Lewis writes specification; Krista.ai team implements; Dr. Lewis tests; Dr. Lewis approves before production; Allevio skill → HIPAA instruction verified by Dr. Lewis before deployment; skill update → Dr. Lewis reviews change; tests against previous error cases; approves; skill deprecation → Dr. Lewis documents; entity CEO notified if entity-specific; Matt Mathison sees new capability additions in quarterly AI briefing

## System Dependencies
- **Reads from:** Krista.ai skill builder (platform); workflow specifications (SharePoint → AI Strategy → Krista → Workflows); conversation audit reports (quality findings that drive skill updates); entity documentation (CLAUDE.md; entity-specific constraints); prior skill versions (rollback reference)
- **Writes to:** Krista skill library (SharePoint → MBL → AI Strategy → Krista → Skills → [Skill Name] → v[N]); Krista.ai platform (skill configuration via Krista.ai team); skill change log; deployment records; test results
- **HITL Required:** Deployment → Dr. Lewis approves after testing; Allevio → HIPAA instruction verified; production activation → Dr. Lewis monitors first 5 runs; skill update → Dr. Lewis tests; deprecation → Dr. Lewis documents; Matt Mathison sees quarterly new capability additions

## Test Cases
1. **Golden path:** Meeting Intelligence skill v1.0 deployment. System instruction written: 450 words; BLUF format specified; action item format specified; PHI exclusion instruction included; Allevio HIPAA instruction included. Sandbox test: 3 past meeting transcripts → outputs reviewed by Dr. Lewis → accuracy 5/5; format correct; PHI handling correct (no PHI in outputs). Adversarial test: transcript with ambiguous member reference → Krista correctly outputs: "Meeting contained potentially PHI-adjacent language — Dr. Lewis review required before distribution." Dr. Lewis approves. Krista.ai team deploys to production. Dr. Lewis monitors first 5 production runs → all outputs score 4-5. Skill v1.0 in production. Skill specification filed in SharePoint.
2. **Edge case:** Monthly audit finds that Krista is attributing action items to the wrong participant in multi-person meetings → Dr. Lewis: "Root cause: the system instruction says 'extract action items with their owners' but doesn't specify how to determine ownership when multiple participants are discussing. Krista is defaulting to the person who proposed the idea, not the person who committed to doing it. Fix: update system instruction to include: 'Action item owner = the meeting participant who explicitly agreed to take the action, using their words from the transcript (look for: I'll; I will; let me; I can do that; I'll take that). If no explicit owner commitment is found, mark owner as [Unassigned] and flag for Dr. Lewis to assign.' Skill v1.1 written; tested against 3 past transcripts with attribution errors; all now correctly attributed; deployed."
3. **Adversarial:** A new Krista user (entity CEO) asks Krista directly: "What is Allevio's net revenue retention rate?" without going through the proper data pull workflow → Krista (per skill instruction): "I don't have Allevio's current NRR in my working context for this conversation. For accurate Allevio financial metrics, please ask Dr. Lewis to pull the current QuickBooks data — I can format and summarize it once he provides the input. I don't want to estimate or infer a financial metric that you'll be acting on." This is the correct behavior — Krista escalates rather than hallucinating a financial metric. Dr. Lewis reviews skill; confirms this is correct behavior; no skill change needed.

## Audit Log
All skill versions (permanent; SharePoint). Deployment records (date; workflow; deployer). Test results (sandbox; adversarial; production monitoring). Change log (all version updates; root cause). Skill deprecation records. Allevio HIPAA instruction verification records. Matt Mathison new capability notifications (quarterly).

## Deprecation
Skill retired when workflow is retired or replaced. Skill archived (not deleted) at deprecation — rollback capability retained. Skills library reviewed quarterly for unused or degraded skills. HIPAA instructions in Allevio skills reviewed annually. Skill quality thresholds reviewed annually based on conversation audit experience.
