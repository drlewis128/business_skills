---
name: exec-succession-planning
description: "Build succession plans for MBL Partners and portfolio company leadership roles. Use when the user says 'succession plan', 'succession planning', 'leadership succession', 'CEO succession', 'who replaces', 'who is the backup for', 'what happens if the CEO leaves', 'key person risk', 'leadership continuity', 'bench strength', 'who is ready to step up', 'executive backup plan', 'leadership pipeline', 'readiness assessment', 'succession readiness', 'interim leadership', 'what if we lose the CEO', 'key person dependency', 'build the leadership bench', 'develop future leaders', 'CEO transition plan', 'emergency succession', 'talent pipeline', or 'who do we have on the bench'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--role <CEO|CFO|COO|VP|Director>] [--horizon <immediate|1-year|3-year>] [--action <assess|plan|update|emergency>]"
---

# Exec Succession Planning

Build succession plans for MBL Partners and portfolio company leadership roles — identifying who can step into each critical role, assessing their readiness, and creating development paths that reduce key-person dependency. Key-person risk is one of the most under-addressed risks in PE-backed portfolio companies: a single departure at the CEO level can erase months of operational progress and erode LP confidence. Succession planning at MBL is not a once-a-year document exercise — it is a living system that informs every hiring decision, every coaching investment, and every organizational design choice.

## When to Use
- Annual succession review (December each year, per exec-board-governance)
- An entity CEO is in an elevated risk situation (performance concerns; market; personal life changes)
- Board asks "what's the plan if [name] leaves?"
- A key leader departs and an interim or permanent replacement needs to be identified
- A portfolio company acquisition brings a new leadership team that needs to be assessed

## Succession Planning Framework

```
SUCCESSION RISK ASSESSMENT:

  For each critical role at each entity, assess:
  
    Role criticality:
      CRITICAL: Entity cannot operate effectively without this role for more than 30 days
      HIGH: Entity significantly impaired without this role for 30-90 days
      MODERATE: Entity can function but growth stalls for 90-180 days
      
    Current incumbent risk:
      RED: Flight risk (disengaged, actively interviewing, recurring performance issues)
      YELLOW: Unknown (limited visibility; limited engagement; role ambiguity)
      GREEN: Engaged and stable (committed to entity; clear on expectations)
      
    Succession depth:
      0: No identified successor (immediate risk)
      1: One identified successor; 6-12 months to readiness
      2: One ready-now successor OR two in-development
      3: Two or more qualified successors (healthy bench)
      
  Priority matrix:
    CRITICAL × RED × 0: Emergency succession planning required NOW
    CRITICAL × YELLOW × 0: Succession planning required; 90-day resolution target
    HIGH × RED × 0-1: Accelerate development or external search pipeline
    Everything else: annual review cadence

SUCCESSION PLAN STRUCTURE (per role):

  Role: [Title; entity; incumbent name]
  Criticality: [CRITICAL / HIGH / MODERATE]
  Incumbent risk: [RED / YELLOW / GREEN]
  Succession depth: [0 / 1 / 2 / 3]
  
  CANDIDATE ASSESSMENT (for each identified successor):
    Name: [Name]
    Current role: [Title]
    Time to readiness: [Ready now / 6 months / 12 months / 18+ months]
    Readiness gaps: [Specific gaps by THRIVE dimension]
    Development actions: [What is being done to close the gaps]
    
  EMERGENCY SUCCESSION PROTOCOL (for CRITICAL roles):
    If the incumbent departed today:
      □ Who steps in as interim? (Named person; Dr. Lewis calls them within 1 hour)
      □ What systems and access does Dr. Lewis immediately preserve?
      □ What does Matt Mathison communicate to the board within 24 hours?
      □ What does Dr. Lewis communicate to the team within 24 hours?
      □ When does the external search begin? (Immediately / 30 days / assess first)
      □ What are the hiring criteria for the permanent replacement?

MBL PARTNER-LEVEL SUCCESSION (Matt Mathison / Dr. Lewis):

  Dr. Lewis succession:
    This is Matt Mathison's responsibility to define.
    For the AI/technology function: assess whether a role of this scope is better served
      by a senior hire or a different organizational model as MBL grows.
    Interim: Matt Mathison retains direct ownership of technology and AI decisions.
    
  Matt Mathison succession:
    This is a board-level conversation — not a unilateral Matt Mathison decision.
    Board chair is the first call in any Matt Mathison emergency scenario.
    Dr. Lewis's role: ensure the board has the information (entity performance; capital position;
      active decisions) to navigate a transition without operational disruption.

ANNUAL SUCCESSION REVIEW PROCESS:

  September: Dr. Lewis assesses each critical role across all entities
  October: Dr. Lewis presents succession risk map to Matt Mathison (exec-portfolio-review)
  November: Matt Mathison reviews with entity CEOs (their own succession planning)
  December: Board receives a summary of succession health (exec-board-governance annual review)
  January: Development plans updated for identified successors in exec-leadership-coaching
```

