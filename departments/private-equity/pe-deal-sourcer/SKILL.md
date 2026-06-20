---
name: pe-deal-sourcer
description: "Manage deal sourcing and origination for MBL Partners. Use when the user says 'deal sourcing', 'deal origination', 'deal flow', 'proprietary deal flow', 'deal generation', 'find deals', 'find companies', 'acquisition targets', 'acquisition pipeline', 'target companies', 'target identification', 'target list', 'sourcing targets', 'intermediary relationships', 'banker relationships', 'broker relationships', 'investment banker', 'M&A advisor', 'M&A intermediary', 'deal intro', 'deal introduction', 'warm intro', 'cold outreach', 'deal outreach', 'sector sourcing', 'proprietary deals', 'off-market deals', 'off-market acquisition', 'unsolicited deal', 'deal network', 'sourcing network', 'deal relationship', 'CEO relationship', 'operating network', 'industry network', 'business broker', 'lower middle market', 'LMM deals', 'healthcare deals', 'oil and gas deals', 'CTV deals', 'media deals', 'digital media acquisition', 'healthcare acquisition', or 'energy royalty acquisition'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--sector <healthcare|energy|ctv-media|general>] [--action <prospect|outreach|track|analyze|report>] [--source <proprietary|banker|broker|network>] [--stage <identified|contacted|intro-scheduled|nda-signed>]"
---

# PE Deal Sourcer

Manage deal sourcing and origination for MBL Partners — identifying target companies that fit the investment thesis, building and maintaining intermediary relationships (bankers; brokers; operating executives), executing outreach to management teams and owners, and tracking deal flow through the early stages of the pipeline. Proprietary deal flow — companies that approach MBL Partners directly or through a warm relationship before they are widely marketed — is the primary source of competitive advantage in lower middle market PE; proprietary deals command lower purchase prices and better terms because MBL is not competing in a broad auction; building and maintaining a high-quality sourcing network is a continuous, relationship-based function that requires persistent, honest engagement with operators and intermediaries over time.

## When to Use
- Identifying new target companies in MBL's sectors (healthcare MSO; energy royalties; CTV/digital media)
- Managing outreach to potential acquisition targets
- Reviewing and responding to banker or broker-presented deals
- Tracking the early-stage deal pipeline
- Maintaining intermediary relationships

## Deal Sourcing Framework

