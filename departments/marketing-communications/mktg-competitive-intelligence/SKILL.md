---
name: mktg-competitive-intelligence
description: "Build and maintain competitive intelligence for MBL Partners portfolio entities. Use when the user says 'competitive intelligence', 'competitive research', 'competitor research', 'competitor analysis', 'competitive landscape', 'competitive monitoring', 'competitor monitoring', 'watch competitors', 'competitive tracking', 'competitor news', 'competitor pricing', 'competitor features', 'competitor messaging', 'what is the competition doing', 'who are our competitors', 'competitive threat', 'new competitor', 'competitor entered the market', 'win loss analysis', 'win/loss', 'why did we lose the deal', 'why do we win', 'what is our competitive position', 'competitive report', 'competitive summary', 'competitor intelligence brief', 'what are competitors saying', 'competitor social media', 'competitor content', or 'competitive moat'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--competitor <specific-competitor-name>] [--action <build|update|monitor|report>] [--focus <messaging|pricing|product|market-position>]"
---

# Marketing Competitive Intelligence

Build and maintain competitive intelligence for MBL Partners portfolio entities — monitoring competitor positioning, messaging, product development, and market moves; feeding competitive insight to sales, marketing, and entity leadership; and ensuring each entity's positioning remains differentiated as the competitive landscape evolves. At portfolio company scale, competitive intelligence is not a research project — it is a standing operational practice.

## When to Use
- A new competitor enters an entity's market
- Sales is losing deals to specific competitors and needs better positioning
- Quarterly competitive intelligence update for entity CEO or Dr. Lewis
- Researching a specific competitor's positioning, messaging, or market activity

## Competitive Intelligence Framework

```
COMPETITIVE LANDSCAPE BY ENTITY:

  ALLEVIO (healthcare MSO / employer benefits):
    Primary competitors:
      EAP (Employee Assistance Programs): Optum EAP; Spring Health; Modern Health; LifeWorks
        Key differentiator vs. EAPs: Allevio is care COORDINATION (navigation + relationship); EAPs are access points (phone line + referral list)
        EAP weakness: low utilization (avg 5-8% employee utilization); Allevio is designed for active engagement
      Third-Party Administrators (TPAs): direct plan administration competitors; not primary Allevio competitor
      Integrated Health Platforms: Accolade; Quantum Health; Included Health (larger scale; potential future competitive threat)
        Key differentiator vs. Accolade/Quantum: Allevio is Arizona-native; MSO model (not just navigation); employer-aligned economics
      Benefits Brokers (indirect): brokers sometimes bring own care management programs; Allevio is a referral partner, not a broker competitor
      
    Monitoring: Competitor websites (quarterly review); MGMA / SHRM publications (competitor thought leadership); employer benefits LinkedIn; deal win/loss analysis from Allevio CEO
    
  COLUMN6 (CTV/programmatic):
    Primary competitors: The Trade Desk; Magnite; PubMatic; Basis Technologies; Viant Technology; MediaMath (rebrand/resurrection)
    Secondary: agency in-house trading desks; walled garden platforms (YouTube; Meta)
    Key differentiators vs. major DSPs: Column6 specializes in CTV + mobile + gaming (not general-purpose); agency partnership model (not competing for direct); transparent IVT reporting; relationship-driven vs. automated-at-scale
    Differentiators vs. agency trading desks: external validation (Column6 IVT/VCR data transparent); no conflict of interest (Column6 doesn't manage media on their behalf)
    
    Monitoring: AdExchanger (competitor news); Digiday; IAB working group competitor presence; LinkedIn competitor activity (Column6 commercial team monitors); trade show competitor presence
    
  HIVE PARTNERS (oil & gas):
    Primary: other Uinta Basin operators (major oil companies; independent operators)
    Landowner competition: other operators seeking royalty agreements on same parcels
    Key differentiator: Basin specialist; landowner relationship model; transparent Covercy reporting; non-extraction orientation
    
    Monitoring: DOGM public filings (competitor production data); Utah Oil & Gas Association activity; local landowner community networks
    
  MBL PARTNERS:
    Primary: other lower-middle market PE firms (sector-specific and generalist)
    Differentiation: THRIVE values-based diligence; operational improvement focus; sector expertise (healthcare; energy; CTV)
    
    Monitoring: deal announcements in sector press; ACG/NVCA competitor presence; deal multiples in relevant sectors

COMPETITIVE INTELLIGENCE COLLECTION METHODS:
  Website review: quarterly competitor website visits (positioning; messaging; product/service changes)
  Job postings: monitor competitor job postings (signals: new markets; new products; scale-up; contraction)
  Press: Google Alerts for competitor names; trade press (AdExchanger; Healthcare Dive; Hart Energy)
  Social: LinkedIn competitor company pages; competitor executive thought leadership
  Sales team debrief: monthly post-loss conversation with entity CEO — what did we learn?
  Event intelligence: what did competitors say or present at trade shows? (post-event debrief; see mktg-event-marketer)
  Customer intelligence: what do existing customers say about switching to competitors?

WIN/LOSS ANALYSIS:
  Every Allevio employer loss → entity CEO debrief within 1 week: who did they choose? Why?
  Every Column6 agency loss → commercial team debrief within 1 week
  Win analysis (equal priority): why did we win? What did the competitor say about us?
  Pattern identification: if same competitor wins 3+ times against us in 90 days → positioning threat; Dr. Lewis escalates to mktg-positioning-architect

COMPETITIVE INTELLIGENCE REPORTS:
  Monthly: entity CEO receives brief (1 page): notable competitor moves this month
  Quarterly: Dr. Lewis + entity CEO: full competitive landscape review; differentiation health check; recommended positioning adjustments
  Triggered: any significant competitor move (new product; major customer announcement; pricing change) → same-day brief to entity CEO + Dr. Lewis
```

