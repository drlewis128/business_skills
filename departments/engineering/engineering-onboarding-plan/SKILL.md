---
name: engineering-onboarding-plan
description: "Create a structured onboarding plan for new engineers. Use when the user says 'onboard a new engineer', 'engineering onboarding', 'new developer onboarding', 'first 90 days for engineer', 'dev environment setup plan', 'new hire plan for engineering', 'getting a new engineer up to speed', or 'first week for a developer'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--role <senior-engineer|lead|staff>] [--team <name>] [--entity <name>]"
---

# Engineering Onboarding Plan

Create a structured 30/60/90-day onboarding plan for new engineers joining MBL or portfolio companies. Engineering onboarding done well gets a new hire productive in 30 days and autonomous in 90. Done poorly, the engineer spends months solving environment problems and tribal knowledge gaps rather than building. This skill produces a day-by-day first week and milestone-based first 90 days.

## When to Use
- A new engineer is starting within the next 2 weeks
- An existing engineer is transitioning to a new team or project
- The onboarding process has been inconsistent — standardizing it
- Post-hire retrospective revealed onboarding gaps

## Onboarding Milestones

```
Day 1: Access set up, environment running, first PR merged (even if trivial)
Week 1: Codebase familiar, architecture understood, at least 1 real feature started
Day 30: First feature shipped to production; sprint contributing at 50% velocity
Day 60: Full velocity; owning a domain; code reviewing others' PRs
Day 90: Autonomous contributor; trusted to make architecture decisions within their domain
```

## Day 1 Checklist (Complete Before They Arrive)

```
ACCOUNTS AND ACCESS
  [ ] Email account active: <name>@<entity>.com
  [ ] GitHub organization access — repositories assigned
  [ ] Microsoft 365 (Teams, SharePoint) provisioned
  [ ] Monday.com board access — engineering team board
  [ ] Secrets access: 1Password / Azure Key Vault (need-to-know only)
  [ ] Slack/Teams channels: engineering, on-call, general
  [ ] CI/CD pipeline access (GitHub Actions or equivalent)

DEVELOPMENT ENVIRONMENT
  [ ] Dev environment setup guide document prepared and tested
  [ ] Required toolchain versions documented (Rust version, toolchain pinned)
  [ ] Repository access confirmed and clone tested
  [ ] First PR candidate identified (good-first-issue or doc fix)

SCHEDULING
  [ ] Day 1 welcome meeting with Dr. Lewis (30 min)
  [ ] Architecture walkthrough scheduled (Day 2-3)
  [ ] Sprint planning included (if timing aligns)
  [ ] 30/60/90 check-ins scheduled
```

## Week 1 Schedule

| Day | Morning | Afternoon |
|-----|---------|----------|
| Monday | Welcome + orientation with Dr. Lewis; accounts setup | Dev environment installation; first repo clone |
| Tuesday | Architecture walkthrough (OpenFang or target system) | Read codebase; identify first PR candidate |
| Wednesday | Meet the team (async intros or brief calls) | First PR: trivial change (doc, comment, test) |
| Thursday | Sprint ceremony introduction; engineering KPIs | Pair with senior engineer on an active ticket |
| Friday | 1:1 check-in with Dr. Lewis (15 min): access working? blockers? | First sprint ticket — start |

## Output Format

