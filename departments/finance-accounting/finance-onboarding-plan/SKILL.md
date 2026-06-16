---
name: finance-onboarding-plan
description: "Build a 90-day onboarding plan for a Finance team member. Use when the user says 'onboard a new controller', 'finance onboarding', 'new bookkeeper onboarding', 'finance team onboarding plan', 'onboard a CFO', 'new finance hire plan', '90-day finance plan', 'finance new hire', 'onboarding a new accountant', or 'get the controller up to speed'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--role <bookkeeper|controller|cfo>] [--hire <name>] [--start-date <YYYY-MM-DD>]"
---

# Finance Onboarding Plan

Build a structured 90-day onboarding plan for a new Finance team member at an MBL portfolio company — bookkeeper, controller, or CFO. Finance onboarding is different from general employee onboarding: the new hire needs to understand the books, systems, close process, and reporting obligations before they can be effective — and gaps in their understanding will create silent errors in the financials. A structured 90-day plan ensures they learn the right things in the right order and are set up to own their role by Day 90.

## When to Use
- A new Finance team member has been hired and starts in the next 1-30 days
- A Finance hire started without a formal onboarding plan and is struggling
- Matt Mathison asks "how are we bringing [new hire] up to speed?"
- A new controller or bookkeeper is taking over from a departing Finance employee
- A CFO has joined a portfolio company and needs context on MBL systems and expectations

## Onboarding Design Framework

```
Three-phase Finance onboarding:

PHASE 1 — LEARN (Days 1-30):
  Goal: Understand the business, the books, and the systems
  Output: Can independently navigate QuickBooks, produce a basic trial balance,
          and explain the business model to Dr. Lewis
  Failure mode: New hire goes straight to doing without understanding;
                produces reports that look right but have wrong underlying data

PHASE 2 — CONNECT (Days 31-60):
  Goal: Own the first monthly close; understand all vendor, customer, and
        compliance relationships
  Output: First solo close complete; management report delivered to Dr. Lewis;
          all vendor/payroll relationships mapped
  Failure mode: Close is completed but late; new hire doesn't flag issues
                because they don't know what "normal" looks like yet

PHASE 3 — CONTRIBUTE (Days 61-90):
  Goal: Own the Finance function; proactively identify issues; add value
        beyond bookkeeping
  Output: Second close complete; one improvement or insight delivered;
          quarterly rhythm established
  Failure mode: New hire is competent but reactive — waiting to be told
                what to look at rather than flagging what needs attention

Role-specific calibration:
  Bookkeeper: heavier on systems, transaction coding, close tasks
  Controller: heavier on reconciliation ownership, compliance calendar, management reporting
  CFO: heavier on strategic finance, LP relationships, board-level communication, capital allocation
```

## Output Format