```
MBL PARTNERS INVESTMENT THESIS (sourcing filters — verify with Matt Mathison):

  TARGET CHARACTERISTICS (general parameters — confirm per fund mandate):
    Revenue: $3M - $25M (lower middle market)
    EBITDA: $500K - $5M (or pre-EBITDA with strong revenue model)
    Business model: recurring revenue; essential services; high retention
    Geography: US (no international for this fund)
    Ownership: founder-owned; family-owned; corporate carve-outs
    Control preference: majority control or clear path to control
    
  SECTOR PRIORITIES (aligned with portfolio expertise):
    1. HEALTHCARE / MSO: employer-sponsored healthcare; value-based care; clinical services
       Thesis: Allevio platform expansion; adjacent clinical capabilities
    2. ENERGY ROYALTIES / OIL & GAS: mineral rights; royalty interests; Uinta Basin expertise
       Thesis: HIVE platform expansion; adjacent royalty streams
    3. CTV / DIGITAL MEDIA: connected TV; programmatic advertising; gaming; mobile
       Thesis: Column6/Siprocal platform expansion; adjacent media tech
    4. GENERAL: tech-enabled services; B2B SaaS; professional services (opportunistic)
    
  DEAL PREFERENCE:
    Proprietary/off-market: highest priority (no auction premium; better information access)
    Limited process / intermediary-controlled: acceptable if thesis fit is strong
    Broad auction: lowest priority (auction premium; information disadvantage)
    
  DEAL-KILLER SCREENING (automatic pass at sourcing stage):
    Consumer-facing businesses (not B2B)
    International operations requiring immediate integration
    Businesses with OIG/LEIE exclusions (healthcare) — pe-deal-breaker-tracker
    WTI <$58/bbl environment — no new HIVE energy acquisitions
    Any business with >50% revenue from a single customer (concentration risk)

SOURCING CHANNELS:

  PROPRIETARY:
    Matt Mathison and Dr. Lewis's operating networks (most valuable)
    Portfolio company CEOs as referral sources (add-on pipeline)
    Industry conferences and events
    LinkedIn and targeted CEO/owner outreach
    
  INTERMEDIARY:
    Investment banks specializing in LMM (Piper Sandler; Lincoln; MidOcean; boutique sector specialists)
    Business brokers (sector-specific; regional)
    Accounting firms (referral when client wants to sell)
    Law firms (M&A counsel referring clients considering a sale)
    
  RESEARCH-DRIVEN:
    Industry databases (Pitchbook; Axial; DealCloud)
    Trade associations and publications
    LinkedIn company research (identify companies meeting thesis criteria)

INTERMEDIARY RELATIONSHIP MANAGEMENT:

  TIER 1 RELATIONSHIPS (highest priority — active deal flow):
    Track: deals sent in last 12 months; response time; quality
    Touch point: monthly check-in or deal response within 48 hours (whichever is more recent)
    Matt Mathison involvement: 1-2 times/year for top intermediaries
    
  TIER 2 RELATIONSHIPS (promising; developing):
    Track: deals sent; responsiveness
    Touch point: quarterly check-in; deal response within 5 days
    
  OUTREACH TO NEW INTERMEDIARIES:
    Email introduction → phone call → relationship building over 2-3 interactions
    Always respond to bankers even with "not for us" — explain why (helps them calibrate)
    Speed of response builds reputation: respond within 24 hours to all banker submissions

COLD OUTREACH TO OWNERS/CEOs:

  RESEARCH BEFORE OUTREACH:
    Company name; approximate revenue; ownership; leadership
    Recent news; industry context
    THRIVE Truth principle: no misleading subject lines; be direct about who MBL is
    
  OUTREACH MESSAGE FRAMEWORK:
    Who MBL is and what we do (1 sentence)
    Why we're reaching out to them specifically (1-2 sentences; be specific)
    What we're looking for (brief — not a demand)
    Low-pressure call to action (15-minute call; not a meeting)
    
  RESPONSE TRACKING:
    Log every outreach: date; to whom; method; response status
    Follow-up: 7-10 days if no response; max 2 follow-ups before marking not interested
```

## Output Format

```markdown
# Deal Sourcing Report — [Month/Quarter]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## New Companies Identified

| Company | Sector | Rev (est.) | EBITDA (est.) | Source | Stage | Next action |
|---------|--------|-----------|--------------|--------|-------|------------|
| [Company A] | Healthcare MSO | $8M | $1.2M | Banker | NDA requested | Schedule mgmt call |
| [Company B] | Energy royalties | $4M | $900K | Proprietary | Initial contact | Follow-up in 7 days |

---

## Intermediary Activity

| Intermediary | Deals sent (YTD) | Last deal date | Response rate | Relationship tier |
|-------------|-----------------|---------------|--------------|------------------|
| [Banker 1] | 4 | [Date] | 100% <48h | Tier 1 |
| [Broker 2] | 1 | [Date] | 1/1 responded | Tier 2 |

---

## Pipeline Metrics (month)

| | Count | Notes |
|-|-------|-------|
| New companies identified | [N] | |
| Outreach initiated | [N] | |
| Management introductions | [N] | |
| NDAs signed | [N] | |
| Passed (with reason) | [N] | |
```

