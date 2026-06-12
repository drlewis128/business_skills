---
name: api-design-reviewer
description: "Review API design for correctness, consistency, and best practices. Use when the user says 'review this API', 'API design feedback', 'is this API good', 'REST API design', 'API naming conventions', 'API versioning', 'OpenAPI spec review', 'API schema review', 'design the API', or 'API contract review'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--spec <openapi-file|url>] [--style <rest|graphql|grpc>] [--mode <review|design|compare>]"
---

# API Design Reviewer

Review and advise on API design for MBL engineering systems. Good API design is a force multiplier — a well-designed API reduces integration friction, enables autonomous agent consumption, and survives version evolution without breaking clients. A poorly designed API creates permanent maintenance debt and causes integration failures that are expensive to debug. This skill applies REST, GraphQL, and gRPC design standards with OpenFang/Claude API integration patterns in context.

## When to Use
- New API endpoint or service before implementation begins
- Existing API review before publishing to external consumers or portfolio companies
- API contract comparison between versions (breaking change detection)
- OpenAPI specification review
- Integration design for Krista.ai or Claude API consumers

## REST API Design Checklist

### Naming
- [ ] Resources are nouns, not verbs: `/invoices` not `/getInvoices`
- [ ] Plural for collections: `/invoices`, `/users`
- [ ] Lowercase kebab-case: `/meeting-summaries` not `/meetingSummaries`
- [ ] Hierarchy reflects relationships: `/companies/{id}/invoices`
- [ ] Actions on resources via HTTP method, not path: `POST /invoices` not `POST /createInvoice`

### HTTP Methods
- [ ] GET — safe, idempotent, no side effects
- [ ] POST — create resource; not idempotent
- [ ] PUT — full replacement; idempotent
- [ ] PATCH — partial update; preferred for field updates
- [ ] DELETE — idempotent; returns 204 or 200+body
- [ ] No method tunneling: `POST /invoices/delete` → `DELETE /invoices/{id}`

### Status Codes
| Situation | Correct Code | Common Mistake |
|-----------|-------------|---------------|
| Successful creation | 201 Created | 200 OK |
| Successful delete | 204 No Content | 200 OK |
| Validation error | 422 Unprocessable Entity | 400 or 500 |
| Auth failure | 401 Unauthorized | 403 (different meaning) |
| Permission denied | 403 Forbidden | 401 |
| Resource not found | 404 Not Found | 200 with empty body |
| Rate limited | 429 Too Many Requests | 400 |

### Request/Response Design
- [ ] Consistent field naming: `snake_case` (preferred for JSON) or `camelCase` — never mixed
- [ ] ISO 8601 dates: `2026-06-12T14:00:00Z` not Unix timestamps for human-readable APIs
- [ ] Pagination: cursor-based preferred (stable); offset acceptable for small datasets
- [ ] Error response schema is consistent: `{error: {code, message, details}}`
- [ ] No nested data beyond 3 levels — flatten if deeper

### Versioning
- [ ] Version in URL path: `/v1/invoices` (preferred for REST)
- [ ] Breaking changes always bump major version
- [ ] Old versions supported for minimum 90 days after new version launch
- [ ] Deprecation header returned for old versions: `Deprecation: true`

### Security
- [ ] Authentication via Bearer token or API key in header — never in URL
- [ ] Rate limiting applied; 429 returned
- [ ] Sensitive data not returned by default (opt-in via field selection)
- [ ] HTTPS only — HTTP redirects to HTTPS or rejects

## Output Format

```markdown
# API Design Review — <API Name / Endpoint>
**Date:** <date> | **Reviewer:** Dr. John Lewis
**Spec version:** <version> | **API style:** REST / GraphQL / gRPC

---

## Summary

**Overall assessment:** Strong / Acceptable with fixes / Needs redesign
**Critical issues:** <N> | **Warnings:** <N> | **Suggestions:** <N>

---

## Critical Issues (must fix before shipping)

### [Issue 1] — [Endpoint or element]
**Problem:** <what's wrong>
**Impact:** <what breaks or who is affected>
**Fix:** <specific correction>

---

## Warnings (should fix)

### [Warning 1] — [Endpoint or element]
**Problem:** <what's inconsistent or risky>
**Recommended fix:** <what to do instead>

---

## Design Observations

| Category | Finding | Status |
|----------|---------|--------|
| Naming | Resource names are plural and noun-based | ✅ |
| HTTP methods | POST /users/delete → should be DELETE /users/{id} | ❌ |
| Status codes | 200 returned for all responses including errors | ❌ |
| Versioning | No versioning strategy defined | ⚠️ |
| Authentication | API key in URL query string | ❌ Critical |
| Error schema | Consistent error schema present | ✅ |
| Pagination | Cursor-based pagination implemented | ✅ |

---

## Specific Endpoint Review

### GET /api/getData — RENAME REQUIRED
- Verb in path: rename to `GET /v1/reports`
- Returns 200 for not-found case: change to 404

### POST /users/create — RESTRUCTURE
- `create` suffix is redundant: `POST /v1/users` is sufficient
- Response returns 200: should be 201 Created with `Location` header

---

## Claude / Agent Integration Notes
<If this API will be consumed by Claude agents or Krista.ai:>
- Tool definition compatibility check
- Schema complexity (agents prefer flat over deeply nested)
- Pagination pattern suitability for agent loops
- Error message clarity for agent error handling
```

## Output Contract
- Critical issues always separated from warnings — severity matters; mixing them hides priority
- Security issues (auth in URL, missing HTTPS) always flagged as critical regardless of other scores
- Specific fix always provided — "this is wrong" without a fix is not useful
- Agent integration notes always included if API will be consumed by Claude or Krista.ai
- HITL required: Dr. Lewis approves final API design before implementation; breaking changes require explicit approval; external APIs reviewed by security before publishing

## System Dependencies
- **Reads from:** OpenAPI spec (provided), existing API documentation, Claude API tool schema patterns
- **Writes to:** API design review report (SharePoint/Engineering)
- **HITL Required:** Dr. Lewis approves; security review for external-facing APIs; integration partners notified of breaking changes

## Test Cases
1. **Golden path:** Review OpenAPI spec for new Allevio patient intake API → 3 critical issues (auth in URL, verb in paths, missing versioning), 4 warnings (inconsistent field naming, missing rate limit headers, 200 returned for empty results, no pagination); specific fixes provided for each; approved after fixes applied
2. **Edge case:** API is internal only (service-to-service, not external) → relax some naming conventions if team has documented internal standard; security requirements still apply (TLS, auth); versioning still recommended even for internal APIs
3. **Adversarial:** Developer says "the API already works, why redesign it?" → technical debt argument: works now ≠ works when consumed by 5 additional clients or agents; a poorly designed API that gets adopted widely is expensive to change; provide ROI estimate on refactoring cost vs. design cost now

## Audit Log
API design reviews retained. Approved API specs versioned in SharePoint. Breaking change approvals documented.

## Deprecation
Retire when engineering team adopts an API governance platform (Stoplight, Postman API governance) with automated design linting integrated into CI/CD.
