---
name: sales-pain-mapper
description: "Map prospect pain points to entity solutions for MBL portfolio company sales teams. Use when the user says 'pain point', 'pain mapping', 'pain map', 'map the pain', 'prospect pain', 'customer pain', 'identify pain', 'what is their pain', 'what problem do they have', 'pain to solution', 'pain to value', 'value proposition mapping', 'solution mapping', 'map solution to pain', 'connect pain to solution', 'connect problem to solution', 'what do they care about', 'what is their problem', 'their problem', 'employer problem', 'agency problem', 'Allevio pain', 'Column6 pain', 'HIVE pain', 'healthcare cost pain', 'benefits cost pain', 'claims cost pain', 'employee access pain', 'CTV performance pain', 'IVT pain', 'viewability pain', 'delivery pain', 'CPM pain', 'mineral owner pain', 'liquidity pain', 'estate pain', 'business case', 'value case', 'use case', 'make the case', 'justify the purchase', 'justify the investment', 'ROI case', 'cost of inaction', 'what happens if they do nothing', 'status quo cost', or 'pain severity'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--pain <cost|access|quality|liquidity|other>] [--action <map|severity|solution|case>]"
---

# Sales Pain Mapper

Map prospect pain points to entity solutions for MBL portfolio company sales teams — identifying the specific pain, quantifying its severity, and connecting it to the entity's value proposition in a way that makes the solution feel inevitable. Pain mapping converts a conversation about features into a conversation about consequences. The employer doesn't buy primary care access — they buy relief from the cost trend that is threatening their margins.

## When to Use
- After a discovery call — structuring what you learned about the prospect's pain
- Building a proposal that leads with their pain in their words
- Coaching a rep who is pitching features instead of solving problems
- Preparing the executive summary for a CFO meeting

## Pain Mapping Framework

```
PAIN MAPPING DIMENSIONS:
  1. Pain identification: what specifically is the problem?
  2. Pain severity: how bad is it? What happens if it's not solved?
  3. Pain urgency: why do they need to solve it now?
  4. Pain owner: who feels this pain most acutely? Who is accountable for solving it?
  5. Solution map: how does the entity's solution directly address this specific pain?
  6. Cost of inaction: what is the cost (financial; operational; strategic) of NOT solving it?
  
ALLEVIO PAIN CATALOG:

  Primary pain — Healthcare cost trend:
    Manifestation: "Our healthcare costs have gone up 8-15%/year for the last 3 years"
    Owner: CFO (budget owner) + HR Director (benefits owner)
    Severity quantifier: "At your current trend, your Year 2 healthcare cost is $[X] — $[Y] more than today"
    Solution map: "Allevio reduces claims trend by 30-40% in Year 1 by improving primary care access, 
      which intercepts downstream specialist referrals that drive cost"
    Cost of inaction: "At current trend, Year 3 cost is [X+Y+Z] — and that's before any major health event"
    HIPAA: cost trend is employer-level aggregate; no individual employee cost references
    
  Secondary pain — Employee primary care access:
    Manifestation: "Employees can't get a PCP appointment for 3-5 weeks — they end up in urgent care"
    Owner: HR Director (employee experience; retention)
    Severity quantifier: urgent care visits cost 3-5× a primary care visit
    Solution map: "Allevio provides same-day/next-day primary care — employees get care when they need it"
    Cost of inaction: "Delayed care leads to more severe conditions; higher downstream cost; employee frustration"
    
  Tertiary pain — Benefits competitiveness:
    Manifestation: "We're struggling to attract and retain talent; our benefits aren't competitive"
    Owner: CEO / HR Director (people strategy)
    Solution map: "Allevio is a differentiating benefit — employees with accessible primary care are healthier 
      and more likely to stay; it's a retention story as much as a cost story"
    Cost of inaction: "Turnover cost is 1.5-2× annual salary per replaced employee"
    
COLUMN6 PAIN CATALOG:

  Primary pain — IVT / Inventory quality:
    Manifestation: "We're not confident in the quality of our CTV supply — we think we're getting IVT"
    Owner: media buyer (campaign performance) + VP media (client satisfaction)
    Severity quantifier: "At 8-12% IVT (open exchange benchmark), 1 in 10 impressions never delivered"
    Solution map: "Column6's measured IVT is [X]% — here's how we deliver that consistently"
    Cost of inaction: "At current IVT rates, your client is paying CPM for impressions that never reached a viewer"
    
  Secondary pain — Delivery guarantee:
    Manifestation: "Our current supply is 'best effort' — we've underdelivered on campaigns and had to explain it to clients"
    Owner: media buyer (delivery accountability)
    Solution map: "Column6 guarantees 100% delivery — if we underdeliver >10%, we make good on the next IO"
    Cost of inaction: "One underdelivered campaign can cost you a client relationship"
    
  Tertiary pain — CPM efficiency:
    Manifestation: "Our client is asking for lower CPMs — we need to find comparable quality at better rates"
    Owner: media buyer (budget efficiency) + VP media (client margin)
    Solution map: "Our effective CPM (adjusted for IVT) is [X] — often competitive with open exchange once you account for what actually delivered"
    Cost of inaction: "Chasing lower CPMs on open exchange can reduce cost but increase IVT — net effective CPM may not improve"
    
HIVE PAIN CATALOG:

  Primary pain — Liquidity:
    Manifestation: "I inherited these mineral rights and I don't understand them — I'd rather have the cash"
    Owner: heir / estate beneficiary / individual mineral owner
    Solution map: "HIVE provides a fair-value acquisition that converts your royalty interest to a lump sum"
    Cost of inaction: "Royalty interests generate recurring income but require ongoing monitoring and management — for someone who doesn't want that relationship, the cost is complexity and uncertainty"
    
  Secondary pain — Estate complexity:
    Manifestation: "There are 5 siblings and none of us agree on what to do with dad's oil rights"
    Owner: estate attorney / multiple heirs
    Solution map: "HIVE buys the interest from the estate, simplifying the distribution — everyone gets cash"
    Cost of inaction: "Unresolved estate assets create ongoing family friction and legal fees"
    
PAIN SEVERITY RATING:
  Critical (3): actively causing financial loss; C-Suite is demanding a solution; deadline exists
  High (2): acknowledged problem; budget exists; decision is a priority this quarter
  Medium (1): recognized as an issue; no active deadline; "nice to solve"
  Low (0): not yet seeing the pain; proactive value-selling needed
  
  Target: critical (3) or high (2) pain deals for pipeline focus
  Medium pain (1): keep in nurture; revisit when pain escalates or compelling event appears
  Low pain (0): disqualify or place in long-term nurture only
```

