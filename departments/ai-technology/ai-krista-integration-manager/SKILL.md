---
name: ai-krista-integration-manager
description: "Manage Krista.ai integrations with MBL's system stack. Use when the user says 'Krista integration', 'Krista connection', 'Krista and Monday.com', 'Krista and QuickBooks', 'Krista and Microsoft', 'Krista and Teams', 'Krista and Outlook', 'Krista and SharePoint', 'Krista and GoHighLevel', 'Krista and Bill.com', 'Krista API', 'connect Krista', 'Krista is not connecting', 'Krista integration broken', 'Krista integration error', 'Krista authentication', 'Krista OAuth', 'Krista credentials', 'Krista system access', 'Krista permissions', 'Krista data flow', 'data from Krista', 'Krista is not sending', 'Krista is not receiving', 'Krista is not pushing', 'Krista not working', 'Krista integration setup', 'add a new integration to Krista', 'remove Krista integration', 'Krista integration audit', 'Krista integration health', 'Krista integration status', or 'Krista connected systems'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--system <monday|quickbooks|ms365|ghl|billcom>] [--action <connect|audit|repair|remove|status>]"
---

# AI Krista Integration Manager

Manage Krista.ai integrations with MBL's full system stack — setting up, monitoring, repairing, and auditing the connections between Krista and Microsoft 365, Monday.com, QuickBooks, GoHighLevel, and Bill.com. Integration health is the backbone of MBL's AI orchestration; a broken Krista connection silently stops workflows without obvious error signals.

## When to Use
- Setting up a new Krista integration with a MBL system
- Diagnosing a Krista workflow that is not producing outputs
- Quarterly Krista integration health audit
- Rotating credentials or re-authenticating Krista after a system change

## Krista Integration Management Framework

```
MBL KRISTA INTEGRATION MAP:

  MICROSOFT 365:
    Connected: Outlook (email send/receive); Teams (messaging; meeting detection; recording)
    SharePoint: document read/write (meeting summaries; reports; workflow specs)
    Authentication: OAuth 2.0 via Microsoft Entra ID (Azure AD)
    Permissions scoped: Mail.ReadWrite; Calendars.Read; Files.ReadWrite (SharePoint)
    Critical: Teams recording detection triggers Meeting Intelligence workflow
    Monitor: OAuth token expiry (90-day rotation); permission scope drift
    
  MONDAY.COM:
    Connected: MBL sprint board (card creation; status update; owner assignment)
    Authentication: Monday.com API token (stored in Krista credential vault)
    Permissions: Board write access; column read/write
    Critical: Action item push from meeting summaries; HITL approval gate
    Monitor: API token rotation; board structure changes (column IDs change = broken push)
    
  QUICKBOOKS:
    Connected: Read access to P&L; balance sheet; AR/AP aging; entity financial data
    Authentication: Intuit OAuth 2.0 (separate per entity — MBL; Allevio; HIVE; Column6)
    Permissions: Reports read; accounting read (no write — HITL required for any QB write)
    Critical: Financial data pull for portfolio dashboard; NOT a write integration
    Monitor: OAuth token rotation; entity-specific connection status (4 separate connections)
    
  GOHIGHLEVEL:
    Connected: MBL CRM; North Vista CRM (contacts; pipeline; email automation)
    Authentication: GHL API key per sub-account (MBL + North Vista = 2 separate keys)
    Permissions: Contacts read/write; pipeline read/write; email send
    Critical: CRM data pull for pre-meeting prep; deal pipeline visibility
    Monitor: API key rotation; GHL sub-account isolation (MBL ≠ North Vista)
    
  BILL.COM:
    Connected: AP notification triggers (invoice approved; payment scheduled; anomaly alert)
    Authentication: Bill.com API key (Dr. Lewis manages; not shared with entity CEOs)
    Permissions: Read access to AP; invoice status; DOES NOT execute payments
    Critical: Anomaly alerts to Dr. Lewis; NOT a payment execution integration
    Monitor: API key rotation; alert threshold calibration
    
INTEGRATION HEALTH INDICATORS:
  Green: workflow executing; outputs appearing in destination systems; no errors in Krista logs
  Yellow: intermittent errors; outputs appearing but with delays; authentication near expiry
  Red: integration broken; workflow not executing; authentication expired; destination system changed
  
INTEGRATION REPAIR PROTOCOL:
  Step 1: Check Krista integration logs → identify last successful execution + first error
  Step 2: Verify authentication → test API connection → re-authenticate if expired
  Step 3: Verify destination system structure → confirm IDs haven't changed (Monday.com board IDs; QB entity)
  Step 4: Run test workflow → verify end-to-end → document repair
  Step 5: Update Dr. Lewis integration health log → note root cause + prevention
  
ENTITY ISOLATION REQUIREMENTS:
  QuickBooks: 4 separate OAuth connections (one per entity) — Dr. Lewis verifies entity-level isolation quarterly
  GoHighLevel: 2 separate API keys (MBL; North Vista) — no data bleed between sub-accounts
  Allevio integrations: HIPAA-compliant data flows only; no PHI in any Krista pipeline
  Monday.com: entity-specific boards → Krista pushes to correct entity board only
```

## Output Format

