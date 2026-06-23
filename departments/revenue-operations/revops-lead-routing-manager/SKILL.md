---
name: revops-lead-routing-manager
description: "Manage lead routing and assignment for MBL Partners portfolio entities. Use when the user says 'lead routing', 'lead assignment', 'lead distribution', 'how do we assign leads', 'who gets the lead', 'lead ownership', 'inbound lead', 'lead routing rules', 'lead response', 'lead SLA', 'lead response time', 'missed lead', 'lead follow-up', 'uncontacted leads', 'orphaned leads', 'lead queue', 'lead flow', 'inbound lead process', 'who owns inbound', 'lead escalation', 'lead routing automation', 'GHL lead assignment', 'lead routing configuration', 'round robin', 'lead assignment rules', 'lead response SLA', 'lead routing audit', or 'who is working this lead'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|mbl>] [--action <configure|audit|escalate|report>] [--lead-type <inbound|outbound|referral|broker>]"
---

# RevOps Lead Routing Manager

Manage lead routing rules and SLA compliance across MBL Partners portfolio entities — ensuring every inbound lead is assigned within the defined response window, routed to the correct owner based on territory and lead type, and tracked for SLA adherence. An unrouted lead is a missed opportunity; a late response is a closed door.

## When to Use
- Configuring lead routing in GoHighLevel for a new entity
- Auditing lead response time compliance
- Escalating an orphaned or uncontacted lead
- Reviewing lead assignment logic after a routing conflict

## Lead Routing Framework

```
LEAD ROUTING RULES BY ENTITY:

  ALLEVIO:
    Inbound employer inquiry (website form; event; referral):
      → Immediate auto-acknowledgment email via GoHighLevel (within 5 minutes)
      → Assign to AE by territory zip code (primary rule)
      → If zip code not covered by any AE: assign to entity CEO; Dr. Lewis notified
      → If 2+ AEs cover zip code: assign to AE with lower pipeline load (manual round-robin)
    Broker referral:
      → Assign to AE designated as "broker liaison" for that broker relationship
      → Broker receives email acknowledgment within 4 hours (not 5 minutes — more personal)
    MQL from marketing (email click; demo request; content download):
      → Stage 1 entry in GoHighLevel (automated via GoHighLevel workflow)
      → Assigned AE has 4 hours to convert MQL to Stage 2 (first contact attempted)
      → SLA: first contact (call or email) within 4 hours of MQL trigger
      
  COLUMN6:
    Inbound agency inquiry (website; email; referral):
      → Assign by AE named account ownership (if agency is a named account → owning AE)
      → If agency is new (not in named account list): assign to AE with lowest current named account load
      → Entity CEO notified for Tier 1 agencies (>$1M CTV spend potential) within 1 hour of inbound
    Conference / event leads:
      → Entity CEO reviews all event leads within 48 hours of event end
      → Assigns to appropriate AE with context note in GoHighLevel
      
  MBL PARTNERS (MBL-level inbound):
    LP or investor inquiry → Matt Mathison (direct; not CRM-routed)
    Portfolio company inquiry → Dr. Lewis (direct)
    General MBL contact form → entity CEO of most relevant entity or Dr. Lewis
    
LEAD RESPONSE SLA:
  Allevio inbound (non-broker): first contact ≤4 hours (business hours); ≤24 hours (off-hours inbound)
  Allevio broker referral: first contact ≤8 hours (personal outreach; not automated)
  Column6 Tier 1 agency: entity CEO notification ≤1 hour; AE contact ≤4 hours
  Column6 Tier 2 agency: first contact ≤24 hours
  
SLA MONITORING:
  Daily: GoHighLevel report — leads created in last 24 hours; first activity timestamp; SLA met?
  SLA miss: contact owner + entity CEO notified (same day); lead escalated to entity CEO to contact
  Chronic SLA miss (>2 per week): entity CEO + Dr. Lewis review; process or staffing issue

LEAD ROUTING CONFLICT RESOLUTION:
  Two reps claim the same lead → entity CEO arbitrates; Dr. Lewis final say
  First logged contact timestamp in GoHighLevel is the tiebreaker
  Conflict logged; outcome documented in GHL contact notes
```

## Output Format

```markdown
# Lead Routing Report — [Entity] — [Date]
**Period:** [Last 7 days / Last 30 days]

---

## Lead Volume

| Source | # Leads | % of total |
|--------|---------|-----------|
| Inbound (website) | | |
| Broker referral | | |
| Marketing (MQL) | | |
| Event | | |
| **Total** | | 100% |

---

## SLA Compliance

| SLA metric | Target | Actual | Compliance % |
|-----------|--------|--------|-------------|
| Inbound first contact (≤4hr) | ≤4 hours | X hours avg | X% |
| Broker referral first contact | ≤8 hours | | |

---

## SLA Misses ([N] this period)

| Lead | Assigned to | SLA | Actual response | Action taken |
|------|------------|-----|----------------|-------------|
| [Company] | [AE] | 4hr | 31 hours | Entity CEO notified |

---

## Orphaned Leads ([N] uncontacted >48hr)
[List; immediate escalation to entity CEO]
```

