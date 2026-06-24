---
name: sec-privacy-by-design-advisor
description: "Apply Privacy by Design principles to MBL portfolio company systems and processes. Use when the user says 'privacy by design', 'privacy by default', 'privacy first', 'build in privacy', 'privacy architecture', 'data privacy', 'privacy review', 'privacy impact', 'privacy impact assessment', 'PIA', 'data protection impact assessment', 'DPIA', 'CCPA privacy', 'HIPAA privacy', 'privacy controls', 'privacy requirements', 'collect less data', 'data minimization', 'minimum necessary data', 'purpose limitation', 'data retention', 'data deletion', 'right to delete', 'right to know', 'consumer privacy rights', 'CCPA consumer request', 'CCPA opt out', 'privacy policy', 'privacy notice', 'privacy disclosure', 'data handling', 'personal data handling', 'personally identifiable information', 'PII handling', 'consumer data', 'user data privacy', 'employee data privacy', 'employer data privacy', 'LP investor privacy', 'investor data', 'data governance', 'privacy governance', 'data subject rights', 'individual rights', 'privacy compliance', 'privacy engineering', 'design review privacy', or 'privacy checklist'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <review|assess|implement|respond>] [--scope <product|process|vendor|ccpa|hipaa>]"
---

# Sec Privacy by Design Advisor

Apply Privacy by Design principles to MBL portfolio company systems and processes — ensuring that privacy protections are built into system design and business processes from the start, rather than added as an afterthought. For Allevio, this means HIPAA Privacy Rule compliance; for Column6, this means CCPA consumer rights; for HIVE, this means LP data confidentiality; for all entities, this means collecting only what's needed, keeping it only as long as required, and giving individuals control over their own data.

## When to Use
- Reviewing a new system or process for privacy implications before launch
- Responding to a CCPA consumer rights request (Column6)
- Applying data minimization to a new data collection workflow
- Building a privacy notice or data handling policy for an entity

## Privacy by Design Framework

```
7 FOUNDATIONAL PRINCIPLES (Ann Cavoukian — adapted for MBL):

  1. PROACTIVE NOT REACTIVE:
     Address privacy before problems arise, not after
     Every new system or data collection: privacy review before go-live
     Privacy review questions: What data are we collecting? Why? Who can access it? How long do we keep it?
     
  2. PRIVACY AS THE DEFAULT:
     Default settings protect privacy — users should NOT have to opt in to privacy
     Column6: ad targeting opt-out should be default (not opt-in); CCPA compliance
     Allevio: employer reporting defaults to aggregate only — individual data requires explicit authorization
     
  3. PRIVACY EMBEDDED INTO DESIGN:
     Privacy is built into system architecture, not bolted on
     Example: AdvancedMD access design — clinical coordinators get minimum necessary access by role
     Example: Allevio employer portal — employers see only their census; not other employers' data
     
  4. FULL FUNCTIONALITY (positive sum, not zero-sum):
     Privacy and functionality are not trade-offs
     Allevio can provide valuable employer reporting without exposing individual PHI
     Column6 can deliver targeted advertising without storing identifiable consumer data
     
  5. END-TO-END SECURITY:
     Privacy protected throughout data lifecycle (collection → use → retention → deletion)
     Data minimization: collect only what's needed
     Data retention: keep only as long as required
     Data deletion: destroy securely when retention period ends
     
  6. VISIBILITY AND TRANSPARENCY:
     Communicate clearly what data is collected, why, and how it's protected
     Privacy notice (external): what consumers/employers/LPs need to know
     Privacy policy (internal): how employees handle data
     
  7. RESPECT FOR USER PRIVACY:
     Keep individual interests first — design for user benefit, not just business benefit
     
MBL ENTITY PRIVACY REQUIREMENTS:

  ALLEVIO (HIPAA Privacy Rule — 45 CFR §164.501-.534):
    Minimum necessary standard: access only PHI required for job function
    Uses and disclosures: PHI used only for treatment; payment; operations — not marketing
    Employer access: employers are NOT authorized to receive individual-level PHI
      Employer reporting = aggregate only; de-identified; non-identifiable
      CRITICAL: individual-level PHI must NEVER flow to employers in any report
    Individual rights: patients have rights to their PHI (access; amendment; accounting of disclosures)
    Notice of Privacy Practices (NPP): required; must be provided to individuals
    Training: HIPAA Privacy training for workforce (sec-security-awareness-trainer)
    Business Associates: entities receiving PHI on behalf of Allevio (BAA required — sec-baa-security-validator)
    
  COLUMN6 (CCPA — California Consumer Privacy Act / CPRA):
    Consumer rights:
      Right to Know: what personal information collected; categories; purposes; third parties
      Right to Delete: consumer can request deletion of their personal information
      Right to Opt-Out: consumer can opt out of sale or sharing of personal information
      Right to Correct: consumer can request correction of inaccurate information
      Non-discrimination: cannot discriminate for exercising privacy rights
    Privacy Notice: required on Column6 digital properties; include data categories; rights info
    Data Sale/Sharing: if consumer data is sold to advertisers or ad platforms — opt-out required
    Response deadline: 45 days to respond to consumer requests (10-day acknowledgment)
    
  HIVE (LP investor data — contractual; no specific statute):
    LP data is confidential under LP agreements
    Covercy data: LP investment data; distributions; tax documents — Tier 1 Restricted
    Sharing restrictions: LP data shared only with the specific LP and authorized fund managers
    Retention: per fund agreement terms (typically 7-10 years after fund close)
    
  MBL HOLDCO (employee data; M&A data):
    Employee records: HR privacy standards (Arizona employment law; federal requirements)
    M&A data: LOI terms; target company financials — confidential; restricted to deal team
    
DATA MINIMIZATION CHECKLIST (use when designing any new data collection):
  1. What specific data are we collecting? (be precise)
  2. Why do we need each field? (can we achieve the purpose without it?)
  3. Who needs access? (minimum necessary; role-based)
  4. How long do we keep it? (retention schedule)
  5. How do we delete it at end of retention? (process; verification)
  6. What do we tell individuals we're collecting? (privacy notice)
  
CCPA CONSUMER REQUEST RESPONSE (Column6):
  Receive request → acknowledge within 10 days → verify identity → respond within 45 days
  Request to Know: pull all consumer data; document; provide in readable format
  Request to Delete: delete from all systems; confirm with third parties; response to consumer
  Request to Opt-Out: honor opt-out immediately; update ad platform targeting settings
  Document: all requests; responses; dates; verification method (HIPAA-level recordkeeping not required; best practice)
```

