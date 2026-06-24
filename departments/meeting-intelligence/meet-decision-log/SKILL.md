---
name: meet-decision-log
description: "maintain decision log, running decision log mbl, decision log all entities, decision log structure entity, searchable decision history, decision trend analysis, reversible irreversible decision log, matt mathison decision history report, entity CEO decision summary, decision log sharepoint, decision log search, same decisions repeated, decision log governance, cross-entity decision log, decision log access control, decision registry mbl, decision log maintenance, decision history search, decision log report, decision audit trail entities"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[entity name or 'all' and optional date range for decision log query]"
---

# Meeting Decision Log

This skill maintains the running, searchable decision log across all MBL entities — the organizational memory of what was decided, when, by whom, and with what rationale. While meet-decision-tracker extracts decisions from individual meetings, this skill owns the log itself: its structure, its integrity, its search interface, and its periodic reporting to Matt Mathison and entity CEOs.

## When to Use

- Matt Mathison or Dr. Lewis needs to search prior decisions on a topic or entity
- An entity CEO needs a quarterly summary of decisions made in their entity
- A new decision needs to be checked against prior decisions for conflicts before it is logged
- A pattern analysis is needed: are the same decisions being re-made repeatedly?

## Decision Log Framework

```
DECISION LOG STRUCTURE
─────────────────────────────
Each record contains:
  Field               | Description
  ────────────────────|──────────────────────────────────────
  Decision ID         | [ENTITY]-DEC-[YYYYMMDD]-[nn]
  Entity              | MBL HoldCo | Allevio | HIVE | Column6 | Cross-Entity
  Meeting             | Meeting name + Transcript ID
  Date                | YYYY-MM-DD
  Decision Text       | Plain-language statement (max 200 chars)
  Decision Type       | A (Strategic) | B (Operational) | C (Administrative) | Deferred
  Decision Maker(s)   | Named individuals; Matt Mathison flagged [MM]
  Matt Mathison       | Present: [Y/N] | Deciding party: [Y/N]
  Rationale           | Why this option was chosen (from transcript or provided context)
  Options Considered  | Alternatives discussed before decision (or "Not documented")
  Reversibility       | Reversible | Semi-Reversible | Irreversible
  Outcome Status      | Open | In Progress | Completed | Reversed | Deferred
  Outcome Date        | Date outcome status last changed
  Outcome Notes       | What happened as a result of this decision
  Related Decisions   | IDs of decisions in the same thread
  Log Version         | Current version (amendments create new versions, not overwrites)
  Logged By           | meet-decision-tracker (skill) or Dr. Lewis (manual)
  Log Date            | When this record was written to the log

RECORD INTEGRITY RULES
─────────────────────────────
- Decisions are IMMUTABLE once logged as CONFIRMED
- Amendments append a new version (v2, v3) — original v1 is preserved
- Reversals are recorded as a new decision (type = REVERSAL) linked to original
- Deletion of any decision record is prohibited — decisions may be VOIDED with explanation
- VOID = decision was erroneously logged (e.g., was actually a discussion, not a decision)
  → VOID requires Dr. Lewis authorization
  → Original record marked VOIDED; reason appended

SEARCH INTERFACE
─────────────────────────────
Search parameters:
  - Entity (single or all)
  - Date range
  - Decision Type (A, B, C, Deferred)
  - Decision Maker name
  - Matt Mathison involvement (present | deciding)
  - Outcome Status
  - Reversibility
  - Full-text search of Decision Text and Rationale fields
  - Related Decision ID (find all decisions in a thread)

Search returns: sorted by date (descending), with full record or summary view

TREND ANALYSIS
─────────────────────────────
Run quarterly (or on demand):

1. REPEATED DECISIONS:
   Definition: Same or highly similar decision made ≥2 times on the same topic + entity
   Signal:     Prior decision was not implemented, was reversed, or was forgotten
   Action:     Flag to Dr. Lewis with decision thread history

2. DEFERRED DECISION AGING:
   Definition: Decision with status = DEFERRED that has not been re-raised in >30 days
   Signal:     Decision was deprioritized but not formally closed
   Action:     Alert meeting owner to either resolve or formally close

3. IRREVERSIBLE DECISION RATE:
   Definition: % of decisions classified Irreversible per entity per quarter
   Signal:     High rate may indicate insufficient reversibility consideration
   Benchmark:  ≥20% Irreversible → flag for entity CEO awareness

4. MATT MATHISON DECISION LOAD:
   Definition: # of decisions where Matt Mathison is the deciding party per month
   Signal:     >20/month → potential delegation opportunity
   Action:     Surface to Dr. Lewis for review

5. OPEN DECISION AGING:
   Definition: Decisions with Outcome Status = Open for >60 days
   Signal:     Decision was made but implementation is stalled
   Action:     Alert entity CEO and Dr. Lewis

ACCESS CONTROL
─────────────────────────────
Full access:       Dr. John Lewis
Search + read:     Matt Mathison (all entities), Entity CEOs (own entity only)
Entity-scoped:     Allevio CEO sees Allevio only; HIVE ops sees HIVE only
External:          No access under any circumstances
Allevio records:   If decision text touches clinical operations → restricted to Dr. Lewis + Allevio CEO only
```

## Output Format

