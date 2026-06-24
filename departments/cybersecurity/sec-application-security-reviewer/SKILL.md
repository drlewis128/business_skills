---
name: sec-application-security-reviewer
description: "Review application security for MBL portfolio company web apps and APIs. Use when the user says 'application security', 'app security', 'web application security', 'web app security', 'application security review', 'secure code review', 'code review security', 'security code review', 'OWASP', 'OWASP Top 10', 'SQL injection', 'cross-site scripting', 'XSS', 'CSRF', 'cross-site request forgery', 'injection attack', 'broken authentication', 'broken access control', 'security misconfiguration', 'vulnerable component', 'insecure deserialization', 'sensitive data exposure', 'security logging', 'input validation', 'output encoding', 'authentication security', 'authorization security', 'session management', 'cookie security', 'HTTP headers', 'security headers', 'CORS', 'CSP', 'content security policy', 'HTTPS only', 'mixed content', 'file upload security', 'web app vulnerability', 'web app pentest', 'developer security', 'secure development', 'secure coding', 'DevSecOps', 'application hardening', 'web app hardening', 'API security review', 'RESTful API security', 'API authentication', 'API authorization', 'API key security', or 'OAuth security'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--scope <web-app|api|code-review|headers>] [--action <assess|harden|document|remediate>]"
---

# Sec Application Security Reviewer

Review application security for MBL portfolio company web apps and APIs — assessing OWASP Top 10 controls, hardening HTTP security headers, reviewing authentication and authorization implementation, and establishing secure development practices. MBL portfolio companies interact with the internet via web applications (employer portal; client portals; APIs); each is an attack surface that must be hardened against standard web attack techniques.

## When to Use
- Security review of a new web application before launch
- Assessing security headers and HTTPS configuration of existing applications
- Responding to a web application vulnerability finding from a scan or report
- Establishing secure development practices for a development team

## Application Security Framework

```
MBL PORTFOLIO WEB APPLICATION CONTEXT:

  Allevio employer portal:
    PHI risk: employer group data (census; eligibility); not direct ePHI but employer-confidential
    Authentication: Entra B2B or employer-facing SSO; MFA required for employer admin accounts
    Hosting: Azure App Service (recommended) or similar
    HIPAA: employer data handled per HIPAA; BAAs in place; minimum necessary access
    
  Column6 client/agency portal (if applicable):
    Consumer data (CCPA): agency data isolated per agency; no cross-agency data access
    Authentication: secure login with MFA; agency-specific access controls
    API security: Siprocal/CTV delivery APIs must authenticate all requests
    
  Krista.ai integrations (webhook receivers; API endpoints):
    API authentication: API keys per sec-secrets-manager; HTTPS only
    Input validation: Krista.ai sends structured data; validate and sanitize on receipt
    
  Custom applications built by MBL teams (OpenFang; internal tools):
    Dr. Lewis's Rust development standards include security review before deployment
    See OpenFang development section of CLAUDE.md for build standards

OWASP TOP 10 CHECKLIST (2021 — review each for entity applications):

  A01 — Broken Access Control:
    Check: can users access other users' data by changing URL parameters?
    Check: can users access admin functions without admin role?
    Check: CORS policy allows only expected origins (not *)
    Fix: enforce server-side authorization on every request; never trust client-side role
    
  A02 — Cryptographic Failures:
    Check: HTTPS enforced? (no HTTP pages; HSTS header present)
    Check: sensitive data not stored in plaintext (passwords hashed with bcrypt/Argon2; not MD5/SHA1)
    Check: no sensitive data in URL parameters (appears in logs; referrer headers)
    Fix: TLS 1.2+; HSTS header; strong hashing; sensitive data out of URLs
    
  A03 — Injection:
    Check: SQL injection possible? (user input concatenated into SQL queries)
    Check: OS command injection? (user input passed to shell commands)
    Fix: parameterized queries (prepared statements); input validation; ORM usage
    
  A04 — Insecure Design:
    Check: rate limiting on login endpoints? (prevents credential stuffing)
    Check: multi-tenant data isolation? (employer A cannot see employer B data)
    Fix: design-level controls; rate limiting; tenant isolation architecture
    
  A05 — Security Misconfiguration:
    Check: default credentials removed? Error messages don't reveal stack traces?
    Check: unused features disabled? Debug mode off in production?
    Fix: remove defaults; suppress error detail; disable debug; harden config
    
  A06 — Vulnerable and Outdated Components:
    Check: npm/pip/cargo dependency versions — any known CVEs?
    Fix: npm audit; cargo audit; update dependencies on schedule
    
  A07 — Authentication and Session Failures:
    Check: password brute-force protection? (account lockout; rate limiting on login)
    Check: secure session cookies? (HttpOnly; Secure; SameSite flags)
    Check: session invalidated on logout?
    Fix: account lockout; MFA; secure cookie flags; logout session destroy
    
  A08 — Software and Data Integrity:
    Check: CI/CD pipeline integrity? (signed commits; verified build artifacts)
    Check: software dependencies from verified sources?
    Fix: dependency integrity checking; signed artifacts; SCA tooling
    
  A09 — Security Logging and Monitoring:
    Check: authentication events logged? (success; failure; lockout)
    Check: admin actions logged? (data access; configuration changes)
    Fix: structured logging; log forwarding; anomaly alerting
    
  A10 — Server-Side Request Forgery (SSRF):
    Check: does the app fetch URLs based on user input?
    Fix: validate and restrict URLs; block private IP ranges; allowlist external services

HTTP SECURITY HEADERS (required on all entity web applications):

  Strict-Transport-Security: max-age=31536000; includeSubDomains
    (Forces HTTPS; prevents downgrade attacks)
    
  X-Content-Type-Options: nosniff
    (Prevents MIME type sniffing)
    
  X-Frame-Options: DENY or SAMEORIGIN
    (Prevents clickjacking attacks)
    
  Content-Security-Policy: [entity-specific policy]
    (Restricts which scripts/styles/resources can load — prevents XSS)
    Start with: default-src 'self'; upgrade-insecure-requests
    Tighten over time by reviewing CSP violation reports
    
  Referrer-Policy: strict-origin-when-cross-origin
    (Prevents sensitive URL parameters from leaking to external sites)
    
  Permissions-Policy: geolocation=(), camera=(), microphone=()
    (Disables browser features not needed by the application)
    
  Check current headers: securityheaders.com → enter domain → review report
  Target: A rating or better
```

