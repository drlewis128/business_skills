---
name: sec-phi-flow-auditor
description: "Audit and document Protected Health Information (PHI) flows at Allevio. Use when the user says 'PHI flow', 'PHI flows', 'PHI flow map', 'PHI flow audit', 'PHI data flow', 'where does PHI go', 'where does PHI flow', 'track PHI', 'PHI tracking', 'PHI inventory', 'PHI systems', 'which systems have PHI', 'who has PHI', 'what touches PHI', 'PHI access', 'PHI handling', 'PHI movement', 'PHI transmission', 'ePHI', 'electronic PHI', 'PHI mapping', 'data flow mapping', 'data flow diagram', 'DFD PHI', 'HIPAA data flow', 'HIPAA PHI mapping', 'PHI lifecycle', 'PHI origin', 'PHI destination', 'PHI boundary', 'PHI crossing systems', 'PHI third party', 'PHI vendor', 'business associate PHI', 'BAA PHI', 'PHI to employer', 'employer PHI', 'PHI reporting', 'PHI analytics', 'PHI storage', 'PHI at rest', 'PHI in transit', 'PHI in use', 'HIPAA technical safeguard', 'access control PHI', 'minimum necessary PHI', 'PHI scope', 'audit PHI', or 'PHI risk assessment'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--action <map|audit|update|report>] [--scope <all-systems|specific-system|employer-reporting|vendor>]"
---

# Sec PHI Flow Auditor

Audit and document Protected Health Information (PHI) flows at Allevio — mapping where PHI originates, travels, is stored, and exits the organization to identify unauthorized flows, apply the minimum necessary standard, and confirm that every PHI touchpoint has appropriate security controls and a signed BAA. The PHI flow map is the foundation of Allevio's HIPAA Security and Privacy Rule compliance; without knowing where PHI is, you cannot protect it.

## When to Use
- Initial PHI flow mapping for a new Allevio clinic or system
- Annual PHI flow audit (HIPAA risk analysis input)
- Investigating a potential unauthorized PHI disclosure
- Adding a new vendor or system that may touch PHI

## PHI Flow Audit Framework

