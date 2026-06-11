---
name: application-security-reviewer
description: "Review application security including OWASP vulnerabilities and secure code practices. Use when the user says 'application security', 'app security', 'OWASP', 'secure code review', 'code security review', 'SQL injection', 'XSS vulnerability', 'web app security', 'API security', or 'secure this application'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "<app-or-code> [--type <web|api|mobile>] [--depth <quick|thorough>] [--framework <OWASP|NIST>]"
---

# Application Security Reviewer

Review application security including OWASP Top 10 vulnerabilities and secure code practices. Most breaches happen through applications — injection attacks, broken authentication, and misconfigured systems are consistently in the top causes. For MBL AI systems (OpenFang, Krista.ai integrations), API security and prompt injection are additional concerns. This skill reviews application code, design, and configuration for security vulnerabilities.

## When to Use
- New application or API being deployed
- Code security review before production release
- After a vulnerability scanner flags an issue in a web application
- Pen test preparation — find issues before the tester does
- After an application security incident
- Reviewing AI/LLM application security (OpenFang, Krista.ai)

## OWASP Top 10 (2021) — MBL Focus Areas

| OWASP Category | Risk | MBL Relevance |
|--------------|------|-------------|
| **A01 — Broken Access Control** | Unauthorized data access | All web apps, API endpoints |
| **A02 — Cryptographic Failures** | Data exposed at rest or in transit | PHI (Allevio), financial data |
| **A03 — Injection** | SQL, LDAP, OS command injection | Any app with database or external calls |
| **A05 — Security Misconfiguration** | Default creds, exposed debug, open S3 | Cloud, APIs, dev tools left in prod |
| **A06 — Vulnerable Components** | Outdated libraries with known CVEs | Node.js, Python, Rust dependencies |
| **A07 — Auth Failures** | Weak passwords, no MFA, session issues | All user-facing applications |
| **A09 — Security Logging Failures** | Can't detect or investigate attacks | All business-critical applications |
| **A10 — SSRF** | App fetches attacker-controlled URLs | APIs, web hooks, AI integrations |

## AI Application-Specific Security (OpenFang / Krista.ai)

| Risk | Description | Mitigation |
|------|-----------|----------|
| **Prompt injection** | Attacker injects instructions via user input | Validate and sanitize all user input; separate system and user context |
| **Data exfiltration via LLM** | Sensitive data returned in model output | Scope what data the AI can access; output filtering |
| **Jailbreaking** | System prompt bypassed | Defense in depth — don't rely solely on system prompt |
| **Portfolio isolation** | One entity's AI accessing another's data | Strict tenant isolation in agent architecture |
| **Audit trail** | AI actions not logged | Log all AI actions: input, tool calls, output |

## Output Format

```markdown
# Application Security Review — <App Name>
**Date:** <date> | **Type:** Web app / API / Mobile / AI agent
**Reviewer:** Dr. John Lewis
**Verdict:** APPROVED / APPROVED WITH CONDITIONS / BLOCKED

---

## Application Overview

| Field | Value |
|-------|-------|
| App name | <name> |
| Technology stack | <language, framework, DB> |
| Data handled | PHI / PII / Financial / Business |
| User authentication | Entra ID SSO / Custom / API key |
| Hosting | Azure / AWS / On-prem / SaaS |
| External integrations | <list> |

---

## OWASP Top 10 Review

| Category | Status | Finding | Severity |
|---------|--------|---------|---------|
| A01 — Broken Access Control | ✅ / 🟡 / ❌ | All endpoints require auth; RBAC enforced | None |
| A02 — Cryptographic Failures | ✅ / 🟡 / ❌ | TLS 1.3 in transit; AES-256 at rest | None |
| A03 — Injection | ✅ / 🟡 / ❌ | Parameterized queries used; no raw SQL | None |
| A03 — Injection (AI/Prompt) | ✅ / 🟡 / ❌ | User input passed directly to system prompt | Critical |
| A05 — Security Misconfiguration | ✅ / 🟡 / ❌ | Debug mode disabled; no default credentials | None |
| A06 — Vulnerable Components | 🟡 | 2 npm packages with High CVEs | High |
| A07 — Auth Failures | ✅ | M365 SSO with MFA | None |
| A09 — Security Logging | 🟡 | Actions logged but no SIEM integration | Medium |
| A10 — SSRF | ❌ | Webhook URL accepts user input with no validation | High |

---

## Critical Findings

| Finding | File / Component | Severity | Risk | Fix |
|---------|----------------|---------|------|-----|
| Prompt injection via user input | agent/router.py:142 | Critical | Attacker can inject system instructions | Sanitize user input; use separate user/system message context |
| User-supplied URL in webhook fetch | api/webhooks.py:78 | High | SSRF — attacker can probe internal services | Validate URL against allowlist; block private IP ranges |

---

## Vulnerable Dependencies

| Package | Version | CVE | Severity | Fix |
|---------|---------|-----|---------|-----|
| axios | 0.21.1 | CVE-2023-45857 | High | Update to axios 1.6.0+ |
| lodash | 4.17.19 | CVE-2021-23337 | High | Update to lodash 4.17.21 |

---

## AI Security Findings (if applicable)

| Finding | Risk | Mitigation |
|---------|------|----------|
| User input passed to LLM without sanitization | Critical — prompt injection | Sanitize input; separate system/user context in messages |
| Agent has access to all SharePoint data | High — data exfiltration | Scope agent to minimum required data access |
| No audit log for agent actions | Medium | Implement logging for all tool calls |

---

## Verdict

**BLOCKED — Resolve critical issues before deployment:**
1. Prompt injection protection required before any production deployment
2. SSRF vulnerability requires URL validation before going live

**Conditions (30 days post-deployment):**
- Update vulnerable dependencies
- Add SIEM log integration
```

## Output Contract
- Critical findings always block deployment — no exceptions
- Prompt injection always reviewed for any AI application — it's the primary AI attack vector
- Vulnerable dependencies always listed with specific versions and fix versions
- PHI-adjacent applications always get cryptographic failure review — HIPAA requires encryption
- HITL required: Dr. Lewis approves architecture; IT Manager approves deployment; Allevio compliance officer reviews PHI applications

## System Dependencies
- **Reads from:** Source code, dependency manifests, application architecture, test results (provided)
- **Writes to:** Security review report (for HITL approval before deployment)
- **HITL Required:** Dr. Lewis approves/blocks deployment; IT Manager tracks remediation; Allevio compliance officer for PHI applications

## Test Cases
1. **Golden path:** New API for Krista.ai integration → OWASP review clean except 2 outdated dependencies (fix required before deploy); prompt injection testing identifies gap in user input handling (critical, fix implemented); approved after fix
2. **Edge case:** AI application needs to access PHI for Allevio workflows → strict access scoping (minimum necessary PHI), output filtering, prompt injection protection, full audit logging of all PHI accessed; Dr. Lewis and Allevio compliance officer approve architecture
3. **Adversarial:** Developer argues "we don't need a security review for an internal tool" → internal tools are still accessible to employees, can be pivoted to by attackers who compromise an employee account, and often have broad database access; review proceeds

## Audit Log
Application security reviews retained by app and date. Critical findings and remediation status documented. Deployment approvals recorded.

## Deprecation
Retire manual reviews when DAST (Dynamic Application Security Testing) and SAST (Static Analysis) tools are integrated into the CI/CD pipeline with automated blocking on Critical findings.
