---
name: mktg-lead-nurture-designer
description: "Design lead nurture sequences and marketing automation for MBL Partners portfolio entities. Use when the user says 'lead nurture', 'nurture sequence', 'drip sequence', 'email automation', 'marketing automation', 'automated follow-up', 'follow-up sequence', 'prospect sequence', 'lead flow', 'automate the follow-up', 'GoHighLevel automation', 'GHL workflow', 'GHL sequence', 'pipeline automation', 'automated outreach', 'automation workflow', 'trigger-based email', 'behavior-triggered email', 'if-then email', 'lead warming', 'warm up leads', 'cold to warm', 'lead scoring automation', 'lead scoring rules', 'what happens after someone fills out the form', 'what happens after someone downloads', 'what do we send next', 'how do we follow up automatically', or 'how do we automate our follow-up'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--trigger <form-submit|download|webinar|event|demo-request>] [--audience <employer|agency|landowner>] [--action <design|build|audit|optimize>]"
---

# Marketing Lead Nurture Designer

Design and build lead nurture sequences and marketing automation for MBL Partners portfolio entities in GoHighLevel — creating systematic follow-up programs that move prospects from first engagement to sales-qualified conversation. Well-designed nurture sequences prevent leads from going cold between first touch and sales contact, especially for B2B entities where buying cycles are 30-90 days.

## When to Use
- Building a new nurture sequence after a lead generation event (form; download; event)
- Auditing existing GoHighLevel automation for broken flows or poor conversion
- Designing trigger-based follow-up for specific prospect behaviors
- Setting up lead scoring rules to route hot leads to sales faster

## Nurture Sequence Design Framework

```
NURTURE SEQUENCE STRUCTURE:

  TRIGGER → SEQUENCE → EXIT CONDITION:
    Trigger: specific action (form submit; content download; webinar attendance; paid ad lead gen form)
    Sequence: timed emails with escalating value and a single CTA progression
    Exit condition: scheduled demo (→ out of nurture; into sales); unsubscribe; 30-day no-engagement (→ suppression)

  ALLEVIO EMPLOYER SEQUENCES:

    Sequence 1 — Demo Request (trigger: demo request form submitted):
      Email 1 (immediate): "Got it — here's what to expect from your Allevio demo [prep guide]"
      Email 2 (1 hour before demo): "Reminder: your Allevio demo is [time]. Here are the 3 questions most HR leaders ask."
      Email 3 (1 day after demo): "Thanks for your time — here's the proposal next step"
      Exit: demo completed + proposal sent
      
    Sequence 2 — Content Download (trigger: "claim ratio calculator" tool used or guide downloaded):
      Email 1 (immediate): "Here's your [guide/calculator result] — and what it means for your plan"
      Email 2 (day 3): "The claim ratio calculation most employers miss [educational]"
      Email 3 (day 7): "What Allevio employers see in year one [aggregate case study; no PHI]"
      Email 4 (day 14): "How care coordination compares to what you have now"
      Email 5 (day 21): "Three questions to ask before your next broker meeting"
      Email 6 (day 30): "Ready to see if Allevio fits your plan design? [demo request CTA]"
      Exit: demo request made (→ Sequence 1) OR 30 days without click (→ suppression list + re-engagement check in 90 days)
      HIPAA: all email content reviewed by Dr. Lewis before sequence is activated; no PHI in any email
      
    Sequence 3 — Event / Webinar Attendee:
      Email 1 (day after event): "Thanks for joining [event] — here's the resource I mentioned"
      Email 2 (day 5): "Follow-up: [key insight from event relevant to Allevio employer benefits]"
      Email 3 (day 10): "One more resource before I stop following up: [tool or guide]"
      Email 4 (day 15): "Happy to chat if this is relevant — [meeting request link]"
      Exit: meeting booked OR day 15 no-response (→ nurture pool; lower-frequency contact)

  COLUMN6 AGENCY SEQUENCES:

    Sequence 1 — Trade Show / Event Lead (trigger: lead scanned at IAB or conference):
      Email 1 (same day): "Good to meet at [event] — here's Column6 in 3 data points [infographic]"
      Email 2 (day 3): "Current quarter CTV VCR benchmarks — what agencies are seeing"
      Email 3 (day 7): "Agency test campaign: how it works [no commitment; data returned in 2 weeks]"
      Email 4 (day 14): "[Name], have 20 minutes this week?"
      Exit: meeting booked OR no-response after day 14 (→ monthly agency newsletter)
      
    Sequence 2 — Inbound / Website Contact:
      Email 1 (immediate): "Got your note — I'll reply shortly. In the meantime, here are Column6's three differentiators [one-pager]"
      Email 2 (day 2): "The CTV measurement question most agencies aren't asking [thought leadership link]"
      Email 3 (day 7): "Test campaign offer — see Column6 perform on your inventory"
      Exit: call scheduled OR 7 days no-response → Column6 commercial team manual follow-up

LEAD SCORING RULES (GoHighLevel):
  
  ALLEVIO:
    +10: form submit (demo request or content download)
    +5: email opened (each unique open)
    +10: email clicked (each unique click)
    +15: returned to website after initial visit
    +20: visited "employer pricing" or "how it works" page
    -5: unsubscribed (auto-remove from scoring)
    MQL threshold: 35 points → automatic notification to sales (GoHighLevel task created)
    
  COLUMN6:
    +15: trade show lead captured
    +10: website form contact
    +5: email opened; +10: clicked
    +20: programmatic content page visited (VCR/IVT pages)
    MQL threshold: 40 points → automatic notification to Column6 commercial team

GOhighlevel AUTOMATION SETUP:
  Workflow naming convention: [Entity]-[Trigger]-[Sequence Name] (e.g., Allevio-DemoRequest-PreDemoPrep)
  Test every workflow with a test contact before activating for live leads
  Monitor for broken triggers quarterly (form field changes can break triggers)
  HIPAA (Allevio): GoHighLevel BAA must be confirmed before ANY automation that handles employer or member contacts
```

