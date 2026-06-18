---
name: sales-inbound-qualifier
description: "Qualify inbound sales leads for MBL portfolio companies. Use when the user says 'inbound lead', 'website lead', 'form submission', 'new lead', 'someone reached out', 'they filled out our form', 'inbound inquiry', 'contact form submission', 'new inquiry', 'qualify this lead', 'lead qualification', 'is this a good lead', 'how to respond to inbound', 'lead response', 'inbound response time', 'warm lead', 'demo request', 'pricing inquiry', 'quote request', 'inbound pipeline', 'MQL', 'marketing qualified lead', 'SQL', or 'sales qualified lead'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--lead <lead name or company>] [--action <qualify|respond|score|route>]"
---

# Inbound Qualifier

Qualify inbound leads for MBL portfolio companies — responding quickly, scoring against ICP criteria, and routing the right leads to the right follow-up path. An inbound lead that doesn't get a response within 1 hour has a 21× lower conversion rate than a lead that gets a response immediately; a lead that gets a response within 5 minutes converts at the highest rate. Dr. Lewis enforces the inbound response standard and the qualification criteria for all portfolio companies.

## When to Use
- A new lead comes in through a website form, referral email, or inbound call
- Determining whether to invest significant sales resources in a lead
- Triaging a batch of inbound leads to prioritize
- Building the inbound lead handling SOP for a portfolio company

## Inbound Lead Qualification Framework

```
INBOUND RESPONSE STANDARD:
  Response time target: Within 1 hour of lead submission (business hours)
    5 minutes: Best — 21× higher conversion than responding after 5 minutes
    30 minutes: Good — 4× higher conversion than responding next day
    1 hour: Acceptable
    Same day: Marginal — conversion rate drops significantly
    Next day+: Lead is 90% less likely to engage
  After-hours leads: Auto-response within 5 minutes; personal response first thing next business day
  
  First response format:
    NOT: "Thanks for your interest in [Company]. Someone will reach out soon."
    YES: "[Name] — I'm [Rep], [Title] at [Allevio]. I saw your inquiry about [specific interest].
      Are you available for a 15-minute call [specific time offer]? I can walk you through
      [specific value relevant to their inquiry]."
    
  Why specific and fast beats generic and slow:
    Specific: Shows you read their inquiry; builds confidence they can actually help
    Fast: They're still thinking about the problem; delayed response = interest has cooled

LEAD SCORING — QUALIFY AGAINST THE ICP:
  Score each inbound lead on 5 dimensions (1-5 scale each; max 25 points):
  
  1. Company fit (ICP match):
     5: Perfect ICP fit (all criteria met — size; geography; industry)
     3: Partial ICP fit (most criteria met; one or two gaps)
     1: Outside ICP (significant mismatch on key criteria)
     
  2. Pain / urgency:
     5: Strong pain signal ("We're being killed by rising healthcare costs" / "Our CPM is too high")
     3: Moderate interest ("We're evaluating options")
     1: Curious / browsing ("Just wanted to learn more")
     
  3. Decision-maker status:
     5: The inbound lead is the decision-maker (HR Director; CFO; Media Buyer)
     3: An influencer or champion (will facilitate access to the decision-maker)
     1: Unknown / gatekeeper / unlikely to have influence
     
  4. Budget signal:
     5: Budget is confirmed or clearly available ("We're budgeting for this next year")
     3: Budget is implied ("We're evaluating providers")
     1: No budget signal; "just looking"
     
  5. Timeline:
     5: Near-term decision (contract renewal in 60 days; campaign launching next quarter)
     3: Medium-term (6-12 months)
     1: No timeline ("someday")
     
  ROUTING BY SCORE:
    20-25 points: Priority lead — rep calls within 30 minutes; CEO is notified; no delays
    12-19 points: Standard lead — rep responds within 1 hour; enters standard sales sequence
    6-11 points: Nurture lead — automated email sequence; rep checks in monthly
    1-5 points: Disqualify or archive — not a realistic near-term opportunity; respond politely;
      send to nurture if there's any future potential; do not invest primary sales time

ENTITY-SPECIFIC INBOUND TRIGGERS:

  ALLEVIO — Employer Group Inbound Signals:
    High-priority signal: "Our renewal is coming up and our carrier is raising rates"
    High-priority signal: "Our CFO asked me to explore alternatives"
    High-priority signal: "A colleague at [Company] recommended you"
    Medium signal: "We've heard about MSO models and want to learn more"
    Low signal: "What is an MSO?" (educational; far from a buying decision)
    
    Key disqualifiers in the inbound:
      <25 employees → Nurture (below ICP minimum)
      Multi-state workforce mentioned → Flag; limited Allevio ICP fit
      "Just trying to understand the industry" → Educational interest; low commercial value
      
  COLUMN6 — Agency/Brand Inbound Signals:
    High-priority signal: "We're planning a CTV campaign for [Quarter] and need inventory"
    High-priority signal: "Our DSP told us to contact Column6 directly"
    Medium signal: "We're exploring CTV options for [Client]"
    Low signal: "Can you tell me more about what you do?"
    
    Key qualifier: Campaign budget — ask in the first response
      If <$25K campaign budget: Nurture (below Column6's operational threshold)

INBOUND LEAD LOG:
  Every inbound lead logged in CRM within 15 minutes of receipt:
    Lead name; company; source (website form; referral; LinkedIn; trade show)
    Inquiry content (what did they ask about?)
    Lead score (1-25 based on the scoring above)
    Routing decision (Priority / Standard / Nurture / Disqualify)
    First response sent (time; by whom)
    Next action (scheduled call; sequence enrolled; follow-up date)
```

