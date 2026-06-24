---
name: sec-third-party-security-manager
description: "Manage third-party and vendor security for MBL portfolio companies. Use when the user says 'vendor security', 'third-party security', 'vendor risk', 'third-party risk', 'vendor assessment', 'vendor security review', 'vendor security questionnaire', 'security questionnaire', 'SIG questionnaire', 'vendor due diligence', 'vendor audit', 'vendor compliance', 'SOC 2 report', 'SOC 2 review', 'vendor SOC 2', 'vendor compliance review', 'vendor data security', 'vendor contract security', 'data processing agreement', 'DPA', 'Business Associate Agreement', 'BAA', 'vendor BAA', 'new vendor security', 'onboard vendor', 'vendor onboarding security', 'vendor offboarding', 'vendor access removal', 'vendor risk register', 'supply chain risk', 'vendor list', 'approved vendors', 'unapproved vendor', 'shadow IT vendor', 'vendor SLA', 'vendor security incident', 'vendor breach', 'third-party breach', 'vendor data breach notification', 'subprocessor', 'sub-processor', or 'vendor management'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <assess|onboard|review|offboard>] [--vendor <vendor-name>] [--risk-tier <high|medium|low>]"
---

# Sec Third-Party Security Manager

Manage third-party and vendor security for MBL portfolio companies — assessing new vendors before engagement, maintaining Business Associate Agreements for PHI processors, reviewing vendor security posture annually, and managing vendor offboarding. The organization's security posture is only as strong as its weakest vendor; for Allevio, a vendor breach involving PHI is Allevio's breach.

## When to Use
- Evaluating a new vendor before engagement
- Maintaining and reviewing the Business Associate Agreement (BAA) register
- Conducting annual vendor security reviews
- Responding to a vendor breach notification

## Vendor Security Management Framework

```
VENDOR RISK TIERS (determines review depth):

  Tier 1 — High risk (most rigorous review):
    Criteria: accesses, stores, or processes Tier 1 data (PHI; LP data; financial credentials)
    OR has administrative access to entity systems
    Examples (Allevio): AdvancedMD; Marshall Medical Billing; any clinical data vendor
    Examples (HIVE): Covercy; financial advisors with Covercy access
    Examples (MBL): Krista.ai (M365 integration); payroll processor
    Review: annual; SOC 2 Type II required (or equivalent audit); BAA if PHI; DPA if PII
    Contract: must include security requirements; breach notification SLA ≤72 hours
    
  Tier 2 — Medium risk:
    Criteria: accesses Tier 2 Confidential data; or significant business function
    Examples: GoHighLevel (CRM); Monday.com; IT support vendors; cloud service providers
    Review: annual; SOC 2 Type II preferred; security questionnaire minimum
    Contract: security requirements; breach notification SLA ≤5 days
    
  Tier 3 — Low risk:
    Criteria: no access to entity systems or sensitive data; commodity services
    Examples: office supplies; landscaping; conference room vendors
    Review: no security review required; standard contract terms
    
VENDOR ONBOARDING SECURITY PROCESS:

  Step 1 — Risk tier classification (Dr. Lewis):
    Does this vendor touch Tier 1 or Tier 2 data?
    Does this vendor get system access (even read-only)?
    Classification → determines review depth
    
  Step 2 — Security assessment (Tier 1 and Tier 2 vendors):
    Request SOC 2 Type II report (or equivalent)
    If no SOC 2: complete security questionnaire (Dr. Lewis sends SIG Lite or custom questionnaire)
    Review: data storage location; encryption; access controls; incident response; breach history
    Flag: vendors in high-risk jurisdictions; no encryption; no MFA; history of breaches
    
  Step 3 — BAA (Allevio — all vendors that touch PHI):
    BAA required before any PHI access is granted — no exceptions
    BAA must be signed by authorized signatories on both sides
    BAA review: Dr. Lewis reviews; entity CEO countersigns for Allevio
    BAA register: maintained by Dr. Lewis (list of all active BAAs; expiration; renewal)
    
  Step 4 — Contract security terms (Tier 1 and Tier 2):
    Data protection obligations (encryption; access control; minimum necessary)
    Breach notification: within 72 hours (Tier 1) or 5 days (Tier 2) of discovery
    Right to audit: Allevio can request audit evidence annually
    Data return / destruction on contract termination
    Subprocessor notification: vendor must notify if they engage subprocessors with data access
    
  Step 5 — Access provisioning:
    Create vendor access in applicable system (IT; Dr. Lewis oversight)
    Scope: minimum access necessary for the vendor's function
    MFA: required on any system access (vendor must use MFA)
    Separate vendor account: named vendor account (not shared with internal users)
    
ANNUAL VENDOR REVIEW:
  Tier 1 vendors: annual SOC 2 Type II review + any adverse findings assessed
  Tier 2 vendors: annual security questionnaire or SOC 2 review
  All active vendors: confirm contract is current; BAA is current (Allevio PHI vendors)
  
  Review question: has anything changed with this vendor that changes their risk tier?
  (New ownership; breach history; SOC 2 failed; subprocessors changed)
  
VENDOR BREACH NOTIFICATION RESPONSE:
  When a vendor notifies of a breach:
    1. Dr. Lewis evaluates: what data of ours was affected? PHI? LP? Financial?
    2. If PHI affected (Allevio): HIPAA breach assessment triggered (sec-incident-responder)
    3. Entity CEO notified within 24 hours of receiving vendor notification
    4. Matt Mathison notified if PHI or significant financial data involved
    5. Request from vendor: forensic report; number of affected records; containment evidence
    6. Consider: do we continue with this vendor? (entity CEO decision with Dr. Lewis recommendation)
    7. Document: incident; notification; assessment; decision; actions

BAA REGISTER (Allevio — maintained by Dr. Lewis):
  Fields per BAA: vendor name; date signed; expiration (if any); PHI scope; contacts; status
  Annual review: Dr. Lewis reviews all BAAs for currency; expired BAAs renewed before expiration
  New BAA: Dr. Lewis reviews legal terms; entity CEO countersigns; filed in SharePoint
  Terminated vendor: BAA off-ramped; data return/destruction confirmed; Dr. Lewis documents
```