## Output Format

```markdown
# Nurture Sequence Design — [Entity] — [Sequence Name]
**Trigger:** [What activates this sequence]
**Audience:** [Who enters this sequence]
**GoHighLevel workflow:** [Workflow name]

---

## Sequence Map

| Step | Timing | Subject | Primary CTA | Exit trigger |
|------|--------|---------|------------|-------------|
| Email 1 | Immediate | [Subject] | [CTA] | |
| Email 2 | Day [X] | | | |
| [etc.] | | | | |
| Exit | [Day X] or [action] | | | Sequence complete |

---

## Lead Scoring Rules (GoHighLevel)

| Action | Points | Notes |
|--------|--------|-------|
| [Trigger] | +[X] | |

---

## HIPAA Review (Allevio only)
- [ ] GoHighLevel BAA confirmed in place
- [ ] All email content reviewed by Dr. Lewis before activation
- [ ] No PHI in any automation email body or subject line
- [ ] Employer-only sequences confirmed (not member-facing)

---

## Activation Checklist
- [ ] Test contact created and sequence run end-to-end
- [ ] All exit conditions tested
- [ ] Sales team notified of MQL threshold and notification format
- [ ] Entity CEO notified of sequence activation
```

## Output Contract
- Every sequence is tested end-to-end before activation — a GoHighLevel automation that has not been run with a test contact is an unknown; Dr. Lewis requires every new sequence to be tested with a dummy contact before any live leads enter it; the test verifies: trigger fires correctly; all emails send; timing is correct; exit conditions work; MQL scoring triggers correctly; an automated sequence with a bug sends the wrong emails to real leads, which creates relationship damage and compliance risk for Allevio
- HIPAA gate: no Allevio automation activates without GoHighLevel BAA confirmed — email automation for Allevio that passes through GoHighLevel's servers technically constitutes processing of health-related business contacts; before any Allevio email automation is built in GoHighLevel, Dr. Lewis confirms the Business Associate Agreement is in place; if the BAA is not in place, Allevio automation is held until it is signed; this is not a judgment call; it is a compliance requirement
- Lead scoring is a contract between marketing and sales — the MQL threshold exists because marketing and sales agreed that a contact who reaches that point is worth a sales conversation; if sales consistently rejects MQL-threshold leads as unqualified, the threshold is wrong; Dr. Lewis reviews the MQL threshold quarterly with the entity's marketing lead and sales lead; an MQL definition that marketing built without sales input is a definition that will generate friction; both teams own the definition
- HITL required: new nurture sequence → entity CEO aware before activation; Allevio sequences → Dr. Lewis reviews all email content + confirms GoHighLevel BAA before activation; MQL threshold → marketing lead + sales lead agree; GoHighLevel automation changes → Dr. Lewis notified; lead scoring changes → entity CEO aware; Column6 sequence with client campaign references → client permission required

