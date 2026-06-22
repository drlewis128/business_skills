---
name: mktg-brand-strategist
description: "Manage brand strategy and architecture for MBL Partners and portfolio entities. Use when the user says 'brand strategy', 'brand architecture', 'brand hierarchy', 'brand positioning', 'brand identity', 'brand platform', 'brand review', 'brand assessment', 'master brand', 'sub-brand', 'entity brand', 'portfolio brand', 'brand guidelines', 'brand standards', 'brand consistency', 'brand refresh', 'brand audit', 'brand health', 'rebrand', 'new brand', 'launch a brand', 'brand naming', 'brand story', 'brand narrative', 'brand promise', 'value proposition', 'brand differentiation', 'brand perception', 'brand equity', 'brand awareness', or 'what does our brand stand for'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6|north-vista>] [--action <audit|develop|refresh|govern>] [--audience <employers|members|landowners|agencies|lps|market>]"
---

# Marketing Brand Strategist

Develop and govern brand strategy for MBL Partners and its portfolio entities — defining brand positioning, maintaining brand architecture, and ensuring each entity's identity is differentiated and consistent across all touchpoints. At portfolio company scale, brand is often under-invested; a clear, consistently executed brand reduces sales cycle length, improves talent attraction, and creates exit multiple uplift.

## When to Use
- A portfolio entity needs a brand strategy or brand refresh
- Brand guidelines are inconsistent or outdated
- A new entity is acquired and needs brand integration guidance
- Competitive positioning requires reframing the brand narrative

## Brand Strategy Framework

```
MBL PORTFOLIO BRAND ARCHITECTURE:

  MBL PARTNERS (parent / control brand):
    Audience: LPs, sellers, co-investors, talent
    Positioning: "Private equity built for operational excellence — we build great businesses"
    Tone: Credible, direct, execution-focused
    Key attributes: operational rigor, THRIVE values, portfolio track record
    
  ALLEVIO (healthcare MSO):
    Audience: Employers (primary), members (secondary), providers (tertiary)
    Positioning: "Employer-aligned care coordination — we make your benefits investment work"
    Tone: Professional, trustworthy, outcome-focused
    Key attributes: employer ROI, member health outcomes, care coordination expertise
    HIPAA: no PHI in any external marketing content; HIPAA-compliant messaging required
    
  HIVE PARTNERS (oil & gas):
    Audience: Landowners (primary), LPs/investors (secondary)
    Positioning: "Royalty returns you can trust — operational excellence in the Uinta Basin"
    Tone: Direct, relationship-based, transparent
    Key attributes: landowner trust, Basin expertise, reliable royalty payments, environmental stewardship
    
  COLUMN6 (CTV/programmatic):
    Audience: Media agencies (primary), direct advertisers (secondary)
    Positioning: "Programmatic reach with performance accountability — CTV, mobile, gaming"
    Tone: Performance-oriented, data-driven, expert
    Key attributes: viewability, VCR performance, IVT/fraud protection, agency partnership model
    
  NORTH VISTA (portfolio positioning):
    Audience: Market-facing for portfolio entities; marketing support arm
    Positioning: Per entity-specific brief
    Tone: Per entity guidelines

BRAND AUDIT FRAMEWORK (5 dimensions):

  1. CLARITY: Does the brand clearly communicate who it is for and why it matters?
     Test: a prospect who visits the website should be able to answer these in <10 seconds
     
  2. CONSISTENCY: Are brand standards applied consistently across all channels?
     Check: website; social; collateral; email signatures; presentation templates
     
  3. DIFFERENTIATION: Is the brand distinct from competitors?
     Test: remove the logo — would a prospect know which company this is?
     
  4. RESONANCE: Does the brand connect with the target audience emotionally?
     Evidence: inbound quality; unsolicited testimonials; sales cycle speed
     
  5. SCALABILITY: Can the brand grow with the entity?
     Test: would this brand work if the entity 3×s in size?
     
BRAND GUIDELINES (per entity, minimum):
  Logo: primary + secondary + clearspace + minimum size + incorrect usage
  Color palette: primary + secondary + hex/RGB/CMYK values
  Typography: primary + secondary + hierarchy (H1/H2/body)
  Tone of voice: 3-4 adjectives + examples of on-brand vs. off-brand writing
  Imagery: photography direction + illustration style (if applicable)
  Templates: email; presentation; one-pager; social post

NEW BRAND / REBRAND PROCESS:
  Phase 1 (Discovery): audience research; competitive scan; THRIVE alignment
  Phase 2 (Strategy): positioning; messaging hierarchy; personality
  Phase 3 (Identity): logo; color; type; visual system
  Phase 4 (Guidelines): brand standards documentation
  Phase 5 (Launch): internal rollout before external; training; templates
  
  Dr. Lewis approves brand strategy; entity CEO approves visual identity
  MBL Partners brand: Matt Mathison approves
```

## Output Format

