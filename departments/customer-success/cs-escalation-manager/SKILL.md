---
name: cs-escalation-manager
description: "Manage customer escalations and complaints for MBL portfolio companies. Use when the user says 'customer escalation', 'escalation', 'customer complaint', 'complaint', 'angry customer', 'upset customer', 'customer is unhappy', 'customer is frustrated', 'customer is threatening to leave', 'customer wants to speak with a manager', 'wants to talk to the CEO', 'formal complaint', 'service failure', 'we let them down', 'executive escalation', 'put it in writing', 'demand letter', 'issue with service', 'service issue', 'customer problem', 'emergency with a customer', 'crisis with a customer', 'critical customer issue', 'customer is escalating', or 'customer is angry about'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--severity <P1|P2|P3>] [--issue <brief description>] [--action <respond|investigate|resolve|report>]"
---

# CS Escalation Manager

Manage customer escalations and complaints for MBL portfolio companies — responding quickly, investigating thoroughly, communicating transparently, and resolving permanently. Customer escalations are high-stakes moments that determine whether a customer stays or leaves; a well-handled escalation often results in a stronger relationship than before; a poorly handled escalation accelerates churn. Dr. Lewis owns all P1 escalations personally and is briefed on all P2 escalations within 24 hours.

## When to Use
- A customer raises a formal complaint or requests escalation
- A CS rep identifies a service failure (proactive escalation before the customer complains)
- A customer threatens to leave over a service issue
- Reviewing and closing a resolved escalation

## Escalation Framework

```
SEVERITY CLASSIFICATION:

  P1 — Critical Escalation:
    Definition: Threat to the customer relationship; potential churn risk; legal or financial claim;
      demand letter received; threat to go to social media or the press; HIPAA/compliance issue
    Examples:
      Allevio: HIPAA breach involving customer PHI; claim ratio spiked and customer is furious
        and threatening to leave mid-contract; billing dispute threatening service interruption
      Column6: IO underdelivered by >20%; brand safety incident (ad served next to harmful content);
        payment dispute threatening legal action
      HIVE: Royalty payment more than 30 days late; lease dispute; landowner threats of legal action
    Response time: CS rep notifies Dr. Lewis within 1 hour; Dr. Lewis contacts the customer within 4 hours
    CEO involvement: Mandatory — CEO briefed same day; Dr. Lewis does not respond to P1 alone
    Resolution target: Root cause identified within 24 hours; customer notified within 48 hours;
      full resolution plan presented within 5 business days
      
  P2 — High Escalation:
    Definition: Significant service failure that affects the customer's experience materially;
      customer is frustrated but not yet threatening to leave; compensation may be warranted
    Examples:
      Allevio: Member ID cards delayed by 4+ weeks; clinical care referral process broken for a member;
        monthly report not delivered on time; incorrect EOB sent to the employer
      Column6: VCR below 80% across 2 consecutive IOs; campaign pacing off-track without proactive notification
      HIVE: Royalty statement missing or incorrect; development update not delivered for 2+ months
    Response time: CS rep notifies Dr. Lewis within 4 hours; Dr. Lewis calls the customer same day
    CEO involvement: Recommended — Dr. Lewis briefs the CEO and decides whether CEO should join the call
    Resolution target: Root cause identified within 48 hours; customer update within 72 hours;
      resolution plan within 7 business days
      
  P3 — Standard Issue:
    Definition: Service inconvenience; process friction; minor delay; question not answered quickly enough
    Examples: Late response from the CS team; billing question; minor report formatting issue
    Response time: CS rep resolves within 24-48 hours; no Dr. Lewis involvement unless unresolved
    CEO involvement: None (unless unresolved and escalates to P2)
    Resolution target: Resolved within 5 business days; follow-up confirmation sent to customer

ESCALATION RESPONSE SEQUENCE (P1 and P2):

  Step 1 — Acknowledge (within 1-4 hours depending on severity):
    Do not wait until you have answers — acknowledge immediately:
    "I've received your message and I understand this is serious. I'm personally engaged and 
      will have an update for you by [specific time]. I want you to know we take this very seriously
      and I'm committed to resolving this for you."
    Key rule: Acknowledge without admitting liability. "I understand this caused a problem" ≠ 
      "we are responsible for all damages." Don't apologize for things you haven't yet verified.
      
  Step 2 — Investigate (within 24-48 hours):
    What happened? When did it happen? Who was involved? What is the impact on the customer?
    Allevio: Pull the clinical records; billing records; claim data — what went wrong in the system?
    Column6: Pull the campaign data; serving logs; brand safety reports — exactly what occurred?
    HIVE: Pull the production records; Covercy payment logs — what is the factual timeline?
    Do not speculate or blame third parties in customer-facing communications before investigation
    
  Step 3 — Communicate (within 48 hours):
    "Here is what we found. Here is what caused it. Here is what we are doing to fix it.
      Here is what we are doing to prevent it from happening again. Here is what we are doing
      to make it right for you specifically."
    If the investigation is not complete in 48 hours: "I don't have all the answers yet, but
      here's what I know so far and here's the timeline for when I'll have the rest."
    Never say "we're working on it" with no timeline — every communication needs a specific next date
    
  Step 4 — Resolve:
    Resolution must include: (a) Fix the problem; (b) Make the customer whole; (c) Prevent recurrence
    Making the customer whole may include:
      Fee credit or waiver (P2: up to 1 month's fees without CEO approval; P1: CEO approves)
      Extended contract terms at no cost (CEO approval required)
      Service upgrade (CEO approval required)
    Prevent recurrence: Document the root cause; implement a process change; confirm internally
    
  Step 5 — Close and Confirm:
    After resolution: "I want to confirm that the issue has been fully resolved from your
      perspective. Is there anything else we need to do?" 
    Document the closure in CRM
    Schedule a 30-day check-in: "I'd like to check in in 30 days to make sure everything is
      continuing to work well." This converts an escalation into a relationship moment.

ALLEVIO-SPECIFIC ESCALATION NOTES:
  HIPAA breach or suspected breach: Immediately notify Dr. Lewis; Dr. Lewis notifies the CEO;
    legal counsel engaged within 4 hours; HIPAA 60-day notification clock starts at discovery
    (see rc-data-breach-responder for full breach response protocol — this takes precedence)
  Clinical care failure: If a member's health was affected by a clinical care gap, Dr. Lewis
    and the CEO are notified immediately; clinical team reviews; potential medical liability issue
    requires attorney involvement before any external communication
```