## Output Contract
- Speed wins — in B2B sales, studies consistently show that first contact within 5 minutes of an inbound inquiry is correlated with dramatically higher qualification rates; Allevio's 4-hour SLA is conservative for inbound leads because of the AE-assignment step; the 5-minute auto-acknowledgment from GoHighLevel buys goodwill while the rep is notified; Dr. Lewis monitors SLA compliance weekly and treats chronic SLA misses as a capacity or process problem that requires action, not acceptance; an employer who filled out a "learn more" form and didn't hear from Allevio for 72 hours will not remember the company fondly when Allevio does reach out
- Orphaned leads are the highest-risk item in the lead routing system — an orphaned lead (created in GoHighLevel; no activity for >48 hours) represents a prospect who expressed interest and received no response; this is worse than never having the lead because the prospect may have already moved to a competitor; Dr. Lewis's daily lead routing check specifically flags orphaned leads and escalates immediately; the entity CEO contacts orphaned leads personally to recover the relationship; the system failure that allowed the lead to go cold is documented and the process gap closed
- HITL required: Tier 1 Column6 agency inbound → entity CEO notified ≤1 hour; orphaned lead >48hr → entity CEO contacts personally; routing conflict → entity CEO arbitrates; chronic SLA miss (>2/week) → entity CEO + Dr. Lewis; lead routing logic changes in GoHighLevel → Dr. Lewis approves

## System Dependencies
- **Reads from:** GoHighLevel (lead creation timestamp; first activity timestamp; contact assignment; lead source tags; territory zip codes); revops-territory-planner (rep territory definitions for routing logic); mktg-crm-marketing-manager (MQL trigger settings; UTM source attribution)
- **Writes to:** GoHighLevel (contact assignment; routing automation workflows; activity notes); lead routing report (SharePoint → [Entity] → Sales → Lead Routing → [Period]); SLA miss escalation alerts; entity CEO routing conflict arbitration records
- **HITL Required:** Tier 1 agency inbound → entity CEO ≤1hr; orphaned lead → entity CEO personal contact; routing conflict → entity CEO; chronic SLA miss → entity CEO + Dr. Lewis; routing logic changes → Dr. Lewis

## Test Cases
1. **Golden path:** Allevio Monday morning lead routing check. 3 inbound leads since Friday EOB. Lead 1 (Friday 4pm): employer in Chandler AZ → auto-acknowledged 4:05pm; assigned to AE (Chandler territory); AE called Saturday 9am (17 hours → SLA miss for off-hours: technically compliant at ≤24hr off-hours). Lead 2 (Saturday noon): broker referral (ABC Insurance Group) → auto-acknowledged; assigned to broker liaison AE; AE emailed 9am Monday (21 hours — SLA: ≤24hr for broker weekend inbound: compliant). Lead 3 (Monday 7am): website form → auto-acknowledged 7:02am; AE notified 7:05am; AE called at 10:45am (3.75hr — ✅ ≤4hr SLA met). All 3 contacts logged in GoHighLevel. No orphaned leads. SLA report to entity CEO.
2. **Edge case:** Allevio receives an inbound from a prospect in Yuma, AZ — a geography not covered by any AE → Dr. Lewis: "Yuma is outside our current AE territories. Per routing rules, this goes to entity CEO for personal outreach. Here's what I'm setting up: (1) entity CEO gets the lead immediately; (2) I'm tracking this as a 'geographic gap' contact in GoHighLevel with a tag 'Uncovered Territory — Yuma'; (3) if we get 3+ Yuma inquiries, we have a territory expansion conversation. For now, entity CEO makes the call and decides if this is worth pursuing or referring to a broker. The lead should not sit uncontacted — entity CEO contacts within 4 hours of my notification."
3. **Adversarial:** AE disputes that a lead was assigned to them — they claim they never received the GoHighLevel notification → Dr. Lewis: "GoHighLevel logs the assignment timestamp and the notification trigger. Let me pull the audit trail: assignment timestamp, notification sent timestamp, and the email address the notification went to. If the system sent the notification and the rep didn't see it, we have a notification delivery problem to fix. If the notification went to the wrong email, we have a user profile configuration problem. Either way, the lead now has a 31-hour response gap. Entity CEO contacts the prospect today to recover. Whatever the technical root cause, the lead doesn't sit uncontacted while we investigate."

## Audit Log
Lead routing reports retained 90 days. SLA compliance tracking (all leads, all entities). Orphaned lead escalation records. Routing conflict arbitration records. GoHighLevel assignment logs (permanent in GHL). Routing logic change records (Dr. Lewis approval required).

## Deprecation
Lead routing rules reviewed when entity adds AEs or changes territory model. SLA thresholds reviewed when entity close rates or lead quality changes. MQL trigger settings reviewed when marketing campaign structure changes. Routing automation workflows reviewed quarterly.
