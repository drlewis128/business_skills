---
name: sales-case-study-builder
description: "Build ROI case studies and proof stories for MBL portfolio company sales teams. Use when the user says 'case study', 'build a case study', 'write a case study', 'create a case study', 'proof story', 'customer story', 'client story', 'success story', 'win story', 'reference story', 'customer reference', 'reference account', 'social proof', 'proof point', 'ROI story', 'ROI example', 'client result', 'customer result', 'employer result', 'agency result', 'acquisition result', 'Allevio case study', 'Column6 case study', 'HIVE case study', 'before and after', 'show me a real example', 'show me results', 'do you have any examples', 'do you have any proof', 'what results have you gotten', 'what have you done for similar clients', 'similar clients', 'similar employers', 'similar agencies', 'reference call', 'reference check', 'reference request', 'can I talk to a client', 'can I talk to a customer', 'what does success look like', 'success metrics', 'outcome story', 'testimonial', or 'client testimonial'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--audience <cfo|hr|buyer|seller>] [--action <build|share|reference>]"
---

# Sales Case Study Builder

Build ROI case studies and proof stories for MBL portfolio company sales teams — creating compelling, credible proof points that help prospects see themselves in the results. Prospects don't buy what we say about ourselves — they buy what we can prove happened for someone like them. A case study is only as powerful as its specificity: "a similar employer reduced their claims trend" is interesting; "a 180-employee self-insured manufacturer in Phoenix reduced their claims trend from 14% to 5% in Year 1" is a conversation the CFO wants to have.

## When to Use
- A prospect asks "do you have any examples of clients like us?"
- Building the proof section of a proposal
- Preparing for a CFO meeting where social proof matters
- A prospect requests a reference call with an existing client

## Case Study Framework

```
CASE STUDY STRUCTURE (5 elements):

  1. Situation (who they are; what the problem was)
  2. Pain (the specific challenge; in the client's words if available)
  3. Solution (what the entity delivered; key features used)
  4. Results (quantified; time-bounded; compared to baseline)
  5. Quote (optional; with client approval)
  
CONFIDENTIALITY RULES:

  ALLEVIO:
    Published case study (with client approval):
      Client may authorize: company name; industry; location; employee count (approximate or exact)
      Results require client written authorization before including employer name
      HIPAA: all results are employer-level aggregate only; no individual employee health data
      Entity CEO approves all Allevio case studies before use in sales
      
    Anonymous case study (no authorization required):
      Industry; geography (state or region); approximate employee count; aggregate results
      "A self-insured manufacturing employer in the Southwest with approximately 175-200 employees"
      "Claims trend reduced from [X]% to [Y]% in Year 1"
      No details that would allow identification of the employer
      HIPAA: aggregate results only — no individual employee outcomes; no individual health events
      
  COLUMN6:
    Published case study (with client approval):
      Agency name (if authorized); campaign type; industry vertical; results
      Client/advertiser is typically NOT named (agency confidentiality)
      Entity CEO approves all Column6 case studies before use in sales
      
    Anonymous case study:
      "A Tier 1 agency running CTV for a national retail brand"
      IVT result; delivery result; viewability; repeat IO rate
      Never include impression or spend data that could identify the campaign
      
  HIVE:
    HIVE case studies: acquisition terms are private
    Anonymous format only: "A producing royalty interest in the Uinta Basin, Utah; ~18 BOE/month"
    Seller outcomes not disclosed (price, terms, seller details are private)
    Matt Mathison reviews any HIVE deal reference before use
    
RESULTS THAT QUALIFY FOR A CASE STUDY:
  Allevio minimum results for a case study:
    ≥1 full year of data post-go-live (so claims trend is meaningful)
    Claims trend data confirmed (employer provided aggregate data for case study)
    Entity CEO has reviewed results for accuracy
    
  Column6 minimum results:
    ≥2 completed campaigns (shows repeatability)
    IVT; delivery; viewability data confirmed by ops team
    Repeat IO rate (client has done a second IO) preferred
    
  Results that can't be used:
    Individual employee outcomes — ever (Allevio HIPAA)
    Results from a client in active dispute with the entity
    Results that haven't been validated by entity CEO
    Speculative or projected results (only completed, measured results)
    
CASE STUDY LIBRARY:

  Allevio:
    Maintain: 3-5 anonymous case studies by industry (manufacturing; professional services; hospitality)
    Maintain: 1-2 named case studies (with client authorization; entity CEO file)
    Update: when new clients complete Year 1 with measurable results
    
  Column6:
    Maintain: 3-5 anonymous case studies by vertical (retail; auto; entertainment; CPG)
    Maintain: by campaign type (brand awareness CTV; targeted mobile; cross-platform)
    Update: after every campaign completion with results meeting threshold
    
REFERENCE CALL PROTOCOL:
  A prospect requests to speak with an existing client:
    Step 1: Do NOT immediately commit to providing a reference
    Step 2: Check with entity CEO — is there an approved reference client for this prospect type?
    Step 3: Contact the reference client BEFORE giving the prospect their contact info
    Step 4: Brief the reference client on: who they're talking to; what the prospect is focused on
    Step 5: Confirm the reference client is available and willing for this specific call
    Step 6: Connect with introduction email (AE introduces both parties)
    Entity CEO approves all reference client designations
    Never share a client's contact information without their explicit consent
```

