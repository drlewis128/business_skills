---
name: secrets-management-auditor
description: "Audit and improve secrets management practices. Use when the user says 'secrets management', 'API keys', 'credentials in code', 'hardcoded secrets', 'secrets in git', 'leaked API key', 'Key Vault', 'secrets rotation', 'environment variables', or 'credentials exposed'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <audit|remediate|rotate>] [--scope <code|config|infra|all>]"
---

# Secrets Management Auditor

Audit and improve secrets management practices. Leaked API keys and credentials are one of the most common causes of cloud breaches — and one of the most preventable. Secrets in git repositories, config files, environment variables, and chat messages are exposed to anyone who can read those systems. This skill audits where secrets live, finds exposures, and builds the remediation plan.

## When to Use
- Auditing a codebase or infrastructure for exposed credentials
- After a developer accidentally commits an API key to git
- Setting up a new project's secrets management
- Security review of a cloud deployment
- Before a pen test — find your own secrets before the tester does

## Secrets That Must Be Protected

| Secret Type | Examples | Where They Typically Leak |
|-----------|---------|------------------------|
| **API keys** | Claude/Anthropic API key, SendGrid, Twilio | .env files, source code, config files |
| **Database credentials** | Connection strings with username/password | App config, Docker Compose, CI/CD |
| **OAuth credentials** | Client secrets, refresh tokens | Source code, logs |
| **Cloud credentials** | AWS access keys, Azure SPN secrets | .env, CI/CD env vars |
| **Encryption keys** | AES keys, RSA private keys | Config files, code |
| **Webhook secrets** | HMAC verification secrets | Config files, env vars |
| **Service account passwords** | AD service accounts, app passwords | Scripts, config files |

## Secrets Anti-Patterns (NEVER Do This)

```
❌ api_key = "sk-ant-api03-XXXXXXXXXXXXXXXXXX"  # hardcoded in source
❌ DB_PASSWORD=MyP@ssw0rd  # in .env file committed to git
❌ connection_string: "Server=prod;Password=secret123"  # in appsettings.json
❌ docker-compose.yml with plaintext passwords
❌ Screenshot of terminal with API key shared in Slack
❌ API key in the URL: https://api.example.com/data?key=sk-...
```

## Secrets Best Practices

```
✅ Azure Key Vault — all secrets for Azure deployments
✅ Environment variables (injected at runtime, not stored in code)
✅ GitHub Actions / CI secrets (for CI/CD, never in code)
✅ .env.example committed (template), .env.local never committed
✅ .gitignore includes .env, *.key, *_secret, credentials.*
✅ Pre-commit hooks that block secrets (git-secrets, gitleaks)
✅ Regular rotation — API keys rotated every 90 days
```

## Output Format

```markdown
# Secrets Management Audit — <Entity / Project>
**Date:** <date> | **Scope:** <codebase / infra / CI-CD / all>
**Auditor:** Dr. John Lewis / IT Manager

---

## Audit Findings

### Source Code Secrets Scan

**Tool used:** gitleaks / trufflehog / manual review
**Repositories scanned:** <list>
**Scan date:** <date>

| Finding | File | Line | Secret Type | Status |
|---------|------|------|-----------|--------|
| Anthropic API key | src/agent/config.py | 23 | API key | 🔴 Exposed — rotate immediately |
| Database connection string | config/database.yml | 7 | DB credentials | 🔴 Exposed — rotate immediately |
| AWS access key | scripts/deploy.sh | 45 | Cloud credentials | 🔴 Exposed — rotate immediately |

---

### Git History Scan

**Critical:** A secret removed from current code may still exist in git history.

| Finding | Commit | Secret Type | Rotation Status |
|---------|--------|-----------|----------------|
| Anthropic API key (removed 3 months ago) | a3f2c1b | API key | Rotated? Verify |

---

### Configuration File Review

| File | Committed to Git? | Contains Secrets? | Action |
|------|-----------------|-----------------|--------|
| .env | ❌ Yes (should be .gitignored) | ✅ Yes | Remove from git history; rotate all secrets |
| appsettings.json | ✅ Yes | 🟡 Contains DB server name | OK — no password |
| docker-compose.yml | ✅ Yes | ❌ POSTGRES_PASSWORD=secret | 🔴 Rotate, move to env var |

---

### Secrets Storage Assessment

| Secret Type | Current Storage | Recommended | Action |
|-----------|---------------|-----------|--------|
| Anthropic API key | .env file | Azure Key Vault | Migrate |
| DB connection string | App config file | Azure Key Vault | Migrate |
| Webhook secrets | Hardcoded in code | Environment variable | Fix immediately |
| CI/CD secrets | GitHub Actions secrets | ✅ Correct | None |

---

## Immediate Actions Required (Exposed Secrets)

| Secret | Exposure Point | Action | Owner | Due |
|--------|--------------|--------|-------|-----|
| Anthropic API key (sk-ant-...) | config.py:23 | Rotate key NOW via Anthropic console; then migrate to Key Vault | IT Engineer | Today |
| DB credentials | database.yml | Change DB password NOW; update all connections | IT Engineer | Today |
| AWS access key | deploy.sh | Rotate via AWS IAM NOW; delete old key | IT Engineer | Today |

---

## Remediation Plan

| Action | Owner | Due | Priority |
|--------|-------|-----|---------|
| Rotate all exposed secrets | IT Engineer | Today | Critical |
| Remove .env from git history (git-filter-repo) | IT Engineer | Today | Critical |
| Add .gitignore rules for secrets files | Developer | Today | High |
| Install pre-commit gitleaks hook | Developer | This week | High |
| Migrate all secrets to Azure Key Vault | IT Engineer | 30 days | High |
| Set up 90-day rotation reminders for all API keys | IT Manager | 30 days | Medium |
```

## Output Contract
- Any exposed secret always triggers immediate rotation — the moment of discovery is already potentially too late
- Git history scan always performed — removing a file from current code doesn't remove it from history
- Rotation is always first, migration to Key Vault is second — don't delay rotation to wait for a better storage solution
- Pre-commit hooks always recommended to prevent future exposure
- HITL required: IT Engineer rotates all secrets (Dr. Lewis notified if keys are for critical systems); Dr. Lewis notified of any API key exposures for keys he manages

## System Dependencies
- **Reads from:** Source code repositories, configuration files, CI/CD pipelines (provided)
- **Writes to:** Nothing (audit report for HITL action)
- **HITL Required:** IT Engineer rotates exposed secrets; Dr. Lewis notified of critical exposures (Anthropic API keys, financial system credentials)

## Test Cases
1. **Golden path:** Developer accidentally commits .env file with Anthropic API key → scan detects within 24 hours; key rotated in Anthropic console immediately; git history cleaned; .gitignore updated; pre-commit hook installed; Key Vault migration completed within 30 days
2. **Edge case:** API key committed 6 months ago, already rotated — is there risk? → verify the old key is definitely rotated (not just removed from code), check if it was used by any unauthorized parties in the 6-month window via API audit logs if available
3. **Adversarial:** Developer argues "it's just an internal repo, no one will see it" → internal repos are still accessible to all employees, ex-employees may retain access, repos can be accidentally made public, or can be compromised via a supply chain attack

## Audit Log
Secrets scan results retained by project and date. Rotation actions documented. Remediation completion tracked.

## Deprecation
Retire manual scanning when HashiCorp Vault or Azure Key Vault is deployed with automated secret injection, rotation policies, and GitLeaks/Detect-Secrets pre-commit hooks installed across all repos.
