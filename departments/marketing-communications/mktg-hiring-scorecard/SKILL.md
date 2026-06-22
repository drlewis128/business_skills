---
name: mktg-hiring-scorecard
description: "Build hiring scorecards for marketing roles at MBL Partners portfolio entities. Use when the user says 'hiring scorecard', 'marketing hiring', 'hire a marketer', 'marketing job description', 'marketing job posting', 'hire marketing', 'marketing role', 'marketing hire', 'evaluate a marketing candidate', 'interview a marketer', 'marketing interview questions', 'marketing interview scorecard', 'content marketing hire', 'SEO hire', 'demand gen hire', 'marketing manager hire', 'marketing director hire', 'marketing lead', 'first marketing hire', 'marketing team', 'marketing headcount', 'marketing contractor', 'marketing agency hire', 'fractional CMO', 'marketing coordinator', 'email marketing hire', 'social media hire', 'brand manager hire', 'growth marketer hire', 'marketing assessment', 'marketing candidate evaluation', or 'who should we hire for marketing'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--role <coordinator|manager|director|specialist>] [--type <full-time|contractor|fractional>] [--action <build|evaluate|compare>]"
---

# Marketing Hiring Scorecard

Build structured hiring scorecards for marketing roles at MBL Partners portfolio entities — defining role requirements, interview criteria, and candidate evaluation frameworks that identify marketers who can execute at portfolio company scale with HIPAA awareness (Allevio), media industry expertise (Column6), and B2B healthcare or energy sector knowledge as required. Wrong marketing hires at portfolio company scale are expensive; a structured scorecard prevents "I liked them in the interview" from becoming the hiring criterion.

## When to Use
- Defining requirements for a new marketing hire at a portfolio entity
- Building an interview scorecard for a marketing candidate
- Evaluating whether to hire full-time vs. contractor vs. fractional
- Comparing multiple candidates for the same marketing role

## Hiring Framework

```
MARKETING STAFFING MODELS BY ENTITY:

  ALLEVIO:
    Current model: North Vista embedded support (Tier 2); Dr. Lewis strategic oversight
    First hire (if entity reaches Tier 1 internal marketing): Marketing Coordinator or Manager
    Required: HIPAA awareness (can be trained; but must demonstrate willingness to learn and follow process); Arizona employer market knowledge helpful; B2B healthcare services experience a plus
    Prohibited without Dr. Lewis approval: any contractor or vendor who will handle Allevio employer or member contact data without BAA review
    
  COLUMN6:
    Current model: North Vista embedded support (Tier 2); Dr. Lewis strategic oversight
    First hire: Marketing Manager with programmatic/CTV experience
    Required: understands agency buying model; CTV/programmatic ecosystem; data-driven marketing
    Strong preference: AdTech industry background; agency-side experience a plus (understands the buyer)
    
  HIVE PARTNERS:
    Current model: North Vista embedded support (Tier 2); minimal internal marketing
    First hire (if warranted): Marketing Coordinator who can handle stakeholder communications (landowner + LP letters) under Dr. Lewis's direction
    
  MBL PARTNERS:
    Current model: Dr. Lewis directs; North Vista executes; no internal MBL marketing hire planned

ROLE REQUIREMENTS BY LEVEL:

  MARKETING COORDINATOR:
    Core skills: writing; project management; social media; email platform; content scheduling
    Experience: 1-3 years; B2B preferred
    Not required: strategy; budget management; vendor management
    Red flags: no writing samples; claims "marketing is all about creativity"; cannot explain UTM parameters
    
  MARKETING MANAGER:
    Core skills: campaign management; B2B demand generation; CRM (GoHighLevel or equivalent); analytics; content strategy
    Experience: 3-7 years; B2B required; healthcare or adtech preferred for Allevio/Column6
    Budget management: should have managed $25K-$250K marketing budget
    Red flags: no documented results; cannot explain pipeline contribution; all experience is B2C
    
  MARKETING DIRECTOR / SENIOR LEADER:
    Core skills: all manager skills + vendor management; team leadership; executive communication; board-ready reporting
    Experience: 7+ years; category experience required (healthcare or adtech); managed a marketing team
    Budget: $250K+ budget management experience
    Red flags: no revenue attribution data; can't explain what marketing contributed to pipeline

UNIVERSAL SCORECARD DIMENSIONS (rate 1-5):
  1. Writing Quality: clear, concise, audience-specific; evidence from samples
  2. Data Literacy: can explain a funnel; knows conversion rate; can interpret a GA4 report
  3. B2B Acumen: understands the difference between MQL and SQL; knows a B2B sales cycle
  4. Platform Knowledge: CRM; email; analytics; social — can demonstrate hands-on
  5. Strategic Thinking: can explain why a campaign worked or didn't; problem-solution framing
  6. HIPAA/Compliance Readiness (Allevio only): asks the right questions about what they can and can't use; willing to operate within constraints; doesn't brush off compliance
  7. Entity-Specific Fit: AdTech for Column6; healthcare services for Allevio; energy sector for HIVE
  8. Cultural Fit: THRIVE values — especially Truth (will they tell leadership bad news?) and Hustle (pace and urgency)

INTERVIEW STRUCTURE:
  Round 1 (phone screen, 30 min): career narrative; motivation; basic platform knowledge
  Round 2 (work sample, 60 min): candidate submits: (a) write a LinkedIn post for the entity; (b) explain how you'd structure a content calendar for Q1; (c) present a campaign result you're proud of
  Round 3 (panel, 60 min): Dr. Lewis + entity CEO; scenario questions; culture assessment
  Offer: entity CEO extends; Dr. Lewis reviews compensation for market alignment
```

