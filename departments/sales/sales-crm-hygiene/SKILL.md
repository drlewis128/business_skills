---
name: sales-crm-hygiene
description: "Maintain GHL CRM data quality for MBL portfolio company sales teams. Use when the user says 'CRM hygiene', 'CRM cleanup', 'CRM data quality', 'CRM audit', 'GHL cleanup', 'GHL hygiene', 'GHL data quality', 'GHL audit', 'dirty CRM', 'clean up CRM', 'bad CRM data', 'duplicate contacts', 'duplicate accounts', 'stale contacts', 'stale pipeline', 'stale deals', 'old pipeline', 'pipeline cleanup', 'CRM quality', 'contact cleanup', 'contact data', 'contact deduplication', 'missing fields', 'incomplete records', 'CRM fields', 'GHL fields', 'required fields', 'contact stage', 'pipeline stage', 'pipeline hygiene', 'data hygiene', 'data cleanup', 'CRM reporting accuracy', 'GHL reporting', 'GHL tags', 'contact tags', 'CRM tags', 'HIPAA CRM', 'PHI in CRM', 'Allevio CRM', 'Column6 CRM', 'HIVE CRM', or 'sales data quality'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|all>] [--action <audit|cleanup|dedup|hipaa-check>]"
---

# Sales CRM Hygiene

Maintain GHL CRM data quality for MBL portfolio company sales teams — auditing contact and pipeline records for completeness, accuracy, duplicates, and HIPAA compliance. CRM hygiene is not a cosmetic activity; bad CRM data produces bad pipeline reports, inaccurate forecast models, and HIPAA risk at Allevio. Dr. Lewis runs a monthly GHL audit; entity CEOs are briefed on hygiene status quarterly.

## When to Use
- Monthly GHL audit (standing process)
- Before a pipeline review or QBR (data must be clean for the report to be trusted)
- When a rep leaves (their records need reassignment and cleanup)
- When a HIPAA concern arises (potential PHI in Allevio CRM records)

## CRM Hygiene Framework

```
GHL DATA QUALITY DIMENSIONS:
  1. Completeness: required fields populated for every contact and opportunity
  2. Accuracy: contact info is current; stages reflect actual status
  3. Uniqueness: no duplicate contacts or accounts
  4. HIPAA compliance (Allevio): no PHI in any GHL record
  5. Activity recency: contacts without activity in 90 days flagged for review
  6. Stage alignment: pipeline stage matches actual sales activity
  
REQUIRED FIELDS BY RECORD TYPE:

  Contact (Employer/Agency/Mineral Owner):
    Allevio employer contact: company name; contact name; title (HR Director / CFO); email; phone; employee count; 
      ICP tier; territory owner (AE name); outreach status; last activity date
    Column6 agency contact: agency name; contact name; title (Media Buyer / VP Media); email; phone; 
      annual CTV budget estimate; ICP tier; territory owner (AE name); last IO date
    HIVE acquisition contact: name; address (from county recorder); interest type (royalty/ORRI/mineral); 
      source (county recorder / broker / referral); last contact date; WTI status at last contact
      
  Opportunity:
    Required: opportunity name; entity; stage; expected close date; ACV; AE owner; last activity
    MEDDPICCC fields (Allevio/Column6): populated through discovery; minimum 4/8 required by Stage 4
    HIVE opportunity: asset type; BOE estimate; NRI%; Matt Mathison review date; WTI at review
    
HIPAA COMPLIANCE — ALLEVIO GHL (non-negotiable):
  PROHIBITED in any GHL Allevio record:
    Employee names (except HR Director and CFO as the sales contacts)
    Employee health conditions; diagnoses; health status
    Claims data; utilization data; specific health events
    Employee census data (pre-contract)
    Any data that could identify an individual's health information
    
  PERMITTED in GHL Allevio records:
    Employer name; HQ address; employee count (total headcount estimate)
    HR Director and CFO names and titles (as sales contacts only)
    Benefits renewal date; current PMPM estimate; claims trend %
    Sales notes referencing employer-level cost or operational concerns
    Stage; ACV estimate; MEDDPICCC fields (employer-aggregate)
    
  Monthly HIPAA audit process:
    Export all Allevio contacts from GHL
    Search notes fields for: "employee"; "diagnosis"; "condition"; "claim"; "patient"; "member"
    Flag any record where notes contain potential PHI → Dr. Lewis reviews → expunges if confirmed PHI
    Log audit date and finding count (including "0 PHI records found")
    
DUPLICATE MANAGEMENT:
  Detection: GHL's built-in duplicate detection (email match; phone match; company name match)
  Monthly review: run duplicate check across all entity pipelines
  Resolution:
    Same contact, different AE owners: entity CEO resolves (who owns the relationship?)
    Same company, different contacts: not a duplicate — multiple contacts at one employer are normal
    True duplicate: merge records in GHL; preserve all notes and activity history; assign to correct owner
    
STALE RECORD MANAGEMENT:
  Contact with no activity in 90 days: flagged in monthly audit
  Options: (1) Active nurture — confirm rep is monitoring (valid status); (2) Closed as lost — no path forward; 
    (3) Reassigned — rep has too many; someone else should own it; (4) Archived — no longer ICP (company shrank; closed)
  Stage mismatch: opportunity in "Proposal" stage with no proposal sent in 90 days → move to earlier stage or close as lost
  
ACTIVITY LOGGING REQUIREMENTS:
  Every prospect contact → GHL activity log within 24 hours
  Discovery call → GHL notes updated with MEDDPICCC fields same day
  Proposal sent → GHL stage advanced; proposal date logged
  Demo completed → GHL notes updated with attendees and key outcomes
  Lost deal → GHL stage = Closed Lost; loss code required (budget / timing / competitor / no compelling event)
  HIVE: all acquisition contacts → GHL activity log; WTI at time of contact recorded
  
GHL AUDIT REPORT CADENCE:
  Monthly (Dr. Lewis): hygiene score by entity; PHI audit result; stale record count; duplicate count
  Quarterly (entity CEO briefing): hygiene trend; rep logging compliance; MEDDPICCC field completion rates
  Annual (full data review): territory accuracy; ICP field accuracy; contact data refresh
```

