---
name: sec-api-security-reviewer
description: "Review API security for MBL portfolio company integrations. Use when the user says 'API security', 'API review', 'API authentication', 'API authorization', 'API key', 'API token', 'API credential', 'secure API', 'API hardening', 'REST API security', 'RESTful API', 'webhook security', 'webhook authentication', 'webhook validation', 'HMAC', 'API rate limiting', 'API throttling', 'API input validation', 'API error handling', 'OWASP API Security Top 10', 'API Security Top 10', 'API access control', 'broken object level authorization', 'BOLA', 'BFLA', 'mass assignment', 'API excessive data exposure', 'API inventory', 'shadow API', 'undocumented API', 'API versioning security', 'API gateway', 'Krista API', 'GHL API', 'GoHighLevel API', 'QuickBooks API', 'API integration security', 'third party API', 'OAuth security', 'OpenID Connect security', 'JWT security', 'JSON web token', 'bearer token', 'API logging', 'API audit', or 'API monitoring'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--scope <krista|ghl|qbo|webhook|custom>] [--action <assess|harden|document|monitor>]"
---

# Sec API Security Reviewer

Review API security for MBL portfolio company integrations — assessing authentication, authorization, rate limiting, and input validation for the APIs that connect Krista.ai, GoHighLevel, QuickBooks, and other systems in the MBL ecosystem. APIs are the nervous system of MBL's orchestration architecture; a compromised API endpoint can bypass all application-layer security and access raw business data directly.

## When to Use
- Reviewing security of a new API integration (Krista.ai; GHL; custom webhook receiver)
- Assessing existing API configurations for security gaps
- Responding to an unauthorized API access event
- Establishing API security standards for a development team

## API Security Framework

```
OWASP API SECURITY TOP 10 (2023) — MBL CONTEXT:

  API1 — Broken Object Level Authorization (BOLA):
    Risk: API endpoint returns data for any object ID in the URL without checking ownership
    MBL context: GHL API — does an API call for contact ID X return any contact,
                 or only contacts belonging to the authenticated account?
    Check: test with a valid API key for Account A; try to pull a contact ID from Account B
    Fix: server-side ownership check on every object-level endpoint
    
  API2 — Broken Authentication:
    Risk: API keys passed in URL (logged in server logs); weak API keys; no expiry
    MBL context: API keys in HTTP headers (Authorization: Bearer <key>) not in URL
    Check: are API keys in URL parameters? (grep for "?api_key="; "?token=")
    Fix: API keys in Authorization header only; never in URL
    
  API3 — Broken Object Property Level Authorization (BOPLA):
    Risk: API returns more fields than the caller needs; allows mass assignment (update fields you shouldn't)
    MBL context: Krista.ai webhooks — do responses expose only needed fields?
    Fix: API responses return only explicitly listed fields; input validated against allowlist
    
  API4 — Unrestricted Resource Consumption:
    Risk: no rate limiting; attacker floods API with requests; DoS or large data extraction
    MBL context: GHL and Covercy APIs have vendor-side rate limits; verify webhook receivers
                 have rate limiting for inbound requests
    Fix: implement rate limiting on custom webhook endpoints (per IP; per key)
    
  API5 — Broken Function Level Authorization (BFLA):
    Risk: regular user can call admin-level API endpoints by changing the URL
    Fix: admin endpoints require elevated API key or role check
    
  API8 — Security Misconfiguration:
    Risk: CORS misconfigured; error messages reveal stack traces; debug endpoints exposed
    Check: CORS — does the API allow * origin? (should allow only known origins)
    Fix: restrict CORS; suppress error details; disable debug routes in production
    
  API9 — Improper Inventory Management:
    Risk: old API versions left running; undocumented "shadow" APIs
    MBL context: when upgrading Krista.ai integrations, decommission old webhook receivers
    Fix: maintain API inventory; version endpoints; retire old versions on schedule

MBL API SECURITY STANDARDS:

  Authentication:
    API key: stored in BitWarden (sec-secrets-manager); passed in Authorization header; never in URL
    OAuth 2.0: authorization code flow for user-context APIs; client credentials for service-to-service
    JWT: validate signature on receipt; check expiry (exp claim); verify issuer (iss claim)
    Webhook signatures: HMAC-SHA256 validation on all inbound webhooks (prevent spoofed webhooks)
    
  Webhook Security (inbound webhooks to MBL systems from GHL; Monday.com; etc.):
    Signature validation: verify the HMAC-SHA256 signature header before processing
      GHL sends X-GHL-Signature; Monday.com sends X-Monday-Signature; validate on receipt
    IP allowlist: optionally restrict webhook receipt to vendor IP ranges
    HTTPS only: all webhook endpoints must be HTTPS
    Rate limiting: max N requests per minute per source IP
    
  API Logging (what to log for all MBL API endpoints):
    Timestamp; caller identity (API key or OAuth token); endpoint called; status code
    Do NOT log: API key values; authentication tokens; PHI or sensitive data in request body
    Log anomalies: 4xx errors (unauthorized access attempts); unusual call volumes; after-hours calls
    
  API Inventory (maintain per entity):
    Column A: API name
    Column B: direction (outbound to vendor; inbound webhook; internal)
    Column C: authentication method
    Column D: data sensitivity (does it touch PHI? financial data? LP data?)
    Column E: last security review date
    Column F: API key rotation date
    
  HIPAA and APIs (Allevio):
    Any API that transmits ePHI to an external system requires a BAA with that system
    API responses containing ePHI: use HTTPS only; do not log response body containing ePHI
    AdvancedMD API: if used, verify encryption in transit and BAA with AdvancedMD
```

