---
name: mktg-analyst-relations
description: "Manage industry analyst relations for MBL Partners portfolio entities. Use when the user says 'analyst relations', 'industry analyst', 'Gartner', 'Forrester', 'IDC', 'analyst briefing', 'analyst report', 'Magic Quadrant', 'Wave report', 'market guide', 'analyst coverage', 'get analyst coverage', 'brief an analyst', 'analyst inquiry', 'vendor briefing', 'get listed in a report', 'analyst evaluation', 'analyst firm', 'research firm', 'industry research', 'market research firm', 'be in the report', 'analyst relations program', 'AR program', 'KLAS', 'MGMA research', 'IAB research', 'industry study', 'industry benchmark', 'industry rating', 'industry recognition', or 'be recognized in the industry'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|mbl>] [--analyst-firm <gartner|forrester|klas|iab|mgma>] [--action <brief|respond|monitor|plan>]"
---

# Marketing Analyst Relations

Manage relationships with industry analysts and research firms relevant to MBL Partners portfolio entities — building analyst awareness, securing coverage in relevant reports, and using analyst intelligence to sharpen strategy. At portfolio company scale, analyst relations is selective: Column6 benefits from IAB involvement; Allevio benefits from MGMA research; Gartner/Forrester coverage matters only if the entity is large enough to appear on their radar.

## When to Use
- An analyst firm publishes a report covering the entity's market (and the entity is not included)
- Column6 needs to engage with IAB research programs
- Allevio wants to leverage MGMA employer benefits research for credibility
- An analyst firm makes an inquiry about an entity

## Analyst Relations Framework

```
ANALYST PRIORITY BY ENTITY:

  ALLEVIO (healthcare MSO / employer benefits):
    Priority firms:
      MGMA (Medical Group Management Association): primary; MGMA research on practice management and employer benefits
        - MGMA data: industry benchmark data source for physician compensation, practice management
        - Allevio opportunity: contribute to MGMA employer benefits surveys; cite MGMA benchmarks in materials
      SHRM Research: Society for Human Resource Management employer benefits research
        - Allevio opportunity: cite SHRM employer benefits surveys; contribute employer case examples (aggregate; no PHI)
      Mercer / Willis Towers Watson: employer benefits market research; plan design trends
      HRET (Health Research and Educational Trust): AHA-affiliated; employer health research
      Note: Gartner/Forrester do not cover MSO employer benefits market at Allevio's scale — not a priority
      HIPAA: no PHI in any analyst submission, survey response, or briefing; aggregate employer data only; Dr. Lewis reviews all analyst submissions
      
  COLUMN6 (CTV/programmatic):
    Priority firms:
      IAB (Interactive Advertising Bureau): primary; sets programmatic standards; Column6 should participate in IAB working groups
        - IAB membership: Column6 should be an IAB member and participate in relevant working groups (CTV; programmatic; measurement)
        - IAB research: cite IAB benchmarks in materials (VCR; IVT; brand safety standards)
        - IAB opportunity: contribute to IAB certification programs; submit for IAB recognition
      Advertiser Perceptions: agency sentiment research; Column6 can monitor agency perception of programmatic platforms
      Winterberry Group: programmatic market sizing; Column6 cites in sales materials
      eMarketer / INSIDER Intelligence: CTV and digital advertising market data
      Note: Gartner/Forrester cover enterprise marketing technology; Column6 may appear in future reports if scale warrants
      
  HIVE PARTNERS: minimal analyst relations; SPE technical publications; Utah DOGM industry data
  
  MBL PARTNERS: ACG and PE industry research (deal volume; sector multiples); leverage for LP communications

ANALYST BRIEFING STRUCTURE:
  Request: vendor briefing (entity reaches out to analyst; not an inquiry)
  Duration: 30-45 minutes; analyst asks questions; entity shares perspective
  What analysts want: clear market positioning; differentiated capabilities; client evidence (aggregate; no client names without permission); product roadmap
  What NOT to do: pitch; oversell; refuse to acknowledge limitations; hide weaknesses
  After briefing: follow up with requested materials within 48 hours; keep analyst on relevant announcement list
  
ANALYST INQUIRY RESPONSE (analyst reaches out to entity for input on a report):
  Treat as priority — analyst reports create market positioning; being included vs. excluded matters
  Response within 24 hours
  Entity CEO + Dr. Lewis brief who responds and what is shared
  Allevio: Dr. Lewis HIPAA review on any data shared with analyst firms

IAB ENGAGEMENT FOR COLUMN6:
  Membership: Column6 joins IAB; annual membership; access to working groups and certification programs
  Working groups: participate in CTV measurement; brand safety; programmatic standards working groups
  Certification: pursue IAB Tech Lab certifications for brand safety / IVT — these become Column6 proof points in agency marketing
  IAB events: Column6 CEO or commercial lead attends IAB Annual Leadership Meeting (see mktg-event-marketer)
```

## Output Format

