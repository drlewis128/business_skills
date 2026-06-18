---
name: sales-event-roi
description: "Measure and plan ROI for trade shows and sales events for MBL portfolio companies. Use when the user says 'trade show', 'trade show ROI', 'event ROI', 'conference ROI', 'should we go to this event', 'is this conference worth it', 'event planning', 'event strategy', 'pre-event prep', 'post-event follow-up', 'event pipeline', 'event budget', 'conference budget', 'sponsor a conference', 'exhibit at a show', 'booth at a conference', 'sales event', 'event contacts', 'follow up after event', 'how much did we get from the event', 'event performance', 'SHRM conference', 'IAB event', 'advertising week', 'Uinta Basin landowner meeting', or 'event attendance decision'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--event <event name>] [--date <event date>] [--action <plan|measure|debrief>] [--budget <cost>]"
---

# Sales Event ROI

Measure and plan ROI for trade shows, conferences, and sales events for MBL portfolio companies — making data-driven go/no-go decisions before committing event budget, setting measurable targets, and tracking pipeline and closed revenue to determine whether the investment paid off. Most organizations attend the same events every year out of habit; Dr. Lewis makes every event decision based on the prior year's data and a clear break-even analysis.

## When to Use
- Evaluating whether to attend or sponsor a new event (go/no-go decision)
- Setting targets before attending a confirmed event
- Tracking and reporting event pipeline and closed revenue (30-60-90 days post-event)
- Deciding which events to cut from the budget

## Event ROI Framework

```
PRE-EVENT: GO/NO-GO DECISION

  Step 1: Define the event cost:
    □ Registration / exhibit fee
    □ Travel: Flights; hotel; ground transportation (estimate; then verify)
    □ Materials: Booth; banners; brochures; giveaways (one-time vs. reusable)
    □ Rep time: How many days? How many reps? ($[X] per rep-day at fully-loaded cost)
    Total event cost = sum of all above
    
  Step 2: Define the break-even:
    Break-even revenue = Event cost ÷ Gross margin (if applicable) or Event cost ÷ 1 (if ACV)
    For Allevio: Break-even = Event cost (every dollar of ACV is a dollar of revenue)
    For Column6: Break-even = Event cost ÷ Column6 gross margin (~40-50%)
    Example: $12,000 event cost for Allevio → need $12,000 in closed ACV to break even
    Minimum target: 3× break-even ($36,000 closed ACV) for the event to be a good ROI
    
  Step 3: Historical data check (if repeat event):
    □ Prior year contacts logged from this event: [N]
    □ Prior year pipeline generated: $[X]K
    □ Prior year closed revenue (90 days post-event): $[X]K
    □ Prior year ROI: [X]×
    
  Step 4: Go/No-Go recommendation:
    GO: Prior year ROI >3× OR strong strategic reason (new market entry; competitive necessity)
    NO-GO: Prior year ROI <1× AND no compelling strategic rationale
    CONDITIONAL: First-time event with no prior data → attend with low-cost presence
      (no booth; attend as a participant; target contacts; evaluate before committing to booth)

TARGET-SETTING (pre-event):
  Set measurable targets for every event before attending:
    □ Contacts logged in CRM during or immediately after event: [N]
    □ Discovery calls scheduled from event contacts: [N]
    □ Pipeline generated (30 days): $[X]K
    □ Closed revenue target (90 days): $[X]K
  These targets should be based on historical conversion rates if available:
    Typical conversion: 20-25% of contacts → discovery call; 30-40% of discovery calls → proposal;
      25-30% of proposals → closed (Allevio); 15-20% (Column6)

ENTITY-SPECIFIC EVENTS:

  ALLEVIO — Priority events:
    □ AZ SHRM Annual Conference: HR Directors; open enrollment season timing
        Typical cost: $8,000-$15,000 (booth + travel); prior year ROI if available
    □ AZ Business Coalition: CFOs and CEOs of mid-market AZ companies
        Typically a sponsorship/table + attendance; lower cost ($3,000-$6,000)
    □ Phoenix Chamber of Commerce events: Local business events; employers
        Lower cost; informal networking; good for brand building
    □ AZ Benefits Summit (if applicable): Benefits professionals and brokers
        
  COLUMN6 — Priority events:
    □ IAB Annual Leadership Meeting: Industry standards body; agency and publisher presence
    □ Advertising Week (New York): Agencies; brands; media buyers
    □ Cannes Lions / MediaLink events: Premium positioning; relationship-building
        High cost ($25,000+); strategic presence; ROI measured over 12 months not 90 days
    □ CES (Consumer Electronics Show): CTV and streaming companies; tech budgets
    □ Local agency summits (market-specific): Lower cost; targeted to Column6's agency sales motion
    
  HIVE — Priority events:
    □ Uinta Basin Oil and Gas Summit: Operators; royalty owners; landmen
    □ Rocky Mountain Mineral Law Conference: Landmen; attorneys; mineral rights professionals
    □ Farm Bureau annual meeting (Utah): Landowners; agriculture community
    □ County fair and community events: Informal landowner outreach; relationship building; low cost

POST-EVENT: TRACKING AND REPORTING
  Immediately after the event:
    □ All contacts logged in GoHighLevel CRM within 24 hours (source = [Event Name])
    □ Follow-up emails sent within 48 hours to all contacts
    □ Discovery calls scheduled from event contacts: goal to schedule within 5 business days
    
  30-day measurement:
    □ Contacts logged: [N]
    □ Discovery calls scheduled or completed: [N]
    □ Pipeline generated: $[X]K
    □ Follow-up email reply rate: [X]%
    
  90-day measurement:
    □ Pipeline to proposal: [N] proposals submitted
    □ Closed revenue attributable to event: $[X]K
    □ ROI: Closed revenue ÷ Event cost = [X]×
    □ Decision: Attend next year? Yes / No / Conditional
```