## Output Format

```markdown
# API Security Assessment — [Entity] | [Date]
**APIs reviewed:** [N] | **HIPAA-sensitive APIs (Allevio):** [N with BAA]

---

## API Inventory
| API | Direction | Auth method | Data sensitivity | Last reviewed | Status |
|-----|----------|-------------|-----------------|--------------|--------|
| Krista.ai → GHL | Outbound | API key (header) | Low | [Date] | 🟢 |
| GHL → Krista.ai webhook | Inbound | HMAC-SHA256 sig | Low | [Date] | 🟢 |
| QuickBooks OAuth | Outbound | OAuth 2.0 | Financial | [Date] | 🟢 |

---

## Open Issues
| API | Issue | Severity | Action | Due |
|-----|-------|---------|--------|-----|
| GHL webhook receiver | No signature validation | P1 | Implement HMAC validation | 30 days |
```

## Output Contract
- Webhook signature validation is mandatory for all inbound webhooks — without HMAC signature validation, any attacker who knows the webhook URL can send spoofed webhook payloads to MBL systems (trigger workflows with false data; inject malicious commands; test system behavior); GHL, Monday.com, and most modern platforms include HMAC-SHA256 signatures with every webhook; the receiving system (Krista.ai; OpenFang; custom middleware) must validate the signature before processing the payload; Dr. Lewis implements and verifies signature validation for every inbound webhook in the MBL ecosystem; a webhook endpoint without signature validation is a direct remote code execution vector if the webhook receiver executes any logic based on payload content
- API keys must never appear in URLs or logs — URL parameters are logged by every reverse proxy, load balancer, CDN, web server, and application logging framework; if an API key is passed as a URL parameter (?api_key=sk_live_xxxx), that key appears in: web server access logs; CloudFront/Cloudflare logs; browser history; Referrer headers sent to third-party resources on the same page; all of these are significantly more accessible than application logs; the correct method is the HTTP Authorization header (Authorization: Bearer sk_live_xxxx) which is not logged by default; Dr. Lewis reviews all MBL API integrations for URL-parameter API keys and migrates them to header-based authentication
- HITL required: new API integration → Dr. Lewis security review before activation; BAA required if Allevio PHI touches the API; entity CEO informed of any integration handling sensitive data; webhook endpoint deployment → Dr. Lewis verifies HMAC signature validation implemented; P0 finding (API key in URL; no auth on endpoint) → Dr. Lewis remediates before endpoint is active; BOLA finding (cross-account data access) → entity CEO notified immediately; endpoint suspended if client data at risk; Allevio ePHI via API → Dr. Lewis verifies BAA + encryption + logging policy; Matt Mathison informed of any ePHI API additions

