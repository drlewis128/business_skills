---
name: cs-digital-cs-builder
description: "Build the tech-touch and digital CS program for lower-tier accounts at MBL portfolio companies. Use when the user says 'digital CS', 'tech touch', 'tech-touch', 'self-service CS', 'digital customer success', 'low-touch CS', 'low touch model', 'scalable CS', 'CS at scale', 'Priority C accounts', 'Priority D accounts', 'long tail accounts', 'small accounts CS', 'automate CS', 'CS automation', 'automated check-in', 'automated CS outreach', 'digital engagement', 'scale CS', 'CS for small customers', 'digital-first CS', 'light-touch CS', 'long tail customer management', or 'self-serve customer success'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--tier <C|D>] [--action <build|configure|review|report>]"
---

# CS Digital CS Builder

Build the tech-touch and digital CS program for lower-tier accounts at MBL portfolio companies — creating a structured, automated (or semi-automated) engagement model that keeps Priority C and D accounts informed, served, and monitored without consuming CSM time that should be focused on Priority A and B accounts. Digital CS is not second-class service; it is right-sized service; a $15K Allevio group and a $200K Allevio group should both feel cared for — the difference is how much hands-on time the CS team invests, not whether they feel supported.

## When to Use
- Building the initial CS tier model (which accounts get human-touch vs. digital-touch)
- A CSM is overstretched and needs to offload lower-tier account management
- Annual CS Ops Review (cs-ops-review) recommends a digital CS program
- A portfolio company is scaling and the CS headcount can't keep pace with growth

## Digital CS Framework

```
TIER DEFINITIONS FOR DIGITAL CS:

  Who belongs in the digital CS tier:
    Priority C: ACV $15-50K; lower complexity; lower strategic value
    Priority D: ACV <$15K; or accounts where the employer/customer clearly prefers low-touch
    
  Who does NOT belong in the digital CS tier:
    Any account where health score is Yellow or Red (escalate to human-touch regardless of tier)
    Any account in the renewal window (last 90 days of contract term)
    Any account with an open escalation
    Any account where the customer has explicitly requested a dedicated contact

DIGITAL CS ENGAGEMENT MODEL:

  ALLEVIO Priority C/D Employer Groups:
    Monthly: Automated claim ratio report delivery (cs-claim-ratio-reporter — auto-distributed)
    Quarterly: CS rep sends a templated-but-personalized email check-in:
      "Hi [Name], your [Month] benefit plan report is attached. Your claim ratio this quarter
       was [X]% — [on target / above target]. If you have any questions about the report or
       your plan, I'm here. Otherwise, I'll be in touch at open enrollment time."
    Open enrollment: Human-touch (cs-open-enrollment-supporter is always human for all tiers)
    Escalation trigger: If claim ratio spikes >5 points → auto-flag to human CS review
    Annual: DR. LEWIS reviews all Priority C accounts at year-end and upgrades any that warrant
      more attention (claim ratio trajectory; member count growth; renewal risk signals)
      
  COLUMN6 Priority C/D Agency Relationships:
    During active campaigns: Automated weekly pacing report (no human touchpoint needed)
    Post-campaign: Automated wrap report sent within 48 hours of flight end
    IO gap: If no IO for 60+ days → auto-flag to CS rep for a pulse check email
    Quarterly: CS rep sends a personalized email with Q performance summary + Q+1 opportunity
    Annual: Review IO velocity — if an account has had 4+ IOs in a year, consider upgrading to Priority B
    
  HIVE Priority C/D Landowners:
    Monthly: Royalty statement accompaniment email (cs-landowner-communicator — can be
      semi-automated but should have a personal tone; avoid fully automated for HIVE — landowner
      trust is relationship-based even for smaller parcels)
    Development update: Quarterly email update using a template with parcel-specific production data
    Escalation trigger: Any royalty question → auto-route to CS rep for same-day response
    Annual: Dr. Lewis reviews all HIVE accounts regardless of tier; HIVE relationships are personal

AUTOMATION TOOLS (what runs automatically vs. what requires human review):

  AUTOMATED (no human required):
    □ Report delivery: claim ratio reports; campaign pacing reports; royalty statement notifications
    □ Milestone alerts: flag to CS rep when account triggers a review condition
      (claim ratio spike; IO gap; royalty question received)
    □ Health score updates: trigger a CS rep flag when digital-tier account drops below threshold
    □ Renewal calendar alerts: flag 90 days before end of agreement (not 120 for digital tier)
    
  SEMI-AUTOMATED (template built; CS rep personalizes and sends):
    □ Quarterly check-in email: template with merge fields for account-specific data
    □ Annual review email: template that CS rep personalizes with the year-end performance summary
    □ Open enrollment kickoff (Allevio): template; CS rep adds the custom details
    
  ALWAYS HUMAN (regardless of tier):
    □ Any escalation (P1/P2/P3 — cs-escalation-manager applies to all tiers)
    □ Open enrollment support (cs-open-enrollment-supporter)
    □ Renewal conversation (cs-renewal-coordinator)
    □ Churn risk response (cs-at-risk-responder)
    □ Any account where the customer specifically reaches out to the CS rep

DIGITAL CS MONITORING:
  Health scores are maintained for digital-tier accounts (weekly automated check; CS rep reviews monthly)
  Escalation triggers are immediate regardless of tier — digital-tier accounts are not monitored less,
    they just have automated reporting instead of human-led QBRs
  Annual review: Dr. Lewis reviews all digital-tier accounts at year-end:
    Upgrade to Priority B if: ACV grew >50%; health score has been consistently Green for 12 months;
      account is a strategic reference or advocacy candidate
    Move to offboarding: if account has been Red for 90+ days and digital CS hasn't resolved it
```

