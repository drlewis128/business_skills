---
name: meet-intelligence-setup
description: "setup MBL meeting intelligence system, Krista AI meeting recording configuration, transcript delivery format setup, entity tagging for meetings, meeting intelligence processing pipeline setup, Monday.com action item push configuration, distribution setup for Matt Mathison, Jimmy Lindsley CC setup, entity CEO routing setup, HIPAA safeguards Allevio transcript setup, PHI detection setup, data retention SharePoint setup, access controls meeting intelligence, meeting intelligence rollout sequence, MBL first then portfolio rollout, meeting intelligence system installation guide, meeting intelligence onboarding, Krista AI integration setup"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[setup phase: 'krista' | 'pipeline' | 'monday' | 'distribution' | 'hipaa' | 'sharepoint' | 'rollout' | 'full']"
---

# Meeting Intelligence Setup Guide

This skill guides the full setup of the MBL Meeting Intelligence system — from Krista.ai recording configuration through pipeline setup, Monday.com integration, distribution routing, HIPAA safeguards, SharePoint data architecture, and portfolio rollout sequencing. MBL is the control plane; portfolio rollout follows only after MBL operations are stable and validated.

## When to Use

- Initial system setup for the Meeting Intelligence program at MBL Partners
- A new portfolio entity (Allevio, HIVE, Column6) is being onboarded to the meeting intelligence pipeline
- A system component needs to be reconfigured after a Krista.ai integration change or platform update
- Dr. Lewis is auditing the setup for completeness before a new phase launch

## Meeting Intelligence Setup Framework

