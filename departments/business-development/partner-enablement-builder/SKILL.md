---
name: partner-enablement-builder
description: "Build partner enablement materials. Use when the user says 'partner enablement', 'build partner training', 'partner sales materials', 'equip partners to sell', 'partner toolkit', 'create partner resources', 'partner sales training', 'help partners sell', 'partner collateral', 'partner pitch materials', or 'partner education program'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--partner-type <referral|co-sell|reseller>] [--format <kit|training|both>]"
---

# Partner Enablement Builder

Build the materials and training that enable partners to confidently represent the company and make referrals. Most partner programs fail not because of bad partner selection but because partners aren't enabled to sell: they don't know enough to explain the product, they're not sure who the ideal customer is, and they can't handle objections. Enablement is the engine that turns signed agreements into revenue.

## When to Use
- A new partner program needs a standard partner kit built
- Partners keep giving incorrect information about the product to prospects
- Partners aren't making referrals despite signing agreements — they "don't know how to explain it"
- A product or pricing change requires partner re-training
- Building a partner portal or training library for scale

## Enablement Tiers

```
Partner enablement at three levels of depth:

Level 1 — Referral-ready (minimum viable enablement):
  Can the partner identify the right prospect and make an introduction?
  Needs: pitch card, ICP profile, email introduction template.
  Time to complete: 30-minute kickoff call.

Level 2 — Sales-ready (intermediate enablement):
  Can the partner handle a basic objection and understand competitive context?
  Needs: battle card, objection guide, demo or video overview.
  Time to complete: 2-hour training session.

Level 3 — Expert (advanced enablement):
  Can the partner position, demo, and close with minimal support?
  Needs: certification, full product training, co-sell playbook.
  Time to complete: Full onboarding program (multi-day).

Most referral partners need Level 1. Co-sell partners need Level 2-3.
```

## Output Format

```markdown
# Partner Enablement Kit — <Company Name>
**For:** [Partner type: referral / co-sell / reseller]
**Prepared by:** Dr. John Lewis | **Approved by:** CEO
**Version:** [X.X] | **Last updated:** <date>

---

## Partner Kit Contents

This kit gives partners everything they need to identify the right prospects and make confident introductions.

---

### 1. One-Paragraph Company Description
*Use this when someone asks "what does [Company] do?"*

> [Company] helps [specific customer type] [solve specific problem]. Unlike [alternative], we [specific differentiator]. Our customers typically see [specific outcome: reduce cost by X% / improve X in Y weeks / achieve Z]. We work with [size/type of customer in specific markets].

**The key facts:**
- [Fact 1 — the most important thing to know]
- [Fact 2]
- [Fact 3]

---

### 2. Ideal Customer Profile (ICP) — Pitch Card

**The best referral looks like:**

| Dimension | Ideal | Not a fit |
|-----------|-------|---------|
| Company type | [Specific — e.g., "Independent physician practice, 2-10 physicians"] | [E.g., "Hospital systems, large group practices >50 physicians"] |
| Geography | [E.g., "Arizona, Colorado, Utah"] | [Outside our service region] |
| Current situation | [E.g., "Frustrated with billing errors, revenue cycle delays, or current billing vendor"] | ["Happy with their current solution"] |
| Size/revenue | [E.g., "$500K-$5M annual practice revenue"] | [Too small or enterprise] |
| Decision maker | [E.g., "Practice administrator or physician owner"] | ["Office manager without financial authority"] |

**Best triggers to listen for:**
- "[Trigger phrase 1 — what a prospect might say that signals a fit]"
- "[Trigger phrase 2]"
- "[Trigger phrase 3]"

---

### 3. The 30-Second Pitch
*Practice this aloud until it sounds natural — not scripted:*

> "I work with a company called [Company] that helps [customer type] [solve problem]. What I appreciate about them is [specific, personal reason — they've delivered for my clients / they solve a real pain I see constantly]. If you ever have a client who's dealing with [trigger situation], I'd be happy to make an introduction — they're very easy to work with."

**Practice notes:**
- This should take under 30 seconds
- The personal reason ("what I appreciate about them") is the most important sentence — make it yours
- End with a specific trigger, not a generic "let me know if you know anyone"

---

### 4. Email Introduction Template
*Copy, customize the [brackets], and send:*

> Subject: Intro — [Your name] → [Your client name] and [Company contact name]
> 
> Hi [Client name],
> 
> Wanted to connect you with [Contact name] at [Company]. [Company] specializes in [description] — I've seen them solve exactly the kind of [problem] you mentioned last [month/quarter].
> 
> [Contact name], [Client name] runs [description of their business] — great person, would be a natural fit.
> 
> I'll let you two take it from here. Happy to reconnect after you've talked.
> 
> Best,
> [Your name]

---

### 5. Common Questions Partners Get
*(And how to answer them)*

| Question | Answer |
|---------|--------|
| "Are they expensive?" | "They're priced at [general range / competitive with others in the market]. Most clients find that the [ROI / time savings / outcome] more than covers the cost — but I'll let [Company] walk you through the specifics." |
| "How are they different from [Competitor]?" | "[Key differentiator in 1 sentence]. I can let [Company] explain the full comparison — they're very transparent about it." |
| "How long does it take to get started?" | "Typically [timeframe]. I'll let [Company] walk you through what implementation looks like for your situation." |
| "Do they have clients like me?" | "Yes — they work with [reference type]. I can ask them to share a case study or introduction if that would help." |

**Partner rule:** Don't speculate about pricing, timelines, or specifics you don't know. Say: "Great question — I'd let [Company contact] walk you through that."

---

### 6. The Ask (how to make the introduction)
*After you've identified a potential fit:*

1. **Test the water with your client:** "Have you ever looked into [Company]? They help people with [exactly your client's situation]."
2. **If interested:** "Let me make an introduction — it's a quick call and there's no obligation."
3. **Submit the referral:** [Link or email — specific process]
4. **[Company] will reach out to your client within [N] business days**

---

### 7. Partner Support Contacts

| Need | Contact | Response time |
|------|---------|-------------|
| Questions about a prospect | Dr. John Lewis — jlewis@mblpartners.com | Same day |
| Submit a referral | [Link / email] | — |
| Referral status | [Link / email] | 2 business days |
| Partner agreement questions | Dr. John Lewis | Same day |

---

### Optional: Battle Card (for Level 2 / co-sell partners)

| Competitor | Their strength | Their weakness | Our differentiator |
|-----------|--------------|---------------|------------------|
| [Competitor 1] | [What they do well] | [Where they fall short] | [How we win against them] |
| [Competitor 2] | ... | ... | ... |

*Use this to handle "are you better than [Competitor]?" — never badmouth competitors; position our strengths.*
```

