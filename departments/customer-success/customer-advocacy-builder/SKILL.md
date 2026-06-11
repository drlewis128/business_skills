---
name: customer-advocacy-builder
description: "Build a customer advocacy program. Use when the user says 'customer advocacy', 'advocacy program', 'customer champions', 'brand advocates', 'customer advisory board', 'turn customers into advocates', 'reference program', or 'customer community'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--program-type <reference|advisory-board|community|full>]"
---

# Customer Advocacy Builder

Build a structured customer advocacy program. Satisfied customers who advocate for you are your most powerful sales asset — they provide references, write reviews, speak at events, and generate referrals. An advocacy program turns organic satisfaction into a systematic growth engine.

## When to Use
- NPS is strong but referrals are rare
- Sales team says they lack proof points for a specific segment
- Building a customer advisory board to guide product strategy
- Annual CS strategy review — advocacy is Phase 3 of the customer lifecycle
- Portfolio company assessment — do they have any formalized advocacy?

## Advocacy Program Types

| Program Type | What It Produces | Who Participates |
|-------------|----------------|----------------|
| **Reference program** | Sales reference calls | High-NPS, experienced customers |
| **Customer advisory board (CAB)** | Strategic product and direction input | 8-12 senior customers |
| **Case study / testimonial** | Written and video social proof | Customers with documented ROI |
| **Review program** | G2, Capterra, Google reviews | All satisfied customers |
| **Community** | Peer networking, self-service learning | All customers (especially Tier 2-3) |
| **Speaker program** | Conference talks, webinar appearances | Customers with compelling stories |

## Advocacy Qualification Criteria

### Minimum Criteria to Recruit into Advocacy
- NPS 8+ (Promoter or high Passive)
- Tenure ≥ 6 months
- Health score 🟢 Green
- Champion is willing and has budget/time

### Advanced Criteria (CAB or Speaker)
- Measurable ROI achieved and documented
- Respected in their industry/market
- Willing to speak publicly about their experience
- Stable relationship — no unresolved issues

## Advocacy Program Output Framework

### Reference Program
- Maintain a reference list by industry and use case
- Brief references before every call: what the prospect needs to hear, context on the prospect
- Reward references: gift cards, event tickets, priority roadmap input, renewal credits

### Customer Advisory Board (CAB)
- 8-12 customers meeting quarterly (virtual or annual in-person)
- Purpose: Input on product roadmap, industry trends, CS program design
- Value to customer: Early access, direct influence on product, peer networking

### Review Program
- Email outreach to NPS 8-10 customers asking for G2/Capterra review
- Make it easy: provide direct link, 3-sentence prompt, offer to review their draft
- Track review volume and score by platform

## Output Format

```markdown
# Customer Advocacy Program — <Entity>
**Date:** <date> | **Program type:** Reference / CAB / Reviews / Full

---

## Current Advocacy Assets

| Type | Count | Notes |
|------|-------|-------|
| Active references (available for calls) | <N> | Industries covered: <list> |
| Written case studies | <N> | |
| Video testimonials | <N> | |
| CAB members | <N> | |
| Verified reviews (G2/Capterra) | <N> | Avg rating: X.X |

---

## Advocacy Gaps

| Gap | Impact | Priority |
|-----|--------|---------|
| No reference for [Industry] | Blocks sales in that segment | High |
| < 10 G2 reviews | Credibility gap in digital evaluation | Medium |
| No CAB established | Missing product input from customers | Low |

---

## Advocacy Recruitment Pipeline

| Customer | NPS | Tenure | Health | Program | Status |
|---------|-----|--------|--------|---------|--------|
| <Account> | 10 | 18 mo | 🟢 | Reference + Case Study | Ask made |
| <Account> | 9 | 8 mo | 🟢 | Review | Pending |
| <Account> | 8 | 24 mo | 🟢 | CAB | Not yet asked |

---

## Advocacy Asks (Communication Templates)

### Reference Request
"<Name>, thank you for being such a strong partner. We're working with a company in [their industry] who's evaluating a similar challenge to what you solved. Would you be willing to take a 20-minute call with them to share your experience? I can brief you in advance and make it easy."

### Review Request
"<Name>, your feedback on our product means a lot. We'd love it if you could leave a quick review on [G2/Capterra] — it helps companies like yours find us. Here's a direct link: [link]. If helpful, here's a quick prompt: [3-sentence starter]."

### CAB Invitation
"<Name>, we're launching a Customer Advisory Board of 10 senior leaders who will help shape our product roadmap. Your perspective on [their industry/use case] would be invaluable. The time commitment is one 90-minute virtual meeting per quarter. Interested?"

---

## Advocacy Reward Framework

| Advocacy Action | Reward |
|----------------|--------|
| Reference call | $50 gift card + personal thank-you from Dr. Lewis |
| Published case study | Full-page feature on website + co-marketing |
| G2/Capterra review | Entry in quarterly prize drawing |
| CAB participation | Early product access + annual in-person event |
| Conference speaker | MBL covers registration + travel |
```

## Output Contract
- Advocacy gaps always identified — not just a list of current assets
- Recruitment pipeline always tracked — advocacy doesn't happen without someone asking
- Communication templates always included — CSMs need ready-to-use language
- HITL required: Dr. Lewis reviews all case studies and public testimonials; CSM Manager approves reference calls for strategic prospects

## System Dependencies
- **Reads from:** NPS data, customer tenure, health scores (provided or from CS platform)
- **Writes to:** Nothing (program plan for HITL review and CSM execution)
- **HITL Required:** Dr. Lewis approves all public-facing advocacy content; CS Manager owns reference call management; Legal reviews any case study with performance claims

## Test Cases
1. **Golden path:** Building advocacy program for MBL entity with 8 Tier 1 customers → reference program for 3 customers, 2 case study candidates, review program launch, CAB concept for later phase, 3 recruitment asks templated
2. **Edge case:** No customers have been in long enough or are satisfied enough to advocate → builds the foundation (identifies future candidates, sets NPS thresholds), recommends activating the program after next round of NPS surveys
3. **Adversarial:** Marketing wants to quote a customer without their explicit permission → refuses, requires customer approval for any public use of their name or words, routes to proper approval process

## Audit Log
Advocacy program assets retained by type and customer. Reference call outcomes tracked. Review volume monitored monthly.

## Deprecation
Retire when CS platform or CRM provides a formalized advocacy module with asset tracking, automated ask sequences, and reference management.