## Output Format

```markdown
# Case Study — [Entity] | [Industry/Vertical] | [Date Approved]
**Type:** Anonymous / Named (authorized) | **Entity CEO approved:** [Date]

---

## Situation
[Industry; approximate size; geography; challenge context — no identifying details in anonymous version]

---

## The Challenge
[Their specific pain — stated in terms the next prospect can relate to]

---

## The Solution
[What was implemented; key features; timeline to go-live]

---

## Results
| Metric | Before | After | Timeframe |
|--------|--------|-------|-----------|
| Claims trend (Allevio) | [X]% | [Y]% | Year 1 |
| IVT rate (Column6) | [X]% | [Y]% | Campaign |
| Delivery guarantee met | Best effort | 100% guaranteed | Campaign |

---

## In Their Words (if authorized)
"[Client quote — requires explicit authorization before use]"

---

## Best for (use this case study when prospect is)
[Matching criteria: industry; size; pain type; audience]
```

## Output Contract
- Case study results are validated before they're used in sales — an unvalidated result ("we think we reduced their trend by around 30%") is not a case study; it is an anecdote; before any results go into a case study, entity CEO confirms the data is accurate, measured, and from a completed engagement; this matters because the prospect is being asked to make a purchasing decision based on these results — if the results are wrong and the prospect later discovers this, the entity loses credibility with the prospect and with any reference client whose results were misrepresented; Dr. Lewis enforces a case study approval gate: new case study draft → entity CEO reviews data accuracy → entity CEO signs off → filed in SharePoint → approved for sales use
- HIPAA controls every Allevio case study — even an anonymous case study can expose PHI if it's specific enough to identify the employer; "a 200-employee self-insured employer in Scottsdale AZ in the HVAC industry whose claims trend dropped from 14% to 5%" is probably specific enough to identify the employer to someone who knows them; Dr. Lewis applies the identification test to every case study before approving: could this description identify the employer to anyone who works in this industry in this market? If yes, make it more anonymous (broaden the geography; approximate the employee count; don't state the specific industry); the HIPAA risk in a case study isn't just about employee data — it's about the employer's healthcare financial data, which is sensitive and belongs to them
- HITL required: every case study → entity CEO approves accuracy and authorization status before sales use; named case study → written authorization from client before entity CEO approval; HIPAA check on Allevio case study → entity CEO and Dr. Lewis; Column6 case study → entity CEO confirms client confidentiality and data accuracy; HIVE deal reference → Matt Mathison reviews before use; reference client designation → entity CEO approves; reference call → entity CEO confirms reference client is willing and appropriate for this prospect; client contact shared → only after explicit consent; results dispute with client → case study suspended immediately until resolved

