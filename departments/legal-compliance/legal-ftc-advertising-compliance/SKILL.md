---
name: legal-ftc-advertising-compliance
description: "Ensure Column6 advertising and marketing practices comply with FTC guidelines and IAB standards. Use when the user says 'FTC compliance', 'advertising compliance', 'FTC guidelines', 'endorsement disclosure', 'influencer marketing', 'advertising claims', 'CAN-SPAM', 'email marketing compliance', 'TCPA', 'text message marketing', 'advertising standards', 'IAB compliance', 'programmatic compliance', 'ad fraud', 'made in USA claims', 'comparative advertising', 'deceptive advertising', 'Column6 compliance', 'CTV advertising compliance', 'ad disclosure', or 'marketing compliance'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity column6] [--channel <ctv|programmatic|social|email|sms>] [--action <review|assess|advise>] [--area <ftc|can-spam|tcpa|iab|state-law>]"
---

# FTC Advertising Compliance

Ensure Column6/Siprocal's advertising and marketing operations comply with FTC guidelines, IAB standards, CAN-SPAM, TCPA, and applicable state advertising laws — protecting the company from regulatory enforcement, advertiser disputes, and platform deactivation. FTC advertising enforcement has accelerated: fines for deceptive advertising reach $51,744 per day per violation; a single rogue ad campaign that makes unsubstantiated claims can trigger an FTC investigation that consumes executive time and generates press coverage that damages advertiser relationships. Dr. Lewis reviews new advertising programs and products against applicable standards and escalates to advertising counsel for complex questions.

## When to Use
- Column6 is launching a new ad format, product, or campaign category
- A client campaign makes performance claims that need review
- Column6 or a client is using influencer marketing or native advertising
- Email or SMS marketing campaigns are being deployed
- An IAB standard or certification is being evaluated
- An advertiser or agency raises a compliance question

## FTC Advertising Compliance Framework

```
CORE FTC STANDARD — DECEPTIVE ADVERTISING:
  Deceptive = a representation, omission, or practice that is likely to mislead a reasonable consumer
  AND is material to the consumer's purchasing decision
  
  Key FTC requirements:
    1. Advertising claims must be truthful and not misleading
    2. Advertising claims must be substantiated BEFORE they are made
       (For objective claims — "reduces pain 50%" — requires competent and reliable evidence)
       (For subjective claims — "tastes great" — lower bar, but still cannot be false)
    3. Material connections must be disclosed (endorsements, paid placements)
    4. No bait-and-switch tactics
    5. Free trial offers must clearly disclose all material terms

ENDORSEMENT AND TESTIMONIAL GUIDELINES (FTC 16 CFR Part 255):
  When disclosure is required:
    Any connection between the endorser and the advertiser that could affect credibility:
      Payment (cash, free product, commission, equity)
      Employment relationship
      Sweepstakes/contest entry
      Family relationship
  Disclosure requirements:
    "Clear and conspicuous" — not buried in fine print; in the visual field; not just a hashtag
    For social media: #ad; #paid; "paid partnership with [Brand]" (not just #sp or #ambassador)
    For CTV/video: On-screen text during the endorsement, not just at end of ad
  Column6 context: If Column6 helps clients run influencer campaigns,
    ensure the campaign brief requires disclosure compliance
    Column6 liability: FTC can hold the advertiser AND the platform responsible for disclosure failures
    
NATIVE ADVERTISING AND SPONSORED CONTENT:
  FTC guidance: Consumers must be able to distinguish advertising from editorial content
  Disclosure for native ads: "Advertisement"; "Sponsored"; "Sponsored Content"; "Paid Post"
  NOT acceptable: "Promoted by [Brand]" without additional context; no disclosure at all
  CTV native content: Sponsored segments must be clearly labeled
  IAB Native Advertising Playbook compliance for Column6's CTV native offering
  
PERFORMANCE CLAIMS IN ADVERTISING:
  If Column6 or a client makes performance claims in ads:
    "Proven to increase sales 30%": Must have competent and reliable evidence (typically a study)
    Earnings claims: FTC scrutinizes heavily — must reflect actual typical results, not best results
    "Results may vary" does NOT eliminate the deceptive claim if typical results are not disclosed
    
CAN-SPAM ACT (email marketing):
  Applies to: All commercial email (B2C and B2B)
  Requirements:
    □ No false or misleading header information (From, To, Reply-To, routing)
    □ No deceptive subject lines
    □ Identify the message as an advertisement (must be clear and conspicuous)
    □ Include physical postal address of the sender
    □ Provide a clear and conspicuous opt-out mechanism
    □ Honor opt-out requests within 10 business days
    □ Do not sell or transfer the opt-out list
  Penalties: Up to $51,744 per email in violation (each recipient = each violation)
  
TCPA (Telephone Consumer Protection Act — SMS/text marketing):
  TCPA is the most actively litigated consumer protection statute in the US
  Key rule: Cannot send automated text messages to a cell phone without PRIOR EXPRESS WRITTEN CONSENT
    Consent cannot be a condition of purchase
    Consent must be for the specific type of message (transactional vs. marketing)
    Double opt-in is strongly recommended (text back "YES" to confirm)
  Opt-out: Must honor "STOP" within a reasonable time (immediately is the standard)
  Penalties: $500-$1,500 per message (statutory damages; no proof of actual damage required)
  Column6 context: If Column6 runs SMS-based advertising programs, TCPA compliance is critical
  
IAB STANDARDS (Column6 programmatic and CTV):
  IAB Tech Lab standards applicable to Column6:
    OpenRTB: Programmatic bidding protocol; compliance required for DSP/SSP integration
    ads.txt / app-ads.txt: Anti-fraud authorization file; Column6 must maintain
    sellers.json: Transparency in the supply chain; Column6 must publish
    VAST / VPAID: Video ad serving standards for CTV
    Measurement: MRC accreditation standards for impression counting
  IAB Brand Safety: Column6 should participate in brand safety programs
    (GARM standards; contextual classification)
  
AD FRAUD OBLIGATIONS:
  Column6's obligation to advertisers: Deliver genuine impressions from real human users
  Invalid Traffic (IVT): Bot traffic, click farms = ad fraud
  Column6 must:
    Implement IVT detection (MRC or TAG certified solutions)
    Disclose IVT rates to advertisers
    Issue make-goods for IVT above agreed thresholds
    Cooperate with advertiser ad fraud audits
```

