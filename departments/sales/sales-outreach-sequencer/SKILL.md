---
name: sales-outreach-sequencer
description: "Design and run outreach sequences for MBL portfolio company sales teams. Use when the user says 'outreach sequence', 'email sequence', 'cadence', 'sales cadence', 'outreach cadence', 'follow-up sequence', 'follow-up emails', 'cold email sequence', 'multi-touch sequence', 'touch sequence', 'drip sequence', 'nurture sequence', 'outbound sequence', 'prospecting sequence', 'email 1', 'email 2', 'email 3', 'first email', 'second email', 'follow-up email', 'follow-up call', 'break-up email', 'last attempt email', 'outreach template', 'email template', 'cold email template', 'LinkedIn message', 'LinkedIn outreach', 'LinkedIn sequence', 'phone call script', 'call script', 'voicemail script', 'multi-channel outreach', 'Allevio outreach', 'employer outreach', 'broker outreach', 'Column6 outreach', 'agency outreach', 'HIVE outreach', 'acquisition outreach', 'prospect outreach', 'cadence design', 'sequence design', or 'outreach design'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--buyer <hr-director|cfo|media-buyer|broker|mineral-owner>] [--action <build|review|optimize>]"
---

# Sales Outreach Sequencer

Design and run multi-touch outreach sequences for MBL portfolio company sales teams — creating entity-specific email, phone, and LinkedIn sequences that move ICP-matched prospects from cold to first meeting. Sequence design is not about volume; it is about relevance. A 5-touch sequence where each touch adds value converts at 3× the rate of a 10-touch sequence of generic follow-ups.

## When to Use
- Building an outreach sequence for a new entity or buyer persona
- Writing a specific outreach email for a prospect in a sequence
- Auditing why a current sequence has low response rates
- Designing a re-engagement sequence for cold or stalled prospects

## Outreach Sequence Framework

