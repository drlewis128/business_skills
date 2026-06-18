---
name: sales-outbound-sequencer
description: "Build outbound prospecting sequences and cadences for MBL portfolio companies. Use when the user says 'outbound', 'cold outreach', 'prospecting', 'outbound sequence', 'email sequence', 'cold email', 'outbound cadence', 'reach out', 'prospect list', 'outreach campaign', 'cold call script', 'outbound strategy', 'prospecting sequence', 'touch cadence', 'multi-touch outreach', 'outbound playbook', 'SDR playbook', 'first touch', 'follow-up sequence', 'outbound sales', 'email outreach', 'call cadence', or 'LinkedIn outreach'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--segment <employer-group|agency|landowner>] [--channel <email|phone|linkedin|multi>] [--action <build|refine|launch>]"
---

# Outbound Sequencer

Build outbound prospecting sequences and cadences for MBL portfolio companies — designing the multi-touch approach that moves a cold prospect to an engaged conversation. Most B2B sales require 8-12 touches before a response; a single cold email with no follow-up converts at <1%; a disciplined 6-touch sequence over 3 weeks converts 5-15× better. Dr. Lewis designs entity-specific sequences that are compliant, personalized, and calibrated to the buyer's purchase cycle.

## When to Use
- Launching an outbound prospecting campaign for a portfolio company
- A new sales rep needs a prospecting playbook
- Improving response rates on existing outreach
- Building a new channel sequence (cold call; LinkedIn; referral-based)

## Outbound Sequence Framework

```
OUTBOUND SEQUENCE PRINCIPLES:
  1. Value first, pitch second — every touch must offer value to the prospect; not just ask for a meeting
  2. Personalization matters — one-line personalization ("I saw [Company] recently expanded to...") 
     doubles response rates vs. generic templates
  3. Multi-channel is more effective than single-channel — email + phone + LinkedIn > any single channel
  4. Persistence is professional, not annoying — 8-12 touches before giving up is industry standard
  5. Be specific about what you want — "15-minute call this week to share X" outperforms "let's connect"

ENTITY-SPECIFIC SEQUENCES:

  ALLEVIO — Employer Group Outreach Sequence (HR Director / Benefits Administrator):
    Target persona: HR Director at a 50-250 employee Arizona company
    Trigger: Company added to the target list via chamber directory, broker referral, or LinkedIn
    
    Touch 1 (Day 1) — Email:
      Subject: "[Company] benefits costs — quick question"
      Body: 3 sentences: (1) One specific observation about the company (size; industry); 
            (2) The problem Allevio solves (healthcare costs for AZ employers); 
            (3) A specific ask: "15 minutes to share how we've reduced costs 12-18% for similar employers?"
      CTA: Reply to schedule OR click a calendar link
      
    Touch 2 (Day 3) — LinkedIn Connection Request:
      Message: "Hi [Name], I sent you an email earlier this week about healthcare cost reduction
        for [Company]. I work with several Arizona HR directors on similar challenges. Would love to
        connect." No pitch in the connection message.
        
    Touch 3 (Day 5) — Phone Call:
      Script: "Hi [Name], this is [Rep] from Allevio. I'm calling because I sent you an email
        about reducing healthcare costs for [Company]. We're an Arizona healthcare management
        organization that's reduced benefits costs 12-18% for employers like you. Is this something
        you're actively looking at?" If voicemail: Leave message; reference the email.
        
    Touch 4 (Day 8) — Email:
      Subject: "Allevio — [similar company] reduced healthcare costs by 15%"
      Body: One specific case study (anonymized) + data point relevant to the prospect's industry;
            "Would a 15-minute call be valuable?"
            
    Touch 5 (Day 12) — LinkedIn Message (after connection):
      Message: "Hi [Name], I've reached out by email and phone — I realize you're busy. 
        If reducing healthcare costs by 12-18% isn't a current priority, I completely understand.
        If it is, I'd love 15 minutes. Happy to share our employer group model with no sales pressure."
        
    Touch 6 (Day 18) — Final Email ("breakup"):
      Subject: "Closing the loop"
      Body: "I've reached out a few times without hearing back — I'll assume the timing isn't right.
        If [Company]'s healthcare costs ever become a priority, I'd love to connect. I'll leave
        you in our system and check back in 6 months. Best of luck."
      [This generates a surprising number of responses — prospects respect the closure]
      
    Result: If no response after Touch 6: Mark as "Nurture" in CRM; sequence again in 90 days
    
  COLUMN6 — Agency Media Buyer Outreach Sequence:
    Target persona: Media planner or buyer at an independent or holding company media agency
    
    Touch 1 (Day 1) — Email:
      Subject: "CTV inventory for [Agency client category] — quick note"
      Body: Reference a specific campaign category the agency works in (auto; CPG; retail);
            Column6's inventory is premium CTV at $18-45 CPM with audience targeting;
            "Would a 15-minute walkthrough of our CTV targeting capabilities be useful?"
            
    Touch 2 (Day 3) — Phone:
      "Hi [Name], this is [Rep] from Column6 / Siprocal. I'm reaching out about our CTV inventory —
        we work with agencies running [category] campaigns and have been seeing strong results.
        I sent you an email. Is CTV part of your current mix?"
        
    Touch 3 (Day 6) — Email with data:
      Share a one-page case study: Campaign category; targeting approach; CPM achieved; completion rate;
        "Here are the results we drove for a [similar agency] running [similar category]."
        
    Touch 4 (Day 10) — LinkedIn:
      Connect + short note: "Hi [Name], I've been reaching out about Column6's CTV inventory for
        [Agency] clients. I realize media planners get a lot of inbound. If CTV is part of your Q[X]
        planning, I'd love 15 minutes. Thanks either way."
        
    Touch 5 (Day 15) — Phone:
      Short check-in: "Following up on the email and case study I sent. Any interest in a quick CTV
        targeting demo? Our audience data is differentiated and I think it would be worth the 15 minutes."
        
    Touch 6 (Day 21) — Breakup email:
      Similar structure to Allevio breakup; set to re-sequence in 60 days for agency buyers
      (shorter cycle — agency relationships are more transactional and shorter-term)
      
COMPLIANCE NOTES:
  CAN-SPAM compliance (all email outreach):
    ✅ Include physical mailing address in email footer
    ✅ Clear and honest "From" name and subject line (no misleading subject lines)
    ✅ Opt-out link in every email; honor opt-outs within 10 business days
    ✅ Never sell or share the opt-out list
    
  TCPA compliance (phone outreach):
    Outbound calls to businesses: TCPA is primarily a concern for consumer calls
    B2B calling to business phone numbers: Lower TCPA risk; still follow best practices
    Do not auto-dial to cell phones without prior consent (TCPA applies)
    
  CCPA / state privacy (for Column6 — California agencies):
    The prospects are businesses (not consumers) — CCPA does not apply to B2B contact information
    However: Column6 must have its own privacy policy updated for the data it collects
    
SEQUENCE METRICS (track weekly):
  Open rate (email): >35% is good; <20% = subject line problem
  Reply rate (email): >3% is acceptable; >8% is strong for cold outreach
  Call connect rate: 5-15% of calls connected
  Sequence conversion: Prospect who enters sequence → meeting booked: 2-5% is solid B2B outbound
  Meeting to close rate: From booked meeting → closed deal (track by persona/segment)
```

