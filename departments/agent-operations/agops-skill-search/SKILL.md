---
name: agops-skill-search
description: "Search the MBL skill library for the right skill for a task. Use when: finding a skill for a task, looking up what skills exist, searching skills by topic, searching skills by department, searching skills by entity, finding Allevio skills, finding HIVE skills, finding Column6 skills, finding MBL HoldCo skills, listing all skills in a department, finding skills that write to Monday.com, finding skills that read from QuickBooks, searching by system dependency, finding skills that require human approval, finding fully automated skills, finding skills by HITL requirement, checking if a skill exists before building one, looking up finance skills, looking up HR skills, finding the best skill for a meeting use case, searching by trigger phrase, ranking matching skills by relevance"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "<search-query> [--entity <entity>] [--department <dept>] [--system <system>] [--hitl automated|required]"
---

# agops-skill-search

Searches the MBL agent skill library across multiple dimensions — topic, entity, department, system dependency, and HITL requirement — to surface the best-matched skills for any given task. The output is a ranked list with brief descriptions, so Dr. Lewis or any operator can quickly identify the right skill without manually scanning the registry.

## When to Use

- An operator or agent needs to find the right skill for a specific task and is not sure what exists in the ~1600-skill library across all departments and entities
- Dr. Lewis wants to confirm whether a skill already exists before commissioning the build of a new one — avoiding duplication and wasted authoring effort
- A Krista.ai workflow needs to identify which skill to invoke for an entity-specific task (e.g., "which skill handles Allevio member onboarding?")
- A governance audit requires listing all skills that write to a specific system (e.g., Monday.com, QuickBooks) or that require HITL approval before output delivery

## agops-skill-search Framework

```
SKILL SEARCH PROTOCOL — MBL PARTNERS AGENT OPERATIONS

1. SEARCH MODE DETECTION
   Parse the search query and identify the primary search dimension:
     TOPIC      — natural-language description of a task (e.g., "handle churn risk")
     ENTITY     — entity-scoped search (Allevio, HIVE, Column6, MBL HoldCo)
     DEPARTMENT — list all skills in a department (finance, hr, marketing, etc.)
     SYSTEM     — find skills that interact with a specific MBL system
     HITL       — filter by automation level (fully automated vs. HITL required)
   Multiple dimensions may be combined (e.g., entity=Allevio + system=Monday.com)

2. TOPIC SEARCH
   - Parse query into key concepts (nouns + verbs)
   - Match against skill names, description trigger phrases, and framework headers
   - Rank by: exact name match > trigger phrase match > framework keyword match
   - Return top 5 results with: skill name, one-line description, department, entity scope
   - If 0 results: suggest adjacent skills and recommend agops-skill-installer for gap

3. ENTITY SEARCH
   Entity scope filters:
     Allevio    → skills tagged with Allevio context, healthcare dept, PHI posture
     HIVE       → skills tagged with HIVE/energy context, LP data scope
     Column6    → skills tagged with Column6/media/CTV context, CCPA scope
     MBL HoldCo → skills with M365/QB/GHL system dependencies, no entity restriction
   Return: ranked list of entity-scoped skills sorted by department, then name

4. DEPARTMENT SEARCH
   Recognized departments (examples):
     finance, hr, marketing, sales, operations, engineering, legal, compliance,
     customer-success, data, security, agent-operations, strategy, executive
   Return: complete list of all installed skills in that department with:
     - Skill name
     - One-line description
     - Entity scope (if restricted)
     - HITL requirement (yes/no)
     - Current version

5. SYSTEM DEPENDENCY SEARCH
   Searchable MBL systems:
     monday.com, quickbooks, bill.com, gohighlevel, krista.ai, m365/outlook/teams,
     covercy, advancedmd, claude-api, project_skill_registry.md, ~/.agents/skills/
   Return: all skills that list the specified system under Reads from OR Writes to
   Flag separately: skills that WRITE to the system (higher governance interest)

6. HITL FILTER
   AUTOMATED   — skills where HITL Required section states "none" or conditions
                 under which automation is permitted without Dr. Lewis review
   HITL REQUIRED — skills that always require Dr. Lewis or other HITL before output
   Return: filtered list with HITL condition quoted from each SKILL.md

7. RANKING LOGIC
   Score each result (0–100):
     +40  Exact skill name match to query keyword
     +30  Trigger phrase exact match
     +20  Framework ALL-CAPS header keyword match
     +10  Department/entity match to query context
     -10  Skill is in deprecated/ folder (surface with warning, not removed from results)
   Sort descending; top 5 for TOPIC search; full list for DEPARTMENT search

8. ZERO-RESULT HANDLING
   If no skills match:
     - Report: "No skill found for: <query>"
     - Suggest: 2-3 adjacent skills that partially match
     - Recommend: "Consider commissioning agops-skill-installer for this gap"
     - Log the zero-result query for Dr. Lewis review (skill library gap signal)

9. OUTPUT SCOPE RULES
   - Never surface PHI-containing skill metadata in search results
   - Allevio skill results always include: "(HIPAA-scoped; PHI prohibition applies)"
   - HIVE skill results always include: "(LP data; isolation required)"
   - Do not expose internal file paths in results delivered to non-Dr.-Lewis operators
```

## Output Format