## Output Format

```markdown
# Marketing Hiring Scorecard — [Entity] — [Role] — [Candidate Name]
**Interviewer(s):** | **Date:**

---

## Candidate Summary
**Name:** | **Role applied for:** | **Years experience:** | **Recommended level:**

---

## Dimension Scores (1=Poor / 3=Meets / 5=Exceeds)

| Dimension | Score (1-5) | Evidence / Notes |
|-----------|------------|-----------------|
| 1. Writing quality | | [Sample reviewed?] |
| 2. Data literacy | | |
| 3. B2B acumen | | |
| 4. Platform knowledge | | |
| 5. Strategic thinking | | |
| 6. HIPAA/compliance (Allevio) | | N/A if not Allevio |
| 7. Entity-specific fit | | |
| 8. THRIVE / cultural fit | | |

**Total score:** /40 | **Threshold to advance:** 30/40 (75%)

---

## Work Sample Assessment
- [ ] LinkedIn post: [quality rating]
- [ ] Content calendar: [quality rating]
- [ ] Campaign result presentation: [quality rating]

---

## Red Flags Noted
[List any; none = confirm explicitly]

---

## Recommendation
**Hire / No hire / Second round** | **If hire: full-time / contractor / fractional**
**Compensation range (Dr. Lewis reviews):**
```

## Output Contract
- Work samples are mandatory before any marketing hire — a marketing candidate who cannot produce a competent LinkedIn post or explain a past campaign result in a 60-minute work sample session is not ready for the role regardless of how good their interview was; Dr. Lewis requires work samples for every marketing hire at any entity; the work sample session reveals whether the candidate's verbal confidence in the interview matches their actual ability to execute; "I haven't done that format before" is an acceptable answer if followed by a genuine attempt; a refusal to do a work sample is a no-hire signal
- HIPAA readiness is scored for Allevio regardless of how early the role is — a marketing coordinator at Allevio will touch marketing processes that have HIPAA implications; a candidate who treats compliance as a bureaucratic inconvenience rather than a professional responsibility is a risk; Dr. Lewis looks for candidates who ask: "What are the HIPAA constraints I'll need to work within?" rather than needing to be told; HIPAA can be trained; willingness to operate within constraints cannot
- Reference checks are not optional — Dr. Lewis requires two reference checks before any marketing hire at any portfolio entity; references must be former managers, not peers or direct reports; the reference question that matters most: "Would you re-hire this person for a similar role?"; a reference who hedges on that question is a signal; Dr. Lewis conducts reference checks personally for any marketing hire above coordinator level
- HITL required: final hire decision → entity CEO + Dr. Lewis; compensation → Dr. Lewis reviews for market alignment; Allevio contractor or vendor hire with data access → Dr. Lewis HIPAA review before offer; work sample scoring → interviewer documents scores before group discussion to prevent anchoring; MBL Partners marketing hire (if any) → Matt Mathison aware

