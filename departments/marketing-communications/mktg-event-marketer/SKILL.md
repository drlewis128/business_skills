---
name: mktg-event-marketer
description: "Plan and manage event marketing for MBL Partners portfolio entities. Use when the user says 'event marketing', 'event strategy', 'conference', 'trade show', 'industry event', 'event sponsorship', 'sponsor a conference', 'conference booth', 'exhibit', 'attend a conference', 'event planning', 'event presence', 'conference strategy', 'event budget', 'event ROI', 'event leads', 'event follow-up', 'MGMA', 'SHRM', 'IAB', 'SPE', 'ACG', 'NVCA', 'employer event', 'healthcare conference', 'programmatic conference', 'AdExchanger', 'Digiday', 'oil and gas conference', 'PE conference', 'networking event', 'client event', 'hosted event', 'MBL event', 'entity event', 'roadshow', 'sales dinner', 'advisory dinner', 'deal sourcing event', 'speaking at an event', or 'how do we use events'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--type <conference|hosted|sponsored|virtual|speaking>] [--action <plan|execute|report>]"
---

# Marketing Event Marketer

Plan and manage event marketing strategy for MBL Partners portfolio entities — identifying the right conferences, executing entity presence, and converting event interactions into measurable pipeline. At portfolio company scale, event selection discipline matters: attending the wrong events wastes budget and time; attending the right ones with proper pre/post-event follow-up generates high-quality pipeline that digital channels cannot.

## When to Use
- Deciding which conferences or events to sponsor or attend in the coming year
- Planning event logistics, presence, and collateral
- Building pre-event and post-event follow-up programs
- Reporting event ROI to entity CEO

## Event Marketing Framework

```
PRIORITY EVENTS BY ENTITY:

  ALLEVIO:
    Tier 1 (must attend; booth + speaking target):
      - MGMA (Medical Group Management Association): Annual Congress + state chapters (Arizona MGMA)
        Audience: medical group managers, employer benefits decision-makers
        Focus: care coordination; employer benefits ROI; MSO services
      - SHRM Arizona: State HR conference; employer HR professionals
        Focus: employer benefits strategy; care coordination explanation
      - Arizona Benefits & HR conferences: Arizona Society for Human Resource Management (AZSHRM)
    Tier 2 (attend; no booth; networking + learning):
      - Arizona Chamber of Commerce events (employer network)
      - Arizona Business Leadership (employer health policy focus)
    HIPAA at events: Allevio presenter materials reviewed by Dr. Lewis before any public presentation; no PHI in any slides or handouts; aggregate data only
    
  COLUMN6:
    Tier 1 (must attend; sponsorship + speaking target):
      - IAB Annual Leadership Meeting (programmatic + CTV standards)
      - AdExchanger Programmatic IO (programmatic industry; agency/DSP audiences)
      - Digiday events (digital media; agency buyers)
    Tier 2 (attend; no sponsorship; networking):
      - Local market agency events (NY, LA, Chicago)
      - CTV-specific industry events (CTV Connect, etc.)
    Competitive intelligence at events: Column6 team debriefs within 24 hours of major events — what are competitors saying? What are agencies complaining about? What new platforms are generating buzz?
    
  HIVE PARTNERS:
    Tier 1 (attend; speaking target):
      - Society of Petroleum Engineers (SPE) — technical credibility; Uinta Basin operational context
      - Utah Oil & Gas Association events — landowner and operator relationships
    Tier 2 (attend; no sponsorship):
      - Uinta Basin regional energy meetings
      - Utah Governor's Energy Advisor meetings (policy context)
      
  MBL PARTNERS:
    Tier 1 (speaking target):
      - ACG Mountain West: Association for Corporate Growth; lower-middle market PE deals; deal intermediaries
      - NVCA regional events: venture/PE networking; co-investor development
    Tier 2 (attend; networking):
      - Regional deal conferences; broker-intermediary events; portfolio CEO peer networks

EVENT EXECUTION PLAYBOOK:
  
  Pre-Event (4 weeks out):
    - Register and confirm logistics (booth; speaking slot; attendee list if available)
    - Brief entity team on audience profile and event objectives
    - Produce event collateral (one-pager; sell sheet; business cards; demo if needed)
    - Identify target contacts to meet (from attendee list or prior event history)
    - Build post-event email sequence in GoHighLevel (ready to activate day of event)
    - HIPAA review (Allevio): all presentation materials reviewed by Dr. Lewis
    
  At Event:
    - Lead capture: business card scan OR GoHighLevel QR code form (name; email; company; interest area)
    - Debrief: entity team meets nightly to compare notes; surface qualified leads immediately
    - Competitive intel: note competitor messaging; new players; agency/employer sentiment
    
  Post-Event (48-72 hours):
    - All leads entered into GoHighLevel within 24 hours of event end
    - Personal follow-up email to Tier 1 contacts (specific; reference the conversation)
    - Automated nurture sequence activated for all leads (mktg-lead-nurture-designer)
    - Event debrief: what worked; leads generated; competitive intel; go/no-go next year
    
EVENT ROI:
  Cost-per-lead at event (total event cost / qualified leads generated)
  Pipeline attributed to event leads (6-month window; tracked in GoHighLevel)
  Benchmark: event should generate enough pipeline to justify 3× event cost within 12 months
  Events below benchmark 2 consecutive years: de-prioritize or exit
```

