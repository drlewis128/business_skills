---
name: threat-model-builder
description: "Build a threat model for a system or application. Use when the user says 'threat model', 'threat modeling', 'what could go wrong', 'STRIDE', 'attack surface', 'what are the threats to this system', 'risk modeling', or 'who would attack this and how'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "<system-name> [--entity <name>] [--method <STRIDE|PASTA|informal>] [--depth <quick|thorough>]"
---

# Threat Model Builder

Build a threat model for a system or application. Threat modeling answers "what could go wrong?" before it does. It forces structured thinking about who would attack a system, how, and what the impact would be — then drives the controls that matter most. For MBL AI systems (OpenFang, Krista.ai integrations) and healthcare systems (Allevio), threat modeling is critical because the consequences of failure are high.

## When to Use
- Designing a new system or integration
- Reviewing security of an existing high-value system
- Before a pen test — identify what the tester should look for
- When stakeholders ask "is this secure?" (answer with evidence)
- Annual review of critical system threat models

## STRIDE Method

```
S — Spoofing: Can an attacker impersonate a user or system?
T — Tampering: Can an attacker modify data in transit or at rest?
R — Repudiation: Can an actor deny having performed an action?
I — Information Disclosure: Can an attacker read data they shouldn't?
D — Denial of Service: Can an attacker prevent legitimate use?
E — Elevation of Privilege: Can an attacker gain more access than authorized?
```

## Output Format

```markdown
# Threat Model — <System Name>
**Date:** <date> | **Entity:** <name>
**System type:** Web app / API / AI Agent / Integration / Cloud service
**Author:** Dr. John Lewis
**Sensitivity:** HIGH — CONFIDENTIAL

---

## System Overview

**What does this system do?**
<Brief functional description — 2-3 sentences>

**Who uses it?**
<Users / roles / external systems>

**What data does it handle?**
<Data types and classification — PHI, financial, PII, internal>

**System components:**
- Frontend: <description>
- Backend API: <description>
- Data store: <description>
- External integrations: <list>
- Authentication: <Entra ID SSO / API key / custom>

---

## Data Flow Diagram

```
[User browser] → HTTPS → [Krista.ai API] → [M365 Graph API]
                                         ↓
                                    [Azure Storage]