## Output Format

```markdown
# Digital CS Program — [Entity] | [Date]

---

## Digital CS Account List

| Account | Tier | ACV | Health | Last human contact | Automation active |
|---------|------|-----|--------|-------------------|------------------|
| [Account] | C | $[X]K | Green | [Date] | ✅ All automations active |

---

## Digital CS Engagement Calendar

| Cadence | Action | Method | Owner |
|---------|--------|--------|-------|
| Monthly | Claim ratio report | Automated delivery | System |
| Quarterly | Check-in email | Semi-automated (CS rep personalizes) | CS Rep |
| Annual | Year-end review | CS rep — Dr. Lewis reviews decisions | CS Rep + Dr. Lewis |

---

## Escalation Triggers Active

| Trigger | Threshold | Action |
|---------|----------|--------|
| Claim ratio spike | >5 points vs. prior month | CS rep flag within 24 hours |
| IO gap | 60+ days | CS rep pulse check email |
| Royalty question | Any inquiry | CS rep same-day response |
```

## Output Contract
- Digital CS is not set-and-forget — a digital CS account that hasn't had a human touchpoint in 6 months is an account at risk of feeling forgotten; Dr. Lewis requires that every digital-tier account receives at least one human-crafted communication (even if template-based) per quarter; fully automated report delivery without a human accompanying email is permitted only for accounts that have explicitly requested low-touch; for all others, there is a human email even if the report is automated
- Health scores don't have tiers — a Priority C account that drops to Red gets the same cs-at-risk-responder protocol as a Priority A account; digital CS is a strategy for proactive engagement cadence, not for reducing responsiveness to distress signals; the automation layer exists to free up CS time for proactive engagement with large accounts, not to create second-class service for small accounts
- Escalation triggers are the safety net — the digital CS model only works because the escalation triggers are working; Dr. Lewis requires that every digital-tier account has all escalation triggers configured in CRM before the account is moved to the digital tier; a digital-tier account with non-functional triggers is not a digital-tier account — it is an unmonitored account
- HITL required: Dr. Lewis approves which accounts move to the digital CS tier; any account being moved from human-touch to digital-touch requires a review of the last 6 months of health data to confirm stability; any digital-tier account that triggers an escalation is treated identically to a Priority A escalation in response time; Dr. Lewis reviews the annual digital-tier account list and makes upgrade/offboarding decisions; Matt Mathison receives the digital CS program overview as part of the CS capacity plan