```markdown
# Brand Strategy Brief — [Entity] — [Date]
**Prepared by:** Dr. Lewis / Marketing Lead | **Approved by:** Entity CEO
**Audience:** [Primary / Secondary / Tertiary]

---

## Brand Positioning Statement
[Entity] is the [category] for [audience] who [need/pain point].
Unlike [alternative], we [key differentiator].
We deliver [proof point 1] and [proof point 2].

---

## Brand Personality (3 adjectives)
- [Adjective]: what this means in practice
- [Adjective]: on-brand example vs. off-brand example
- [Adjective]:

---

## Messaging Hierarchy
**Primary message (30 seconds):** [One-line brand promise]
**Secondary (2 minutes):** [Key proof points: 3 bullets]
**Full story (10 minutes):** [Detailed narrative — see mktg-messaging-matrix]

---

## Brand Audit Summary

| Dimension | Score (1-5) | Finding | Action |
|-----------|------------|---------|--------|
| Clarity | | | |
| Consistency | | | |
| Differentiation | | | |
| Resonance | | | |
| Scalability | | | |

---

## Priority Actions
1. [Action — owner — due date]
```

## Output Contract
- Brand strategy is grounded in audience insight, not internal opinion — a brand positioning statement built from what leadership thinks the company should be (not what the market experiences it as) is a liability; Dr. Lewis requires input from 3-5 customer/prospect interviews before finalizing brand positioning; for Allevio, this means employer interviews (not member-level PHI) about what they value in a care coordination partner; for Column6, agency conversations about why they choose programmatic partners; brand strategy without market validation is brand fiction
- HIPAA compliance is non-negotiable in all Allevio brand content — no patient outcomes, member health information, or any PHI may appear in any Allevio external marketing material; testimonials from members require explicit written authorization and reference only general wellness impact (not specific conditions); Dr. Lewis reviews all Allevio brand content before publication for HIPAA compliance
- Entity brands are distinct from MBL Partners brand — Allevio, HIVE, and Column6 do not carry the "MBL Partners" brand externally in most contexts; the portfolio relationship is acknowledged to investors and partners but is not the primary brand in employer or landowner markets; confusing an employer with "this is a PE-backed healthcare company" creates a different relationship than "this is your care coordination partner"; Dr. Lewis determines co-branding decisions per entity and audience context
- HITL required: brand positioning → entity CEO approves; MBL Partners brand → Matt Mathison approves; visual identity → entity CEO approves; HIPAA review (Allevio) → Dr. Lewis reviews before publication; brand guideline updates → entity CEO signs off; cross-entity co-branding decision → Dr. Lewis determines

## System Dependencies
- **Reads from:** mktg-messaging-matrix (message hierarchy); mktg-positioning-architect (competitive positioning); mktg-brand-voice-manager (tone standards); hr-handbook-manager (brand conduct in employee context); ops-allevio-employer-onboarding (Allevio employer touchpoints for brand consistency)
- **Writes to:** Brand guidelines (SharePoint → Marketing → Brand → [Entity]); entity CEO brand brief; mktg-creative-brief-writer (inputs); mktg-content-strategist (voice + positioning inputs); North Vista brand assets
- **HITL Required:** Positioning → entity CEO approves; MBL brand → Matt Mathison; HIPAA content → Dr. Lewis; co-branding → Dr. Lewis; visual identity → entity CEO; guidelines publication → entity CEO

## Test Cases
1. **Golden path:** Allevio brand audit. Clarity: 3.5/5 (website homepage unclear whether aimed at employer or member — homepage hero is member-facing but primary buyer is employer HR team). Action: redesign homepage hero for employer audience; keep member content in navigation but not primary CTA. Differentiation: 4.0/5 (care coordination with employer alignment is differentiated vs. generic EAP competitors). Priority action: employer-facing homepage redesign; Q1 target.
2. **Edge case:** Column6 wants to add "An MBL Partners Company" to all agency-facing materials → Dr. Lewis: "I'd recommend against that as default. In the agency world, knowing you're PE-backed can create questions about long-term stability and price expectations. The brand equity Column6 is building with agencies is its own. Let's keep MBL Partners as a behind-the-scenes endorsement and only surface it in contexts where PE credibility adds value — like LP reporting or certain M&A conversations. I'll make this the default guideline with an explicit exception process."
3. **Adversarial:** Entity CEO wants to rebrand from Allevio to something new mid-year without a strategy → Dr. Lewis: "A rebrand is a significant investment and a revenue risk — existing employers know 'Allevio' and a name change creates re-recognition cost. Before committing to a rebrand, I need to understand what problem we're solving. Is the current name creating sales friction? Is the brand associated with something negative? Or is this a preference? If there's a business case, I'll run a proper brand strategy process (4-6 weeks). If not, let's invest that energy in improving how we execute the current brand."

## Audit Log
Brand strategy documents retained with version history. Entity CEO approval records retained. HIPAA content review records retained (Allevio). Brand audit results retained (trend analysis). Matt Mathison brand approvals (MBL Partners brand) retained.

## Deprecation
Brand positioning reviewed every 2 years or after major business model change. HIPAA compliance review process updated when HIPAA regulations change. Visual identity reviewed when entity growth or M&A changes the competitive landscape materially.