## Output Format

```markdown
# Event ROI Report — [Event Name] | [Entity]
**Event date:** [Date] | **Location:** [City] | **Cost:** $[X]K
**Prepared by:** Dr. Lewis | **Report date:** [30/60/90-day post-event]

---

## Pre-Event Targets vs. Actuals

| Metric | Pre-event target | 30-day actual | 90-day actual | Status |
|--------|----------------|--------------|--------------|--------|
| Contacts logged | [N] | [N] | — | 🟢/🟡/🔴 |
| Discovery calls scheduled | [N] | [N] | — | 🟢/🟡/🔴 |
| Pipeline generated | $[X]K | $[X]K | — | 🟢/🟡/🔴 |
| Closed revenue (90-day) | $[X]K | — | $[X]K | 🟢/🟡/🔴 |

---

## ROI Calculation

| Component | Amount |
|-----------|--------|
| Total event cost | $[X]K |
| Pipeline generated (30-day) | $[X]K |
| Closed revenue (90-day) | $[X]K |
| **ROI (closed revenue ÷ cost)** | **[X]×** |
| **Break-even** | **$[X]K** |

---

## Next Year Decision

**Verdict:** Attend / Skip / Conditional (lower-cost presence)
**Rationale:** [Why — based on ROI and strategic value]
**Budget recommendation for next year:** $[X]K / Not in budget
```

## Output Contract
- Every event needs a pre-defined break-even number before commitment — the event budget is not approved without a stated break-even and ROI target; a $15,000 event that "felt great" but generated no closed revenue in 90 days was a $15,000 loss; Dr. Lewis calculates the break-even before every event and presents it to the CEO for approval
- Post-event follow-up is mandatory within 48 hours — a contact who is not followed up within 48 hours of the event has already forgotten the conversation; Dr. Lewis requires all reps to send follow-up emails within 48 hours; all contacts are logged in CRM with the event as source within 24 hours; any contact who is a Priority A lead (by ICP score) is called before they receive the email
- Measure at 30 and 90 days, not the day after — event pipeline takes time to develop; a demo from an event contact typically doesn't happen for 2-3 weeks; a proposal may not be submitted for 4-6 weeks; a decision may take 8-12 weeks; Dr. Lewis measures event ROI at both 30 days (leading indicators) and 90 days (closed revenue) and does not declare an event a success or failure until the 90-day mark
- HITL required: Dr. Lewis makes go/no-go recommendations; CEO approves all event spend above $5,000 before commitment; Matt Mathison approves event sponsorships above $25,000 (e.g., Cannes Lions); Dr. Lewis does not commit event registration or booth fees without CEO approval; Dr. Lewis reports the 90-day ROI to the CEO and includes a next-year recommendation; Matt Mathison receives an annual summary of event ROI across the portfolio as part of the operating plan