```markdown
## Decision Log — [Entity] | [Date Range]

**Records returned:** [n] | **Filtered by:** [search parameters]
**Generated:** [Timestamp] | **Requested by:** [name]

---

### DECISION LOG

| ID | Date | Decision | Type | Maker | Matt | Reversibility | Status |
|----|------|----------|------|-------|------|--------------|--------|
| [ID] | [date] | [50-char summary] | [A/B/C] | [name] | [Y/N] | [Rev/Semi/Irrev] | [status] |

---

*(Full record for selected decision)*

**Decision ID:** [ID]
**Entity:** [entity] | **Meeting:** [meeting name]
**Date:** [date] | **Logged:** [date]

**Decision:** [full text]
**Type:** [type] | **Reversibility:** [classification]
**Decision Maker(s):** [names] | **Matt Mathison Deciding:** [Yes/No]
**Rationale:** [text]
**Options Considered:** [text or "Not documented"]
**Outcome Status:** [status] | **Last Updated:** [date]
**Outcome Notes:** [text or "None yet"]
**Related Decisions:** [IDs or "None"]

---

### TREND ANALYSIS (Quarterly Report)

**Repeated Decisions:** [n detected] — [entity: topic summary]
**Aged Deferrals (>30 days):** [n]
**Irreversible Rate:** [n%] — [benchmark comparison]
**Matt Mathison Decision Load:** [n/month avg]
**Open Decisions >60 Days:** [n]
```

## Output Contract

- **The decision log must be the single authoritative source of record for all MBL decisions — duplicate decision tracking in emails, notes, or other systems is not acceptable because divergence creates governance confusion.** When Matt Mathison or an entity CEO asks "what did we decide about X?", the answer must come from one place. If the decision log says one thing and someone's inbox says another, the organization loses the governance value of having a structured record. Every decision extracted by meet-decision-tracker flows to this log as its permanent home. No other system should independently maintain an MBL decision record.

- **Repeated decision detection is not optional reporting — when the same decision is made a second time on the same entity and topic, Dr. Lewis must be notified within 24 hours of the second decision being logged.** A repeated decision is an organizational signal: either the prior decision was never implemented (execution failure), was reversed and the reversal was not logged (governance failure), or was made again without awareness of the prior choice (institutional memory failure). Any of these is a problem that Dr. Lewis and potentially Matt Mathison need to address. Burying repeated decisions in a quarterly report delays the signal by weeks or months.

- **Access control must be enforced by the log system itself — scoping is not advisory.** Entity CEOs must not be able to see decisions from other entities, and external parties must have zero access. This is not merely a courtesy — PE portfolio companies can be competitors or can have information asymmetry concerns. A Column6 executive seeing HIVE Partners decisions, or a vendor contact accessing MBL HoldCo governance records, creates legal and competitive exposure. The access control is a system-enforced boundary, not a guideline that relies on users' discretion.

## System Dependencies

### Reads from
- meet-decision-tracker output (new decision records to log)
- Transcript registry (meeting and transcript IDs for decision source linking)
- MBL staff directory (decision maker name verification)
- Prior decision records (conflict detection, thread building)

### Writes to
- SharePoint decision log: `/Meeting Intelligence/Decision Log/[Entity]/`
- Quarterly trend analysis report: `/Meeting Intelligence/Decision Log/Reports/`
- Dr. Lewis alert queue (repeated decisions, aged deferrals, open decisions >60 days)
- Weekly summary input (decision rollup — decisions logged this week)

### HITL Required
- Any VOID request (requires Dr. Lewis authorization)
- Any Irreversible decision before logging as CONFIRMED (from meet-decision-tracker)
- Repeated decision alerts before escalation to entity CEO
- Allevio decisions touching clinical operations (restricted access designation)

## Test Cases

1. **Golden path:** Dr. Lewis searches the decision log for all HIVE Partners decisions in Q2 2026. The query returns 11 decisions: 3 Type A (Strategic — Matt Mathison deciding), 6 Type B (Operational — HIVE ops lead), 2 Type C (Administrative). All 11 have Outcome Status logged. One is Irreversible (capex commitment). The search takes <3 seconds and returns a clean table. Dr. Lewis exports the table for the HIVE quarterly report to Matt Mathison.

2. **Edge case:** A new decision is logged: "HIVE to move to biweekly LP reporting cadence." A search of the log finds a decision from 8 weeks prior: "HIVE LP reporting cadence confirmed as monthly (LP preference)." The repeated decision detector fires, alerts Dr. Lewis: "POTENTIAL REPEATED DECISION — HIVE-DEC-20260427-02 (monthly cadence) may conflict with HIVE-DEC-20260622-01 (biweekly cadence). Review before confirming." Dr. Lewis checks — the LP preference has since changed, and the new decision intentionally supersedes. He logs the relationship (new decision = reversal of prior) and confirms both records updated accordingly.

3. **Adversarial case:** A Column6 executive attempts to access the decision log search interface and queries "all entities." The access control layer detects that the user's identity is scoped to Column6 only, filters the results to Column6 decisions exclusively, and returns no results for MBL HoldCo, Allevio, or HIVE decisions. The access attempt is logged in the audit trail with the user identity, query parameters, and the access scope enforcement applied. Dr. Lewis receives a notification if any user queries beyond their access scope.

## Audit Log

Every decision log write operation records the Decision ID, entity, write timestamp, the skill or user that wrote the record, and the version number. Every read or search operation records the requesting user, search parameters, number of records returned, and whether any access scope restrictions were applied. VOID authorizations are logged with Dr. Lewis's identity and the reason provided. All log audit records are retained for 7 years — the same retention period as the decision records themselves.

## Deprecation

This skill should be reviewed if MBL adopts a formal governance platform (board management software or GRC tool) that includes a native decision registry with access control, immutable records, and audit logging. In that scenario, meet-decision-tracker would route new decisions to the platform's API rather than this skill, and this skill's search and reporting functions would be replaced by the platform's native tools. Deprecation requires Dr. Lewis to confirm that the replacement platform preserves record immutability, entity-scoped access control, and the repeated-decision detection logic before this skill is retired.
