---
name: mktg-email-marketer
description: "Build and manage email marketing programs for MBL Partners portfolio entities. Use when the user says 'email marketing', 'email campaign', 'email sequence', 'email newsletter', 'drip campaign', 'nurture sequence', 'email automation', 'email flows', 'outreach email', 'cold email', 'warm email', 'prospecting email', 'follow-up email', 'marketing email', 'email list', 'subscriber list', 'email segmentation', 'open rate', 'click rate', 'deliverability', 'email deliverability', 'inbox placement', 'email subject line', 'email template', 'unsubscribe', 'CAN-SPAM', 'GDPR email', 'email compliance', 'GoHighLevel email', 'GHL email automation', 'Mailchimp', 'email platform', 'send an email campaign', 'draft an email', or 'email to employers'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--type <newsletter|nurture|prospecting|transactional>] [--audience <employers|agencies|landowners|lps>] [--action <draft|audit|build|report>]"
---

# Marketing Email Marketer

Design, execute, and optimize email marketing programs for MBL Partners portfolio entities — building automated nurture sequences, outreach campaigns, and regular newsletters that move prospects and customers through the funnel. Email is the highest-ROI channel for B2B entities with defined audiences; for Allevio, it moves employers from awareness to demo request; for Column6, it maintains agency relationships between campaigns.

## When to Use
- Building a new nurture sequence for a target audience
- Reviewing email program performance and optimizing
- Drafting a specific campaign email
- Setting up or auditing email automation in GoHighLevel

## Email Marketing Framework

```
ENTITY EMAIL PROGRAMS:

  ALLEVIO:
    CRM: GoHighLevel (employer contacts; pipeline contacts)
    Programs:
      1. Employer Awareness Newsletter (monthly):
         Audience: existing employer clients + employer prospects
         Content: care utilization trends; benefits market news; Allevio operational updates
         HIPAA: no member health data; employer-aggregate statistics only; Dr. Lewis reviews before send
         Goal: retain employer relationships; generate referral introductions
         
      2. Employer Prospect Nurture (automated; 6-email sequence; trigger: demo request or content download):
         Email 1: immediate — "Thanks for your interest — here's what care coordination actually is"
         Email 2: day 3 — "The claim ratio calculation most employers miss"
         Email 3: day 7 — "What Allevio employers see in year one" [aggregate case study; no PHI]
         Email 4: day 14 — "How care coordination compares to EAP" [positioning; no competitor naming]
         Email 5: day 21 — "Three questions to ask your benefits broker about care coordination"
         Email 6: day 30 — "Ready to see if Allevio fits your plan design?"
         
      3. Open Enrollment Campaign (seasonal; Q3 for January plan years):
         Audience: employer clients + HR contacts at prospect employers
         Goal: drive enrollment materials request and member communication support
         HIPAA: employer-facing only; no member health content
         
  COLUMN6:
    CRM: GoHighLevel (agency contacts; direct advertiser contacts)
    Programs:
      1. Agency Performance Newsletter (monthly):
         Audience: Column6 agency clients and prospects
         Content: programmatic industry news; CTV performance benchmarks; IAB updates
         Goal: maintain agency relationships; generate incremental campaign spend
         
      2. Agency Prospect Sequence (automated; 4-email; trigger: trade show lead or inbound):
         Email 1: immediate — "Thanks for connecting — here's Column6 in 3 data points"
         Email 2: day 5 — "CTV measurement: what agencies should be asking their DSP"
         Email 3: day 12 — "VCR and IVT benchmarks from Q[current quarter]" [data-based]
         Email 4: day 21 — "30 minutes to run a test campaign — interested?"
         
  HIVE PARTNERS:
    Email: manual/semi-manual (not automated); GoHighLevel for contact management
    Programs:
      1. Landowner Monthly Update:
         Audience: existing royalty landowners (Uinta Basin)
         Content: production summary; royalty payment schedule; operational notes; Basin news
         Tone: neighborly; direct; relationship-first
         Distribution: email + physical mail for landowners who prefer paper
         
      2. LP Quarterly Letter:
         Audience: LP investors
         Content: production; WTI context; distributions; forward-looking notes
         Approval: Dr. Lewis + Matt Mathison before send
         Format: PDF attachment + short cover email
         
  MBL PARTNERS:
    Programs: ad hoc (no formal email program); deal sourcing outreach managed manually
    LP communications: handled by Matt Mathison + Dr. Lewis; individual emails, not automated

EMAIL STANDARDS:
  CAN-SPAM compliance: unsubscribe in every email; physical address; no deceptive headers
  GDPR: for any contacts from EU jurisdictions, explicit consent required before email
  Deliverability: domain authentication (SPF; DKIM; DMARC) configured for all entity domains
  
  Subject line formula: [Benefit or curiosity + specificity]
    Good: "Claim cost reduction: what AZ employers see in year one"
    Not: "Important update from Allevio" or "Hello"
    A/B test: 2 subject variants on 20% of list each; winner sends to remaining 60%
    
  HIPAA (Allevio):
    Employer emails: no member PHI; no individual patient references; aggregate employer data only
    Member emails (if any direct member communication): HIPAA-compliant; consent required; Dr. Lewis approves all
    Email platform must have Business Associate Agreement (BAA) with any vendor processing Allevio email data
    GoHighLevel BAA: confirm in place before using for Allevio member communications (not just employer)
    
  Performance benchmarks (B2B SaaS baseline):
    Open rate: >25% (employer/agency audiences); alert if <15%
    Click rate: >3%; alert if <1%
    Unsubscribe: <0.5%; alert if >1%
    Bounce: <2% hard bounce; clean list regularly
```

## Output Format

