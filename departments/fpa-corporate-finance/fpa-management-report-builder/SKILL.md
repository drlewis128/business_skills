---
name: fpa-management-report-builder
description: "Build the monthly management reporting package for portfolio company CEOs. Use when the user says 'management report', 'CEO report', 'monthly report', 'management reporting package', 'operating report', 'management dashboard', 'monthly summary', 'CEO financial package', 'operating summary', 'monthly management package', 'management financials', 'CEO dashboard', 'monthly financial report', 'operating financials', 'management review package', 'operational report', 'monthly CEO update', 'management accounts', or 'monthly financial summary'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <YYYY-MM>] [--audience <ceo|leadership-team>] [--action <build|review|deliver>]"
---

# Management Report Builder

Build the monthly management reporting package for portfolio company CEOs — providing a clear, action-oriented financial and operational summary that the CEO uses to run the business and make decisions. The management report is distinct from the board package (which is for governance) and the LP report (which is for investors): it is for the person responsible for executing the business day-to-day. The CEO gets the management report by BD7 every month without fail.

## When to Use
- Monthly close is complete (BD6 sign-off) — build and deliver the CEO report by BD7
- A CEO asks for an ad-hoc financial summary between monthly cycles
- Onboarding a new portfolio company CEO — establish the management report format
- A significant business event warrants an interim update to the CEO (not held until month-end)

## Management Report Framework

```
CEO MANAGEMENT REPORT STRUCTURE:

  Section 1 — Executive Summary (1 page):
    Month in 3 bullets: What happened, what the numbers show, what we're doing about it
    Traffic light status: Revenue (🟢/🟡/🔴), EBITDA (🟢/🟡/🔴), Cash (🟢/🟡/🔴), Ops (🟢/🟡/🔴)
    Single most important action this month: What the CEO needs to do or decide
    
  Section 2 — Financial Performance:
    P&L summary: Revenue, COGS, Gross Profit, OpEx, EBITDA — Actual vs. Budget vs. Prior Year
    Revenue detail: By customer/segment/product — where did revenue come from?
    Significant variances explained (not just listed): Root cause + management response
    YTD performance vs. YTD budget
    
  Section 3 — Operating Metrics (company-specific):
    Allevio: Member count, new members added, members lost, PMPM blended rate,
             provider utilization, collections rate, denial rate, AR aging
    HIVE: BOE/day production, WTI realized price, LOE/BOE, operating netback,
          well uptime, upcoming maintenance
    Column6: Active campaigns, campaigns launched, campaigns completed, avg campaign value,
              CPM by channel (CTV vs. programmatic), contribution margin %, pipeline
              
  Section 4 — Cash and Working Capital:
    Cash on hand (end of month)
    LOC balance and availability
    Cash runway (months at current burn)
    AR aging summary: Current / 30-60 days / 60-90 days / >90 days
    Any past-due accounts requiring CEO collection action
    AP balance and upcoming large payments
    
  Section 5 — Headcount and People:
    Current FTE count vs. plan
    Any new hires, terminations, open roles
    Upcoming hire decisions (if any step cost triggers approaching)
    
  Section 6 — Rolling Forecast (1-page):
    Updated 12-month forecast after incorporating the current month's actuals
    Full-year EBITDA forecast vs. annual budget
    Material forecast changes since last month (what changed and why)
    
  Section 7 — Key Issues and Decisions Needed:
    List of current issues requiring CEO attention (with due dates)
    Decisions needed from Dr. Lewis, Matt Mathison, or the board
    Action items from the prior month's report — closed or still open?
    
MANAGEMENT REPORT TONE AND LANGUAGE:
  The CEO operates the business; they need operational language, not accounting language
  Lead with business implications, not accounting mechanics
  Use their language: "members" not "unit volume"; "deals closed" not "revenue contracts"; "net barrels" not "production volumes"
  Keep it concise: A management report that requires 45 minutes to read is too long
  Target: 5-8 pages including all tables; the CEO should be through it in 15 minutes
  Any exception or issue: State the problem, state the cause, state what's being done — 3 sentences maximum
```

## Output Format