```markdown
# Krista Integration Status — [Date]
**Checked by:** Dr. Lewis | **Frequency:** Quarterly (or on-demand)

---

| System | Status | Last Successful Run | Auth Expiry | Notes |
|--------|--------|---------------------|-------------|-------|
| Microsoft 365 | 🟢 Green | [Date] | [Date] | |
| Monday.com | 🟢 Green | [Date] | [Date] | |
| QuickBooks (MBL) | 🟢 Green | [Date] | [Date] | |
| QuickBooks (Allevio) | 🟡 Yellow | [Date] | 14 days | Token renewal needed |
| GoHighLevel (MBL) | 🟢 Green | [Date] | [Date] | |
| Bill.com | 🟢 Green | [Date] | [Date] | |

---

## Issues Requiring Action
- [QuickBooks Allevio: renew OAuth token before [Date]]

## Integration Changes Since Last Audit
- [Monday.com: board column "Q3 Priorities" added — Krista push template updated]
```

## Output Contract
- Integration checks are proactive, not reactive — Dr. Lewis reviews Krista integration status monthly, not only when a workflow breaks; a broken integration that goes undetected for 30 days means 4 weeks of meeting summaries that were never pushed to Monday.com, or financial data that was stale in the portfolio dashboard; the monthly integration check takes 15 minutes and catches 95% of integration failures before they become operational gaps; Dr. Lewis maintains a calendar reminder for the first Monday of each month: "Krista integration health check — 15 minutes"
- Entity isolation is verified at every authentication renewal — when Dr. Lewis renews QuickBooks OAuth tokens or GHL API keys, he verifies entity isolation: each entity has its own connection, and data from one entity does not appear in another entity's workflows; entity isolation is not a one-time setup — it is a recurring verification because system changes (QuickBooks company file updates; GHL sub-account restructuring) can inadvertently merge data flows; the verification takes 5 minutes per entity and prevents data integrity problems
- HITL required: new integration setup → Dr. Lewis builds; Krista.ai team configures; Dr. Lewis tests end-to-end before activating; integration with financial write access → HITL gate required in workflow (not just in the integration setup); Allevio integrations → HIPAA check before data flow is activated; integration removal → Dr. Lewis documents; entity CEO notified if entity-specific; credential sharing → never shared; Dr. Lewis manages all Krista credential vault entries

## System Dependencies
- **Reads from:** Krista.ai integration dashboard (connection status; error logs; execution logs); Microsoft Entra admin (OAuth tokens; app permissions); Monday.com API settings; QuickBooks Intuit developer portal (OAuth status per entity); GoHighLevel API settings; Bill.com API settings
- **Writes to:** Krista integration health log (SharePoint → MBL → AI Strategy → Krista → Integration Health); Krista credential vault (Dr. Lewis manages); integration repair records; quarterly integration audit reports
- **HITL Required:** New integration activation → Dr. Lewis tests; financial write integration → HITL gate in workflow; Allevio → HIPAA check; credential renewal → Dr. Lewis only (not delegated); integration removal → Dr. Lewis + entity CEO notified; Krista.ai team configures based on Dr. Lewis spec

## Test Cases
1. **Golden path:** Quarterly integration health check (June 2026). Dr. Lewis reviews Krista dashboard: MS365 ✅ (last run: today; OAuth expires in 87 days — on schedule). Monday.com ✅ (last run: June 22; API token permanent). QuickBooks MBL ✅; QuickBooks Allevio 🟡 (OAuth expires June 30 — 7 days; renewal required). GoHighLevel MBL ✅; GHL North Vista ✅. Bill.com ✅. Action: renew QuickBooks Allevio OAuth token (30-minute process; Intuit developer portal). Integration log updated. No workflows affected. Next check: July 2026.
2. **Edge case:** Monday.com integration stops pushing action items from meeting summaries after the MBL board was restructured (new column added; old column renamed) → Dr. Lewis: "The Monday.com push is failing because the column ID changed when the board was restructured. Krista is referencing the old column ID — 'Q2 Priorities' (ID: 12345) — which no longer exists. The new column is 'Active Sprint' (ID: 67890). I'll update the Krista Monday.com push template to reference the new column ID. This will take 20 minutes. In the meantime, I'll manually push the last 3 meeting summary action items that didn't go through. Going forward: any Monday.com board restructuring should be flagged to Dr. Lewis first so we can update the Krista template before the change is live."
3. **Adversarial:** Krista.ai team (vendor) requests admin-level Microsoft 365 permissions for Krista to support a new feature ("so Krista can manage your Teams channels automatically") → Dr. Lewis: "I'm not going to approve admin-level M365 permissions for Krista. The current Krista integration works on scoped permissions: Mail.ReadWrite; Calendars.Read; Files.ReadWrite in specific SharePoint folders. Admin permissions would give Krista access to all MBL data across all users — that's a blast radius I can't accept, especially for Allevio data that flows through M365. What feature specifically requires admin permissions? I'll evaluate whether the feature can be implemented with scoped permissions, or whether we pass on this feature. If it requires admin access, the answer is no."

## Audit Log
Integration health check records (monthly; SharePoint). Authentication renewal records (date; system; token type). Integration repair records (root cause; resolution; prevention). Entity isolation verification records. New integration activation records. Integration removal records. HIPAA compliance check records (Allevio integrations). Permission scope change records.

## Deprecation
Integration map reviewed when new systems added to MBL stack. Authentication protocols reviewed when vendors update security requirements. Entity isolation procedures reviewed when portfolio changes (new entity; exit). Monthly check cadence reviewed if Krista integration fleet grows significantly. Allevio integration HIPAA review renewed annually.
