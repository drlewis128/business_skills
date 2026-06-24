---
name: sec-data-classification-manager
description: "Build and manage data classification for MBL portfolio companies. Use when the user says 'data classification', 'classify data', 'data sensitivity', 'sensitive data', 'confidential data', 'data labeling', 'data categories', 'what data do we have', 'data inventory', 'data mapping', 'data flow', 'what is sensitive', 'PHI classification', 'PII classification', 'financial data classification', 'data handling', 'data handling policy', 'data sensitivity labels', 'M365 sensitivity labels', 'information classification', 'data governance', 'information governance', 'data discovery', 'where is our sensitive data', 'data at rest', 'data in transit', 'data lifecycle', 'data retention', 'data disposal', 'data destruction', 'data minimization', 'data catalog', 'HIPAA data classification', 'CCPA data classification', 'LP data classification', 'proprietary data', 'trade secrets', 'business confidential', 'internal use only', or 'public data'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <build|map|label|report>] [--data-type <phi|pii|financial|all>]"
---

# Sec Data Classification Manager

Build and manage data classification for MBL portfolio companies — inventorying what data exists, categorizing it by sensitivity, and applying handling rules that protect the data proportionally to its risk. Data protection controls are only effective when applied to the right data; over-protecting everything creates friction; under-protecting the most sensitive data creates liability. Classification tells everyone in the organization what data matters most and how to handle it.

## When to Use
- Building the data classification policy for an entity
- Mapping sensitive data flows (PHI, financial, LP data)
- Responding to an audit request for data governance evidence
- Preparing for a HIPAA audit or CCPA compliance review

## Data Classification Framework

```
MBL DATA CLASSIFICATION TIERS:

  TIER 1 — RESTRICTED (highest sensitivity; most protective controls):
    PHI (Protected Health Information) — Allevio:
      Any individually identifiable health information
      Examples: patient names + health conditions; claim records; EHR data; employer census
      Controls: access control (minimum necessary); encryption at rest + in transit;
               BAA with all processors; no PHI in GHL; audit log on all access
               
    LP (Limited Partner) data — HIVE:
      Limited partner personal information; investment amounts; distribution records
      Examples: LP name + address + bank account; capital account balances; K-1s
      Controls: Covercy access control; no LP data in unapproved systems;
               Dr. Lewis + HIVE entity CEO access only; no sharing without LP consent
               
    Financial system credentials (all entities):
      QB admin access; bank account information; payroll data
      Controls: privileged access management; admin accounts only; no sharing; MFA
      
  TIER 2 — CONFIDENTIAL (business sensitive; protective controls):
    Acquisition targets and deal terms (HIVE; MBL):
      LOI terms; deal economics; seller names and contact info; due diligence materials
      Controls: need-to-know; SharePoint with restricted access; no external sharing without NDA
      
    Client campaign data (Column6):
      Agency names; campaign performance; CPM rates; targeting data; IO terms
      Controls: agency data isolation; no cross-agency disclosure; GHL access control
      
    Employee records (all entities):
      Compensation; performance reviews; personal information beyond name/contact
      Controls: HR access only; SharePoint restricted; entity CEO for all decisions
      
    MBL strategic plans and financial projections:
      Portfolio financials; acquisition pipeline; investor relations materials
      Controls: Matt Mathison + Dr. Lewis access; NDA required for external sharing
      
  TIER 3 — INTERNAL (general use within entity; not for external sharing):
    Business processes; internal policies; meeting notes; project plans; vendor contracts
    Controls: M365 authentication required; not shared externally without entity CEO approval
    
  TIER 4 — PUBLIC (intended for external audiences; lowest controls needed):
    Marketing materials; published website content; press releases; job postings
    Controls: standard review before publication; no sensitive data inadvertently included
    
DATA HANDLING RULES BY TIER:

  Tier 1 (Restricted):
    Storage: approved systems only (AdvancedMD for PHI; Covercy for LP data; QB for financial)
    Sharing: only with individuals who have a documented need; BAA for PHI vendors
    Email: PHI never in standard email (use secure messaging via EHR or encrypted channel)
    Encryption: required at rest and in transit for all Tier 1 data
    Disposal: NIST SP 800-88 secure disposal (shred; cryptographic erasure)
    
  Tier 2 (Confidential):
    Storage: SharePoint with access controls; not in personal cloud storage (Dropbox; Google Drive)
    Sharing: internal — need-to-know only; external — NDA required; entity CEO approves
    Email: acceptable with encryption if sent externally; not forwarded without authorization
    Disposal: standard deletion + Recycle Bin clear (no special disposal needed for most)
    
  Tier 3 (Internal):
    Storage: M365 (SharePoint; OneDrive; Teams); approved business tools
    Sharing: internal freely; external requires entity CEO approval
    Disposal: standard deletion
    
  Tier 4 (Public):
    Storage: any approved system; website; public SharePoint
    Sharing: freely; standard quality and brand review before publication

M365 SENSITIVITY LABELS (optional but recommended for entities with Office 365):
  Labels map to classification tiers:
    "Restricted — PHI" → Tier 1 (encrypted; watermarked; no external sharing)
    "Confidential" → Tier 2 (access control; cannot forward externally)
    "Internal" → Tier 3 (authenticated M365 access required)
    "Public" → Tier 4 (no restrictions)
  Dr. Lewis configures labels in M365 Compliance Center
  Rollout: train employees on how and when to apply labels
```

