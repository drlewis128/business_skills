---
name: sec-devsecops-integrator
description: "Integrate security into the development process for MBL portfolio company software projects. Use when the user says 'DevSecOps', 'security in development', 'security in SDLC', 'secure software development', 'secure development lifecycle', 'SDLC security', 'CI CD security', 'pipeline security', 'GitHub security', 'GitHub Actions security', 'branch protection', 'code review security', 'pull request security', 'SAST', 'static analysis', 'static code analysis', 'dependency scanning', 'dependency check', 'SCA', 'software composition analysis', 'container security', 'Dockerfile security', 'secret scanning', 'GitHub secret scanning', 'commit signing', 'signed commits', 'branch protection rules', 'code signing', 'security gates', 'security in CI CD', 'vulnerability in code', 'vulnerable dependency', 'security testing', 'security automation', 'GitHub Advanced Security', 'CodeQL', 'Dependabot', 'secure pipeline', 'OpenFang security', 'Rust security', 'build security', 'artifact security', 'container scanning', 'SBOM', 'software bill of materials', or 'supply chain security'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--project <openfang|portfolio-app|web-app>] [--action <assess|configure|enforce|report>] [--scope <github|pipeline|dependencies|secrets>]"
---

# Sec DevSecOps Integrator

Integrate security into the development process for MBL portfolio company software projects — configuring GitHub security features, dependency scanning, secret detection, and branch protection rules that catch vulnerabilities before code is deployed. Security in development is 100x cheaper than security after deployment; the goal is to make secure code the path of least resistance, not an afterthought.

## When to Use
- Setting up GitHub security features for a new MBL development project
- Reviewing CI/CD pipeline security for existing projects
- Responding to a secret scanning alert (credential in code)
- Applying DevSecOps controls to OpenFang or another MBL project

## DevSecOps Framework

```
MBL DEVELOPMENT CONTEXT:

  Primary active projects:
    OpenFang: Rust agent OS (14 crates); Dr. Lewis primary developer; GitHub repository
    Portfolio company web applications: Allevio employer portal; Column6 client portal
    Krista.ai integrations: webhook receivers; API middleware (if custom-built)
    
  Development standards (from CLAUDE.md — Rust/OpenFang):
    cargo build --workspace --lib → must compile
    cargo test --workspace → all tests pass
    cargo clippy --workspace --all-targets -- -D warnings → zero warnings
    Live integration testing mandatory after endpoint changes
    
GITHUB SECURITY FEATURES (enable per repository):

  1. SECRET SCANNING:
     Detects: API keys; OAuth tokens; AWS keys; GitHub tokens; known credential patterns
     Enable: Settings → Security → Secret scanning → Enable
     Alert: Dr. Lewis receives alert when credential pattern detected in any commit
     Action: rotate immediately; assume compromised (see sec-secrets-manager)
     Partner alerts: GitHub notifies vendors (AWS; GCP; Azure) when their credentials are detected
     Push protection: block commits containing secrets before they reach the repo
       Enable: Settings → Security → Secret scanning → Push protection → Enable
       
  2. DEPENDABOT (dependency vulnerability alerts):
     Detects: known CVEs in project dependencies (Cargo.toml; package.json; requirements.txt)
     Enable: Settings → Security → Dependabot alerts → Enable
     Dependabot security updates: auto-PRs for vulnerable dependencies
     Enable: Settings → Security → Dependabot security updates → Enable
     MBL standard: Dependabot alerts reviewed within 30 days; Critical within 7 days
     
  3. CODE SCANNING (SAST — Static Application Security Testing):
     GitHub Advanced Security (free for public repos; paid for private repos):
       CodeQL: semantic code analysis; detects injection; auth bypass; data flow issues
       Enable: Settings → Security → Code scanning → Set up CodeQL
     Rust alternative: cargo audit (audit Cargo.lock against RustSec advisory database)
       Run: cargo audit in CI pipeline; fail build if unfixed Critical vulnerabilities
       
  4. DEPENDENCY REVIEW:
     On pull requests: highlights new dependencies and their vulnerability status
     Enable: on by default if GitHub Advanced Security is enabled
     
BRANCH PROTECTION (for production branches):
  Settings → Branches → Add branch protection rule → main (or master):
  
    Required reviews: 1 minimum (for team projects; for solo projects: 0 but log review)
    Dismiss stale reviews: enable (re-review when new commits added)
    Require status checks: require CI pipeline to pass before merge
    Require conversation resolution: all review comments resolved before merge
    Restrict force pushes: enable (prevent history rewriting)
    Allow deletions: disable (protect main branch from deletion)
    
CI/CD SECURITY PIPELINE (GitHub Actions):

  Standard security job in GitHub Actions workflow:
  
    jobs:
      security:
        runs-on: ubuntu-latest
        steps:
          - uses: actions/checkout@v4
          - name: cargo audit (Rust — RustSec)
            run: |
              cargo install cargo-audit
              cargo audit
          - name: cargo clippy (lint — zero warnings)
            run: cargo clippy --workspace --all-targets -- -D warnings
          
  For Node.js projects:
    npm audit --audit-level=high (fail on High or Critical)
    
  Actions secrets management:
    All secrets in GitHub Actions secrets (Settings → Secrets → Actions)
    Never hardcode tokens in workflow files
    Use minimum-permission tokens (GITHUB_TOKEN for repo actions; separate secrets for external)
    
DEVSECOPS FOR OPENFANG (Rust-specific):

  cargo audit: check Cargo.lock for advisories in the RustSec database
    Run: cargo install cargo-audit && cargo audit
    Integrate into CI: fail build on unfixed Critical/High advisories
    
  cargo clippy: linting catches security anti-patterns (unsafe code; incorrect error handling)
    Standard: cargo clippy --workspace --all-targets -- -D warnings (zero-warning gate)
    
  unsafe code review: any `unsafe` block in Rust requires explicit justification
    Security concern: unsafe bypasses Rust's memory safety guarantees
    Standard: no unnecessary unsafe; all unsafe documented with safety invariant comment
    
  Secret scanning: enable GitHub push protection on OpenFang repo (catches API keys; tokens)
```

