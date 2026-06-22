---
name: mktg-partner-co-marketer
description: "Build and manage partner co-marketing programs for MBL Partners portfolio entities. Use when the user says 'partner marketing', 'co-marketing', 'co-market', 'partner co-marketing', 'broker marketing', 'broker enablement', 'channel partner marketing', 'referral partner marketing', 'partner program', 'co-branded marketing', 'co-branded content', 'agency partner marketing', 'benefits broker enablement', 'benefits broker referral', 'partner webinar', 'joint marketing', 'partner event', 'partner content', 'partner email', 'partner newsletter', 'partner communication', 'co-sell marketing', 'technology partner marketing', 'integration partner marketing', 'alliance marketing', 'partner activation', 'partner enablement', or 'how do we market through partners'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--partner-type <broker|agency|technology|referral>] [--action <build|activate|enable|report>]"
---

# Marketing Partner Co-Marketer

Build and manage partner co-marketing programs for MBL Partners portfolio entities — enabling channel partners to represent and refer Allevio and Column6 accurately and effectively, and creating joint marketing that reaches audiences through trusted partner relationships. Broker-enabled selling is Allevio's most efficient pipeline channel; agency partnership marketing is Column6's growth lever.

## When to Use
- Building an employer broker enablement program for Allevio
- Developing co-marketing materials with a Column6 agency partner
- Planning a partner webinar, co-branded event, or joint content piece
- Reviewing partner marketing program performance

## Partner Co-Marketing Framework

```
PARTNER PROGRAMS BY ENTITY:

  ALLEVIO — BENEFITS BROKER ENABLEMENT PROGRAM:
    Partner type: benefits brokers (primary referral channel for employer clients)
    Partner value: brokers refer Allevio to employer clients in exchange for enhanced service capability; brokers deepen employer relationships by adding care coordination to their solution set
    Allevio value: broker-referred employers are higher-quality leads (pre-qualified by trusted advisor relationship)
    
    Partner enablement materials:
      Broker one-pager: "How Allevio makes your employer clients stickier" — for broker to use with employers
      Employer one-pager: "Allevio care coordination — how it works" — broker leaves with employer decision-maker
      Broker FAQ: common employer questions and how to answer them
      Co-branded materials: Allevio + [Broker firm name] co-branded materials (with broker permission; broker reviews and approves)
      
    Broker program elements:
      Broker referral commission: defined and documented; Dr. Lewis + Allevio CEO set; consistent
      Broker quarterly update: brief email on Allevio performance data (aggregate; no PHI; broker audience)
      Broker webinar (semi-annual): "New from Allevio" — updates on care coordinator model; new employer data; upcoming open enrollment tools
      
    HIPAA in broker context:
      Broker communications: employer-level (no PHI); broker is not Allevio's Business Associate for PHI
      If a broker requests member-level data on their employer client's employees: decline; provide employer-aggregate only; Dr. Lewis advises
      Broker cannot access AdvancedMD data or Covercy data
      
  COLUMN6 — AGENCY PARTNERSHIP MARKETING PROGRAM:
    Partner type: media agencies (independent + holding company)
    Column6's agency partnership model: agencies bring Column6 into campaigns; Column6 works through agencies (not around them)
    Co-marketing opportunity: agency has an existing client relationship that benefits from Column6 inventory; Column6 helps the agency sell programmatic to their clients
    
    Agency partnership materials:
      Agency capability one-pager: Column6's differentiators in the agency's language
      Co-branded case study: agency + Column6 joint performance story (agency permission required; see mktg-customer-story-builder)
      Agency FAQ: common direct advertiser questions and how agency AMs answer them about Column6
      
    Agency co-marketing activities:
      Agency-facing webinar (Column6 hosts; invites agency clients): "CTV and programmatic performance — what your clients should be asking for"
      Agency conference co-presence: Column6 + agency partner at IAB or regional event
      Agency referral reward (if applicable): if Column6 has a referral structure with agency for new brand introductions; entity CEO + Dr. Lewis set terms

STANDARDS FOR CO-BRANDED MATERIALS:
  Co-branding requires: both parties' brand guidelines reviewed; logos used correctly; entity CEO (Allevio or Column6) approves all co-branded materials before use
  Partner data in materials: partner's performance data, client results, or proprietary information may not appear in co-branded materials without partner's written approval
  Allevio HIPAA: co-branded materials produced with brokers must be reviewed by Dr. Lewis; no PHI; broker cannot be inadvertently authorized to see member data through a co-branding relationship
  Column6: co-branded materials with agencies must be reviewed by Column6 CEO and the agency; no client campaign data without written client permission

PARTNER PROGRAM PERFORMANCE:
  Allevio broker program:
    # active broker relationships (brokers who have referred ≥1 employer in the last 12 months)
    # employer referrals from brokers (quarterly)
    Employer referral close rate (broker-sourced vs. non-broker-sourced)
    Broker satisfaction (annual survey; 3 questions)
    
  Column6 agency program:
    # active agency partners (agencies running campaigns in the last 90 days)
    # new agency relationships from marketing (quarterly)
    Agency NRR (partner health metric)
    Agency satisfaction (qualitative; CS relationship)
```

## Output Format

