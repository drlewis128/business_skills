---
name: agops-sec-credential-manager
description: "Manage API keys, tokens, and credentials for all AI agent workflows across MBL Partners. Use when rotating the Claude API key on its quarterly schedule, managing Monday.com API token rotation, securing SharePoint service account credentials, storing Krista.ai integration credentials, responding to a suspected credential compromise, verifying that no API key is hardcoded in any skill or config file, checking BitWarden for a human-accessible credential backup, documenting per-entity credential isolation, onboarding a new integration that requires API credentials, reviewing credential hygiene before a new agent goes live, confirming environment variable configuration in the Krista.ai runtime, auditing credential rotation logs for compliance gaps, rotating credentials after a team member offboards, verifying that Allevio credentials are isolated from HIVE credentials, generating a credential rotation schedule, flagging a credential that has not been rotated in more than 90 days, or responding to an API provider security notice."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[credential-type] [entity] [action: rotate|audit|onboard|compromise-response]"
---

# Agent Credential Manager

This skill governs the storage, rotation, isolation, and compromise response procedures for every API key, token, and service account credential used by AI agent workflows within the MBL Partners ecosystem. It ensures that credentials are never hardcoded, are rotated on a defined schedule, are isolated per portfolio entity, and can be fully revoked and replaced within one hour of a suspected compromise.

## When to Use

- A new integration is being onboarded and its credentials must be stored, documented, and isolated before any agent workflow goes live.
- The quarterly credential rotation schedule is due and Dr. Lewis needs a structured checklist to rotate all active keys and verify the rotation in each system.
- A credential compromise is suspected (leaked key, unauthorized API call, security notice from a provider) and the 1-hour response protocol must be initiated immediately.
- A team member with credential access has offboarded and all credentials they had access to must be rotated as a precautionary measure.

## Agent Credential Manager Framework

