---
name: brand-voice
description: "Capture, define, and apply brand voice for MBL portfolio companies. Use when the user says 'brand voice', 'tone of voice', 'how we sound', 'writing style guide', 'brand tone', 'brand guidelines for writing', 'how should we write', 'our brand personality', 'voice and tone', or 'brand voice guide'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <capture|guide|apply|audit>] [--content-type <email|blog|social|ad|deck>]"
---

# Brand Voice

Capture, define, and apply brand voice for MBL portfolio companies. Brand voice is how a company sounds — it's the personality that shows up consistently in every email, blog post, social caption, and sales deck. An inconsistent voice signals an inconsistent brand. This skill captures the voice from existing content (or builds it from scratch), produces a voice guide, and applies it to new content.

## When to Use
- Building a brand voice guide for a new or rebranding entity
- Auditing existing content for voice consistency
- Training a new content writer on the brand voice
- Applying the voice guide to a specific piece of content
- Refreshing a stale or inconsistent brand voice

## MBL Portfolio Brand Voice Context

| Entity | Voice Archetype | Core Traits | Tone |
|--------|---------------|-----------|------|
| **MBL Partners** | Trusted Operator | Direct, experienced, data-driven, principled | Confident, no-nonsense, PE-grade — not startup hype |
| **Allevio** | Healthcare Partner | Caring, credible, operationally sharp | Warm but professional — patients and operators both trust it |
| **HIVE Partners** | Industry Expert | Straightforward, grounded, results-focused | Energy sector credibility — not glossy |
| **Column6/Siprocal** | Performance Marketer | Data-forward, results-obsessed, tech-savvy | Sharp, performance-focused — talks to media buyers |
| **North Vista** | Strategic Advisor | Thoughtful, positioning-led, brand-aware | Elevated but approachable |

## Voice Definition Framework

```
Voice = Personality + Tone + Language patterns

PERSONALITY (stable — always the same):
  Who you are as a brand. Doesn't change with context.
  Example: "Direct, confident, experienced, principled."

TONE (adaptive — shifts with context):
  How you express personality in different situations.
  Example: "Serious in crisis communications; conversational in LinkedIn posts; 
  precise in investor materials."

LANGUAGE PATTERNS (consistent):
  Specific word choices, sentence structure, what to avoid.
  Example: Use: "outcomes, execution, results-driven"
  Avoid: "synergies, leverage (noun), transformative, game-changing"
```

## Output Format

