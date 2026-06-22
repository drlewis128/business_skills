---
name: mktg-messaging-matrix
description: "Build message hierarchy and messaging frameworks for MBL Partners portfolio entities. Use when the user says 'messaging matrix', 'message hierarchy', 'messaging framework', 'message map', 'what do we say to whom', 'audience messaging', 'segment messaging', 'persona messaging', 'message by audience', 'core messages', 'key messages', 'talking points', 'elevator pitch', 'sales messaging', 'what should sales say', 'narrative framework', 'story structure', 'marketing narrative', 'message architecture', 'message strategy', 'key claims', 'proof points', 'supporting messages', 'proof of claims', 'message testing', 'A/B messaging', 'message validation', 'messaging audit', or 'what is our core message'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6|north-vista>] [--audience <employers|members|landowners|agencies|advertisers|lps>] [--action <build|audit|update|train>]"
---

# Marketing Messaging Matrix

Build structured message hierarchies for MBL Partners portfolio entities — organizing what to say, to whom, in what order, and with what proof. A messaging matrix converts positioning strategy into executable sales and marketing language used consistently across every channel and team member. Without it, every rep and piece of content goes off-script.

## When to Use
- Sales team needs consistent talking points for a new audience segment
- Marketing is producing content for multiple channels and needs message discipline
- A new product, service, or pricing tier needs messaging built from scratch
- New hires need to be able to explain the entity's value in 30 seconds

## Messaging Matrix Framework

```
HIERARCHY LEVELS:

  L1 — BRAND PROMISE (7 words or fewer):
    The overarching claim that defines what the entity delivers.
    Allevio: "Care coordination aligned with your bottom line"
    Column6: "Programmatic performance you can measure"
    HIVE: "Reliable royalties. Transparent operations."
    MBL Partners: "We build businesses that return capital"
    
  L2 — PRIMARY MESSAGE (1-2 sentences; 30-second verbal):
    Expands the brand promise into a testable claim.
    Must include: (1) audience, (2) pain point, (3) our answer, (4) one proof point
    
  L3 — SUPPORTING CLAIMS (3-5 bullets; 2-minute conversation):
    Each claim must be: specific, verifiable, differentiated
    Each claim must have ≥1 proof point
    Avoid: vague ("we have great service"), superlative ("best in class"), unmeasured ("proven results")
    
  L4 — PROOF POINTS (evidence layer):
    Types: data (aggregate, HIPAA-compliant for Allevio); case studies; testimonials; third-party validation
    Each L3 claim has ≥1 L4 proof
    Proof without L3 claim is not useful
    L3 claim without L4 proof is not credible

AUDIENCE SEGMENTATION (per entity):

  ALLEVIO:
    Segment A — HR/Benefits Leaders (primary buyer):
      Pain: claim cost rising; workforce not utilizing benefits; employees confused about coverage
      L2: "Allevio embeds a dedicated care coordinator in your benefits program — reducing claim ratio while
           improving employee benefit utilization. Employers using Allevio average [X]% claim improvement in year 1."
      L3 claims: claim ratio reduction; care coordinator model; AdvancedMD-integrated reporting; AZ-based ops
      HIPAA: aggregate employer data only; no member PHI in any claim
    Segment B — C-Suite/CFO:
      Pain: benefits cost as % of payroll rising; ROI unclear; broker managing but not accountable
      Shift message to: financial ROI; cost avoidance calculation; year-3 payback model
      
  HIVE PARTNERS:
    Segment A — Landowners (primary):
      Pain: distrust of operators; royalty payment delays; lack of transparency about production
      L2: "HIVE pays royalties on time, every month, with full production data. We operate your land like
           neighbors, not strangers — because we plan to be in the Uinta Basin for the next 20 years."
      L3 claims: payment record; production transparency (Covercy access); environmental stewardship; Basin roots
    Segment B — LP Investors:
      Pain: energy asset performance uncertainty; WTI price volatility; operator credibility
      Shift message to: Basin expertise; hedging strategy; distribution track record; conservative operations
      
  COLUMN6:
    Segment A — Independent Agencies:
      Pain: black-box DSP reporting; IVT concerns; platform instability; need for CTV expertise
      L2: "Column6 delivers CTV, mobile, and gaming campaigns with measurement accountability — VCR,
           IVT rate, and brand safety, by line item. Agencies who need programmatic without the black box."
      L3 claims: VCR above industry average; IVT < MRC standard; agency partnership model; CTV + mobile + gaming
    Segment B — Holding Company Agency Groups:
      Shift: emphasize scale capacity; compliance with holding company vendor standards; reporting integration
    Segment C — Direct Advertisers:
      Translate to business language: "reach" vs. "impressions"; "people who saw your ad" vs. "viewable"
      
  MBL PARTNERS:
    Segment A — Business Sellers/Owners:
      L2: "MBL acquires profitable lower-middle market businesses and builds them operationally. We don't
           extract — we invest. Our portfolio companies run better post-acquisition."
    Segment B — Co-Investors/Family Offices:
      Shift: track record; deal access; operational differentiation; sector expertise
    Segment C — Deal Intermediaries (brokers, advisors):
      Shift: speed to close; certainty; no-surprise diligence; strong operating history

PROOF POINT STANDARDS:
  - Quantified claims: "X%" or "$Y" — always with time period and sample size
  - Allevio: employer-aggregate data only; no PHI; Dr. Lewis approves all external claims
  - Column6: campaign data or published industry benchmarks (IAB; MRC)
  - HIVE: production/payment data; DOGM filings
  - MBL Partners: portfolio company performance; Dr. Lewis + Matt Mathison approve
```

