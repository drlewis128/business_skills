---
name: revops-demand-gen-ops
description: "Manage demand generation operations and performance for MBL Partners portfolio entities. Use when the user says 'demand generation', 'demand gen', 'demand gen ops', 'top of funnel', 'TOFU', 'lead generation', 'pipeline generation', 'lead gen', 'generate leads', 'pipeline building', 'new logo strategy', 'new business strategy', 'demand gen funnel', 'demand gen performance', 'demand gen dashboard', 'demand gen audit', 'inbound demand', 'outbound demand', 'demand gen mix', 'demand gen strategy', 'demand gen cadence', 'demand gen channels', 'demand gen targets', 'how do we get more leads', 'how do we generate more pipeline', 'demand gen review', 'demand gen report', 'is demand gen working', 'demand gen metrics', or 'how do we fill the funnel'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--channel <email|events|paid|content|outbound|referral>] [--action <audit|report|configure|review>]"
---

# RevOps Demand Gen Ops

Manage demand generation operations for MBL Partners portfolio entities — configuring and tracking the funnel from top-of-funnel demand to MQL, monitoring channel performance, and maintaining the infrastructure that converts marketing investment into qualified sales pipeline. Demand gen ops is the operational layer under the marketing strategy; great strategy with poor execution produces nothing.

## When to Use
- Monthly demand gen performance review
- Auditing top-of-funnel health for a pipeline coverage gap
- Setting up demand gen infrastructure for a new entity
- Diagnosing why MQL volume is declining

## Demand Gen Ops Framework

```
DEMAND GEN FUNNEL BY ENTITY:

  ALLEVIO:
    ICP: Arizona employer; ≥25 employees; responsible for employee benefits (HR / CEO / CFO / Owner)
    Demand gen channels (priority order):
      1. Events (MGMA; SHRM AZ; ASHRM; local AZ Chamber events): highest-quality leads; in-person trust
      2. Broker referral program: warm introductions; high SQL conversion (~62%)
      3. Outbound (AE sequenced outreach; personalized; not mass email): employer-specific outreach
      4. Email campaigns (GoHighLevel; employer list; CAN-SPAM compliant; BAA in effect; HIPAA reviewed)
      5. SEO / content (informational; employer-focused; not member-facing): long-lead but lower CPL
      6. LinkedIn (organic exec content; limited paid testing): relationship-building channel
      
    Volume targets (monthly, fully ramped):
      MQLs: ≥20/month (at steady-state; ramp to this over 6 months)
      Stage 3 entries from MQL: ≥7/month (35% MQL → SQL conversion)
      New pipeline Stage 4+: ≥$120K/month
      
  COLUMN6:
    ICP: agency with ≥$250K annual CTV/programmatic budget; active client roster in CTV
    Demand gen channels (priority order):
      1. Industry events (IAB; AdExchanger; PROGRAMMATIC I/O): where agency decision-makers are
      2. Outbound (agency-targeted; personalized to agency's CTV portfolio; not mass)
      3. Analyst briefings / trade press (category credibility; drives inbound)
      4. LinkedIn (column6 self-serve CTV proof posts; agency case studies)
      5. Email (light nurture; no spam; agencies receive too many vendor emails)
      
    Volume targets (monthly):
      New agency MQLs: ≥12/month
      Stage 3 entries: ≥5/month
      New pipeline Stage 4+ (IO opportunity): ≥$180K/month
      
DEMAND GEN CONVERSION STANDARDS:
  Funnel health check (monthly):
    Coverage: is there enough MQL volume to hit pipeline targets (working backward from quota)?
    Conversion: are MQL-to-SQL rates within range? (<25%: lead quality problem; >60%: criteria too loose)
    Stage entry: is new Stage 3+ pipeline meeting monthly target?
    
TOP-OF-FUNNEL INFRASTRUCTURE:
  Website: conversion-optimized landing pages for each entity ICP; clear CTAs; form linked to GHL
  GoHighLevel: lead capture forms; automatic lead scoring; MQL notification workflows
  Sequences (outbound): 5-7 touch outbound sequences per entity audience; approved by entity CEO
  Event process: badge scan or manual entry → GHL contact within 48 hours; follow-up sequence starts
  Content calendar: 2-3 demand-gen-specific content pieces per month per entity
  
HIPAA (ALLEVIO):
  No member-facing demand gen (all Allevio demand gen targets employers, not employees)
  No health condition targeting in paid media
  All demand gen content → Dr. Lewis review before distribution
  GoHighLevel BAA in effect for all lead capture
```

## Output Format

```markdown
# Demand Gen Ops Report — [Entity] — [Month]
**Prepared by:** RevOps | **Data source:** GoHighLevel + GA4

---

## Funnel Performance

| Stage | Volume | Target | vs. Target |
|-------|--------|--------|-----------|
| New leads (all sources) | | | |
| MQLs | | ≥20/mo | X% |
| Stage 3 entries (SQL→Opp) | | ≥7/mo | X% |
| New pipeline (Stage 4+) | | ≥$120K | X% |

---

## Channel Performance

| Channel | MQLs | SQL conversion | CPL | ROI trend |
|---------|------|---------------|-----|----------|
| Events | | X% | $X | ↑/↓/→ |
| Broker referral | | X% | $X | |
| Outbound | | X% | $X | |
| Email | | X% | $X | |

---

## Top-of-Funnel Health
[Comment: is the funnel generating enough volume? Are there coverage gaps?]

---

## Actions
1. [Action — owner — due date]
```