## Output Format

```markdown
# DevSecOps Status — [Project/Entity] | [Date]
**Repository:** [GitHub org/repo] | **Reviewer:** Dr. John Lewis

---

## GitHub Security Features
| Feature | Status | Last alert | Notes |
|---------|--------|-----------|-------|
| Secret scanning | 🟢 Enabled / 🔴 Disabled | [Date or N/A] | Push protection: ✅/❌ |
| Dependabot alerts | 🟢 Enabled / 🔴 Disabled | [N open alerts] | Critical: [N] |
| Code scanning (CodeQL) | 🟢 Enabled / 🔴 N/A | | |
| Branch protection (main) | 🟢 Configured / 🔴 Open | | |

---

## Open Security Issues
| Issue | Repository | Severity | Action | Due |
|-------|-----------|---------|--------|-----|
| Dependabot: CVE-XXXX in [dep] | [Repo] | Critical | Update [dep] to [version] | 7 days |
```

## Output Contract
- Push protection (secret scanning with commit blocking) is the highest-ROI GitHub security control — without push protection, secret scanning alerts after the credential is already in the repository (potentially indexed by GitHub; visible to anyone with repo access); with push protection enabled, the commit is blocked at the developer's machine before the credential reaches GitHub; the developer sees a message: "This commit contains a possible secret — push is blocked"; they can either confirm it's not a real credential (false positive bypass) or remove the credential and use environment variables instead; this is the correct moment to intervene (before the credential is exposed); all MBL GitHub repositories have push protection enabled; Dr. Lewis verifies this when reviewing each repository; a new repository without push protection is the first thing to fix
- Dependabot auto-PRs should be reviewed within SLA, not auto-merged — Dependabot creates pull requests to update vulnerable dependencies; auto-merging these PRs without review risks breaking changes (a major version upgrade that fixes a vulnerability may also change an API); Dr. Lewis's standard: Dependabot PRs for Critical/High vulnerabilities reviewed within 7 days; Dr. Lewis runs the test suite against the updated dependency before merging (cargo test --workspace; npm test); if tests fail: investigate whether the API change is the issue and update calling code before merging; auto-merge for patch versions of well-known, low-risk dependencies is acceptable; auto-merge for major version upgrades is not
- HITL required: secret detected in code → Dr. Lewis alert immediately (push protection prevents commit; post-hoc scanning alerts if push protection missed); rotate credential within 24hr (sec-secrets-manager); assume compromised; entity CEO if sensitive credential; new repository creation → Dr. Lewis enables GitHub security features before first external contributor; CI pipeline security gate → Dr. Lewis configures; pipeline failure on security gate → development must fix before merge (no bypasses); unsafe Rust block added to OpenFang → Dr. Lewis code review required; safety invariant documented; Dependabot Critical CVE → Dr. Lewis reviews and merges within 7 days; production deployment → CI security gate must pass; no manual bypass

