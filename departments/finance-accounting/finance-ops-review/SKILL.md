---
name: finance-ops-review
description: "Run a Finance function operations review. Use when the user says 'finance ops review', 'finance operations review', 'quarterly finance review', 'annual finance review', 'review the finance function', 'finance function assessment', 'how is finance doing', 'finance team review', 'finance retrospective', 'is the finance function working', 'finance function improvement', or 'finance quarter review'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name or 'portfolio'>] [--period <quarterly|annual>] [--quarter <Q1|Q2|Q3|Q4>] [--year <YYYY>]"
---

# Finance Operations Review

Run a structured quarterly or annual operations review for the Finance function — a systematic assessment of how well Finance is operating across MBL portfolio companies. The Finance ops review answers: What's working? What isn't? What do we start, stop, and continue? What are the priorities for next quarter? This is a management tool, not a financial report. It captures operational quality, process health, tool effectiveness, and team capacity — the inputs that determine whether the Finance function is sustainable and improving.

## When to Use
- End of each quarter — standard Finance function retrospective
- End of year — full annual Finance function assessment
- Matt Mathison asks for a view of Finance function health and roadmap
- A recurring Finance problem keeps reappearing (close delays, reconciliation errors, missed deadlines)
- Before hiring additional Finance staff — justify the need with data
- Before a portfolio company engagement or audit — Finance readiness check

## Finance Ops Review Framework

```
Four review dimensions:

1. PROCESS QUALITY: Are our core Finance processes running well?
   → Close speed and accuracy; reconciliation completion; compliance rate
   → Start/Stop/Continue for Finance processes

2. TOOL AND SYSTEMS HEALTH: Are the tools working for us or against us?
   → QuickBooks, Bill.com, payroll system, reporting tools
   → Tool gaps: where are we doing manually what should be automated?

3. TEAM AND CAPACITY: Do we have the right people with the right capacity?
   → Hours: close work, compliance work, strategic work
   → Where is Finance a bottleneck? Where is Dr. Lewis spending time on work that should be delegated?

4. STRATEGIC VALUE: Are we contributing beyond bookkeeping?
   → Analyses delivered, decisions supported, cost savings identified
   → What Finance work created the most value this period?

Annual review adds:
   → Full-year performance vs. OKRs
   → Compensation benchmarking (if applicable)
   → Finance function capacity plan for next year
   → System and vendor renewals and evaluations
```

## Output Format