## Output Format

```markdown
# Pain Map — [Prospect Name] | [Entity] | [Date]
**AE:** [Name] | **Champion:** [Name] | **Economic Buyer:** [Name]

---

## Pain Summary
| Pain | Owner | Severity (0-3) | Quantifier | Column6/Allevio/HIVE Solution |
|------|-------|----------------|------------|-------------------------------|
| [Primary pain] | [Name + title] | [N] | [$X/year or specific metric] | [Solution in 1 sentence] |
| [Secondary pain] | [Name + title] | [N] | [N] | [Solution in 1 sentence] |

---

## Cost of Inaction
[What happens if they don't solve the primary pain in the next 12 months — quantified where possible]

---

## Pain in Their Words (use in proposal Section 1)
"[Exact quote from discovery notes — the language they used to describe their problem]"

---

## Value Proposition Statement (for this prospect)
[1-2 sentences: connects their specific pain to the entity's specific solution — use their language]
```

## Output Contract
- The pain map uses their words, not our positioning language — a proposal that says "Allevio's integrated primary care model delivers measurable healthcare cost trend reduction through preventive care pathways" is written by a vendor; a proposal that says "You told us your claims have gone up 12% for three straight years and your CFO has given you two renewals to fix it — here's exactly how Allevio addresses that" is written for a customer; the difference is the difference between a proposal that gets read and a proposal that gets forwarded to the CFO with a note saying "this is exactly what we're trying to solve"; Dr. Lewis coaches reps to open every proposal with a quote from their discovery notes — the prospect's actual words about their problem
- Pain severity determines pipeline priority — a rep with 15 active Allevio opportunities should be spending 70% of their time on the 3-5 with Critical or High severity pain (3 or 2) and managing the Medium pain deals passively (nurture sequence; check-in calls); a rep who spreads time equally across all 15 opportunities will have 15 mediocre relationships and 0 wins; the pain map's severity rating is the input to time allocation; Dr. Lewis asks for pain severity in every pipeline review — "is the pain at this employer Critical, High, or Medium? If Medium, what's in the pipeline that's actually urgent?"
- HITL required: Allevio pain maps → employer-level pain only (no individual employee health conditions; no PHI); HIPAA check — if rep has notes referencing individual employee health as a pain source → Dr. Lewis reviews and expunges; HIVE pain maps → Dr. Lewis reviews for appropriate seller motivation characterization before Matt Mathison briefing; cost of inaction calculations → entity CEO spot-checks financial calculations before they're included in proposals; pain severity ratings influence pipeline priority and quota coverage — entity CEO aware of Critical/High distribution in the pipeline

