---
name: ci-cd-pipeline-designer
description: "Design and configure CI/CD pipelines for engineering teams. Use when the user says 'CI/CD pipeline', 'deployment pipeline', 'GitHub Actions', 'continuous integration', 'continuous deployment', 'automated deployment', 'build pipeline', 'deploy on merge', 'pipeline design', or 'release automation'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--repo <name>] [--platform <github-actions|gitlab|azure-devops>] [--mode <design|review|debug>]"
---

# CI/CD Pipeline Designer

Design and configure CI/CD pipelines for MBL engineering. A well-designed CI/CD pipeline is a force multiplier — it catches bugs before production, enables fearless deployment, and compresses the feedback loop from code to value. A poorly designed pipeline is a tax on every engineer every day: slow builds, flaky tests, and opaque failures that waste hours per sprint.

## When to Use
- New repository needs CI/CD setup
- Existing pipeline is slow, flaky, or opaque
- Expanding to a new deployment target (new cloud region, portfolio company)
- Security or compliance requirement for pipeline (HIPAA artifact handling, signed releases)
- Evaluating pipeline platform (GitHub Actions vs. Azure DevOps vs. GitLab CI)

## Pipeline Design Principles

```
1. Fast feedback — failing tests should be known within 5 minutes
   Parallelize where possible; cache aggressively; run quick checks first

2. Deterministic — same input always produces same output
   Pin dependency versions; use lockfiles; avoid external state in tests

3. Secure — pipeline is a code execution environment with elevated permissions
   Secrets in vault (never in code or logs); principle of least privilege for tokens
   Sign artifacts; verify signatures before deployment

4. Auditable — every deployment is traceable
   Deployment log: who triggered, what commit, what environment, when, outcome
   Retain logs for HIPAA/compliance minimum 6 years (Allevio)
```

## Standard Pipeline Stages

```
┌─────────────────────────────────────────────────────────────┐
│ On PR:  lint → unit tests → security scan → build           │
│         ↓ (all pass)                                        │
│         deploy to staging → integration tests → notify      │
├─────────────────────────────────────────────────────────────┤
│ On merge to main:                                            │
│         all PR checks → build artifact → sign → push to reg │
│         ↓                                                   │
│         deploy to staging (auto) → smoke tests              │
│         ↓ (HITL gate)                                       │
│         deploy to production (manual approval)              │
└─────────────────────────────────────────────────────────────┘
```

## GitHub Actions Reference (Primary Platform)

```yaml
# Standard Rust/OpenFang pipeline
name: CI

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  check:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: dtolnay/rust-toolchain@stable
      - uses: Swatinem/rust-cache@v2          # Cache cargo dependencies
      
      - name: Clippy (zero warnings)
        run: cargo clippy --workspace --all-targets -- -D warnings
      
      - name: Tests
        run: cargo test --workspace
      
      - name: Security audit
        run: cargo audit
      
      - name: Build
        run: cargo build --workspace --release

  deploy-staging:
    needs: check
    if: github.ref == 'refs/heads/main'
    runs-on: ubuntu-latest
    environment: staging
    steps:
      - name: Deploy to staging
        run: # deployment commands

  deploy-production:
    needs: deploy-staging
    runs-on: ubuntu-latest
    environment: production    # requires manual approval in GitHub
    steps:
      - name: Deploy to production
        run: # deployment commands
```

## Performance Targets

| Stage | Target | Action if Over |
|-------|--------|---------------|
| Lint + format check | <1 min | Investigate; likely dependency install |
| Unit tests | <3 min | Parallelize test suites |
| Security scan | <2 min | Run in parallel with tests |
| Build (Rust release) | <5 min | Ensure cargo cache is warm |
| Total PR pipeline | <10 min | Parallelize stages; review test suite |
| Staging deployment | <5 min | Optimize deployment scripts |

## Output Format

