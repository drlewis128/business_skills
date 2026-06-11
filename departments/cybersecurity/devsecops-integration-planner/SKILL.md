---
name: devsecops-integration-planner
description: "Plan and integrate DevSecOps security practices into the development pipeline. Use when the user says 'DevSecOps', 'security in CI/CD', 'secure SDLC', 'SAST', 'DAST', 'security in the pipeline', 'shift left security', 'secure software development', 'SBOM', or 'security testing in CI/CD'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--stack <rust|python|node|all>] [--pipeline <github-actions|azure-devops|other>]"
---

# DevSecOps Integration Planner

Plan and integrate DevSecOps security practices into the development pipeline. Security found late in development is expensive. Security found by an attacker is catastrophic. DevSecOps "shifts left" — building security checks into the CI/CD pipeline so vulnerabilities are caught during development, not after deployment. For MBL AI systems (OpenFang in Rust, Krista.ai integrations), this is especially important.

## When to Use
- Setting up a new CI/CD pipeline with security controls
- Adding security gates to an existing pipeline
- After a security finding in a code review or pen test
- Building OpenFang or Krista.ai integration security practices
- SOC 2 readiness — secure development lifecycle is a requirement

## DevSecOps Pipeline Stages

```
Code → SAST → Dependency Scan → Build → DAST → Deploy → Monitor
  ↑         ↑                         ↑              ↑
  Pre-commit checks             Container scan    Runtime security
```

| Stage | Security Control | When | Tools |
|-------|----------------|------|-------|
| **Pre-commit** | Secret detection | Before code is committed | gitleaks, detect-secrets |
| **Pre-commit** | Lint / code quality | Before commit | clippy (Rust), pylint, eslint |
| **Pull Request** | SAST (Static Analysis) | On every PR | GitHub Advanced Security, semgrep |
| **Pull Request** | Dependency scan | On every PR | cargo audit (Rust), npm audit, Dependabot |
| **Pull Request** | Code review | On every PR | Required reviewer (IT/Security sign-off) |
| **Build** | Container scan | On every build | Trivy, Snyk Container |
| **Pre-deploy** | DAST (Dynamic Analysis) | Before production | OWASP ZAP, Burp Suite |
| **Deploy** | Infrastructure scan | On infrastructure changes | Checkov, Terraform Sentinel |
| **Runtime** | Runtime monitoring | Always | EDR, SIEM, Defender |

## MBL-Specific Context (OpenFang / Rust)

```bash
# OpenFang CI/CD security checks (GitHub Actions)
- cargo audit              # Check for known CVEs in dependencies
- cargo clippy -- -D warnings   # Zero-warning policy (also catches some security issues)
- cargo test --workspace   # All tests must pass
- gitleaks detect          # Secret detection in code
```

## Output Format

```markdown
# DevSecOps Integration Plan — <Project / Entity>
**Date:** <date> | **Project:** <name>
**Pipeline:** GitHub Actions / Azure DevOps / Other
**Language/Stack:** Rust / Python / Node.js / Mixed

---

## Current Pipeline Security Assessment

| Stage | Security Control | Status | Tool | Gap |
|-------|----------------|--------|------|-----|
| Pre-commit | Secret detection | ❌ Not configured | — | Add gitleaks pre-commit hook |
| PR | SAST | ✅ GitHub Advanced Security | CodeQL | Configured |
| PR | Dependency scan | 🟡 Dependabot alerts only | Dependabot | Not blocking PRs |
| PR | Required review | ✅ 1 required reviewer | GitHub branch rules | OK |
| Build | Container scan | ❌ Not configured | — | Add Trivy |
| Deploy | Infrastructure scan | ❌ Not configured | — | Add Checkov for Terraform |
| Runtime | Monitoring | ✅ EDR + Sentinel | Defender | OK |

---

## Implementation Plan

### Phase 1 — Pre-Commit Security (Week 1)

```yaml
# .pre-commit-config.yaml
repos:
  - repo: https://github.com/gitleaks/gitleaks
    rev: v8.18.0
    hooks:
      - id: gitleaks

  - repo: https://github.com/Yelp/detect-secrets
    rev: v1.4.0
    hooks:
      - id: detect-secrets