## Output Format

```markdown
# Event Plan — [Entity] — [Event Name] — [Date]
**Event type:** [Conference / Hosted / Sponsored / Virtual]
**Objective:** [Pipeline / awareness / relationships / speaking credibility]
**Budget:** $[X] | **Approved by:** [Entity CEO + date]

---

## Pre-Event Checklist

| Task | Owner | Due | Status |
|------|-------|-----|--------|
| Register / confirm logistics | | | |
| Collateral produced | | | |
| Target contacts identified | | | |
| Post-event sequence built in GHL | | | |
| HIPAA review (Allevio) | Dr. Lewis | Before event | |

---

## Target Contacts (pre-event)

| Name | Company | Role | Why | Meeting requested |
|------|---------|------|-----|------------------|

---

## Post-Event Results

| Metric | Value |
|--------|-------|
| Leads captured | |
| Tier 1 contacts (qualified) | |
| Meetings booked at or after event | |
| Pipeline entered (GoHighLevel) | |
| Est. pipeline value | |
| Event total cost | |
| Cost per qualified lead | |

---

## Debrief Notes
**What worked:** [Specific]
**What didn't:** [Honest assessment]
**Competitive intel:** [Key observations]
**Go/no-go next year:** ✅ YES / ❌ NO / ⚠️ CONDITIONAL
**Reason:** [Brief rationale]
```

## Output Contract
- Event selection is a resource allocation decision, not a FOMO decision — attending every industry event because competitors attend is not a strategy; Dr. Lewis evaluates each event against three criteria: (1) can we reach our ICP there?; (2) is the cost-per-lead at this event likely to be competitive with other channels?; (3) does attendance or speaking advance a specific business objective?; events that fail all three criteria are declined regardless of industry prestige; events that pass all three get budget and a presence plan; Dr. Lewis presents the annual event recommendation to entity CEOs in October (for following year planning)
- HIPAA applies to all Allevio event materials — when Allevio presents at MGMA or SHRM Arizona, the presentation slides must pass Dr. Lewis's HIPAA review before they go on screen; an enthusiastic Allevio speaker who improvises a case study involving a named employer client's member outcomes during a Q&A is a HIPAA risk; Dr. Lewis briefs all Allevio event presenters before each event on what they can and cannot say; "our employers see better claim ratios" (aggregate, anonymous) is acceptable; "Phoenix Manufacturer saw their diabetic employee population's A1c improve by 1.2 points" names an employer and implies identifiable member health data
- Post-event follow-up is not optional and has a 24-hour deadline — the half-life of a trade show conversation is approximately 48 hours; after that, the prospect has met 30 other vendors and the context of your conversation is gone; Dr. Lewis enforces: all leads entered into GoHighLevel within 24 hours of event end; personalized follow-up to Tier 1 contacts within 48 hours; automated nurture activated within 24 hours; events without a post-event follow-up plan documented before the event are not approved for budget
- HITL required: event budget → entity CEO approves before registration; Allevio presentation materials → Dr. Lewis HIPAA review 7 days before event; speaking abstract submissions → entity CEO approves before submission; event debrief → entity CEO reviews within 1 week of event; go/no-go next year → entity CEO decision; events >$10K → Dr. Lewis informed; events >$25K → Matt Mathison informed

