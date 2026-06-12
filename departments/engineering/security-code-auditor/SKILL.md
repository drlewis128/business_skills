---
name: security-code-auditor
description: "Run a deep security audit on code targeting OWASP Top-10 and SANS CWE Top-25 vulnerabilities. Use when the user says 'security audit', 'find security vulnerabilities', 'check this code for security issues', 'OWASP review', 'pen test the code', 'is this code safe', 'check for injection vulnerabilities', 'review authentication code', 'find secrets in code', or 'security code review'. More thorough than /security-review — covers language-specific patterns, secrets detection, and full OWASP mapping."
metadata:
  version: 1.0.0
  tier: code-audit
  owner: Dr. John Lewis
argument-hint: "<file | directory> [--severity <critical|high|all>]"
---

# Security Code Auditor

Deep security vulnerability analysis targeting OWASP Top-10, SANS CWE Top-25, and language-specific attack surfaces. Produces a severity-ranked finding report with specific remediation guidance.

**Difference from `/security-review`:** `/security-review` is a quick built-in pass. This skill is a full structured audit with OWASP categorization, CWE mapping, evidence quotes, and remediation code examples.

## When to Use

- Before any production deployment of user-facing or API-serving code
- Before integrating with a new external system (Bill.com, QuickBooks, GoHighLevel, etc.)
- When handling PII, financial data, or health data (Allevio context — HIPAA exposure)
- When a penetration test is being scoped — use this for pre-pen-test self-audit
- After adding new authentication, authorization, or data access logic

## Input

`$ARGUMENTS`: File or directory path.
`--severity critical` — report only Critical and High findings.
`--severity high` — report Critical, High, and Medium.
`--severity all` — report all including Low and Informational.

Default: all severities.

## Vulnerability Categories to Check

### OWASP Top-10 (2021)