```
PHI DEFINITION (what to map):

  Protected Health Information: any health information that can identify an individual
  Includes: name; SSN; DOB; address; diagnosis; treatment; claim data; plan enrollment;
            medical record numbers; employer-linked health information
  At Allevio (MSO context):
    Employer census data (name; SSN; DOB; health plan enrollment): PHI when linked to individual health
    AdvancedMD records: clinical encounters; diagnoses; referrals; medications → always PHI
    Claims data received from Marshall Medical Billing: PHI
    Eligibility files: PHI
    
  IMPORTANT: Aggregate/de-identified data is NOT PHI (see HIPAA de-identification standards)
    Allevio employer reports → aggregate only → NOT PHI (by design)
    Statistical outputs with no re-identifiable fields → NOT PHI

PHI FLOW MAP (current Allevio systems — update annually or when systems change):

  COLLECTION POINTS (where PHI enters Allevio):
    1. Employer census collection: employer submits employee census (name; SSN; DOB; health plan)
       Channel: secure file portal (SharePoint or employer portal) or encrypted email
       Storage: SharePoint (Restricted tier); AdvancedMD population health module (if used)
       
    2. AdvancedMD — clinical encounter data: clinical coordinators enter encounter data
       Channel: AdvancedMD SaaS (clinical workstations; HTTPS in transit)
       Storage: AdvancedMD cloud database (vendor-managed; AES-256; BAA in place)
       
    3. Marshall Medical Billing: claims data processed and returned
       Channel: Marshall Medical Billing system (BAA in place)
       Storage: Marshall Medical Billing (vendor-managed; BAA)
       
  INTERNAL FLOWS (within Allevio systems):
    AdvancedMD → clinical reports (internal only; Dr. Lewis + entity CEO + clinical leads)
    Census files → eligibility verification → AdvancedMD (clinical coordinator access)
    Claims data → aggregate analytics → employer reporting (de-identified at this stage)
    
  EXTERNAL FLOWS (PHI leaving Allevio):
    Marshall Medical Billing: claims data for billing (BAA required ✅)
    Employer reporting: AGGREGATE ONLY — de-identified before transmission (not PHI after)
    Lab results (if applicable): to ordering provider (TPO disclosure — no BAA required)
    NEVER: individual-level PHI to employers (hard stop)
    NEVER: PHI to AI tools without BAA (ChatGPT; Claude; etc. — no BAA; no PHI)
    
  AUTHORIZED PHI DISCLOSURES:
    Treatment: clinical coordinators → providers (within Allevio care team) — authorized
    Payment: Allevio → Marshall Medical Billing (BAA required — billing operations) — authorized
    Healthcare Operations: internal quality/analytics (aggregate; de-identified) — authorized
    Employer request for individual PHI: PROHIBITED without written individual authorization
    
PHI FLOW AUDIT PROCESS (annual — feeds HIPAA risk analysis):

  Step 1 — Inventory all PHI systems:
    List every system that stores, processes, or transmits Allevio PHI
    For each system: type of PHI; users with access; encryption status; BAA required?
    
  Step 2 — Map data flows:
    For each PHI system: where does PHI come from? Where does it go?
    Document: sender → channel (HTTPS? encrypted email? physical?) → receiver
    
  Step 3 — Verify BAAs:
    Every external entity receiving PHI from Allevio: BAA in place?
    BAA register cross-reference (sec-baa-security-validator)
    
  Step 4 — Apply minimum necessary:
    For each access point: does this user/system need access to all PHI?
    Flag over-access (clinical coordinator with admin-level access; employer with individual data)
    
  Step 5 — Identify unauthorized flows:
    Any PHI flowing to a system without a BAA?
    Any PHI flowing to an employer in individual-identifiable form?
    Any PHI flowing to a cloud AI tool (ChatGPT; Claude; Grammarly) without BAA?
    
  Step 6 — Document and remediate:
    Unauthorized flows: remediate immediately; assess as HIPAA breach
    Missing BAAs: obtain before any further PHI flows (sec-baa-security-validator)
    Over-access: revoke; replace with minimum necessary access

PHI IN AI TOOLS (critical prohibition):
  AI tools (ChatGPT; Claude; Copilot; Grammarly; etc.) without a signed BAA:
    DO NOT input PHI into these tools — ever
    Allevio employees must be trained: no patient names; SSNs; diagnoses; claims data in AI tools
    Microsoft 365 Copilot: BAA available from Microsoft for M365 Business Premium — review before enabling
    Dr. Lewis evaluates AI tool BAA availability before any Allevio AI deployment
```

## Output Format

```markdown
# PHI Flow Audit — Allevio | [Date]
**Security Officer:** Dr. John Lewis | **Annual audit:** ✅ | **Feeds:** HIPAA Risk Analysis

---

## PHI System Inventory
| System | PHI type | Users with access | BAA required | BAA in place | Encryption |
|--------|---------|------------------|-------------|-------------|-----------|
| AdvancedMD | Clinical; encounter; eligibility | Clinical coordinators (N) | ✅ Yes | ✅ Signed | AES-256; TLS 1.3 |
| Marshall Medical Billing | Claims; billing | Billing team | ✅ Yes | ✅ Signed | Per BAA |
| SharePoint (Allevio tenant) | Census files | Dr. Lewis; IT admin | No (internal) | N/A | AES-256 (M365) |

---

## PHI Flow Map
| From | Channel | To | PHI type | Authorized? | BAA? |
|------|---------|-----|---------|------------|------|
| Employer | Secure portal | Allevio census | Name; SSN; DOB | ✅ (plan ops) | No (employer → Allevio) |
| AdvancedMD | M365 email (encrypted) | Marshall | Claims | ✅ (payment) | ✅ |
| Allevio | Employer report | Employer | AGGREGATE ONLY | ✅ | N/A (not PHI) |

---

## Unauthorized Flow Findings
| Finding | Risk | Action | Due |
|---------|------|--------|-----|
| Employee used Grammarly to edit a letter with patient name | High | Training + BAA review | Immediate |
```