```markdown
# Finance Onboarding Plan — <Company Name>
**Role:** [Bookkeeper / Controller / CFO]
**New hire:** <Name>
**Start date:** <Date>
**Onboarding owner:** Dr. John Lewis
**30-day check-in:** <Date> | **60-day check-in:** <Date> | **90-day review:** <Date>

---

## Systems Access — Complete Before Day 1

| System | Access level | Setup owner | Target date |
|--------|------------|------------|------------|
| QuickBooks Online | [Bookkeeper: Full / Controller: Admin / CFO: Read + Reports] | Dr. Lewis | Before start |
| Bill.com | [Bookkeeper: Data entry / Controller: Approver / CFO: Admin] | Dr. Lewis | Before start |
| [Payroll system] | [As applicable] | HR / Dr. Lewis | Before start |
| Microsoft 365 (Outlook, Teams, SharePoint) | Full | IT | Before start |
| SharePoint/Finance/ | Full | Dr. Lewis | Before start |
| Bank portal (read-only initially) | Read-only | Matt Mathison | Week 1 |

**Authorized signer access:** Bank account co-signer access (controller and above) — requires Matt Mathison authorization; target Day 30 after Dr. Lewis confirms proficiency.

---

## Phase 1: Learn (Days 1-30)

**Goal:** Understand the business, the books, and the systems before doing anything independently.

### Week 1 — Business and Systems Orientation

| Day | Task | With whom | Deliverable |
|-----|------|-----------|------------|
| Day 1 | Welcome; MBL Partners context; THRIVE values; role expectations | Dr. Lewis | — |
| Day 1 | QuickBooks walkthrough — chart of accounts, existing transactions, prior financials | Dr. Lewis | Can navigate QB independently |
| Day 2 | Bill.com walkthrough — vendor list, pending bills, approval workflow | Dr. Lewis | Understands AP workflow |
| Day 2 | Read last 3 months of management reports — understand the business model and KPIs | Solo | Can explain how the business makes money |
| Day 3 | Review prior month's close folder (reconciliations, journal entries, final financials) | Dr. Lewis | Understands how the close works |
| Day 3 | Meet [CEO / operations lead] — understand the business from the operational side | CEO / Ops | Relationship established |
| Day 4 | Bank reconciliation — shadow Dr. Lewis completing a reconciliation | Dr. Lewis | Understands the process |
| Day 4 | Payroll walkthrough — current payroll setup, schedule, approval process | Dr. Lewis | Understands payroll cycle |
| Day 5 | Vendor list review — who are the major vendors? What do we owe and when? | Solo | Top 10 vendors understood |

### Weeks 2-4 — Supervised Execution

| Task | Owner | Dr. Lewis role | Complete by |
|------|-------|---------------|------------|
| Code all transactions for the current week — Dr. Lewis reviews | New hire | Review and feedback | Day 14 |
| Complete first supervised bank reconciliation | New hire | Side-by-side | Day 15 |
| Review the full close checklist and identify any gaps vs. prior month | New hire | Discuss findings | Day 20 |
| Understand all compliance deadlines for next 90 days | New hire | Review the calendar together | Day 20 |
| Complete a practice run of the management report using last month's data | New hire | Review | Day 25 |
| 30-Day Check-in with Dr. Lewis: what do you know? what's unclear? what's scary? | Both | Formal discussion | Day 30 |

**30-Day milestone:** New hire can independently navigate QuickBooks, explain the chart of accounts, and describe the close process. Dr. Lewis comfortable that transactions are being coded correctly.

---

## Phase 2: Connect (Days 31-60)

**Goal:** Own the first monthly close; establish all key relationships.

### Month 2 Focus

| Task | Owner | Target date |
|------|-------|------------|
| Own the monthly close for [Month] — Dr. Lewis reviews but does not direct | New hire | Day 7 of the close month |
| Deliver the management report to Dr. Lewis (Dr. Lewis reviews before it goes to Matt Mathison) | New hire | Day 10 of close month |
| Complete credit card reconciliation independently | New hire | Day 10 |
| Map all vendor relationships — payment terms, primary contacts, Bill.com status | New hire | Day 45 |
| Review accounts receivable aging — understand who owes what and aging status | New hire | Day 45 |
| [Controller / CFO only]: Review the compliance calendar for the full year — own your deadlines | New hire | Day 45 |
| [Controller / CFO only]: Meet with outside CPA / tax advisor — understand the relationship and annual obligations | New hire | Day 50 |
| [CFO only]: Review LP reporting obligations and prior LP reports | New hire | Day 50 |
| 60-Day Check-in with Dr. Lewis: first close review, strengths, areas to improve | Both | Day 60 |

**First close debrief questions:**
- What was harder than expected? What was easier?
- What did you find in the books that surprised you?
- What process improvement would you make if you could change one thing?
- What information do you wish you'd had at the start of the month?

**60-Day milestone:** First close complete; management report delivered on time; new hire owns the close process and is proactively flagging questions rather than waiting for direction.

---

## Phase 3: Contribute (Days 61-90)

**Goal:** Own the Finance function; begin adding value beyond the close.

### Month 3 Focus

| Task | Owner | Target date |
|------|-------|------------|
| Own the second monthly close independently — Dr. Lewis reviews output only | New hire | Day 7 of close month |
| Identify one process improvement and implement it (with Dr. Lewis approval) | New hire | Day 80 |
| Deliver one financial insight that wasn't asked for — a trend, an anomaly, an opportunity | New hire | Day 80 |
| [Controller / CFO only]: Prepare or update the rolling 13-week cash flow forecast | New hire | Day 75 |
| [Controller / CFO only]: Complete first quarterly OKR check-in for the Finance function | New hire | Day 85 |
| [CFO only]: Deliver first board/investor update draft for Dr. Lewis review | New hire | Day 80 |
| 90-Day Review with Dr. Lewis and Matt Mathison | All | Day 90 |

---

## 90-Day Review Agenda

**Duration:** 60 minutes | **Participants:** New hire, Dr. Lewis, Matt Mathison (for controller/CFO)

| Agenda item | Duration |
|-------------|---------|
| New hire self-assessment: what went well, what was hard, what they wish they knew | 15 min |
| Dr. Lewis assessment: technical proficiency, close quality, communication, THRIVE fit | 15 min |
| Matt Mathison feedback (controller/CFO): strategic impact, communication quality | 10 min |
| Open discussion: what does Finance need in the next 90 days? | 10 min |
| Goal-setting for the next quarter | 10 min |

**Post-review:** If performance is strong — confirm role ownership, remove Dr. Lewis from review of routine tasks, schedule quarterly check-ins. If concerns exist — document specifically, set 30-day improvement plan, schedule follow-up.

---

## Onboarding Success Criteria

| Criterion | Bookkeeper | Controller | CFO |
|---------|-----------|-----------|-----|
| Close speed | Day 10 | Day 7 | Day 5 (team) |
| Error rate in coding | <2 corrections/month | <1 correction/month | — |
| Management report delivery | Day 12 | Day 10 | Day 10 |
| Proactive issue flagging | Flags errors before asked | Flags variance trends | Flags strategic issues |
| Matt Mathison satisfaction | — | ≥7/10 | ≥8/10 |
```