## System Dependencies
- **Reads from:** cs-kpi-dashboard (GRR/NRR for the digital tier — tracked separately); cs-health-score-tracker (health scores for all digital-tier accounts — weekly automated check); GoHighLevel CRM (automation configurations; escalation trigger settings; account tier classifications); cs-claim-ratio-reporter (Allevio — claim ratio reports automated for C/D tier); cs-campaign-performance-reporter (Column6 — pacing and completion reports automated for C/D tier); cs-landowner-communicator (HIVE — monthly accompaniment emails)
- **Writes to:** Digital CS account list (SharePoint/CustomerSuccess/<Company>/DigitalCS/[Entity]_DigitalCSTier.pdf); automation configuration records (CRM — which automations are active for each account); escalation trigger records (CRM — what triggers are configured; confirmation they are active); Dr. Lewis annual review decision records (upgrade; maintain; offboard)
- **HITL Required:** Dr. Lewis approves all tier assignments to digital CS; health data review required before any account moves to digital tier; any escalation trigger activation is identical in response time to Priority A; Dr. Lewis annual review makes all tier decisions; Matt Mathison receives digital CS program overview in the capacity plan

## Test Cases
1. **Golden path:** 18 Allevio Priority C employer groups (average ACV $22K; total ARR $396K); monthly claim ratio reports automated to all 18 (no CS rep action needed monthly); quarterly: CS rep builds 18 personalized check-in emails from a template (each includes the account's actual claim ratio trend — not generic); 15 minutes per email × 18 = 4.5 hours per quarter vs. 18 × quarterly QBR prep × QBR time would be 54+ hours; open enrollment: all 18 get human-led OE support (cs-open-enrollment-supporter); health monitoring: automated weekly health score checks; 2 accounts trigger claim ratio spikes during Q3 → CS rep notified immediately; both addressed within 24 hours; no churn in the Priority C tier for the year; NRR for Priority C accounts: 98% (voluntary churn: 1 account, involuntary)
2. **Edge case:** A digital-tier Column6 account (Priority C; $28K ACV) has had no IOs in 90 days → escalation trigger fires; CS rep receives the flag; CS rep sends a personalized email: "Hi [Media Buyer], I was looking at our account and noticed we haven't had an active IO in the last few months — wanted to check in. We have some Q4 inventory that's performing really well in [Agency's category] — would you be open to a quick 15-minute conversation about Q4?" Media buyer responds: "Good timing — we just got a new brief from [Brand]. Send me a Q4 proposal." CS rep builds a proposal; IO signed; account moves back to Active status; Dr. Lewis notified: "Priority C account reactivated — $32K IO signed for Q4."
3. **Adversarial:** A CS rep proposes putting a Priority B account ($78K ACV; Yellow health score) into the digital tier to reduce workload → Dr. Lewis: "No. Priority B with Yellow health is not a digital CS candidate — it's exactly the account that needs more human attention, not less. The digital tier is for Green, stable, lower-complexity accounts that don't need proactive intervention. A Yellow account in the digital tier means we don't catch the problem until it's Red, by which point it's an at-risk account. I'll review the CSM's capacity (cs-capacity-planner) — if they're genuinely overstretched, the answer is hiring or redistribution, not moving at-risk accounts to autopilot." Capacity review run; CS rep is at $3.8M adjusted ARR; hire plan initiated; Priority B account stays in human-touch tier

## Audit Log
Digital CS tier assignment records retained by account and date. Health check automation records retained. Escalation trigger activation records retained. Annual Dr. Lewis tier review decisions retained. Upgrade and offboarding decisions retained.

## Deprecation
Retire when each portfolio company has a dedicated CS operations tool (ChurnZero; Gainsight; etc.) that manages the digital CS tier programmatically — with Dr. Lewis reviewing the tier assignment logic quarterly and the CEO approving any changes to the escalation trigger thresholds.