## Output Format

```markdown
# Application Security Review — [Entity] | [Application] | [Date]
**Reviewer:** Dr. John Lewis | **securityheaders.com rating:** [A+/A/B/C/D/F]

---

## OWASP Top 10 Status
| Category | Status | Finding | Priority |
|---------|--------|---------|---------|
| A01 — Broken Access Control | ✅/⚠️/❌ | | |
| A02 — Cryptographic Failures | ✅/⚠️/❌ | HTTPS enforced | |
| A03 — Injection | ✅/⚠️/❌ | | |
| A07 — Authentication Failures | ✅/⚠️/❌ | No rate limiting on login | P1 |

---

## HTTP Security Headers
| Header | Present | Value | Status |
|--------|---------|-------|--------|
| HSTS | ✅/❌ | max-age=31536000 | |
| X-Content-Type-Options | ✅/❌ | nosniff | |
| X-Frame-Options | ✅/❌ | DENY | |
| CSP | ✅/❌ | [policy] | |
```

## Output Contract
- Application security review is not a substitute for a formal penetration test — the OWASP checklist and security headers review catch the most common vulnerability classes and misconfigurations; they do not catch logic vulnerabilities, complex authentication bypasses, or business-specific access control issues that require manual exploitation to confirm; Dr. Lewis's application security review is the pre-launch minimum gate and the annual review standard; for high-risk applications (employer portal handling PHI-adjacent data; Column6 client portals with consumer data; any application handling payment or financial data), a formal web application penetration test is required before production launch and annually thereafter (see sec-penetration-test-coordinator); the OWASP review and the security headers check can be done by Dr. Lewis; the penetration test requires a qualified third party
- Broken access control (A01) is the most critical application security risk and is easiest to miss because developers test happy paths, not adversarial paths — when reviewing multi-tenant applications (employer portal where Employer A should not see Employer B data; Column6 where Agency A should not see Agency B campaigns), the access control test is: log in as Employer A; copy a resource identifier from Employer A (e.g., employee record ID; group ID); log out; log in as Employer B; attempt to access Employer A's resource by directly entering the URL or ID; if Employer B can access Employer A's data, this is a P0 broken access control finding; Dr. Lewis performs this test on all multi-tenant applications; developers often implement UI-level access control (the button to see Employer A's data doesn't show in Employer B's UI) without implementing server-side authorization (the API endpoint returns Employer A's data if you call it directly); server-side authorization is the only real control
- HITL required: application security review for new application before launch → Dr. Lewis reviews OWASP checklist + security headers; findings reviewed with development lead; entity CEO briefed if launch is delayed by security findings; P0 finding → no launch until remediated; Dr. Lewis confirms fix before approval; CSP policy configuration → Dr. Lewis or development lead implements; Dr. Lewis reviews before enforcing; broken access control in production application → P0; entity CEO notified immediately; application suspended if PHI-adjacent data is at risk; security headers implementation → development team implements; Dr. Lewis verifies via securityheaders.com; dependency vulnerability → development team updates; Dr. Lewis confirms scan clean