## Output Contract
- The PHI flow map is a living document that must be updated before any new system or integration goes live at Allevio — a PHI flow map that is 18 months old and doesn't reflect the current tech stack is worse than useless because it creates false confidence; Dr. Lewis reviews the PHI flow map before any new system integration (new vendor; new analytics tool; new AI feature; new clinical system) to determine: does this new system touch PHI? If yes: (1) BAA required before go-live; (2) flow map updated; (3) access controls applied; (4) encryption verified; the question "will this system touch PHI?" must be answered before system procurement, not after deployment; Dr. Lewis answers this question during vendor evaluation (sec-third-party-security-manager)
- AI tool PHI input is a HIPAA violation and must be treated as such immediately upon discovery — when an employee inputs patient names, SSNs, diagnoses, or claim data into ChatGPT, Claude (without a BAA), Grammarly, or any AI tool without a signed BAA, that PHI has been disclosed to an unauthorized third party; this is a HIPAA Privacy Rule violation; the 4-factor breach risk assessment begins (sec-incident-responder); the employee receives immediate training; the entity CEO is notified; the AI tool vendor is evaluated for BAA availability; if a BAA is available (Microsoft 365 Copilot has a BAA available under M365 Business Premium; Azure AI services have BAA options): Dr. Lewis reviews the BAA terms before enabling the feature at Allevio; if no BAA is available: the tool is prohibited for any PHI contact at Allevio; this policy is non-negotiable
- HITL required: annual PHI flow audit → Dr. Lewis conducts; feeds HIPAA risk analysis; entity CEO reviews; new system potentially touching PHI → Dr. Lewis evaluates before go-live; BAA before data flows; PHI flow map updated; unauthorized PHI flow discovered → Dr. Lewis + entity CEO immediately; HIPAA breach assessment; PHI in AI tool → Dr. Lewis breach assessment + entity CEO + Matt Mathison; employee training; AI tool BAA evaluation; employer request for individual PHI → Dr. Lewis + entity CEO; decline with explanation (sec-privacy-by-design-advisor); employer reporting template change → Dr. Lewis reviews for individual PHI before deployment

## System Dependencies
- **Reads from:** AdvancedMD admin console (user list; access level; audit log); SharePoint Allevio tenant (PHI file storage; access permissions); Marshall Medical Billing system (data flow documentation; BAA terms); BAA register (sec-baa-security-validator — all active BAAs); sec-iam-manager (who has access to what); employer portal design (what data is shown to employers; de-identification confirmation); AI tool inventory (what tools are employees using; do any have BAA?); DLP alert log (sec-dlp-manager — PHI detected in unusual places); incident records (unauthorized PHI disclosures); sec-data-classification-manager (Tier 1 Restricted classification includes PHI)
- **Writes to:** PHI flow map (SharePoint → Allevio → Security → HIPAA → PHI-Flow-Map-[Year]; updated annually + on system changes); PHI system inventory (SharePoint → Allevio → Security → HIPAA → PHI-System-Inventory-[Year]); HIPAA risk analysis input (sec-security-risk-register — PHI flow findings feed threat/vulnerability identification); unauthorized flow incident records (sec-incident-responder trigger; HIPAA breach assessment); BAA gap records (sec-baa-security-validator — systems without BAA flagged); entity CEO PHI flow briefing (annual + on any unauthorized flow); Matt Mathison notification (PHI in AI tool or significant unauthorized disclosure)
- **HITL Required:** Annual PHI flow audit → Dr. Lewis conducts; entity CEO reviews; new system → Dr. Lewis pre-evaluation; BAA before go-live; flow map updated; unauthorized flow → Dr. Lewis + entity CEO immediately; HIPAA breach assessment; PHI in AI tool → Dr. Lewis assessment + entity CEO + Matt Mathison; training; BAA evaluation; employer individual PHI request → Dr. Lewis + entity CEO decline; employer reporting template change → Dr. Lewis review before deployment