## System Dependencies
- **Reads from:** GitHub repository settings (security features; branch protection; Actions configuration); GitHub Dependabot alerts (vulnerability dashboard per repo); GitHub Secret Scanning alerts (credential detections); GitHub Actions run history (CI pipeline results); cargo audit output (RustSec advisory database check — OpenFang); cargo clippy output (zero-warning gate — OpenFang); sec-secrets-manager (credential rotation after detection); sec-vulnerability-scanner (CVE cross-reference — Dependabot findings vs. CISA KEV)
- **Writes to:** GitHub repository security configuration (settings per repo — secret scanning; Dependabot; code scanning; branch protection); GitHub Actions workflow files (.github/workflows/security.yml — cargo audit; clippy; npm audit); Dependabot resolution records (PR merged; date; CVE resolved; Dr. Lewis review; tests passed); secret detection response records (sec-secrets-manager trigger; rotation; entity CEO if applicable); DevSecOps status report (SharePoint → [Entity] → Security → DevSecOps → [Date])
- **HITL Required:** Secret in code → Dr. Lewis immediately; rotate within 24hr; entity CEO if sensitive; new repository → Dr. Lewis enables security features; CI security gate → no bypasses; unsafe Rust → Dr. Lewis code review; safety documented; Dependabot Critical → Dr. Lewis 7-day review + merge; production deployment → CI gate must pass

## Test Cases
1. **Golden path:** Dr. Lewis sets up GitHub security for a new Allevio employer portal repository. Steps: (1) Settings → Security → Enable Secret scanning → Enable Push protection. (2) Settings → Security → Enable Dependabot alerts. (3) Settings → Security → Enable Dependabot security updates (auto-PRs). (4) Settings → Branches → Add protection rule for 'main': require 1 review; require CI status checks to pass; disallow force push. (5) Create .github/workflows/security.yml: runs npm audit on every PR; fails build on High/Critical. (6) Test: commit a fake API key (test string) → push protection blocks with message. (7) Test: create PR with a known-vulnerable npm package → Dependabot opens alert and auto-PR within 24 hours. All features confirmed working. Documentation filed.
2. **Edge case:** cargo audit on OpenFang returns a RUSTSEC-2024-XXXX advisory for a dependency in one of the 14 crates — the advisory is "Informational" severity (not exploitable in current usage): Dr. Lewis: "cargo audit output: RUSTSEC-2024-XXXX — [dependency name] — Informational — 'Potential timing side-channel in hash comparison.' Assessment: (1) Is this vulnerability exploitable in OpenFang's specific usage of the dependency? Review how OpenFang calls the affected function — if it's not used in a security-sensitive context (key comparison; authentication), the practical risk is low. (2) Is there an updated version that resolves the advisory? Check crates.io for the patched version. (3) Update Cargo.toml to the patched version; run cargo test --workspace to confirm no breaking changes. (4) If no patched version exists: document in cargo.audit config as 'ignored with justification' (cargo audit --ignore RUSTSEC-2024-XXXX with a comment explaining the rationale). (5) CISA KEV: check if this advisory is also in the KEV — if yes, treat as Critical regardless of severity label."
3. **Adversarial:** A developer on a Column6 project bypasses the CI security gate by using 'git push --force' to push directly to main, skipping branch protection and the security pipeline: Dr. Lewis: "Branch protection on main should prevent this — if a force push succeeded, either: (1) the developer has Repository Admin permissions (which they shouldn't — only Dr. Lewis and the entity technical lead should have admin); or (2) branch protection was not correctly configured (didn't enable 'Restrict force pushes'). Actions: (1) Review the force push event in GitHub audit log (Organization → Settings → Audit log → search 'push' for the repository). (2) Who pushed? With what permissions? (3) Remove admin permissions from any developer who doesn't need them — developers should have Write permission; Repository Admin should be Dr. Lewis only. (4) Re-verify branch protection settings: Restrict force pushes must be enabled; 'Include administrators' should also be enabled so even admin accounts cannot bypass. (5) Entity CEO notified: unauthorized push bypassed security controls; resolved."

## Audit Log
GitHub security configuration records (repository; features enabled; date; Dr. Lewis; SharePoint). Secret detection records (repository; secret type; push protection blocked/post-commit; rotation initiated; entity CEO if applicable; sec-secrets-manager). Dependabot alert resolution records (repository; CVE; severity; PR merged; test results; Dr. Lewis; date). Branch protection records (repository; rules configured; date; Dr. Lewis; incidents of bypass if any). CI pipeline security gate records (workflow; gate; failures; resolutions; date). Force push incident records (repository; actor; permissions; remediation; entity CEO notification; date).

## Deprecation
DevSecOps controls reviewed annually. GitHub security feature capabilities reviewed as GitHub adds new features (GitHub Advanced Security; new scanner types). Cargo audit / npm audit integration reviewed when tooling major versions update. Branch protection rules reviewed when project team composition changes. CI pipeline security job reviewed when CI/CD platform changes. OpenFang security standards reviewed when codebase architecture changes significantly.