```markdown
# Partner Co-Marketing Plan — [Entity] — [Partner Type] — [Period]
**Prepared by:** Marketing Lead | **Approved by:** Entity CEO | **Partner review:** [Partner confirmed?]

---

## Partner Program Summary

| Partner type | Active partners | Referrals/pipeline this period | Goal |
|-------------|----------------|-------------------------------|------|
| [Broker / Agency] | [X] | $[X] pipeline | [X] referrals |

---

## Co-Marketing Activities

| Activity | Partner | Co-branded? | Permission on file | Status |
|----------|---------|-------------|-------------------|--------|
| Broker one-pager | [Firm] | Yes | ✅ | Approved / In review |
| Joint webinar | [Agency] | No | N/A | Planned |

---

## HIPAA Checklist (Allevio broker materials)
- [ ] No PHI in any broker-facing materials
- [ ] Broker is NOT granted access to member or employer health data
- [ ] Dr. Lewis HIPAA review completed before broker distribution
- [ ] Co-branded materials reviewed: both logos used correctly per brand guidelines

---

## Partner Performance Metrics

| Metric | This period | Target | Status |
|--------|------------|--------|--------|
| Active broker referrals | | | |
| Pipeline from broker channel | $X | $X | |
| Column6 agency NRR | | ≥95% | |
```

## Output Contract
- Partner enablement is about making partners successful, not just giving them materials — a broker who has Allevio's one-pager in a filing cabinet is not an active partner; Dr. Lewis ensures the Allevio broker program includes: quarterly check-in to understand what the broker is hearing from employers; training on common employer objections to care coordination; regular performance data from Allevio that the broker can use to demonstrate their value to their employer clients; partners become active when they see business value; the materials are just tools
- Co-branded materials require both parties' approval before any use — a co-branded Allevio + [Broker firm] one-pager that uses the broker's logo without their permission is a brand violation; Dr. Lewis requires written confirmation from the partner before any co-branded asset is produced; the partner reviews the final asset; the entity CEO approves the asset; only then is it distributed; no co-branded material is produced speculatively and then used; partners must opt in to co-branding explicitly
- Broker access to Allevio data is defined and limited — a broker partnership does not grant any right to member health data, employer clinical data, or AdvancedMD records; the broker is a referral channel, not a care partner; if a broker asks for member-level data to track their employer client's outcomes, Dr. Lewis's response is: "We provide employer-aggregate utilization and outcome data to employers directly; brokers receive the same employer-aggregate data that the employer receives, with employer authorization"; no HIPAA-protected data is ever shared with a broker without explicit employer authorization and Dr. Lewis HIPAA review
- HITL required: broker program terms → Allevio CEO + Dr. Lewis set commission and data sharing terms; co-branded materials → entity CEO approves; Dr. Lewis HIPAA review for all Allevio broker materials; partner data sharing → Dr. Lewis determines what data brokers can receive; Column6 agency partnership terms → Column6 CEO; joint webinar → entity CEO aware before launch; annual partner survey → entity CEO reviews results

## System Dependencies
- **Reads from:** mktg-allevio-employer-marketer (broker referral as demand gen channel — feeds into Allevio marketing plan); mktg-column6-agency-marketer (agency partnership as Column6's core go-to-market); mktg-messaging-matrix (partner enablement materials carry entity messages); mktg-creative-brief-writer (co-branded materials brief)
- **Writes to:** Partner enablement library (SharePoint → [Entity] → Marketing → Partner Enablement); co-branded materials; broker program terms (SharePoint → Allevio → Legal → Broker Program); partner performance log; HIPAA review records (Allevio broker materials); partner permission records (co-branded assets)
- **HITL Required:** Broker program terms → Allevio CEO + Dr. Lewis; co-branded materials → entity CEO; Allevio broker materials → Dr. Lewis HIPAA; partner data sharing → Dr. Lewis; Column6 agency terms → Column6 CEO; joint webinar → entity CEO aware; partner survey → entity CEO reviews

## Test Cases
1. **Golden path:** Allevio broker enablement launch with a Phoenix-based benefits brokerage (150-employer book of business). Materials: co-branded Allevio + [Broker] one-pager (broker logo with written permission; Dr. Lewis HIPAA review — no PHI; Allevio CEO approves). Broker training session: 45-minute Zoom call with broker team; care coordinator model explained; common employer objections covered. Q1 result: broker refers 3 employer prospects; 1 demo completed; 1 proposal issued ($180K employer contract). Broker quarterly update email: employer care utilization trends; aggregate Allevio data; no PHI. Partnership ROI: broker-sourced pipeline = $180K from $0 additional marketing spend.
2. **Edge case:** Column6 agency partner asks Column6 to produce a campaign case study that uses the partner's client data to present at an industry conference → Dr. Lewis: "We need written permission from the advertiser (the agency's client) — not just the agency — to use their campaign data publicly. The agency can give us permission for their agency's business relationship with Column6, but the campaign data belongs to the advertiser. I'll work with the Column6 commercial team to: (1) ask the agency to get the advertiser's written permission for the specific data and the conference context; (2) draft a redline of what's acceptable vs. not; (3) offer an alternative: Column6 self-serve CTV campaign data (no permission needed) if advertiser declines. Conference deadline noted."
3. **Adversarial:** Broker shares an Allevio co-branded one-pager with an employer who then shares it with a competitor DSP who is building a competing care coordination product → Dr. Lewis: "Lesson: co-branded materials distributed broadly through partners can reach unintended audiences. I'll review what was shared for any proprietary content that should be protected; the one-pager is marketing material, not a trade secret, so the primary concern is reputational use, not legal. Going forward: co-branded materials should note 'For [broker firm name] clients only — not for further distribution' on the footer. Update the Allevio broker program materials with this footer immediately. Brief Allevio CEO on the incident."

## Audit Log
Partner program terms retained permanently. Co-branded material approval records. HIPAA review records (Allevio broker materials — permanent). Partner permission records for co-branded assets. Partner performance logs (quarterly). Partner data sharing decisions retained. Annual partner survey results.

## Deprecation
Broker program terms reviewed annually. Agency partnership terms reviewed annually. Co-branded material templates reviewed when brand guidelines change. HIPAA data sharing framework updated when HIPAA regulations change. Partner program structure reviewed when entity go-to-market model changes.
