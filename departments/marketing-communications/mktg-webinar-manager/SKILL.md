---
name: mktg-webinar-manager
description: "Plan and manage webinars for MBL Partners portfolio entities. Use when the user says 'webinar', 'virtual event', 'online event', 'virtual seminar', 'online seminar', 'webcast', 'virtual presentation', 'hosted webinar', 'sponsor a webinar', 'present a webinar', 'run a webinar', 'webinar strategy', 'webinar calendar', 'webinar planning', 'webinar production', 'webinar platform', 'Zoom webinar', 'Teams live event', 'webinar registration', 'webinar leads', 'webinar attendees', 'webinar follow-up', 'webinar recording', 'webinar replay', 'on-demand webinar', 'employer webinar', 'HR webinar', 'agency webinar', 'programmatic webinar', 'care coordination webinar', 'benefits webinar', or 'virtual lunch and learn'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|mbl>] [--type <hosted|co-hosted|sponsored|on-demand>] [--audience <employers|agencies|landowners|lps>] [--action <plan|produce|report>]"
---

# Marketing Webinar Manager

Plan and produce webinars for MBL Partners portfolio entities — creating virtual events that build credibility, generate qualified pipeline, and produce on-demand content that works long after the live date. For Allevio, webinars educate employer HR teams on care coordination in a scalable format; for Column6, they demonstrate programmatic expertise to agency buyers. A well-produced 45-minute webinar becomes a 12-month content asset.

## When to Use
- Planning a quarterly webinar for employer or agency audiences
- Producing content that needs to be delivered live and then repurposed as on-demand
- Generating pipeline from a concentrated virtual event rather than a sustained content program
- Building webinar infrastructure (registration; platform; follow-up) for the first time

## Webinar Management Framework

```
WEBINAR TYPES BY ENTITY:

  ALLEVIO:
    Employer Education Webinars (quarterly):
      Topic examples: "How to reduce your claim ratio in 90 days"; "Open enrollment communication that actually works"; "What care coordination is (and what it's not)"
      Audience: employer HR Directors; Benefits VPs; CFOs; broker intermediaries
      Format: 45 minutes (30 content + 15 Q&A)
      Goal: generate demo requests from attendees; deepen existing employer relationships
      HIPAA: presenter materials reviewed by Dr. Lewis before any live session; no PHI in any slide, demo, or Q&A; Dr. Lewis attends all Allevio webinars (live) for HIPAA monitoring
      Registration: GoHighLevel form → enters attendees into CRM; post-webinar nurture sequence activated
      
    Broker Education Webinars (semi-annual):
      Audience: benefits brokers (referral partners for Allevio)
      Topic: how to position care coordination to employer clients; Allevio capabilities overview
      Goal: broker referral activation

  COLUMN6:
    Agency Programmatic Webinars (quarterly):
      Topic examples: "CTV measurement in 2026: what agencies need to know"; "VCR and IVT: the metrics that matter for brand safety"; "Multi-surface programmatic: CTV + mobile + gaming strategy"
      Audience: agency media planners; programmatic directors; buyers
      Format: 45 minutes (30 data/insight content + 15 Q&A)
      Goal: new agency relationships; test campaign conversation
      Co-host option: Column6 co-hosts with IAB or industry partner for larger reach
      Advertiser data: never in webinar slides without explicit advertiser permission
      
  MBL PARTNERS:
    Occasional portfolio value creation webinars for LP/co-investor audience
    Matt Mathison presents; Dr. Lewis produces and reviews content
    Approval: Matt Mathison reviews all content before any LP-facing webinar

WEBINAR PRODUCTION CHECKLIST:

  8 weeks out:
    - Topic confirmed; speaker(s) briefed
    - Date/time selected (B2B: Tuesday-Thursday; 10-11 AM local audience time zone)
    - Registration page created in GoHighLevel (or dedicated landing page)
    - Promotion plan built (email; LinkedIn; partner outreach)
    
  4 weeks out:
    - Slide deck draft complete
    - HIPAA review (Allevio): Dr. Lewis reviews deck — must complete before promotion launch
    - Registration promotion live (email + LinkedIn)
    - Entity CEO approves webinar topic and key messages
    
  1 week out:
    - Final slide deck locked (no changes after this without Dr. Lewis HIPAA re-review for Allevio)
    - Tech rehearsal (platform; audio; video; slides; Q&A moderation setup)
    - Reminder email to registered attendees
    
  Day of:
    - Green room check 30 minutes before: speaker audio/video; slide control; recording enabled
    - Start on time (latecomers can join; don't delay start)
    - Moderator manages Q&A; Dr. Lewis or marketing lead moderates for Allevio (HIPAA monitoring)
    
  Within 24 hours after:
    - Post-webinar email to all registrants (attended + did not attend)
      Attended: "Thanks for joining — here's the recording + key takeaways + next step"
      Registered but didn't attend: "We missed you — here's the recording"
    - All attendees entered into GoHighLevel with "webinar-attended" or "webinar-registered-no-show" tag
    - Post-webinar nurture sequence activated (mktg-lead-nurture-designer)
    - Recording published (unlisted on YouTube or branded on website) within 48 hours
    
  4 weeks after:
    - ROI report: registrations; attendees; recording views; demo requests generated
    - Go/no-go for next webinar of same type

WEBINAR PLATFORM OPTIONS:
  Zoom Webinar (recommended for Allevio — HIPAA-compliant plan available from Zoom)
  Microsoft Teams Live Events (available via MBL Microsoft tenant)
  HIPAA-compliant platform requirement: Allevio webinars must use a platform with BAA available; confirm before using any platform for Allevio employer webinars that include any discussion of care outcomes
```

