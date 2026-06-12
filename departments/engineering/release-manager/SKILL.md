---
name: release-manager
description: "Manage software releases from planning through deployment. Use when the user says 'manage the release', 'release planning', 'release notes', 'what's in this release', 'version bump', 'prepare for release', 'release candidate', 'release checklist', 'cut a release', or 'ship this version'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--version <semver>] [--repo <name>] [--mode <plan|notes|deploy|retro>]"
---

# Release Manager

Manage software releases from planning through deployment for MBL engineering. A release is a coordination event — code, tests, documentation, communications, and deployment all need to align. This skill produces the release plan, release notes, pre-deploy checklist, and post-deploy verification, ensuring nothing is missed and everyone who needs to know is notified.

## When to Use
- Planning an upcoming release (what's in scope, what's deferred)
- Writing release notes from commits and feature descriptions
- Pre-deployment release checklist verification
- Managing a hotfix release
- Post-deployment retrospective on release quality

## Semantic Versioning Guide

```
MAJOR.MINOR.PATCH (e.g., 2.1.3)

MAJOR — breaking change: existing integrations must update
  Examples: changed API contract, removed endpoint, incompatible data model

MINOR — new capability, backwards compatible
  Examples: new endpoint, new optional field, new feature

PATCH — bug fix, backwards compatible
  Examples: error handling fix, performance improvement, typo in message

Pre-release: 2.1.0-beta.1, 2.1.0-rc.1
Hotfix: follows PATCH rules — increment PATCH, deploy immediately
```

## Release Checklist

### Pre-Release (24-48 hours before deploy)
- [ ] Version bumped in all relevant files (Cargo.toml, package.json, version constants)
- [ ] CHANGELOG.md updated with all changes in this release
- [ ] All tests passing in CI (zero failures, zero skips)
- [ ] Security scan passing (zero critical vulnerabilities)
- [ ] Database migrations reviewed (if any) — see `schema-migration-auditor`
- [ ] Release notes written and reviewed
- [ ] Deployment target confirmed (staging tested, production config verified)
- [ ] Rollback plan documented
- [ ] On-call engineer confirmed for deployment window

### Deploy Day
- [ ] Deployment window communicated to stakeholders
- [ ] Staging deploy verified (smoke tests passing)
- [ ] Production deploy triggered (manual approval gate)
- [ ] Health check endpoint returning 200 within 2 minutes
- [ ] Error rate baseline confirmed (no spike post-deploy)
- [ ] Key user flows tested manually (golden path)
- [ ] Monitoring alerts confirmed active

### Post-Deploy (within 24 hours)
- [ ] Release notes published (GitHub, internal wiki)
- [ ] Stakeholders notified (email or Monday.com update)
- [ ] Any issues found documented in follow-up ticket
- [ ] Release retrospective scheduled if issues occurred

## Output Format

```markdown
# Release Plan — v<version>
**Repository:** <repo name>
**Target date:** <date>
**Release type:** Major / Minor / Patch / Hotfix
**Release lead:** Dr. John Lewis
**On-call during deploy:** <name>

---

## Release Summary

**What's in this release:** <2-3 sentences in plain English — business value, not tech speak>
**What's NOT in this release (deferred):** <list if anything was descoped>
**Breaking changes:** Yes — <describe> / No

---

## Changes

### New Features
- [Feature]: <what it does and who benefits>

### Bug Fixes
- [Bug]: <what was fixed and what broke before>

### Performance Improvements
- [Item]: <before/after if measurable>

### Security Updates
- [Item]: <what was patched>

### Breaking Changes
- [Item]: <what changes and what callers must do>

---

## Migration Guide (if breaking changes)

```
If you are using [old endpoint/method]:
  Before: [old usage]
  After:  [new usage]
  Deadline: Old endpoint deprecated; removed in v<X>
```

---

## Deployment Plan

**Environment order:** staging → production
**Deploy command:**
```bash
[specific deploy command]
```

**Rollback command:**
```bash
[specific rollback command]
```

**Health check:**
```bash
curl -s https://<service>/health | jq .
```

**Go/No-go criteria:**
- Health endpoint returns 200: ✅ / ❌
- Error rate stable (<1% above baseline): ✅ / ❌
- [Key user flow] working: ✅ / ❌

---

## Communication Plan

| Audience | Channel | Message | When |
|---------|---------|---------|------|
| Engineering team | Slack / Teams | Release in progress | Before deploy |
| Portfolio users | Email | Release notes | After successful deploy |
| Matt Mathison | Summary email | What shipped and what's next | Day after deploy |

---

## Post-Deploy Verification Checklist

- [ ] Health endpoint: 200 ✅
- [ ] Error rate: <baseline + 1% ✅
- [ ] [Critical flow 1]: tested manually ✅
- [ ] [Critical flow 2]: tested manually ✅
- [ ] Monitoring alerts: active ✅
- [ ] Release notes: published ✅
```

## Output Contract
- Rollback plan always documented before deploy — deploying without a rollback plan is flying without instruments
- Breaking changes always documented with migration timeline — minimum 90-day deprecation period
- Go/no-go criteria always binary — subjective criteria lead to subjective decisions under pressure
- Stakeholder communication always planned — technical team knowing ≠ business knowing
- HITL required: Dr. Lewis approves production release; Matt Mathison notified of major releases; Allevio releases with patient data impact require compliance review before deploy

## System Dependencies
- **Reads from:** Git log and tags, CHANGELOG.md, CI/CD pipeline status, Monday.com board (release items)
- **Writes to:** CHANGELOG.md, GitHub release, release notes document (SharePoint)
- **HITL Required:** Dr. Lewis approves production deploy; compliance review for Allevio releases with PHI impact

## Test Cases
1. **Golden path:** Release v1.3.0 of MBL Meeting Intelligence API → minor release (new action item extraction endpoint); CHANGELOG updated; release notes written; staging deploy verified; production deploy approved by Dr. Lewis; health check passes; Matt Mathison notified; error rate stable
2. **Edge case:** Hotfix needed — production bug causing incorrect meeting summaries → increment PATCH (v1.3.1); skip full release cycle; verify fix in staging (30 min); deploy to production with Dr. Lewis on standby; verify immediately; document root cause; schedule post-mortem
3. **Adversarial:** Team wants to skip release notes because "it's just a small fix" → release notes are required for every release to production; they create the audit trail; small fixes become big problems when they break something and there's no record of what changed; time cost: 15 minutes; risk cost of skipping: incalculable

## Audit Log
Release plans retained by version. Deployment approvals logged. Rollback events documented. Post-deploy verification results retained.

## Deprecation
Retire when engineering team has automated release management integrated into CI/CD with automated changelog generation, version bumping, and stakeholder notifications.
