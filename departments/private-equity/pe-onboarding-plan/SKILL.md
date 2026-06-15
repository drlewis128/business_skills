---
name: pe-onboarding-plan
description: "Create a 90-day onboarding plan for a new MBL Partners team member. Use when the user says 'onboard a new hire at MBL', 'PE onboarding plan', 'new team member at MBL', '90-day plan for PE hire', 'onboard a PE professional', 'new analyst onboarding', or 'getting a new hire up to speed at the fund'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--role <analyst|associate|vp-investments|portfolio-ops>] [--hire-name <name>] [--start-date <date>]"
---

# PE Onboarding Plan

Create a 90-day onboarding plan for a new MBL Partners team member — structured learning, key relationship introductions, and early deliverable milestones. At a small PE fund, there is no large onboarding program; the new hire must become independently productive quickly. This plan sets clear expectations, accelerates knowledge transfer, and gives the new hire a roadmap so they're not left wondering what to do.

## When to Use
- New hire start date is within 30 days — build the plan before they start
- New hire has started and there's no onboarding plan yet — build retroactively
- Matt Mathison asks "how are we onboarding [Name]?"
- Dr. Lewis wants to ensure the new hire builds trust and credibility quickly

## Output Format

```markdown
# 90-Day Onboarding Plan — <Name>
**Role:** <Title> | **Start date:** <date>
**Manager:** Dr. John Lewis | **Co-reviewer:** Matt Mathison
**Success at 90 days means:** [Specific outcomes that prove the hire is succeeding]

---

## Month 1: Learn Before You Do (Days 1-30)

**Mindset:** Observe, listen, ask questions. No major changes or recommendations until you understand why things are the way they are.

### Week 1: Orientation

| Day | Activity | Owner | Outcome |
|-----|---------|-------|---------|
| Day 1 | Welcome; office/tools setup; SharePoint access | Dr. Lewis | Systems access complete |
| Day 1 | Matt Mathison intro meeting (30 min) | Matt Mathison | Relationship established |
| Day 1-2 | Read the LP Agreement (all of it) | Self | Fund structure understood |
| Day 2 | Fund overview: portfolio companies, fund thesis, fund life | Dr. Lewis | MBL fund context |
| Day 3 | Deep dive: Allevio (financial model + value creation tracker) | Dr. Lewis | Allevio thesis understood |
| Day 3 | Deep dive: HIVE Partners (financial model + value creation tracker) | Dr. Lewis | HIVE thesis understood |
| Day 4 | Deep dive: Column6 (financial model + value creation tracker) | Dr. Lewis | Column6 thesis understood |
| Day 4 | Fund performance model walkthrough (fund-level IRR/MOIC) | Dr. Lewis | Fund returns understood |
| Day 5 | Deal pipeline review — active and historical deals | Dr. Lewis | Pipeline state known |
| Day 5 | AI tools setup: Claude Code, business_skills library, OpenFang | Dr. Lewis | AI tools operational |

---

### Week 2-3: Deep Learning

| Topic | Format | Who leads | Outcome |
|-------|--------|----------|---------|
| Portfolio company: Allevio site visit | In-person | Dr. Lewis + Allevio CEO | Understand real operations |
| Portfolio company: HIVE update call | Call | Dr. Lewis + HIVE GP | HIVE operations understood |
| Deal screening process (review 3 past screens) | Self-study | Dr. Lewis reviews | Can screen independently |
| MBL systems map: QuickBooks, SharePoint, Monday.com, Bill.com | Walkthrough | Dr. Lewis | Systems access and usage |
| LP Agreement deep dive — economics section | Self-study | Dr. Lewis Q&A | Waterfall, carry, fees understood |
| Compliance overview: SEC filings, fund compliance tracker | Dr. Lewis | Compliance obligations known |
| THRIVE values and how they apply at MBL | Matt Mathison | THRIVE embedded |

---

### Month 1 Deliverable: First Independent Work Product

**Assignment:** Complete a deal screen on one inbound deal (under Dr. Lewis guidance)
**Due:** Day 30
**Standard:** Must match the quality of pe-deal-screener output — thesis, financials, verdict, next step
**Purpose:** Test investment judgment early; build confidence; identify gaps

---

## Month 2: Learn by Doing (Days 31-60)

**Mindset:** Start contributing independently. Take on real work with review. Ask fewer basic questions — start proposing solutions.

| Responsibility | Frequency | Standard |
|---------------|-----------|---------|
| Deal screening (independent) | As inbound deals arrive | pe-deal-screener quality; Dr. Lewis final review |
| Portfolio company financial update (one company) | Monthly | Variance analysis to plan; escalate anomalies |
| Deal pipeline maintenance | Weekly | Deal tracker current; next actions defined |
| LP reporting (one section) | Quarterly | Under Dr. Lewis supervision |
| Attend: Allevio monthly ops call | Monthly | Take notes; identify action items |
| Attend: HIVE quarterly update | Quarterly | Take notes; prepare Matt Mathison briefing |

**Month 2 Deliverable:** Lead one portfolio company monthly financial update — variance analysis, EBITDA bridge, Matt Mathison summary
**Due:** Day 60
**Standard:** Matt Mathison can read it without needing to follow up with Dr. Lewis for basic clarifications

---

## Month 3: Take Ownership (Days 61-90)

**Mindset:** Own your work product. Bring solutions, not just analysis. Proactively identify what needs attention without being asked.

| Responsibility | Status target by Day 90 |
|---------------|------------------------|
| Deal screening | Fully independent — Dr. Lewis reviews but doesn't redo |
| Portfolio company: owns [Company] monthly financial | Full ownership; Dr. Lewis spot-checks |
| Deal pipeline: daily maintenance | Autonomous |
| LP reporting: co-author quarterly update | Major sections drafted by hire; Dr. Lewis edits |
| One value creation initiative: project lead | Leading one specific initiative at a portfolio company |
| Fund compliance calendar: owns tracking | Full ownership; escalates to Dr. Lewis when needed |

**Month 3 Deliverable:** Lead and present the monthly portfolio review to Matt Mathison
**Due:** Day 90
**Standard:** Matt Mathison receives the review as a complete, clean package with no major edits needed from Dr. Lewis; verbal presentation is clear and confident

---

## 90-Day Success Criteria

By Day 90, the new hire should be able to:
- [ ] Screen an inbound deal independently and produce a quality screen in < 4 hours
- [ ] Build an EBITDA bridge for a portfolio company with management financial data
- [ ] Maintain the deal pipeline without prompting
- [ ] Write the Matt Mathison summary section of the portfolio dashboard
- [ ] Use Claude Code and the business_skills library for standard PE work tasks
- [ ] Identify and escalate a portfolio company issue proactively (before Dr. Lewis asks)
- [ ] Prepare a capital call notice with no errors
- [ ] Know the LP Agreement well enough to answer basic LP questions

---

## Key Relationships to Build in 90 Days

| Person | Role | Context | Target meeting/call by Day |
|--------|------|---------|--------------------------|
| Matt Mathison | Managing Partner | Key stakeholder — demonstrate value to him early | Day 1, Day 30 check-in |
| Allevio CEO | Portfolio company | Understand their business and trust | Day 15 (site visit) |
| HIVE GP | Portfolio company | Understand oil & gas ops | Day 20 (call) |
| Column6 CEO | Portfolio company | Understand CTV market | Day 25 (call) |
| Fund counsel | Legal | Know who to call for legal questions | Day 10 (intro) |
| Fund CPA/accountant | Tax | Know who prepares K-1s, fund returns | Day 10 (intro) |

---

## 30/60/90 Day Check-In

**Day 30 check-in (Dr. Lewis + new hire):**
- How is the learning going? What's unclear?
- First deliverable quality — gaps to address
- Systems and access — anything missing?

**Day 60 check-in (Dr. Lewis + new hire, with Matt Mathison invited):**
- Is the hire contributing independently? Areas to accelerate
- Relationship with portfolio companies — any issues?
- Month 2 deliverable review

**Day 90 review (Dr. Lewis + Matt Mathison + new hire):**
- Against 90-day success criteria — where green, where not yet
- Set first 6-month objectives
- Honest feedback on THRIVE alignment
```

