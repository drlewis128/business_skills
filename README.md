# business_skills

**Owner:** Dr. John Lewis — Principal Systems Engineer & Director of AI Strategy, MBL Partners
**Contact:** jlewis@mblpartners.com

Enterprise AI agent skill library for MBL Partners and portfolio companies. Skills are invocable via Claude Code's skill system (`/skill-name`) and follow the 12 Skill Creation Rules for governed, auditable, feedback-controlled agent behavior.

---

## Structure

```
business_skills/
├── governance/          # Meta-layer: audit, feedback, registry, lifecycle management
├── code-audit/          # Technical code quality, security, and risk analysis
├── process-audit/       # Engineering process: CI, post-mortems, ADRs, changelogs
└── departments/         # Business department skills (Finance, HR, Ops, Sales, etc.)
```

---

## Skill Categories

### Governance (`/governance`)
Skills that manage the skill library itself. These are the oversight and control layer.

| Skill | Purpose |
|-------|---------|
| `skill-auditor` | Scores any skill against 12 creation rules — A-F grade, activation verdict |
| `skill-feedback-collector` | Tiered feedback intake with RBAC (Tier 1 owners / Tier 2 leads / Tier 3 signals) |
| `skill-registry-maintainer` | Syncs live skill directories against the master registry |
| `skill-deprecation-manager` | Full retirement lifecycle with impact assessment and archive |
| `agent-execution-auditor` | Fleet-wide agent behavioral audit: scope, cost, quality, anomalies |

### Code Audit (`/code-audit`)
Technical analysis skills. Point at a codebase or file and get a structured, actionable report.

| Skill | Purpose |
|-------|---------|
| `code-quality-auditor` | Structural quality: complexity, duplication, dead code, naming, architecture smells |
| `security-code-auditor` | OWASP Top-10 + SANS CWE-25, secrets detection, language-specific patterns |
| `dependency-vulnerability-auditor` | CVE scan across Cargo/npm/pip/Go manifests with exact fix commands |
| `technical-debt-auditor` | 5-category debt scoring (Code/Design/Test/Doc/Infra) with quarterly roadmap |
| `test-coverage-auditor` | Risk-weighted gap analysis — payment/auth paths weighted 5× over utility code |
| `api-contract-auditor` | Breaking change detection between API versions (REST/GraphQL/code) |
| `schema-migration-auditor` | DB migration risk: lock, data loss, rollback completeness, zero-downtime alternatives |

### Process Audit (`/process-audit`)
Engineering process documentation and diagnosis.

| Skill | Purpose |
|-------|---------|
| `ci-failure-analyzer` | Extract root cause from CI logs + provide exact fix with verification command |
| `post-mortem-drafter` | Blameless SRE-standard post-mortems (basic/full/executive templates) |
| `architecture-decision-recorder` | Full ADR lifecycle: create, list, review, supersede (Nygard standard) |
| `changelog-compliance-checker` | PR merge gate + pre-release audit; hard-blocks security gaps |

---

## Installation

```bash
# Add individual skills to your Claude Code instance
npx skills add DrLewis128/business_skills/governance/skill-auditor --yes

# Or clone and install all
git clone https://github.com/DrLewis128/business_skills
npx skills add ./business_skills/governance/skill-auditor --yes
# ... repeat per skill
```

---

## Skill Creation Rules

All skills in this library follow the 12 Skill Creation Rules:

1. **Single Responsibility** — one skill, one outcome
2. **Kebab-case naming** — action-verb prefix, lowercase
3. **Output contract defined** — format, fields, max length, failure mode
4. **Feedback loop with tiered RBAC** — not all feedback is equal
5. **Semantic versioning** — every change is a version bump
6. **Test gate before activation** — golden path, edge case, adversarial
7. **Context isolation** — stateless by default unless explicitly multi-turn
8. **System dependencies declared** — reads/writes documented
9. **HITL checkpoints on write actions** — no automated sends/pays/posts
10. **Audit logging** — all invocations logged
11. **Deprecation criteria** — 90-day non-use triggers review
12. **THRIVE filter** — Truth, Hustle, Respect, Integrity, Value, Enjoy

---

## Feedback & Governance

**Tier 1 (Owners):** Dr. John Lewis, Matt Mathison — can modify skill behavior  
**Tier 2 (Domain Leads):** Designated dept heads — can flag issues, submit correction examples  
**Tier 3 (End Users):** 👍/👎 signals only — volume threshold triggers Tier 2 escalation

Use `/skill-feedback-collector <skill-name>` to submit feedback.  
Use `/skill-auditor <skill-name>` to audit any skill before activation.

---

*Built for MBL Partners. Validated at MBL. Rolled to portfolio.*