## Output Format

```markdown
# Outbound Sequence — [Entity] | [Segment]
**Built by:** Dr. Lewis | **Date:** [Date] | **Channel:** [Email / Phone / LinkedIn / Multi]
**Target persona:** [Title + company type + context]

---

## Sequence Overview

| Touch | Day | Channel | Type | CTA |
|-------|-----|---------|------|-----|
| 1 | Day 1 | Email | Problem/value intro | 15-minute call |
| 2 | Day 3 | LinkedIn | Connection request | Connect |
| 3 | Day 5 | Phone | Follow-up call | "Are you open to 15 minutes?" |
| 4 | Day 8 | Email | Case study / proof | "Worth 15 minutes?" |
| 5 | Day 12 | LinkedIn | Low-pressure message | "Still relevant?" |
| 6 | Day 18 | Email | Breakup email | "Closing the loop" |

---

## Touch Templates

**Touch 1 — Email:**
Subject: [Subject line]
[Email body — 3 sentences max; specific; personalized placeholder marked [PERSONALIZE]]

**Touch 3 — Phone script:**
[Call script — 30 seconds; opening; value statement; ask]

---

## Metrics Targets

| Metric | Target | Action if below target |
|--------|--------|----------------------|
| Email open rate | >35% | Revise subject line |
| Email reply rate | >3% | Revise value proposition; increase personalization |
| Meeting book rate | >2% | Revise CTA; add social proof |
| Sequence completion | >85% | Enforce CRM workflow; don't let deals fall out of sequence |
```