```

**Rust-specific:**
```yaml
# .github/workflows/security.yml
- name: Cargo audit
  run: cargo audit --deny warnings
  
- name: Clippy (zero warnings)
  run: cargo clippy --workspace --all-targets -- -D warnings
```

---

### Phase 2 — PR Gates (Week 2)

```yaml
# Branch protection rules in GitHub:
required_status_checks:
  - cargo-audit         # Must pass
  - cargo-test          # Must pass
  - cargo-clippy        # Must pass
  - codeql-analysis     # Must pass

required_reviewers: 1
dismiss_stale_reviews: true
```

---

### Phase 3 — Container / Infrastructure Scan (Week 3-4)

```yaml
# Add to CI/CD pipeline
- name: Trivy vulnerability scan
  uses: aquasecurity/trivy-action@master
  with:
    scan-type: 'image'
    exit-code: '1'         # Fail build on Critical/High
    severity: 'CRITICAL,HIGH'

- name: Checkov (IaC scan)
  uses: bridgecrewio/checkov-action@master
  with:
    directory: ./terraform
    soft_fail: false        # Fail build on findings
```

---

## Security Gates Summary

| Gate | Trigger | Action | Pass Condition |
|------|---------|--------|--------------|
| Secret detection | Pre-commit | Block commit | No secrets detected |
| Dependency CVE scan | Every PR | Block merge | No Critical/High CVEs |
| SAST (CodeQL) | Every PR | Block merge | No Critical/High findings |
| Zero-warning Clippy | Every PR (Rust) | Block merge | 0 warnings |
| Container scan | Every build | Block deploy | No Critical CVEs |
| All tests pass | Every PR | Block merge | 100% test pass |

---

## Developer Experience Notes

**Estimated developer impact:**
- Pre-commit hooks: ~5-10 seconds per commit
- SAST + dependency scan: ~2-5 minutes per PR
- Full pipeline: ~8-15 minutes

**Developer guidance:**
- Install pre-commit: `pip install pre-commit && pre-commit install`
- Run locally before push: `pre-commit run --all-files`
- Fix cargo audit: `cargo update` to update dependencies; if CVE is in your code, `cargo audit fix`
```

## Output Contract
- Secret detection always pre-commit (not just CI) — fastest feedback loop
- Dependency scans always blocking on PR — "alerts only" means devs ignore them
- Rust/OpenFang specifics always included when the project is Rust-based — cargo audit + clippy + test trifecta
- Container scans always included if containers are used — image vulnerabilities are production vulnerabilities
- HITL required: Dr. Lewis approves DevSecOps plan; IT Manager reviews security gates; developer team implements with IT oversight; any security gate bypass requires Dr. Lewis approval

## System Dependencies
- **Reads from:** CI/CD pipeline configuration, codebase, repository settings (provided)
- **Writes to:** CI/CD pipeline configuration, pre-commit hooks (developer/IT implements)
- **HITL Required:** Dr. Lewis approves security gate configuration; IT Manager reviews pipeline; any gate exception requires Dr. Lewis sign-off

## Test Cases
1. **Golden path:** New OpenFang feature → pre-commit gitleaks blocks accidental API key commit, cargo audit blocks PR with known CVE in dependency, developer updates dependency, pipeline passes, code reviewed, merged
2. **Edge case:** False positive from SAST (CodeQL flags a pattern that's actually safe) → suppress the specific finding with a documented justification in code comment; Dr. Lewis reviews all suppressions; pattern is not added to global suppression list
3. **Adversarial:** Developer argues security gates "slow down development" → measures actual time impact (5 minutes per PR) vs. cost of a production security incident; offers to optimize the pipeline for developer experience while maintaining the gates

## Audit Log
DevSecOps configuration retained with version history. Security gate bypasses documented and approved by Dr. Lewis. False positive suppressions documented.

## Deprecation
Retire manual pipeline configuration when a dedicated ASPM (Application Security Posture Management) platform provides automated pipeline integration, policy enforcement, and developer security tooling.