## Output Format

```markdown
# Webinar Plan — [Entity] — [Topic] — [Date]
**Type:** [Employer education / Agency / LP]
**Format:** [Hosted / Co-hosted]
**Goal:** [Demo requests / Relationships / Pipeline]

---

## Production Timeline

| Milestone | Date | Owner | Status |
|----------|------|-------|--------|
| Topic + speaker confirmed | | | |
| Registration page live | | | |
| HIPAA review (Allevio) | Dr. Lewis | | |
| Promotion live (email + social) | | | |
| Final slides locked | | | |
| Tech rehearsal | | | |
| Live date | | | |
| Post-webinar emails sent | | | |
| Recording published | | | |
| ROI report | | | |

---

## Registration and Attendance

| Metric | Value | Benchmark |
|--------|-------|-----------|
| Registrations | | >50 for employer webinar |
| Attended live | | >40% of registrants |
| Recording views (30 days) | | |
| Demo requests from attendees | | |
| Cost per lead (if promoted) | | |

---

## HIPAA Compliance (Allevio only)
- [ ] Platform BAA confirmed
- [ ] Slides reviewed by Dr. Lewis (date: __)
- [ ] No PHI in slides, demos, or Q&A
- [ ] Dr. Lewis or marketing lead attending live to monitor Q&A
```

## Output Contract
- HIPAA monitoring during live Allevio webinars is a hard requirement — a webinar is not a static piece of content that can be reviewed before publication; it is live, and a speaker or audience member can introduce PHI at any moment during Q&A; Dr. Lewis attends all live Allevio webinars and monitors the Q&A feed; if a moderator receives a question that would require a PHI response ("can you share examples of specific member cases?"), the moderator deflects to aggregate data; Dr. Lewis is the deflection signal if needed; no live Allevio webinar runs without Dr. Lewis or a designated HIPAA-trained moderator present
- The recording is produced within 48 hours, not when it's convenient — a webinar that is not promptly turned into on-demand content wastes 80% of its potential value; attendees who miss it want the recording; prospects who were never going to attend discover it organically; Dr. Lewis requires every entity webinar to have a recording published (unlisted YouTube or branded page) within 48 hours of the live date; the post-webinar email to all registrants includes the recording link; recording edits (removing filler; adding intro/outro) are done within 24 hours or published raw with an edit-to-come note
- Webinar registration data is marketing gold — every person who registers for a webinar has demonstrated intent in the topic; Dr. Lewis ensures all registrant data (not just attendee data) enters GoHighLevel within 24 hours of the live date; "registered but didn't attend" is still a warm lead who expressed interest; they get a different post-webinar email (with the recording) than attendees; registrants enter the standard nurture sequence; for Allevio, registration data is employer HR contacts — no PHI; their registration is a professional expression of interest, not health information
- HITL required: webinar topic + key messages → entity CEO approves; Allevio slides → Dr. Lewis HIPAA review (4 weeks out); platform BAA confirmation (Allevio) → Dr. Lewis; live HIPAA monitoring (Allevio) → Dr. Lewis or HIPAA-trained moderator; post-webinar email → entity CEO spot-reviews before send; LP-facing content (MBL) → Matt Mathison reviews before live