## System Dependencies
- **Reads from:** hr-hiring-scorecard (general hiring process template — marketing scorecard is entity-specific adaptation); mktg-marketing-ops-manager (HIPAA tool access requirements for any marketing hire handling Allevio data); mktg-north-vista-brand-manager (North Vista tier assessment — informs whether internal hire is needed yet)
- **Writes to:** Candidate evaluation records (SharePoint → [Entity] → HR → Marketing → Hiring → [Role] → [Candidate]); reference check records; final hire decision documentation; compensation offer records
- **HITL Required:** Final hire → entity CEO + Dr. Lewis; compensation → Dr. Lewis reviews; Allevio data access → Dr. Lewis HIPAA; reference checks → Dr. Lewis for manager-level+; MBL Partners hire → Matt Mathison aware

## Test Cases
1. **Golden path:** Allevio Marketing Coordinator hire. Round 1: candidate has 2 years of B2B SaaS marketing; explains UTM parameters clearly; asks "What compliance standards apply to healthcare marketing?" — positive HIPAA readiness signal. Round 2 work sample: LinkedIn post is clear and employer-focused (not member-focused — good instinct); content calendar includes employer-facing content themes; past campaign: email nurture that improved open rate from 18% to 29%. Scores: writing 4; data 3; B2B 4; platforms 3; strategy 3; HIPAA 4; entity fit 3; THRIVE 4 = 28/40. Passes threshold. Reference: former manager — "Yes, I would absolutely re-hire her; she's thorough and asks good questions." Dr. Lewis reviews compensation. Offer extended by Allevio CEO.
2. **Edge case:** Entity CEO wants to hire a marketing director they met at a conference before the scorecard process → Dr. Lewis: "I strongly recommend we run the full scorecard process before extending an offer — even if you're confident in the candidate. The work sample and structured scoring protect both parties: it confirms the candidate can do the job and creates documentation for the decision. If they're as strong as you think, they'll sail through the work sample and we'll make the offer with confidence. If they struggle, we've learned something important. I'll structure the work sample to respect their time (60 minutes) and run the panel efficiently. Let's not skip a step that protects the entity."
3. **Adversarial:** A marketing candidate provides work samples from a previous employer that include client campaign data and competitor analysis reports → Dr. Lewis: "I'm flagging a potential confidentiality issue. Work samples that include proprietary client data, competitive intelligence, or internal strategy documents from a former employer may have been taken without authorization. Before we use these samples in our evaluation process or ask the candidate questions about them, I'll: (1) ask the candidate if they had authorization to share this material; (2) if they did not — or if they're unsure — set those samples aside and ask for alternative samples; (3) note this for reference check: does this candidate have good judgment about information confidentiality? If they took client data from a previous employer without authorization, that's a THRIVE Integrity failure that matters for a marketing role at Allevio or Column6."

## Audit Log
Candidate evaluation records retained (all scored scorecards). Reference check records. Final hire decision documentation. Compensation offer records. Work sample records (with HIPAA awareness: no PHI in any marketing work samples). Scorecard version history.

## Deprecation
Scorecard reviewed annually. Role-level criteria updated when entity marketing function matures. HIPAA readiness criteria updated when HIPAA regulations change. Compensation benchmarks updated annually against market data.