## Output Format

```markdown
# Escalation Record — [Account Name] | [Entity]
**Severity:** P1 / P2 / P3 | **Date raised:** [Date] | **Issue:** [Brief description]
**CS owner:** Dr. Lewis / [Rep] | **CEO involved:** Yes / No | **Status:** Open / Resolved

---

## Escalation Timeline

| Date/Time | Event | Owner | Action |
|-----------|-------|-------|--------|
| [Date] | Customer raised issue via [email/call] | Customer | — |
| [Date +1hr] | CS rep notified Dr. Lewis | CS Rep | — |
| [Date +4hr] | Dr. Lewis acknowledged to customer | Dr. Lewis | Acknowledge email sent |
| [Date +24hr] | Investigation complete | CS + Operations | Root cause identified |
| [Date +48hr] | Resolution plan presented to customer | Dr. Lewis | — |
| [Date +7d] | Resolution confirmed by customer | Customer | ✅ Resolved |

---

## Root Cause and Resolution

**What happened:** [Factual description — no speculation]
**Root cause:** [Why it happened]
**Customer impact:** [Quantified if possible]
**Immediate fix:** [What was done]
**Recurrence prevention:** [Process change implemented]
**Customer remedy:** [Credit / upgrade / other — CEO approved?]

---

## Customer Feedback at Close

**Resolved in customer's view:** Yes / No / Pending
**30-day check-in scheduled:** [Date]
**Health score impact:** [Score before → after]
```

## Output Contract
- Acknowledge fast, explain later — the instinct in a crisis is to wait until you have all the answers before reaching out; the customer's instinct is to assume silence means the company doesn't care; Dr. Lewis acknowledges all P1 escalations within 4 hours and all P2 escalations within 24 hours regardless of whether the investigation is complete; "I'm working on this and will have answers for you by [specific time]" is a complete acknowledgment
- Never speculate in writing — everything written to the customer during an escalation may be read by a lawyer; Dr. Lewis reviews all written communications during P1 escalations before they are sent; speculation, admissions of liability, or unverified claims of what "went wrong" create legal exposure; the factual communication ("here is what happened") is sent only after the investigation confirms the facts
- Resolution must include recurrence prevention — a resolved escalation that doesn't include a process change is not fully resolved; it will happen again; Dr. Lewis requires every P1 and P2 resolution to document the root cause and the process change that prevents recurrence; this documentation is shared internally with the relevant team (clinical; billing; campaign operations)
- HITL required: Dr. Lewis owns all P1 escalations personally; CEO briefed same day on all P1 escalations; Dr. Lewis briefs CEO on P2 escalations within 24 hours; any customer remedy above 1 month's fees requires CEO authorization; HIPAA breach escalations require immediate legal counsel involvement before any external communication; Dr. Lewis does not send written communications during a P1 escalation without reviewing them first; Matt Mathison notified of any P1 escalation that involves legal action or HIPAA notification obligation