```markdown
# Management Report — [Entity] | [Month YYYY]
**Delivered:** BD7 | **Prepared by:** Dr. Lewis

---

## Executive Summary

**Month in one line:** [Allevio added 12 members in June and hit 1,192 members — revenue ahead of plan; EBITDA slightly below on a one-time credentialing cost.]

| Area | Status | Note |
|------|--------|------|
| Revenue | 🟢 Ahead of plan | +3.5% vs. budget |
| EBITDA | 🟡 Slightly below | $18K below — one-time cost (see Section 2) |
| Cash | 🟢 Healthy | $248K / 82 days runway |
| Operations | 🟢 On track | 1,192 members; provider utilization 87% |

**Single most important action this month:** [Follow up with [Company X] — their invoice is 52 days past due ($14,200). Please call the CFO directly this week.]

---

## Financial Performance

| Metric | Actual | Budget | Variance | Prior Year |
|--------|--------|--------|---------|-----------|
| Revenue | $[X]K | $[X]K | +/−$[X]K ([X]%) | $[X]K |
| Gross Profit | $[X]K | $[X]K | +/−$[X]K | $[X]K |
| OpEx | $[X]K | $[X]K | +/−$[X]K | $[X]K |
| **EBITDA** | **$[X]K** | **$[X]K** | **+/−$[X]K** | **$[X]K** |

**Key variance explanation:** [Plain language — the $18K EBITDA gap is entirely from a one-time credentialing cost for the two new providers who started in June. This cost won't repeat. Adjusted EBITDA is $2K ahead of plan.]

---

## Operating Metrics

| Metric | Actual | Target | vs. Target |
|--------|--------|--------|-----------|
| [Members at month-end] | [1,192] | [1,180] | ✅ +12 |
| [New members added] | [15] | [12] | ✅ |
| [Members lost/churned] | [3] | [<5] | ✅ |
| [Blended PMPM rate] | $[X] | $[X] | ✅/⚠️ |
| [Collections rate] | [X]% | >95% | ✅/⚠️ |

---

## Cash and Working Capital

| Metric | Amount | Status |
|--------|--------|--------|
| Cash on hand | $[X]K | ✅ |
| LOC balance / availability | $[X]K / $[X]K | ✅ |
| Cash runway | [N] months / [N] days | ✅ |
| AR >60 days | $[X]K ([N] accounts) | ⚠️ — see action item above |

---

## Issues and Actions

| Issue | Owner | Due | Status |
|-------|-------|-----|--------|
| [Company X invoice — 52 days past due] | CEO | This week | ⏳ Action needed |
| [Credentialing paperwork — Provider C] | COO | July 15 | ⏳ In progress |
| [Prior month action — resolved] | CEO | Done | ✅ |

---

## Rolling Forecast Summary

**Full-year EBITDA forecast:** $[X]K (vs. budget $[X]K = [+/−X]%)
**Key forecast change from last month:** [None / Revenue revised up $[X]K due to new employer group signed July 1]
```

## Output Contract
- BD7 without exception — the management report lands in the CEO's inbox by BD7, every month; the CEO plans around this cadence; a late report disrupts their ability to review financials with their team; Dr. Lewis maintains the close calendar precisely to ensure BD7 delivery is achievable; if anything in the close process is at risk of delaying the report, Dr. Lewis alerts the CEO on BD5 with a revised timeline and a partial report — not silence followed by a late delivery
- The executive summary is the whole report — most CEOs will read the executive summary and only dig into the detail for items flagged; the executive summary must stand alone; it must contain the traffic light, the month-in-one-line, and the single most important action; if the CEO reads only the executive summary and nothing else, they should have enough to manage the business for the week; the rest of the report is the detail for the questions they will have after reading the summary
- Action items have owners and due dates — a management report that lists issues without owners and due dates is an observation document, not a management tool; every issue in Section 7 has: the description, who owns it, when it's due, and whether it's open or closed; the CEO can delegate from this list; Dr. Lewis can track completion; the management report is the operating accountability document for the month
- HITL required: Dr. Lewis builds; CEO receives and acts; Dr. Lewis should never need approval to deliver the CEO report — it is a standard deliverable; the CEO can request corrections or clarifications, which Dr. Lewis resolves same-day; if the management report contains information that will surprise Matt Mathison (a material issue the CEO has not yet communicated to Matt Mathison), Dr. Lewis surfaces that to Matt Mathison proactively before the report is delivered to the CEO