## Output Contract
- Top-of-funnel health determines next quarter's pipeline — when MQL volume drops this month, pipeline volume drops in 45-60 days, and closed revenue drops in 90-120 days; demand gen ops is fundamentally a leading indicator management function; Dr. Lewis monitors MQL volume monthly and flags downward trends 2+ months in advance of their revenue impact; by the time a revenue miss shows up in the financial report, the root cause in the demand gen funnel is 3-4 months old; catching it early means fixing it while there's still time to recover
- Channel mix should shift toward the highest-quality leads, not the lowest-cost leads — cost per lead (CPL) is an efficiency metric; cost per closed deal is the outcome metric; a broker referral that costs $200 in program management time but converts at 62% to SQL and closes at 45% is a better investment than an email campaign that costs $0.50 per contact, converts at 18% SQL, and closes at 20%; Dr. Lewis tracks demand gen ROI by channel (12-month revenue attributed / channel spend) and adjusts mix toward channels above the 3× ROI benchmark
- HITL required: Allevio demand gen content → Dr. Lewis HIPAA review before any distribution; new paid media channel for Allevio (health condition targeting prohibited) → Dr. Lewis approval; MQL volume below 50% of target for 2+ months → entity CEO + Dr. Lewis action plan; demand gen infrastructure changes in GoHighLevel → Dr. Lewis notified; new outbound sequence for any entity → entity CEO approves tone and content

## System Dependencies
- **Reads from:** GoHighLevel (MQL volume; lead source; conversion rates; sequence performance); GA4 (website traffic; landing page conversion; UTM source data); revops-lead-lifecycle-manager (MQL → SQL conversion tracking); mktg-demand-generation-manager (strategy and channel priorities); mktg-marketing-attribution (channel ROI data)
- **Writes to:** Demand gen ops reports (SharePoint → [Entity] → Marketing → Demand Gen → [Month]); GoHighLevel (sequence performance tracking; lead score updates); entity CEO demand gen briefs; Dr. Lewis portfolio demand gen summary (monthly)
- **HITL Required:** Allevio content → Dr. Lewis; new paid media (Allevio) → Dr. Lewis; MQL <50% target 2 months → entity CEO + Dr. Lewis; GHL infrastructure changes → Dr. Lewis notified; outbound sequences → entity CEO approves

## Test Cases
1. **Golden path:** Allevio June demand gen ops. New leads: 67. MQLs: 24 (35.8% lead-to-MQL ✅). Stage 3 entries: 9 (37.5% MQL-to-SQL ✅ above 35%). New pipeline (Stage 4+): $134K (✅ above $120K). Channel breakdown: Events 9 MQLs (62% SQL conv); Broker 7 MQLs (71% SQL conv); Outbound 5 MQLs (40% SQL conv); Email 3 MQLs (0% SQL conv — all disqualified: small employers outside AZ). Issue flagged: email campaign generating leads outside ICP. Dr. Lewis recommendation: tighten email list to AZ + ≥25 EE filter before Q3 campaign. Entity CEO approves. Demand gen ops healthy; no escalations.
2. **Edge case:** MQL volume drops from 22/month to 8/month in a single month (coinciding with a quiet event calendar) → Dr. Lewis: "The volume drop maps directly to the gap in events — our top 2 MQL sources (events and broker referral) are relationship-driven, and we have no events scheduled this month. This is a planned gap, not a systematic decline. What I'm recommending: (1) increase outbound activity by 30% to compensate for the event gap (entity CEO conversation with AE to confirm); (2) activate the broker follow-up sequence for the 3 brokers in our network who haven't referred in 90+ days; (3) prepare for next month's event to be high-activity — prioritize badge scan follow-up within 24 hours. July demand gen should recover to ≥20 MQLs."
3. **Adversarial:** Entity CEO proposes switching all demand gen budget to paid digital (Google/LinkedIn ads) to "scale faster" → Dr. Lewis: "I'll model that scenario, but I want to share the data first. Broker referrals close at 45% from Stage 4 and cost us $200-400 in program management per deal. Paid digital CPL in the healthcare benefits space runs $180-350 per lead — but at 18-22% SQL conversion, the cost per SQL is $800-1,900. Broker cost per SQL is $320-640. I'd propose a test: $2K/month in paid digital for 90 days while maintaining broker and event investment. If paid digital generates SQLs at competitive CPL, we scale it. If it doesn't, we've proven the data and reallocate. I won't recommend cutting the channels that are producing ≥3× ROI to fund an untested one."

## Audit Log
Monthly demand gen ops reports. Channel performance records. MQL volume tracking (all entities). Dr. Lewis pipeline gap escalation records. HIPAA review records for Allevio demand gen content (permanent). Entity CEO demand gen investment decisions. Demand gen infrastructure change records.

## Deprecation
Channel priority reviewed quarterly. MQL volume targets reviewed when entity quota changes. Infrastructure reviewed when GoHighLevel features change. HIPAA compliance reviewed when Allevio data practices or regulations change. ICP definition reviewed when entity go-to-market model changes.
