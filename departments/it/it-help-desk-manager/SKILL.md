---
name: it-help-desk-manager
description: "Manage IT help desk operations, ticket triage, and SLA tracking. Use when the user says 'help desk', 'IT support', 'ticket management', 'IT tickets', 'support requests', 'IT helpdesk', 'user support', 'IT issues', 'support SLA', 'ticket triage', 'tier 1 support', 'IT request queue', 'support backlog', 'user complaints IT', or 'IT service desk'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <triage|report|sla-review|escalate>]"
---

# IT Help Desk Manager

Manage IT support operations at MBL portfolio companies — tracking, triaging, and resolving user support requests within defined SLAs. At portfolio scale, help desk management is not about running a formal service desk — it is about ensuring that employee IT issues are resolved quickly, prioritized correctly, and tracked so that recurring problems surface and get fixed at the root rather than generating repeat tickets.

## When to Use
- IT support request comes in and needs to be triaged and assigned
- Weekly IT support review — what tickets are open, what's overdue?
- A recurring IT issue needs to be identified and escalated for root-cause fix
- Monthly SLA performance review — how quickly are IT issues getting resolved?
- Evaluating whether to deploy a formal ticketing system

## Help Desk Framework

```
Ticket triage — priority levels:
  P1 (Critical): System outage affecting multiple users or a critical business function
    → Response: 30 minutes; Resolution target: 4 hours
    → Examples: Email down for office, EHR unavailable at Allevio, internet outage
    → Who: Dr. Lewis personally; CEO notified if >2 hours
    
  P2 (High): Single user completely blocked; significant productivity impact
    → Response: 1 hour; Resolution target: Same business day
    → Examples: Laptop won't boot, cannot access specific required system, password locked out
    
  P3 (Medium): Degraded function; user has workaround
    → Response: 4 hours; Resolution target: 3 business days
    → Examples: Printer not working, software crash (non-critical), Teams call quality issues
    
  P4 (Low): Minor inconvenience or enhancement request
    → Response: 24 hours; Resolution target: 10 business days
    → Examples: Keyboard preference, software install request (non-urgent), account configuration

Ticket intake channels at MBL portfolio scale:
  Email: IT support alias (it@company.com) or direct to Dr. Lewis
  Teams: IT channel or direct message
  In-person or phone: Dr. Lewis direct
  
  Ticketing system options:
    No system (current): Track in shared spreadsheet or Monday.com task
    Formal ticketing: Freshdesk (free up to 10 agents), Zoho Desk (free), Jira Service Management
    M365-native: Microsoft Teams + Planner for lightweight tracking
    Recommendation: Freshdesk or Zoho Desk for companies >15 employees needing structured tracking
    
Recurring ticket analysis:
  Track ticket categories — any category appearing >3 times in a month is a systemic issue
  Systemic issues get a root-cause fix (not repeat tickets)
  Common patterns that signal root-cause fix needed:
    5 tickets for "can't connect to VPN" → VPN client issue, documentation gap, or policy change
    10 tickets for "locked out of account" → MFA friction, password policy, or training gap
    3 tickets for "printer not working" → Driver issue, network path, or hardware failing
```

## Output Format

```markdown
# IT Help Desk Report — <Company Name>
**Period:** [Week/Month ending Date] | **Total tickets:** [N]
**SLA compliance:** P1 [X%], P2 [X%], P3 [X%], P4 [X%]
**Tickets open (overdue):** [N (N)]
**Prepared by:** Dr. John Lewis

---

## Open Tickets

| Ticket | User | Priority | Issue summary | Submitted | SLA deadline | Status | Owner |
|--------|------|---------|-------------|---------|------------|--------|-------|
| IT-042 | [Name] | P2 | Laptop not connecting to Wi-Fi at clinic | [Date] | [Date] | In progress | Dr. Lewis |
| IT-043 | [Name] | P3 | Teams audio quality poor on calls | [Date] | [Date] | Awaiting driver update | Dr. Lewis |
| IT-044 | [Name] | P4 | Request for second monitor | [Date] | [Date] | Approved; ordering | Dr. Lewis |

**Overdue tickets (SLA breached):** [N — list below]

| Ticket | Priority | Breach reason | New target | Owner |
|--------|---------|--------------|-----------|-------|
| IT-039 | P3 | Parts on order for printer | [New date] | Dr. Lewis |

---

## Closed This Period

| Ticket | Priority | Issue | Resolution | Time to resolve | SLA met? |
|--------|---------|-------|-----------|----------------|---------|
| IT-038 | P2 | Password locked out | Reset + MFA re-enrolled | 45 min | Yes |
| IT-040 | P1 | AdvancedMD access down (clinic) | ISP reconnected; monitoring alert confirmed | 1.5 hrs | Yes |

---

## SLA Performance

| Priority | Tickets | Met SLA | SLA rate | Target |
|---------|---------|---------|---------|--------|
| P1 Critical | [N] | [N] | [X%] | 100% |
| P2 High | [N] | [N] | [X%] | 95% |
| P3 Medium | [N] | [N] | [X%] | 90% |
| P4 Low | [N] | [N] | [X%] | 80% |
| **Overall** | **[N]** | **[N]** | **[X%]** | |

---

## Recurring Issues (Needs Root-Cause Fix)

| Category | Count (this period) | Count (last 3 months) | Root cause hypothesis | Action |
|---------|-------------------|--------------------|--------------------|--------|
| VPN connectivity | 4 this month | 11 | Intune VPN profile misconfigured | Fix VPN profile; push via Intune |
| Locked accounts | 3 this month | 8 | MFA confusion on new phones | Add MFA re-enrollment guide to help doc |
| AdvancedMD slow | 2 this month | 5 | ISP congestion at Clinic B | Upgrade ISP circuit at Clinic B — Q3 |

---

## Matt Mathison Brief (if P1 incident this period)

[Company] IT: [N] tickets this period; [N] P1 incidents. [P1 description and resolution]. SLA rate [X%]. Key issue: [Recurring problem being addressed].
```