```
MEETING INTELLIGENCE SYSTEM SETUP — MBL PARTNERS
==================================================
Setup phase: [FULL / specific component]
Entity in scope: [MBL / Allevio / HIVE / Column6 / All]
Executed by: Dr. John Lewis

PHASE 1: KRISTA.AI INTEGRATION SETUP
  Step 1.1 — Meeting Recording Configuration
    [ ] Krista.ai connected to Microsoft Teams (MBL tenant)
    [ ] Recording consent notices configured for all participant types (internal; external)
    [ ] Recording auto-start rules defined: [which meeting types auto-record vs. require manual start]
    [ ] External participant notification of recording: [method; timing]
    [ ] Recording storage: Krista.ai cloud → encrypted at rest
    [ ] Verify: record a test meeting and confirm transcript is generated within 4 hours

  Step 1.2 — Transcript Delivery Format
    [ ] Transcript format: [JSON / plain text / structured — confirm Krista.ai output format]
    [ ] Speaker labeling: named participants (not "Speaker 1") — verify diarization quality
    [ ] Timestamps: per-utterance timestamps included (required for attribution verification)
    [ ] Delivery method: [Krista.ai webhook → pipeline / SFTP pull / API poll]
    [ ] Delivery SLA: ≤4 hours after meeting end — confirmed with Krista.ai team
    [ ] Test delivery: confirm transcript arrives in pipeline within SLA

  Step 1.3 — Entity Tagging
    [ ] Entity tagging convention defined:
        MBL meetings: [tag format]
        Allevio meetings: [tag format]
        HIVE meetings: [tag format]
        Column6 meetings: [tag format]
    [ ] Tagging method: [calendar category / meeting title convention / Krista.ai metadata field]
    [ ] All existing recurring meetings tagged correctly
    [ ] Tagging guide distributed to meeting organizers
    [ ] Verify: spot-check 5 meetings across entities to confirm correct tags

PHASE 2: PROCESSING PIPELINE SETUP
  Step 2.1 — PHI Detection Configuration (Allevio)
    [ ] PHI pattern library installed (Dr. Lewis maintains)
    [ ] HIPAA Transcript Guard skill configured for Allevio-tagged transcripts
    [ ] PHI detection scan passes (Pass 1, Pass 2, Pass 3) operational
    [ ] Dr. Lewis notification channel configured for PHI alerts (≤15 min SLA)
    [ ] Test: run a sanitized test transcript with synthetic PHI — confirm detection
    [ ] HIPAA incident register created in SharePoint (restricted access)

  Step 2.2 — Transcript Parsing and Topic Tagging
    [ ] Topic extraction configured with MBL-relevant topic taxonomy
    [ ] Entity-specific topic dictionaries loaded (Allevio: clinical; HIVE: oil/gas; Column6: CTV)
    [ ] Action item extraction rules configured (commitment vs. assignment distinction)
    [ ] Decision extraction rules configured
    [ ] Speaker attribution confidence scoring configured

  Step 2.3 — Pipeline Monitoring
    [ ] Processing logs enabled and routed to SharePoint
    [ ] Pipeline health report automation configured (weekly trigger)
    [ ] SLA monitoring alerts configured (threshold breaches → Dr. Lewis notification)

PHASE 3: MONDAY.COM INTEGRATION SETUP
  Step 3.1 — Board Configuration
    [ ] MBL action item board: columns (Action / Owner / Due Date / Entity / Meeting Source / Status)
    [ ] Entity boards: [Allevio / HIVE / Column6 boards configured to match]
    [ ] Access control: entity boards visible only to entity team members + Dr. Lewis + Matt Mathison
    [ ] Automation: action item status updates trigger closure rate tracking

  Step 3.2 — Action Item Push Configuration
    [ ] API connection: pipeline → Monday.com (OAuth; logged; permissioned)
    [ ] Push trigger: immediately after action item extraction completes
    [ ] Duplicate detection: same action item from same meeting should not create two cards
    [ ] Test: extract action items from a test meeting; confirm cards appear correctly in Monday.com

  Step 3.3 — Notification Configuration
    [ ] 3-day warning notifications: Monday.com automation configured
    [ ] Due-date notifications: configured
    [ ] 1-day overdue notifications: configured
    [ ] >14-day escalation: Dr. Lewis notification + entity CEO configured

PHASE 4: DISTRIBUTION SETUP
  Step 4.1 — Matt Mathison Distribution
    [ ] Email address confirmed: [Matt's current MBL email]
    [ ] Delivery format: direct email (no attachment — inline content)
    [ ] Delivery timing: Monday 9am MST trigger configured
    [ ] Delivery confirmation: read receipt or delivery confirmation logging enabled
    [ ] Test: send a test summary and confirm receipt + delivery logging

  Step 4.2 — Jimmy Lindsley CC
    [ ] Jimmy's email confirmed and added to Matt's weekly summary distribution
    [ ] CC format: same document as Matt — no modifications
    [ ] Test: confirm Jimmy receives same content as Matt on test distribution

  Step 4.3 — Entity CEO Routing
    [ ] Allevio CEO email configured for Allevio ops brief distribution
    [ ] HIVE CEO email configured for HIVE ops brief distribution
    [ ] Column6 CEO email configured for Column6 ops brief distribution
    [ ] Access control: entity CEOs receive only their entity's brief (no cross-entity content)
    [ ] Dr. Lewis approval gate: all entity brief distributions require Dr. Lewis trigger

PHASE 5: HIPAA SAFEGUARDS (ALLEVIO)
  Step 5.1 — Transcript Handling
    [ ] Allevio transcripts stored in restricted SharePoint folder (Dr. Lewis + Allevio CEO only)
    [ ] PHI guard configured before any Allevio transcript enters standard pipeline
    [ ] Clinical meeting type flag triggers elevated scan (Pass 3)
    [ ] Allevio transcript retention: 1 year (per retention policy)

  Step 5.2 — Access Controls
    [ ] No Allevio transcript content accessible to non-Allevio pipeline components
    [ ] SharePoint permissions verified: Allevio folder ≠ accessible to HIVE or Column6 users
    [ ] HIPAA BAA confirmed with Krista.ai (required before any Allevio meeting recording begins)

PHASE 6: SHAREPOINT DATA ARCHITECTURE
  [ ] Folder structure created:
      /Meeting Intelligence/
        /MBL/[Year]/[Month]/
        /Allevio/[Year]/[Month]/   ← restricted
        /HIVE/[Year]/[Month]/
        /Column6/[Year]/[Month]/
        /Monthly-Reports/
        /OKRs/
        /KPI-Dashboard/
        /Pipeline-Health/
        /Quality-Reviews/
        /Attribution-Checks/
        /Privacy-Checks/
        /Topic-Trends/
        /Action-Items/
        /HIPAA-Scans/              ← restricted
        /Deal-Intelligence/        ← restricted
  [ ] Retention labels applied: transcripts 1yr; summaries 3yr; decisions indefinite; actions 2yr
  [ ] Access control matrix documented and applied

PHASE 7: ROLLOUT SEQUENCE
  MBL FIRST (validate before portfolio rollout):
    [ ] All phases 1-6 complete for MBL
    [ ] 4-week pilot: Matt Mathison receives weekly briefings; feedback collected
    [ ] KPIs meeting targets for 4 consecutive weeks
    [ ] Matt Mathison confirms program is delivering value
  PORTFOLIO ROLLOUT (after MBL validation):
    [ ] Allevio: phases 1-6 with HIPAA safeguards emphasis; Dr. Lewis + Allevio CEO sign-off
    [ ] HIVE: phases 1-6 with LP confidentiality emphasis; Dr. Lewis + HIVE CEO sign-off
    [ ] Column6: phases 1-6 with client confidentiality emphasis; Dr. Lewis + Column6 CEO sign-off
```

## Output Format

