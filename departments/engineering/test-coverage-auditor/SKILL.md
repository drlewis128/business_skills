---
name: test-coverage-auditor
description: "Analyze test coverage gaps across a codebase. Use when the user says 'test coverage audit', 'what is not tested', 'find untested code', 'coverage gaps', 'what should we write tests for first', 'improve test coverage', 'critical paths without tests', 'test quality review', or 'are our tests any good'. Goes beyond a coverage percentage — identifies which untested code matters most and assesses test quality."
metadata:
  version: 1.0.0
  tier: code-audit
  owner: Dr. John Lewis
argument-hint: "<project-directory> [--run-coverage]"
---

# Test Coverage Auditor

Analyze test coverage gaps by risk, not just percentage. A codebase with 95% coverage can still collapse in production if the untested 5% is the payment processing path. This skill finds the critical untested paths first.

## When to Use

- Before a major release
- After adding significant new features without tests
- When production bugs keep occurring in "tested" code
- When onboarding a new team to an existing codebase
- During a technical debt sprint focused on test improvement

## Input

`$ARGUMENTS`: Project root directory.

`--run-coverage`: If provided, attempt to run the native coverage tool and parse its output. Otherwise, analyze test structure statically.

## Coverage Analysis Process

### Step 1 — Run Native Coverage Tools (if `--run-coverage`)

| Ecosystem | Command |
|-----------|---------|
| Rust | `cargo tarpaulin --out Json` or `cargo llvm-cov --json` |
| Node/TS | `npx jest --coverage --json` or `npx c8 report --reporter=json` |
| Python | `pytest --cov --cov-report=json` |
| Go | `go test ./... -coverprofile=coverage.out && go tool cover -html=coverage.out` |

Parse the JSON output for line/branch/function coverage percentages per file.

If tools not available or `--run-coverage` not set → proceed with static analysis (Step 2).

### Step 2 — Static Coverage Analysis

Map test files to source files:

| Source file | Expected test file |
|-------------|-------------------|
| `src/auth.rs` | `src/auth_test.rs` or `tests/auth.rs` |
| `src/utils.ts` | `src/utils.test.ts` or `src/utils.spec.ts` |
| `auth/service.py` | `tests/test_auth.py` or `auth/test_service.py` |

Flag source files with no corresponding test file as **Untested**.

For source files that have test files, check:
- Number of test functions vs source functions (rough ratio)
- Presence of error path tests (look for test names containing: `error`, `fail`, `invalid`, `edge`, `empty`, `nil`, `null`, `panic`, `reject`)
- Presence of integration tests (look for test names containing: `integration`, `e2e`, `end_to_end`, `http`, `db`, `api`)

### Step 3 — Risk-Weight the Gaps

Not all untested code is equal. Weight by:

| Signal | Risk Multiplier |
|--------|----------------|
| Handles money/payments | 5× |
| Handles authentication/authorization | 5× |
| Handles PII or health data | 4× |
| Public API endpoint | 3× |
| Database write operation | 3× |
| Core business logic (non-utility) | 2× |
| Utility/helper function | 1× |
| Configuration/setup code | 0.5× |

Identify risk signals from:
- Function/file names containing: `payment`, `charge`, `billing`, `auth`, `login`, `password`, `token`, `pii`, `health`, `medical`, `phi`
- HTTP handlers (routes)
- Database mutation functions (`insert`, `update`, `delete`, `save`, `write`)

### Step 4 — Test Quality Analysis

For test files that exist, assess quality signals:

**Green flags (good tests):**
- Multiple test cases per function (parameterized tests)
- Tests for error paths, not just happy path
- Setup/teardown present
- Assertions are specific (not just `assert!(result.is_ok())`)
- Test names describe behavior: `test_user_login_fails_with_invalid_password`

**Red flags (weak tests):**
- Single test per function (only happy path)
- `assert!(true)` or empty test bodies
- Excessive mocking (mocks everything, tests nothing real)
- Tests that never assert anything (`cargo test` passes but nothing is verified)
- Test names are generic: `test1`, `test_function`, `it_works`
- Tests that rely on production external services (fragile)

### Step 5 — Integration Test Presence Check

For each identified HTTP endpoint or database operation, check if there's a corresponding integration test. Flag absent integration tests on:
- All HTTP API routes
- All database write operations
- All external service integrations (QuickBooks, Bill.com, etc.)

Note: Per CLAUDE.md technical standards — live integration testing is mandatory. Flag any endpoint without integration test coverage as High risk.

## Output Format

```markdown
# Test Coverage Audit
**Project:** <path>
**Date:** <today>
**Method:** Static analysis / Coverage tool output (<tool>)

---

## Coverage Summary
| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Source files with test files | <N>/<total> (<pct>%) | >80% | ✅/⚠️/❌ |
| Integration tests present | <N>/<endpoints> | 100% | ... |
| Error path tests | ~<pct>% of test files | >50% | ... |
| Line coverage (if measured) | <pct>% | >80% | ... |

---

## 🔴 Critical Gaps — High Risk, Untested

These are untested paths where a failure would be severe:

1. `src/payments/charge.rs` — **Payment processing** — 0 test files found
   Risk: 5× (financial data) — **Priority: IMMEDIATE**
   
2. `src/auth/jwt_validator.rs` — **JWT validation** — happy path only, no failure tests
   Risk: 5× (authentication) — **Priority: IMMEDIATE**

---

## 🟠 High Gaps — Moderate Risk, Untested

3. `src/api/users.rs` — **User CRUD endpoints** — no integration tests
   Risk: 3× (public API) — **Priority: This sprint**
...

---

## Test Quality Issues

| File | Issue | Severity |
|------|-------|---------|
| `tests/auth_test.rs` | Only 1 test, no error paths | High |
| `tests/utils_test.rs` | 3 empty test stubs | Medium |
...

---

## Recommended Test Writing Priority Queue

| Rank | Target | Test Type | Estimated Effort |
|------|--------|-----------|-----------------|
| 1 | `payments/charge.rs` | Unit + Integration | 4h |
| 2 | `auth/jwt_validator.rs` | Unit (error paths) | 2h |
| 3 | `api/users.rs` — endpoints | Integration | 3h |
...

---

## Already Well-Tested
<N> files have comprehensive test coverage — no action needed.
```

## Output Contract

- Risk weighting is transparent and explained
- `--run-coverage` mode uses actual tool output; static mode is explicit about its limitations
- Read-only — no test files created (that's the engineer's job from this report)
- Never marks coverage as "good" based on percentage alone — quality matters

## System Dependencies

- **Reads from:** File system (source and test files)
- **Executes (optional with `--run-coverage`):** `cargo tarpaulin`, `jest`, `pytest --cov`, `go test`
- **Writes to:** Nothing

## Feedback

Engineering leads (Tier 2) may calibrate risk multipliers for domain-specific code. Log via `skill-feedback-collector`.
