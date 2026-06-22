---
name: mktg-allevio-member-communicator
description: "Manage member-facing communications for Allevio healthcare MSO. Use when the user says 'Allevio member communication', 'communicate with members', 'member outreach', 'member engagement', 'member onboarding communication', 'member newsletter', 'member email', 'member portal', 'member welcome', 'member education', 'explain benefits to employees', 'employee communication about benefits', 'open enrollment communication', 'employee benefits communication', 'member satisfaction', 'member engagement rate', 'member utilization', 'care coordinator introduction', 'member HIPAA', 'member communication compliance', 'healthcare communication compliance', 'health literacy', 'plain language healthcare', 'communicate care coordination to employees', or 'how do we talk to Allevio members'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--type <onboarding|newsletter|open-enrollment|care-reminder|satisfaction>] [--channel <email|print|portal|sms>] [--action <draft|review|audit|plan>]"
---

# Allevio Member Communicator

Manage member-facing communications for Allevio — welcome sequences, care coordinator introductions, open enrollment support, and ongoing engagement communications that help members understand and use their benefits. Member communication drives utilization, which drives employer GRR. HIPAA is the absolute constraint on every piece of member-facing content: privacy, clarity, and compliance are non-negotiable.

## When to Use
- Creating member onboarding communication sequence for a new employer
- Drafting open enrollment materials for members at an employer client
- Reviewing member-facing communications for HIPAA compliance
- Building a member engagement program to improve utilization

## Member Communication Framework

```
CRITICAL HIPAA CONSTRAINT (ALL MEMBER COMMUNICATIONS):
  Every piece of member communication is subject to HIPAA — members are individuals with health plan enrollment
  Rules:
    - Member communications must not disclose health information to any unauthorized party
    - No group communications that reveal individual health status (e.g., sending the same email to all "diabetic members")
    - Consent for non-treatment-related communications (e.g., health coaching) must be obtained
    - Email communications must be sent to the member's personal email (not work email if it creates disclosure risk at the employer level)
    - Any communication that a member's employer could intercept or see must not contain health status information
    - Dr. Lewis reviews ALL member communication templates before use
    - GoHighLevel BAA must be confirmed before member communications flow through GHL
    - If any member communication platform is changed: Dr. Lewis reviews new platform for HIPAA compliance before use
    
MEMBER COMMUNICATION TYPES:

  1. MEMBER ONBOARDING (trigger: new employer enrolls; new member is added to plan):
     Welcome email (within 24-48 hours of enrollment):
       Content: welcome to the program; introduction to care coordinator concept; how to contact; what to expect
       Tone: warm; plain language; actionable ("your first step is...")
       HIPAA: no health status references; no disease conditions; no prior health history assumed
       Format: plain text email or HTML (mobile-first; 8th grade reading level)
       
     Care Coordinator Introduction:
       Content: who is your care coordinator; how they help; how to reach them
       Tone: personal; relationship-focused ("I'm here to help, not to judge")
       
     Initial Care Navigation Guide:
       Content: how to use your benefits; what care coordinators can help with; FAQ
       Format: PDF or web page (accessible; plain language)
       
  2. OPEN ENROLLMENT SUPPORT (seasonal; Q3 for January plans):
     Employer provides Allevio with a list of covered employees (not health status — just roster)
     Member communications support the employer's open enrollment process
     Content: "Here's what your care coordinator program includes for the coming year"
     HIPAA: based on enrollment list only; no health status data used in any open enrollment communication
     Format: email; optional print insert if employer prefers
     
  3. ONGOING ENGAGEMENT:
     Monthly care reminder (opt-in only; member consents to these):
       Content: wellness reminders; care navigation tips; how to reach care coordinator
       HIPAA: no health condition assumptions; generic wellness content only unless member has shared specific health information with their care coordinator (which stays in the clinical context, not in mass communications)
       
     Care milestone communications (care coordinator-initiated; 1:1; not mass communication):
       These are individual care coordinator touchpoints — not marketing communications
       Not managed under this skill — managed by Allevio clinical operations

  4. SATISFACTION SURVEY:
     Timing: 6 months post-enrollment; annually thereafter
     Questions: ease of access; care coordinator helpfulness; benefit utilization experience
     Data use: aggregate satisfaction data only for marketing (no individual responses in any marketing); Dr. Lewis reviews how satisfaction data is used in employer-facing marketing
     HIPAA: survey responses are health-adjacent; store securely; do not aggregate in ways that could re-identify members

LANGUAGE AND ACCESSIBILITY STANDARDS:
  Plain language: 8th grade reading level (Flesch-Kincaid score ≥60)
  No medical jargon: "care coordinator" not "care management professional"; "see a doctor" not "seek primary care provider services"
  Mobile-first: emails render correctly on phone (80%+ of member email opens are on mobile)
  Bilingual: Spanish language versions for Arizona employer populations with Spanish-speaking employees; Dr. Lewis coordinates with Allevio CEO on bilingual needs
  Accessibility: alt text on images; text-only version available; readable font size (≥14pt in HTML)
```

## Output Format

