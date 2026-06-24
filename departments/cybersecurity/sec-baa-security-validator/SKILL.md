---
name: sec-baa-security-validator
description: "Manage and validate Business Associate Agreements for Allevio. Use when the user says 'Business Associate Agreement', 'BAA', 'business associate', 'BA', 'BAA required', 'do we need a BAA', 'BAA review', 'BAA template', 'BAA register', 'BAA tracking', 'BAA expiration', 'BAA renewal', 'BAA termination', 'BAA off-ramp', 'vendor BAA', 'cloud vendor BAA', 'SaaS BAA', 'BAA compliance', 'HIPAA business associate', 'HIPAA vendor', 'covered entity', 'PHI processor', 'who needs a BAA', 'BAA with vendor', 'Microsoft BAA', 'Google BAA', 'AWS BAA', 'AdvancedMD BAA', 'EHR vendor BAA', 'billing company BAA', 'Marshall BAA', 'BAA breach notification', 'BAA liability', 'subcontractor BAA', 'downstream BAA', 'BAA due diligence', 'BAA negotiation', 'BAA redline', 'HIPAA vendor agreement', 'HIPAA data processing agreement', or 'Allevio vendor compliance'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--action <assess|draft|register|review|offboard>] [--vendor <vendor-name>] [--status <new|active|expiring|terminated>]"
---

# Sec BAA Security Validator

Manage and validate Business Associate Agreements for Allevio — determining which vendors require BAAs, reviewing and negotiating BAA terms, maintaining the BAA register, and managing BAA off-ramping when vendors are terminated. This skill applies exclusively to Allevio. A Business Associate who accesses PHI without a signed BAA is an unauthorized disclosure under HIPAA, and Allevio bears liability. No BAA gaps.

## When to Use
- Determining whether a new Allevio vendor requires a BAA
- Reviewing or negotiating BAA terms with a vendor
- Maintaining the BAA register and tracking expirations
- Managing BAA termination when a vendor contract ends

## BAA Management Framework

```
BUSINESS ASSOCIATE DEFINITION (HIPAA §160.103):
  A business associate is any person or entity that:
    - Creates, receives, maintains, or transmits PHI on behalf of Allevio
    - Provides services that involve the use or disclosure of PHI
    
  Common vendors that REQUIRE a BAA with Allevio:
    ✅ AdvancedMD (EHR/clinical management — obvious PHI processor)
    ✅ Marshall Medical Billing (medical billing — processes claims with PHI)
    ✅ Microsoft (M365 — if email includes PHI; Microsoft provides HIPAA BAA)
    ✅ Any cloud storage provider that could hold PHI (OneDrive; SharePoint)
    ✅ Telehealth platform (video sessions with enrollees)
    ✅ Labs or ancillary service providers that exchange clinical data
    ✅ IT support vendors with access to systems containing PHI
    ✅ Dr. Lewis (acting as Security Officer — covered by CLAUDE.md; formal documentation needed)
    
  Vendors that typically do NOT require a BAA:
    ❌ Vendors with no PHI access (office supplies; landscaping; general contractors)
    ❌ Financial institutions acting in their standard banking capacity
    ❌ Internet service providers (conduit exception — they transmit but don't process PHI)
    ❌ GHL (if Allevio keeps all PHI out of GHL — employer contacts only; no health data)
    
  PHI MUST NOT FLOW into any system without a BAA — the solution to a vendor not having a BAA
  is NOT to use that vendor for PHI workflows; it is to: (1) get a BAA signed, or (2) find a
  vendor who will sign a BAA, or (3) redesign the workflow to exclude PHI from that vendor
  
BAA KEY TERMS (what Dr. Lewis reviews):
  1. Scope: what PHI can the BA create, receive, maintain, or transmit? Match to actual function.
  2. Permitted uses: BA can only use PHI for the specified service (not marketing; not training AI models
     on Allevio's patient data without explicit authorization)
  3. Safeguards: BA must implement appropriate safeguards (administrative; physical; technical)
  4. Breach notification: BA must notify Allevio within 72 hours (prefer; HIPAA requires "without
     unreasonable delay" — Dr. Lewis negotiates 72 hours in BAA)
  5. Subcontractors: BA must ensure any subcontractor that accesses PHI signs a BAA with the BA
  6. Return/destruction of PHI on termination: BA must return or destroy PHI at contract end
  7. Audit rights: Allevio reserves the right to request evidence of safeguard implementation
  8. Breach liability: BA is liable for breaches caused by their own conduct
  
BAA REGISTER FIELDS (maintained by Dr. Lewis):
  Vendor name; date BAA signed; Allevio signatory (entity CEO); vendor signatory;
  PHI scope (what data); expiration/term (perpetual if no term); renewal trigger;
  last reviewed; status (active/expired/terminated); BAA file location (SharePoint)
  
BAA OFF-RAMP (when vendor contract ends):
  Termination clause in BAA: vendor must return or destroy all Allevio PHI within 30 days
  Dr. Lewis verifies: sends formal written request for PHI return/destruction certification
  Vendor provides: written certification that PHI destroyed (retain on file)
  Access: vendor access to Allevio systems removed same day as contract termination
  BAA register: mark as terminated; retain BAA document 6 years from termination
  
VENDOR BAA NEGOTIATION NOTES:
  Microsoft: provides a standard Microsoft HIPAA BAA — Dr. Lewis accepts; entity CEO acknowledges
  Major SaaS vendors (Zoom; DocuSign; Salesforce): have published HIPAA BAA templates
  Smaller vendors: may need education on what a BAA is; Dr. Lewis uses Allevio's standard BAA template
  Non-negotiable terms: breach notification ≤72 hours; return/destruction at termination; audit rights
  AI vendors: must confirm PHI will not be used to train AI models without explicit Allevio authorization
```

