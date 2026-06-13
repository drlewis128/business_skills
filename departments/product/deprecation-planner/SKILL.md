---
name: deprecation-planner
description: "Plan the deprecation of a product, feature, or integration. Use when the user says 'deprecate', 'sunset', 'retire this feature', 'remove this integration', 'shut down', 'end of life', 'discontinue', 'deprecation plan', 'kill this feature', or 'phase this out'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--feature <name>] [--deadline <date>] [--user-impact <low|medium|high>]"
---

# Deprecation Planner

Plan the deprecation of features, integrations, or products with minimum user disruption and maximum transparency. Deprecation is always a trade-off: the old thing has users who depend on it; the new thing (or the removal) serves the product better. Bad deprecations surprise users, break workflows, and destroy trust. Good deprecations communicate early, migrate users, and celebrate the transition. For MBL's AI products, deprecation applies to agent skills, integrations, and workflows as the system evolves.

## When to Use
- A feature is being removed or replaced
- An integration is being retired (old API version, deprecated vendor)
- An agent skill is being superseded by a better version
- Consolidating two overlapping features into one
- Vendor is deprecating something MBL depends on — plan the migration

## Deprecation Principles

```
90-day minimum notice for anything users depend on:
  Less than 90 days: users can't plan for it; trust damage
  Exception: security vulnerability — immediate, with migration support
  Agent skills: 90-day deprecation SLA per Skill Creation Rules

Communication cadence:
  T-90 days: Initial notice (email + in-product)
  T-60 days: Reminder + migration guide ready
  T-30 days: Final warning; migration support available
  T-14 days: Last call
  T-0: Sunset; all users migrated or off

Migration first, removal second:
  Never remove before the replacement is ready
  Never remove before users have migrated
  Keep the old thing running in read-only mode if possible
```

## Output Format

```markdown
# Deprecation Plan — <Feature/Integration/Skill>
**Date:** <date> | **Owner:** Dr. John Lewis
**Target sunset date:** <date>
**User impact:** Low (< 10 users) / Medium (10-50) / High (>50)
**Approval required:** Dr. Lewis ✅ / Matt Mathison ⬜

---

## What We're Deprecating

**Feature/integration:** <name>
**Why it's being deprecated:**
- [ ] Replaced by better alternative: <name>
- [ ] Vendor deprecating the underlying API
- [ ] Not enough usage to justify maintenance
- [ ] Security/compliance issue requires removal
- [ ] Other: <explanation>

**Current usage:** <N> users / <N> times per month
**Highest-impact users:** <list — who will be most affected>

---

## What Replaces It

**Replacement:** <name / description>
**Replacement is ready:** Yes / No (target: <date>)
**Migration effort for users:** Low (no action) / Medium (some action) / High (significant work)

---

## Migration Plan

| Step | Action | Owner | Timeline |
|------|--------|-------|---------|
| 1 | [Migration action] | Dr. Lewis | T-90 |
| 2 | [User migration guide published] | Dr. Lewis | T-75 |
| 3 | [Bulk migration for automated workflows] | Engineering | T-60 |
| 4 | [1:1 support for high-impact users] | Dr. Lewis | T-30 through T-0 |

---

## Communication Plan

| Date | Audience | Channel | Message |
|------|---------|---------|---------|
| T-90 | All affected users | Email + in-product | "We're retiring [feature] on [date]. Here's what to do." |
| T-60 | All affected users | Email | "Reminder: [feature] retires on [date]. Migration guide here." |
| T-30 | High-impact users | 1:1 email from Dr. Lewis | "Help available if you need it." |
| T-14 | All affected users | Email | "Last call: [date] is 2 weeks away." |
| T-0 | All affected users | Email | "Done. [Feature] is retired. [Replacement] is ready." |

**Communication template — initial notice:**

---
Subject: [Feature] retiring on [date] — here's what you need to know

[Name],

On [date], we'll be retiring [feature]. [One sentence on why.]

**What this means for you:**
- [Specific impact — what stops working]
- [What replaces it and where to find it]
- [Any action required on their part, with deadline]

Questions? Reply to this email or reach Dr. Lewis at jlewis@mblpartners.com.

Dr. John Lewis
---

---

## Sunset Criteria

**Before removing, confirm:**
- [ ] All users migrated (or opted out with confirmation)
- [ ] No active workflows depending on the deprecated feature
- [ ] Replacement tested and stable
- [ ] 90-day notice period completed
- [ ] Matt Mathison informed (if portfolio-affecting)

---

## Post-Sunset

**Archived data retention:** <how long data is retained, if any>
**Documentation updated:** <what docs need to be updated>
**Monitoring:** <any metrics to watch post-sunset for unexpected impact>
```

## Output Contract
- 90-day minimum notice always enforced — below 90 days requires explicit justification and Dr. Lewis approval
- Replacement must be ready before sunset — deprecation without migration is abandonment
- High-impact users always get 1:1 communication from Dr. Lewis — not just a mass email
- Sunset criteria checklist always completed — no sunset without all checkboxes confirmed
- HITL required: Dr. Lewis approves deprecation plan; Matt Mathison approves any deprecation affecting portfolio companies; communication emails approved by Dr. Lewis before sending

## System Dependencies
- **Reads from:** Usage analytics (who uses this), workflow dependencies (what depends on this), user list
- **Writes to:** Deprecation plan (SharePoint/Product); communication emails (Outlook); changelog
- **HITL Required:** Dr. Lewis approves plan; Matt Mathison approves if portfolio-affecting; all communications reviewed by Dr. Lewis before sending

## Test Cases
1. **Golden path:** Deprecating the legacy meeting summary email format (replaced by new Monday.com-integrated format) → Usage: 12 MBL users receive the old email; Replacement: new Monday.com push (ready); T-90: email to 12 users with migration guide (switch to Monday.com); T-60: reminder; T-30: check that all 12 have Monday.com access; T-0: sunset old email; 2 users needed 1:1 help with Monday.com setup — resolved; sunset complete
2. **Edge case:** Vendor deprecates their API faster than the 90-day window → communicate immediately with what you know; give users as much notice as you have; accelerate migration support; don't wait for 90 days if you can't; document the forced timeline and why; if users are impacted, apologize and offer extra support
3. **Adversarial:** Engineering wants to immediately remove the old feature to save maintenance time → maintaining the old thing while users migrate is the cost of good deprecation; the alternative (immediate removal) trades engineering time for user trust; calculate: 2 months of maintenance cost vs. trust damage from a surprise removal; trust damage is almost always more expensive; enforce the 90-day notice unless there is a genuine security/compliance emergency

## Audit Log
Deprecation plans retained. Communication send dates and content archived. Sunset completion documented. Post-sunset impact monitoring results retained.

## Deprecation
This skill retires if MBL establishes a formal product lifecycle management process with standardized deprecation workflows and templates.
