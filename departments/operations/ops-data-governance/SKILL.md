---
name: ops-data-governance
description: "Manage data governance, quality, and access control across MBL Partners portfolio. Use when the user says 'data governance', 'data quality', 'data management', 'data access', 'data access control', 'data permissions', 'data policy', 'data standards', 'data ownership', 'data owner', 'data steward', 'data catalog', 'data dictionary', 'master data', 'data integrity', 'data accuracy', 'data audit', 'bad data', 'data errors', 'data discrepancy', 'data inconsistency', 'data security', 'data breach risk', 'data privacy', 'PHI governance', 'HIPAA data governance', 'portfolio data', 'entity data', 'who owns the data', 'data classification', 'sensitive data', 'confidential data', 'data retention', 'data disposal', or 'data cleanup'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--action <classify|access-review|quality-check|policy|audit>] [--domain <financial|clinical|operational|crm|all>] [--classification <public|internal|confidential|restricted>]"
---

# Ops Data Governance

Manage data governance, quality, and access control across MBL Partners portfolio — classifying data by sensitivity, controlling who can access what, maintaining data quality standards across financial and operational systems, and ensuring that sensitive data (PHI at Allevio; LP financial data at MBL; landowner data at HIVE) is protected with appropriate technical and process controls. Data governance is the operational discipline that prevents the three most dangerous data failure modes: (1) wrong decisions made from inaccurate data; (2) sensitive data accessed by unauthorized parties; (3) data loss from poor retention practices. Dr. Lewis is the data governance authority across the portfolio — he sets standards, entity CEOs implement them, and Matt Mathison is alerted when there's a classification or access breach.

## When to Use
- Quarterly access review (who has access to what)
- New employee or contractor onboarding (access provisioning)
- Employee departure (access deprovisioning)
- Audit reveals data quality issue in a system of record
- Potential data breach or unauthorized access

## Data Governance Framework

```
MBL DATA CLASSIFICATION:

  TIER 1 — RESTRICTED (most sensitive; tightly controlled):
    PHI (Protected Health Information — Allevio only)
      Access: Clinical staff with treatment relationship; HIPAA minimum necessary
      Storage: AdvancedMD; HIPAA-BAA cloud only
      Transmission: Encrypted; no personal email; no consumer tools
      Breach: Report within 60 days to HHS (if breach of unsecured PHI)
      
    LP Financial Data (capital contributions; distributions; IRR; fund performance)
      Access: Matt Mathison; Dr. Lewis; legal/fund admin on a need-to-know basis
      Storage: SharePoint (LP-restricted folder); QuickBooks
      Transmission: Encrypted email; never via unsecured channels
      
    Entity financial data (P&L; EBITDA; cash position)
      Access: Matt Mathison; Dr. Lewis; entity CEO; entity Controller/CFO
      Storage: QuickBooks; SharePoint (Finance)
      
    Landowner royalty data (HIVE — individual royalty payments)
      Access: HIVE CEO; HIVE Controller; Dr. Lewis; Covercy platform
      
  TIER 2 — CONFIDENTIAL (sensitive; controlled):
    Deal pipeline data (M&A targets; acquisition terms; valuations)
    Employee compensation and HR records
    Vendor contracts and pricing (competitive sensitivity)
    Strategic plans and OKRs
    
  TIER 3 — INTERNAL (business use; not for external distribution):
    Operational KPIs and reports
    Meeting notes and action items
    Process documentation (SOPs)
    
  TIER 4 — PUBLIC (cleared for external distribution):
    Marketing materials
    Published case studies (with client consent)
    Job postings

ACCESS CONTROL FRAMEWORK:

  PRINCIPLE: Least privilege — access only what is needed for the role
  
  PROVISIONING PROTOCOL:
    New employee/contractor: entity CEO submits access request to Dr. Lewis
    Dr. Lewis reviews against role and data classification
    Access granted per the classification matrix
    Confirmation sent to entity CEO
    
  DEPROVISIONING PROTOCOL (CRITICAL — must happen before last day):
    Entity CEO notifies Dr. Lewis at least 3 business days before departure
    Dr. Lewis deprovisioning checklist:
      □ Microsoft 365 account disabled (blocks email; Teams; SharePoint)
      □ QuickBooks access removed
      □ Bill.com access removed
      □ Monday.com access removed
      □ GoHighLevel access removed (MBL/North Vista)
      □ Entity-specific systems (AdvancedMD; Covercy; DSP platforms)
      □ Shared passwords rotated
      □ Business data on personal devices confirmed deleted (attestation)
    
  QUARTERLY ACCESS REVIEW:
    Dr. Lewis reviews all system access for every entity
    Flag: any access that doesn't match current role
    Flag: any former employees still with access (emergency deprovisioning)
    Flag: contractor access that has expired
    Result: access matrix updated; anomalies resolved

DATA QUALITY STANDARDS:

  FINANCIAL DATA (QuickBooks / Bill.com):
    Monthly reconciliation required (bank rec; AR rec; AP rec)
    Duplicate entries: resolved before monthly close
    Account coding errors: corrected same month identified
    Data entry authority: entity Controller/bookkeeper + Dr. Lewis review
    
  CLINICAL DATA (Allevio — AdvancedMD):
    Clean claim rate standard: ≥95%
    Demographic data completeness: >98%
    Authorization tracking: no claim submitted without prior auth (if required)
    Data quality issues that affect billing → immediate remediation
    
  CRM DATA (GoHighLevel — MBL/North Vista):
    Contact deduplication: quarterly
    Email validity: validated at import
    Deal stage accuracy: entity CEO owns data quality in CRM
    
  ROYALTY DATA (HIVE — Covercy):
    Monthly reconciliation to operator statements (to the penny)
    Discrepancies >$500: resolved within 30 days or Matt Mathison notification
```