## Output Format

```markdown
# Privacy Impact Assessment — [Entity] | [System or Process] | [Date]
**Reviewer:** Dr. John Lewis | **Risk level:** [Low/Medium/High]

---

## Data Collected
| Data element | Business purpose | Necessary? | Retention | Deletion process |
|-------------|-----------------|-----------|-----------|-----------------|
| Employee SSN | Benefits enrollment | Yes | 7 years | Secure delete after term |
| Employer group census | Health plan admin | Yes — min necessary | Contract term | Delete on contract end |

---

## Privacy Risks
| Risk | Entity | Regulation | Mitigation |
|------|--------|-----------|-----------|
| Individual-level PHI to employer | Allevio | HIPAA Privacy | Aggregate reports only — hard stop |
| Consumer data sold without opt-out | Column6 | CCPA | Opt-out mechanism required |

---

## Privacy Design Recommendations
1. [Specific design change]
2. [Data minimization recommendation]
```

## Output Contract
- Individual-level PHI must never flow to Allevio employers under any circumstance — this is the absolute HIPAA Privacy Rule constraint for Allevio's MSO model; employers sponsor health plans for their employees; employers pay premiums; employers want to know if their money is being spent well; but HIPAA is explicit: employers in their capacity as plan sponsors do NOT have authorized access to individual-level PHI without a specific written authorization from each employee; Allevio's employer reporting design must be "privacy by default" — the default answer when an employer asks "can I see which of my employees are using the plan and for what?" is "no, and here's why"; what Allevio CAN provide employers: aggregate utilization data (total claims; claim category percentages; cost trends) at the group level; what Allevio CANNOT provide: individual employee names; individual diagnoses; individual utilization; any data that would allow the employer to identify which specific employee had a specific health event; Dr. Lewis reviews every Allevio employer report template before deployment to confirm it meets this standard
- CCPA consumer rights requests are time-limited — Column6 must respond within 45 days; acknowledgment within 10 days; the right to delete is not aspirational (the consumer has a legal right; Column6 has a legal obligation; failure to respond is a civil CPRA violation); Column6's data systems (CTV campaign delivery; consumer device data; GoHighLevel CRM contacts) must have a documented deletion capability and process; when a deletion request arrives: Dr. Lewis + entity CEO review the request; IT executes deletion from all applicable systems; confirmation is sent to the consumer; the process is documented; Column6 should maintain a simple CCPA request log (request type; identity verification method; date received; date acknowledged; date completed; response)
- HITL required: Allevio employer report template → Dr. Lewis reviews before deployment; any individual-level PHI must be caught and removed before the report goes out; CCPA consumer request → Dr. Lewis + entity CEO review; IT executes; response sent within 45 days; privacy impact assessment → Dr. Lewis conducts before any new system or data collection goes live; entity CEO approves any new Tier 1 or Tier 2 data collection; new vendor receiving Allevio PHI → BAA required before data flows (sec-baa-security-validator); privacy notice updates → entity CEO approves before publication; LP data request → Matt Mathison authorizes any disclosure beyond the specific LP's own data