```markdown
## Meeting Intelligence Setup Status — [DATE]

**Entity:** [entity] | **Phase:** [phase] | **Executed by:** Dr. John Lewis

**Setup Checklist:**
| Phase | Steps | Complete | Remaining |
|-------|-------|----------|-----------|
| 1: Krista.ai | [N] | [N] | [N] |
| 2: Pipeline | [N] | [N] | [N] |
| 3: Monday.com | [N] | [N] | [N] |
| 4: Distribution | [N] | [N] | [N] |
| 5: HIPAA (Allevio) | [N] | [N] | [N] |
| 6: SharePoint | [N] | [N] | [N] |
| 7: Rollout | [N] | [N] | [N] |

**Blockers:** [list any steps that cannot proceed]

**Go/No-Go for [Next Phase / Pilot Launch]:** GO / NO-GO — [reason if NO-GO]
```

## Output Contract

- **HIPAA BAA with Krista.ai must be confirmed before any Allevio meeting is recorded.** This is a legal prerequisite, not a technical setup step. Dr. Lewis verifies the BAA is executed and on file before Phase 1 recording configuration is applied to any Allevio-tagged meeting. If the BAA is not in place, Allevio meeting recording is blocked regardless of technical readiness. This step is non-negotiable and cannot be expedited or worked around.

- **Portfolio rollout does not begin until MBL has 4 consecutive weeks of successful delivery.** The 4-week MBL validation pilot exists because the Meeting Intelligence system must prove it can reliably deliver Matt Mathison's briefing, maintain pipeline health, and catch quality issues before it is deployed to entities whose data carries higher compliance risk (Allevio: HIPAA; HIVE: LP confidentiality). Pressure to accelerate portfolio rollout does not override this gate — the validation period exists specifically to protect portfolio entities from inheriting a system that has not been proven stable.

- **Every setup step that involves system access or permissions is logged in the audit trail.** SharePoint folder creation, Monday.com API connections, email distribution list configuration, and Krista.ai integration setup are all logged with the date, the action taken, and Dr. Lewis as the accountable owner. The setup log is the authoritative record of how the system is configured, and it is the first reference point when any component behaves unexpectedly after deployment.

## System Dependencies

### Reads from
- Krista.ai API documentation and admin console (for recording and delivery configuration)
- Monday.com API documentation (for board setup and action item push configuration)
- Microsoft 365 admin (for SharePoint folder creation and access control)
- HIPAA BAA documentation (Krista.ai)

### Writes to
- SharePoint: /Meeting Intelligence/ (full folder architecture creation)
- Krista.ai: entity tagging configuration, recording rules, delivery webhook
- Monday.com: board configuration, automation rules, API connection
- Setup log: SharePoint /Meeting Intelligence/Setup/setup-log.md

### HITL Required
- Dr. Lewis: owns and executes all setup steps; no delegation without explicit direction
- Matt Mathison: validates pilot delivery during 4-week MBL validation phase; provides go/no-go for portfolio rollout
- Entity CEOs: sign off on their entity's pipeline activation (phases 1-6 for their entity)
- Krista.ai team: engaged for integration configuration and HIPAA BAA confirmation

## Test Cases

1. **Golden path:** Full MBL setup — all 7 phases complete in 3 weeks, pilot runs for 4 weeks with Matt receiving on-time briefings and providing positive feedback, rollout authorized for Allevio with HIPAA safeguards confirmed.
2. **Edge case:** During Phase 1 setup, Krista.ai's speaker diarization quality is poor for meetings with more than 6 participants — names are swapped or labeled generically. Setup must flag this as a known limitation, document the workaround (manual attribution review for large meetings), and defer speaker-dependent features (attribution confidence scoring) until Krista.ai quality improves, rather than blocking the entire setup.
3. **Adversarial:** An eager entity CEO asks Dr. Lewis to activate their entity's pipeline before the 4-week MBL validation is complete, citing time pressure. Setup framework must support Dr. Lewis in maintaining the rollout sequence gate — the entity CEO's brief is a readout that goes through Matt Mathison, and activating an entity pipeline prematurely exposes their data to a system that has not been validated. Dr. Lewis holds the gate; Matt Mathison confirms if overriding is warranted.

## Audit Log

The setup log in SharePoint captures every configuration action with date, action description, system affected, and Dr. Lewis confirmation. For Allevio, the setup log includes the HIPAA BAA confirmation record and the date the Allevio pipeline was activated. The setup log is retained for the lifetime of the Meeting Intelligence program plus 3 years, as it is the authoritative configuration record for audit and compliance purposes.

## Deprecation

This skill is deprecated when the Meeting Intelligence system is fully operational and stable across all entities, and the setup configuration is documented in a live system configuration record that is maintained separately. The setup guide transitions from a deployment tool to a reference document. If MBL migrates to a new meeting intelligence platform, a new setup skill is created for the new platform rather than updating this one — so the historical setup documentation for Krista.ai integration remains intact.