## Output Format

```markdown
# Data Governance Report — [Entity] — Q[N] [Year]
**Conducted by:** Dr. Lewis | **Frequency:** Quarterly

---

## Access Control Status

| System | Active users | Changes this quarter | Anomalies |
|--------|-------------|---------------------|-----------|
| Microsoft 365 | [N] | +[N] added; -[N] removed | None / [describe] |
| QuickBooks | [N] | [changes] | None / [describe] |
| AdvancedMD (Allevio) | [N] | [changes] | None / [describe] |

**Departed employees with remaining access:** [N — target: 0]
**Contractor access reviewed:** [N] current; [N] expired (removed)

---

## Data Quality Issues

| System | Issue | Impact | Status | Resolution |
|--------|-------|--------|--------|-----------|
| [System] | [Issue description] | [Impact] | Open / Resolved | [Action] |

---

## PHI Compliance (Allevio only)

- **BAA coverage:** [N]/[N] PHI-touching tools have signed BAAs ✅/⚠️
- **Unauthorized PHI access events this quarter:** [N] (target: 0)
- **HIPAA training current:** [N]% of clinical staff
```

## Output Contract
- Deprovisioning happens before the last day, never after — the most dangerous access gap is a departed employee whose accounts were not disabled; Dr. Lewis treats deprovisioning as a security and integrity requirement, not a checklist item; the deprovisioning checklist is completed before the employee's last day; if Dr. Lewis is not notified until the last day, he escalates to the entity CEO and deprovisions immediately regardless of the time required; former employees with active access is the most common data security failure mode in small companies — MBL will not have this failure
- PHI is the absolute priority at Allevio — one HIPAA breach can cost Allevio $10,000-$1.9M in penalties (depending on culpability); Dr. Lewis treats every PHI governance gap as an emergency; BAA missing → 30 days to resolve or Dr. Lewis migrates the data off the tool; unauthorized PHI access → Dr. Lewis reviews scope within 24 hours; if breach of unsecured PHI is confirmed → Matt Mathison + legal same day; HHS reporting may be required
- Access decisions are documented — every access grant and revocation is logged with: who requested; who approved; what access was granted; when; and why; this creates the audit trail that protects Dr. Lewis and Matt Mathison if access is ever questioned; "I don't know who gave them access" is not an acceptable answer in a governance-conscious PE firm; Dr. Lewis can produce the access trail for any system at any time
- HITL required: Tier 1 data access grants (PHI; LP financial data; entity financial data) require Dr. Lewis explicit approval — not entity CEO alone; Matt Mathison must be notified within 24 hours of any confirmed unauthorized access to Tier 1 data; suspected PHI breach → Matt + legal same day; contractor access expiration → Dr. Lewis removes without waiting for entity CEO if the contract end date has passed; quarterly access review results → distributed to entity CEOs and Matt Mathison

