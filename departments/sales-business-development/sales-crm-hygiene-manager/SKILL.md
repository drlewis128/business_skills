---
name: sales-crm-hygiene-manager
description: "Maintain CRM data quality and hygiene for MBL portfolio companies. Use when the user says 'CRM hygiene', 'CRM data quality', 'clean the CRM', 'CRM cleanup', 'bad data in the CRM', 'duplicate contacts', 'stale records', 'missing data in CRM', 'CRM audit', 'GoHighLevel cleanup', 'CRM data', 'contact data quality', 'CRM update', 'CRM health', 'data quality', 'incomplete records', 'missing fields', 'CRM maintenance', 'CRM accuracy', 'CRM review', 'stale deals', 'zombie pipeline', or 'pipeline cleanup'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <audit|clean|enforce|report>] [--focus <contacts|deals|activities|all>]"
---

# CRM Hygiene Manager

Maintain CRM data quality for MBL portfolio companies — ensuring that the pipeline, contact records, and activity logs are accurate, complete, and usable for forecasting and reporting. A CRM with poor data quality is not a CRM; it is a fiction machine that produces bad forecasts, bad reports, and bad decisions. Dr. Lewis audits CRM data quality monthly and enforces data entry standards with every pipeline review.

## When to Use
- Monthly pipeline review (CRM hygiene check is embedded in every review)
- Before exporting CRM data for a board report or investor update
- After a rep departure (their records must be cleaned and reassigned)
- Quarterly full CRM audit
- When forecast accuracy is poor (often a data quality root cause)

## CRM Hygiene Framework

```
CRM HEALTH STANDARDS — REQUIRED FIELDS:

  CONTACT RECORDS (every contact in CRM must have):
    □ First name, last name (no "Unknown" contacts)
    □ Company name (matched to the correct account)
    □ Title/role (decision-maker; influencer; champion; end user)
    □ Email address (no bouncing addresses left active)
    □ Phone number (direct line preferred)
    □ Lead source (how did we get this contact?)
    □ CRM owner (which rep is responsible?)
    □ Last activity date (when was the last logged interaction?)
    
  DEAL RECORDS (every active deal must have):
    □ Deal name (standardized format: [Company] — [Type] — [Year])
    □ Deal value (ACV in dollars; $0 deals are not active deals)
    □ Pipeline stage (accurate — matches the actual deal status)
    □ Close date estimate (current; not a default placeholder like 12/31)
    □ Deal owner (which rep owns this?)
    □ Last activity date (within the last 14 days for active deals)
    □ Next action (what is the specific next step? owner? due date?)
    □ Lead source (how did this deal originate?)
    □ Probability (consistent with stage definition — not manually inflated)
    
  ACTIVITY LOGS (every interaction must be logged):
    □ Calls (outcome; call notes; next step)
    □ Emails (sent; reply received; subject)
    □ Meetings (date; attendees; outcome; decisions; next step)
    □ Proposals sent (date; amount; follow-up date)
    □ Contracts sent / signed (date; amount)
    Logging standard: Within 24 hours of the interaction (same day preferred)

CRM HYGIENE AUDIT CHECKLIST (monthly):

  ZOMBIE PIPELINE (most common issue):
    Definition: Deals in active stages with no logged activity in >14 days
    Action: Flag in pipeline review; rep must update within 24 hours
    If no valid next action: Move to Closed Lost with reason code
    Root cause: Reps leaving dead deals active to protect "optics" of their pipeline
    
  DUPLICATE CONTACTS:
    Definition: Same person appears in CRM more than once (different emails; name variations)
    Action: Merge records; retain the most complete record; archive the duplicate
    Root cause: Multiple reps adding the same contact without searching first
    
  MISSING CLOSE DATES / DEFAULT PLACEHOLDER:
    Definition: Deal close date is 12/31 of the current year without a rep-specific rationale
    Action: Rep updates with a real estimate within 24 hours of being flagged
    
  MISSING DEAL VALUE:
    Definition: Active deal with $0 or no ACV entered
    Action: Rep populates with an ACV estimate; cannot appear in the pipeline without a value
    
  INACTIVE CONTACTS (clean quarterly):
    Definition: Contacts with no activity in 12+ months and no future engagement planned
    Action: Move to "Nurture" status; remove from active outreach lists; set a re-engagement date
    
  REP DEPARTURE CLEANUP (within 24 hours of departure):
    □ Reassign all active deals to the appropriate rep or manager
    □ Reassign all contacts to the appropriate rep
    □ Log a note on all active deals describing the status and last activity
    □ Check for any deals in late stages that need immediate executive attention

ENFORCEMENT — CRM STANDARDS ARE NOT OPTIONAL:
  Any deal that appears in the pipeline review without complete required fields:
    → Rep has 24 hours to update or the deal is moved to Closed Lost
  Repeated CRM hygiene violations:
    → Performance conversation with the rep; documented
    → If persistent: Address in the coaching framework (sales-coaching-framework)
  Dr. Lewis spot-checks CRM data quality in every pipeline review
    → When a field is missing or inaccurate: Ask the rep live; note the pattern over time
```

