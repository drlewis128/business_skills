---
name: mktg-customer-advocacy-marketer
description: "Build customer advocacy and reference programs for MBL Partners portfolio entities. Use when the user says 'customer advocacy', 'customer reference', 'reference program', 'reference customer', 'customer champion', 'employer champion', 'agency champion', 'client advocate', 'advocate marketing', 'reference call', 'reference check', 'peer reference', 'speak to a customer', 'happy customer', 'satisfied employer', 'customer hero', 'turn customers into advocates', 'employer reference for sales', 'agency reference for sales', 'reference library', 'reference management', 'customer voice', 'voice of the customer', 'how satisfied are our customers', 'NPS', 'net promoter score', 'customer satisfaction', 'CSAT', 'employer satisfaction', 'agency satisfaction', 'churn risk communication', 'at-risk customer communication', or 'how do we use happy customers to get more customers'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--action <build|activate|report|survey>] [--focus <reference|testimonial|nps|at-risk>]"
---

# Marketing Customer Advocacy Marketer

Build and manage customer advocacy programs for MBL Partners portfolio entities — converting satisfied employer and agency clients into referenceable advocates, managing reference request processes, and generating voice-of-customer data that improves marketing and product. Customer advocacy is the most credible marketing channel; a prospect who speaks to a satisfied customer closes faster than a prospect who only reads marketing materials.

## When to Use
- Building a structured reference library for Allevio (employer references) or Column6 (agency references)
- Managing a reference request from a prospect
- Running an NPS or satisfaction survey for an entity's client base
- Identifying at-risk clients who need proactive attention before they churn

## Customer Advocacy Framework

```
ADVOCACY PROGRAMS BY ENTITY:

  ALLEVIO — EMPLOYER ADVOCACY PROGRAM:
    Goal: build a pool of 5-10 referenceable Arizona employers who will speak to prospects about their Allevio experience
    Criteria for reference candidates: active >12 months; high care coordinator utilization; employer GRR renewed; HR Director who is willing to take reference calls
    Reference call format: 20-minute call between prospect HR Director and reference employer HR Director; Allevio team absent (builds authenticity)
    Reference library: maintained by Dr. Lewis + Allevio CEO; reference contact list with: employer type; size; tenure with Allevio; topics they'll speak to; availability
    Reference cadence: reference employers checked in quarterly; any burden management (don't overuse same reference)
    Thank-you acknowledgment: reference employers receive a formal thank-you from Allevio CEO; no financial incentive (HIPAA context — no patient care decisions should be influenced by incentives, even though this is employer not member level; best to keep this clean)
    
    HIPAA IN ADVOCACY CONTEXT:
      Reference employers speak to their employer experience only — care coordinator model; HR/benefits perspective; cost impact
      Reference employers may NOT speak to: specific employee health outcomes; member utilization data at individual level; any health condition data from their employee population
      Dr. Lewis briefs reference employers before their first reference call: "You can share your experience as an HR leader — what you saw with utilization, what you heard from employees generally, what the financial impact was for your plan. You should not share any specific employee health information, even in general terms."
    
  COLUMN6 — AGENCY ADVOCACY PROGRAM:
    Goal: build a pool of 5-7 referenceable independent agency clients who will speak to prospects
    Criteria: agency with active campaigns; strong NRR; agency AM who values the Column6 relationship and is willing to be referenced
    Reference call: 15-20 minutes; prospect agency AM + reference agency AM; Column6 commercial team absent
    Reference library: maintained by Column6 CEO + commercial lead; agency type; size; market focus; campaign types they'll speak to; availability
    Thank-you: agency reference receives Column6 CEO thank-you; may receive access to early beta features if appropriate

SATISFACTION MEASUREMENT:

  ALLEVIO EMPLOYER NPS:
    Frequency: annually (Q2); 5-question survey; 3-minute completion
    Questions: NPS (0-10); ease of working with care coordinator team; benefit to your employees (perceived); overall satisfaction; one open question
    Benchmark: NPS ≥50 is strong for healthcare services; <30 = action required
    HIPAA: employer NPS is employer-only data; aggregate employer NPS can be used in marketing; individual employer scores are private unless employer consents to share
    At-risk flag: any employer with NPS <7 (detractor) → entity CEO + Dr. Lewis notified; proactive outreach within 5 business days
    
  COLUMN6 AGENCY SATISFACTION:
    Frequency: semi-annual; 3-question pulse survey; or qualitative (AM relationship check-in)
    Benchmark: NRR ≥95% is the primary satisfaction proxy; formal NPS secondary
    At-risk flag: agency NRR <90% or AM flags relationship stress → Column6 CEO + Dr. Lewis notified

VOICE OF CUSTOMER INTEGRATION:
  Marketing uses: advocate quotes in case studies; reference calls for sales; NPS score as marketing proof point
  Product uses: common complaints in NPS open questions → entity CEO reviews for product/service improvement
  Process: Dr. Lewis reviews quarterly NPS open responses for themes before entity CEO briefing
  Allevio member feedback: members are not part of the marketing advocacy program; member feedback is a clinical operation function, not marketing
```

## Output Format