## Output Format

```markdown
# BAA Register — Allevio | v[N] | [Date]
**Custodian:** Dr. John Lewis | **Allevio signatory:** Entity CEO | **Next review:** [Quarter]

---

## Active BAAs
| Vendor | Function | PHI scope | Date signed | Entity CEO | Expiry | Status |
|--------|----------|-----------|------------|------------|--------|--------|
| AdvancedMD | EHR/clinical | Patient records; employer data | [Date] | ✅ | Perpetual | Active |
| Marshall Medical Billing | Medical billing | Claims; patient data | [Date] | ✅ | Annual | Active |
| Microsoft | M365 (email/SharePoint) | Email PHI; SharePoint PHI | [Date] | ✅ | Perpetual | Active |

---

## BAAs Expiring in 90 Days
| Vendor | Expiry date | Renewal action | Owner | Due |
|--------|------------|---------------|-------|-----|

---

## PHI Flow Without BAA (if any — immediate action required)
| Vendor | PHI type | Identified | Status | Action |
|--------|----------|-----------|--------|--------|
```

## Output Contract
- PHI must not flow to any vendor without a signed BAA — period; there is no "grace period" while the BAA is being negotiated; if a vendor is in the process of signing a BAA, PHI workflow to that vendor is paused until the BAA is signed; if a critical vendor refuses to sign a BAA (it happens with very large vendors), the options are: (1) use the vendor's published HIPAA BAA if they have one; (2) redesign the workflow so PHI does not touch that vendor's systems; (3) find a different vendor; "we couldn't get a BAA" is not a HIPAA defense — it is an unauthorized disclosure; Dr. Lewis is the hard stop on PHI access without a BAA; entity CEO is informed of any vendor that refuses to sign a BAA and the proposed solution
- BAA negotiations must not remove or weaken breach notification terms — HIPAA requires Business Associates to notify covered entities of breaches "without unreasonable delay" and within 60 days; Allevio's standard BAA requires 72-hour notification from the BA to Allevio (shorter than HIPAA minimum — Dr. Lewis negotiates this so Allevio has time to conduct the 4-factor breach assessment and meet the 60-day HHS/individual notification window); if a vendor pushes back on 72 hours and wants 30 days: Dr. Lewis negotiates; if vendor insists on 60+ days: Dr. Lewis elevates to entity CEO; a 60-day BA notification leaves Allevio zero days for its own assessment before the HHS deadline; this is operationally unacceptable; alternative: if vendor can only agree to 30 days, Dr. Lewis documents this in the BAA register and flags it as a risk-managed exception
- HITL required: new BAA assessment (does this vendor need a BAA?) → Dr. Lewis determines; entity CEO informed; BAA execution → Dr. Lewis reviews; entity CEO countersigns; BAA terms flagged for negotiation → Dr. Lewis leads; entity CEO approves final terms; PHI flow without BAA identified → Dr. Lewis + entity CEO immediate response; BAA off-ramp (vendor terminated) → Dr. Lewis sends PHI return/destruction request; entity CEO confirms vendor relationship ended; BAA register update → Dr. Lewis maintains; quarterly review; AI vendor PHI training use → Dr. Lewis must confirm prohibition in BAA before any AI vendor gets PHI access