## Output Contract
- ICP card always specific enough to make a go/no-go decision in 60 seconds — if the ideal customer description is too broad ("any small business"), the partner will either refer everyone (generating noise) or no one (they're not sure who qualifies); the profile must be narrow enough to be decisive
- 30-second pitch always included and personalized — a generic pitch that sounds like a product description is never used; the pitch must include a personal reason the partner can make their own
- Common questions always included — the #1 reason partners don't make referrals is they're afraid of questions they can't answer; removing that fear by giving them answers to the 5 most common questions directly increases referral volume
- Partner rule always stated — partners who speculate about pricing, timelines, or capabilities they're not certain of create customer expectations we can't meet; the rule to redirect to the company is important and must be explicit
- HITL required: Dr. Lewis builds enablement materials; CEO or portfolio company head must approve all partner-facing materials before distribution; any pricing information must be approved before inclusion; competitive positioning must be reviewed for legal exposure (defamation risk from comparative advertising claims)

## System Dependencies
- **Reads from:** Product/service description, pricing model, ICP definition, competitive intelligence, existing marketing materials
- **Writes to:** Partner kit (SharePoint/BD/Partners/Enablement); partner portal (if exists)
- **HITL Required:** Dr. Lewis builds; CEO approves partner-facing content; legal reviews competitive claims; pricing information approved before inclusion

## Test Cases
1. **Golden path:** Allevio builds enablement kit for 5 new referral partners → ICP: AZ independent practices, 2-8 physicians, frustrated with billing errors (specific trigger: "my billing is a mess"); 30-second pitch: practiced on kickoff calls, each partner customized the personal reason; email template: used word-for-word by 3 partners in first 2 weeks; Q&A: "They're expensive" answered: "Most practices find they recover the cost in Month 2 from reduced billing errors — I'd let Allevio walk you through the specifics"; result: 4 of 5 partners made at least 1 introduction within 30 days (vs. 1 of 5 without the kit); first referral closed in 45 days
2. **Edge case:** A co-sell partner needs deeper technical knowledge to present to sophisticated prospects → escalate to Level 2 enablement: add a demo script (or access to a product demo environment), a technical FAQ, and a battle card with specific competitive differentiators; co-sell partners who are selling alongside you need to be able to handle the technical questions a salesperson would handle; Level 1 enablement is not sufficient; schedule a 2-hour technical training with the product team
3. **Adversarial:** A partner deviates significantly from the approved pitch and tells a prospect that [Company] can do something it can't → this is a brand and legal risk; address immediately: call the partner, explain the issue directly, provide the corrected language, and reiterate the "redirect to [Company] for specifics" rule; if the pattern continues, consider whether the partnership should continue — a partner who consistently misrepresents the offering is creating liability

## Audit Log
Partner kit versions retained with approval dates. Enablement training completions logged. Partner misrepresentation incidents documented. Competitive claims reviewed before release.

## Deprecation
Retire when portfolio companies have a dedicated partner marketing function and a partner portal that manages enablement materials as a living content library.