```
SEQUENCE DESIGN PRINCIPLES:
  Relevance over volume: 5 high-relevance touches beat 15 generic ones
  Multi-channel: email (primary) + LinkedIn (visibility) + phone (direct)
  Value in every touch: each email adds something new (insight; question; proof point; perspective)
  Spacing: touch 1 → touch 2 (3 days) → touch 3 (5 days) → touch 4 (5 days) → touch 5 (7 days) → break-up
  Personalization: at minimum, company name + relevant signal; ideally industry-specific pain point
  No pitch in touch 1: first email earns attention; pitch comes later
  
ALLEVIO EMPLOYER SEQUENCE (HR Director buyer):
  Touch 1 — Email (Day 1):
    Subject: "Benefits renewal timing + a question"
    Hook: reference a specific signal (company size; industry; AZ location)
    One sentence: what Allevio does ("employer-sponsored primary care for [N]-person companies in AZ")
    Question: "Is your benefits renewal coming up in the next 6 months?"
    CTA: "Worth a 15-minute call to explore?"
    NO PHI: employer name only; no individual health references
    
  Touch 2 — LinkedIn (Day 4):
    Connection request (no note) OR connection note: "[Name], I sent you an email about Allevio — 
    connecting here so my name isn't unfamiliar if you see it again."
    
  Touch 3 — Email (Day 9):
    Subject: "What [comparable industry] employers are seeing"
    Body: share one aggregate proof point (employer-aggregate; no PHI)
    Example: "A [manufacturing/construction/professional services] employer in Maricopa County reduced 
    their healthcare claims trend by 18% in year 2 — happy to share how."
    CTA: "Do you have 15 minutes this week?"
    
  Touch 4 — Phone call (Day 14):
    Leave voicemail if no answer: "Hi [Name], this is [Rep] from Allevio. I've sent you a couple of emails — 
    I know you're busy. I'm calling because [AZ employers in your industry] are dealing with [rising healthcare costs]. 
    15 minutes might be worth it. I'll follow up with an email — [Rep] at [number]."
    
  Touch 5 — Email (Day 19):
    Subject: "Before I move on..."
    Body: "I've tried a few times and haven't heard back — completely understand if timing isn't right. 
    If your benefits renewal is in the next 6-12 months, I'd still love to connect. If not, I'll 
    circle back when it makes more sense."
    CTA: "Even a quick 'not now' helps me understand timing."
    
  Break-up (Day 26):
    Subject: "Closing the loop"
    Body: 2 sentences max. Archive in GHL as "Nurture — revisit [month/year]"
    
COLUMN6 AGENCY SEQUENCE (Media Buyer buyer):
  Touch 1 — Email (Day 1):
    Subject: "CTV IVT rate question"
    Hook: reference a specific agency pain (IVT; viewability; measurement; delivery)
    One line on Column6: "We average [X]% IVT rate on CTV — most agencies we work with report [Y]% with current supply."
    CTA: "Worth comparing notes on 15 minutes?"
    
  Touch 2 — LinkedIn (Day 4):
    Connection + brief note referencing the email
    
  Touch 3 — Email (Day 9):
    Subject: "Test IO offer"
    Body: "Agencies that have tested Column6 vs. their current supply saw [specific performance outcome]. 
    We offer a $25K test IO with full performance comparison reporting."
    CTA: "Does that conversation make sense this quarter?"
    
  Touch 4 — Phone (Day 14): voicemail referencing test IO offer
  
  Touch 5 — Email (Day 19): "Before I move on" variation
  
HIVE ACQUISITION OUTREACH (Mineral Owner):
  Approach: formal letter + phone (not email sequences; mineral rights owners are often not digitally reachable)
  Touch 1 — Letter (mailed):
    Formal; HIVE Partners letterhead; 1 page
    Introduce HIVE as Uinta Basin royalty interest buyer
    "We've been following [basin] production and believe your interest may be of value to our portfolio"
    Include return contact information (phone + email)
    NOT a solicitation with a price; an introduction
    All HIVE letters: Dr. Lewis reviews content before sending
    
  Touch 2 — Follow-up call (14 days post-letter):
    Reference the letter; ask if they received it
    Goal: qualify intent to sell (yes / no / maybe / not now)
    
SEQUENCE PERFORMANCE BENCHMARKS:
  Allevio employer sequence: target 8-12% response rate; 3-5% meeting booking rate
  Column6 agency sequence: target 10-15% response rate; 5-8% meeting rate
  If response rate <5% after 30 days: sequence content review (not just volume increase)
  HIPAA: all Allevio sequences reference employer-level pain; never individual employee health
  
EMAIL SUBJECT LINE PRINCIPLES:
  Short (≤6 words preferred)
  Question or intrigue (not "Introduction to Allevio")
  Personalized where possible ("Benefits renewal + [Company]" vs. generic)
  Never misleading ("Re:" when there was no prior email)
```

## Output Format

```markdown
# Outreach Sequence — [Entity] | [Buyer Persona] | [Version]
**Contact count:** [Active prospects in this sequence] | **Avg response rate:** [X%]

---

## Sequence Overview
| Touch | Channel | Day | Subject / Purpose |
|-------|---------|-----|-------------------|
| 1 | Email | 1 | [Subject line] |
| 2 | LinkedIn | 4 | [Connection note] |
| 3 | Email | 9 | [Subject line] |
| 4 | Phone | 14 | [Voicemail script] |
| 5 | Email | 19 | [Subject line] |
| Break-up | Email | 26 | Closing the loop |

---

## Touch 1 — Email

**Subject:** [Subject line]

[Email body — personalized version]

---

[Continue for each touch]
```

## Output Contract
- Each touch must add something the previous one didn't — a sequence where Touch 3 says "just following up on my previous emails" has nothing new for the prospect to engage with; Touch 3 should deliver a proof point, a new question, a market insight, or a concrete offer; Dr. Lewis coaches reps that "just checking in" is not a follow-up, it is noise that trains prospects to ignore future emails; the sequence is designed so a prospect who reads only Touch 3 can understand what Allevio/Column6 does and why it's relevant — they shouldn't need to have read Touch 1 and 2 to find Touch 3 compelling
- HIPAA governs all Allevio outreach content — no outreach email for Allevio references individual employee health, specific employee claims, or health conditions even in hypothetical examples; "Employers with [X condition] in their workforce" is not a permissible personalization approach; employer pain is referenced at the employer level: "rising healthcare costs"; "low employee utilization of primary care benefits"; "claims trend"; entity CEO reviews any new Allevio sequence template before it goes live in GHL
- HITL required: new sequence templates → entity CEO reviews before activating in GHL; HIVE acquisition letters → Dr. Lewis reviews content and approves before mailing; Allevio sequences → entity CEO HIPAA review; sequence performance <5% response rate for 30 days → entity CEO + Dr. Lewis review (may indicate ICP quality issue or content issue); GHL sequence activation → Dr. Lewis confirms GoHighLevel BAA is active for Allevio contacts