## Test Cases
1. **Golden path:** Annual PHI flow audit. Dr. Lewis reviews all systems: AdvancedMD (PHI ✅; BAA ✅; AES-256 ✅; access review current ✅). Marshall Medical Billing (PHI ✅; BAA ✅). SharePoint census files (PHI ✅; M365 encryption ✅; access restricted to Dr. Lewis + IT admin ✅). Employer reporting (aggregate only; confirmed: no individual identifiers in any report template ✅). New finding: Allevio has started using a document automation tool (DocuSign for electronic consent forms) — PHI (patient name; DOB) flows through DocuSign. BAA status: DocuSign has a BAA available — request and execute before PHI flows. Action: Dr. Lewis requests DocuSign BAA. Entity CEO countersigns. PHI flow map updated to include DocuSign. Audit complete. HIPAA risk analysis updated.
2. **Edge case:** IT discovers that a clinical coordinator has been emailing weekly eligibility files (with employee SSNs and plan enrollment) to their personal Gmail for "easy access from home": Dr. Lewis: "P1 — unauthorized PHI disclosure. (1) Email to personal Gmail = PHI sent to a system without BAA = HIPAA Privacy Rule violation. (2) Dr. Lewis + entity CEO notified immediately. (3) HIPAA 4-factor breach risk assessment: Nature/extent of PHI (SSN; enrollment data for all enrolled employees); Identity of unauthorized person (coordinator's personal Gmail — no authorized access); Likelihood of compromise (personal Gmail can be accessed by Google; risk of further disclosure; risk if personal Gmail account compromised). (4) Assessment: likely reportable breach. (5) Coordinator's email access reviewed: has this happened before? How many eligibility files? How many individuals affected? (6) Legal counsel engaged (Matt Mathison authorizes). (7) 60-day notification clock running. (8) DLP policy updated: block PHI to personal Gmail (sec-dlp-manager)."
3. **Adversarial:** Allevio's new clinical administrator asks: "Can we use ChatGPT to help draft clinical summaries for employers? It would save so much time": Dr. Lewis: "I understand the time-saving appeal — and AI assistance with clinical documentation is genuinely valuable. But this specific use case requires careful structuring to be HIPAA-compliant. The issue: ChatGPT (the public version at chat.openai.com) does not have a signed BAA with Allevio, which means any PHI input into ChatGPT is a HIPAA violation. Options: (1) If the summaries are already de-identified (aggregate; no individual identifiers) before going into ChatGPT — that's acceptable because de-identified data is not PHI. (2) If PHI is involved: Azure OpenAI Service has HIPAA-compliant options and Microsoft will sign a BAA for enterprise Azure AI services — I'll evaluate this as a potential pathway. (3) Microsoft Copilot for M365 Business Premium has a BAA available — I'll review whether Copilot can serve this use case within the BAA terms. I'll bring you a recommendation within 30 days. Until then: no PHI in ChatGPT."

## Audit Log
Annual PHI flow audit records (date; Dr. Lewis; systems reviewed; findings; entity CEO review; SharePoint → Allevio → Security → HIPAA → PHI-Flow-Map; retained 6 years). PHI system inventory records (systems; BAA status; encryption; access; Dr. Lewis; date; SharePoint; retained 6 years). Unauthorized PHI flow records (discovery; nature/extent; source; breach assessment; legal counsel; entity CEO + Matt Mathison notification; outcome; SharePoint; retained 6 years). PHI flow map update records (trigger — new system or annual; changes made; Dr. Lewis; date). BAA gap records (system; PHI flow; BAA status; action taken; resolution; date). AI tool PHI incident records (tool; PHI involved; employee; training; BAA evaluation; breach assessment; Dr. Lewis; entity CEO; Matt Mathison; date).

## Deprecation
PHI flow map reviewed annually and on any system change. AI tool BAA availability reviewed quarterly (vendors increasingly adding HIPAA BAA programs). PHI definition updated when HHS updates HIPAA de-identification standards. Minimum necessary standards reviewed when Allevio adds new clinical roles. AdvancedMD data model reviewed when AdvancedMD releases major version updates. Employer reporting de-identification review updated when new report types are added to Allevio's offering.