## System Dependencies
- **Reads from:** Prior year event data (CRM source = [Event Name] — how many contacts; how many converted); pipeline reports (sales-pipeline-manager — deals attributed to event source); sales-campaign-roi (event ROI feeds into the broader campaign ROI framework); QuickBooks (event cost records — actual spend vs. budget)
- **Writes to:** Event ROI report (SharePoint/Sales/<Company>/Events/[EventName]_[Date]_ROI.pdf); CRM event contacts (GoHighLevel — all event contacts tagged with source = event name); CEO event approval request (for events >$5K); Matt Mathison event summary (annual portfolio-level event spend and ROI); next-year event budget recommendation (input to the operating plan)
- **HITL Required:** Dr. Lewis makes go/no-go recommendations; CEO approves event spend >$5K; Matt Mathison approves event sponsorships >$25K; Dr. Lewis does not commit event spend without CEO approval; 90-day ROI report goes to CEO and (if material) Matt Mathison; any event where the ROI is below 1× triggers a specific decision about whether to attend the following year

## Test Cases
1. **Golden path:** Allevio evaluating the AZ SHRM Annual Conference → Dr. Lewis pulls prior year data: 48 contacts logged; 11 discovery calls scheduled; 4 proposals submitted; 2 closed ($187K ACV); event cost: $12,400 (booth $6,000 + travel 2 reps × 2 days $3,200 + materials $1,200 + rep time $2,000); ROI: $187K ÷ $12.4K = 15.1×; recommendation: "Strong Go — this is our highest-ROI event. Pre-event targets for next year: 55 contacts; 13 discovery calls; $220K closed. I'd recommend adding a rep so we can work more of the floor and pre-schedule 15 meetings with attendees before the event." CEO approves; $12,400 budget approved; Dr. Lewis develops the pre-event outreach plan for 15 target attendees
2. **Edge case:** Column6 is invited to sponsor Cannes Lions at $45,000 — no prior data since they've never attended → Dr. Lewis: "This is a prestige event — the ROI is brand and relationship-based, not directly measurable in 90-day pipeline. The break-even on $45,000 at Column6's gross margin would require $90,000 in IO bookings from event contacts within 90 days — that's unlikely for a first-year sponsor. My recommendation: Don't take the full sponsorship in Year 1. Instead, attend as a participant (MediaLink events are cheaper) at ~$8,000 total cost; target 10 agency contacts we want to meet; schedule dinners; evaluate whether the relationship quality justifies the full sponsorship next year. A $8K investment to evaluate a $45K decision is a good trade." CEO agrees; MediaLink attendance approved; Cannes sponsorship deferred
3. **Adversarial:** A rep returns from an AZ Business Coalition event reporting 28 "great conversations" but logs only 3 contacts in CRM and sends no follow-up emails in the first week → Dr. Lewis: "28 conversations with 3 CRM entries is not an event follow-up; it's 25 leads we don't have. This is exactly why we have a 24-hour CRM logging standard and a 48-hour follow-up standard. Here's what we need to do right now: (1) You need to go back through your notes and business cards from the event and add every contact to CRM today — I'll give you 2 hours; (2) I'll write a generic reconnect email for the contacts you can't reach personally; (3) We need to accept that some of those 25 contacts are now cold — the window closed. Going forward: I'm joining you at the next event to demonstrate the real-time CRM logging workflow. Every contact goes in before you leave the conversation." Rep adds 19 of the 25 contacts; 4 respond to the reconnect email; 1 becomes a discovery call

## Audit Log
All event go/no-go decisions retained with cost; break-even; and rationale. Pre-event targets documented. 30-day and 90-day ROI reports retained. CEO and Matt Mathison approval records retained. Event contact logs retained in CRM by event source. Annual event ROI summary retained.

## Deprecation
Retire when each portfolio company has a dedicated Marketing or Revenue Operations role who manages the event calendar and ROI tracking — with Dr. Lewis reviewing the annual event budget and Matt Mathison approving any event sponsorship above $25K.