## System Dependencies
- **Reads from:** mktg-campaign-manager (event as a campaign channel); mktg-lead-nurture-designer (post-event nurture sequences built in GHL); mktg-messaging-matrix (event talking points carry L2/L3 messages); mktg-thought-leadership-planner (speaking submissions coordinated); mktg-competitive-intelligence (event competitive intel feeds into competitive intel bank)
- **Writes to:** Event plan (SharePoint → Marketing → Events → [Entity] → [Event]); GoHighLevel (event lead contacts; post-event sequence activation); Monday.com event tracker; event ROI report; entity CEO debrief; competitive intel log (post-event intel)
- **HITL Required:** Event budget → entity CEO; Allevio materials → Dr. Lewis HIPAA (7 days before); speaking submissions → entity CEO; debrief → entity CEO; go/no-go → entity CEO; >$10K events → Dr. Lewis informed; >$25K → Matt Mathison

## Test Cases
1. **Golden path:** Allevio MGMA Annual Congress. Budget: $8,500 (sponsorship + booth + travel). Pre-event: collateral produced (employer care coordination one-pager — HIPAA reviewed by Dr. Lewis); 15 target employer contacts identified from attendee list; GoHighLevel post-event sequence built (4-email); Allevio CEO speaking brief reviewed by Dr. Lewis. At event: 22 business cards/forms captured; 4 Tier 1 employer contacts (AZ; ≥50 employees; confirmed pain around care utilization). Post-event: 22 contacts in GHL within 24 hours; 4 personalized emails sent within 36 hours; nurture sequence active for remaining 18. Results: 2 demos scheduled; 1 proposal issued ($120K employer contract). Cost per qualified lead: $388. Go/no-go next year: YES.
2. **Edge case:** Conference cancels 2 weeks before the event → Dr. Lewis: "First: confirm refund policy on sponsorship (typically 50-75% refundable if cancelled by organizer); collateral is sunk cost. Second: evaluate virtual alternative — some conferences shift to hybrid; is the virtual version worth attending? Third: redirect the budget: could the same audience be reached via a hosted dinner event or LinkedIn ads targeting the same job titles? I'll present 2-3 alternative uses of the budget to the entity CEO within 48 hours."
3. **Adversarial:** Column6 team member shares a slide at IAB showing a competitor's campaign metrics that the team obtained through a former employee of the competitor → Dr. Lewis: "Take that slide out of the deck immediately. Using confidential competitor information — even if we obtained it informally — is an ethical violation and creates legal risk. We cannot use it in any presentation or competitive intel context. I need to understand the source: if a current Column6 employee brought this from a prior employer, that's a trade secret issue. I'm escalating this to the Column6 CEO and legal before we go any further."

## Audit Log
Event budget authorization records. HIPAA presentation material review records (Allevio). Speaking submission records. Lead capture records (by event; by entity). Post-event follow-up execution records. Event ROI reports. Competitive intel logs (post-event). Go/no-go decisions retained.

## Deprecation
Event tier list reviewed annually in October (for following year planning). ROI benchmarks reviewed annually. HIPAA event briefing process updated when HIPAA regulations change. Event playbook updated when entity marketing strategy changes.