```markdown
# Finance Operations Review — [Q<N> / Annual] [YYYY]
**Period covered:** [Start date] to [End date]
**Entities reviewed:** [MBL Partners / Allevio / HIVE Partners / Column6]
**Prepared by:** Dr. John Lewis | **Date:** <Date>
**For:** Matt Mathison

---

## TL;DR

Finance function status: 🟢/🟡/🔴
What's working best: [1 sentence]
Biggest current challenge: [1 sentence]
Top priority for next quarter: [1 specific thing]
Matt Mathison decision needed: [Specific — or "None this period"]

---

## Section 1: Process Quality Review

### Close Operations

| Metric | Q[N-1] | Q[N] | Target | Trend |
|--------|--------|------|--------|-------|
| Average days to close — Allevio | [N] | [N] | ≤7 | ↑/→/↓ |
| Average days to close — HIVE | [N] | [N] | ≤7 | |
| Average days to close — Column6 | [N] | [N] | ≤7 | |
| Reconciliation completion by Day 5 | [%] | [%] | 100% | |
| Restatements (quarter total) | [N] | [N] | 0 | |
| Management report by Day 10 | [%] | [%] | 100% | |

**Close process assessment:**
- What went well this quarter in the close process?
- What consistently slows the close?
- What is the #1 change that would most improve close speed or accuracy?

### Compliance Operations

| Obligation | Status | On time? | Notes |
|-----------|--------|---------|-------|
| Federal tax payments (payroll) | ✅ / ❌ | ✅ / ❌ | |
| State tax filings | ✅ / ❌ | ✅ / ❌ | |
| Quarterly payroll returns (941) | ✅ / ❌ | ✅ / ❌ | |
| [HIVE] Utah severance / production tax | ✅ / ❌ | ✅ / ❌ | |
| Annual filings due this quarter | ✅ / ❌ | ✅ / ❌ | |
| Vendor 1099 tracking (W-9s current) | ✅ / ❌ | % complete | |

**Compliance misses this period:** [None / List with root cause]

### AP and AR Operations

| Metric | Current | Target | Status |
|--------|---------|--------|--------|
| AP overdue (>5 days past due) | $[X] | $0 | 🟢/🟡/🔴 |
| AP average days to pay (vs. terms) | [N] days | At terms | |
| AR — accounts >60 days overdue | $[X] | $0 | |
| DSO — Allevio | [N] days | <40 days | |
| Duplicate payments this quarter | [N] | 0 | |

---

## Section 2: Tools and Systems Health

| System | Health | Primary issue | Action needed |
|--------|--------|-------------|--------------|
| QuickBooks | 🟢/🟡/🔴 | [e.g., "Chart of accounts has grown messy — 40+ accounts that haven't been used in 2 years"] | [Cleanup in Q[N+1]] |
| Bill.com | 🟢/🟡/🔴 | | |
| Payroll system ([ADP/Gusto/other]) | 🟢/🟡/🔴 | | |
| Reporting / BI tools | 🟢/🟡/🔴 | | |
| SharePoint/Finance folder structure | 🟢/🟡/🔴 | | |

**Tool gaps — doing manually what should be automated:**

| Manual task | Time cost | Automation option | Priority |
|------------|----------|------------------|---------|
| [e.g., Monthly management report formatting] | [~2 hrs/month] | [Template-based automation] | High / Medium / Low |
| | | | |

**System renewals due next 90 days:**
- [System name: renewal date, cost, renewal recommendation]

---

## Section 3: Team and Capacity

### Finance Headcount

| Role | Person | Entity | FT/PT | Status |
|------|--------|--------|-------|--------|
| Director of Finance / AI Strategy | Dr. John Lewis | MBL (all entities) | FT | ✅ Active |
| [Controller] | [Name] | [Entity] | FT/PT | ✅ Active / 🔴 Open |
| [Bookkeeper] | [Name] | [Entity] | FT/PT | |

**Open positions:** [None / List with priority and target fill date]

### Capacity Assessment

| Function | Estimated weekly hours | Capacity status |
|----------|----------------------|----------------|
| Close and reconciliation (all entities) | [N] hrs | 🟢 Manageable / 🟡 Tight / 🔴 Overloaded |
| Compliance and filing | [N] hrs | |
| AP/AR management | [N] hrs | |
| Reporting and analysis | [N] hrs | |
| Strategic finance (modeling, planning) | [N] hrs | |
| **Total Finance function hours** | **[N] hrs** | |

**Where is Dr. Lewis spending time that should be delegated?**
[Specific tasks that are below the appropriate level and should be owned by a controller or bookkeeper — flags when hiring is needed]

**Where is Finance a bottleneck to the business?**
[Areas where Finance delays or information gaps are slowing business decisions]

---

## Section 4: Strategic Value Delivered

| Initiative | Entity | Value delivered | Effort level |
|-----------|--------|----------------|-------------|
| [Unit economics analysis] | [Allevio] | [$X decision informed / $X cost saved] | High / Medium / Low |
| [Cash flow forecast update] | [HIVE] | [Distribution timing decision supported] | |
| [Cost reduction identified] | [Column6] | [$X annual savings] | |

**Hard financial value from Finance this quarter:**
- Cost savings identified: $[X] (of which $[X] implemented)
- Cost savings from prior quarters now realized: $[X]
- Capital efficiency improvements: [Description]

**Matt Mathison satisfaction:** [Rating/10] — [Date solicited]
**CEO satisfaction (if applicable):** [Rating/10] — [Date solicited]

---

## Section 5: Start / Stop / Continue

### Start (things we should begin doing that we're not doing)
| Initiative | Why | Owner | Timeline |
|-----------|-----|-------|---------|
| | | | |

### Stop (things we're doing that aren't worth the time)
| Activity | Why stop | Time recovered | Decision needed |
|---------|---------|--------------|----------------|
| | | | |

### Continue (things working well — make them permanent)
| Practice | Why it works | Ensure it continues by |
|---------|------------|----------------------|
| | | |

---

## Section 6: Next Quarter Priorities

| Priority | Description | Owner | Success metric | Due |
|---------|-------------|-------|---------------|-----|
| 1 | [Most important Finance improvement] | Dr. Lewis | [Specific measure] | [Date] |
| 2 | | | | |
| 3 | | | | |

**Not doing next quarter (active decision to defer):**
[Items that are important but will not be prioritized — explicit deferral vs. forgetting]

---

## Annual Review Additions (Q4 / Year-End Only)

### Full-Year OKR Performance

| Objective | Annual grade | Key win | Key miss |
|---------|------------|--------|---------|
| O1: Close speed and accuracy | [0.X] | | |
| O2: Forecast quality | [0.X] | | |
| O3: Compliance | [0.X] | | |
| O4: Business partner value | [0.X] | | |
| **Annual Finance function grade** | **[0.X]** | | |

### Finance Function Capacity Plan — Next Year

| Hire | Entity | Timing | Cost | Trigger |
|------|--------|--------|------|---------|
| [Controller — Allevio] | Allevio | [Q2 2027] | [$X] | [Close time exceeds 10 days; Dr. Lewis capacity at limit] |

### Vendor and System Annual Renewals

| Vendor / System | Annual cost | Contract end | Renew / Renegotiate / Replace |
|----------------|------------|-------------|------------------------------|
| QuickBooks Online | $[X] | [Date] | Renew — no alternative at this scale |
| Bill.com | $[X] | [Date] | Renegotiate — volume justifies negotiation |
| [Payroll system] | $[X] | [Date] | |
```