## System Dependencies
- **Reads from:** mktg-messaging-matrix (webinar content carries L2/L3 messages); mktg-content-strategist (webinar aligned to content pillars); mktg-lead-nurture-designer (post-webinar nurture sequence); mktg-crm-marketing-manager (GoHighLevel for registration and attendee tagging); mktg-email-marketer (pre- and post-webinar emails)
- **Writes to:** GoHighLevel (registrant and attendee contacts; webinar-attended/registered tags; post-webinar nurture activation); webinar recording (YouTube or entity website); webinar plan (SharePoint → Marketing → Webinars → [Entity]); ROI report; HIPAA compliance records (Allevio)
- **HITL Required:** Topic + key messages → entity CEO; Allevio slides → Dr. Lewis HIPAA (4 weeks out); platform BAA (Allevio) → Dr. Lewis; live HIPAA monitor (Allevio) → Dr. Lewis or designee; post-webinar email → entity CEO spot-review; MBL LP content → Matt Mathison

## Test Cases
1. **Golden path:** Allevio employer webinar "How to reduce your claim ratio in 90 days." Platform: Zoom Webinar (BAA confirmed). Dr. Lewis reviews slides 4 weeks before live (approved — all data is aggregate employer cohort; no PHI). Promotion: 2 emails to employer contact list + 3 LinkedIn posts. Result: 62 registrations; 27 live attendees (44% rate). Q&A: 1 question from attendee asking for a specific employer case study — moderator redirects: "We're happy to discuss aggregate outcomes; our sales team can share a relevant reference if you'd like to connect post-webinar." Post-webinar email same day. Recording published 36 hours after. 4 demo requests within 2 weeks of webinar.
2. **Edge case:** Column6 CEO wants to use a specific client's campaign data in a webinar without the client's permission → Dr. Lewis: "That's a contract issue. I need to confirm the client has given written permission to use their campaign data in external presentations. If they have, we can proceed with attribution. If they haven't, I'll replace it with: (1) industry aggregate benchmarks from IAB or published research; (2) Column6's own self-serve CTV campaign data (we own that); or (3) a fully anonymized case study. The webinar is strong enough without a named client — the data and the methodology carry it."
3. **Adversarial:** Registrant attends Allevio webinar and asks a Q&A question that reveals their company is dealing with a specific named employee's health issue → Dr. Lewis (real-time): "Moderator: thank you for your question. We're not able to discuss individual employee situations in a group setting, but I'd be glad to connect you with our care coordinator team directly after this webinar — they can give you the right guidance privately. [Move on.] Post-webinar: Dr. Lewis documents the Q&A incident; does not retain the specific question or name in any webinar record; advises the moderator on handling similar questions in future webinars."

## Audit Log
Webinar plans retained with production timeline records. HIPAA slide review records (Allevio — all webinars). Platform BAA confirmation records (Allevio). Attendee lists retained in GoHighLevel (not standalone spreadsheets). Q&A incident records (Allevio). Post-webinar email records. ROI reports retained. Matt Mathison approval records (MBL LP webinars).

## Deprecation
Webinar strategy reviewed annually. HIPAA platform requirements updated when HIPAA regulations change or platform data processing changes. Webinar format reviewed when audience engagement patterns shift. Platform selection reviewed when MBL technology stack changes.