## Output Format

```markdown
# GHL CRM Hygiene Report — [Entity / All] | [Date]
**Audited by:** Dr. Lewis | **Audit type:** [Monthly / HIPAA / Pre-QBR / Rep Departure]

---

## Hygiene Score
| Dimension | Score | Finding |
|-----------|-------|---------|
| Completeness | [X%] | [N] contacts with missing required fields |
| Accuracy | [X%] | [N] stale contacts (90+ days no activity) |
| Uniqueness | [X%] | [N] duplicate records identified |
| HIPAA compliance (Allevio) | ✅ PASS / ❌ FAIL | [N] potential PHI records flagged |
| Stage alignment | [X%] | [N] stage mismatches identified |
| Activity logging | [X%] | [N] contacts with no activity log in 30 days |

---

## Critical Issues (requires immediate action)
[Any HIPAA findings; any Tier 1 accounts with no owner; any records preventing accurate forecasting]

---

## Action Items
| Item | Owner | Due date |
|------|-------|---------|
| [Action] | [Rep / Entity CEO / Dr. Lewis] | [Date] |

---

## HIPAA Audit Summary (Allevio only)
- Records reviewed: [N]
- Potential PHI flagged: [N]
- PHI confirmed and expunged: [N]
- Audit log updated: [Date]
```

## Output Contract
- The HIPAA audit is run on every monthly GHL check — not quarterly, not "when we think about it"; HIPAA violations in the CRM are discovered during audits, not at the moment they're entered; a rep who puts "employee Jane Smith has diabetes — manager wants to solve her care situation" in a GHL note may not realize that's PHI, but it is; the monthly audit catches it before it sits in a system for years and creates a breach; Dr. Lewis runs the keyword search; any flagged record is reviewed by Dr. Lewis before expunging (not by the rep who entered it); the expunge action and date are logged; entity CEO is informed of confirmed PHI events immediately; count of "0 PHI records found" is also logged (proves the audit ran)
- Stale records are pipeline noise — a CRM where 40% of "active" opportunities haven't had activity in 90 days produces forecasts that are 40% fiction; pipeline health reports are only trustworthy when stale records are regularly closed or reclassified; Dr. Lewis enforces a rule: any opportunity in Stage 4+ with no activity in 60 days gets flagged to the entity CEO and the owning AE; they have 1 week to document a next step or the opportunity moves back to earlier stage; reps who hate this rule are reps whose pipeline health is propped up by stale numbers — which is exactly why the rule exists
- HITL required: PHI confirmed in Allevio GHL → Dr. Lewis expunges and notifies entity CEO immediately; PHI in GHL that may constitute a HIPAA near-miss → entity CEO + Dr. Lewis document as near-miss event; territory reassignment after rep departure → entity CEO assigns within 1 week; stale Tier 1 opportunity cleanup → entity CEO approves stage change; GHL data export for any purpose beyond CRM operations → Dr. Lewis reviews for PHI risk before any export is shared; duplicate merge involving Tier 1 accounts → entity CEO informed; rep departure GHL transfer → entity CEO authorizes

