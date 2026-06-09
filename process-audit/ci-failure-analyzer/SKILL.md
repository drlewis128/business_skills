---
name: ci-failure-analyzer
description: "Diagnose CI/CD pipeline failures from build logs. Use when the user says 'CI is broken', 'build failed', 'analyze this build log', 'why did the pipeline fail', 'fix the CI error', 'test failures in CI', 'deployment pipeline broken', 'GitHub Actions failing', 'cargo build failed in CI', or 'what does this CI error mean'. Paste the build log as input or provide the log file path."
metadata:
  version: 1.0.0
  tier: process-audit
  owner: Dr. John Lewis
argument-hint: "<log-file-path | paste log after command>"
---

# CI Failure Analyzer

Parse CI/CD build logs, identify the root failure, and return a prioritized diagnosis with a specific fix. No more reading 500 lines of log to find the 3 lines that matter.

## When to Use

- A CI build just failed and you need to understand why fast
- A pipeline has been intermittently failing (flaky detection)
- You're investigating a regression introduced by a recent commit
- The error message is cryptic and you need it translated to actionable steps

## Input

`$ARGUMENTS`: Either:
1. Path to a log file: `ci-failure-analyzer /path/to/build.log`
2. No argument — then the log should be pasted directly into the conversation

## Analysis Process

### Step 1 — Identify CI System and Stage

Detect CI system from log patterns:
- GitHub Actions: `Run actions/`, `##[error]`, `::error::`
- GitLab CI: `$ <command>`, `ERROR: Job failed`
- Jenkins: `[Pipeline]`, `BUILD FAILURE`
- CircleCI: `CircleCI`, `Exited with code`
- Bitbucket Pipelines: `+ <command>`, `exit status`
- Local `cargo`/`npm`/`python`: direct tool output

Identify the failing stage:
- Build / compile
- Lint / format check
- Test (unit)
- Test (integration)
- Deploy
- Security scan
- Other

### Step 2 — Extract the Root Failure

Scan backward from the terminal failure signal. Common patterns:

| Signal | Meaning |
|--------|---------|
| `error[EXXXX]` | Rust compile error — extract error code |
| `FAILED` / `FAIL` after test name | Test failure — extract test name and assertion |
| `Error:` / `TypeError:` / `SyntaxError:` | JS/TS runtime or compile error |
| `error:` lowercase + indented context | Rust/Go linker or runtime error |
| `FAILED` + traceback | Python test failure |
| `Process completed with exit code <N>` | Generic shell failure — find the last non-zero exit |
| `permission denied` | File/directory permissions issue |
| `command not found` | Missing tool in CI environment |
| `ECONNREFUSED` / `connection refused` | Service dependency not running in CI |
| `Out of memory` / `OOM` | Memory allocation failure |
| `timeout` | Step exceeded time limit |
| `no such file or directory` | Missing file — path or artifact problem |

**Ignore:** Warnings, deprecation notices, verbose success output. Go straight to the first ERROR or FAILED signal.

### Step 3 — Classify Failure Type

| Type | Description | Fix Pattern |
|------|-------------|------------|
| **Compile error** | Code won't build | Fix the code; check error code |
| **Test failure** | Tests ran but assertions failed | Inspect failing assertion; check recent changes |
| **Flaky test** | Test sometimes passes, sometimes fails | Add retry, isolate external dependency, fix race condition |
| **Environment issue** | Missing tool, wrong version, bad config | Fix CI config or add missing setup step |
| **Dependency issue** | Package not found, version conflict | Fix lockfile or dependency spec |
| **Permission issue** | Can't write/read a path | Fix CI permissions or path |
| **Service dependency** | Database/Redis/etc. not started | Add service container to CI config |
| **Timeout** | Step ran too long | Optimize step or increase timeout |
| **Secret/credentials** | Missing env var or expired token | Fix CI secret configuration |
| **Resource exhaustion** | OOM, disk full | Increase resources or reduce consumption |
| **Regression** | Recently passing, now failing | Bisect recent commits |

### Step 4 — Identify Contributing Context

Look for:
- What commit triggered this failure? (look for SHA in log)
- Is this the first failure or a recurring one?
- Are there warnings immediately preceding the error?
- Did the same step pass in a previous run visible in the log?

### Step 5 — Generate Fix

Based on failure type and specific error, produce:
1. Exact root cause (1 sentence)
2. The specific line in the code or config that needs to change
3. The fix (code snippet, config change, or command)
4. Verification step: how to confirm the fix worked locally before pushing

## Output Format

```markdown
# CI Failure Analysis
**Log Source:** <file or pasted>
**CI System:** <detected>
**Failing Stage:** <stage>
**Date:** <today>

---

## Root Cause (BLUF)
**<One sentence: what failed and why>**

---

## Failure Details

**Type:** <Compile Error / Test Failure / Environment Issue / ...>
**First error signal at line:** <N> of log
**Error message:**
```
<extracted error text — just the critical lines>
```

**Contributing context:**
<any relevant warnings, recent changes, or environmental signals>

---

## Fix

**File/Config to change:** `<path>`

**Before:**
```
<failing code or config>
```

**After:**
```
<fixed code or config>
```

**Explanation:** <why this fixes it>

---

## Verification
Run this locally to confirm before pushing:
```bash
<command>
```
Expected output: <what success looks like>

---

## Flakiness Assessment
**Is this likely flaky?** Yes / No
<If yes: evidence of intermittency and recommended fix>

---

## Related
<Any related files, tests, or configs that may need updating alongside this fix>
```

## Output Contract

- Always leads with the BLUF root cause
- Never summarizes the entire log — extract only the signal
- Provides a verifiable local test command
- Flags flakiness explicitly when detected
- Read-only analysis — never modifies source files or CI config directly

## System Dependencies

- **Reads from:** Pasted log content or file system (log file)
- **Writes to:** Nothing (read-only)

## Feedback

Engineering leads (Tier 2) may provide CI system-specific context or custom error patterns. Log via `skill-feedback-collector`.