## Output Format

```markdown
# Data Classification Map — [Entity] | v[N] | [Date]
**Owner:** Dr. John Lewis | **Entity CEO reviewed:** [Date]

---

## Data Inventory by Tier
| Tier | Data Type | Where Stored | Who Has Access | Controls Status |
|------|-----------|-------------|----------------|----------------|
| T1 — Restricted | PHI (patient/employer records) | AdvancedMD | Clinical + billing staff | BAA ✅; Encryption ✅; Access control ✅ |
| T1 — Restricted | LP data | Covercy | HIVE CEO + Dr. Lewis | Access control ✅ |
| T2 — Confidential | Acquisition targets | SharePoint — restricted | Matt + Dr. Lewis | Access control ✅ |

---

## Data Flow Diagram (PHI — Allevio)
Employer census → SharePoint (restricted) → AdvancedMD → Marshall Medical Billing (BAA) → Claims processed → Results to employer (aggregate only; no PHI)

---

## Open Issues
| Issue | Tier | Action | Owner | Due |
|-------|------|--------|-------|-----|
```

## Output Contract
- PHI data flows must be documented and reviewed annually for Allevio — HIPAA requires that Allevio identify and document all PHI flows as part of the required risk analysis; "where does PHI enter, move through, and exit Allevio's systems?" is not a question that can be answered from memory; the PHI flow map is a living document (updated when new systems are added or processes change); Dr. Lewis reviews the PHI flow map quarterly; the map includes: employer census collection (how; where stored; who has access); AdvancedMD data (how entered; who accesses; backup process); Marshall Medical Billing integration (what PHI flows; BAA in place; how transmitted); employer reporting (what is sent back to employers — must be aggregate only; no individual PHI); any vendor with PHI access must be on the BAA list; any new system that would touch PHI must be evaluated and BAA obtained before going live
- Data handling violations are treated as security incidents, not policy infractions — if an employee stores Tier 1 data in a personal Dropbox account, that is a potential unauthorized disclosure (Dropbox has not signed a BAA; the data may be accessible to Dropbox employees or through a breach of the employee's personal account); the response is: identify what data; assess whether a HIPAA breach occurred; remove the data from the unauthorized system; remediate; document; train the employee; the response is not to simply tell the employee "don't do that again" and move on; the significance of the violation determines the remediation depth; Dr. Lewis + entity CEO assess each violation; repeat violations are a conduct matter for the entity CEO
- HITL required: data classification policy → entity CEO approves before distributing; PHI flow map → Dr. Lewis reviews quarterly; entity CEO reviews annually; new system handling Tier 1 data → Dr. Lewis security evaluation + BAA (if PHI) before going live; Tier 1 data handling violation → Dr. Lewis + entity CEO assess; HIPAA breach potential → sec-incident-responder; M365 sensitivity label deployment → Dr. Lewis configures; entity CEO informed; data destruction for Tier 1 → Dr. Lewis approves method; documents for records

## System Dependencies
- **Reads from:** System inventory (all systems used by entity employees); PHI flow documentation (Allevio — AdvancedMD; Marshall Medical Billing; employer portal); LP data systems (HIVE — Covercy; QB); financial system inventory; employee data systems (HR tools); M365 Compliance Center (sensitivity labels; data governance); SharePoint site access logs; prior data classification records
- **Writes to:** Data classification policy (SharePoint → [Entity] → Security → Data-Governance → Classification-Policy); PHI flow map (Allevio — SharePoint → Allevio → Security → HIPAA → PHI-Flow-Map → [Date]; quarterly update); data inventory (SharePoint → [Entity] → Security → Data-Governance → Data-Inventory → [Date]); M365 sensitivity labels (Dr. Lewis configures in Compliance Center); entity CEO data governance briefing (annual); data handling violation records (incident record + remediation)
- **HITL Required:** Classification policy → entity CEO approves; PHI flow map → Dr. Lewis quarterly review; entity CEO annual review; new Tier 1 system → Dr. Lewis evaluation + BAA; Tier 1 violation → Dr. Lewis + entity CEO; HIPAA breach assessment → sec-incident-responder; M365 label deployment → Dr. Lewis; data destruction → Dr. Lewis approves; Tier 2 external sharing → entity CEO approves; LP data external access → HIVE entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Building the initial data classification policy for HIVE. Dr. Lewis inventories: Covercy (LP names; bank accounts; capital accounts; K-1s → Tier 1 Restricted); QuickBooks (AP/AR; financials → Tier 1 Restricted); SharePoint — HIVE board (acquisition targets; LOI drafts → Tier 2 Confidential); SharePoint — general (operational docs → Tier 3 Internal); website content (Tier 4 Public). Data handling rules documented for each tier. LP data: stored only in Covercy; accessible only to HIVE entity CEO + Dr. Lewis; never shared externally without LP consent; K-1s sent via secure delivery (not standard email). Acquisition data: SharePoint with restricted access (Matt Mathison + Dr. Lewis + HIVE entity CEO); NDA required for external advisors; not shared with Column6, Allevio, or other portfolio entities. Policy finalized; entity CEO reviews and approves. Filed in SharePoint.
2. **Edge case:** A new Allevio hire (clinical coordinator) stores employer census files (Tier 1 — PHI) in their personal Gmail Drive because "SharePoint was being slow": Dr. Lewis: "This is a Tier 1 data handling violation. Immediate actions: (1) Remove the files from Google Drive immediately — the coordinator sends the files to the SharePoint link and deletes them from Drive; empty the Trash. (2) HIPAA assessment: Google Drive personal accounts are not HIPAA-compliant (no BAA). Was this a HIPAA breach? The 4-factor assessment: PHI in an unsecured location; low probability it was accessed by Google or third parties (private folder; short time period); Dr. Lewis documents the assessment. Based on the assessment, this is likely a breach unless we can demonstrate low probability of acquisition. (3) Entity CEO notified. (4) Employee receives additional HIPAA privacy training within 5 business days. (5) IT expedites SharePoint performance issue. (6) Incident documented in HIPAA records."
3. **Adversarial:** Column6 agency client asks for detailed performance data on another agency's campaigns to "benchmark their results": Dr. Lewis via entity CEO: "We can't share another agency's campaign performance data — that's Tier 2 Confidential data belonging to our other clients. We can share: Column6's aggregate platform benchmarks (average VCR, viewability, IVT rates across the platform — these are Column6's data, not any client's); industry benchmarks (eMarketer; IAB published data); performance ranges by vertical. The specific results of any agency's campaigns are their confidential business information. We don't share that with other agencies — and we wouldn't share your campaigns' results with them either. Our data isolation policy is what makes you able to trust us with your campaign data."

## Audit Log
Data classification policy records (version; entity CEO approval; date; SharePoint). PHI flow map records (Allevio — quarterly update; Dr. Lewis review; entity CEO annual review; date; SharePoint; retained 6 years). Data inventory records (version; date; systems covered; Dr. Lewis review). Data handling violation records (incident; tier; data type; assessment; remediation; HIPAA assessment if Tier 1; Dr. Lewis + entity CEO). New system Tier 1 evaluation records (system; PHI/LP assessment; BAA status; Dr. Lewis decision; date). M365 sensitivity label deployment records (label set; date; entity; Dr. Lewis configuration).

## Deprecation
Data classification policy reviewed annually and when new entity systems are added. PHI flow map reviewed quarterly (Allevio). LP data handling reviewed when HIVE adds new LP data systems. CCPA data mapping reviewed when Column6 adds new consumer data processing. M365 sensitivity label configuration reviewed when Microsoft updates the Compliance Center. Data classification tiers reviewed when new regulatory requirements apply to MBL portfolio entities.