## System Dependencies
- **Reads from:** QuickBooks monthly close (P&L, Balance Sheet, Cash Flow after BD6 sign-off); fpa-variance-analyzer (explains the variances in Section 2); fpa-rolling-forecast-updater (updated forecast in Section 6); fpa-working-capital-analyzer (AR aging for Section 4); fpa-cash-runway-modeler (cash section); operating data from the CEO/business (members, BOE, campaigns for Section 3); prior month's management report (for open action items follow-up)
- **Writes to:** CEO management report (SharePoint/Finance/<Company>/ManagementReports/[YYYY-MM]_ManagementReport.pdf); Dr. Lewis tracks action items from each report in a running log; material issues in the management report that affect the portfolio-level view are reflected in the Matt Mathison portfolio summary (fpa-portfolio-performance-model)
- **HITL Required:** Dr. Lewis builds; CEO receives; Dr. Lewis tracks action items; any management report issue that rises to Matt Mathison's level (cash below 30 days, material covenant breach, key executive departure) is surfaced to Matt Mathison immediately, not held until the next report cycle

## Test Cases
1. **Golden path:** Allevio June management report by BD7 → Revenue: $104.5K (plan $101K, 3.5% ahead); EBITDA: $71K (plan $89K, $18K below — one-time credentialing cost for 2 new providers); Cash: $248K (82 days); Members: 1,192 (plan 1,180, +12); Collections rate: 93.8% (target >95% — ⚠️ slight concern); AR >60 days: $14.2K at Company X (action needed); Open action item from May: Follow up on PMPM escalation clause with Company Y — CLOSED (negotiated +$2/member effective August); New action item: CEO to call Company X CFO for invoice settlement this week; Forecast: EBITDA full-year $852K (plan $840K, 1.4% ahead); management report delivered to CEO by BD7 9 AM; CEO confirms receipt and reviews with COO same day
2. **Edge case:** HIVE management report shows WTI for June averaged $47.20 — below the $48 stress trigger → Dr. Lewis triggers the stress protocol report first, before building the regular management report; stress protocol alert to CEO and Matt Mathison on BD5 (doesn't wait until BD7); management report on BD7 includes: a dedicated stress protocol section explaining what has been activated (CapEx freeze, LOC standby, distribution hold); cash runway at $47 WTI: 7 months; current actions taken: CapEx >$5K frozen, LOC standby authorization request sent to Matt Mathison; management report also includes: normal financials showing the WTI impact; rolling forecast updated with stress WTI scenario; open action item: CEO to confirm with operations team whether any CapEx freeze will affect well safety or compliance (compliance CapEx is never frozen)
3. **Adversarial:** The Column6 CEO asks Dr. Lewis to "soften the language" around a missed revenue target before the management report is sent → Dr. Lewis declines the language change: "I understand the miss is uncomfortable, but the management report needs to state the revenue shortfall accurately: $2.35M actual vs. $2.60M plan — a $250K miss. The report already explains the root cause (two campaigns delayed to Q3 due to client budget timing) and shows the forecast recovery. Softening the language doesn't change the numbers; it just makes management look less clear-eyed. The value of an accurate management report is that you can act on it. I'll keep the numbers as they are, but I can strengthen the forward-looking recovery narrative if that would help. The CEO of Column6 showing up to their board conversation with a clear-eyed view of the miss and a credible recovery plan is a much stronger position than trying to minimize it." CEO agrees; management report delivered accurately

## Audit Log
All monthly management reports retained by company and period. Action item tracking logs retained (what was assigned, who owned it, when it was due, when it was resolved). Any mid-month interim reports retained. Material issues surfaced to Matt Mathison (separate from regular cycle) documented with date and reason for escalation.

## Deprecation
Retire when each portfolio company has a CFO who builds the monthly management report — with Dr. Lewis reviewing the CEO package for portfolio-level consistency and Matt Mathison receiving the portfolio summary derived from all three management reports.