```
═══════════════════════════════════════════════════════════
SECTION 1: CREDENTIAL INVENTORY
═══════════════════════════════════════════════════════════

ANTHROPIC / CLAUDE API:
  Key Type: API key (bearer token)
  Used By: All Claude API calls via Krista.ai + direct integrations
  Entity Scope: MBL-wide; NOT entity-isolated (single key, entity
    isolation enforced at context layer by permission model)
  Storage: Environment variable ANTHROPIC_API_KEY in Krista.ai runtime
  Backup: BitWarden vault → MBL Partners → AI-Ops → Claude-API-Key
  Rotation: Quarterly (see Section 4)
  Owner: Dr. John Lewis

MONDAY.COM:
  Key Type: API token (per-user or service account token)
  Used By: All Monday.com write agents (action items, board updates)
  Entity Scope: Board-level isolation enforced via Monday.com
    workspace permissions; one service account per entity recommended
  Storage: Environment variable MONDAY_API_TOKEN in Krista.ai runtime
  Backup: BitWarden vault → MBL Partners → AI-Ops → Monday-Tokens
  Rotation: Quarterly
  Owner: Dr. John Lewis

SHAREPOINT / M365 SERVICE ACCOUNT:
  Key Type: OAuth 2.0 client credentials (Client ID + Client Secret)
  Used By: All SharePoint read/write agents
  Entity Scope: Service principal scoped to AI-Ops site collection;
    entity SharePoint sites controlled via site-level permissions
  Storage: Environment variables SP_CLIENT_ID, SP_CLIENT_SECRET
  Backup: BitWarden vault → MBL Partners → AI-Ops → SharePoint-SVC
  Rotation: Quarterly (client secret expiry; set 90-day expiry in Azure)
  Owner: Dr. John Lewis

KRISTA.AI INTEGRATION:
  Key Type: Krista.ai API key or OAuth token (per integration)
  Used By: All Krista.ai orchestration workflows
  Entity Scope: Workflow-level isolation within Krista.ai
  Storage: Krista.ai secrets vault (internal) + BitWarden backup
  Rotation: Quarterly or on Krista.ai team recommendation
  Owner: Dr. John Lewis

GOHIGHLEVEL (CRM — MBL + North Vista):
  Key Type: API key
  Used By: CRM query agents, lead routing agents
  Entity Scope: Isolated per GHL sub-account (MBL vs North Vista)
  Storage: Environment variable GHL_API_KEY_[ENTITY]
  Backup: BitWarden vault → MBL Partners → AI-Ops → GHL-Keys
  Rotation: Quarterly
  Owner: Dr. John Lewis

COVERCY (HIVE Partners):
  Key Type: API key or service credentials (per Covercy docs)
  Used By: HIVE production data agents
  Entity Scope: HIVE-only; hard-isolated from all other entities
  Storage: Environment variable COVERCY_API_KEY
  Backup: BitWarden vault → MBL Partners → AI-Ops → Covercy
  Rotation: Quarterly
  Owner: Dr. John Lewis

═══════════════════════════════════════════════════════════
SECTION 2: STORAGE RULES (NON-NEGOTIABLE)
═══════════════════════════════════════════════════════════

RULE 1: NEVER hardcode credentials in any skill file, config
  file, prompt template, or version-controlled repository.
  Violation = immediate rotation of the exposed credential.

RULE 2: Environment variables are the runtime standard.
  Format: [SYSTEM]_[CREDENTIAL_TYPE]_[ENTITY_IF_ISOLATED]
  Example: MONDAY_API_TOKEN_HIVE

RULE 3: BitWarden is the human-accessible backup for all
  credentials. Dr. Lewis maintains access. No other team
  member has BitWarden access to AI-Ops vault without
  Dr. Lewis explicit authorization.

RULE 4: Credentials are NEVER logged, printed, or included
  in audit log entries (audit logger logs credential events,
  not credential values — see agops-sec-audit-logger).

RULE 5: Credentials are NEVER transmitted in plaintext email,
  Teams message, Slack, or Monday.com comment.

═══════════════════════════════════════════════════════════
SECTION 3: PER-ENTITY CREDENTIAL ISOLATION
═══════════════════════════════════════════════════════════

Entity isolation prevents a compromised credential from
exposing data across portfolio companies.

  ALLEVIO: AdvancedMD credentials isolated to Allevio agents only.
    No cross-entity credential sharing. HIPAA-adjacent = highest
    isolation priority. Dr. Lewis must approve any Allevio
    credential onboarding.

  HIVE: Covercy credentials isolated to HIVE agents only.
    LP data sensitivity = hard isolation. WTI-triggered workflows
    use same credentials but require HITL before financial outputs.

  COLUMN6: GHL sub-account for Column6 isolated from MBL GHL.
    CCPA sensitivity applies to any credential that accesses
    consumer data systems.

  MBL HOLDCO: M365 service principal scoped to AI-Ops site
    collection; not granted access to entity-specific SharePoint
    sites unless explicitly added.

═══════════════════════════════════════════════════════════
SECTION 4: QUARTERLY ROTATION SCHEDULE
═══════════════════════════════════════════════════════════

TARGET DATES: Jan 10, Apr 10, Jul 10, Oct 10
OWNER: Dr. John Lewis
PROCESS:

  FOR EACH CREDENTIAL IN INVENTORY:
  1. Generate new key/token/secret in the provider console
  2. Update environment variable in Krista.ai runtime
  3. Update BitWarden backup entry (old key → archive; new key → active)
  4. Test: run a non-critical agent workflow to confirm new credential
  5. Revoke old credential in provider console
  6. Log rotation event: agops-sec-audit-logger (action-type: system-event)
  7. Update Credential Rotation Log in SharePoint AI-Ops → Security

ROTATION LOG PATH:
  SharePoint → AI-Ops → Security → Credential-Rotation-Log.xlsx
  Columns: Credential | Entity | Old Key Hash (last 4) | Rotation Date |
           New Key Hash (last 4) | Rotated By | Test Status | Notes

═══════════════════════════════════════════════════════════
SECTION 5: COMPROMISED CREDENTIAL RESPONSE (1-HOUR PROTOCOL)
═══════════════════════════════════════════════════════════

TRIGGER: Suspected or confirmed credential exposure via:
  - Provider security alert or anomalous usage notification
  - Unexpected API calls in provider logs
  - Credential found in logs, code, or communications
  - Team member offboard with credential knowledge

MINUTE 0–15: CONTAIN
  1. Immediately revoke the compromised credential in provider console
  2. Do NOT wait to generate replacement first — revoke now
  3. Halt all agent workflows using that credential
  4. Notify Dr. Lewis via Krista.ai priority channel (if not already aware)

MINUTE 15–45: REPLACE
  5. Generate new credential in provider console
  6. Update environment variable in Krista.ai runtime
  7. Update BitWarden backup
  8. Test with non-critical workflow

MINUTE 45–60: LOG AND ASSESS
  9. Log incident: agops-sec-audit-logger with ANOMALY_FLAG=True
  10. Assess: what data could have been accessed with the compromised key?
  11. If PHI-adjacent (Allevio credential): trigger agops-sec-phi-guard
      breach assessment protocol
  12. If financial system credential: notify Matt Mathison
  13. Document root cause and preventive action in incident log

WITHIN 24 HOURS:
  14. Root cause analysis complete
  15. Preventive control implemented or planned
  16. Matt Mathison briefed if material risk existed
```

## Output Format

```markdown
## Credential Management Report — [Action Type] — [Date]

**Action:** [Rotation | Compromise Response | Onboard | Audit]
**Credential(s) Affected:** [system names; no key values]
**Entity Scope:** [Allevio | HIVE | Column6 | MBL HoldCo | All]
**Owner:** Dr. John Lewis

### Credential Status

| Credential | Entity | Last Rotated | Next Due | Status |
|------------|--------|--------------|----------|--------|
| Claude API | All | [date] | [date] | [Current / Overdue / Rotated Today] |
| Monday.com | [entity] | [date] | [date] | [status] |
| SharePoint SVC | MBL | [date] | [date] | [status] |
| Krista.ai | All | [date] | [date] | [status] |
| GHL | [entity] | [date] | [date] | [status] |
| Covercy | HIVE | [date] | [date] | [status] |

### Actions Taken
- [ ] Old credentials revoked
- [ ] New credentials generated and deployed
- [ ] BitWarden updated
- [ ] Rotation logged in SharePoint
- [ ] Test workflow executed successfully

### Anomalies / Incidents
[None | Description of incident and response taken]

### Next Rotation Due: [date]
```