## Output Contract
- P1 tickets get 30-minute response from Dr. Lewis — when a P1 comes in (AdvancedMD down at a clinic, internet outage, email down for the office), Dr. Lewis responds within 30 minutes regardless of what else is on the calendar; the clinical team cannot see patients or bill without their systems; 4 hours of Allevio downtime is not an IT inconvenience — it is a revenue and patient care event; this priority level is non-negotiable
- Recurring tickets get root-cause fixes, not repeat resolutions — if the VPN fails 4 times for different users in one month, the answer is not to fix it 4 times; it is to find why the VPN fails and fix that; recurring ticket patterns are reviewed monthly; any category appearing 3+ times in a month gets a root-cause investigation; the fix goes into the knowledge base (it-knowledge-base-builder) and the issue stops generating tickets
- SLA performance is tracked to identify capacity problems — consistently missing P3/P4 SLAs means either the ticket volume is too high for current IT resources or the issues are more complex than expected; this is not a problem to hide — it is a signal that either IT capacity needs to increase or the root-cause fix program needs to accelerate; Dr. Lewis presents SLA data to CEO quarterly
- HITL required: Dr. Lewis triages and owns all P1 tickets; P1 CEO notification if >2 hours; ticket queue reviewed weekly by Dr. Lewis; recurring issue root-cause decisions by Dr. Lewis; ticketing system configuration by Dr. Lewis; capacity concerns escalated to CEO

## System Dependencies
- **Reads from:** Ticket queue (Monday.com / Freshdesk / shared tracker), monitoring alerts (it-monitoring-setup), user communication (Teams/email)
- **Writes to:** Ticket log (Monday.com or ticketing system); knowledge base (it-knowledge-base-builder) when root cause resolved; recurring issue report; SLA performance report
- **HITL Required:** Dr. Lewis triages all tickets; P1 response by Dr. Lewis within 30 min; CEO notification for P1 >2 hrs; recurring issues escalated for root-cause fix; SLA data reviewed with CEO quarterly

## Test Cases
1. **Golden path:** Allevio Monday morning — 4 tickets in queue: IT-051 P1 (AdvancedMD cannot be accessed from Clinic B — all billing staff blocked), IT-052 P2 (Provider laptop will not connect to EHR — seeing patients), IT-053 P3 (Conference room projector not working), IT-054 P4 (Staff requesting Adobe Acrobat license); Triage: P1 first — check AdvancedMD status page (up), check Clinic B internet (ISP outage alert confirmed) → contact ISP; escalate to cellular hotspot as temporary workaround; Dr. Lewis tells clinic manager within 15 minutes; ISP restored in 1.5 hours; P2: VPN profile error on new device — fixed in 20 min; P3 and P4: scheduled; CEO briefed on P1; SLA: P1 within 4 hours ✅; P2 same day ✅
2. **Edge case:** Dr. Lewis receives 12 "password reset" requests in one week → This is a recurring pattern; root-cause analysis: new MFA policy was deployed on Monday; users are confused about setting up the Microsoft Authenticator app on their new iPhones after the carrier switch; root-cause fix: (1) create a 1-page illustrated guide for MFA setup on iPhone; (2) distribute proactively to all staff; (3) schedule 30-minute optional drop-in session; (4) add guide to it-knowledge-base-builder; going forward, deploy MFA policy changes with guide pre-distributed, not after the tickets start
3. **Adversarial:** "Every IT issue is a priority — I need help right now with everything" → Acknowledge the frustration and triage honestly: "I hear you — let me ask you 3 questions to make sure I prioritize correctly: (1) Are you completely blocked from doing your job? (2) Does this affect patient care or billing at Allevio? (3) Is there a workaround?"; the answers determine P1-P4; Dr. Lewis cannot fix everything simultaneously; the triage framework means that a broken printer does not delay restoring a clinical system; transparent prioritization is better than pretending everything can be first

## Audit Log
Ticket log retained by period. P1 ticket timelines retained permanently. SLA performance metrics retained by quarter. Recurring issue analysis retained. Root-cause resolutions documented in knowledge base. IT capacity concerns documented.

## Deprecation
Retire when portfolio companies have dedicated IT support staff managing the help desk with a formal ticketing system (Freshdesk, Jira Service Management) — and Dr. Lewis reviewing SLA reports and escalated issues rather than owning the ticket queue. P1 incidents always involve Dr. Lewis regardless of IT support maturity.