## Output Format

```markdown
# Inbound Lead Qualification — [Lead Name] | [Entity]
**Lead received:** [Date/Time] | **Source:** [Website / Referral / LinkedIn]
**Response sent:** [Date/Time] | **Response time:** [X minutes] | **By:** [Rep name]

---

## Lead Score

| Dimension | Score (1-5) | Notes |
|-----------|------------|-------|
| Company fit (ICP match) | [X] | [150 employees; Scottsdale; construction] |
| Pain / urgency | [X] | ["Carrier raising rates 12% at renewal"] |
| Decision-maker status | [X] | [HR Director — confirmed decision-maker] |
| Budget signal | [X] | ["We're budgeting for this change"] |
| Timeline | [X] | ["Renewal is November 1 — 60 days"] |
| **Total score** | **[X]/25** | |

---

## Routing Decision

**Score:** [X]/25 | **Routing:** Priority / Standard / Nurture / Disqualify
**Reason:** [High ICP match; strong pain signal; renewal in 60 days]

---

## Next Action

**Action:** [Schedule discovery call] | **By:** [Rep name] | **By:** [Date]
**CRM stage:** [Qualified Lead] | **Outreach sent:** [Yes — call + email]
```

## Output Contract
- Speed of response is the single highest-leverage inbound action — everything else in the inbound process matters, but response time matters most; a perfect qualification score on a lead that receives a response in 3 days is worth less than a partial ICP fit that gets a call in 15 minutes; Dr. Lewis enforces the 1-hour response standard and measures it monthly in the sales KPI dashboard
- Respond with specificity, not templates — a generic "thank you for your interest" auto-response is not a qualification; it is a delay; the first human response must reference something specific about the lead's inquiry and offer a specific next step; Dr. Lewis writes entity-specific first-response templates that are personalized with the one specific thing the prospect said
- Every lead gets a clear routing decision — a lead that is not clearly routed (priority; standard; nurture; disqualify) will fall through the cracks; Dr. Lewis requires that every inbound lead receive a routing decision within 1 hour of receipt; a lead without a routing decision is not in the sales process, it is sitting in someone's email inbox
- HITL required: Rep scores and routes all inbound leads; CEO is notified of all Priority leads within 30 minutes; Dr. Lewis reviews the inbound lead log monthly (response times; routing decisions; conversion rates by source); Matt Mathison is briefed on large inbound opportunities (>$100K ACV inbound); Dr. Lewis does not make routing decisions on individual leads without rep input; the rep is closest to the lead and has the most context; Dr. Lewis reviews the aggregate pattern

