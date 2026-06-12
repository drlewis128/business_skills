---
name: deployment-checklist
description: "Run through the pre and post deployment checklist for any service. Use when the user says 'deployment checklist', 'pre-deploy', 'post-deploy', 'deploy checklist', 'before we deploy', 'ready to deploy', 'deploy verification', 'production deploy checklist', 'is this ready to ship', or 'deployment readiness'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--service <name>] [--env <staging|production>] [--type <standard|hotfix|rollback>]"
---

# Deployment Checklist

Run structured pre and post deployment verification for MBL engineering services. Deployment checklists prevent the most common causes of production incidents: missed configuration, untested migrations, unverified rollback paths, and missing stakeholder communication. This skill is a lightweight gate, not a bureaucratic process — it should take 5-10 minutes to run through.

## When to Use
- Before any production deployment
- Before any staging deployment that stakeholders depend on
- Hotfix deployment (abbreviated checklist)
- After a failed deployment — assess state before rollback or retry
- Quarterly — verify that checklist items are still current

## Standard Deployment Checklist

### Pre-Deploy — Engineering Readiness

```
CODE QUALITY
  [ ] All CI checks passing (clippy, tests, security scan)
  [ ] No debug/TODO/FIXME items left in changed files
  [ ] Code review completed and approved

DATABASE
  [ ] No pending migrations? (deploy proceeds) / Migrations exist — continue below
  [ ] Migration reviewed by Dr. Lewis
  [ ] Migration tested on staging with production-scale data (if >1M rows)
  [ ] Migration rollback script written and tested
  [ ] Estimated migration runtime: <N> min (if >5 min = downtime risk)

CONFIGURATION
  [ ] All required environment variables set in target environment
  [ ] Secrets confirmed in vault (not in code or config files)
  [ ] Feature flags in correct state for this deployment
  [ ] External API keys valid (not expired, correct environment)

ROLLBACK
  [ ] Previous artifact version identified: v<version>
  [ ] Rollback command documented and accessible to on-call
  [ ] Rollback tested on staging (for major releases)
  [ ] Estimated rollback time: <N> minutes
```

### Pre-Deploy — Communication

```
  [ ] Deployment window communicated to on-call team
  [ ] Any stakeholders that need to know: notified
  [ ] Monday.com board updated: "Deployment in progress — <service> v<version>"
  [ ] On-call engineer confirmed available during deploy window
  [ ] Dr. Lewis aware of deployment (all production deploys)
```

### Deploy Execution

```
  [ ] Deployment triggered via pipeline (not manual file copy)
  [ ] Deployment log being monitored in real-time
  [ ] Health check endpoint polled post-deploy: curl https://<service>/health
  [ ] Health check returns 200 within 2 minutes
  [ ] Error rate checked in monitoring — within 1% of baseline
```

### Post-Deploy — Verification

```
FUNCTIONAL VERIFICATION
  [ ] Golden path test: <specific user flow — document per service>
  [ ] Previously broken functionality (if hotfix): confirmed fixed
  [ ] No new 4xx/5xx errors in logs in first 5 minutes post-deploy

MONITORING
  [ ] Alerts active (not silenced from previous deploy or testing)
  [ ] Dashboards showing post-deploy metrics
  [ ] Log shipping confirmed (logs visible in aggregation tool)

STAKEHOLDER COMMUNICATION
  [ ] Deployment complete status posted (Monday.com / Slack / Teams)
  [ ] Release notes linked if external release
  [ ] Matt Mathison notified (major releases only)
```

## Hotfix Checklist (Abbreviated)

```
  [ ] Root cause confirmed before deploying fix
  [ ] Fix tested in staging (minimum: reproduce bug, apply fix, confirm resolved)
  [ ] Dr. Lewis approves hotfix deployment
  [ ] On-call monitoring for 30 minutes post-deploy
  [ ] Full post-mortem scheduled within 48 hours
```

## Output Format

```markdown
# Deployment Checklist — <Service> v<version>
**Date:** <date> | **Environment:** Staging / Production
**Deployer:** <name> | **Approved by:** Dr. John Lewis
**Deployment type:** Standard / Hotfix / Rollback

---

## Pre-Deploy Status

| Category | Status | Notes |
|---------|--------|-------|
| CI checks | ✅ All passing | |
| Code review | ✅ Approved | Reviewed by: [name] |
| Database migrations | ✅ None / ⚠️ 1 migration | Reviewed, tested in staging |
| Configuration | ✅ All env vars set | |
| Rollback plan | ✅ v1.2.1 identified | Rollback: 5 min |
| Stakeholders notified | ✅ | Monday.com updated |

**Pre-deploy verdict:** ✅ CLEAR TO DEPLOY / ❌ BLOCKED — [reason]

---

## Deployment Log

**Triggered:** <time>
**Deploy method:** GitHub Actions pipeline (run #<N>)
**Completed:** <time> | **Duration:** <N> min

```
[deployment output or link to pipeline run]
```

---

## Post-Deploy Verification

| Check | Result | Notes |
|-------|--------|-------|
| Health endpoint | ✅ 200 OK | Response time: 45ms |
| Error rate | ✅ 0.3% (baseline 0.2%) | Within tolerance |
| Golden path test | ✅ Meeting summary flow works | Tested manually |
| Monitoring alerts | ✅ Active | |

**Post-deploy verdict:** ✅ DEPLOYMENT SUCCESSFUL / ❌ ROLLBACK INITIATED — [reason]

---

## Issues Found

| Issue | Severity | Action |
|-------|---------|--------|
| [Issue] | P3 | Ticket filed #[N] — fix in next sprint |

---

## Sign-off

Deployment completed by: _______________________
Approved by: Dr. John Lewis | Date: <date>
```

## Output Contract
- Pre-deploy verdict always binary — clear to deploy or blocked with specific reason
- Rollback plan always filled in before deployment proceeds — no exceptions
- Post-deploy verification always run and documented — "it deployed" ≠ "it works"
- Dr. Lewis sign-off required on all production deployments — non-delegable
- HITL required: Dr. Lewis approves all production deployments; hotfixes require same approval (faster process, not bypassed); Allevio deployments with PHI system changes require compliance notification

## System Dependencies
- **Reads from:** CI/CD pipeline status (GitHub Actions); Monday.com board; environment configuration; monitoring dashboard
- **Writes to:** Deployment log (SharePoint/Engineering); Monday.com deployment status update
- **HITL Required:** Dr. Lewis approves all production deploys; Allevio PHI-system deploys require compliance awareness

## Test Cases
1. **Golden path:** Production deploy of Meeting Intelligence API v1.3.0 → all CI checks green; no migrations; env vars confirmed; rollback to v1.2.1 documented; deployed via pipeline in 3 min; health check 200 in 45s; error rate stable; golden path test passes; Monday.com updated; Dr. Lewis sign-off recorded
2. **Edge case:** Deploy reveals a configuration issue post-deploy (wrong API endpoint in env var) → immediate: determine if rollback is faster than config fix (usually yes for config errors); rollback to previous version; fix config; re-deploy; document in checklist why the config check missed this; update pre-deploy checklist
3. **Adversarial:** Developer wants to deploy directly to production without going through the pipeline "just this once" → no exceptions on production deployment process; manual deployments bypass audit trail, security scanning, and rollback tracking; the checklist exists precisely for urgent situations; a 10-minute pipeline is faster than a 4-hour incident

## Audit Log
Deployment checklists retained by deploy event. Production approvals documented. Rollback events logged with root cause.

## Deprecation
Retire when deployment process is fully automated with automated verification and the checklist items are enforced programmatically by the CI/CD platform.