```markdown
# Customer Advocacy Report — [Entity] — [Period]
**Prepared by:** Marketing Lead | **To:** Entity CEO + Dr. Lewis

---

## Reference Library Status

| Reference | Company type | Tenure | Available for calls | Topics |
|-----------|-------------|--------|--------------------|----|
| [Employer HR Director - Anonymous] | 150-emp AZ manufacturer | 14 months | Yes | Utilization; cost savings |

---

## Reference Activity This Period

| Prospect | Reference provided | Call date | Outcome |
|----------|------------------|-----------|---------|

---

## NPS Summary (latest survey)

| Metric | Score | Benchmark | Status |
|--------|-------|----------|--------|
| NPS | [X] | ≥50 (Allevio) / ≥40 (Column6) | ✅/⚠️/❌ |
| Promoters (9-10) | [X]% | | |
| Detractors (0-6) | [X]% | | |
| At-risk clients flagged | [X] | 0 target | |

---

## At-Risk Client Actions

| Client | NPS score | Flagged to | Outreach date | Outcome |
|--------|-----------|-----------|--------------|---------|

---

## HIPAA Review (Allevio)
- [ ] Reference employer briefing completed (HIPAA guidance provided) — [Date]
- [ ] Advocate quotes reviewed by Dr. Lewis for PHI — [Date]
- [ ] NPS aggregate data only in marketing use — confirmed
```

## Output Contract
- Reference employers are partners, not assets to exploit — a reference employer who receives 12 reference call requests in a quarter will stop being a reference; Dr. Lewis monitors reference utilization and ensures no reference employer receives more than 2-3 requests per quarter; when a reference employer is heavily used, Dr. Lewis + Allevio CEO identify the next reference candidate and grow the pool; a burnt reference relationship is harder to rebuild than a new one to develop
- HIPAA governs what reference employers can discuss — even though reference employers are not patients and are speaking from an employer (not member) perspective, Dr. Lewis provides a pre-call briefing that defines the scope of appropriate discussion; "our employees were happier with their care" is acceptable; "our employees with diabetes saw their A1c improve" is not — that's health outcome data that implies the employer is tracking individual employee health conditions; the pre-call briefing is documented; Dr. Lewis reviews any quote produced from a reference employer interaction before it is used in marketing
- At-risk clients are flagged to entity CEO immediately — an employer or agency with an NPS score below 7 is at churn risk; if they churn, they are no longer a marketing opportunity but may become an active detractor; Dr. Lewis ensures the flagging process runs within 5 business days of the survey close; the entity CEO initiates a personal outreach (phone call preferred); the goal of the outreach is to understand the concern and address it; marketing's job is to flag and monitor; entity CEO owns the relationship recovery
- HITL required: reference library → entity CEO approves reference candidates; reference call requests → entity CEO or marketing lead approves which reference to use; reference employer pre-call HIPAA briefing (Allevio) → Dr. Lewis provides; advocate quotes from reference conversations → Dr. Lewis HIPAA reviews before use; at-risk client flags → entity CEO notified within 5 business days; NPS survey instrument → Dr. Lewis reviews for HIPAA compliance (Allevio); NPS results → entity CEO reviews; Dr. Lewis reviews open responses for themes

## System Dependencies
- **Reads from:** mktg-customer-story-builder (advocacy quotes feed into case studies); cs-allevio-qbr (employer satisfaction data — reference candidate identification); cs-column6-qbr (agency satisfaction data — reference candidates); mktg-messaging-matrix (advocacy quotes should carry L3 claims)
- **Writes to:** Reference library (SharePoint → [Entity] → Marketing → References); NPS survey results (SharePoint → [Entity] → Marketing → Customer Voice → [Year]); at-risk client flags (entity CEO + Dr. Lewis notification); advocate quote library; HIPAA briefing records (Allevio reference employers)
- **HITL Required:** Reference candidates → entity CEO approves; reference requests → entity CEO or marketing lead; HIPAA briefing → Dr. Lewis (Allevio); advocate quotes → Dr. Lewis HIPAA; at-risk flags → entity CEO within 5 business days; NPS survey → Dr. Lewis HIPAA (Allevio); NPS results → entity CEO

## Test Cases
1. **Golden path:** Allevio employer reference call. Prospect: 220-person Phoenix services company HR Director. Reference: 185-person Allevio employer HR Director (14 months tenure; NPS 9). Pre-call HIPAA briefing by Dr. Lewis: "You can share your experience managing the program; what you saw with utilization; the general feedback you heard from employees; your financial experience with the plan. Please don't share any specific employee health information — your employees' health is private." Reference call: 22 minutes. Prospect asks "Did your employees actually use it?" — Reference: "Yes — about 1 in 4 employees reached out to the care coordinator in year one. The ones who did were the ones with complicated situations. They said they finally felt like someone was helping them navigate." Outcome: prospect requests proposal 2 days after reference call.
2. **Edge case:** Reference employer reaches out to say they've been acquired and won't be an Allevio client going forward → Dr. Lewis: "Thank them for being a reference and acknowledge the change. Remove them from the active reference library immediately. If they're willing, ask if they can serve as a 'former client' reference for 3 months while we wind down the relationship and thank them for their contribution. Then start recruiting the next reference candidate. Note in the reference log the date of removal and reason."
3. **Adversarial:** A prospect directly contacts a reference employer and asks them to share employee-level health utilization data → Dr. Lewis: "The reference employer should not have this data in a form they can share (it's AdvancedMD data); but if they've seen aggregate reports from Allevio, they might share aggregate data informally. I'll debrief the reference employer: what was asked; what they said; was any sensitive data shared? If the prospect is asking for data that goes beyond the reference employer's employer-level experience, that's a compliance concern — the prospect may be trying to use the reference channel to access data they can't get directly. I'll flag this to the Allevio CEO and handle the prospect conversation directly."

## Audit Log
Reference library with candidate records retained. Reference call activity log (date; prospect; reference; outcome). HIPAA pre-call briefing records (Allevio — permanent). Advocate quote records with HIPAA review. NPS survey instruments and results. At-risk client flag records. Entity CEO notification records.

## Deprecation
Reference library reviewed quarterly. NPS survey instrument reviewed annually. At-risk threshold reviewed annually based on entity health benchmarks. HIPAA briefing guidance updated when HIPAA regulations change. Advocacy program reviewed when entity customer model changes.
