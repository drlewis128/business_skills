---
name: ops-process-mapper
description: "Map and document a business process. Use when the user says 'map a process', 'document this process', 'process map', 'process flow', 'how does this work', 'document how we do', 'workflow map', 'process documentation', 'map out the steps', 'business process map', 'process diagram', 'document the workflow', 'create a process flow', or 'how is this process structured'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--process <process name>] [--format <swimlane|linear|SIPOC>] [--depth <overview|detailed>]"
---

# Ops Process Mapper

Map and document business processes at MBL portfolio companies — capturing how work actually gets done (not how it's supposed to get done), identifying handoffs, decision points, and system touchpoints. Process maps are the foundation for process improvement: you can't improve what you haven't documented. At portfolio company scale, the most valuable process maps are for the 5-10 core processes that run the business — not every sub-process, but the ones where breakdowns cost money or create risk.

## When to Use
- A process is breaking down and no one can agree on how it's supposed to work
- Onboarding a new employee who needs to learn a core process
- Preparing for a process improvement initiative (lean, automation, or redesign)
- Matt Mathison asks "how does [X] actually work at [Company]?"
- A portfolio company is being acquired and its processes need to be understood
- Dr. Lewis is designing an automation or integration and needs the current-state process first

## Process Mapping Framework

```
Process mapping levels:
  Level 1 — SIPOC (macro): Suppliers → Inputs → Process (high-level) → Outputs → Customers
    Used for: Executive understanding; scoping an improvement initiative
  
  Level 2 — Linear process map: Step-by-step sequence with decision points
    Used for: Standard operating procedures; training new employees; most process documentation
  
  Level 3 — Swimlane map: Steps organized by who does them (lanes = roles/departments)
    Used for: Cross-functional processes; identifying handoff points and accountability gaps
  
  Level 4 — Detailed workflow: Includes system interactions, timing, and exception paths
    Used for: Automation design; system integration; compliance-sensitive processes

Standard notation:
  Rectangle: Activity or task
  Diamond: Decision point (Yes/No or A/B/C choice)
  Arrow: Sequence flow
  Oval: Start / End
  Cylinder: System or database
  Document icon: Form, report, or record created

Current state vs. future state:
  Always map CURRENT STATE first — what actually happens, warts and all
  Future state comes after analysis — don't design the solution before understanding the problem
  Current state should reflect reality (interview the people doing the work), not the manual

Healthcare process note (Allevio):
  All patient-facing process maps must note HIPAA touchpoints — where PHI is created,
  accessed, transmitted, or stored — and identify whether a BAA is required for any system

Oil & gas process note (HIVE Partners):
  Operational processes (drilling, production reporting) involve field team handoffs;
  document both office-side and field-side steps with clear communication checkpoints
```

## Output Format

```markdown
# Process Map — <Process Name>
**Company:** <Entity> | **Process owner:** [Role/Name]
**Level:** [SIPOC / Linear / Swimlane / Detailed]
**Status:** Current state / Future state
**Date:** [Date] | **Documented by:** Dr. John Lewis
**Last reviewed:** [Date] | **Next review:** [Date]

---

## SIPOC Overview

| Suppliers | Inputs | Process | Outputs | Customers |
|---------|--------|---------|---------|---------|
| [Who/what provides inputs] | [What goes in] | [High-level process name] | [What comes out] | [Who receives the output] |

---

## Process Steps (Linear / Swimlane)

**Swim lanes (if applicable):** [Role A] | [Role B] | [System]

| Step | Action | Who | System | Decision? | Output |
|------|--------|-----|--------|-----------|--------|
| 1 | [Start: trigger event] | [Role] | [System if any] | | |
| 2 | [Activity] | [Role] | | | [Document/record created] |
| 3 | [Decision point] | [Role] | | Yes → Step 4 / No → Step 7 | |
| 4 | [If yes path] | | | | |
| 5 | [Activity] | | | | |
| 6 | [Exception path (if any)] | | | | |
| 7 | [If no path] | | | | |
| 8 | [Activity] | | | | |
| 9 | [End: output delivered] | | | | |

---

## Process Metrics (current state)

| Metric | Current measurement | Target | Gap |
|--------|-------------------|--------|-----|
| Cycle time (start to finish) | [X days / hours] | [X] | [Y] |
| Number of handoffs | [N] | | |
| Number of decision points | [N] | | |
| Error/rework rate | [X%] | <[X%] | |
| Systems involved | [N] | | |

---

## Pain Points (current state observations)

| # | Pain point | Step where it occurs | Impact | Root cause hypothesis |
|---|-----------|---------------------|--------|----------------------|
| 1 | [E.g., "Step 4 requires email to 3 people — frequently no response for 2+ days"] | Step 4 | 2-day delay average | No SLA on approval response |
| 2 | | | | |

---

## Exceptions and Edge Cases

**Common exceptions that break the standard flow:**
1. [Exception — e.g., "Vendor doesn't have a W-9 on file — process halts at Step 3"]
2. [Exception — e.g., "Invoice over $10K requires Matt Mathison approval — adds 24-48 hrs"]

**How exceptions are currently handled:** [Description — often "ad hoc" or "depends who's working"]

---

## Systems Touchpoints

| System | Used at step | What it does in this process | Owner |
|--------|-------------|---------------------------|-------|
| [Bill.com] | [Step 4] | [AP payment entry and approval] | [Finance] |
| [QuickBooks] | [Step 7] | [GL posting and reconciliation] | [Finance] |
| [Allevio: AdvancedMD] | [Step 2] | [Patient record creation] | [Clinical] |

**HIPAA flag (Allevio processes):**
- PHI accessed at: [Steps X, Y]
- PHI transmitted to: [System/vendor at step Z]
- BAA required: [Yes — confirmed / No]

---

## Improvement Opportunities (initial observations)

| Opportunity | Type | Estimated impact | Effort |
|------------|------|-----------------|--------|
| [Automate Step 4 approval notification] | Automation | Eliminate 2-day delay | Low |
| [Consolidate Steps 6-8 into a single system entry] | Process redesign | Reduce handoffs from 4 to 2 | Medium |

---

## Future State Notes (if future state is being designed)

[What changes in the future state — what steps are eliminated, combined, or automated]
[New process owner or role if accountability is changing]
[Systems to be added or retired]
```

## Output Contract
- Current state first, always — a future state process map drawn before the current state is understood is fiction; if the current state isn't documented, document it before any improvement design; the people doing the work know the actual process, not the manual — interview them
- Handoffs are highlighted — every time work moves from one person or system to another is a handoff; handoffs are where things fall through the cracks, where delays accumulate, and where accountability gaps exist; the process map explicitly shows every handoff; a process with 8 handoffs when 3 are sufficient is a candidate for redesign
- Decision points are identified and questioned — each decision point adds complexity and potential for inconsistency; "does it have to be a decision, or can we make it a rule?" is a valid question for every diamond in the map; rules (if X, then Y always) are faster and more consistent than decisions (someone has to evaluate this each time)
- Healthcare HIPAA touchpoints are always noted for Allevio — any process at Allevio that involves patient records, billing information, or clinical data must note where PHI appears and whether the system or vendor handling it has a BAA; this is not optional compliance overhead — it's the law, and a process map without it creates audit exposure
- HITL required: Dr. Lewis validates current-state maps with the people doing the work before finalizing; process owners must review and confirm the map is accurate before it becomes the documented standard; future-state maps reviewed with process owner and relevant managers before any changes are made; significant process changes at portfolio companies reviewed with Matt Mathison

## System Dependencies
- **Reads from:** Direct observation, interviews with process owners, existing SOPs (if any), system documentation
- **Writes to:** Process map document (SharePoint/Ops/<Company>/Process Maps/); SOP (if this map leads to one); improvement backlog
- **HITL Required:** Dr. Lewis conducts or reviews the mapping; process owner confirms current-state accuracy; future-state changes reviewed with management; Matt Mathison reviews for processes with significant cross-company or financial impact

## Test Cases
1. **Golden path:** Allevio — "map the patient billing submission process" → SIPOC: Supplier (clinical team), Input (patient encounter data, insurance info), Process (charge entry → claim submission → follow-up → payment posting), Output (paid claim / denial), Customer (patient and Allevio Finance); Step-by-step: 12 steps from appointment completion to payment posting; 4 handoffs (clinical → billing → clearinghouse → payer → billing follow-up); 2 decision points (claim clean? / payment correct?); PHI at steps 1, 3, 5, 7, 9 — AdvancedMD has BAA, Marshall Medical Billing has BAA, clearinghouse BAA confirmed; pain points: Step 7 (denial follow-up) averages 14 days; improvement opportunity: automate denial status check in clearinghouse portal daily rather than manual check weekly; process owner (billing manager) reviews and confirms; filed in SharePoint
2. **Edge case:** No one agrees on how the process currently works — two people describe different steps → This is the most valuable finding from the mapping exercise; document both versions explicitly ("Version A — as described by [Role]: [steps]" and "Version B — as described by [Role]: [steps]"); the discrepancy IS the finding; present it: "The process isn't standardized — two key people who participate in it have different mental models. The improvement here is standardization before optimization." Bring both parties together to agree on the actual current state before drawing a map
3. **Adversarial:** A CEO says "we don't need a process map, everyone knows how this works" → Respond: "I hear that — and if everyone knew it the same way, the [specific problem: billing delays, rework, errors] wouldn't be happening. What I find when I map a process that 'everyone knows' is that there are 2-3 places where people are doing it differently and covering for each other's version. The map takes 3 hours — one hour with me, one hour with the billing team, one hour for me to document it. What comes out of it is either: (a) you're right and everyone's aligned — we document it and move on, or (b) we find the gap that's costing us [specific cost]."

## Audit Log
All process maps retained by company and process name with version history. Current-state confirmation signatures/emails retained. Future-state approvals retained. Process review dates documented. HIPAA touchpoint documentation retained for all Allevio process maps.

## Deprecation
Retire when portfolio companies have dedicated operations managers who own process documentation with a living process library, regular review cycles, and process improvement capability that doesn't require Dr. Lewis to lead each mapping initiative.