**A01 — Broken Access Control**
- Authorization checks present on every protected route/function?
- Horizontal privilege escalation risk (can user A access user B's data by changing an ID)?
- JWT validation complete (signature, expiry, issuer)?
- Directory traversal via unsanitized file paths?
- CORS headers overly permissive (`*`)?

**A02 — Cryptographic Failures**
- Sensitive data (passwords, tokens, PII, financial data) stored/transmitted in plaintext?
- Weak hashing algorithms: MD5, SHA-1 used for password hashing?
- Hardcoded cryptographic keys or secrets in source code?
- TLS version < 1.2 configured anywhere?
- Sensitive data in URL parameters (appears in logs)?

**A03 — Injection**
- SQL queries assembled via string concatenation (not parameterized)?
- NoSQL injection via unsanitized JSON operators (`$where`, `$regex`)?
- OS command injection via `exec`, `shell_exec`, `subprocess` with user input?
- LDAP injection?
- Template injection (server-side)?
- Log injection (user-controlled content written directly to logs)?

**A04 — Insecure Design**
- Missing rate limiting on authentication endpoints?
- No account lockout after failed login attempts?
- Sensitive operations without re-authentication?
- Mass assignment vulnerabilities (binding all request fields to model)?

**A05 — Security Misconfiguration**
- Debug mode / verbose error messages enabled in non-dev contexts?
- Default credentials in configuration files?
- Unnecessary HTTP methods enabled (TRACE, PUT on public endpoints)?
- Security headers missing (CSP, X-Frame-Options, HSTS, X-Content-Type-Options)?
- Stack traces exposed to end users?

**A06 — Vulnerable and Outdated Components**
- Dependencies with known CVEs (flag for `dependency-vulnerability-auditor` follow-up)?
- Direct dependency on unmaintained libraries?

**A07 — Identification and Authentication Failures**
- Weak password policies enforced?
- Session tokens predictable or insufficiently random?
- Session not invalidated on logout?
- Multi-factor authentication bypass possible?
- Password reset tokens with long/no expiry?

**A08 — Software and Data Integrity Failures**
- Deserialization of untrusted data without validation?
- CI/CD pipeline scripts fetching unsigned artifacts?
- `eval()` or dynamic code execution on user-supplied content?

**A09 — Security Logging and Monitoring Failures**
- Authentication failures logged with sufficient detail?
- Sensitive data (passwords, tokens) included in log output?
- No audit trail for high-value operations (financial transactions, admin actions)?

**A10 — Server-Side Request Forgery (SSRF)**
- User-supplied URLs fetched server-side without allowlist validation?
- Internal metadata endpoints accessible via SSRF?

### SANS CWE Top-25 Additions (beyond OWASP)

- **CWE-125/787**: Out-of-bounds read/write (C/C++/Rust unsafe blocks)
- **CWE-476**: NULL pointer dereference
- **CWE-190**: Integer overflow in arithmetic before allocation
- **CWE-362**: Race condition on shared resources without proper locks
- **CWE-502**: Deserialization of untrusted data
- **CWE-611**: XML External Entity (XXE) injection
- **CWE-918**: SSRF (covered above but flag specifically)

### Language-Specific Checks

**Rust:**
- `unsafe` blocks — are they justified and minimal in scope?
- Raw pointer arithmetic without bounds checking?
- `unwrap()` / `expect()` in production paths (panic risk)?
- `std::process::Command` with user input?

**TypeScript/JavaScript:**
- `eval()`, `Function()`, `setTimeout(string)` with user input?
- `innerHTML`/`outerHTML` without sanitization (XSS)?
- `dangerouslySetInnerHTML` (React)?
- `require()` with user-controlled path?
- Prototype pollution via `Object.assign` on user input?

**Python:**
- `pickle.loads()` on untrusted data?
- `exec()`, `eval()` with user input?
- `os.system()`, `subprocess.run(shell=True)` with user input?
- YAML `yaml.load()` without `Loader=yaml.SafeLoader`?

### Secrets Detection

Scan for patterns indicating hardcoded secrets:
- API keys (common prefixes: `sk-`, `pk-`, `AIza`, `AKIA`, `ghp_`)
- Private key blocks (`-----BEGIN PRIVATE KEY-----`)
- Passwords in config/env files committed to repo
- Tokens in comments or test fixtures
- Connection strings with embedded credentials

## Output Format

```markdown
# Security Audit Report
**Target:** <path>
**Date:** <today>
**OWASP Version:** 2021
**Severity Filter:** <filter applied>

---

## Severity Summary
| Severity | Count |
|----------|-------|
| 🔴 Critical | <N> |
| 🟠 High | <N> |
| 🟡 Medium | <N> |
| 🔵 Low | <N> |
| ⚪ Informational | <N> |

---

## Findings

### 🔴 CRITICAL — <Finding Title>
**OWASP:** A03 — Injection | **CWE:** CWE-89
**File:** `src/db.rs:142`
**Evidence:**
```
let query = format!("SELECT * FROM users WHERE id = {}", user_input);
```
**Risk:** Direct SQL injection. Attacker can extract, modify, or delete all database records.
**Remediation:**
```rust
// Use parameterized queries
let query = "SELECT * FROM users WHERE id = $1";
client.query(query, &[&user_id]).await?;
```

---

[repeat per finding]

---

## Hardcoded Secrets Detected
<list with file:line, masked value, recommended fix>

## Informational
<low/info findings>

---

## Remediation Priority Queue
1. [CRITICAL] Fix SQL injection in src/db.rs — 2h estimated effort
2. [HIGH] Remove hardcoded API key in config.rs — 15min
...

## OWASP Coverage Map
| Category | Status | Findings |
|----------|--------|---------|
| A01 Access Control | ✅ Reviewed | <N> findings |
| A02 Crypto | ✅ Reviewed | <N> findings |
...
```

## Output Contract

- Never exposes actual secret values — mask as `<REDACTED>` in output
- All findings include: severity, OWASP/CWE reference, file:line, evidence, remediation
- Read-only — never modifies source files
- Flags for `dependency-vulnerability-auditor` if A06 (outdated components) is triggered

## System Dependencies

- **Reads from:** File system (source files at provided path)
- **Writes to:** Nothing (read-only audit)
- **HITL Required:** If this audit surfaces Critical findings in code that is already in production — escalate to Tier 1 before any automated remediation

## Feedback

Engineering leads (Tier 2) may flag language-specific false positives. All Critical findings should be reviewed by Dr. Lewis before remediation is delegated. Log via `skill-feedback-collector`.