## Output Format

```markdown
# Advertising Compliance Assessment — [Campaign/Product/Program]
**Entity:** Column6 | **Date:** [Date] | **Reviewed by:** Dr. Lewis
**Recommendation:** COMPLIANT / NEEDS MODIFICATION / DO NOT LAUNCH / ESCALATE TO COUNSEL

---

## Summary

**What is being assessed:** [Campaign, product, or program description]
**Applicable standards:** [FTC / CAN-SPAM / TCPA / IAB / State]

---

## Compliance Analysis

| Standard | Finding | Issue (if any) | Action Required |
|---------|---------|---------------|----------------|
| FTC — Truthfulness | ✅ / ⚠️ / ❌ | [Finding] | [Action] |
| FTC — Endorsement disclosure | ✅ / ⚠️ / ❌ | [Finding] | [Action] |
| CAN-SPAM | ✅ / ⚠️ / ❌ | [Finding] | [Action] |
| TCPA (if SMS) | ✅ / ⚠️ / ❌ | [Finding] | [Action] |
| IAB Standards | ✅ / ⚠️ / ❌ | [Finding] | [Action] |

---

## Required Modifications

| # | Modification | Responsibility | Due |
|---|-------------|---------------|-----|
| 1 | [Specific change required before launch] | [Column6 / Client] | [Date] |

---

## Recommendation

**[COMPLIANT — Launch approved / MODIFY before launch / DO NOT LAUNCH / ESCALATE]**
[Rationale — 1-2 sentences]
```

## Output Contract
- Substantiation must exist before the claim runs — the FTC's requirement is that claims be substantiated before they are made, not after; Column6 cannot help a client run "scientifically proven" claims and then start looking for the evidence; if a client wants to make a performance or health claim, Dr. Lewis asks: "What evidence substantiates this claim? Do you have a study, test, or other competent and reliable evidence?" If the evidence doesn't exist, the claim must be modified to match what can be supported ("many users report..."; "in our internal testing..."); the FTC does not accept "the advertiser told us it was true" as a defense for Column6
- IAB compliance is a competitive requirement — Column6's buyers (DSPs and agencies) check for ads.txt, sellers.json, and OpenRTB compliance before bidding; a Column6 inventory source without proper IAB compliance will be blocked by major DSPs; Dr. Lewis treats IAB compliance as a revenue protection issue, not just a legal issue; any gap in Column6's IAB compliance stack directly reduces fill rates and revenue
- TCPA is the highest-risk area for SMS programs — TCPA litigation is plaintiff-friendly; $500-$1,500 per text with no proof of damage makes it attractive to class action attorneys; a single SMS campaign to 100K recipients without proper prior express written consent = $50M-$150M in statutory exposure; Dr. Lewis will not approve any Column6 SMS program without a complete consent documentation review by advertising counsel; the consent records must be retained and producible in litigation
- HITL required: Dr. Lewis reviews new ad formats, campaign categories, and compliance questions; advertising counsel required for any TCPA program, FTC endorsement-heavy campaign, or any FTC inquiry; Column6 CEO approves new compliance-sensitive programs; Matt Mathison informed of any FTC inquiry or significant advertiser dispute involving compliance; Dr. Lewis does not provide legal opinions on advertising compliance — he applies the framework and routes to counsel when the risk warrants