## Output Contract
- The breakup email is not optional — the final "closing the loop" email consistently generates 20-30% of responses from a sequence; prospects who were genuinely busy (not uninterested) often respond to the breakup because they feel the pressure is off; removing the breakup email from the sequence reduces total response rate; Dr. Lewis includes it in every outbound sequence and trains sales reps to send it without apology
- Personalization is a line, not a paragraph — one specific, researched observation about the prospect ("I saw [Company] recently hired a new VP of Benefits" or "I noticed [Agency] is running heavy CTV for [Category] clients this quarter") is enough; a multi-paragraph "I researched your company extensively" opener is not personalization, it is noise; Dr. Lewis writes sequences with a single specific personalization placeholder that the rep fills in before sending — this forces research without becoming performative
- CAN-SPAM compliance is non-negotiable for Column6 — Column6's core business is advertising; it must model compliant email practices in its own outbound; a Column6 sales email that violates CAN-SPAM is particularly damaging given the FTC's attention to Column6's advertising compliance posture; Dr. Lewis confirms every sequence template is CAN-SPAM compliant before activation
- HITL required: Dr. Lewis builds the sequence framework and templates; sales reps personalize and execute individual touches; CEO reviews and approves the sequence before it is activated with real prospects; Dr. Lewis does not contact prospects directly (the sequence is executed by the sales rep or through GoHighLevel/CRM automation); metrics are reviewed monthly; sequence is revised if below-target metrics persist for 4+ weeks

## System Dependencies
- **Reads from:** ICP (sales-ideal-customer-profile — who we're targeting and why); CRM (GoHighLevel — for sequencing automation; contact management; opt-out tracking); competitive intel (sales-competitive-intel — what differentiators to emphasize); win/loss patterns (sales-win-loss-analyzer — what messaging resonates with buyers who became customers); prior sequence performance data (CRM reports — open rate; reply rate by template)
- **Writes to:** Sequence templates (SharePoint/Sales/<Company>/Outbound/Sequences/[Segment]_Sequence_v[X].docx); GoHighLevel/CRM automation workflows; call scripts (sales-call-script); metrics dashboard updates (sequence performance by segment); opt-out records (CAN-SPAM compliance)
- **HITL Required:** Dr. Lewis builds; CEO approves; sales reps personalize and execute; Dr. Lewis reviews metrics monthly; CEO makes the decision to revise or retire a sequence; Dr. Lewis does not execute outbound on behalf of the sales team; opt-outs are honored immediately upon receipt (CRM processes; not manual); sequences involving TCPA-sensitive scenarios (cell phone auto-dial) require CEO + legal approval before activation

## Test Cases
1. **Golden path:** Building the initial Allevio outbound sequence for HR Directors at Arizona companies with 50-250 employees → Dr. Lewis builds the 6-touch sequence; CEO reviews all templates; two revisions: (1) Touch 4 case study — CEO wants to use the anonymized "85-employee engineering firm" case study instead of the generic healthcare story; (2) Touch 6 breakup email subject line — CEO prefers "Following up" to "Closing the loop" (A/B test it); sequence finalized; activated in GoHighLevel for 45 contacts; Week 1 results: open rate 38% (✅ above target); reply rate 5% (✅ above target); 2 meetings booked (4.4% sequence conversion — strong for cold outbound); sequence maintained as primary outbound approach
2. **Edge case:** A prospect responds to Touch 4 (the case study email) saying "We're under contract with a competitor for another 18 months but keep in touch" → Dr. Lewis advises: "Great news — this is a warm future prospect, not a lost deal. Action: (1) Stop the current sequence (do not send Touch 5 or 6 — they've responded); (2) Mark in CRM as 'Nurture — competitor contract expires [Month, Year]'; (3) Set a 12-month re-engagement reminder; (4) Add to a low-touch quarterly newsletter (if the prospect consented — ask: 'May I add you to our quarterly email?'); (5) 12 months before their contract renewal, re-enter them in the full outbound sequence with personalized renewal messaging." Future prospect managed; relationship preserved; re-engaged at the right time
3. **Adversarial:** Column6's CEO wants to purchase a list of 5,000 email addresses from a data broker and blast them with a cold email sequence — no prior relationship, no personalization, no prior consent → Dr. Lewis: "Purchased email lists create CAN-SPAM and deliverability problems. CAN-SPAM allows B2B cold emailing but the list must meet basic criteria: the emails can't be harvested deceptively; the sender must honor opt-outs. More importantly: purchased lists have notoriously poor data quality (high bounce rates damage sender reputation; high spam complaint rates get Column6's domain blacklisted). Blacklisting Column6's email domain would prevent us from sending any email — including to existing agency clients. The better approach: a 500-contact, ICP-targeted list built from LinkedIn + IAB member directories + trade show attendee lists, with personalization. 500 quality contacts with personalization >> 5,000 low-quality purchased contacts." CEO accepts; targeted list built; sequence launched with quality data

## Audit Log
All sequence versions retained by entity and segment. Opt-out records retained permanently (CAN-SPAM requires). CRM sequence activation and deactivation records retained. Monthly metrics reports retained by sequence and period. CEO approval records retained. Any CAN-SPAM complaints or opt-out requests retained permanently.

## Deprecation
Retire when each portfolio company has a dedicated SDR or BDR who maintains and optimizes outbound sequences — with Dr. Lewis reviewing sequence compliance and CEO approving new sequence launches.
