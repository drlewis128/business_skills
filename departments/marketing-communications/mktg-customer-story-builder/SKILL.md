---
name: mktg-customer-story-builder
description: "Build customer case studies and success stories for MBL Partners portfolio entities. Use when the user says 'case study', 'customer story', 'success story', 'customer success story', 'employer case study', 'agency case study', 'client story', 'client case study', 'proof point', 'customer proof', 'customer evidence', 'testimonial', 'customer testimonial', 'employer testimonial', 'agency testimonial', 'reference customer', 'customer reference', 'write a case study', 'build a case study', 'create a case study', 'case study for sales', 'sales proof', 'pipeline proof points', 'client outcome', 'show the results', 'before and after', 'customer ROI story', 'customer outcome story', 'how do we prove it works', or 'evidence that our product works'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--type <named|anonymous|aggregate>] [--action <build|review|publish|approve>]"
---

# Marketing Customer Story Builder

Build customer case studies and success stories for MBL Partners portfolio entities — creating credible, data-supported proof points that demonstrate entity value in the specific language of each market. Customer stories are the highest-converting sales content; a prospect who sees that an entity like theirs got a specific result from Allevio or Column6 converts faster than any product brochure. HIPAA governs every Allevio story; client permission governs every Column6 story.

## When to Use
- Building a new employer case study for Allevio sales
- Building a new agency case study for Column6
- Getting permission and creating a testimonial from a satisfied client
- Building an anonymous aggregate case study when named permission is not available

## Customer Story Framework

```
CASE STUDY TYPES (in order of proof power):

  TYPE 1 — NAMED CASE STUDY (highest credibility):
    Uses client name; specific data; direct quotes
    Requires: explicit written permission from client (employer/agency/landowner)
    Allevio: written employer permission required; Dr. Lewis HIPAA review; no PHI whatsoever — aggregate employer data only
    Column6: written agency (or advertiser) permission required; no client campaign data without permission
    HIVE: written landowner permission required for name; LP letters do not use individual landowner names
    
  TYPE 2 — ANONYMOUS CASE STUDY (strong credibility; no name):
    "A 150-employee Arizona manufacturing employer saw [X]% claim ratio reduction..."
    Does not require client permission for specific data (if truly anonymized)
    HIPAA (Allevio): anonymization must be genuine — if the employer can be identified from the description, it requires permission; Dr. Lewis tests anonymization ("if I tell my HR network this is a 150-employee AZ manufacturer in the West Valley, would they identify who it is?")
    Useful when: client is happy but won't give permission to be named; data is strong and the anonymization is genuine
    
  TYPE 3 — AGGREGATE STORY (lowest granularity; widest use):
    "Allevio employers see an average X% claim ratio improvement in year one [N=12 employers; 2024-2025]"
    No individual client identifiable
    Always HIPAA-compliant for Allevio (aggregate employer data)
    Useful for: all public marketing materials; no permission process required
    Trade-off: less specific = less compelling; use for broad claims; use Type 1/2 for deep proof

ALLEVIO CASE STUDY PROCESS:
  1. Identify candidate employer: employer who has seen measurable GRR improvement or care utilization gains
  2. Get permission: Dr. Lewis or Allevio CEO asks employer for written permission; offer: named (full story) or anonymous
  3. Dr. Lewis HIPAA review: review all data to be used:
     - Employer-aggregate data: permitted (claim ratio improvement %; care utilization %; cost avoidance $)
     - Individual employee data: prohibited (no names; no health conditions; no individual-level outcomes)
     - If data is sourced from AdvancedMD: Dr. Lewis confirms it is employer-aggregate, not member-level
  4. Draft: interview format (employer HR lead: what was the problem?; what did Allevio do?; what happened?); or data-driven (with aggregate stats)
  5. Review: employer reviews and approves their quote and any data attributed to them; Dr. Lewis HIPAA reviews final draft
  6. Publish: format for sales (PDF one-pager); website (if employer agrees to public use); email (as proof point)

COLUMN6 CASE STUDY PROCESS:
  1. Identify candidate agency: agency who has run successful campaigns; has strong VCR/IVT data
  2. Permission: Column6 commercial team asks agency; offer named or anonymous
  3. Agency campaign data: campaign performance data for that specific agency's campaigns requires written agency permission; Column6 self-serve data (Column6 own campaigns) requires no permission
  4. Draft: performance-first format (metrics lead; story supports); agency quote if permitted
  5. Review: agency reviews and approves; Column6 CEO reviews before publication
  6. Publish: one-pager for sales; website (if agency agrees to public use); conference presentation

QUOTE STANDARDS:
  Good quote: specific; personal; describes the result in the client's own language
    "Our care coordinator saved two of our employees from unnecessary ER visits in the first month. The claim savings alone paid for the program." — HR Director [named employer or anonymous title]
  Bad quote: generic; could have been written by marketing
    "Allevio is a great partner and we highly recommend them."
  Process: marketing drafts a quote based on the interview; client approves and can modify; client name and title used with permission only
```

## Output Format

```markdown
# Case Study — [Entity] — [Client Type] — [Date]
**Type:** Named / Anonymous / Aggregate
**Client permission:** Written permission on file / N/A (aggregate)
**HIPAA review:** Dr. Lewis | **Date:** [Date] | ✅ Approved

---

# [Headline: Client type + result + timeframe]
*Example: "Arizona Manufacturer Reduces Claim Ratio 14% in Year One with Allevio Care Coordination"*

---

## The Challenge
[Problem the client had before the entity; 2-3 sentences in their language]

---

## The Approach
[What the entity did; care coordinator model; agency campaign strategy; etc.]

---

## The Results
| Metric | Before | After | Change |
|--------|--------|-------|--------|
| [Claim ratio] | [X%] | [Y%] | [-Z%] |

---

## In Their Own Words
> "[Client quote — specific; personal; approved by client]"
> — [Name (if permitted) / HR Director (anonymous) / Job Title, Company type]

---

## About [Entity]
[2-sentence entity description; brand voice standards]

---

**HIPAA COMPLIANCE (Allevio only):**
Data type: Employer-aggregate ✅ | No PHI ✅ | Dr. Lewis sign-off: [Date] ✅
```