## System Dependencies
- **Reads from:** Website forms (GoHighLevel CRM — automatic inbound lead capture); email (Outlook — manual inbound inquiries); CRM lead score history (GoHighLevel — has this person or company been in CRM before?); ICP (sales-ideal-customer-profile — scoring criteria); sales-competitive-intel (if the prospect mentions a competitor in the inquiry, prepare before calling); member count or budget signal from the inquiry
- **Writes to:** CRM lead record (GoHighLevel — score; routing; first response time; next action); sales-pipeline-manager (Priority leads enter the active pipeline immediately); inbound lead log (SharePoint/Sales/<Company>/Inbound/[YYYY-MM]_InboundLog.xlsx); sales-kpi-dashboard (inbound lead count; response time; conversion by source); CEO Priority lead notification
- **HITL Required:** Rep responds to and scores all inbound leads; CEO notified of Priority leads; Dr. Lewis reviews the monthly log; Matt Mathison notified of large inbound opportunities; Dr. Lewis does not respond to inbound leads on behalf of reps; the rep is the point of contact; Dr. Lewis does not make routing decisions retroactively after a rep has already engaged; routing decisions must happen within 1 hour of receipt

## Test Cases
1. **Golden path:** Allevio inbound form submission from HR Director at a 175-employee Scottsdale engineering firm: "Our benefits carrier is raising our rates 15% at renewal in October. I heard about Allevio from another HR director and want to understand if you could be a better fit." → Scoring: ICP fit: 5 (175 employees; Scottsdale; renewal in 60 days); Pain: 5 (carrier rate increase; specific urgency); Decision-maker: 5 (HR Director); Budget: 4 (implied — they're shopping at renewal); Timeline: 5 (October renewal = 60 days); Total: 24/25 — Priority lead; Rep calls within 15 minutes of receipt: "Jennifer, this is [Rep] from Allevio. I saw your form submission about your October renewal — I'm glad [name] mentioned us. I have a 15-minute call available today at 2pm or tomorrow at 9am to show you what we've done for similar companies facing the same renewal situation. Which works better?" Call scheduled; discovery call completed; proposal submitted; deal closed
2. **Edge case:** An inbound lead comes in from a 12-employee law firm asking about Allevio (below the 25-employee ICP minimum) → Scoring: ICP fit: 1 (below minimum size); Pain: 3 (rate increase); Decision-maker: 5 (managing partner); Budget: 3; Timeline: 3; Total: 15/25 — would normally be Standard, but ICP fit score of 1 triggers a disqualification override; Response: "Thank you for reaching out. Allevio works best for companies with 25+ employees — at 12 employees, our model may not be the most cost-effective fit for your firm right now. As you grow, we'd love to reconnect. In the meantime, here are two brokers who specialize in small law firm benefits in Arizona..." Prospect thanked; referred to alternative; added to nurture list for 2-year re-engagement when the firm grows
3. **Adversarial:** A Priority lead (score 24/25) comes in on a Friday at 4:45pm — the rep doesn't see it until Monday morning, 64 hours later → Dr. Lewis in the Monday pipeline review: "This Priority lead sat for 64 hours. The prospect submitted on Friday afternoon and didn't get a response until Monday. The research shows lead conversion drops by 90%+ after 24 hours. What happened? Two fixes: (1) GoHighLevel auto-response configuration — all inbound form submissions should trigger an immediate auto-email from the rep ('Hi Jennifer, I'm [Rep] at Allevio — I received your inquiry and will call you first thing Monday morning by 9am'); (2) After-hours escalation — Priority lead alerts should go to the CEO's phone when the rep is unavailable. This lead may still be warm but we've lost the speed advantage. The CEO should call personally today." After-hours alert protocol implemented; auto-response configured; Monday call made

## Audit Log
All inbound leads retained in CRM. Lead score records retained. Response time records retained (used for KPI reporting). Routing decisions retained. Disqualification decisions retained with rationale. Monthly inbound lead log retained. Large-opportunity CEO and Matt Mathison notifications retained.

## Deprecation
Retire when each portfolio company has a dedicated SDR who owns inbound lead qualification — with Dr. Lewis reviewing the monthly inbound conversion metrics and Matt Mathison informed of large inbound opportunities.