## Output Format

```markdown
# CRM Hygiene Audit — [Entity] | [Month YYYY]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **CRM:** GoHighLevel

---

## Data Quality Score

| Dimension | Records audited | Issues found | Score |
|-----------|----------------|-------------|-------|
| Contact completeness | [N] contacts | [N] missing fields | [X]% complete |
| Deal completeness | [N] deals | [N] missing fields | [X]% complete |
| Activity log currency | [N] active deals | [N] no activity >14 days | [X]% current |
| Duplicate contacts | — | [N] duplicates found | — |
| Zombie pipeline | — | [N] stale deals | — |

**Overall CRM health score:** [X]% | Target: >90%

---

## Issues to Resolve

| Issue | Record | Owner | Action required | Due |
|-------|--------|-------|----------------|-----|
| Missing close date | [Deal A] | [Rep] | Update close date estimate | 24 hours |
| Zombie deal (21 days stale) | [Deal B] | [Rep] | Update or move to Closed Lost | 24 hours |
| Duplicate contact | [Name] | [Rep] | Merge records | This week |

---

## Repeat Offenders (if any)

| Rep | Issue pattern | # occurrences | Action |
|-----|-------------|--------------|--------|
| [Rep A] | Missing activity logs | 3 months in a row | Coaching conversation |
```

## Output Contract
- CRM hygiene is non-negotiable — a sales pipeline is only as useful as the data in it; Dr. Lewis treats CRM hygiene as a core discipline, not a nice-to-have; deals that don't meet the minimum data standards are flagged in every pipeline review and must be corrected within 24 hours or removed from the active pipeline; a rep who consistently leaves deals incomplete or fails to log activities is not managing their pipeline — they are hiding their pipeline
- Zombie pipeline is the most damaging data quality issue — deals in active stages with no recent activity inflate the pipeline, produce false coverage ratios, and generate overoptimistic forecasts; Dr. Lewis specifically identifies zombie pipeline deals in every monthly review and removes them (either updating with a real next step or moving to Closed Lost); a clean pipeline with accurate data is more valuable than an inflated pipeline with stale deals
- Activity logging is a rep discipline, not a suggestion — a call that isn't logged didn't happen from the CRM's perspective; a meeting that isn't logged produces no follow-up; a proposal that isn't logged means the next rep who touches the account doesn't know the history; Dr. Lewis enforces the 24-hour logging standard and addresses repeated non-compliance in the coaching framework; the goal is not to create administrative burden but to build a system that every rep's work is visible and improvable
- HITL required: Sales reps log their own activities and maintain their own deal records; Dr. Lewis audits the quality and enforces the standards; CEO is informed of systemic CRM data quality issues or individual rep non-compliance patterns; Dr. Lewis does not log activities on behalf of reps — reps own their records; Dr. Lewis does not move a deal to Closed Lost without first informing the rep and giving them 24 hours to update; the CEO is the final decision-maker on rep performance issues related to CRM compliance