## System Dependencies
- **Reads from:** Completed deal records (entity CEO — confirmed results; post-go-live data); Allevio employer dashboard (aggregate claims trend post-Year 1; entity CEO provides); Column6 campaign results (ops team; entity CEO confirms); reference client list (entity CEO maintains); client authorization records (written authorization; SharePoint → [Entity] → Sales → Case-Studies → Authorization)
- **Writes to:** Case study library (SharePoint → [Entity] → Sales → Case-Studies → [Type] → [Industry/Vertical]); proposal proof section (sales-proposal-builder); sales rep case study briefing (which case studies to use for which prospect types); entity CEO case study approval records; reference call introduction emails; GHL (prospect: case study shared; date; reference call scheduled)
- **HITL Required:** Every case study → entity CEO approves accuracy; named case study → written client authorization + entity CEO; HIPAA check → Allevio all case studies; Column6 → entity CEO confirms client confidentiality; HIVE → Matt Mathison reviews; reference client designation → entity CEO; reference call → client willing and appropriate confirmed before prospect contact shared; results dispute → suspend case study immediately

## Test Cases
1. **Golden path:** Allevio rep asks for a case study for a 175-employee self-insured hospitality employer. Case study library: Anonymous — "A self-insured hospitality employer in the Mountain West with approximately 160-200 employees. Challenge: claims trend at 11% for 2 consecutive years. Solution: Allevio primary care access for full workforce. Results: Year 1 claims trend reduced to 4%; enrollment rate 78%; time-to-appointment average 1.2 days vs. prior 22-day PCP wait. Entity CEO confirmed data. HIPAA check passed: description is not specific enough to identify the employer." Rep uses in proposal Section 2 (Proof) as: "Here's what a comparable employer in your situation experienced in Year 1:" [table]. Prospect CFO: "Who is that employer?" Rep: "That's an anonymous reference — we protect our clients' confidentiality. If it would be helpful, I can explore whether there's a reference call available with a similar employer."
2. **Edge case:** Prospect is in a niche industry (one of three employers in the state in that category) and requests a case study in their industry. Dr. Lewis: "We don't have a case study at the industry level for this prospect — the category is too narrow and any reference would be identifiable. Use a cross-industry case study (similar employee size and claims challenge; different industry) and frame it as: 'We work across industries with self-insured employers in the 100-250 employee range — here's an example from a different industry with a very similar benefits challenge.' If the prospect pushes for in-industry proof, offer a reference call with the approved reference client if one exists and entity CEO has confirmed they're appropriate."
3. **Adversarial:** Rep asks to use a client's results that were shared in a renewal meeting ("They told us their claims went from 13% to 4% — can we use that in a case study?"). Dr. Lewis: "That result needs to go through the case study approval process before it's used in any sales material: (1) Entity CEO must verify the numbers — claims trend data shared verbally in a renewal meeting is not confirmed data for sales use until validated; (2) Allevio HIPAA: the employer's aggregate health outcomes data requires their authorization before we use it as a marketing proof point — verbal disclosure in a business meeting does not constitute authorization for marketing use; (3) Obtain written authorization from the employer: a simple email — 'We'd like to reference your Year 1 claims trend results (anonymous) in materials for prospective clients — are you comfortable with us citing these results in an anonymous case study?'; (4) If they authorize: entity CEO validates; Dr. Lewis HIPAA review; approved for library. Until then: this result is not in any case study or proposal."

## Audit Log
Case study approval records (all approved case studies; entity CEO sign-off; date; authorization status; SharePoint). Named case study authorization records (client written authorization; date; scope of use). HIPAA check records (Allevio case studies; Dr. Lewis + entity CEO review; date). Column6 client confidentiality records (entity CEO confirmed; date). HIVE deal reference records (Matt Mathison review; date). Reference client designation records (entity CEO approved; date; scope). Reference call records (prospect; reference client; AE introduction; date). Results dispute records (suspended case studies; client; status; resolution).

## Deprecation
Case study library reviewed annually — results that are >3 years old may need refresh or retirement. Retired when client relationship ends and authorization expires. Updated when entity CEO confirms new measurable results from existing clients. Allevio case study HIPAA review repeated if employer size or geography in the anonymous description becomes more identifiable over time.