## System Dependencies
- **Reads from:** Microsoft 365 admin center (user access); QuickBooks user management; Bill.com user management; Monday.com user management; AdvancedMD admin (Allevio); Covercy admin (HIVE); GoHighLevel admin (MBL/North Vista); entity CEO notifications (hiring; departures; role changes)
- **Writes to:** Access control log (SharePoint → Security → AccessControl → [Entity] → [YYYY]); quarterly data governance report (distributed to entity CEOs + Matt Mathison); deprovisioning completion confirmations; PHI breach records (if applicable); employee onboarding/offboarding checklists
- **HITL Required:** Tier 1 data access grants → Dr. Lewis approval; confirmed unauthorized access → Matt Mathison 24 hours; PHI breach suspected → Matt + legal same day; former employee access found in quarterly review → deprovision immediately + notify entity CEO + Matt; contractor access expired → deprovision without waiting

## Test Cases
1. **Golden path:** Quarterly Q2 access review. Allevio: 12 Microsoft 365 users — all current employees; 1 former employee (left April 30) whose account was disabled by Dr. Lewis on April 29. QuickBooks: 4 users — all current. AdvancedMD: 8 users — all clinical staff, all current. Review complete: no anomalies. Report delivered to Allevio CEO and Matt Mathison: "Q2 access review complete. All systems clean. Former employee (departed April 30) was deprovisioned on April 29. No unauthorized access. BAA status: 3/3 PHI tools have signed BAAs. No issues requiring action."
2. **Edge case:** Entity CEO asks Dr. Lewis to give a new vendor (not an employee) access to QuickBooks to "pull some reports" → Dr. Lewis: "Before I provision QuickBooks access for an external vendor, I need to understand: (1) What data do they need? (2) Do they have a signed NDA with [entity]? (3) Is this a one-time report pull or ongoing? For a one-time pull: I'll export the specific reports you need and send them directly — no system access required, data stays in our control. For ongoing access: I'll need to understand the use case, get the vendor's NDA, create a limited-access user with view-only permissions on specific GL accounts, and document the access grant. Which situation is this?"
3. **Adversarial:** A QuickBooks access review reveals the entity Controller has access to pay vendors without a second approval (no separation of duties) → Dr. Lewis: "I found a SOD gap in [entity]'s QuickBooks setup: the Controller can both enter and approve vendor payments. This creates a fraud risk — a single person can create a vendor, approve a payment, and send money without a second set of eyes. Recommended fix: require Dr. Lewis's independent approval for all payments >$500 (I'll set up a weekly payment review; takes 15 minutes). For payments <$500, the Controller can approve independently with Dr. Lewis's monthly spot check. I'll configure this in QuickBooks this week. Matt: this will be a standing control — I'll add it to the internal controls framework. Do you want me to proceed?"

## Audit Log
All access grants and revocations logged with requester; approver; date; systems affected. Quarterly access review reports retained. Deprovisioning checklists retained (completed). PHI incident records retained indefinitely. Data quality issue records retained. BAA status records retained (Allevio). Access anomaly records retained.

## Deprecation
Review the data classification tiers annually as the portfolio grows and regulatory requirements evolve. HIPAA requirements at Allevio are permanent. LP data governance requirements are permanent. The access control framework is maintained indefinitely.