## System Dependencies
- **Reads from:** mktg-email-marketer (email drafts — nurture emails built per email marketer standards); mktg-demand-generation-manager (MQL definition — scoring threshold aligned to demand gen funnel); mktg-crm-marketing-manager (GoHighLevel contact management — segmentation and pipeline stages); mktg-messaging-matrix (nurture email content carries L2/L3 messages)
- **Writes to:** GoHighLevel (workflows; automation sequences; lead scoring rules; MQL notifications); nurture sequence documentation (SharePoint → Marketing → Automation → [Entity]); HIPAA review records (Allevio); test contact records; sequence performance log
- **HITL Required:** New sequences → entity CEO aware; Allevio sequences → Dr. Lewis reviews content + BAA confirmed; MQL threshold → marketing + sales agree; GoHighLevel changes → Dr. Lewis notified; Column6 client data → client permission

## Test Cases
1. **Golden path:** Allevio Sequence 2 (Content Download) activation. GoHighLevel BAA confirmed (on file). Dr. Lewis reviews all 6 email drafts — Email 3 ("What Allevio employers see in year one") uses aggregate employer cohort data; no PHI; approved. Test run with dummy contact: all 6 emails fire at correct intervals; exit triggers work (demo request removes from sequence; 30-day no-click sends to suppression). Entity CEO notified. Sequence activated. Month 1: 23 contacts entered; 4 demo requests (Email 5 top performer); 1 proposal issued.
2. **Edge case:** A contact enters both Sequence 1 (demo request) and Sequence 2 (content download) simultaneously → Design flaw. GoHighLevel workflow: if contact enters Sequence 1 (demo request), auto-suppress from Sequence 2; demo request is highest intent signal and the nurture content sequence is no longer appropriate. Workflow logic: "If contact tagged 'Demo Requested' → remove from all nurture sequences; add to pre-demo and post-demo sequences only." Fix the workflow before activation.
3. **Adversarial:** Column6 CEO wants to add an advertiser's campaign results to a nurture email without checking if the advertiser consented → Dr. Lewis: "Stop the sequence activation. Advertiser campaign data in an outbound email to other agencies is a client confidentiality issue — regardless of how good the data looks. I need to: (1) check if we have explicit written permission from this advertiser to use their data in marketing materials; (2) if yes, the specific data can be referenced with their name; (3) if no, we use anonymized aggregate benchmarks. The sequence stays paused until I have a clear answer."

## Audit Log
Nurture sequence versions retained (GoHighLevel workflow exports). GoHighLevel BAA confirmation records retained (Allevio). Dr. Lewis email content review records retained (Allevio). Test contact records retained. Sequence performance logs retained monthly. MQL threshold change records retained.

## Deprecation
Nurture sequences reviewed every 6 months. Exit conditions reviewed when sales process changes. GoHighLevel workflows updated when platform changes break triggers. HIPAA compliance review updated when regulations change. Sequences deprecated when entity product or ICP changes.