```markdown
# Engineering Onboarding Plan — <Name>
**Role:** <role> | **Start date:** <date>
**Team:** <team> | **Entity:** <entity>
**Onboarding lead:** Dr. John Lewis
**Buddy engineer:** <name — senior engineer assigned as first contact>

---

## 30/60/90 Milestones

| Milestone | Target | Success Criteria |
|-----------|--------|-----------------|
| Day 30 | First production deploy | Has shipped at least 1 feature to production; contributing to sprint at 50%+ velocity |
| Day 60 | Domain ownership | Owns at least 1 subsystem; reviewing others' PRs; suggesting improvements |
| Day 90 | Full autonomy | Designing features independently; trusted to make scoped architecture decisions |

---

## Pre-Day-1 Setup Checklist

| Item | Owner | Status |
|------|-------|--------|
| GitHub access | Dr. Lewis | ✅ |
| Microsoft 365 | IT | ✅ |
| Monday.com | Dr. Lewis | ✅ |
| Dev environment guide | Buddy engineer | ✅ |
| First PR candidate identified | Buddy engineer | ✅ |

---

## Week 1 Schedule

[Week 1 table from template above — customized for this hire]

---

## Codebase Orientation Guide

**Repository:** `<repo-name>` — [link]
**Key files to read first:**
1. `README.md` — project overview and architecture
2. `CLAUDE.md` / `docs/architecture.md` — design decisions
3. `src/main.rs` (or equivalent) — entry point
4. `tests/` — test patterns and conventions

**Architecture in one paragraph:**
<Write 3-5 sentences describing the system — this is the mental model the new engineer needs>

**Toolchain:**
```bash
# Install Rust toolchain
rustup install stable
rustup default stable

# Build project
cargo build --workspace

# Run tests
cargo test --workspace

# Lint
cargo clippy --workspace --all-targets -- -D warnings
```

---

## 30-Day Check-in Agenda

1. Access and environment — any lingering issues?
2. Codebase familiarity — what's clear, what's still unclear?
3. Sprint contribution — comfortable with the velocity expectations?
4. First feature shipped — what did you learn from it?
5. What would have made your first month better?
6. 60-day plan: what domain do you want to own?

---

## 90-Day Graduation Criteria

- [ ] Has shipped at least 3 features to production
- [ ] Owns and can explain at least 1 subsystem
- [ ] Contributing to sprint at full velocity
- [ ] Is reviewing others' PRs meaningfully (not rubber stamp)
- [ ] Has completed mandatory compliance training (HIPAA if Allevio; security awareness)
- [ ] Has demonstrated THRIVE alignment in peer feedback
```

## Output Contract
- Day 1 checklist always completed before the engineer arrives — access problems on Day 1 are preventable and demoralizing
- First PR always trivial — Day 1 or 2; getting the workflow working matters more than the change
- Buddy always assigned — no engineer onboards without a designated first contact
- 30/60/90 criteria always specific and binary — not "is making good progress"
- HITL required: Dr. Lewis reviews and approves onboarding plan; 30/60/90 check-ins conducted by Dr. Lewis; Allevio engineers require HIPAA training completion before PHI access

## System Dependencies
- **Reads from:** Engineering team roster, existing codebase documentation, sprint board (Monday.com)
- **Writes to:** Onboarding plan document (SharePoint/Engineering); Monday.com onboarding task board
- **HITL Required:** Dr. Lewis reviews plan and conducts 30/60/90 check-ins; IT provisions access; Allevio — HIPAA training required before PHI system access

## Test Cases
1. **Golden path:** Senior Rust engineer starting Monday → Pre-Day-1: GitHub, M365, Monday.com access confirmed; dev environment guide updated; first PR candidate (documentation fix) identified by buddy; Week 1 schedule set; 30/60/90 milestones written; Dr. Lewis 30-min Day 1 welcome confirmed
2. **Edge case:** New engineer's dev environment setup fails — Rust toolchain version incompatibility → buddy engineer resolves same day (this is why we identify the buddy before Day 1); document the toolchain issue in the setup guide; no engineer should spend more than 4 hours on environment setup
3. **Adversarial:** Onboarding is skipped because "they're senior — they'll figure it out" → senior engineers still need: access, architecture context, team norms, and understanding of MBL-specific patterns (THRIVE, HITL, agent architecture); skipping onboarding for senior hires is the leading cause of 90-day regret; run the process, abbreviate where appropriate

## Audit Log
Onboarding plans retained by hire. 30/60/90 check-in notes documented. HIPAA training completion recorded (Allevio).

## Deprecation
Retire when engineering team has a dedicated People Operations function with standardized onboarding playbooks integrated into the HR system.