## System Dependencies
- **Reads from:** GHL (prospect contacts; sequence enrollment; response data; stage); ICP criteria (sales-icp-builder); win/loss records (what messaging got responses); competitive intelligence (for proof points); Allevio aggregate outcome data (no PHI); Column6 performance benchmarks; prospect research (for personalization)
- **Writes to:** GHL (sequence templates; enrollment; response tracking; stage updates); sequence performance log (response rates by sequence; by touch; SharePoint); HIVE letter records (mailed date; recipient; response); Allevio sequence review records (entity CEO approval); sequence archive (sequences retired from active use)
- **HITL Required:** New sequence templates → entity CEO reviews; Allevio sequences → HIPAA review; HIVE letters → Dr. Lewis approves content; sequence performance <5% → entity CEO + Dr. Lewis; GHL sequence activation for Allevio → BAA confirmed active; sequence changes → entity CEO notification

## Test Cases
1. **Golden path:** Allevio HR Director sequence — Touch 1 response rate 9% (above 8% benchmark). Of 50 prospects in sequence, 5 responded. 3 scheduled calls (6% meeting rate). Sequence analysis: Touch 1 strongest (most responses); Touch 3 second (proof point resonated). Touch 4 (phone) generated 0 new responses but no negative feedback. Break-up email (Touch 5): 1 additional response ("not now — renewal is January; reach back then"). GHL updated: 1 prospect archived as Nurture-January; 4 moved to Stage 3 Discovery. Sequence performance logged; no changes recommended.
2. **Edge case:** Allevio rep adds a subject line to their email sequence: "Reducing claims for employees with chronic conditions at [Company]" → Dr. Lewis: "That subject line is a HIPAA red flag — it implies knowledge of the employer's workforce health composition; it's the kind of inference that could violate HIPAA even if it's a general statement. We never reference health conditions (even hypothetically) in Allevio outreach. Required fix: 'Healthcare costs trending up at [Company]?' or 'Benefits renewal timing + a question for [Company]' — employer-cost language, not health-condition language. I'm reviewing all active Allevio sequences in GHL to confirm no similar subject lines are running before we continue."
3. **Adversarial:** Rep wants to send a mass blast of 500 emails in one day to Allevio employers instead of a sequenced approach → Dr. Lewis: "Three problems: (1) CAN-SPAM compliance — mass email requires proper unsubscribe mechanism and sender ID; if GHL isn't configured correctly for this volume, we're exposed; (2) Domain health — sending 500 emails in one day from a new domain can trigger spam filters and damage deliverability for the entire Allevio email domain for weeks; (3) Quality — 500 untargeted emails at 2% response rate is 10 conversations; 100 ICP-targeted emails in a 5-touch sequence at 10% response rate is also 10 conversations but with much better qualified prospects. The sequenced approach exists because it works better, not because we're being precious about volume. I'll confirm GHL's bulk email configuration before any volume above 50 per day goes out."

## Audit Log
Sequence template records (all versions; entity CEO approval; SharePoint). GHL sequence enrollment records (contacts; sequence; dates). Response rate tracking (by sequence; by touch; by entity). HIVE letter records (content; recipient; date sent; response). Allevio HIPAA review records (sequence templates; entity CEO approval). Sequence performance records (monthly review). CAN-SPAM compliance records.

## Deprecation
Sequence content reviewed quarterly against response rate data. Subject line performance reviewed monthly. HIVE letter content reviewed when acquisition strategy changes. Allevio sequence content reviewed when service offering or HIPAA guidance changes. Channel mix reviewed when GHL or LinkedIn platform capabilities change.