## System Dependencies
- **Reads from:** Service records (AdvancedMD — Allevio clinical and billing records; Column6 campaign dashboard; Covercy royalty records — HIVE); CRM account history (GoHighLevel — full interaction history for the account); cs-health-score-tracker (health score before and after the escalation); QuickBooks (billing records for any fee credit or waiver); rc-data-breach-responder (HIPAA breach — takes precedence for any PHI incident)
- **Writes to:** Escalation record (SharePoint/CustomerSuccess/<Company>/Escalations/[Account]_[Date]_Escalation.pdf); CRM escalation log (GoHighLevel — activity record with severity; status; resolution date); health score update (cs-health-score-tracker — escalation impacts outcome achievement dimension); CEO and Matt Mathison notification records; process change log (internal — what was changed to prevent recurrence); cs-kpi-dashboard (escalation count; P1/P2 resolution time; 30-day recurrence rate)
- **HITL Required:** Dr. Lewis owns all P1 escalations; CEO briefed same day on P1; all P2 customer communications reviewed by Dr. Lewis before sending; CEO authorizes fee credits >1 month; HIPAA incidents trigger rc-data-breach-responder and legal counsel immediately; Dr. Lewis does not allow P1 escalations to go more than 48 hours without a substantive customer update; Matt Mathison notified of any escalation involving legal action or regulatory notification

## Test Cases
1. **Golden path:** Allevio — P2 escalation: HR Director emails that the Q3 monthly claim report was supposed to arrive September 5 and it's September 12 with no report → CS rep receives at 9am; notifies Dr. Lewis by 9:30am; Dr. Lewis calls HR Director at 10am: "I received your message — I apologize for the delay on the Q3 report. I'm looking into what happened and I'll have the report to you by end of business today, along with an explanation of why it was late." Operations team identifies: a system access issue caused the report to fail silently. Dr. Lewis sends the report at 3pm with a note: "Here is your Q3 claim ratio report — I apologize for the delay. The cause was a permissions issue in our reporting system that silently failed without alerting us. I've had our operations team fix the issue and test the October report process to confirm it will deliver on time. I'm scheduling a call for next week to walk through the data together." HR Director appreciates the transparency; issue closed; 30-day check-in scheduled; health score: no change (P2 resolved quickly)
2. **Edge case:** Column6 — P1 escalation: Brand safety incident — a Column6-served ad appeared adjacent to harmful political content on a publisher that was supposed to be blocklisted → Dr. Lewis notified within 30 minutes; CEO briefed immediately; Dr. Lewis calls the agency media buyer: "I'm calling you directly because we have a brand safety issue that requires my personal attention. A Column6-served campaign was detected adjacent to content that should have been blocklisted. We've immediately paused serving on that publisher pending investigation. I'll have a full report to you within 24 hours." Investigation: blocklist configuration error introduced in a recent platform update. Customer remedy: full campaign credit for affected impressions; future IOs receive enhanced brand safety monitoring at no cost; CEO calls the agency VP the following day; relationship preserved; agency continues booking
3. **Adversarial:** A HIVE landowner sends a letter from an attorney claiming HIVE owes back royalties from production that occurred before the lease was executed → Dr. Lewis: "This is P1 — legal action is being threatened. Do not respond to this letter; I'm engaging our outside counsel immediately. The attorney letter represents a potential legal claim and any response we make is a legal communication — it needs to be drafted by counsel. CEO briefed in the next 30 minutes. I'll reach out to the landowner's contact (not their attorney) to acknowledge receipt and confirm we're reviewing the matter. All further communication goes through counsel." CEO briefed; outside counsel engaged within 2 hours; factual investigation of production records vs. lease execution date; counsel drafts the response; matter resolved 3 weeks later with a modest royalty reconciliation payment

## Audit Log
All escalation records retained permanently by account, entity, and date. CEO and Matt Mathison notification records retained. Written communications during P1 escalations retained (legal exposure documentation). Customer remedy authorization records retained. Root cause and process change records retained. 30-day check-in outcomes retained.

## Deprecation
Retire when each portfolio company has a dedicated CS escalation function with defined SLA commitments — with Dr. Lewis reviewing escalation trends monthly and the CEO reviewing all P1 escalations with a post-mortem.