## Output Format

```markdown
# Succession Plan — [Entity] — [Date]
**Reviewed by:** Dr. Lewis | **Approved by:** Matt Mathison

---

## Succession Risk Summary

| Role | Incumbent | Criticality | Risk | Depth | Priority |
|------|-----------|------------|------|-------|---------|
| CEO | [Name] | CRITICAL | [R/Y/G] | [0-3] | [Emergency/High/Normal] |
| [Role] | [Name] | [C/H/M] | [R/Y/G] | [0-3] | [Priority] |

---

## Detailed Plan — [Role]: [Title]

**Incumbent:** [Name] | **Criticality:** CRITICAL | **Incumbent risk:** [R/Y/G]

### Identified Successors

**[Successor name] — [Time to readiness: Ready now / 6 months / 12 months]**
- Current role: [Title]
- Strengths: [2-3 specific THRIVE-aligned strengths]
- Readiness gaps: [Specific gaps]
- Development actions: [What is actively being done]

---

### Emergency Protocol (if incumbent departed today)

- Interim: [Name] steps in; Dr. Lewis calls [Name] within 1 hour
- Systems/access: [What Dr. Lewis secures immediately]
- Matt Mathison board communication: within 24 hours
- Team communication: [Name or Dr. Lewis communicates within 24 hours]
- Search timeline: [Immediate / 30 days / assess first]

---

## Development Investment Summary

| Successor | Current gap | Development action | Timeline |
|----------|-----------|-------------------|---------|
| [Name] | [Gap] | [Action] | [Timeline] |
```

## Output Contract
- Succession plans are living documents, not annual snapshots — a succession plan that was updated in December and filed away is not succession planning; it is document production; Dr. Lewis reviews succession risk signals in every monthly CEO call (Krista transcripts) and updates the risk assessments when signals change; if an entity CEO starts showing disengagement signals, the succession risk moves from GREEN to YELLOW that week, not at the next annual review
- Emergency succession protocols must be executable on a Sunday at 10 PM — if the scenario "entity CEO calls Matt at 10 PM on a Sunday and resigns effective immediately" cannot be handled with a clear protocol, the succession plan is incomplete; Dr. Lewis stress-tests each CRITICAL role's emergency protocol annually to ensure it is specific, current, and executable; "we'll figure it out" is not an emergency protocol
- Succession depth of 0 for any CRITICAL role is a priority issue — any entity where a critical role has no identified successor is carrying unacceptable key-person risk; this is surfaced to Matt Mathison as a portfolio operations priority, not a HR nice-to-have; the resolution is either accelerating internal development or building an external search pipeline before the position becomes open; Dr. Lewis identifies 0-depth situations as part of the annual review and proposes resolution options within 30 days
- HITL required: Matt Mathison reviews and approves all succession plans annually; Matt is involved in any plan change for CRITICAL roles; emergency succession protocols are reviewed and confirmed by Matt Mathison before being finalized; board receives succession health summary annually per exec-board-governance; any activation of an emergency succession protocol is an immediate Matt Mathison call regardless of time of day