## Output Contract
- System access always completed before Day 1 — a Finance hire who cannot access QuickBooks on their first day is delayed from learning the books, which cascades into a delayed first close; access setup is a Day -7 task, not a Day 1 task; Dr. Lewis owns this and confirms completion before start date
- Phase 1 is learning, not doing — a common failure mode in Finance onboarding is putting the new hire straight to work without giving them context; they will produce work that looks right but reflects incorrect understanding of how the business operates; Phase 1 is protected learning time even if the close is coming up fast
- First close is supervised — the new hire should own the first close, meaning they drive every task, but Dr. Lewis should review every reconciliation and journal entry before the books are closed; the point is to identify misunderstandings before they compound across multiple months, not to micromanage; after the first close, Dr. Lewis's role shifts to reviewing outputs, not directing inputs
- 90-day review always includes Matt Mathison for controller and CFO — a Finance hire who has been onboarded for 90 days and has never presented to Matt Mathison is not yet integrated into MBL governance; Matt Mathison's assessment is part of the hiring feedback loop; if the hire isn't working, 90 days is the right time to make that call
- HITL required: Dr. Lewis designs and owns the onboarding plan; Matt Mathison reviews at 90 days for controller and CFO; any performance concern before Day 90 escalated to Matt Mathison immediately; bank account signing authority requires Matt Mathison authorization and Dr. Lewis confirmation of competency

## System Dependencies
- **Reads from:** Prior close files (SharePoint/Finance/Close/), QuickBooks transaction history, Bill.com vendor list, compliance calendar, prior management reports
- **Writes to:** Onboarding plan document (SharePoint/HR/<Company>/Onboarding/Finance/); 90-day review notes; Matt Mathison onboarding brief (controller/CFO)
- **HITL Required:** Dr. Lewis owns onboarding; Matt Mathison 90-day review (controller/CFO); bank access authorization requires Matt Mathison; performance concerns escalated immediately

## Test Cases
1. **Golden path:** Allevio controller hire starts June 30, 2026 → Pre-start: QB admin access ✅, Bill.com approver access ✅, Microsoft 365 ✅; Day 1: Dr. Lewis 4-hour deep dive on QB chart of accounts, prior 3 months of closes, management reports; Day 3: shadow bank reconciliation; Week 2: codes current week's transactions — Dr. Lewis reviews, finds 2 miscoded expenses (GL account confusion between COGS and OpEx for software); corrected and explained; Day 15: supervised reconciliation — clean; Day 30 check-in: comfortable with QB, unsure about close timeline, some questions on accruals; close training added; Day 37: first solo close — 9 days (target was 7); 2 reconciliation items needed Dr. Lewis correction; management report delivered Day 11; 60-day debrief: "The accruals are the hardest part. I'm getting it but I still second-guess the period-end cutoff"; Day 75: second close in 6 days — all reconciliations clean; first proactive insight: "AP aging shows 3 vendors past terms — $14K overdue; I'd recommend we call them before it escalates"; Dr. Lewis: strong signal of ownership; 90-day review: Matt Mathison ✅ (8/10); controller confirmed in role; Dr. Lewis removes from review of routine reconciliations
2. **Edge case:** New controller is strong technically but never proactively flags anything — always waits to be asked → at the 60-day check-in, address directly: "Your close work is technically strong — accurate, on time, clean. What I'm not seeing yet is proactive communication. A great controller notices a trend in the AR aging and mentions it before being asked. For the next 30 days, I want you to bring me one thing each week that you noticed that I didn't ask about. It can be small. The goal is to build the habit of looking, not just doing." Set this as a specific 90-day goal; evaluate at Day 90
3. **Adversarial:** A new CFO starts and immediately wants to overhaul the chart of accounts and financial reporting format before understanding the current state → slow this down firmly: "I want you to own the first close with the current system before we change anything. Two reasons: you need to understand why things are the way they are before you can improve them, and changes to the chart of accounts affect historical comparability. After the first close, bring me a specific proposal — what you want to change, why, and what the migration looks like. That's a Day 45+ conversation, not a Day 5 one."

## Audit Log
Onboarding plans retained by hire and start date. 30/60/90-day check-in notes retained. 90-day review decisions retained (continue, improve, exit). Bank access authorization documented. Performance concerns and escalations retained.

## Deprecation
Retire when each portfolio company has a dedicated HR function and controller/CFO who own Finance onboarding independently, with a documented Finance-specific onboarding playbook that doesn't require Dr. Lewis to design the plan for each new hire.
