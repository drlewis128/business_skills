---
name: code-quality-auditor
description: "Run a comprehensive code quality audit on a file, directory, or entire codebase. Use when the user says 'audit this code', 'code quality review', 'how healthy is this codebase', 'find code smells', 'check code quality', 'review the architecture of this code', 'find dead code', 'check complexity', or 'codebase health check'. Distinct from the built-in /code-review (which is diff-focused) — this does structural, holistic analysis of existing code."
metadata:
  version: 1.0.0
  tier: code-audit
  owner: Dr. John Lewis
argument-hint: "<file | directory | glob> [--lang <rust|typescript|python|js>]"
---

# Code Quality Auditor

Full structural quality analysis of existing code. Goes beyond diff review — examines architecture, complexity, naming, duplication, dead code, and maintainability at the file and module level.

**Difference from `/code-review`:** `/code-review` audits a diff (what changed). This skill audits the full existing codebase structure (what exists). Use both — they're complementary.

## When to Use

- First audit of a new codebase or repository
- Before a major refactor or architecture change
- Quarterly health checks on production systems
- Before onboarding a new engineer (understand the landscape first)
- When velocity is declining and you suspect code quality is the cause

## Input

`$ARGUMENTS`: File path, directory, or glob pattern.
- Single file: `/path/to/file.rs`
- Directory: `/path/to/src/`
- Specific module: `/path/to/src/**/*.ts`

If no argument given, ask: "What is the path or directory to audit?"

Optional `--lang` flag to override language detection.

## Audit Dimensions

### Dimension 1 — Complexity Analysis

For each function/method identified:
- **Cyclomatic complexity**: Count branching points (if, else, match/switch, loops, early returns). Flag functions > 10 branches.
- **Cognitive complexity**: Assess nesting depth. Flag functions > 3 levels deep.
- **Function length**: Flag functions > 50 lines (Rust/Go) or > 40 lines (Python/JS/TS).
- **Parameter count**: Flag functions with > 5 parameters.

Output: Top 10 most complex functions by file.

### Dimension 2 — Code Duplication

Identify:
- Near-identical code blocks (>10 lines) appearing in 2+ places
- Repeated logic patterns that could be extracted as a shared function
- Copy-paste with variable substitution (the deadliest kind)

Output: List of detected duplication hotspots with file:line references.

### Dimension 3 — Naming Quality

Check for:
- Single-letter variable names outside of short loop counters (`i`, `j`, `k` in loops are OK; elsewhere = WARN)
- Generic names: `data`, `result`, `temp`, `obj`, `val`, `x`, `y` (outside math-heavy code)
- Inconsistent naming conventions within the same file (camelCase vs snake_case mixed)
- Functions named as nouns instead of verbs (e.g., `userData()` instead of `getUser()`)
- Boolean variables/functions not prefixed with `is_`, `has_`, `can_`, `should_`

### Dimension 4 — Dead Code Detection

Flag:
- Unused imports/use statements
- Unused variables (that aren't suppressed intentionally)
- Functions/methods with no callers (scan within the provided scope)
- Commented-out code blocks (>3 lines) that appear to be old implementations
- Feature flags that are always-on or always-off

### Dimension 5 — Structural / Architectural Smells

Flag:
- **God functions**: Single function doing >3 distinct things (multiple responsibilities)
- **God files**: Files >500 lines (often indicates missing module decomposition)
- **Circular dependencies**: Module A imports B, B imports A
- **Deep inheritance chains**: >3 levels of inheritance
- **Primitive obsession**: Using raw strings/ints for concepts that deserve a type (e.g., user IDs as raw strings)
- **Magic numbers/strings**: Unexplained literals that should be named constants
- **Inconsistent error handling**: Mix of panics, Result types, and silent ignores in the same codebase (Rust-specific)

### Dimension 6 — Comment Quality

- Missing comments on non-obvious WHY decisions
- Docstrings on public APIs (flag missing ones)
- Comments that just describe WHAT (redundant) — flag for removal
- TODO/FIXME/HACK comments — list all found with file:line

### Dimension 7 — Test Signal

Check for presence of test coverage signals (not running tests — observing structure):
- Are there test files? (e.g., `*_test.rs`, `*.test.ts`, `test_*.py`)
- What ratio of test files to source files?
- Are any complex functions (Dimension 1 flagged) entirely without test files?

Note: Full coverage analysis is in `test-coverage-auditor`. This just flags the structural absence.

## Output Format

```markdown
# Code Quality Audit Report
**Target:** <path>
**Language:** <detected>
**Date:** <today>
**Files Analyzed:** <N>
**Functions/Methods Analyzed:** <N>

---

## Executive Summary
**Overall Health Grade:** A/B/C/D/F
**Critical Issues:** <N>
**Warnings:** <N>
**Recommendations:** <N>

---

## Complexity Hotspots (Top 10)
| File:Line | Function | Complexity | Issue |
|-----------|----------|-----------|-------|
| src/main.rs:42 | process_request | 14 branches | Exceeds threshold (10) |
...

## Duplication Detected
- `src/utils.rs:88` and `src/handlers.rs:34` — 18-line near-identical block
...

## Naming Issues
- `src/models.rs:12` — variable `d` — use descriptive name
...

## Dead Code
- `src/old_api.rs:50-110` — function `legacy_handler` has no callers
...

## Structural Smells
- `src/processor.rs:1` — 847-line file — decompose into modules
...

## Comment Quality
- 14 TODO/FIXME/HACK items found: [list with file:line]

## Test Structure Signal
- Test files found: <N>
- Source files without test counterparts: <N> (list top 5 most complex)

---

## Priority Action List
1. [CRITICAL] <issue> — <file:line> — <recommended fix>
2. [HIGH] ...
3. [MEDIUM] ...

---

## Metrics Summary
| Metric | Value | Threshold | Status |
|--------|-------|-----------|--------|
| Max function complexity | <N> | 10 | ✅/⚠️/❌ |
| Max function length | <N> lines | 50 | ... |
| Duplication instances | <N> | 0 | ... |
| Dead code files | <N> | 0 | ... |
| TODO/FIXME count | <N> | — | (informational) |
```

## Grading Scale

| Grade | Criteria |
|-------|---------|
| A | No critical issues, <5 warnings, clean structure |
| B | No critical issues, <15 warnings, isolated structural smells |
| C | 1-2 critical issues or >15 warnings — refactor recommended |
| D | 3-5 critical issues or significant duplication/dead code — technical debt sprint needed |
| F | >5 critical issues or god files/circular deps pervasive — major rewrite risk |

## System Dependencies

- **Reads from:** File system (source files at provided path)
- **Writes to:** Nothing (read-only audit)
- **External tools (if available):** Can invoke `cargo clippy`, `eslint`, `flake8`, `golangci-lint` for additional signal — but produces useful output even without them

## Feedback

Tier 2 domain leads (engineering leads) may flag false positives in complexity thresholds for domain-specific code (e.g., parser code legitimately has high cyclomatic complexity). Log via `skill-feedback-collector`.
