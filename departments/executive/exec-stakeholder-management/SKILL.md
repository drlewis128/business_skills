---
name: exec-stakeholder-management
description: "Map and manage key stakeholder relationships for MBL Partners and portfolio companies. Use when the user says 'stakeholder management', 'stakeholder map', 'map the stakeholders', 'manage the relationship', 'key stakeholders', 'who are the key stakeholders', 'stakeholder communication', 'stakeholder engagement', 'manage the stakeholder', 'build the relationship', 'relationship management', 'who do we need to manage', 'critical relationships', 'relationship risk', 'stakeholder risk', 'key relationship', 'relationship health', 'manage the LP', 'manage the partner', 'manage the regulator', 'manage the board member', 'relationship tracker', 'contact strategy', 'outreach plan', or 'who should Matt call this month'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--type <LP|board|partner|regulator|customer|vendor>] [--action <map|assess|plan|outreach>]"
---

# Exec Stakeholder Management

Map and manage key stakeholder relationships for MBL Partners and portfolio companies — maintaining a current picture of who the most important relationships are, their health, their contact cadence, and what they need from MBL to remain engaged and aligned. Stakeholder management is not relationship building for its own sake — it is the practice of ensuring that the people who most affect MBL's ability to operate and grow (LPs, board members, major customers, regulators, key partners) feel heard, informed, and well-served before they feel the need to escalate, churn, or complain. The most important stakeholder relationships fail slowly, then suddenly — Dr. Lewis watches for the slow failure signals.

## When to Use
- Quarterly stakeholder health check (who do we need to reach out to proactively?)
- A relationship is going cold or shows warning signals
- A new major stakeholder enters the picture (new LP; new board member; new major customer)
- Matt Mathison asks "who should I be calling this month?"
- Pre-event stakeholder preparation (board meeting; LP annual meeting; regulatory review)

## Stakeholder Management Framework

```
STAKEHOLDER TIERS (MBL portfolio-wide):

  TIER 1 — CRITICAL (must be proactively managed; deterioration = existential risk):
    LPs with >20% of total AUM
    Board members with governance authority
    Entity customers with >20% of entity revenue
    Regulatory bodies with authority over entity operations
    
  TIER 2 — IMPORTANT (proactive management; deterioration = significant impact):
    LPs with 5-20% of total AUM
    Strategic partners (Krista.ai; key vendors; referral sources)
    Major customers with 10-20% of entity revenue
    Industry associations and influential peers
    
  TIER 3 — MAINTAIN (reactive with periodic proactive outreach):
    LPs with <5% of total AUM
    Vendors and suppliers
    Customers with <10% of entity revenue
    Community and media relationships

STAKEHOLDER HEALTH INDICATORS:

  GREEN — Healthy, proactively engaged:
    □ Last contact: within the expected cadence (Tier 1: ≤3 months; Tier 2: ≤6 months)
    □ Stakeholder is responsive and engaged in recent interactions
    □ No open commitments that are past due
    □ No known concerns or issues
    
  YELLOW — Needs attention:
    □ Contact is overdue (Tier 1: >3 months; Tier 2: >6 months)
    □ Stakeholder showed less engagement in the last interaction than usual
    □ An open commitment to this stakeholder is approaching or past due
    □ A performance event (GRR drop; missed milestone) may have affected their view
    
  RED — Urgent:
    □ Stakeholder has not responded to recent outreach
    □ Stakeholder has expressed concern, frustration, or dissatisfaction
    □ A material event has occurred that affects this stakeholder and has not been addressed
    □ The relationship is at risk of deteriorating to a point that affects MBL's operations

CONTACT STRATEGY BY TIER:

  Tier 1 LPs (>20% AUM):
    Matt Mathison personal contact: every 2-3 months
    Trigger for contact: any portfolio event that affects their investment (positive or negative)
    Mode: phone call (preferred) or video call; email only for routine updates or after the call
    
  Tier 2 LPs (5-20% AUM):
    Matt Mathison semi-annual call
    Dr. Lewis monitors for outreach triggers (portfolio events; LP report delivery)
    
  Board members:
    Formal board meetings per exec-board-governance cadence
    Informal: Matt Mathison one-on-one before each board meeting
    Between meetings: Matt Mathison or Dr. Lewis responds within 24 hours to any board query
    
  Major customers (entity-level; >20% of entity revenue):
    Entity CEO relationship; quarterly business review at minimum
    MBL visibility: Matt Mathison makes one personal contact per year
    Trigger: any customer event (renewal; concern; escalation) → entity CEO to Dr. Lewis same-day
    
  Key partners (Krista.ai; key vendors):
    Dr. Lewis owns the relationship with Krista.ai and technology partners
    Quarterly capability review; monthly operational contact
    Issues escalated to Matt Mathison as needed per exec-technology-investment

PROACTIVE OUTREACH CALENDAR (monthly; Dr. Lewis prepares):
  
  "Who should Matt call this month?" — monthly output:
  □ Any Tier 1 LP with >3 months since last contact
  □ Any stakeholder relationship that has moved from GREEN to YELLOW since last month
  □ Any upcoming event (board meeting; renewal; regulatory filing) that warrants a proactive call
  □ Any relationship where Matt made a commitment that hasn't been followed up on
  
  Outreach calendar is part of the exec-ceo-briefing monthly section (not weekly).
```