## Output Contract
- Written permission is required before any client name or client-specific data is used — "they said it was fine on the phone" is not permission; Dr. Lewis requires a written permission record (email confirmation minimum; signed permission form preferred) before any client name or data is used in any external-facing case study or testimonial; the permission record specifies: what can be used (name; data; quote; logo); in which contexts (sales materials; website; press; events); Dr. Lewis keeps permission records in SharePoint; no client name goes into any marketing material without a record in this file
- Dr. Lewis HIPAA reviews every Allevio case study before use — even an anonymous case study about an employer; the anonymization test is "if someone in the Allevio employer network read this, could they identify which employer this is?"; a "150-person manufacturing company in the East Valley" is identifiable if there is only one such employer in the Allevio portfolio; Dr. Lewis knows the portfolio and runs the test; if there is doubt about anonymization, the case study becomes aggregate (no employer type/size/location) or requires employer permission
- The aggregate story is always compliant and never sufficient alone — the aggregate claim ("our employers see X% improvement") is always HIPAA-compliant and requires no permission; it is the foundation of all Allevio marketing claims; but it is also the least convincing proof point; a prospect who hears "our employers average 12% claim improvement" wants to know: which employers?; same size as mine?; same industry?; the case study ladder is: aggregate (always available) → anonymous (most clients) → named (best proof); Dr. Lewis builds all three levels for Allevio so sales has proof for every prospect skepticism level
- HITL required: client permission → Dr. Lewis or entity CEO obtains; Dr. Lewis HIPAA reviews every Allevio case study before use; client quote approval → client approves their own quote before publication; entity CEO approves all case studies before publication; Column6 agency case study → agency permission + Column6 CEO; case studies on website → entity CEO approves public placement; aggregate data source → Dr. Lewis confirms data is truly employer-aggregate (not member-level)

## System Dependencies
- **Reads from:** mktg-messaging-matrix (case study must demonstrate L3 claims); mktg-positioning-architect (case study addresses specific competitive differentiators); cs-allevio-qbr (employer satisfaction data — identifies case study candidates); cs-column6-qbr (agency satisfaction data — identifies case study candidates)
- **Writes to:** Case study library (SharePoint → Marketing → Case Studies → [Entity]); sales enablement folder (SharePoint → [Entity] → Sales → Proof Points); website (if public placement approved); email campaign content (as proof point); HIPAA review records (Allevio — permanent); client permission records (permanent)
- **HITL Required:** Client permission → Dr. Lewis or entity CEO; HIPAA review → Dr. Lewis (all Allevio case studies); client quote approval → client; entity CEO approval → all case studies; website placement → entity CEO; aggregate data source confirmation → Dr. Lewis (Allevio)

## Test Cases
1. **Golden path:** Allevio employer case study (anonymous). A 185-employee Arizona distribution company saw care coordinator utilization of 28% in year 1 (industry EAP average: 6%). ER visit reduction: 3 preventable ER visits avoided (aggregate; employer-level data from AdvancedMD — employer-aggregate, not member-level). Dr. Lewis HIPAA review: employer-aggregate data; no member-level data; anonymization test: "185-employee distribution company in AZ" — there are multiple in the Allevio employer portfolio; anonymization passes. Quote (from HR Director — anonymous): "Our employees are actually using this program. That alone was worth it. The ER cost savings were a bonus." HR Director approved quote. Entity CEO approves case study. Published in sales library as anonymous PDF.
2. **Edge case:** Allevio employer who gave permission for a named case study is now up for contract renewal and requests the case study be taken down → Dr. Lewis: "We honor the request — take the case study down from any public placements (website; press materials) immediately. We can keep it in the sales library with a note that it requires internal use only and the employer is no longer publicly available for reference. Update the permission record to reflect the change in scope. If we need a replacement public case study, I'll work with the Allevio CEO to identify the next candidate."
3. **Adversarial:** Column6 commercial team publishes a case study with an agency's campaign data without getting written permission, claiming the agency "told them verbally it was fine" → Dr. Lewis: "Take it down now. Verbal permission is not sufficient — and in this case, it creates a contract issue (client data confidentiality) and a relationship risk (the agency may not remember saying 'it was fine'). I need to: (1) remove the case study from all channels immediately; (2) contact the agency and explain what happened; (3) ask for written permission retroactively or apologize for using the data without it; (4) document this as a permission process failure; (5) restrict case study publication to Dr. Lewis or Column6 CEO authorized releases with written permission on file. This is a THRIVE Integrity issue."

## Audit Log
Client permission records retained permanently (signed or email confirmation). HIPAA review records for all Allevio case studies (permanent). Client quote approval records. Entity CEO approval records. Case study version history. Public placement records (what was placed where and when). Retraction records (if a case study is withdrawn). Anonymization test records (Dr. Lewis Allevio review).

## Deprecation
Case study library reviewed annually. Case studies older than 3 years reviewed for continued accuracy. HIPAA review standards updated when HIPAA regulations change. Permission forms updated when legal requirements change. Case studies deprecated when the data is outdated or the client requests removal.