## System Dependencies
- **Reads from:** Application source code (for code review — if applicable); securityheaders.com scan results (all entity web apps — weekly check); OWASP Top 10 checklist (2021); npm audit / cargo audit / pip audit results (dependency vulnerability scan); SSL Labs results (TLS configuration — sec-encryption-standards-guide); web application vulnerability scan results (sec-vulnerability-scanner); prior application security review reports; penetration test findings (sec-penetration-test-coordinator — web app findings); entity web application inventory (URL; hosting platform; authentication method; data classification)
- **Writes to:** Application security review report (SharePoint → [Entity] → Security → Application-Security → [App]-[Date]); security header remediation tasks (Monday.com — developer + Dr. Lewis oversight; due date); OWASP finding remediation records (findings; owner; due date; resolution); entity CEO application security briefing (any P0 or P1 finding); pre-launch security clearance (Dr. Lewis sign-off — required before launch of any new entity web application); dependency scan results (quarterly; filed; action items)
- **HITL Required:** Pre-launch review → Dr. Lewis clears before go-live; P0 finding → entity CEO immediately; no launch until remediated; Dr. Lewis confirms fix; CSP implementation → Dr. Lewis reviews before enforce; broken access control in production → P0; entity CEO; application suspension if PHI-adjacent data at risk; security headers → development implements; Dr. Lewis verifies; dependency vulnerability → development updates; Dr. Lewis confirms clean scan

## Test Cases
1. **Golden path:** Pre-launch security review for Allevio employer portal. Dr. Lewis reviews OWASP checklist. A01 (Access Control): tested cross-employer access — Employer A cannot see Employer B data ✅. A02 (Cryptographic): HTTPS enforced; HSTS present; passwords bcrypt-hashed ✅. A03 (Injection): parameterized queries confirmed in code review ✅. A07 (Authentication): MFA required for employer admin accounts ✅; rate limiting on login (5 attempts; 15-min lockout) ✅; secure cookies (HttpOnly; Secure; SameSite=Strict) ✅. Security headers (securityheaders.com): Grade B — CSP missing. Action: development team implements CSP (default-src 'self'). Re-test in 3 days: Grade A. Dr. Lewis signs pre-launch clearance. Launch approved.
2. **Edge case:** Developer reports: "Our login page is getting hammered — thousands of failed login attempts in the last hour from different IPs": Dr. Lewis: "This is a credential stuffing attack. Immediate actions: (1) Confirm rate limiting is active — is the application locking accounts after failed attempts? If no rate limiting: add immediately (critical issue; deploy hotfix). (2) WAF (Web Application Firewall) — does the hosting platform have a WAF? Azure App Service + Azure Front Door; or Cloudflare — enable rate limiting rules on login endpoint. (3) Entra Conditional Access: if the portal uses Entra authentication, risky sign-in policies can block high-risk attempts. (4) CAPTCHA on the login page: reCAPTCHA or Cloudflare Turnstile adds friction against automated attacks. (5) Monitor: are any logins succeeding? If yes, those accounts are compromised — reset passwords + enable MFA. (6) Document: credential stuffing attempt; date/time; source IPs; actions taken."
3. **Adversarial:** A Column6 client reports: "I can see another agency's campaign data in the portal": Dr. Lewis: "P0 — broken access control in production system. Immediate actions: (1) Suspend the portal or restrict access until the issue is confirmed and fixed. (2) Entity CEO notified immediately. (3) Confirm: which agencies are affected? What data was potentially exposed? When was the access control bug introduced (git log)? (4) CCPA assessment: did consumer data cross agency boundaries? Determine scope of exposure. (5) If consumer data was exposed: CCPA notification obligations may apply (state attorney general; affected individuals in California). (6) Legal counsel engaged (entity CEO authorizes). (7) Fix the server-side authorization bug — the fix must be verified with the same cross-agency access test before the portal is restored. (8) Post-incident review: how was a broken access control bug deployed to production without detection?"

## Audit Log
Application security review records (entity; application; date; OWASP checklist status; findings; Dr. Lewis; entity CEO briefed if critical; pre-launch clearance; SharePoint). Pre-launch clearance records (application; clearance date; Dr. Lewis signature; findings resolved before clearance; SharePoint). Security header implementation records (application; headers added; securityheaders.com before/after; development team; Dr. Lewis verification; date). Broken access control incident records (entity; application; data affected; discovery date; entity CEO notification; remediation; legal counsel if CCPA/HIPAA; resolution; date). Credential stuffing response records (entity; date; attack volume; controls response; accounts compromised if any; Dr. Lewis; entity CEO briefed). Dependency scan records (quarterly; application; vulnerabilities found; remediation; confirmation).

## Deprecation
OWASP Top 10 reviewed when OWASP releases new version (next expected 2024+). Security headers list updated when new browser security features are standardized. Pre-launch checklist reviewed when entity application portfolio changes significantly. Dependency scanning tools reviewed annually. Application security review cadence updated when entities add or remove web applications.