## System Dependencies
- **Reads from:** Allevio employer reporting templates (current design — PHI review); HIPAA Privacy Rule guidance (§164.501-.534 — authorized uses/disclosures; minimum necessary); CCPA/CPRA text and California AG guidance; Column6 consumer data inventory (what's collected; where; retention); HIVE LP agreements (data sharing terms; retention); M365 admin (where data is stored; SharePoint; Teams; Outlook); AdvancedMD access control settings (minimum necessary — sec-iam-manager); sec-data-classification-manager (data tiers — Restricted PHI; LP data; Confidential)
- **Writes to:** Privacy impact assessment report (SharePoint → [Entity] → Security → Privacy → PIA-[System]-[Date]); CCPA consumer request log (SharePoint → Column6 → Privacy → CCPA-Requests → [Year]); privacy notice (entity website; M365 published — entity CEO approved); Allevio employer report design review record (SharePoint → Allevio → Security → Privacy → Employer-Report-Review → [Date]); data minimization recommendations (Monday.com — design team + Dr. Lewis; due date); entity CEO privacy briefing (quarterly + any consumer rights requests received)
- **HITL Required:** Allevio employer report → Dr. Lewis reviews every template; individual PHI = hard stop before deployment; CCPA request → Dr. Lewis + entity CEO review; IT executes deletion; 45-day deadline; PIA → Dr. Lewis before any new system; entity CEO approves Tier 1/2 data collection; new vendor with Allevio PHI → BAA required; privacy notice → entity CEO approves; LP data disclosure → Matt Mathison authorizes; CCPA opt-out request → honored immediately; ad platform updated same day

## Test Cases
1. **Golden path:** Allevio wants to give employers a new "health utilization dashboard" with trend data: Dr. Lewis conducts PIA: "What data is displayed?" Employer group aggregate: total visits; claim category percentages (musculoskeletal; preventive; behavioral health — no diagnosis names); cost trend vs. prior period. "Is any individual identifiable?" Groups of <5 employees: suppress (small group re-identification risk — aggregate of 3 people can reveal individuals). Groups ≥5: display. "Does this comply with HIPAA minimum necessary and aggregate-only standard?" Yes — no individual identifiers; aggregate only; groups suppressed below threshold. PIA finding: Low privacy risk. Recommendations: (1) Add small-group suppression logic (groups <5 show N/A). (2) Privacy notice on dashboard explains the aggregate nature. Employer dashboard approved.
2. **Edge case:** Column6 receives a CCPA "Right to Know" request from a California consumer who saw a Column6 ad: Dr. Lewis: "Right to Know request — 10-day acknowledgment clock started. (1) Send acknowledgment email within 10 days: 'We received your CCPA request and will respond within 45 days after verifying your identity.' (2) Verify identity: California AG guidance requires 'reasonably verifiable' identity check. For digital ad data: match consumer's email or device ID to Column6's data systems. (3) Pull all personal information held: what device identifiers are associated with this consumer's email? What ad campaign data? What GHL CRM record (if any)? (4) Response to consumer: categories of data collected; business purpose; third parties data was shared with (ad platforms; measurement vendors). (5) Document: request date; acknowledgment date; identity verification method; data categories discovered; response date; response content. (6) 45-day deadline from receipt date. Entity CEO informed of request received and response plan."
3. **Adversarial:** An Allevio employer directly requests a spreadsheet of "all employees who visited the clinic and what they were treated for" — they say: "We're the employer and we're paying for the health plan": Dr. Lewis: "This request must be declined. Here's the exact explanation for the entity CEO to deliver to the employer: 'Under HIPAA, we are not permitted to share individual-level health information with employers. This applies even though you sponsor the health plan. Your employees have a right to privacy about their health conditions, and our program is designed to protect that right. What we CAN provide you is an aggregate utilization report showing group-level trends — which gives you the information you need to understand program value without identifying individual employees.' If the employer presses or threatens to end the contract: this is not negotiable. Providing individual PHI to employers without explicit employee authorization is a HIPAA violation, regardless of the employer's business arguments. Dr. Lewis + entity CEO present a united front. The aggregate report is the appropriate response."

## Audit Log
Privacy impact assessment records (entity; system/process; date; risk level; findings; Dr. Lewis; entity CEO approval if Tier 1/2 data; SharePoint). Allevio employer report review records (template; date reviewed; Dr. Lewis sign-off; findings — individual PHI removed; SharePoint). CCPA consumer request records (Column6; request type; identity verification; data discovered; response date; outcome; documentation — SharePoint; retained 2 years minimum). Privacy notice version records (entity; publication date; entity CEO approval; SharePoint). LP data disclosure records (HIVE; request; Matt Mathison authorization; data shared; disclosure date; recipient; SharePoint). Data minimization recommendations (Monday.com tracking; design team; implementation confirmation).

## Deprecation
Privacy framework reviewed annually. CCPA response process reviewed when California AG updates enforcement guidance or CPRA regulations change. HIPAA Privacy Rule compliance reviewed when HHS updates Privacy Rule guidance. Data minimization checklist reviewed when entity adds new data collection workflows. LP data handling reviewed when fund agreements are updated. Employer reporting template review process reviewed when Allevio adds new report types.
