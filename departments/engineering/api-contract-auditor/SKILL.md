---
name: api-contract-auditor
description: "Detect breaking API changes and validate API contracts between versions. Use when the user says 'api contract check', 'breaking change detection', 'did I break the API', 'check for breaking changes', 'validate API compatibility', 'API versioning audit', 'consumer contract test', 'is this API change backwards compatible', or 'API schema validation'. Works with REST APIs (OpenAPI/Swagger), GraphQL schemas, and Rust/TypeScript function signatures."
metadata:
  version: 1.0.0
  tier: code-audit
  owner: Dr. John Lewis
argument-hint: "<old-spec-or-branch> <new-spec-or-path> [--format <rest|graphql|code>]"
---

# API Contract Auditor

Detect breaking changes between API versions before they reach consumers. A breaking change in a consumed API is a production incident waiting to happen — catch it in review, not in an outage.

## What Counts as a Breaking Change

| Change Type | Breaking? | Notes |
|-------------|-----------|-------|
| Remove a field | ✅ Breaking | Any consumer reading that field breaks |
| Rename a field | ✅ Breaking | Same as remove + add from consumer perspective |
| Change field type | ✅ Breaking | `string` → `int`, `nullable` → `required` |
| Add required field | ✅ Breaking | Existing callers won't send it |
| Change HTTP method | ✅ Breaking | `GET` → `POST` on same endpoint |
| Remove an endpoint | ✅ Breaking | |
| Narrow valid values | ✅ Breaking | Was `["a","b","c"]`, now only `["a","b"]` |
| Add optional field | ✅ Non-breaking | Consumers can ignore |
| Add new endpoint | ✅ Non-breaking | |
| Expand valid values | ✅ Non-breaking | Adding `"d"` to enum is safe |
| Change status code (2xx→4xx) | ✅ Breaking | |
| Change error response shape | ⚠️ Situational | Depends on whether consumers parse errors |
| Add deprecation notice | ✅ Non-breaking | But triggers timeline planning |

## When to Use

- Before merging any PR that touches API definitions, route handlers, or public function signatures
- When upgrading a dependency and checking if its exported API changed
- Before releasing a new API version
- When reviewing a PR from a contributor that includes endpoint changes

## Input

`$ARGUMENTS`: Two references to compare.
- Branch comparison: `main feature/new-api`
- File comparison: `api/v1/openapi.yaml api/v2/openapi.yaml`
- Directory comparison: `src/api/v1/ src/api/v2/`

`--format`:
- `rest` — OpenAPI/Swagger schema comparison (default)
- `graphql` — GraphQL schema comparison
- `code` — Rust/TypeScript function signature comparison

## Audit Process

### For REST APIs (OpenAPI/Swagger)

1. Parse both schema versions
2. For each endpoint in the old version, check its presence and shape in the new version:
   - Endpoint still exists?
   - HTTP method unchanged?
   - Path parameters unchanged?
   - Request body schema: no required fields added, no fields removed, no type changes?
   - Response schema: no fields removed, no type changes (additions are OK)?
   - Status codes: no successful codes removed?
3. Check for new deprecation markers on existing endpoints

### For GraphQL Schemas

1. Compare type definitions, field types, and nullability
2. Flag: removed types, removed fields, changed field types, added required arguments, removed query/mutation/subscription roots
3. Non-breaking: added types, added nullable fields, added optional arguments

### For Code Signatures (Rust/TypeScript)

1. Extract all `pub fn` / `export function` / `export class` signatures from both versions
2. Compare: parameter count, parameter types, return type
3. Flag: removed exports, changed parameter types, added required parameters, narrowed return types
4. Non-breaking: added optional parameters, widened return types, added new exports

## Output Format

```markdown
# API Contract Audit
**Old:** <reference>
**New:** <reference>
**Format:** REST / GraphQL / Code
**Date:** <today>

---

## Breaking Changes Summary
🔴 **<N> Breaking Changes** — DO NOT MERGE without versioning strategy
⚠️ **<N> Warnings** — Situational, requires consumer impact assessment
✅ **<N> Non-Breaking Changes** — Safe to deploy

---

## 🔴 BREAKING CHANGES

### 1. Field Removed — `POST /users` response
**Field:** `user.legacy_id` (string)
**Old schema:** required
**New schema:** field absent
**Consumer impact:** Any client reading `user.legacy_id` will get `undefined`/`null`/panic
**Resolution options:**
- Keep field as deprecated nullable: `"legacy_id": null`
- Version the endpoint: `POST /v2/users`
- Notify all consumers with migration timeline

### 2. Type Changed — `GET /orders/{id}` response
**Field:** `order.amount`
**Old type:** `string`
**New type:** `number`
**Consumer impact:** Consumers parsing amount as string will fail
...

---

## ⚠️ WARNINGS

### 3. Error Response Shape Changed — `POST /auth/login`
**Old:** `{"error": "string"}`
**New:** `{"error": {"code": "string", "message": "string"}}`
**Consumer impact:** Consumers parsing error messages will break if they access `.error` directly
...

---

## ✅ NON-BREAKING CHANGES

- Added optional field `user.avatar_url` to `GET /users/{id}` — safe
- Added new endpoint `GET /users/{id}/permissions` — safe
...

---

## Versioning Recommendation

Given <N> breaking changes:
- [ ] Increment API major version: `v1` → `v2`
- [ ] Keep `v1` endpoints live for deprecation period (recommend 90 days minimum)
- [ ] Add `Deprecation: true` header to all v1 breaking endpoints
- [ ] Update API changelog with migration guide

---

## Consumer Impact Assessment
Known consumers of this API (from codebase scan):
- `src/frontend/api/users.ts:42` — reads `user.legacy_id` — **WILL BREAK**
- `src/integrations/billing.ts:88` — reads `order.amount` — **WILL BREAK**
```

## Output Contract

- Clearly separates breaking from non-breaking changes
- Includes specific consumer impact and file:line if known
- Provides concrete resolution options per breaking change
- Read-only — no schema or code files modified
- HITL required before deploying any breaking API change to production

## System Dependencies

- **Reads from:** File system (schema files, source files)
- **Writes to:** Nothing (read-only)
- **HITL Required:** Breaking changes must be reviewed by API owner before deployment

## Feedback

Engineering leads (Tier 2) may define domain-specific breaking change thresholds. Log via `skill-feedback-collector`.