```markdown
## Skill Search Results

**Query:** <search query>
**Dimensions:** <TOPIC | ENTITY | DEPARTMENT | SYSTEM | HITL>
**Filters Applied:** entity=<entity>, department=<dept>, system=<system>, hitl=<filter>
**Total Matches:** <N>
**Search Date:** <YYYY-MM-DD>

### Top Results

| Rank | Skill Name              | Description                        | Dept       | Entity   | HITL |
|------|-------------------------|------------------------------------|------------|----------|------|
| 1    | <skill-name>            | <one-line description>             | <dept>     | <entity> | Y/N  |
| 2    | <skill-name>            | <one-line description>             | <dept>     | <entity> | Y/N  |
| 3    | <skill-name>            | <one-line description>             | <dept>     | <entity> | Y/N  |

### Recommended Skill
**<skill-name>** — <1-sentence rationale for why this is the best match>

### Compliance Notes
<Any PHI, CCPA, or LP data notices for top-ranked results>

### Library Gap Signal
<If zero results: gap noted; adjacent suggestions listed; commissioning recommendation>
```

## Output Contract

- **Search results are ranked, not listed alphabetically, because the best match must be immediately obvious.** An operator querying "handle Allevio member onboarding handoff" should see the most relevant skill at rank 1 — not buried at rank 8 in a flat alphabetical list of all CS skills. The ranking algorithm weights exact name and trigger phrase matches highest because those are the strongest signals of intent alignment, and penalizes deprecated skills so that active skills always surface above retired ones. The recommended skill at the bottom of the output is a single, committed recommendation — not a "you might also consider" hedge — because the purpose of search is to reach a decision, not to present options indefinitely.

- **Zero results are reported as library gap signals, not search failures.** When a search returns no matches, that is useful information: there is a gap in the MBL skill library for that function. The zero-result output includes the query, two to three adjacent skills that partially address the need, and a recommendation to commission a new skill via `agops-skill-installer`. The query is also logged to `~/.agents/logs/agops-skill-search.log` as a gap signal that Dr. Lewis reviews periodically to identify high-frequency unmet needs and prioritize the skill authoring backlog. A library with ~1600 skills that still produces zero results is providing intelligence about where the next 100 skills should go.

- **Compliance posture annotations are non-optional in search results.** Any result that involves an Allevio-scoped skill must display the HIPAA scope note; any HIVE result must display the LP data isolation note; any Column6 result with user-data adjacency must display the CCPA note. These annotations are not optional fields that operators can filter out — they are printed unconditionally because an operator who selects the wrong skill without understanding its compliance posture may invoke it in a context that creates liability. The annotation is brief (one parenthetical per result row) but it is always there, ensuring that compliance context travels with discovery.

## System Dependencies

**Reads from:**
- `~/.claude/projects/-Users-johnlewis/memory/project_skill_registry.md` — primary search index (skill names, departments, entity scopes, descriptions)
- `~/.agents/skills/<name>/SKILL.md` — full file read for SYSTEM and HITL searches requiring deep inspection
- `~/.agents/skills/deprecated/` — checked and surfaced with deprecation warning when relevant
- `~/.agents/logs/agops-skill-search.log` — zero-result query history (gap signal review)

**Writes to:**
- `~/.agents/logs/agops-skill-search.log` — search query log (query, result count, zero-result flag, timestamp)

**HITL Required:**
- No HITL required for read-only search operations
- Dr. Lewis review triggered when zero-result queries accumulate (gap signal threshold: 3+ unique zero-result queries in 7 days)
- Dr. Lewis is notified if a SYSTEM search reveals that a compliance-sensitive system (AdvancedMD, Covercy) has skills writing to it that were not previously catalogued

## Test Cases

**Golden Path:** Dr. Lewis queries "find skills that write to Monday.com." The search parses SYSTEM dimension, scans all SKILL.md files for "Monday.com" in the Writes to section, returns 14 matching skills ranked by department, annotates the 2 Allevio-scoped results with HIPAA notes, and delivers a clean table. Recommended skill is the top-ranked match. Search completes in under 10 seconds. Query is logged; result count is 14.

**Edge Case:** A query arrives for "quarterly business review for HIVE LP investors." ENTITY=HIVE and TOPIC="quarterly business review" are both detected. Search finds `pe-lp-quarterly-report` (rank 1) and `hive-lp-qbr-preparer` if installed (rank 2), annotates both with LP data isolation notes, and recommends `pe-lp-quarterly-report` as the primary match. If no HIVE-specific QBR skill exists, the result surfaces `pe-lp-quarterly-report` with a note that it covers the use case but is not entity-restricted to HIVE, and logs a gap signal for a HIVE-scoped QBR skill.

**Adversarial:** A search query arrives that includes what appears to be PHI in the search string — for example, "find skill for handling patient John Smith's care coordination." The search strips the PHI from the query before logging, replaces it with "[PHI REDACTED]" in the log entry, runs the search on the sanitized topic ("care coordination"), and returns results normally. The PHI handling is noted in the search output. Dr. Lewis is notified that a PHI-containing query reached the search skill, as this may indicate a workflow misconfiguration upstream.

## Audit Log

Every search operation is logged with: query string (PHI-stripped if applicable), detected dimensions, filters applied, result count, top-ranked skill returned, zero-result flag, and timestamp. Logs are appended to `~/.agents/logs/agops-skill-search.log` and retained for 90 days. Zero-result queries are flagged separately in a gap signal sub-log reviewed by Dr. Lewis weekly during the AI orchestration Phase 0-4 build-out. The audit log enables analysis of which skills are most frequently discovered via search, which departments have the highest search traffic, and where the library has persistent gaps.

## Deprecation

This skill is deprecated when the MBL skill library is surfaced through a dedicated search interface — whether a Krista.ai skill discovery panel, a Claude Code slash command with autocomplete, or an internal web portal — that provides real-time indexed search without requiring an agent skill as the intermediary. Until that interface exists, `agops-skill-search` is the canonical discovery mechanism for the ~1600-skill library and should be the first call any operator makes when unsure which skill to invoke.
