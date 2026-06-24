---
name: ai-api-integration-manager
description: "Manage API integrations for MBL AI applications and Krista.ai orchestration. Use when the user says 'API integration', 'API management', 'API setup', 'API configuration', 'API connection', 'API key', 'API token', 'API authentication', 'API security', 'API access', 'API error', 'API failure', 'API not working', 'integration setup', 'integration configuration', 'integration management', 'connect to API', 'set up API', 'Monday.com API', 'QuickBooks API', 'GoHighLevel API', 'Bill.com API', 'Microsoft Graph API', 'Teams API', 'SharePoint API', 'Krista API', 'Anthropic API', 'Claude API', 'API key rotation', 'API key management', 'rotate API key', 'API rate limit', 'rate limiting', 'API quota', 'API timeout', 'API latency', 'API documentation', 'API scope', 'OAuth', 'OAuth token', 'token refresh', 'webhook vs API', 'API vs webhook', 'REST API', 'API integration map', 'API inventory', or 'API health check'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--system <monday|quickbooks|ghl|microsoft|anthropic|billcom|krista>] [--action <setup|rotate|audit|troubleshoot|document>]"
---

# AI API Integration Manager

Manage API integrations for MBL AI applications and Krista.ai orchestration — handling API authentication, key management, integration setup, and troubleshooting for all MBL-connected systems. Every Krista.ai workflow and Claude API application depends on reliable, secure API connections; a broken API key silently breaks the workflow it feeds.

## When to Use
- Setting up a new API integration for Krista.ai or a Claude application
- Rotating API keys on the quarterly schedule
- Troubleshooting an integration that stopped working
- Auditing MBL's full API integration inventory

## API Integration Management Framework

```
MBL API INTEGRATION MAP:

  MICROSOFT GRAPH API:
    Auth: OAuth 2.0 (Microsoft Entra ID; app registration; client credentials or delegated)
    Krista.ai uses: OAuth delegated (Krista.ai tenant app registered in MBL Entra ID)
    Scopes: Mail.Read; Calendar.Read; User.Read; Teams message; SharePoint access
    Key management: Entra ID app registration (client secret); rotate every 12 months or on compromise
    Entity isolation: MBL Entra ID tenant only; entity CEOs have separate M365 tenants (if applicable)
    
  MONDAY.COM API:
    Auth: API token (personal or service account)
    Krista.ai uses: Monday.com API token (configured in Krista.ai Monday integration)
    Scopes: boards read; items create/update; users read
    Rate limits: 60 requests/min standard; 10M requests/month (Enterprise)
    Key management: Monday.com → Admin → API → Generate token; dedicated service account preferred
    Rotation: quarterly; on team member departure who had token access
    
  QUICKBOOKS API (Intuit):
    Auth: OAuth 2.0 (Intuit; access token + refresh token; 60-day access; 100-day refresh)
    Entity isolation: CRITICAL — 4 separate OAuth connections (MBL; Allevio; HIVE; Column6)
    Krista.ai uses: QuickBooks read-only (reports; account balances for AI analysis)
    Scope: accounting (read); no write access to QuickBooks from Krista.ai
    Token management: tokens auto-refresh if used within 100-day window; manual re-auth if lapsed
    
  GOHIGHLEVEL API:
    Auth: API key (sub-account level; separate key per sub-account: MBL; North Vista)
    Krista.ai uses: GHL contact read; tag write; note write (no payment; no deletion)
    Rate limits: 100 requests/sec per sub-account
    Key management: GHL → Settings → API Keys; per sub-account; no cross-sub-account key
    
  BILL.COM API:
    Auth: API key + Organization ID + Developer Key
    MBL use: read-only (bill status; payment notifications); NO payment execution via API
    Krista.ai: Bill.com notifications only (payment due; anomaly alert)
    Security note: Bill.com API has payment execution capability — MBL intentionally does NOT grant write scope
    
  ANTHROPIC API (Claude):
    Auth: API key (project-level; entity-specific)
    Key management: Anthropic Console → API Keys → create project-specific keys; per-entity keys
    Rate limits: tier-dependent; monitor via Anthropic Console
    Spend alerts: $500/month → Dr. Lewis reviews; $1,000/month → budget review (ai-claude-api-ops)
    Rotation: quarterly; on team member departure who had key access
    
API KEY SECURITY STANDARDS:
  Storage: never in code repositories; never in email; never in CLAUDE.md; environment variables or secrets manager
  Access: Dr. Lewis manages all MBL API keys; entity CEOs do not have direct API key access
  Rotation schedule: API keys → quarterly; OAuth apps → annually (client secrets); on compromise → immediate
  Audit: quarterly API key inventory — verify all keys are in rotation schedule; revoke unused keys
```

## Output Format

```markdown
# API Integration Status — [Date]
**Prepared by:** Dr. Lewis | **Entity:** [MBL/All]

---

## Integration Inventory

| System | Auth Type | Entity | Last Rotated | Next Rotation | Status |
|--------|-----------|--------|-------------|--------------|--------|
| Microsoft Graph | OAuth 2.0 | MBL | [Date] | [Date] | 🟢 Active |
| Monday.com | API Token | MBL | [Date] | [Date] | 🟢 Active |
| QuickBooks | OAuth 2.0 | MBL | [Date] | [Date] | 🟢 Active |
| QuickBooks | OAuth 2.0 | Allevio | [Date] | [Date] | 🟢 Active |
| QuickBooks | OAuth 2.0 | HIVE | [Date] | [Date] | 🟢 Active |
| QuickBooks | OAuth 2.0 | Column6 | [Date] | [Date] | 🟢 Active |
| GHL | API Key | MBL | [Date] | [Date] | 🟢 Active |
| GHL | API Key | North Vista | [Date] | [Date] | 🟢 Active |
| Bill.com | API Key | MBL | [Date] | [Date] | 🟡 Rotation due |
| Anthropic | API Key | MBL | [Date] | [Date] | 🟢 Active |

---

## Issues Requiring Action
- [Bill.com API key: rotation overdue by 45 days; schedule before end of week]
```

