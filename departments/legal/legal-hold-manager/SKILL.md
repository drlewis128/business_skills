---
name: legal-hold-manager
description: "Manage legal holds on documents and data. Use when the user says 'legal hold', 'litigation hold', 'preserve documents', 'document preservation', 'discovery hold', 'eDiscovery', 'preserve data for litigation', 'legal hold notice', or 'stop deleting records'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--matter <matter-name>] [--action <place|release|status>]"
---

# Legal Hold Manager

Manage legal holds on documents and data. A legal hold is a formal directive to preserve documents, data, and records that may be relevant to pending or reasonably anticipated litigation, regulatory investigation, or government inquiry. Failing to preserve relevant information when litigation is reasonably anticipated is called spoliation — and it can result in sanctions, adverse jury instructions, or case-dispositive penalties. This skill manages the legal hold lifecycle.

## Critical Constraint
**Legal holds must be placed immediately when litigation or investigation is reasonably anticipated — before it's filed.** "Reasonably anticipated" includes: receipt of a demand letter, formal government inquiry, EEOC charge, regulatory investigation, or any communication suggesting legal action. Legal counsel must be involved immediately.

## When to Use
- Litigation is filed or threatened against MBL or a portfolio company
- Government or regulatory investigation begins
- Employment matter (termination dispute, discrimination charge, wage/hour claim)
- M&A dispute (post-closing disagreement, earn-out dispute)
- Contract dispute reaching formal dispute resolution
- Insurance claim involving potential litigation

## Scope of a Legal Hold

| Data Category | Where It Lives | Preservation Method |
|-------------|--------------|-------------------|
| Email | M365 Exchange | M365 Compliance Center — eDiscovery hold |
| Teams messages | Microsoft Teams | M365 Compliance Center — Teams hold |
| Documents | SharePoint / OneDrive | M365 Compliance Center — site hold |
| Local files | Endpoint devices | Forensic image or MDM backup lock |
| Financial records | QuickBooks, Bill.com | Export + lock (no deletion) |
| HR records | HRIS system | Manual hold notification to HR |
| Cloud storage | Azure Blob | Storage account lock |
| Physical documents | Paper files, office | Physical preservation instruction |

## Output Format

```markdown
# Legal Hold Notice — HOLD-<NNN>
**Matter:** <matter name / case reference>
**Entity:** <name>
**Issued by:** Dr. John Lewis (on instruction from Legal counsel)
**Issue date:** <date>
**Status:** Active / Released

CONFIDENTIAL — ATTORNEY-CLIENT PRIVILEGED

---

## Matter Summary

**Nature of matter:** Litigation / Regulatory / Employment / Contract dispute
**Adverse party:** <name>
**Counsel handling:** <outside counsel name and firm>
**Date litigation anticipated / filed:** <date>
**Court / Agency:** <if filed>

---

## Hold Scope

### Custodians (People with Relevant Data)

| Custodian | Role | Acknowledged? | Date |
|---------|------|------------|------|
| <Name> | IT Manager | ✅ | <date> |
| <Name> | Finance Director | ✅ | <date> |
| <Name> | [Role] | ❌ Pending | |

### Data Categories Subject to Hold

| Data Category | System | Hold Method | Confirmed? |
|-------------|--------|-----------|---------|
| Email — custodian mailboxes | M365 Exchange | eDiscovery hold placed in Purview | ✅ |
| Teams messages | M365 Teams | Content search hold in Purview | ✅ |
| Documents — SharePoint sites | SharePoint | Site hold placed in Purview | ✅ |
| Financial records (QuickBooks) | QuickBooks | Export archived; no deletion | 🟡 In progress |
| HR records | HRIS | HR notified; folder locked | ✅ |

**Hold period:** <date> to Release / Indefinite — pending counsel instruction

---

## Legal Hold Notice to Custodians

*[To be sent to all custodians upon hold placement]*

Subject: LEGAL HOLD NOTICE — Action Required — [Matter Name]

You have been identified as a custodian of information potentially relevant to [matter description]. You are hereby directed to immediately preserve all documents, data, and communications — regardless of format or location — relating to [describe scope].

**Effective immediately:**
- Do NOT delete, destroy, modify, or dispose of any relevant documents, emails, files, or records
- This hold supersedes any routine document retention/destruction schedule
- Preserve: emails, files, spreadsheets, voicemails, texts, instant messages, and physical documents
- Contact Dr. Lewis or [outside counsel] with any questions

Failure to comply may expose the company to serious legal consequences.

Please confirm receipt and compliance: [confirm link / reply by <date>]

---

## Hold Release (When Litigation Concludes)

- [ ] Legal counsel confirms matter is resolved
- [ ] Dr. Lewis issues hold release notice to all custodians
- [ ] M365 eDiscovery holds released
- [ ] Normal document retention resumes (not retroactive — preserved docs remain)
- [ ] Release documented and filed
```

## Output Contract
- Legal counsel must authorize the hold and scope before this skill issues any instructions — Dr. Lewis does not place holds unilaterally
- All custodians always receive written notice — verbal holds don't count
- Hold acknowledgment always tracked — unacknowledged holds create spoliation risk
- Routine deletion schedules always suspended for in-scope data during the hold period
- HITL required: Legal counsel directs hold scope and placement; Dr. Lewis issues custodian notices; IT Manager implements technical holds in M365; All custodians acknowledge in writing

## System Dependencies
- **Reads from:** Legal counsel direction (required), M365 Compliance Center / Purview
- **Writes to:** M365 eDiscovery holds (IT Manager executes), custodian notice emails
- **HITL Required:** Legal counsel authorizes all holds; Dr. Lewis issues notices; IT Manager implements; custodian acknowledgment required

## Test Cases
1. **Golden path:** Former employee files EEOC charge → Legal counsel engaged immediately, hold placed on HR records and communications for the named employee, IT Manager places M365 hold on custodians' email and Teams, all custodians notified in writing, acknowledgments tracked, hold maintained through EEOC resolution
2. **Edge case:** Routine quarterly document purge is scheduled to run during an active hold → IT Manager stops the purge immediately; reviews what would have been deleted; anything in-scope is restored from backup if deletion occurred before hold placed
3. **Adversarial:** Employee wants to delete some old emails "to clear up storage" during an active hold → hold supersedes all normal retention and deletion actions; emails must be preserved; explains legal consequences of spoliation

## Audit Log
All legal holds documented with matter reference, scope, custodians, placement date, and release date. Custodian acknowledgment records retained permanently.

## Deprecation
Retire when entity deploys an eDiscovery platform (Relativity, Reveal, Microsoft Purview eDiscovery Premium) with automated legal hold management.
