---
name: mktg-brand-voice-manager
description: "Manage brand voice and writing standards for MBL Partners portfolio entities. Use when the user says 'brand voice', 'brand tone', 'tone of voice', 'writing style', 'copy style', 'content style', 'how should we write', 'brand writing guidelines', 'voice and tone', 'on-brand writing', 'off-brand writing', 'content standards', 'style guide', 'editorial style', 'AP style', 'writing standards', 'communication style', 'how do we sound', 'consistent messaging', 'consistent writing', 'copy review', 'does this sound like us', 'brand voice audit', 'copywriting guidelines', 'editorial guidelines', or 'content governance'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6|north-vista>] [--action <define|audit|train|review>] [--content-type <email|web|social|collateral|internal>]"
---

# Marketing Brand Voice Manager

Define, document, and govern brand voice across MBL Partners portfolio entities — ensuring every customer-facing communication sounds consistent, on-brand, and appropriate for its audience. Voice is the personality of the brand in words; inconsistent voice creates brand fragility (the reader senses something is "off" even if they can't articulate why).

## When to Use
- A new entity or team needs a voice guide
- Content is being produced by multiple contributors (agency, in-house, exec) and sounds inconsistent
- A specific piece of content needs a voice review
- AI-generated content needs brand voice calibration

## Brand Voice Framework

```
ENTITY VOICE PROFILES:

  MBL PARTNERS:
    Voice: Direct. Credible. Execution-minded.
    Adjectives: Precise / Decisive / Transparent
    Reads like: "We build operational businesses that generate real returns."
    Not like: "We're excited to partner with visionary founders to unlock transformative value."
    Style rules:
      - Lead with the bottom line (BLUF: bottom line up front)
      - No filler adjectives (exciting, innovative, transformative)
      - Quantify claims when possible ("18-month hold period" not "short-term")
      - Investor audience: sophisticated; do not condescend
      
  ALLEVIO:
    Voice: Trustworthy. Outcome-focused. Human.
    Adjectives: Caring / Accountable / Clear
    Primary audience: employer HR leaders (B2B tone); secondary: members (accessible health tone)
    Employer tone: "We reduce your claim ratio and keep your workforce healthier — here's how."
    Member tone: "Your care coordinator is here to help you navigate your coverage."
    NOT like (employer): "Holistic wellness journeys for your most valuable asset — your people."
    NOT like (member): clinical jargon; insurance speak; condescending health advice
    HIPAA constraint: no specific health conditions; no PHI; all member content is general wellness
    Style rules:
      - Employer audience: lead with ROI, then outcomes, then process
      - Member audience: plain language (8th grade reading level); empathetic; actionable
      - Never make clinical claims without medical review
      
  HIVE PARTNERS:
    Voice: Honest. Experienced. Neighborly.
    Adjectives: Straightforward / Reliable / Local
    Audience: Uinta Basin landowners (relationship context; multigenerational families); LP investors
    Landowner tone: "We pay royalties on time, every month. We treat your land like our own."
    LP tone: "Basin production is [X], generating [Y] distributions. Here's what drives the numbers."
    NOT like: corporate energy company speak; regulatory euphemism; vague environmental claims
    Style rules:
      - Landowner communications: use "your land" not "the property"; personal, not transactional
      - LP communications: data-first; no spin; bad news delivered with context and plan
      - Environmental: factual statements only; no greenwashing; DOGM compliance references
      
  COLUMN6:
    Voice: Expert. Performance-driven. Partnership-oriented.
    Adjectives: Precise / Accountable / Sharp
    Audience: media agencies (sophisticated buyers); direct advertisers (varied sophistication)
    Agency tone: "Here's the VCR, IVT rate, and delivery pacing for your campaign — by line item."
    Advertiser tone: "Your CTV campaign drove [X] reach with [Y]% brand safety compliance."
    NOT like: ad-tech buzzword salad ("synergistic audience amplification across the open ecosystem")
    Style rules:
      - Agency audience: metrics-first; skip the narrative; they want the numbers
      - Advertiser audience: translate metrics into business language ("viewable impressions" → "people who saw your ad")
      - Never overclaim performance without data
      
  NORTH VISTA:
    Voice: Adaptive (mirrors the entity brand it's supporting)
    Applied per entity marketing brief

UNIVERSAL STYLE RULES (all entities):
  - Active voice over passive ("we deliver" not "delivery is provided")
  - Sentences under 25 words where possible
  - No business jargon: leverage, synergy, ecosystem, value-add, holistic, transformative, innovative
  - Numbers: spell out one through nine; use digits for 10+; always use $ with $ amounts
  - Dates: Month DD, YYYY (June 22, 2026); no 6/22/26 in formal content
  - Oxford comma: yes
  - Em dash: use liberally for emphasis — no spaces around em dash
  - Headers: sentence case (not Title Case for body headers)

AI CONTENT CALIBRATION:
  When using AI to generate content: feed the entity voice adjectives + one example of on-brand copy
  Review AI output for: passive voice; buzzword drift; unsupported claims; wrong audience tone
  Allevio: always review AI content for HIPAA compliance before use
```

## Output Format

```markdown
# Brand Voice Guide — [Entity] — Version [X.X]
**Prepared by:** Dr. Lewis / Marketing Lead | **Approved by:** Entity CEO

---

## Voice in Three Words
[Adjective 1] / [Adjective 2] / [Adjective 3]

---

## Voice Contrast Examples

| On-brand | Off-brand | Why |
|---------|----------|-----|
| "[On-brand example]" | "[Off-brand version]" | [Brief explanation] |
| | | |
| | | |

---

## Audience-Specific Tone Notes
**[Audience 1]:** [Tone adjustment for this audience]
**[Audience 2]:** [Tone adjustment]

---

## Style Rules (Top 5 for this entity)
1. [Rule + example]
2. [Rule + example]
3.
4.
5.

---

## Red-Flag Words/Phrases (never use)
- [Word/phrase]: [why — and what to use instead]

---

## Voice Review Checklist (for any content before publication)
- [ ] Active voice dominant
- [ ] No red-flag words
- [ ] Correct audience tone for this piece
- [ ] Claim-to-data ratio: every claim supported
- [ ] HIPAA check (Allevio only)
```

## Output Contract
- Voice guides are living documents, not one-time deliverables — a brand voice guide that is written and never updated becomes outdated as the entity evolves; Dr. Lewis schedules an annual voice review for each entity; when a new entity CEO joins, Dr. Lewis runs a voice alignment session within 90 days (the CEO's communication style should be reflected in the guide); the guide is only useful if it is actually referenced by everyone who produces content
- HIPAA content review is not optional for Allevio — any Allevio content that references member health, wellness, or care outcomes must pass a HIPAA review before publication; "members improved their health" is a claim that could be associated with identifiable information if the context is small enough; Dr. Lewis reviews all Allevio external content; the voice guide contains explicit HIPAA flags for the content team; there is no exception for "quick" social posts or email subject lines
- The voice guide is calibrated for humans AND AI — when content teams use AI tools (Claude, Copilot, Jasper), they need to be able to feed the voice guide into the AI prompt; Dr. Lewis ensures each entity's voice guide includes a structured "voice calibration block" that can be pasted into AI prompts to constrain output; AI-generated content that has not been voice-reviewed should not be published directly
- HITL required: initial voice guide → entity CEO reviews and approves; Allevio content → Dr. Lewis HIPAA review before publication; voice guide major updates → entity CEO approves; AI-generated content (entity-branded) → marketing lead reviews against voice guide before publication; MBL Partners voice content → Dr. Lewis + Matt Mathison

## System Dependencies
- **Reads from:** mktg-brand-strategist (brand positioning — voice must reflect positioning); mktg-messaging-matrix (message hierarchy — voice must carry messages correctly); mktg-content-strategist (content types — voice calibrated per channel)
- **Writes to:** Brand voice guide (SharePoint → Marketing → Brand Voice → [Entity]); content review checklist; AI prompt calibration block (per entity); editorial style sheet; onboarding kit for new content contributors
- **HITL Required:** Guide creation → entity CEO approves; Allevio content → Dr. Lewis HIPAA review; major updates → entity CEO; AI content review → marketing lead; MBL content → Dr. Lewis + Matt Mathison

## Test Cases
1. **Golden path:** Allevio creates a new employer one-pager. Marketing team draft says: "Allevio's holistic wellness ecosystem empowers your employees to achieve transformative health outcomes through integrated care coordination." Voice review flags: "holistic" and "transformative" are red-flag words; "ecosystem" is jargon; claim is unsupported. Revised: "Allevio's care coordinators connect your employees to the right care at the right time — reducing claim ratio while improving utilization. Our average employer sees [X]% claim ratio improvement in year one." HIPAA: no PHI; claim is aggregate data from employer cohort. Approved.
2. **Edge case:** Agency asks Column6 to produce a thought leadership piece for their blog → Dr. Lewis: "Column6's voice should remain expert and data-grounded even in third-party placements. I'll provide the agency with the Column6 voice guide and three examples of on-brand content. They write the draft; our marketing lead reviews against the guide; I review for accuracy before we approve. Column6's name on external content is Column6's credibility — we don't outsource the voice standard."
3. **Adversarial:** CEO writes a HIVE investor update that opens with: "I'm thrilled to share that HIVE had an incredible quarter..." → Dr. Lewis: "The HIVE voice guide says LP communications lead with data, not emotion. This opening signals enthusiasm before delivering the numbers, which makes it sound promotional rather than credible. Revise to: 'Q3 production: [X] BOE. WTI average: $[Y]/bbl. Distributions: $[Z]. Here's what drove the quarter.' LPs respond better to direct financial communication than to enthusiasm they can't verify."

## Audit Log
Voice guide versions retained permanently. HIPAA content review records retained. Entity CEO approval records retained. Major update records retained. AI calibration block versions retained.

## Deprecation
Voice guide reviewed annually. HIPAA constraints updated when HIPAA regulations change. AI calibration block updated when new AI tools are adopted. Voice guide deprecated and replaced only with entity CEO approval.