## System Dependencies
- **Reads from:** Discovery notes (GHL — MEDDPICCC "Identify Pain" dimension; prospect quotes; financial data shared); ICP definitions (pain categories by entity); competitive battlecards (pain that competitor doesn't address); win records (what pain types have produced wins)
- **Writes to:** GHL (pain map fields; severity rating; cost of inaction; key quote); proposal document (Section 1 — their situation; uses pain map output); champion arming materials (executive summary — CFO pain framing); pipeline review (pain severity by deal)
- **HITL Required:** Allevio pain map → HIPAA check (employer-level only; no individual health); HIVE pain map → Dr. Lewis reviews before Matt Mathison briefing; cost of inaction calculations → entity CEO spot-checks; pain severity → entity CEO aware of Critical/High deal distribution; PHI in pain notes → Dr. Lewis expunges + entity CEO notification

## Test Cases
1. **Golden path:** 200-employee Allevio employer. Discovery: HR Director: "We've had a 14% healthcare cost increase for 2 years running. Our CFO told me last month: 'You have one more renewal to get this under control or we're cutting the benefit.'" Pain map: Primary = healthcare cost trend; Owner = CFO (budget) + HR Director (accountable); Severity = 3 (Critical — CFO ultimatum; next renewal is compelling event); Quantifier = "At current trend, Year 3 cost is $X" [calculated]; Solution = "Allevio reduces claims trend 30-40% Year 1 through primary care access"; Cost of inaction = "At current rate: Year 3 cost is $X more; CFO has signaled the benefit may be cut — which creates a retention risk of $Y in turnover cost per employee lost." Proposal opens with: "You told us your healthcare costs have increased 14% for two years running and your CFO has given you one renewal to fix it. Here's exactly how Allevio addresses that."
2. **Edge case:** Rep's discovery notes read: "HR Director said their employee John has diabetes and it's driving their claims" → Dr. Lewis: "That note cannot be used in the pain map or any sales material — 'employee John has diabetes' is PHI in an employer context that creates HIPAA exposure. The pain is real: high-utilization employees with chronic conditions drive claims costs. But the way to state it in any sales material is: 'Employer reports that chronic condition management is a significant driver of their claims cost trend.' No individual names; no specific diagnoses. Expunge the specific employee reference from the GHL note immediately; replace with the employer-level aggregate framing. Log this as a near-miss. Coach the rep: discovery notes are stored in GHL; PHI cannot be in GHL."
3. **Adversarial:** Rep says "The employer doesn't have an obvious pain — they just want to see what Allevio does" → Dr. Lewis: "Curiosity isn't pain. An employer who is curious about Allevio but has no specific problem they need to solve will not buy. Before investing more time: (1) Ask directly: 'Help me understand what's driving your interest — is there a specific benefits challenge you're working on?' (2) If they can't name a challenge: 'When is your benefits renewal?' (2a) If renewal is in 6 months: there's a compelling event; dig for pain. (2b) If renewal is in 14 months: there's no urgency; put in nurture sequence; follow up in 10 months. (3) If they genuinely don't have a pain: 'It sounds like your benefits program is working well right now — I'd love to check back in around your next renewal cycle. Would it be okay if I reached out in [month]?' Qualify down, not out — 14-month nurture is not a loss, it's appropriate timing."

## Audit Log
Pain map records (all Stage 3+ deals; GHL + SharePoint). PHI near-miss records (individual employee health in discovery notes; Dr. Lewis review; expunge; entity CEO notification). Pain severity distribution records (pipeline review — Critical/High/Medium by entity; by rep). Cost of inaction records (entity CEO spot-checks; date; approval). HIVE pain map records (Dr. Lewis review; Matt Mathison briefing).

## Deprecation
Pain catalog reviewed when ICP or entity value proposition changes. Severity rating criteria reviewed when win rate patterns change. Cost of inaction calculations reviewed when Allevio aggregate outcome benchmarks update. HIPAA guidance in pain mapping reviewed when HHS guidance changes.