## Output Contract
- Start/Stop/Continue always completed — the most actionable section of a Finance ops review is what to do differently; every review must include specific Start items (not vague "improve X"), Stop items (things currently being done that aren't worth the time), and Continue items (practices that should be codified); "nothing to stop" is a red flag — there is always something to stop
- Capacity assessment always honest — a Finance function that is overloaded but doesn't say so will have declining quality, missed deadlines, and eventually a breakdown during a high-stakes period (audit, LP reporting, board meeting); the capacity section must be honest about where Dr. Lewis's time is being consumed and what work is below the appropriate level; this is the data that justifies hiring decisions
- Strategic value must be quantified where possible — "Finance added value" is not a meaningful statement; the review must identify specific decisions that Finance enabled or analyses that were delivered, with dollar value where calculable; Finance that cannot demonstrate strategic value beyond bookkeeping will eventually be outsourced to a cheaper solution
- Matt Mathison satisfaction always solicited directly — do not estimate or assume; ask for the rating; document it; trend it quarter over quarter; if it's declining, understand why before the annual review
- HITL required: Dr. Lewis prepares and presents the review; Matt Mathison reviews quarterly; any 🔴 items require a remediation plan before the next quarter begins; hiring decisions require Matt Mathison approval; tool replacement decisions >$5K annual cost require Matt Mathison approval

## System Dependencies
- **Reads from:** QuickBooks (close timing, reconciliation records, transaction data), Bill.com (AP aging, payment timing), compliance calendar (deadline tracking), OKR tracker (prior quarter grades), management reports (delivery dates), Matt Mathison direct feedback
- **Writes to:** Finance ops review document (SharePoint/Finance/Ops Reviews/); quarterly Matt Mathison brief; annual Finance function capacity plan; Start/Stop/Continue tracker
- **HITL Required:** Dr. Lewis prepares; Matt Mathison reviews quarterly; 🔴 items require remediation plan; hiring and tool decisions require Matt Mathison approval

## Test Cases
1. **Golden path:** Q2 2026 Finance ops review → Process quality: Allevio close 6 days ✅, HIVE 8 days 🟡 (target 7), Column6 9 days 🟡; zero restatements ✅; compliance: 100% on all filings ✅; AP overdue $0 ✅; DSO Allevio 37 days (target 35 — improving); Tools: QB health 🟢, Bill.com 🟢, payroll 🟡 (manual entry for contractors is taking 3 hrs/month — should be self-service); Capacity: close + reconciliation 18 hrs/week, compliance 4 hrs/week, strategic 6 hrs/week — manageable but HIVE close is inefficient; Start: implement contractor self-service invoicing in Bill.com (save 3 hrs/month); Stop: manual weekly cash email to Matt Mathison — replace with automated dashboard; Continue: Thursday AM finance sync (30 min) — working well; Strategic value: $43K cost savings identified ✅, 3 decision models ✅, unit economics analysis for Allevio expansion ✅; Matt Mathison: 8.5/10; Q3 priorities: (1) HIVE close speed to 7 days, (2) contractor invoicing automation, (3) Column6 controller search
2. **Edge case:** The ops review reveals Dr. Lewis is spending 25+ hours per week on routine bookkeeping tasks that should be delegated → this is the signal that triggers a hiring conversation; document it specifically: "Dr. Lewis is currently spending ~12 hrs/week on Allevio transaction coding and reconciliation — work that should be owned by a controller or senior bookkeeper. This limits the time available for strategic finance, LP reporting, and portfolio-level analysis. Recommend initiating the Allevio controller search no later than [date]. Cost: ~$80K/year. Value: frees 10-12 hrs/week for Dr. Lewis to focus on higher-leverage work. ROI: clear." Bring to Matt Mathison with the specific hiring ask
3. **Adversarial:** Matt Mathison gives Finance a 5/10 rating without explanation → do not present the ops review as complete without understanding the rating; send: "Matt — I saw the 5/10 rating for Finance. That's important feedback. Can you give me 15 minutes this week to understand specifically what Finance isn't doing that you wish we were, or what we're doing that isn't valuable? I want to make Q3 significantly better and I need the specifics to do that." Document the response, build it into the Q3 Start/Stop/Continue, and set a target to reach 8/10 by Q3 review. A 5/10 that improves to 8/10 with documented changes is a strong Finance function result.

## Audit Log
Finance ops reviews retained by quarter and year. Start/Stop/Continue action items tracked and closed. Matt Mathison satisfaction ratings retained with dates. Hiring decisions and capacity assessments retained. Annual OKR grades retained with narratives. Remediation plans for 🔴 items retained with outcome tracking.

## Deprecation
Retire when each portfolio company has a dedicated Finance leader (CFO or controller) who owns their own quarterly Finance ops review, and Dr. Lewis's review shifts to a portfolio-level Finance governance review rather than operational execution assessment for individual companies.