## System Dependencies
- **Reads from:** API inventory (SharePoint → [Entity] → Security → API-Security → API-Inventory.xlsx); Krista.ai API configuration (integration settings; webhook URLs; signature validation status); GHL API configuration (API key settings; webhook configuration); QuickBooks Online API (OAuth 2.0 token status); Monday.com API (API key; webhook configuration); sec-secrets-manager (API key vault status; rotation dates); application logs (authentication events; 4xx error rates; call volume); sec-baa-security-validator (Allevio — BAA status for API-connected vendors)
- **Writes to:** API security assessment report (SharePoint → [Entity] → Security → API-Security → [Date]); API inventory (updated per review — SharePoint); HMAC validation implementation task (Monday.com — developer + Dr. Lewis; due date); API key migration task (URL → header — Monday.com); Allevio ePHI API BAA record (sec-baa-security-validator); entity CEO API security briefing (quarterly + any critical finding); Matt Mathison notification (Allevio ePHI API addition)
- **HITL Required:** New API integration → Dr. Lewis security review; Allevio ePHI API → BAA required; entity CEO informed; webhook endpoint deployment → Dr. Lewis verifies HMAC; P0 finding → Dr. Lewis remediates before go-live; BOLA finding → entity CEO immediately; endpoint suspended if client data at risk; Allevio ePHI API → Dr. Lewis verifies BAA + encryption + logging; Matt Mathison informed

## Test Cases
1. **Golden path:** Quarterly API security review. Dr. Lewis opens API inventory (SharePoint). Reviews each integration: Krista.ai → GHL (outbound API call; API key in Authorization header ✅; HTTPS ✅; rate limiting: GHL vendor-side 120 req/min ✅). GHL → Krista.ai webhook (inbound; HMAC-SHA256 signature validation: implemented ✅; HTTPS ✅; IP allowlist: GHL documented IP ranges ✅). QuickBooks OAuth (outbound; OAuth 2.0 code flow; token in memory only ✅; no PHI ✅). Monday.com webhook (inbound; HMAC validation: verified in code ✅). API key rotation status: GHL key rotated 45 days ago (quarterly due in 45 days ✅). Findings: all APIs in good standing. No open issues. Report filed.
2. **Edge case:** A Monday.com automation fires a webhook to a Krista.ai endpoint, but the endpoint has no authentication — any HTTP POST succeeds: Dr. Lewis: "P1 — unauthenticated webhook endpoint. Any party who discovers the endpoint URL can trigger workflows with arbitrary payloads. Immediate actions: (1) Implement HMAC-SHA256 signature validation: Monday.com includes X-Monday-Signature with every webhook. The Krista.ai receiver must extract the header, compute the HMAC using the shared secret, and reject requests where the signature doesn't match. (2) While implementing: temporarily restrict access to the endpoint by IP (Krista.ai runs from known IP ranges — allowlist only those ranges). (3) Entity CEO informed: P1 remediation in progress; no data exposure confirmed (endpoint executed logic only when triggered by the actual Monday.com source). (4) Remediation deadline: 7 days for HMAC validation + signature validation test."
3. **Adversarial:** A vendor proposes an API integration that would sync employee records from M365 to their SaaS for "enhanced workflow automation" — no detailed data flow specification provided: Dr. Lewis: "Before approving any API integration, I need a complete data flow specification. Specifically: (1) Which employee fields flow to the vendor? (Name only? Email? Department? Role? Start date? Compensation?) (2) How does the vendor authenticate to our M365 or GHL — what credential type; how is it stored on their side? (3) Does the vendor's system store MBL employee data? Where? Encrypted? How long retained? (4) Does Allevio employee data include any PHI-adjacent information (health plan enrollment?)? If yes: BAA required. (5) I'll review the vendor's SOC 2 Type II report before approval. (6) Entity CEO approves the integration after Dr. Lewis security review — not before. The default answer to 'can we integrate?' is 'not until we understand the data flow.'"

## Audit Log
API inventory records (all entity APIs; direction; auth method; data sensitivity; review date; Dr. Lewis; SharePoint — reviewed quarterly). API security assessment records (entity; date; APIs reviewed; findings; Dr. Lewis; entity CEO briefed; SharePoint). HMAC webhook validation records (endpoint; validation implemented; test confirmed; developer; Dr. Lewis verification; date). API key URL-to-header migration records (API; migration date; Dr. Lewis confirmed header auth; URL parameter confirmed removed). BOLA/BFLA incident records (endpoint; data exposed; entity CEO notification; suspension; remediation; date). Allevio ePHI API records (vendor; data flow; BAA status; encryption; logging policy; Dr. Lewis; Matt Mathison notification; date).

## Deprecation
OWASP API Security Top 10 reviewed when OWASP releases updates. API inventory reviewed quarterly. Webhook signature validation standards reviewed when vendors update their signing methods. OAuth token handling standards reviewed when authorization server configurations change. API logging policy reviewed when logging platform changes.