```markdown
# Analyst Relations Plan — [Entity] — [Year]
**Priority firms:** [List]
**Objective:** [Coverage / Briefing / Certification / Data access]

---

## Analyst Coverage Map

| Firm | Relevant reports | Our current status | Target status |
|------|----------------|-------------------|--------------|
| [IAB] | [CTV measurement guide] | [Not covered] | [Referenced in annual report] |

---

## Analyst Engagement Calendar

| Firm | Action | Target date | Owner | Status |
|------|--------|------------|-------|--------|
| [IAB] | [Join CTV working group] | [Q3] | [Column6 CEO] | |

---

## Briefing Notes — [Firm] — [Date]
**Analyst:** [Name] | **Firm:** [Name] | **Topic:** [What they asked about]
**Key takeaways:** [What we learned from the analyst's perspective]
**Materials shared:** [What we provided]
**Follow-up committed:** [What we promised to send]
**Coverage opportunity:** [Report they mentioned + timing]
```

## Output Contract
- Analyst briefings are for listening as much as talking — a vendor briefing that is all pitch and no listening misses the intelligence value; analysts have a view of the whole market; they hear what competitors are saying; they know what buyers are complaining about; Dr. Lewis briefs entity CEOs before any analyst briefing: "Spend 15 minutes telling them about the entity; spend 15 minutes asking what they're hearing about the market"; the intelligence from an analyst briefing often more valuable than the coverage opportunity
- No PHI in any Allevio analyst engagement — if MGMA sends a survey about employer health outcomes or practice management metrics, Allevio can participate with aggregate, de-identified employer data; no member health information; no clinical outcomes; Dr. Lewis reviews all Allevio submissions to analyst surveys before they are sent; a survey that asks for "sample patient cases" is declined by Allevio or redirected to "we can provide aggregate employer cohort data"
- IAB membership and working group participation is a business strategy for Column6, not just PR — IAB CTV and programmatic working groups shape industry standards; Column6 participating in those working groups means Column6's perspective influences the standards that agency buyers use to evaluate programmatic platforms; Dr. Lewis recommends Column6 CEO identify one IAB working group to lead or contribute to actively, not just observe; this is differentiated from merely attending IAB events
- HITL required: analyst briefing → entity CEO briefs and approves what to share; Allevio analyst submissions → Dr. Lewis HIPAA review; IAB working group participation → Column6 CEO approves time commitment; analyst report submission → entity CEO approves before filing; MBL Partners analyst engagement → Matt Mathison aware; analyst inquiry responses → entity CEO reviews before send

## System Dependencies
- **Reads from:** mktg-positioning-architect (analyst briefing positioning must align with company positioning); mktg-competitive-intelligence (analyst briefings reveal competitor claims that feed competitive intel); mktg-messaging-matrix (analyst engagement carries L2/L3 messages); mktg-pr-manager (analyst report coverage coordinates with PR announcements)
- **Writes to:** Analyst relations plan (SharePoint → Marketing → Analyst Relations → [Entity]); analyst briefing notes; IAB working group participation records; analyst coverage log (which firms cover the entity in which reports); HIPAA review records (Allevio analyst submissions)
- **HITL Required:** Analyst briefings → entity CEO approves what to share; Allevio submissions → Dr. Lewis HIPAA; IAB working groups → Column6 CEO; MBL → Matt Mathison; analyst inquiry responses → entity CEO

## Test Cases
1. **Golden path:** Column6 joins IAB. Membership secured. Column6 CEO identifies the CTV Measurement working group as the primary participation target. First working group meeting attended; Column6 commercial lead presents Column6's approach to VCR verification. Working group outcome: Column6's VCR methodology referenced in the IAB CTV measurement guide published Q4. This reference becomes a Column6 proof point in all agency-facing materials: "Column6's VCR methodology is referenced in the IAB CTV Measurement Guide."
2. **Edge case:** Gartner analyst reaches out asking Allevio to participate in a healthcare IT market guide → Dr. Lewis: "Gartner doesn't cover MSO employer benefits at Allevio's scale — this is likely a market guide for a broader healthcare IT category where Allevio may not fit. Let me evaluate: (1) what category is it? (2) would inclusion help reach our target audience (employer HR leaders)? (3) what data are they asking for? If the category aligns with Allevio's employer market and the data request is HIPAA-clean, I'll recommend participation. If it's a category where Allevio will appear too small to matter, I'll politely decline and redirect Gartner to MGMA, where Allevio's profile is more relevant."
3. **Adversarial:** Analyst firm publishes a market guide that includes competitor claims about Column6 that are factually inaccurate → Dr. Lewis: "Contact the analyst firm's editorial team with a factual correction request. Not a demand — a factual correction. Format: 'Thank you for including the programmatic market in your coverage. We noted the following characterization of Column6 [quote the specific claim]: [correction with evidence]. We'd welcome the opportunity to brief you directly and provide data that may inform a correction.' Most analyst firms have a corrections process. Be specific; be factual; be fast. If the report is influencing an active agency deal, I'll notify Column6 CEO and provide the agency direct with Column6's own data to counter the report."

## Audit Log
Analyst briefing records retained (date; firm; analyst; topics; materials shared; follow-up). HIPAA review records (Allevio analyst submissions). IAB membership and working group participation records. Analyst coverage log (which reports reference the entity). Analyst inquiry response records. Matt Mathison awareness records (MBL Partners).

## Deprecation
Analyst relations priority firms reviewed annually. IAB working group participation reviewed when Column6 business focus changes. HIPAA submission review process updated when HIPAA regulations change. Analyst engagement strategy reviewed when entity scale changes materially.