## System Dependencies
- **Reads from:** GHL (all entity pipelines; contact records; notes fields; activity logs; stage data; owner assignments); territory assignments (sales-territory-planner); HIPAA keyword list (Dr. Lewis maintains); ICP tier definitions (sales-icp-builder)
- **Writes to:** GHL (record updates; stage corrections; owner reassignments; duplicate merges; PHI expunge with log note); CRM hygiene audit report (SharePoint → [Entity] → Sales → CRM-Audit → [Date]); PHI audit log (SharePoint → Allevio → Compliance → CRM-PHI-Audit → [Date]); entity CEO hygiene briefing; near-miss HIPAA records (if PHI confirmed)
- **HITL Required:** PHI confirmed → Dr. Lewis expunges; entity CEO notified immediately; near-miss → entity CEO + Dr. Lewis; territory reassignment → entity CEO; stale Tier 1 cleanup → entity CEO approves; GHL export → Dr. Lewis PHI check; Tier 1 duplicate merge → entity CEO informed; rep departure GHL transfer → entity CEO authorizes

## Test Cases
1. **Golden path:** Monthly Allevio GHL audit (June 2026). 847 Allevio contacts. Hygiene checks: completeness 91% (76 contacts missing ICP tier field); accuracy 87% (110 contacts no activity 90+ days); uniqueness 99.2% (7 duplicates detected); HIPAA search: keywords flagged in 3 records. Dr. Lewis reviews 3 flagged records: 2 are false positives ("claims trend" — permissible employer-level language); 1 confirms PHI (rep's note: "HR Director says their top employee Tom has a chronic condition driving their claims"). Action: expunge the note; rep coaching on HIPAA; entity CEO notified of near-miss event; near-miss logged. Duplicates: 3 true duplicates merged; 4 multi-contact companies (not duplicates; left as-is). 76 missing ICP tier fields: AEs assigned to update within 1 week. Audit report generated; logged.
2. **Edge case:** Departing Allevio AE owns 23 active pipeline accounts; 8 are Tier 1 → Dr. Lewis: "Immediate priority on rep departure: (1) Export AE's GHL records today — before access is revoked; (2) Tier 1 accounts (8): entity CEO assigns each to a specific AE or takes ownership temporarily — this happens today, not next week; (3) Tier 2 accounts (15): entity CEO reviews and distributes based on territory capacity — this week; (4) Any account in Stage 6+ (Negotiation or close): entity CEO personally contacts those prospects to introduce the transition and introduce the new AE — losing a deal at Stage 6 because of a rep departure is avoidable; (5) GHL access revoked after transfer is complete (not before). I'll run a hygiene check on the departed rep's records for PHI and data completeness before transferring."
3. **Adversarial:** A rep proposes using GHL's AI contact enrichment feature to automatically pull LinkedIn data into Allevio contact records, including "employment history, health-adjacent interests, and wellness app connections" → Dr. Lewis: "That feature is not going into Allevio's GHL until I've reviewed exactly what data it pulls and confirmed it's HIPAA-safe. 'Health-adjacent interests' and 'wellness app connections' sound like exactly the kind of inferred health data that GHL would have no authorization to store under our HIPAA framework. The risk: if that enrichment data includes any health inference about an identified individual who is or becomes an Allevio member, it's PHI — and GHL isn't our HIPAA-compliant data warehouse; it's our sales CRM. I'll review the feature documentation and confirm with entity CEO before any AI enrichment is activated on Allevio contacts."

## Audit Log
Monthly hygiene audit records (all entities; date; hygiene scores; action items; SharePoint). PHI audit records (date; keyword search; records reviewed; flags; confirmed PHI; expunge date; entity CEO notification; SharePoint → Allevio → Compliance). Near-miss HIPAA records (event; rep involved; corrective action; entity CEO notification). Duplicate merge records (which records; decision; merged by). Stale record reclassification records (opportunity; old stage; new stage; entity CEO approval). Rep departure GHL transfer records (accounts transferred; new owners; transfer date; entity CEO authorization).

## Deprecation
Hygiene audit process reviewed annually. HIPAA keyword list reviewed when HHS AI guidance or HIPAA marketing rules change. Required fields reviewed when GHL pipeline configuration changes. Stale record thresholds reviewed when average sales cycle length changes. Activity logging requirements reviewed when GHL capabilities change.