## Output Contract

- Credential rotation is non-negotiable on the quarterly schedule because API keys that are never rotated accumulate risk over time — every additional day an unchanged key is active is an additional day for that key to be discovered in a log, intercepted in transit, or extracted from a compromised system; the quarterly cadence exists to bound that exposure window across all MBL integrations, and any rotation that slips past its target date by more than 14 days must be flagged to Matt Mathison as an open control gap.

- The hardcoding prohibition is absolute because hardcoded credentials in skill files or config repositories can be exposed through version control history, file shares, or logging systems in ways that are difficult to detect and nearly impossible to fully remediate; the discovery of any hardcoded credential triggers immediate rotation of that credential regardless of where it was found, and a root cause note is logged to explain why the credential was hardcoded and what process change prevents recurrence.

- Per-entity credential isolation is a security control, not a convenience preference — if a single compromised credential can access data from multiple portfolio entities, a breach at one entity becomes a breach at all entities simultaneously; entity isolation ensures that even in a worst-case compromise scenario, the blast radius is limited to one entity's data, which is essential for HIPAA compliance at Allevio, LP data protection at HIVE, and CCPA compliance at Column6.

## System Dependencies

**Reads from:** Provider consoles (Anthropic, Monday.com, Azure AD, Krista.ai, GHL, Covercy) for credential status; BitWarden vault for backup verification; SharePoint → AI-Ops → Security → Credential-Rotation-Log.xlsx; agops-sec-audit-logger (anomaly events involving credential misuse)

**Writes to:** Krista.ai runtime environment variables; BitWarden vault (MBL Partners → AI-Ops); SharePoint → AI-Ops → Security → Credential-Rotation-Log.xlsx; agops-sec-audit-logger (rotation and incident events)

**HITL Required:** Yes — Dr. Lewis executes all credential rotations personally; any compromise response requires Dr. Lewis notification within 15 minutes; Matt Mathison notified if financial system credentials are compromised or if PHI-adjacent system credential is involved

## Test Cases

**Golden Path:** Quarterly rotation is due for the Claude API key; Dr. Lewis generates a new key in the Anthropic console, updates ANTHROPIC_API_KEY in the Krista.ai runtime, updates BitWarden with the new key and archives the old, runs a test meet-summary-builder workflow to confirm the new key works, revokes the old key in the Anthropic console, logs the rotation in SharePoint, and records a system-event entry in the audit logger — all completed within 2 hours of the rotation target date.

**Edge Case:** The SharePoint service principal client secret expires 3 days before the scheduled rotation date, causing SharePoint write failures in two Monday.com action item push workflows; credential manager identifies the expiry as the root cause, Dr. Lewis generates a new client secret in Azure AD, updates SP_CLIENT_SECRET in the Krista.ai runtime, updates BitWarden, verifies SharePoint writes resume, and logs the early rotation with a note to set 80-day expiry alerts going forward.

**Adversarial:** A developer testing a new Allevio skill hardcodes the Claude API key in the skill's config file and pushes it to a shared SharePoint folder; credential manager detects the hardcoded key during a routine audit of new skill files, immediately revokes the exposed key, generates a new Claude API key, updates all runtime environments, logs an incident with ANOMALY_FLAG=True, notifies Dr. Lewis with the specific file path and developer involved, and documents a process control requiring Dr. Lewis review of all new skill files before SharePoint storage.

## Audit Log

All credential events — rotations, onboardings, revocations, compromise responses, and audit completions — are written to SharePoint → AI-Ops → Audit-Logs → Security → Credential-Events → [Year] via agops-sec-audit-logger, with action type set to system-event and the credential described by system name and entity scope (never by key value). Dr. Lewis reviews the credential event log as part of the weekly audit review and verifies quarterly that every credential in the inventory has a rotation record within the past 90 days; any gap beyond 90 days is treated as an open control finding and added to the Matt Mathison quarterly audit summary.

## Deprecation

This skill is deprecated when MBL Partners implements a dedicated secrets management platform (such as HashiCorp Vault or Azure Key Vault with automated rotation) that handles credential storage, rotation, and access logging programmatically without manual Dr. Lewis intervention; until that platform is live and has completed at least one full quarterly rotation cycle with verified audit logging, this skill remains the authoritative credential management standard for all MBL agent integrations. Deprecation requires Dr. Lewis written sign-off and confirmation that the replacement platform meets or exceeds the isolation and rotation requirements defined in this skill.