## Output Contract
- Sourcing is relationship-first, not volume-first — MBL's competitive advantage is proprietary deal flow, not the ability to review the most banker-submitted deals; a sourcing strategy that focuses on responding to every banker auction produces auction-premium deal prices; a sourcing strategy that invests in 10-15 deep, trust-based relationships with the right operators, bankers, and owners produces proprietary opportunities at fair prices; Dr. Lewis focuses sourcing activity on building the relationship network, not on maximizing CIM (deal book) reviews
- Every outreach is honest about MBL's intentions — cold outreach to owners and CEOs that obscures the fact that MBL is a PE firm looking to acquire damages the relationship permanently when the owner figures it out; THRIVE Truth principle applied directly: outreach is direct about who MBL is, what we do, and why we're interested; owners respect honesty even when they're not interested in selling; the relationship built through honest outreach becomes a future referral source
- Pass decisions are communicated promptly and with a reason — when MBL passes on a deal (from a banker or direct introduction), Dr. Lewis communicates the pass within 24 hours and explains why; "it's not the right fit at this time because [specific reason]" is better than silence; intermediaries calibrate their deal flow based on feedback; silence or vague passes result in intermediaries sending worse deals over time
- HITL required: outreach to target company CEOs/owners → Dr. Lewis drafts; Matt Mathison reviews for any company he has a personal relationship with (don't cold-call someone Matt knows); any intermediary relationship where Matt should be introduced → Matt involvement coordinated; deal thesis filter changes (new sectors; new size parameters) → Matt Mathison approval; any deal advancing beyond first contact → pe-deal-pipeline-manager tracking

## System Dependencies
- **Reads from:** Investment thesis (Matt Mathison defines parameters); Pitchbook/DealCloud/Axial (deal databases); GoHighLevel (CRM for intermediary and target tracking); portfolio company CEO networks (referral sourcing); pe-deal-pipeline-manager (pipeline status to avoid duplicate outreach); pe-deal-screener (quick thesis fit check before advancing)
- **Writes to:** GoHighLevel CRM (new contacts; outreach log; relationship status); pe-deal-pipeline-manager (companies advancing from sourcing to screening); sourcing reports (SharePoint → Deals → Sourcing → [YYYY]); Matt Mathison briefings (pipeline status; intermediary relationships; key new targets)
- **HITL Required:** CEO/owner outreach for companies Matt knows personally → Matt involvement; sector/thesis parameter changes → Matt approval; advancing a deal from sourcing → pe-deal-pipeline-manager + Matt awareness; Tier 1 intermediary introductions → Matt participation 1-2x/year

## Test Cases
1. **Golden path:** Dr. Lewis identifies a healthcare MSO in the Southwest with ~$6M revenue, 3 employer groups, founder-owned. Source: LinkedIn research cross-referenced with a trade association directory. THRIVE check: fits thesis (healthcare MSO; recurring employer revenue; founder-owned; good size). Outreach: "I run business development for MBL Partners, a healthcare-focused PE firm. We've built Allevio in employer-sponsored health and are actively looking to add adjacent MSOs. I noticed [Company] serves 3 employer groups in the Southwest — that's exactly our model. Would you have 15 minutes to connect?" Email sent. 7-day follow-up if no response. If positive response → pe-deal-pipeline-manager (Initial Contact stage).
2. **Edge case:** A banker submits a deal that is technically within the healthcare sector but is actually a fee-for-service clinical practice with no employer-group revenue (not MSO) → Dr. Lewis: "Thanks for sending this. After reviewing, [Company] isn't the right fit for us — we're focused specifically on employer-sponsored or value-based models (MSO/PCMH structure) rather than fee-for-service practices. The business model doesn't match our Allevio integration thesis. If you come across an employer-group-focused MSO or value-based primary care platform, that's exactly what we're looking for. Happy to take a call to clarify what fits." Logged in GoHighLevel. Relationship maintained.
3. **Adversarial:** A business broker submits a healthcare deal and threatens to "move the process to other buyers" if MBL doesn't respond within 24 hours → Dr. Lewis: "I understand the pressure, but 24 hours isn't enough time to evaluate whether this is worth our management team's time. We'll give you a yes/no on taking the CIM by [48 hours from now]. If that timeline doesn't work for the process, we'll pass and watch for future opportunities. I'd rather be honest about our process than rush a decision and waste everyone's time." This is the right response — brokers who create artificial urgency on bad deals are filtering themselves out; the right deal will accommodate a thoughtful evaluation.

## Audit Log
All sourcing outreach logged (with dates; company; contact; response). Intermediary relationship records retained. Deal submissions from intermediaries logged. Pass decisions logged with reasons. Pipeline reports retained. Investment thesis parameters retained with effective dates.

## Deprecation
Deal sourcing is a continuous function for the life of the fund's investment period. Sourcing channel prioritization is reviewed quarterly. Investment thesis parameters are updated at Matt Mathison's direction when market conditions or portfolio strategy evolves.