## Output Contract
- Month 1 philosophy always explicit — "learn before you do" is a real principle; new hires who make changes before they understand the context create problems; this is stated directly in the plan
- First deliverable always by Day 30 — onboarding plans without early work product milestones don't create accountability; the first deal screen reveals capability gaps that can be addressed before they become operational problems
- 90-day success criteria always explicit — the new hire needs to know what "done" looks like at 90 days; ambiguous onboarding leads to mismatched expectations
- Matt Mathison always included at Day 90 review — his assessment of the new hire's value to date is the most important input; Dr. Lewis's assessment alone is insufficient
- HITL required: Dr. Lewis builds and runs the onboarding plan; Matt Mathison co-owns the 90-day review; no independent decision-making authority for new hire until Day 30 minimum; all deliverables reviewed by Dr. Lewis before going to Matt Mathison for the first 60 days

## System Dependencies
- **Reads from:** Fund documents, portfolio company models, deal pipeline, LP Agreement
- **Writes to:** Onboarding plan (SharePoint/HR/<Name>/Onboarding); 90-day check-in notes; success criteria assessment
- **HITL Required:** Dr. Lewis leads onboarding; Matt Mathison involved at Day 1, 60, and 90; all early deliverables reviewed by Dr. Lewis

## Test Cases
1. **Golden path:** New PE associate, starts Day 1 → Week 1: all orientation complete; LP Agreement read; three portfolio deep dives done; AI tools setup; Day 30: independent deal screen submitted — quality is 80% of target; Dr. Lewis provides specific feedback on investment judgment; Day 60: leads Allevio monthly financial update — clean, clear Matt Mathison summary; Day 90: presents full portfolio review to Matt Mathison — clean package; 90-day review: 8/10 criteria met; two gaps (LP reporting format; fund compliance calendar); clear 6-month plan set
2. **Edge case:** New hire is very strong analytically but struggles in the Allevio site visit (uncomfortable with the clinical environment) → this is important feedback; PE operations requires some comfort with portfolio company environments; assess whether the discomfort is about unfamiliarity (solvable with exposure) or fundamental misfit; if the hire is expected to work closely with Allevio management and can't engage effectively in a clinical setting, that's a real gap; discuss explicitly at Day 30 check-in; adjust the role if needed
3. **Adversarial:** New hire pushes back on Month 1 "learn before you do" constraint — they want to immediately start making recommendations on deal sourcing strategy → acknowledge their enthusiasm; explain the reason: in a small fund, a premature recommendation (without understanding the existing strategy, LP relationships, and fund thesis) can create confusion or damage relationships that took years to build; "learn before you do" is not about lack of confidence in them — it's about not making reversible mistakes; direct their energy toward the learning deliverables in Month 1; if they can't accept this constraint, it may signal a cultural fit issue worth discussing with Matt Mathison

## Audit Log
Onboarding plans retained by hire. 30/60/90 day check-in notes retained. 90-day success criteria assessments retained. Matt Mathison review documented.

## Deprecation
Retire when MBL has an HR function or People operations role that manages onboarding programs for all new hires with standardized processes and tools.