## Output Format

```markdown
# Vendor Security Register — [Entity] | [Date]
**Owner:** Dr. John Lewis | **Next annual review:** [Month Year]

---

## Tier 1 Vendors (High Risk)
| Vendor | Data type | BAA | SOC 2 | Last reviewed | Expiry | Status |
|--------|----------|-----|-------|--------------|--------|--------|
| AdvancedMD | PHI | ✅ [Date] | ✅ 2025 | [Date] | — | Active |
| Marshall Medical Billing | PHI | ✅ [Date] | Questionnaire | [Date] | — | Active |

---

## Tier 2 Vendors (Medium Risk)
| Vendor | Data type | Contract security | Last reviewed | Status |
|--------|----------|------------------|--------------|--------|

---

## Open Issues
| Vendor | Issue | Severity | Action | Due |
|--------|-------|---------|--------|-----|
```

## Output Contract
- BAA must be signed before any PHI access, not after — this is the most common HIPAA Business Associate violation; the sequence is: (1) identify vendor will touch PHI; (2) negotiate and execute BAA; (3) then grant system access and allow PHI to flow; if a vendor is accessing PHI without a signed BAA, Allevio is in violation of HIPAA — the violation began when PHI first touched the vendor's systems; Dr. Lewis's protocol: any vendor that will receive, create, maintain, or transmit PHI on behalf of Allevio triggers a BAA requirement; Dr. Lewis prepares the BAA (or reviews the vendor's BAA); entity CEO countersigns; BAA filed; then access granted; there are no circumstances under which a vendor gets PHI access while "we're working on the BAA" — this is a Dr. Lewis hard stop
- SOC 2 Type II is requested, not required — Dr. Lewis requests SOC 2 Type II reports for Tier 1 vendors; if a vendor does not have a SOC 2 report, they complete a security questionnaire instead; the absence of a SOC 2 doesn't automatically disqualify a vendor — smaller vendors may not have completed the audit yet; the questionnaire covers the same ground; what matters is the substance of their controls, not the certification; however, if a questionnaire response reveals inadequate controls (no encryption; no MFA; no incident response plan), that is disqualifying for Tier 1 vendor status handling PHI; Dr. Lewis makes a risk-based determination and presents it to the entity CEO with a recommendation; the entity CEO decides whether to engage the vendor; Dr. Lewis documents the decision
- HITL required: Tier 1 vendor engagement → Dr. Lewis security review before onboarding; BAA → Dr. Lewis reviews; entity CEO countersigns; Tier 1 vendor access provisioning → Dr. Lewis oversight; vendor security questionnaire assessment → Dr. Lewis documents findings + entity CEO recommendation; vendor breach notification → Dr. Lewis assesses within 24 hours; entity CEO notified; PHI breach via vendor → HIPAA assessment; Matt Mathison notified; annual vendor review → entity CEO informed of any Tier 1 vendor issues; vendor termination → Dr. Lewis confirms data destruction; access removed; BAA off-ramped; continued engagement after breach → entity CEO decision + Dr. Lewis recommendation

## System Dependencies
- **Reads from:** Vendor register (SharePoint → [Entity] → Vendors → Approved-Vendor-List); BAA register (SharePoint → Allevio → Security → BAA-Register); SOC 2 reports (vendor-provided; SharePoint → [Entity] → Vendors → SOC2-Reports → [Vendor]); vendor security questionnaire responses; vendor contracts (SharePoint → [Entity] → Contracts → [Vendor]); Tier 1 data classification map (sec-data-classification-manager); incident history (vendor breach records — sec-incident-responder)
- **Writes to:** Vendor security register (SharePoint → [Entity] → Security → Vendor-Register → [Date]); BAA register updates (Allevio — new BAAs; renewals; terminations; SharePoint → Allevio → Security → BAA-Register); vendor security assessment records (findings; Dr. Lewis recommendation; entity CEO decision; SharePoint → [Entity] → Vendors → Security-Assessments → [Vendor]); vendor breach incident records (sec-incident-responder trigger); entity CEO vendor briefing (annual Tier 1 review); Monday.com (vendor onboarding security tasks; annual review reminders)
- **HITL Required:** Tier 1 vendor onboarding → Dr. Lewis security review; BAA → Dr. Lewis review + entity CEO countersign; PHI access before BAA → Dr. Lewis hard stop; vendor questionnaire assessment → Dr. Lewis documents + entity CEO recommendation; vendor breach → Dr. Lewis 24hr assessment; entity CEO notified; PHI breach via vendor → HIPAA assessment + Matt Mathison; continued engagement post-breach → entity CEO decision; vendor termination data destruction → Dr. Lewis confirms; annual Tier 1 review issues → entity CEO informed

## Test Cases
1. **Golden path:** Allevio considers adding a new telehealth video platform that would allow clinical coordinators to conduct video consultations with enrollees (video = PHI). Dr. Lewis risk tier assessment: Tier 1 (video sessions between clinical staff and enrollees = PHI; platform stores session recordings). Assessment: (1) Vendor provides SOC 2 Type II report — Dr. Lewis reviews; controls adequate. (2) BAA: vendor has standard BAA template; Dr. Lewis reviews; requires 2 modifications (breach notification SLA from 7 days to 72 hours; subprocessor notification clause added). Vendor accepts modifications. (3) Entity CEO countersigns BAA. (4) Access provisioning: clinical coordinators only; no admin access for vendor; vendor support account scoped to non-PHI config only. (5) BAA registered in SharePoint BAA Register. (6) Vendor added to Tier 1 list with annual review scheduled. Engagement approved; go-live coordinated with Allevio entity CEO.
2. **Edge case:** AdvancedMD (Tier 1, BAA in place) sends a breach notification: they experienced a SQL injection attack; some records in their database were accessed by the attacker, including records from Allevio's tenant: Dr. Lewis: "This triggers our HIPAA breach assessment. Immediate actions: (1) Entity CEO notified within 4 hours. (2) Matt Mathison notified — PHI breach via Tier 1 vendor. (3) Request from AdvancedMD: how many Allevio records were accessed? What data fields? What was the attacker's access period? (4) Dr. Lewis begins 4-factor HIPAA breach risk assessment with available information; document all findings. (5) Assess: do we continue with AdvancedMD? (Dr. Lewis recommendation; entity CEO decision.) (6) If breach confirmed: 60-day notification clock running from today. (7) Outside legal engaged (Matt Mathison authorizes). (8) BAA obligations: AdvancedMD must cooperate with our investigation and breach assessment. (9) Document entire sequence. Annual vendor review of AdvancedMD will include this breach in the risk assessment."
3. **Adversarial:** A new marketing vendor says "just send us the Allevio employer census file so we can customize the outreach emails to employees": Dr. Lewis: "The employer census file contains Protected Health Information — employee enrollment data, benefit elections, and potentially health status information. This vendor has not executed a Business Associate Agreement with Allevio, and based on their request, they're not asking to act as a Business Associate — they're asking for PHI they have no business reason to hold. The answer is no. If the marketing vendor needs to contact employees: (1) Allevio sends the communications directly using its own approved tools; the vendor provides the template. (2) If the vendor needs to send on behalf of Allevio: that requires a BAA, a data processing agreement, and Dr. Lewis security review before any census data is shared. (3) What specifically does the vendor need? Let's find the minimum-necessary approach that achieves the marketing goal without sharing PHI with an unapproved vendor."

## Audit Log
Vendor security register records (version; date; Dr. Lewis review; entity CEO briefing; SharePoint). BAA register records (Allevio — all BAAs; execution date; entity CEO countersign; expiration; renewal; SharePoint; retained 6 years). Vendor security assessment records (vendor; tier; assessment type; SOC 2 or questionnaire; findings; Dr. Lewis recommendation; entity CEO decision; date). Vendor breach response records (vendor; notification date; Dr. Lewis assessment date; entity CEO notification; PHI assessment; HIPAA assessment if applicable; continued engagement decision). Vendor termination records (vendor; termination date; data return/destruction confirmation; BAA off-ramp; access removal date).

## Deprecation
Vendor register reviewed annually. BAA register reviewed quarterly (Allevio — expiration tracking). Vendor risk tier definitions reviewed annually. SOC 2 review process updated when AICPA updates Trust Services Criteria. Security questionnaire template reviewed annually. Breach notification SLA thresholds reviewed when regulations change (GDPR; CCPA update breach notification requirements).