## Output Format

```markdown
# Stakeholder Health Map — [Entity/MBL] — [Quarter/Year]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Stakeholder Health Summary

| Stakeholder | Type | Tier | Health | Last contact | Next action |
|------------|------|------|--------|-------------|-------------|
| [Name] | [LP/Board/Customer/Partner] | [1/2/3] | 🟢/🟡/🔴 | [Date] | [Action] |

---

## Red Alerts (immediate attention)

| Stakeholder | Issue | Recommended action | Owner | Due |
|------------|-------|-------------------|-------|-----|
| [Name] | [What's wrong] | [What to do] | [Matt/Dr. Lewis] | [Date] |

---

## Who Should Matt Call This Month

| Name | Reason | Suggested opening | Mode |
|------|--------|-----------------|------|
| [Name] | [Why now] | [How to open the call] | [Phone/Video/Email] |

---

## Open Commitments to Stakeholders

| Stakeholder | Commitment | Due | Status |
|------------|-----------|-----|--------|
| [Name] | [What Matt or Dr. Lewis committed to] | [Date] | 🟢/🟡/🔴 |
```

## Output Contract
- Proactive contact before the stakeholder calls you — a Tier 1 LP who calls Matt to ask what's going on has already had a month of wondering; the goal is to call them before they wonder; Dr. Lewis tracks the last contact date for every Tier 1 and Tier 2 stakeholder and flags any who are approaching the contact cadence threshold; Matt never finds out a stakeholder is concerned from the stakeholder's unsolicited call if Dr. Lewis is doing his job
- Open commitments to stakeholders are tracked daily, not quarterly — any commitment Matt Mathison makes to a stakeholder (LP, board, major customer, regulator) is logged in exec-action-tracker as a P1 item immediately; stakeholder commitments do not wait for the weekly or monthly review; a missed stakeholder commitment is a relationship-destroying event; Dr. Lewis catches it before it happens
- Relationship health is observable, not assumed — "the relationship is fine" is not a health assessment; "we last spoke 4 months ago, the call was routine, and there are no open issues" is a health assessment; Dr. Lewis builds the health assessment from observable data: last contact date; responsiveness; any concerns raised; any commitments pending; not from assumptions about how a stakeholder "probably feels"
- HITL required: Matt Mathison makes all Tier 1 LP calls personally; board member relationships are Matt's responsibility (Dr. Lewis supports); Dr. Lewis manages Tier 2 operational stakeholder relationships (technology partners; vendors) and escalates to Matt when a Tier 2 relationship shows a RED signal; any RED stakeholder situation is an immediate Matt Mathison notification; Matt approves the proactive outreach calendar monthly

