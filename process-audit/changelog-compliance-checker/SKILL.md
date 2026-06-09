---
name: changelog-compliance-checker
description: "Enforce changelog requirements on PRs, commits, and releases. Use when the user says 'check the changelog', 'is the changelog up to date', 'changelog compliance', 'PR is missing changelog', 'validate changelog format', 'changelog audit', 'does this PR have a changelog entry', 'CHANGELOG.md review', or 'check if changes are documented'. Also use before cutting a release to verify all changes since last release are logged."
metadata:
  version: 1.0.0
  tier: process-audit
  owner: Dr. John Lewis
argument-hint: "<changelog-file | PR-diff | --pre-release>"
---

# Changelog Compliance Checker

Verify that changes are properly documented in CHANGELOG.md before they're merged or released. Undocumented changes become support tickets, surprise regressions, and confused engineers six months later.

## When to Use

- As a pre-merge gate on PRs that modify user-facing or API-level code
- Before cutting any release (run `--pre-release`)
- When auditing historical changelog quality
- When onboarding a project to a changelog discipline

## Changelog Standards Enforced

Follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) with the following extensions:

### Required Sections Under Each Version

| Section | Required When |
|---------|--------------|
| `### Added` | Any new feature, endpoint, field, command |
| `### Changed` | Any behavior modification, output format change |
| `### Deprecated` | Any feature marked for removal in a future version |
| `### Removed` | Any feature, endpoint, field, or command that was deleted |
| `### Fixed` | Any bug fix |
| `### Security` | Any security fix or vulnerability remediation — **MANDATORY if security change exists** |

### Entry Format Requirements

Each entry must:
- Be a bullet point (`- `)
- Start with a capital letter
- Not end with a period
- Describe what changed in user-facing terms (not implementation details)
- For PRs: include PR number or issue reference when available

**Acceptable:** `- Added support for OAuth2 PKCE flow in the authentication module`
**Not acceptable:** `- changed auth.rs line 42 to use sha256 instead of sha1`
**Not acceptable:** `- Fixed stuff`

### Version Header Format

```markdown
## [1.2.3] - 2026-06-09
```
or for unreleased:
```markdown
## [Unreleased]
```

## Modes

### Default Mode — Validate a changelog file

Reads `CHANGELOG.md` (or provided path) and validates format and completeness.

### PR Mode — Check a PR for changelog entry

Given a PR diff, checks:
1. Does the PR modify user-facing code?
2. If yes — does `CHANGELOG.md` contain a new entry under `[Unreleased]`?
3. Does the entry accurately describe the change?

### Pre-Release Mode (`--pre-release`)

Before cutting a release:
1. Check `[Unreleased]` section exists and has entries
2. Verify all significant commits since last release tag are represented
3. Check no entries remain under `[Unreleased]` that should have been in a prior release
4. Flag any `Security` changes that don't have a CVE reference

## Audit Process

### Step 1 — Parse CHANGELOG.md

- Detect format: Keep a Changelog / Conventional Commits / Free-form
- Extract version blocks and their sections
- Check for required `[Unreleased]` section at top

### Step 2 — Format Validation

For each entry:
- Does it start with `- `?
- Does it start with a capital letter?
- Does it avoid implementation jargon?
- Is it in the correct section?

For each version header:
- Is the version in `[X.Y.Z]` format?
- Is the date present and in ISO format (YYYY-MM-DD)?
- Are versions in descending order?

### Step 3 — Coverage Check (PR Mode)

Scan the PR diff for:
- New public API endpoints or functions
- Modified response schemas or output formats
- Removed features or deprecated behavior
- Security-relevant changes (auth, crypto, access control, input validation)
- Dependency version bumps (major versions)

For each significant change found: check if there's a corresponding changelog entry.

### Step 4 — Pre-Release Audit

1. Get the last release tag: `git describe --tags --abbrev=0`
2. List commits since that tag: `git log <tag>..HEAD --oneline`
3. For each commit that modifies source files (not docs/tooling): verify a changelog entry exists
4. Verify `[Unreleased]` header will become the new version — prompt for version number if missing

## Output Format

```markdown
# Changelog Compliance Report
**File:** CHANGELOG.md
**Mode:** Validate / PR Check / Pre-Release
**Date:** <today>

---

## Status: ✅ COMPLIANT / ⚠️ WARNINGS / ❌ NON-COMPLIANT

---

## Format Issues

| Line | Issue | Fix |
|------|-------|-----|
| 24 | Version header missing date | Add ` - YYYY-MM-DD` |
| 31 | Entry starts lowercase | Capitalize first word |
| 45 | Entry ends with period | Remove trailing period |
...

## Coverage Gaps (PR/Pre-Release Mode)

### Changes without changelog entries:
- `src/api/auth.rs` — Added `/auth/refresh` endpoint — **no changelog entry found**
- `Cargo.toml` — `sqlx` bumped from 0.6 → 0.7 (major) — **no changelog entry found**

### Security changes requiring `### Security` section:
- `src/crypto.rs` — SHA-1 replaced with SHA-256 — **missing from Security section**

---

## Unreleased Section Preview
Current `[Unreleased]` entries:
<preview of what will become the next release notes>

---

## Pre-Release Checklist (Pre-Release Mode)
- [ ] Move `[Unreleased]` to `[X.Y.Z] - <date>`
- [ ] Add link at bottom of file: `[X.Y.Z]: <compare-url>`
- [ ] Create new empty `[Unreleased]` section at top
- [ ] Tag the release: `git tag -a vX.Y.Z -m "Release vX.Y.Z"`

---

## Verdict
**Merge allowed:** Yes / No (missing entries required before merge)
**Release allowed:** Yes / No (fix format issues first)
```

## Output Contract

- Non-compliant PRs with security changes are hard-blocked (never "just merge it and fix later")
- Format validation is deterministic — same input always produces same result
- Coverage gap detection is heuristic — may have false positives; flag them via `skill-feedback-collector`
- Never modifies CHANGELOG.md directly — outputs what needs to change

## System Dependencies

- **Reads from:** File system (`CHANGELOG.md`, source files for PR mode)
- **Executes (optional):** `git log`, `git describe` for pre-release mode
- **Writes to:** Nothing (read-only)

## Feedback

Engineering leads (Tier 2) may define project-specific exempt file patterns (e.g., docs-only PRs don't require changelog entries). Log via `skill-feedback-collector`.