```markdown
# CI/CD Pipeline Design — <Repository/Service>
**Date:** <date> | **Designer:** Dr. John Lewis
**Platform:** GitHub Actions / Azure DevOps / GitLab CI
**Language/Stack:** Rust / Node.js / Python

---

## Pipeline Summary

**Trigger events:** PR open/update; push to main; manual dispatch
**Environments:** dev (auto) → staging (auto on main) → production (manual approval)
**Estimated pipeline time:** <N> min (PR) / <N> min (deploy)
**Secrets management:** GitHub Secrets / Azure Key Vault / HashiCorp Vault

---

## Stage Design

### Stage 1 — Quality Gate (runs on every PR)
**Steps:** Lint → Format check → Clippy/type check → Unit tests → Security scan
**Parallelization:** Lint + Security run in parallel with tests
**Failure behavior:** Hard stop — PR cannot merge if this fails
**Cache strategy:** Cargo dependencies cached by lockfile hash

### Stage 2 — Build and Artifact (runs on merge to main)
**Steps:** Compile release binary → Sign artifact → Push to artifact registry
**Artifact signing:** cosign with OIDC (keyless)
**Retention:** 90 days in registry

### Stage 3 — Staging Deploy (auto on merge to main)
**Steps:** Pull signed artifact → Deploy → Smoke tests → Notify
**Rollback:** Automatic on smoke test failure (redeploy previous artifact)

### Stage 4 — Production Deploy (manual approval required)
**Approval required from:** Dr. Lewis (or designated on-call lead)
**Steps:** Pull same staging artifact → Deploy to production → Health check → Notify
**Rollback:** Manual (automated rollback adds complexity; prefer manual for now)

---

## Secret Inventory

| Secret | Platform | Rotation Policy | Owner |
|--------|---------|----------------|-------|
| CLAUDE_API_KEY | GitHub Secrets | 90 days | Dr. Lewis |
| DEPLOY_TOKEN | GitHub Secrets | Per deployment | Dr. Lewis |
| DB_CONNECTION_STRING | Azure Key Vault | On change | Dr. Lewis |

---

## Failure Runbook

| Failure | First action | Escalation |
|---------|-------------|-----------|
| Lint failure | Fix locally with `cargo clippy --fix` | N/A |
| Test failure | Check test output; reproduce locally | Dr. Lewis if unclear |
| Security audit failure | Review advisory; patch or accept with justification | Dr. Lewis approves acceptance |
| Deployment failure | Check logs; rollback if user impact | Dr. Lewis immediately |
```

## Output Contract
- Production deploy always requires manual approval — no auto-deploy to production
- Secrets never in pipeline YAML — always in secrets management platform
- Rollback procedure always defined — deploy without rollback is incomplete
- Pipeline timing always estimated — "fast" is not a spec; minutes are
- HITL required: Dr. Lewis approves production deployments; pipeline changes to Allevio require security review (HIPAA artifact handling); pipeline secrets rotation requires Dr. Lewis authorization

## System Dependencies
- **Reads from:** Repository structure, existing workflow files, deployment target configuration
- **Writes to:** GitHub Actions workflow YAML files; pipeline configuration
- **HITL Required:** Dr. Lewis reviews pipeline design; production deploy approvals; secrets management changes

## Test Cases
1. **Golden path:** Design CI/CD for OpenFang Rust workspace → GitHub Actions: clippy + tests + cargo audit in parallel (3 min); release build + sign (4 min); auto-deploy to staging on merge (3 min); manual approval gate → production deploy; secrets in GitHub Secrets with 90-day rotation policy
2. **Edge case:** Allevio service pipeline needs to handle PHI artifacts (test fixtures with PHI) → PHI must never be in test fixtures; use synthetic data; if PHI artifacts exist, encrypt before artifact storage; audit log all artifact access; Dr. Lewis and compliance review required
3. **Adversarial:** Developer wants to skip the manual production approval gate to "move faster" → production approval is a THRIVE-Integrity requirement; it exists because production incidents are expensive; measure deployment frequency and lead time instead — these improve with better test coverage, not by removing approvals

## Audit Log
Pipeline configuration versions retained. Production deployment approvals logged. Secret rotation events logged.

## Deprecation
Retire when engineering team adopts a platform engineering function with standardized pipeline templates and self-service deployment capabilities.