## System Dependencies
- **Reads from:** exec-investor-relations (LP relationship tier, last call, open commitments); exec-board-governance (board member contact cadence); exec-action-tracker (open commitments to stakeholders); Krista meeting transcripts (stakeholder interactions — last contact data); GoHighLevel CRM (LP and partner relationship history; last contact dates; sentiment notes); exec-kpi-dashboard (performance events that affect stakeholder perceptions)
- **Writes to:** Stakeholder health map (SharePoint → ExecutiveSupport → StakeholderManagement → [YYYY]-Q[N]); exec-action-tracker (outreach action items; open commitment tracking); GoHighLevel CRM (updated last contact; outcome notes; next planned contact); exec-ceo-briefing (monthly outreach calendar section)
- **HITL Required:** Matt Mathison makes all Tier 1 LP calls personally; Matt manages board relationships; RED signals trigger immediate Matt notification; outreach calendar approved by Matt monthly; Dr. Lewis manages technology partner relationships and Tier 2 operational stakeholders; any escalation from Tier 2 to Tier 1 priority requires Matt Mathison decision

## Test Cases
1. **Golden path:** Monthly stakeholder health check; Dr. Lewis reviews GoHighLevel CRM and exec-action-tracker; Tier 1 LP "Cornerstone Capital" last contact: 4 months ago (threshold: 3 months) → YELLOW; "Who should Matt call this month: Cornerstone Capital — 4 months since last call; Q2 performance was strong; good news to share; open commitment from April call (Allevio clinical expansion plan — DELIVERED ✅). Opening: 'Robert, I wanted to catch up on Q2 — we had a strong quarter across the portfolio and I know we last spoke right as the Allevio clinical expansion was getting started. Let me tell you how it's going.'" Matt: "I'll call him Tuesday." Dr. Lewis logs the planned outreach in GoHighLevel. Call happens Tuesday. Matt: "Great call — Robert is fully engaged. He asked about our HIVE timeline." Dr. Lewis logs the outcome; next contact flagged in 10 weeks.
2. **Edge case:** A major Column6 agency customer (22% of Column6 revenue) hasn't renewed their annual IO and is 6 weeks past the expected renewal date → Dr. Lewis: "This is a Tier 1 customer event. The Column6 CEO should be on this daily at this point. But given the revenue concentration (22%), I think Matt should make a personal call to the agency president — not to close the deal, but to signal that MBL-level leadership is aware and cares about the relationship. My suggested opening: 'I wanted to reach out personally — [agency name] has been a great partner and I want to make sure we're giving you everything you need to feel good about continuing the relationship.' Column6 CEO can handle the deal mechanics; Matt handles the relationship." Matt: "Agreed. Set up the call."
3. **Adversarial:** A Tier 2 LP is asking to be moved to Tier 1 treatment (monthly Matt calls instead of semi-annual) because their recent investment has made them 8% of AUM → Dr. Lewis: "The LP's capital position (8%) doesn't technically qualify for Tier 1 treatment under our framework (threshold is >20%). But the request tells us something: they want more visibility. My recommendation: Matt makes one additional personal call to this LP in the next 30 days, acknowledges their increased investment and the relationship, and offers a quarterly touchpoint (email or brief call) rather than the semi-annual standard — but without committing to the full Tier 1 cadence. This meets their real need (feeling valued) without setting a precedent that changes our tier structure for everyone." Matt: "Good call. I'll do the touchpoint."

## Audit Log
All stakeholder health maps retained by quarter. Contact records retained in GoHighLevel (date; mode; who; outcome; next contact). Open commitment records retained. RED alert records retained (what was flagged; when; Matt notification; resolution). Outreach calendar records retained monthly. Relationship escalation records retained.

## Deprecation
Retire when MBL has a dedicated investor relations or chief of staff function who manages stakeholder mapping and outreach — with Dr. Lewis retaining the technology partner relationships and Matt Mathison retaining the Tier 1 LP and board relationships regardless of team structure.
