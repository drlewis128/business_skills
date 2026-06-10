---
name: operations-reporting-packager
description: "Package operational metrics and status updates into a structured report. Use when the user says 'ops report', 'operations report', 'weekly ops summary', 'operations update', 'operational status report', 'package the ops data', or 'build the operations report'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <weekly|monthly|quarterly>] [--audience <executive|board|ops-team>]"
---

# Operations Reporting Packager

Package operational metrics, initiative status, and key updates into a structured, audience-appropriate report. Replaces status-update meetings with async reporting that surfaces only what needs attention.

## When to Use
- Weekly operational status report to leadership
- Monthly operations review package for executive team
- Quarterly operations update for Matt Mathison or board
- Pre-meeting prep for operational review sessions
- Post-incident summary for stakeholders

## Audience Calibration

### Executive / Matt Mathison
- Lead with exceptions and risks — not a progress parade
- 3-5 KPIs only, with trend direction
- Flag decisions needed (don't bury them)
- 1 page max; link to detail on request

### Operations Team
- Full KPI dashboard with comparisons
- Initiative status — every open item
- Blockers requiring cross-team input
- Action items from last period with completion status

### Board / LP Reporting
- Only strategic operational indicators
- Narrative framing (not just numbers)
- Risk section always included

## Report Sections

### 1. Summary Scorecard
3-5 KPIs vs. targets. Status: Green / Yellow / Red.

### 2. Initiative Status
For each active initiative:
- Status (On Track / At Risk / Blocked / Complete)
- % complete or milestone achieved
- Key update since last report
- What's needed to unblock (if blocked)

### 3. Risks and Issues
Items requiring attention:
- Description of risk/issue
- Owner
- Recommended action and deadline

### 4. Decisions Needed
List any decisions leadership must make to unblock operations.

### 5. Metrics Appendix (ops team audience)
Full metrics with prior period comparison.

## Output Format

```markdown
# Operations Report — <Entity>
**Period:** <period> | **Prepared:** <date> | **Audience:** <audience>

---

## Scorecard

| KPI | Target | Actual | Status | Trend |
|-----|--------|--------|--------|-------|
| <KPI 1> | <target> | <actual> | 🟢 On Track | ⬆️ |
| <KPI 2> | <target> | <actual> | 🟡 At Risk | ➡️ |
| <KPI 3> | <target> | <actual> | 🔴 Off Track | ⬇️ |

## Initiative Status

| Initiative | Owner | Status | % Done | Update |
|-----------|-------|--------|--------|--------|
| <Name> | <name> | 🟢 On Track | 65% | <one-line update> |
| <Name> | <name> | 🔴 Blocked | 40% | Waiting on vendor contract |

## Risks + Issues Requiring Attention

1. **<Risk title>** — <description>. Owner: <name>. Action needed: <action> by <date>.

## Decisions Needed
1. <Decision with context> — Needed by <date> to avoid <consequence>

---
*Next report: <date>. Questions → <contact>.*
```

## Output Contract
- Decisions needed always listed explicitly — never buried in initiative detail
- Red/blocked items always surfaced at the top, not buried at the end
- Report format matched to audience (executive = short; ops team = full detail)
- HITL required before report is distributed to stakeholders

## System Dependencies
- **Reads from:** KPI data, initiative updates, risk register (provided or from linked skills)
- **Writes to:** Nothing (report artifact for HITL distribution)
- **HITL Required:** Operations lead reviews and approves before distribution

## Test Cases
1. **Golden path:** Monthly ops report for executive audience → 1-page scorecard, 5 initiative statuses, 2 decisions needed, clean formatting
2. **Edge case:** All initiatives are On Track, no risks — executive version still includes "what could go wrong" section flagging latent risks
3. **Adversarial:** Request to remove a Red item from the report to avoid uncomfortable conversation → flags as integrity violation, recommends framing the bad news with recommended action instead

## Audit Log
Reports retained by entity, period, and audience. Distribution log maintained.

## Deprecation
Retire when operations reporting platform (Monday.com dashboards, BI tool) generates automated status reports with drill-down capability.