## Output Format

```markdown
# Messaging Matrix — [Entity] — [Audience Segment] — [Date]
**Prepared by:** Dr. Lewis / Marketing Lead | **Approved by:** Entity CEO

---

## L1 — Brand Promise
> [7 words or fewer]

---

## L2 — Primary Message (30 seconds)
[1-2 sentences. Audience + pain + answer + one proof.]

---

## L3 — Supporting Claims with Proof (2-minute conversation)

| Claim | Proof point | Source / validation |
|-------|------------|---------------------|
| [Specific claim] | [Data or case] | [Where this data comes from] |
| | | |
| | | |

---

## Objection Handling

| Objection | Response |
|-----------|----------|
| "[Common objection]" | "[Response that uses L3/L4 claims]" |

---

## Channel Application

| Channel | Message adaptation |
|---------|--------------------|
| Email subject line | |
| LinkedIn post | |
| Sales deck title slide | |
| One-pager header | |
```

## Output Contract
- Claims that cannot be proven are not included — a claim in the messaging matrix without an L4 proof point is removed before the matrix is finalized; "improved outcomes" without data is a liability; "reduced claim ratio by 12% in year one" with a source is an asset; Dr. Lewis reviews every Allevio claim for HIPAA compliance (aggregate employer data only; no member-level outcomes, even anonymized, unless Dr. Lewis has reviewed the data set and confirmed it cannot be re-identified from the employer's employee population)
- The matrix is built audience-first, not entity-first — the most common mistake in messaging is building what the entity wants to say instead of what the audience needs to hear; the messaging matrix starts with the audience pain point (from interviews or sales data) and constructs the message to address that pain; if the entity has a feature that doesn't address a documented audience pain, it goes in the proof bank but not in the L3 claims
- Matrix is a living document — when sales loses deals citing specific objections not in the matrix, Dr. Lewis adds those objections and responses within 2 weeks; when a competitor closes a differentiation gap, the affected claim is updated or removed; matrix versions are tracked; a stale matrix (>6 months without a proof point refresh) is flagged in the quarterly marketing ops review
- HITL required: messaging matrix → entity CEO approves before use in sales collateral; L4 proof point data (Allevio) → Dr. Lewis HIPAA review; new claim addition → marketing lead + entity CEO review; claim removal (competitive gap closure) → Dr. Lewis + entity CEO assess impact; MBL Partners messaging → Dr. Lewis + Matt Mathison

## System Dependencies
- **Reads from:** mktg-positioning-architect (L1 brand promise + primary differentiation inputs); mktg-competitive-intelligence (competitive claims that must be differentiated); sales-win-loss-analysis (objections from field — feeds objection-handling section); cs-feedback-loop (customer language — improves L2/L3 resonance)
- **Writes to:** Messaging matrix (SharePoint → Marketing → Messaging → [Entity] → [Segment]); sales deck talking points; email templates; one-pager copy; landing page copy; onboarding script for new reps
- **HITL Required:** Matrix → entity CEO approves; Allevio proof data → Dr. Lewis HIPAA; new claims → marketing lead + entity CEO; MBL Partners → Dr. Lewis + Matt Mathison

## Test Cases
1. **Golden path:** Allevio needs messaging for HR/Benefits VP audience. L1: "Care coordination aligned with your bottom line." L2: "Allevio embeds a dedicated care coordinator in your employer benefits program — reducing claim costs while improving employee utilization. Employers using Allevio see an average [X]% reduction in preventable ER visits in year one [source: aggregate employer cohort data]." HIPAA check: no PHI; claim is aggregate, sourced. Entity CEO approves. Sales team trained on matrix in next weekly meeting.
2. **Edge case:** Column6 sales rep is using different language than the matrix → Dr. Lewis: "The messaging matrix is the single source of truth for what Column6 says. If reps are deviating, either the matrix is wrong (their language is working better — I want to know that and update the matrix) or the matrix is right and the rep needs coaching. Let me join one discovery call this week and compare what's working to the matrix. If it's the matrix, we update it. If it's the rep, that's a coaching conversation."
3. **Adversarial:** Legal flags that a Column6 performance claim uses an industry benchmark that has been updated and Column6 no longer beats the new benchmark → Dr. Lewis: "Remove the claim immediately. A claim that was true six months ago and is no longer true is worse than no claim — it's a credibility risk if a sophisticated agency buyer catches it. Update the matrix today: remove the specific benchmark claim; replace with a claim we can still support with current data. Flag this as a 'stale proof' incident in the proof point log. This is exactly why we have proof validation as part of quarterly ops review."

## Audit Log
Messaging matrix versions retained permanently (claim additions and removals tracked). HIPAA proof data review records retained. Entity CEO approval records retained. Objection-handling updates logged (with source: sales loss or customer feedback). Matt Mathison approval records (MBL Partners). Proof point validation dates tracked.

## Deprecation
Proof points reviewed every 6 months. Matrix updated within 2 weeks of competitor closing a differentiation gap. Full matrix refresh when entity pivots product model or enters a new market segment. Matrix deprecated with entity CEO approval.