## System Dependencies
- **Reads from:** GoHighLevel CRM (all contact; deal; and activity records); sales-pipeline-manager (pipeline review flags surface hygiene issues); sales-forecast-builder (data quality problems in CRM cascade into forecast accuracy problems); sales-kpi-dashboard (inaccurate CRM data produces inaccurate KPI reports)
- **Writes to:** CRM hygiene report (SharePoint/Sales/<Company>/CRM/[YYYY-MM]_CRMHygieneAudit.pdf); GoHighLevel (updating or archiving stale records after rep review; merging duplicates); CEO compliance flag (if rep is repeatedly non-compliant); coaching framework input (sales-coaching-framework — CRM compliance as a coaching topic)
- **HITL Required:** Reps update their own records; Dr. Lewis audits and flags; CEO informed of systemic issues or individual non-compliance; Dr. Lewis does not modify active deal records without rep awareness and approval; Dr. Lewis does not merge contacts without confirming the duplicate is actually the same person; deals are not moved to Closed Lost without 24-hour notice to the rep

## Test Cases
1. **Golden path:** Monthly CRM hygiene audit for Allevio → Dr. Lewis runs the audit: 24 active deals; 21 have all required fields complete (87.5%); 3 issues: Deal X missing close date (rep updates same day: November 15); Deal Y — 19 days no activity (rep updates: prospect on vacation; follow-up scheduled next week; deal stays active); Contact Z — duplicate (same HR Director at two company entries; merge completed; one record retained); Duplicate contacts found: 2 (both merged); Zombie pipeline: 1 (Deal Y — resolved with a legitimate explanation); CRM health score: 91% after cleanup; no repeat offenders; audit report filed
2. **Edge case:** Allevio's lead rep departs unexpectedly — 11 active deals in the CRM with no owner → Dr. Lewis: "Rep departure requires immediate CRM action — within 24 hours. I'll: (1) Reassign all 11 active deals to the CEO temporarily (CEO reviews each one); (2) Review each deal's last activity — any deal in Stage 5+ (Negotiation/Contract Sent) gets an immediate CEO call today; (3) Log a summary note on every deal: 'Previous owner departed. Status as of [Date]: [summary of last activity and next step from CRM records]'; (4) Reassign contacts to the relevant successor rep once one is identified; (5) 3 deals are in Contract Sent — these cannot go dark; CEO is on them today." All reassignments complete within 24 hours; 2 of 3 Contract Sent deals close within 2 weeks
3. **Adversarial:** A sales rep pushes back on the CRM activity logging requirement: "I spend my time selling, not entering data into a system" → Dr. Lewis responds to the CEO: "The rep's position is understandable — nobody enjoys data entry. But the activity log is not bureaucracy; it is the evidence that the rep is working their pipeline. Without logged activities: (1) Dr. Lewis can't know if a deal is progressing or stagnant; (2) The pipeline forecast has no factual basis; (3) When this rep is away, no one can pick up their deals without starting from scratch. Recommendation: (a) Review the logging burden — are we asking for too much? Can we simplify to 'call: outcome + next step' instead of full notes? (b) If the burden is reasonable and the rep won't comply, this is a coaching issue. The standard is 24-hour logging and it applies to all reps." CEO makes the call; logging standard confirmed; simplified call log format introduced; rep complies

## Audit Log
Monthly CRM hygiene reports retained by entity and period. Issue resolution records retained. Rep departure cleanup records retained (immediate action; deal reassignment; notes). Repeat offender coaching records retained. Duplicate merge records retained. Zombie pipeline resolution records retained.

## Deprecation
Retire when each portfolio company has a dedicated CRM administrator or Sales Operations role who maintains data quality — with Dr. Lewis reviewing monthly CRM health scores and the CEO addressing persistent rep non-compliance.