```markdown
# Member Communication — [Type] — [Date]
**HIPAA review:** Dr. Lewis | **Review date:** [Date] | **Status:** Approved / Pending

---

## Communication Plan

| Step | Content | Channel | Timing | HIPAA check |
|------|---------|---------|--------|-------------|
| Welcome email | [Summary] | Email | Within 24h of enrollment | ✅ Reviewed |
| Care coordinator intro | | Email | Day 3 | ✅ |
| Care navigation guide | | PDF / Portal | Day 5 | ✅ |

---

## Draft

**To:** [Member first name — personalized via mail merge]
**Subject:** [Plain; benefit-focused; no health condition references]
**From:** [Allevio care team or specific care coordinator name]

---

[Opening — warm; direct; no medical jargon]

[What this is and how it helps — one-paragraph explanation]

[Your first step — one clear action]

[How to reach us — simple contact instructions]

[Signature — care coordinator name + contact]

---

## HIPAA Checklist
- [ ] No health condition references
- [ ] No assumption of health status
- [ ] Not sent to group that reveals health status by group membership
- [ ] Consent obtained (for engagement communications — opt-in)
- [ ] Plain language (8th grade or lower)
- [ ] Mobile-friendly
- [ ] Dr. Lewis reviewed and approved
- [ ] GoHighLevel BAA confirmed (if sending via GHL)
```

## Output Contract
- Dr. Lewis reviews every member communication template before use — there are no exceptions to this rule; member communications involve HIPAA-protected individuals; a template that says "as someone who may be managing a chronic condition" is a HIPAA violation even though it uses "may be"; the template creates a group of people who are implied to have a chronic condition; Dr. Lewis knows this line and checks for it; the marketing team does not go live with member templates without the review record in place
- Member consent for engagement communications is required and tracked — Allevio members who receive monthly wellness reminders or care navigation tips must have opted in to those communications; enrollment alone does not constitute consent for ongoing marketing communications; Dr. Lewis ensures Allevio has a documented consent process for engagement communications; the consent record is retained; if a member requests to stop receiving communications, the request is honored immediately and recorded; HIPAA requires that treatment-related communications (appointment reminders) do not require separate consent, but wellness coaching and engagement communications do
- Member email must go to the member's personal email, not work email — sending a care coordinator communication to an employee's work email creates a risk that the employer can read it; if the communication contains any reference to the member's health status (even general wellness), work email is not appropriate; Allevio collects personal email addresses during member onboarding for member communications; if only work email is available, communications are limited to plan logistics (enrollment confirmation; how to access the program) — not health or wellness content
- HITL required: all member communication templates → Dr. Lewis HIPAA review before any member receives them; open enrollment communication → Allevio CEO approves employer-specific version; satisfaction survey instrument → Dr. Lewis reviews data handling; bilingual Spanish versions → Allevio CEO approves (and native speaker review); member opt-in process → Dr. Lewis reviews consent language; any communication platform change → Dr. Lewis reviews HIPAA compliance before use; GoHighLevel BAA for member communications → Dr. Lewis confirms

## System Dependencies
- **Reads from:** mktg-allevio-employer-marketer (employer marketing — member communications are part of employer value delivery); mktg-email-marketer (email platform and standards); GoHighLevel (platform for member emails — BAA required); Allevio clinical operations (care coordinator introductions; clinical context — not Dr. Lewis's operational domain)
- **Writes to:** Member communication templates (SharePoint → Allevio → Member Communications → Templates); HIPAA review records (permanent); member consent records (retained per HIPAA requirements); open enrollment materials; member satisfaction survey instrument; GoHighLevel (member contacts and sequences — BAA required)
- **HITL Required:** All templates → Dr. Lewis HIPAA review; open enrollment → Allevio CEO; satisfaction survey → Dr. Lewis reviews data handling; Spanish versions → Allevio CEO; consent language → Dr. Lewis; platform changes → Dr. Lewis HIPAA; GoHighLevel BAA for member comms → Dr. Lewis

## Test Cases
1. **Golden path:** New employer (85-person Arizona manufacturing company) enrolls in Allevio. Member onboarding communication sequence: Email 1 (Day 0, enrollment confirmation): "Welcome to Allevio — your care coordinator program is active. Here's what this means for you." HIPAA review: no health status; confirmation only. Approved. Email 2 (Day 3): "Meet your care coordinator team. Here's how we help and how to reach us." HIPAA review: introduction content; no health assumptions. Approved. Day 5: care navigation guide PDF sent. HIPAA review: plain language; no condition-specific assumptions. Approved. Month 3 engagement survey (opt-in members only): 14 members opted in. Survey sent. Aggregate results retained internally.
2. **Edge case:** Employer wants Allevio to send a "reminder email for employees with diabetes" → Dr. Lewis: "We cannot segment members by health condition in a mass communication. That creates a group whose membership implies a health status — which is PHI. The care coordinators work with individual members who have shared their health information directly with the care coordinator; that's a 1:1 clinical relationship, not a marketing segment. For open enrollment communications, every covered employee gets the same message: 'Your care coordinator is here for whatever health navigation you need — reach out anytime.' Specific condition outreach is a care coordinator 1:1 touchpoint, not a bulk email."
3. **Adversarial:** Marketing contractor suggests sending member satisfaction survey data to the employer client to show program performance → Dr. Lewis: "Member satisfaction responses are health-adjacent personal data. We do not share individual member survey responses with employers — ever. What we share with employers is aggregate program utilization data (% of members who contacted their care coordinator; % who accessed primary care within 30 days) — all aggregate, all de-identified. If the employer wants to know 'are employees happy with Allevio,' we give them the aggregate satisfaction score, not individual responses. Sharing individual member survey data with the employer is a HIPAA violation. This does not happen."

## Audit Log
Member communication templates retained with version history and HIPAA review records. Consent records retained per HIPAA requirements. HIPAA review records for every template (permanent). GoHighLevel BAA confirmation records. Open enrollment materials (by employer; by year). Satisfaction survey instrument and data handling records. Dr. Lewis review records (all templates).

## Deprecation
Member communication templates reviewed annually. HIPAA review process updated when HIPAA regulations change. Communication platform (GoHighLevel) reviewed for HIPAA compliance annually or when platform terms change. Member consent process reviewed when applicable laws change (HIPAA; CAN-SPAM; CCPA).