```markdown
# Email Campaign Brief — [Entity] — [Campaign Name]
**Type:** [Newsletter / Nurture / Prospecting / Transactional]
**Audience:** [List segment + size]
**Send date:** [Date] | **Approval due:** [Date]

---

## Email Draft

**Subject line (A variant):** [Subject]
**Subject line (B variant — for A/B test]:** [Subject]
**Preview text:** [45-75 characters — complements, not repeats, subject]

---

**Body:**

[Personalization: Hi [First Name],]

[Opening — one sentence; most important thing first]

[Middle — 2-3 paragraphs; evidence; supporting points]

[CTA — one action; clear; specific]

[Signature]
[Unsubscribe] | [Physical address]

---

## Performance Targets
- Open rate target: [X]%
- Click rate target: [X]%
- Conversions (demo / reply / download): [X]

---

## HIPAA Checklist (Allevio only)
- [ ] No member PHI in email body
- [ ] No individual patient references
- [ ] Employer-aggregate data only (with source noted)
- [ ] Dr. Lewis reviewed before send
```

## Output Contract
- HIPAA compliance is the absolute constraint for all Allevio emails — before any Allevio email is sent to more than one recipient, Dr. Lewis reviews the draft for HIPAA compliance; no automation rule sends Allevio emails without a human review step in the workflow for any new template; for repeating emails (monthly newsletters with a template that has been approved), the template is approved once and only re-reviewed when the content changes; the email platform (GoHighLevel) must have a signed BAA before it is used for any Allevio communication that may involve PHI; employer-facing emails are lower-risk but still reviewed; member-facing emails (if any) require BAA and Dr. Lewis review of every send
- Every email has one call to action, not five — the most common email mistake is trying to accomplish multiple objectives in one email (read the blog, request a demo, download the guide, follow on LinkedIn, forward to a friend); Dr. Lewis enforces one primary CTA per email; secondary actions (if any) are in the PS or are deprioritized visually; an email asking for a demo request gets a demo request link as the only CTA; an email newsletter with multiple articles gets a "read more" link for each article but the primary CTA is always the one most important action
- Email list hygiene is not optional — a list with 30% invalid addresses will destroy deliverability for all sends; Dr. Lewis ensures each entity runs a list validation before any new campaign; suppresses hard bounces immediately after every send; runs a re-engagement sequence on contacts with no open in 6+ months before suppressing them; list size is not an indicator of email program health — open rate and deliverability are; a list of 500 with 35% open rate is better than a list of 5,000 with 8% open rate
- HITL required: new email template (Allevio) → Dr. Lewis HIPAA review before any sends; LP quarterly letter (HIVE) → Dr. Lewis + Matt Mathison approve before send; new automation sequence → entity CEO reviews logic before activation; GoHighLevel BAA (Allevio) → Dr. Lewis confirms before use; campaign results → monthly review with entity marketing lead; any email to >1,000 recipients → entity CEO aware

## System Dependencies
- **Reads from:** mktg-messaging-matrix (email copy must carry L2/L3 messages); mktg-content-strategist (email content derived from content calendar); mktg-crm-marketing-manager (list segmentation; contact stages); GoHighLevel (email platform — CRM and automation)
- **Writes to:** GoHighLevel (email templates; automation sequences; list segments); email performance report (Monday.com → [Entity] → Marketing → Email); unsubscribe log; HIPAA review record (Allevio); LP communications archive (SharePoint → HIVE → Investor Relations)
- **HITL Required:** Allevio emails → Dr. Lewis HIPAA review; HIVE LP letters → Dr. Lewis + Matt Mathison; new automation sequences → entity CEO reviews; GoHighLevel BAA confirmation (Allevio); campaign performance → monthly entity CEO review

## Test Cases
1. **Golden path:** Allevio employer prospect nurture sequence (6 emails). Email 3 ("What Allevio employers see in year one") uses aggregate: "Allevio employers see an average [X]% reduction in preventable ER visits in year one. The data comes from [N] employer cohorts, 2024-2025." Dr. Lewis HIPAA review: aggregate data from N employers = not re-identifiable; no PHI; claim sourced. Approved. GoHighLevel automation built: trigger on demo request form submission; 6-email sequence over 30 days; auto-suppress on demo booked or unsubscribe. Open rate month 1: 31%. Click rate: 4.2%. Demo requests from sequence: 2.
2. **Edge case:** Landowner prefers physical mail to email → Dr. Lewis: "HIVE landowner outreach must accommodate both. GoHighLevel manages email contacts; for physical mail preference, we flag the contact in GHL and produce a PDF of the monthly letter for print-and-mail. Relationship-first means meeting landowners where they are. Never suppress a landowner from communications because they won't use email — that's a relationship loss."
3. **Adversarial:** Someone exports the Allevio employer email list and shares it with a third-party vendor without authorization → Dr. Lewis: "Stop immediately. This is a data handling violation. I need to: (1) identify who exported it and what was shared; (2) determine if the list includes any PHI (it shouldn't for employer contacts, but I verify); (3) contact the vendor and demand data deletion with confirmation; (4) review how the export happened and restrict GoHighLevel list export permissions to Dr. Lewis only; (5) document the incident in the audit log and notify Allevio CEO. If PHI was involved — even potentially — I treat this as a HIPAA breach and engage legal."

## Audit Log
Email sends logged (date; list segment; template version; performance). HIPAA review records retained (Allevio — all email templates and send events). GoHighLevel BAA confirmation retained. List hygiene actions logged. Automation sequence approvals retained. LP letter approvals retained (HIVE). Unsubscribe actions logged.

## Deprecation
Email templates reviewed semi-annually. Automation sequences reviewed annually or when funnel stages change. HIPAA review process updated when HIPAA regulations change. GoHighLevel BAA reviewed annually.