## System Dependencies
- **Reads from:** Vendor list (all Allevio vendors with PHI access — sec-third-party-security-manager); BAA register (SharePoint → Allevio → Security → BAA-Register → BAA-Register.xlsx); signed BAA documents (SharePoint → Allevio → Security → BAAs → [Vendor]); PHI flow map (sec-data-classification-manager — which vendors touch PHI); vendor contract database (SharePoint → Allevio → Contracts → [Vendor]); Microsoft HIPAA BAA (Microsoft Trust Center); prior BAA assessments
- **Writes to:** BAA register (SharePoint → Allevio → Security → BAA-Register; updated when BAA signed/terminated/renewed; retained 6 years); signed BAA documents (SharePoint → Allevio → Security → BAAs → [Vendor]; retained 6 years from termination); entity CEO BAA execution request (when new BAA ready to sign); PHI flow without BAA incident record (sec-incident-responder trigger); BAA off-ramp certification record (vendor destruction confirmation; date; SharePoint; retained 6 years); quarterly BAA register briefing to entity CEO
- **HITL Required:** New BAA need assessment → Dr. Lewis; entity CEO informed; BAA execution → Dr. Lewis reviews; entity CEO countersigns; BAA negotiation → Dr. Lewis leads; entity CEO approves final; PHI without BAA → Dr. Lewis + entity CEO immediate; BAA off-ramp → Dr. Lewis sends destruction request; entity CEO confirms; AI vendor PHI prohibition → Dr. Lewis confirms in BAA; quarterly BAA register review → Dr. Lewis + entity CEO

## Test Cases
1. **Golden path:** Allevio evaluates a new HIPAA-compliant messaging app for clinical coordinator-to-employer communication. App provider: "We have a HIPAA BAA available — here's our standard template." Dr. Lewis review of vendor BAA: scope appropriate (message content + metadata); permitted uses: service delivery only (no model training); safeguards: SOC 2 Type II + BAA with their infrastructure vendors; breach notification: 24 hours (better than our 72-hour requirement); subcontractors: AWS (with AWS BAA); return/destruction: within 30 days of contract termination; audit rights: included. Dr. Lewis: all terms acceptable; no negotiation needed. Entity CEO countersigns. BAA registered in SharePoint BAA Register. PHI flow authorized. App onboarded.
2. **Edge case:** Allevio IT team has been sending employer census files to their IT support company via email for data entry work (IT company does not have a BAA): Dr. Lewis: "This is an unauthorized PHI disclosure. Immediate actions: (1) Stop sending files to IT company immediately. (2) PHI exposure assessment: how long has this been happening? How many files? How many individuals' data? (3) HIPAA 4-factor breach assessment. (4) Entity CEO notified today. (5) Request from IT company: immediately cease use of any files received; confirm deletion in writing. (6) IT company: do they process enough PHI to qualify as a Business Associate? If yes: BAA negotiation starts immediately. If they won't sign a BAA: find a different IT vendor for any PHI-related work. (7) Document: unauthorized disclosure log; breach assessment; resolution. This may require HHS notification depending on the breach assessment outcome."
3. **Adversarial:** A vendor's legal team says: "We don't sign BAAs — our data processing agreement provides equivalent protections under GDPR": Dr. Lewis: "GDPR data processing agreements and HIPAA BAAs are different legal instruments with different substantive requirements. A GDPR DPA does not satisfy HIPAA's BAA requirement for two reasons: (1) HIPAA is US law with specific provisions required in BAAs (§164.504(e)); a GDPR DPA doesn't include those specific terms; (2) HIPAA BAA obligation runs from Allevio as a covered entity — we cannot substitute a different contractual instrument. Options: (1) Vendor signs Allevio's standard BAA template in addition to their DPA. (2) Vendor provides their HIPAA-specific BAA template (some EU vendors with US healthcare customers have one). (3) We redesign the workflow to exclude PHI from this vendor's systems. I understand the vendor prefers their own agreements — but the BAA requirement is non-negotiable for any vendor with PHI access."

## Audit Log
BAA execution records (vendor; date; Allevio entity CEO signatory; vendor signatory; scope; SharePoint; retained 6 years from termination). BAA off-ramp records (vendor; contract end date; PHI return/destruction request; vendor certification; Dr. Lewis confirmation; date; SharePoint; retained 6 years). Unauthorized PHI disclosure records (vendor without BAA; exposure period; individuals affected; breach assessment; HHS notification if applicable; Dr. Lewis + entity CEO). BAA negotiation records (vendor; terms flagged; negotiation outcome; entity CEO approval; final terms). BAA register quarterly review records (date; Dr. Lewis; entity CEO; changes; SharePoint). AI vendor PHI prohibition records (vendor; BAA clause confirmed; date; Dr. Lewis).

## Deprecation
BAA register reviewed quarterly. BAA template reviewed annually and when HHS issues new HIPAA guidance. Microsoft BAA reviewed annually (Microsoft publishes annual updates to their HIPAA BAA). BAA off-ramp process reviewed when vendor contract management changes. AI vendor BAA clause reviewed as AI regulation evolves.