## Output Contract
- Entity isolation for QuickBooks OAuth connections is maintained as an operational absolute — the 4 QuickBooks OAuth connections (MBL; Allevio; HIVE; Column6) must remain separate, independent connections; there is no technical requirement to use one connection that has access to multiple company files; MBL deliberately maintains 4 separate connections to enforce entity-level data isolation; a single QuickBooks API connection with multi-entity access would allow AI applications to query across entity financial data, which violates the portfolio isolation principle; when any QuickBooks OAuth token lapses (100-day refresh window), Dr. Lewis re-authorizes that entity's connection independently; the re-auth is logged in the API integration record
- API keys are never in code, email, or documentation — this is not a best practice, it is a security requirement; when a developer (or Dr. Lewis in building an integration) needs to use an API key in code, the key goes in an environment variable or a secrets manager; "I'll just put it in the CLAUDE.md temporarily" is not acceptable; the exposure of an API key in any location that is logged, indexed, or transmitted (email; Slack; Git commit; Claude session) is treated as a compromise event — that key is rotated immediately; this applies even if the document is "internal only" — the security guarantee must be architectural, not access-control dependent
- HITL required: new API integration setup → Dr. Lewis configures; entity CEO informed if entity-specific; API key compromise → rotate immediately + audit all access since last rotation + Matt Mathison informed; quarterly rotation → Dr. Lewis executes; QuickBooks re-auth → Dr. Lewis executes with entity isolation verified; Bill.com write scope → never granted without Matt Mathison explicit authorization; API spend alerts → Dr. Lewis reviews within 24 hours

## System Dependencies
- **Reads from:** Microsoft Entra ID app registration (OAuth credentials; token status); Monday.com Admin API section; Intuit QuickBooks OAuth token status; GHL Settings API Keys; Bill.com API credentials; Anthropic Console API keys; API key rotation log (SharePoint → MBL → IT → API Management → Rotation Log)
- **Writes to:** API key rotation log (SharePoint → MBL → IT → API Management → Rotation Log); Krista.ai integration configuration (updated credentials); Claude API application configs (updated API keys); environment variable configs (updated keys); quarterly API audit report; entity CEO notifications (when their entity API connection is updated)
- **HITL Required:** New integration → Dr. Lewis; key compromise → rotate immediately + Matt Mathison; quarterly rotation → Dr. Lewis executes; QuickBooks re-auth → Dr. Lewis per-entity; Bill.com write scope → never without Matt Mathison; API spend >$500/month → Dr. Lewis reviews

## Test Cases
1. **Golden path:** Quarterly API key rotation — Q2 2026. Dr. Lewis rotation checklist: (1) Monday.com — generate new service account token in Monday.com Admin; update in Krista.ai Monday integration; test Krista workflow → Monday.com write (create a test item; confirm success; delete test item); log rotation June 30. (2) GHL — generate new keys for MBL sub-account + North Vista sub-account; update in Krista.ai GHL integration; test → tag write on a test contact; confirm; log rotation. (3) Anthropic — generate new project keys per entity; update in Claude API applications; test → successful API call from each application; log rotation. All rotations complete June 30. Next rotation: September 30.
2. **Edge case:** Krista.ai workflows for HIVE stop working — data is showing as "connection error" on Monday.com push. Investigation: (1) Check Krista.ai integration status → QuickBooks HIVE connection shows "token expired" (Intuit 100-day refresh window lapsed; HIVE QuickBooks hadn't been queried in 110 days). (2) QuickBooks MBL, Allevio, and Column6 connections still active (queried recently). (3) Fix: Dr. Lewis re-authorizes HIVE QuickBooks OAuth (3 minutes in Intuit developer portal). (4) HIVE workflows resume. Log: HIVE QuickBooks OAuth re-authorized June 22; set calendar reminder for 90-day refresh to prevent future lapse.
3. **Adversarial:** External consultant working with Allevio asks for the QuickBooks API credentials so they can "build a direct integration" → Dr. Lewis: "I can't share MBL's QuickBooks API credentials externally. API credentials to MBL's financial system of record are not shareable — sharing them would grant the consultant direct read access to Allevio's financials without any audit trail or access controls on our side. If the consultant needs QuickBooks integration, here's the correct path: (1) They build their integration and register their own Intuit developer application; (2) Allevio authorizes the consultant's app through the standard QuickBooks OAuth flow — Allevio's entity CEO authorizes; (3) The integration uses the consultant's own API credentials, which gives them access limited to what Allevio authorized; (4) Allevio can revoke the consultant's OAuth access at any time. I'll facilitate the correct process with the Allevio entity CEO."

## Audit Log
API key rotation log (all keys; all rotations; dates; SharePoint). Integration inventory (current state; authentication method; entity; status). Key compromise events (immediate rotation records; access audit; Matt Mathison notification). QuickBooks OAuth re-authorization records (per entity). API spend monitoring records. New integration setup records. Quarterly API audit reports.

## Deprecation
API integration map reviewed when MBL adds or removes systems. QuickBooks OAuth management reviewed if Intuit changes token lifetimes. Key rotation schedule reviewed when security standards change. Bill.com write scope policy reviewed when financial controls change. Entity isolation reviewed if portfolio structure changes.