## System Dependencies
- **Reads from:** exec-leadership-coaching (leadership development data — readiness signals for successors); exec-portfolio-review (entity CEO performance — risk signals); exec-board-governance (board-level succession review requirements); exec-ceo-hiring (external search criteria — informs what "qualified successor" means for each role); Krista meeting transcripts (leadership behavior signals from monthly CEO calls); exec-1-on-1-framework (1-on-1 feedback — incumbent risk signals)
- **Writes to:** Succession plans (SharePoint → ExecutiveSupport → SuccessionPlanning → [Entity] → [YYYY]); exec-leadership-coaching (successor development plans); exec-board-communication (board succession summary — December annual review); exec-portfolio-review (succession risk as a portfolio operations risk item)
- **HITL Required:** Matt Mathison reviews and approves all succession plans; emergency protocol activation = immediate Matt Mathison call; board receives succession health summary annually; any CRITICAL role with 0 depth is surfaced to Matt Mathison within 30 days of identification; Dr. Lewis never activates an emergency succession protocol without Matt Mathison awareness and direction

## Test Cases
1. **Golden path:** December annual succession review; Dr. Lewis assesses all entities; Allevio: CEO (GREEN risk; depth 2 — COO is 6-month ready; VP Sales is 12-month ready); HIVE: CEO (YELLOW risk; depth 1 — Operations Director is 12-month ready; no ready-now option); Column6: CEO (GREEN; depth 1); MBL: Dr. Lewis role (no named successor; Matt retains interim). Priority finding: "HIVE has a CRITICAL role with a single 12-month-out successor and a YELLOW incumbent risk — this warrants a conversation with Matt about whether to accelerate development or establish an external pipeline." Matt: "Let's accelerate the Operations Director's development. Schedule a 6-month intensive coaching program and get her in front of the board by Q2." Dr. Lewis: "Done." Development plan created in exec-leadership-coaching. Succession depth upgraded to 1+ with a clear timeline.
2. **Edge case:** HIVE Operations Director gives notice unexpectedly before her development plan is complete → Emergency protocol activated: Dr. Lewis calls Matt within 1 hour; interim: Matt Mathison personally oversees HIVE operations for 30 days while search is initiated; team communication: "Matt Mathison is stepping in as interim HIVE lead while we identify the right next leader for this critical role — this is a sign of how seriously we take HIVE's success"; external search pipeline that Dr. Lewis had recommended (but Matt hadn't acted on) is activated immediately; Dr. Lewis debrief: "The 0-depth risk we identified in December materialized 6 months earlier than expected. The lesson: CRITICAL roles with YELLOW risk need either ready-now successors or an always-warm external pipeline."
3. **Adversarial:** Entity CEO pushes back on succession planning as "planning for me to leave" → Dr. Lewis: "I understand that reaction. Let me reframe it: succession planning isn't planning for you to leave — it's planning to make your team stronger. A team where no one below you is ready to step up is a team that is entirely dependent on you — which limits how much you can delegate, how much vacation you can take, and how fast you can grow. Building a succession bench is building organizational resilience. And frankly, if MBL ever wants to take you from running Allevio to running something bigger, we need to know Allevio can run without you. That's good for your career, not just MBL's risk management." CEO: "That framing makes sense. Let's do it."

## Audit Log
All succession plans retained by entity and year. Emergency protocol activations logged (what happened; who was notified; what was the resolution). Succession depth changes logged (when and why a role's depth changed). Matt Mathison review and approval records retained. Board succession summary presentations retained.

## Deprecation
Retire when MBL has a dedicated Human Resources or People function with succession planning expertise — with Dr. Lewis providing the THRIVE framework inputs and portfolio operational context.