```markdown
# Brand Voice Guide — <Entity>
**Date:** <date> | **Version:** v<N>
**Prepared by:** Dr. John Lewis / Marketing

---

## Voice Summary

**One-sentence brand voice:**
"<Entity> sounds like a [archetype] who [key characteristic] — never [what to avoid]."

**Example for MBL Partners:**
"MBL Partners sounds like a seasoned PE operator who leads with data and delivers on commitments — never like a consultant selling a framework."

---

## Voice Pillars

| Pillar | What It Means | In Practice | Not This |
|--------|------------|-----------|---------|
| **Direct** | Say what you mean; no hedging | "We reduced AR days by 32%." | "We've been able to help optimize revenue cycle metrics." |
| **Credible** | Backed by evidence and experience | "Based on 40+ portfolio company integrations..." | "We believe we might be able to..." |
| **Operator-grade** | Built for people who do, not just think | "Here's the playbook" | "Here's a framework to consider" |
| **Principled** | THRIVE values visible in every touchpoint | Transparent about tradeoffs | Marketing spin or glossing over problems |

---

## Tone by Context

| Context | Tone | Example |
|---------|------|---------|
| **Investor / LP communications** | Measured, precise, evidence-based | "Q3 returns of X% reflect operational improvements in three portfolio companies..." |
| **Sales materials** | Confident, outcome-focused | "Companies like yours reduced manual billing time by 45% in 90 days." |
| **Blog / thought leadership** | Thoughtful, direct, opinionated | "Most healthcare MSOs over-invest in EHR and under-invest in operations. Here's why." |
| **Social media (LinkedIn)** | Conversational, concise, provocative | "Hot take: your billing problem isn't a billing problem. It's a data problem." |
| **Crisis / sensitive communications** | Calm, transparent, action-oriented | "We identified an issue, here's what happened, here's what we're doing." |

---

## Language Patterns

### Always Use
- Active voice ("We built", not "It was built by us")
- Specific numbers over vague superlatives ("32% reduction" not "significant improvement")
- Short sentences — average <20 words
- Plain language — 8th grade reading level for public content
- THRIVE values language: Truth, Hustle, Integrity, Value

### Never Use
- Corporate jargon: "synergy", "leverage" (as noun), "bandwidth", "circle back", "move the needle", "low-hanging fruit", "pivot"
- Hedge language: "we believe", "we think", "it's possible that", "might be able to"
- Passive voice in key claims: "results were achieved" → "we achieved results"
- Exclamation points (except in social media, sparingly)
- ALL CAPS (except for brand acronyms)

---

## Voice Audit Checklist

Apply to any piece of content before publishing:

- [ ] Is the writing direct? (No hedging or weasel words)
- [ ] Are claims backed by evidence or specifics?
- [ ] Is it written in active voice?
- [ ] Does it use plain language (no jargon)?
- [ ] Is the tone appropriate to the context?
- [ ] Are there any words from the "Never Use" list?
- [ ] Does it reflect THRIVE values?
- [ ] Would Matt Mathison be comfortable with this going public?

---

## Voice Examples — Before / After

### Email — Before (off-brand)
"We're excited to share that our innovative platform has been able to leverage cutting-edge AI capabilities to potentially transform your revenue cycle management experience going forward."

### Email — After (on-brand)
"We built an AI-powered billing tool. Healthcare MSOs using it reduced AR days by 30% in 90 days. Worth 20 minutes to see if it applies to your situation?"

---

### LinkedIn Post — Before (off-brand)
"We're thrilled to announce our partnership with [Company]! This exciting collaboration will help us deliver even more value to our amazing customers! 🎉🚀"

### LinkedIn Post — After (on-brand)
"[Company] is now integrated with [Entity]. What this means for operators: [specific operational benefit in one sentence]. More details in the comments."
```

## Output Contract
- Voice pillars always specific and observable — "professional" is not a pillar; "says specific numbers instead of vague claims" is
- Before/after examples always included — abstract voice guidance without examples doesn't change writing behavior
- Tone by context always mapped — the same brand voice sounds different in an investor memo vs. a LinkedIn post
- "Never use" list always included and specific — removing hedge language is the highest-leverage improvement for most brands
- HITL required: Dr. Lewis reviews and approves brand voice guide for each entity; Matt Mathison approves for MBL Partners; entity leadership approves for portfolio companies; Marketing applies and audits quarterly

## System Dependencies
- **Reads from:** Existing content library (website, emails, decks, social posts) for voice capture; brand guidelines (provided)
- **Writes to:** Brand voice guide (stored in SharePoint/brand folder for each entity)
- **HITL Required:** Dr. Lewis and entity leadership approve; Marketing applies; quarterly audit by Dr. Lewis

## Test Cases
1. **Golden path:** MBL Partners brand voice guide → captures voice from 3 existing investor updates and 5 LinkedIn posts; defines 4 voice pillars (direct, credible, operator-grade, principled); tone by context map for 5 communication types; language patterns with 10 banned words; 3 before/after examples; approved by Matt Mathison
2. **Edge case:** Allevio needs different voice for patient-facing vs. operator-facing content → build a dual-audience voice guide: core pillars shared, tone adjustments for each audience (warmer/simpler for patients, operationally sharp for healthcare executives); test with 3 people from each audience for clarity
3. **Adversarial:** Marketing team wants to use a "fun" voice with exclamation points and emojis for MBL Partners content → MBL Partners is a PE firm communicating with sophisticated operators and investors; fun voice undermines credibility; provide specific examples of how other PE firms that tried casual social media positioning fared vs. those that maintained professional voice

## Audit Log
Brand voice guide versions retained by entity and date. Quarterly voice audit results documented. Content that deviates from voice guide documented for training.

## Deprecation
Retire when entity deploys a brand management platform (Frontify, Brandfolder) with integrated voice guidelines, content templates, and compliance checking.