## System Dependencies
- **Reads from:** Campaign brief (from the client or Column6 internal team — what claims are being made? what format?); IAB standards documentation; FTC guidance documents (Endorsement Guides; Deception Policy Statement; .com Disclosures); Column6's ads.txt and sellers.json files; TCPA consent records (if SMS is involved)
- **Writes to:** Advertising compliance assessment memo; campaign modification requirements (sent to client or Column6 campaign team); ads.txt / sellers.json updates (if IAB compliance gaps identified); FTC complaint response (if needed — through advertising counsel); TCPA consent audit records
- **HITL Required:** Dr. Lewis reviews; Column6 CEO approves any new compliance-sensitive program; advertising counsel for TCPA programs, FTC inquiries, complex endorsement programs, and state-law advertising questions; Dr. Lewis does not make legal determinations on FTC compliance — he identifies risk, applies standards, and routes to counsel for determination; Matt Mathison notified of any FTC inquiry or advertiser dispute with compliance dimensions

## Test Cases
1. **Golden path:** Column6 is launching a new native CTV offering — sponsored segments within streaming content → Dr. Lewis reviews: Is the sponsored content clearly labeled as an advertisement? Column6's proposal labels it "Presented by [Brand]" with the brand logo — Dr. Lewis flags: "'Presented by [Brand]' alone is ambiguous — consumers may not recognize this as paid advertising. The FTC and IAB Native Advertising Playbook require unambiguous labeling. Recommendation: Change label to 'Advertisement: Presented by [Brand]' or 'Paid Promotion: [Brand].' The word 'Advertisement' or 'Sponsored' must appear. This is a low-cost modification; the product launch proceeds with the updated labeling." Column6 CEO approves the labeling change; product launches with compliant labels
2. **Edge case:** A Column6 client (health supplement) wants to run CTV ads with the claim "95% of users report significant relief within 7 days" — the client provides a consumer satisfaction survey with 47 respondents → Dr. Lewis reviews the substantiation: "A 47-person consumer satisfaction survey is insufficient substantiation for a 'significant relief' efficacy claim under FTC standards. The FTC requires 'competent and reliable scientific evidence' for health claims — this typically means controlled, double-blind studies with statistically significant samples. A 47-person survey does not meet this standard. Options: (1) Remove the 95% claim and replace with an unsubstantiated-claim alternative ('Our customers love [Product]'); (2) Commission a proper consumer research study (will delay the campaign); (3) Modify the claim to clearly reflect the survey size and nature ('In a 47-person consumer survey, 95% reported...'). I recommend option 3 with advertising counsel review of the modified claim — it's accurate, substantiated, and likely compliant." Client selects option 3; advertising counsel confirms; campaign modified
3. **Adversarial:** Column6 receives an FTC Civil Investigative Demand (CID) — a formal subpoena requiring production of advertising records related to a client's campaign that Column6 ran → Dr. Lewis immediate response: "Do not respond to the CID without advertising counsel. An FTC CID is a serious legal process — any response is reviewed by FTC investigators and can create admissions. Steps: (1) Notify Matt Mathison immediately; (2) Engage advertising counsel within 24 hours; (3) Issue a litigation hold — preserve all records related to the client campaign (do not delete emails, records, or ad serving data); (4) Counsel will review the scope of the CID and advise on response; (5) Cooperate fully with the CID (non-cooperation is a separate violation); (6) Determine whether the client is also aware (they likely received their own CID)." Matt Mathison notified; advertising counsel engaged; litigation hold issued; CID response managed by counsel

## Audit Log
All advertising compliance assessments retained by campaign and date. IAB compliance records retained (2 years). TCPA consent records retained (5 years minimum or the life of the claim window plus 2 years). FTC inquiry response records retained permanently. CAN-SPAM opt-out records retained (5 years). ads.txt and sellers.json version history retained. Any advertiser disputes with compliance dimensions retained.

## Deprecation
Retire when Column6 has in-house advertising counsel or a dedicated compliance function — with Dr. Lewis reviewing any new product or program with FTC or TCPA exposure, and advertising counsel engaged for any enforcement action or significant regulatory question.