```

**Trust boundaries:**
- Internet → Web application (boundary 1)
- Web application → Database (boundary 2)
- Application → External APIs (boundary 3)
- User role A → Admin functions (boundary 4)

---

## Threat Analysis (STRIDE)

### Threat Category: Spoofing (S)

| Threat | Attack Vector | Impact | Likelihood | Risk | Mitigation |
|--------|------------|--------|-----------|------|-----------|
| Attacker impersonates a legitimate user | Stolen credentials / session token | High — unauthorized data access | Medium | **High** | MFA + session timeout + Conditional Access |
| Attacker impersonates the API | DNS hijack / SSL stripping | High — man-in-the-middle | Low | **Medium** | Certificate pinning; HSTS |
| AI agent prompted to impersonate an admin | Prompt injection | High — privilege escalation | Medium | **High** | Separate user/system context; RBAC at tool level |

### Threat Category: Tampering (T)

| Threat | Attack Vector | Impact | Likelihood | Risk | Mitigation |
|--------|------------|--------|-----------|------|-----------|
| Modification of data in transit | Network interception | High | Low (TLS in use) | **Low** | TLS 1.3 enforced; HSTS |
| Database modification by attacker | SQL injection / direct DB access | Critical | Low | **Medium** | Parameterized queries; DB access controls |
| AI output manipulation via prompt injection | Malicious user input | High | Medium | **High** | Input sanitization; output validation |

### Threat Category: Repudiation (R)

| Threat | Attack Vector | Impact | Likelihood | Risk | Mitigation |
|--------|------------|--------|-----------|------|-----------|
| User denies performing an action | Insufficient logging | Medium — disputes, compliance | Medium | **Medium** | Immutable audit logging of all actions |
| AI agent action not traceable | Missing agent audit log | High — compliance, investigation | Medium | **High** | Log all tool calls with user context |

### Threat Category: Information Disclosure (I)

| Threat | Attack Vector | Impact | Likelihood | Risk | Mitigation |
|--------|------------|--------|-----------|------|-----------|
| PHI exposed via API response | IDOR / broken access control | Critical — HIPAA breach | Low | **High** | Object-level authorization on all endpoints |
| Cross-tenant data leakage | Missing tenant isolation | Critical — portfolio isolation | Low | **Critical** | Strict tenant-scoped data access |
| AI reveals data from another session | LLM context leakage | High | Low | **High** | Stateless sessions; no cross-user context |
| Secrets in API error messages | Verbose error handling | Medium | Medium | **Medium** | Sanitize error messages in production |

### Threat Category: Denial of Service (D)

| Threat | Attack Vector | Impact | Likelihood | Risk | Mitigation |
|--------|------------|--------|-----------|------|-----------|
| API rate limit exhaustion | Unauthenticated bulk requests | High — service unavailability | Medium | **High** | Rate limiting per client/IP |
| LLM cost exhaustion | Unlimited expensive API calls | High — financial + availability | Medium | **High** | Token budget limits; cost monitoring |

### Threat Category: Elevation of Privilege (E)

| Threat | Attack Vector | Impact | Likelihood | Risk | Mitigation |
|--------|------------|--------|-----------|------|-----------|
| AI agent escalates to admin actions via prompt injection | Malicious system prompt | Critical | Low | **High** | Tool-level RBAC; HITL for admin actions |
| Standard user accesses admin functions | Missing auth check on endpoint | Critical | Low | **High** | Auth check on every endpoint |

---

## Risk Summary

| Risk Level | Count | Threats |
|-----------|-------|---------|
| Critical | 1 | Cross-tenant data leakage |
| High | 6 | AI impersonation, prompt injection (×2), PHI disclosure, DoS, LLM cost exhaustion |
| Medium | 3 | API impersonation, DB tampering, repudiation |
| Low | 1 | Data in transit (mitigated by TLS) |

---

## Priority Mitigations

| Priority | Mitigation | Threat Addressed | Effort | Status |
|---------|-----------|----------------|--------|--------|
| 1 | Tenant-scoped data isolation | Cross-tenant leakage (Critical) | High | In design |
| 2 | Tool-level RBAC for AI agents | AI privilege escalation | Medium | Not started |
| 3 | Input sanitization + prompt context separation | Prompt injection (×2) | Medium | Not started |
| 4 | Object-level auth on all API endpoints | PHI disclosure | Low | Not started |
| 5 | LLM token budget enforcement | Cost/DoS exhaustion | Low | Not started |
```

## Output Contract
- All 6 STRIDE categories always analyzed — skipping categories misses threat classes
- Cross-tenant data leakage always assessed for any multi-entity MBL system — portfolio isolation is critical
- Prompt injection always in scope for any AI application — it's the primary AI attack vector
- PHI-adjacent threats always escalated to Critical or High — HIPAA breach has the highest consequence
- HITL required: Dr. Lewis reviews threat models for all critical systems; Allevio compliance officer reviews any PHI-adjacent threat model; security architecture reviews confirm mitigations are implemented

## System Dependencies
- **Reads from:** System architecture diagrams, code design, data flow provided by user
- **Writes to:** Threat model document (for HITL review and development team action)
- **HITL Required:** Dr. Lewis approves threat model; development team implements mitigations; Allevio compliance officer reviews PHI threat models

## Test Cases
1. **Golden path:** New Krista.ai/M365 integration threat model → STRIDE analysis finds 2 Critical/High AI-specific threats (prompt injection + cross-tenant leakage), 4 standard web threats, 9 mitigations prioritized, architecture team implements tenant isolation and input sanitization before launch
2. **Edge case:** Quick threat model for a low-risk internal tool → simplified STRIDE analysis, 30-minute exercise, documents top 5 threats and mitigations; not every system needs a full 2-hour threat model
3. **Adversarial:** Developer argues the system is "too simple to threat model" → threat modeling is proportional to impact, not complexity; a simple tool with access to PHI has high threat consequences; 30-minute exercise is worth it

## Audit Log
Threat models retained by system and date. Mitigation implementation tracked. Annual review scheduled for critical systems.

## Deprecation
Retire when threat modeling is integrated into the secure SDLC (Software Development Lifecycle) via automated threat modeling tools (Microsoft Threat Modeling Tool, OWASP Threat Dragon) with developer self-service.
