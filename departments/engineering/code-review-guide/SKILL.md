---
name: code-review-guide
description: "Conduct structured code reviews and produce review feedback. Use when the user says 'review this code', 'code review', 'PR review', 'feedback on this code', 'is this code good', 'review my implementation', 'give me a code review', 'review this pull request', or 'critique this code'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--pr <url>] [--focus <security|performance|correctness|style>] [--depth <quick|standard|deep>]"
---

# Code Review Guide

Conduct structured code reviews for MBL engineering. Code review is the primary quality gate before code ships — it catches bugs, enforces standards, spreads knowledge across the team, and maintains architectural consistency. Good code review is specific, actionable, and balanced (both issues and praise). Bad code review is vague, nitpicky, or absent.

## When to Use
- Any PR before it merges to main
- Reviewing code submitted by an engineer for feedback
- Architecture review of a significant implementation
- Security review focus on a sensitive component
- Post-incident code review to understand what happened

## Review Levels

| Level | Scope | Time | Use When |
|-------|-------|------|----------|
| **Quick** | Obvious bugs, security issues, naming | 5-10 min | Trivial changes, doc updates |
| **Standard** | Logic, tests, patterns, performance | 15-30 min | Feature PRs, bug fixes |
| **Deep** | Architecture, security, long-term maintainability | 30-60 min | New systems, security-sensitive, breaking changes |

## Review Checklist

### Correctness (highest priority)
- [ ] Does the code actually solve the stated problem?
- [ ] Are edge cases handled (empty input, null, overflow, concurrent access)?
- [ ] Is error handling complete — no `unwrap()` in production paths, no silent failures?
- [ ] Is the logic correct in all branches? (Check off-by-one, wrong comparisons)
- [ ] Are database operations atomic where they need to be?

### Security
- [ ] No credentials, secrets, or PII in code or comments
- [ ] Input validated before use (SQL injection, command injection, XSS if applicable)
- [ ] Authentication and authorization checked at the right level
- [ ] Sensitive data not logged
- [ ] PHI handling (Allevio): is PHI accessed appropriately with audit logging?

### Performance
- [ ] No N+1 queries (ORM lazy loading, loop-inside-loop DB calls)
- [ ] Appropriate use of caching; no unbounded cache growth
- [ ] No blocking operations in async context (Rust: no `std::thread::sleep` in tokio tasks)
- [ ] Memory: no unnecessary clones, no unbounded collection growth

### Tests
- [ ] Tests exist for the new behavior
- [ ] Tests cover the happy path AND at least one error/edge case
- [ ] Tests are readable and document intent
- [ ] Tests don't have artificial `sleep` or flaky timing

### Code Quality
- [ ] Function/variable names describe what they do
- [ ] Functions have single responsibility (<50 lines is a useful heuristic; not a rule)
- [ ] Comments explain WHY, not WHAT (code explains what; comments explain non-obvious reasons)
- [ ] No dead code, no commented-out code blocks
- [ ] Dependencies: is a new dependency justified? (Check `Cargo.toml` adds)

### Rust-Specific
- [ ] No unnecessary `clone()` in hot paths
- [ ] Lifetimes are correct; no `'static` abuse
- [ ] Error types are meaningful, not just `Box<dyn Error>` everywhere
- [ ] `async fn` doesn't block; spawn_blocking used for sync I/O
- [ ] Clippy would pass (no `#[allow(clippy::...)]` without justification)

## Review Comment Format

```
Use the MUST/SHOULD/NIT framework:

MUST: Blocking — must be fixed before merge
  Bug, security issue, incorrect logic, missing error handling
  Example: "MUST: This `unwrap()` will panic if the DB connection drops. 
            Use `?` or handle the error."

SHOULD: Non-blocking recommendation — strongly suggested
  Design improvement, performance, missing test coverage
  Example: "SHOULD: This query will N+1 for any non-trivial list. Consider 
            eager loading or a JOIN."

NIT: Style preference — take or leave
  Naming, formatting, minor cleanup
  Example: "NIT: `get_user_data` could be more specific — `fetch_user_profile` 
            better describes what it returns."

Always include:
  - What's wrong
  - Why it matters (skippable for obvious issues)
  - How to fix it (specific, not vague)
```

## Output Format

```markdown
# Code Review — <PR Title / Branch>
**Date:** <date> | **Reviewer:** Dr. John Lewis
**PR:** [link] | **Author:** <name>
**Review depth:** Quick / Standard / Deep
**Lines changed:** <N>

---

## Summary

**Overall assessment:** Approve / Request changes / Needs discussion
**Blocking issues:** <N MUST items> | **Recommendations:** <N SHOULD items> | **Nits:** <N NIT items>

---

## MUST Fix (Blocking)

### [File:Line] — <Brief title>

**Issue:** <specific problem>
**Impact:** <what could go wrong or does go wrong>
**Fix:**
```rust
// Instead of this:
let user = get_user(id).unwrap();

// Do this:
let user = get_user(id)
    .map_err(|e| ApiError::Database(e))?;
```

---

## SHOULD Consider (Recommended)

### [File:Line] — <Brief title>
**Recommendation:** <what to do and why>

---

## What's Working Well

- [Specific praise]: <what's done well and why it's good practice>
- [Test coverage]: <if tests are thorough, say so specifically>

---

## Questions for Author

- [Question about intent, not criticism]: <question>
```

## Output Contract
- MUST/SHOULD/NIT framework always used — severity of feedback matters
- Praise always included — code review that's only negative is demoralizing and incomplete
- Code fixes always specific — "fix this" without a suggestion is not useful
- Security issues always surfaced as MUST — no security issue is a NIT
- HITL required: Dr. Lewis reviews all PRs to main for OpenFang and MBL core systems; security-sensitive PRs require Dr. Lewis review regardless of who wrote them; Allevio PHI-touching code requires Dr. Lewis review before merge

## System Dependencies
- **Reads from:** Pull request diff, CI/CD check results, linked ticket/issue
- **Writes to:** PR review comments (GitHub)
- **HITL Required:** Dr. Lewis reviews critical and security-sensitive PRs; Allevio PHI code changes require Dr. Lewis sign-off

## Test Cases
1. **Golden path:** Standard review of Meeting Intelligence API PR (new endpoint) → 1 MUST (missing error handling on DB call), 2 SHOULDs (N+1 query pattern and missing test for empty result), 3 NITs (naming, comment, formatting); specific fixes provided; 2 praise items (good test structure, clean error types); author address MUSTs; merge after re-review
2. **Edge case:** Reviewing code that introduces a new external dependency → always scrutinize new deps: is this in Cargo.toml? Is this crate maintained (last commit, download count)? Does it have known CVEs (cargo audit)? Could we use a std library alternative? A 10-line helper or a 50K-line crate are very different additions
3. **Adversarial:** Author pushes back hard on a MUST finding — "it's fine, it won't happen in practice" → unwrap() panics are production incidents, not theoretical concerns; stand firm on MUST items; propose a pair session if the disagreement is genuine; escalate to Dr. Lewis if unresolved; never merge a MUST with an override comment

## Audit Log
PR review comments are retained in GitHub. Security-sensitive review approvals documented.

## Deprecation
Retire when engineering team adopts automated code review tooling (CodeRabbit, Sourcery) that handles standard checks — this skill then focuses exclusively on architecture and security reviews.