## Output Format

```markdown
# Competitive Intelligence Report — [Entity] — [Period]
**Prepared by:** Marketing Lead | **To:** Entity CEO + Dr. Lewis

---

## Competitor Activity Summary

| Competitor | Notable move this period | Threat level | Implication for us |
|-----------|------------------------|-------------|-------------------|
| [Name] | [What they announced/changed] | Low/Med/High | [Action needed or monitoring] |

---

## Positioning Threat Assessment

| Differentiator | Status | Competitor closing this gap? | Action |
|---------------|--------|------------------------------|--------|
| [Our differentiator] | Strong / At risk / Eroding | [Yes/No/Monitor] | [Defend/adjust/update messaging] |

---

## Win/Loss Summary

| Deals analyzed | Wins | Losses | Primary loss reason | Most common competitor in losses |
|---------------|------|--------|--------------------|---------------------------------|

---

## Recommended Actions
1. [Positioning update needed — see mktg-positioning-architect]
2. [Battlecard update — see mktg-positioning-architect]
3. [Sales training on new competitive objection]
```

## Output Contract
- Competitive intelligence is factual, legal, and ethical — Dr. Lewis does not accept competitive intelligence gathered through unethical means (former competitor employees sharing trade secrets; purchasing illegally obtained data; misrepresenting identity to access competitor information); competitive intelligence sources must be public (press; job postings; website; SEC filings; conference presentations; customer conversations); Dr. Lewis reinforces this standard with the marketing team and entity commercial teams; if a competitor employee shares what sounds like a trade secret, Dr. Lewis is notified and legal is consulted before any use of that information
- Win/loss analysis is as important as competitive monitoring — the best competitive intelligence comes from prospects who chose a competitor over the entity; Dr. Lewis establishes a structured post-loss debrief process for all entities; the debrief asks: who did they choose?; why?; what did the competitor say about us?; what could we have done differently?; a consistent loss pattern against the same competitor on the same dimension is a differentiation problem, not a sales problem; Dr. Lewis escalates consistent loss patterns to the competitive positioning process (mktg-positioning-architect) within the quarter
- Triggered alerts go to entity CEO and Dr. Lewis the same day — if AdExchanger announces that a major DSP is now targeting small-to-mid independent agencies (Column6's primary target audience) with a new pricing model, that is not a story for the next quarterly competitive review; it is a same-day brief to Column6 CEO and Dr. Lewis; Dr. Lewis monitors trade press and has Google Alerts configured for each entity's primary competitors; triggered competitive alerts generate a 1-page brief within 24 hours
- HITL required: quarterly competitive landscape review → entity CEO + Dr. Lewis agree on positioning implications; competitive threat assessment (High level) → entity CEO + Dr. Lewis determine response; positioning adjustment triggered by competitive loss → mktg-positioning-architect + entity CEO approve; competitive intelligence shared externally (in battlecards etc.) → entity CEO approves factual accuracy; MBL Partners competitive intelligence (deal market) → Matt Mathison informs deal strategy

## System Dependencies
- **Reads from:** mktg-positioning-architect (current positioning — competitive intelligence informs updates); mktg-messaging-matrix (current claims — competitive intel identifies gaps); mktg-event-marketer (event debrief competitive intel — feeds into CI bank); sales-win-loss (post-loss debrief data — primary competitive intelligence source)
- **Writes to:** Competitive intelligence bank (SharePoint → Marketing → Competitive Intelligence → [Entity]); competitor profiles (per entity; updated quarterly); win/loss log; positioning threat assessment; triggered alerts (entity CEO + Dr. Lewis); quarterly competitive report; sales battlecard inputs (feeds mktg-positioning-architect)
- **HITL Required:** Quarterly competitive review → entity CEO + Dr. Lewis; High-level threats → entity CEO + Dr. Lewis determine response; positioning adjustment → mktg-positioning-architect + entity CEO; trade secret alert → Dr. Lewis + legal; MBL market intelligence → Matt Mathison

## Test Cases
1. **Golden path:** Allevio quarterly competitive review. Spring Health (EAP competitor) announced a new "care navigation" feature that sounds similar to Allevio's care coordinator model. Dr. Lewis brief to Allevio CEO: "Spring Health is moving toward our differentiation in care navigation. Current assessment: their model is digital-first (app-based navigation) vs. Allevio's human care coordinator model. This is a differentiator we should amplify — the human relationship is what employers value that Spring Health cannot replicate at scale. Recommend: update positioning to emphasize 'human care coordinator' as the specific differentiator; add to battlecard vs. digital-first EAPs. Review in 90 days to see if Spring Health marketing evolves further toward our position."
2. **Edge case:** Allevio CEO hears at a conference that a competitor is planning to enter the Arizona market in Q1 → Dr. Lewis: "That's second-hand intelligence from a conference — valuable but unverified. I'll: (1) check LinkedIn for any competitor Arizona-related job postings (a market entry signal); (2) check their website for any Arizona-specific content; (3) review their press for any Arizona employer partnership announcements; (4) ask the entity CEO if they know which competitor this is. If entry is confirmed, I'll brief the Allevio CEO within 48 hours with: competitor profile; their likely positioning vs. ours; where we need to defend our differentiation immediately."
3. **Adversarial:** A Column6 commercial team member proposes building a spreadsheet of all competitor DSP IVT rates using information received from former competitor employees → Dr. Lewis: "Stop. Former employee information about competitor operations is trade secret territory. Even if the former employees shared it voluntarily, using it as competitive intelligence creates legal risk. I need to know: who are these former employees?; what exactly did they share?; is any of it publicly documented? We do not build competitive intelligence from former competitor employee disclosures without a legal review. I'm consulting legal before any of this information is used. In the meantime, our IVT comparison data comes only from: (1) industry benchmarks (IAB; MRC); (2) competitor public claims; (3) publicly available audit reports. Nothing else."

## Audit Log
Competitive intelligence bank records retained (quarterly snapshots). Competitor profile version history retained. Win/loss log retained. Triggered alert records retained. Quarterly competitive review records. Positioning threat assessment records. Trade secret alert records (if any). Legal consultation records (trade secret or ethical questions).

## Deprecation
Competitor profiles reviewed quarterly. Win/loss analysis cadence reviewed when entity sales model changes. Competitive monitoring alerts updated when new competitors enter the market. Intelligence collection methods reviewed when new tools or sources become available. Strategy deprecated when entity exits the market.
