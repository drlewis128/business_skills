---
name: sec-encryption-standards-guide
description: "Manage encryption standards for MBL portfolio company data and communications. Use when the user says 'encryption', 'encrypt data', 'data encryption', 'encryption standards', 'encryption policy', 'encryption at rest', 'encryption in transit', 'TLS', 'HTTPS', 'SSL', 'TLS 1.2', 'TLS 1.3', 'certificate', 'SSL certificate', 'TLS certificate', 'expired certificate', 'certificate renewal', 'BitLocker', 'FileVault', 'disk encryption', 'email encryption', 'encrypt email', 'encrypt PHI', 'PHI encryption', 'encrypt PII', 'key management', 'encryption keys', 'certificate management', 'weak encryption', 'outdated encryption', 'deprecated cipher', 'encryption algorithm', 'AES', 'RSA', 'SHA', 'hashing', 'password hashing', 'encrypt backups', 'backup encryption', 'transport layer security', 'secure communication', 'HIPAA encryption', 'encryption for compliance', 'FIPS compliance', or 'end-to-end encryption'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--scope <at-rest|in-transit|email|keys|all>] [--action <assess|implement|report|renew>]"
---

# Sec Encryption Standards Guide

Manage encryption standards for MBL portfolio companies — ensuring that sensitive data is encrypted at rest and in transit, TLS certificates are current, and encryption algorithms meet current security standards. Encryption is the last line of defense: if data is stolen from an encrypted system, the attacker has ciphertext they cannot use; for Allevio, PHI encryption is directly tied to HIPAA breach notification (encrypted PHI breach is presumed low risk and may not require notification).

## When to Use
- Assessing current encryption coverage for an entity
- Managing TLS certificate renewals for entity web services
- Responding to a certificate expiration or weak encryption finding
- Verifying HIPAA encryption requirements for Allevio

## Encryption Standards Framework

```
ENCRYPTION REQUIREMENTS (MBL portfolio):

ENCRYPTION AT REST:
  Endpoints (all entities):
    Windows: BitLocker (AES-256) — required on all company-managed endpoints
    Mac: FileVault 2 (AES-XTS-256) — required on all company-managed Mac endpoints
    See sec-endpoint-hardening-guide for implementation
    
  Servers (Allevio clinic — on-premises if any):
    BitLocker Drive Encryption on Windows servers
    LUKS (Linux Unified Key Setup) for any Linux servers
    
  Cloud storage (all entities):
    M365 SharePoint / OneDrive: Microsoft encrypts at rest (AES-256) by default ✅
    AdvancedMD: SaaS — verify vendor encryption standard (request from vendor annually)
    Covercy: SaaS — verify vendor encryption standard (request from vendor annually)
    GHL: SaaS — verify vendor encryption standard
    QuickBooks Online: SaaS — Intuit encrypts at rest (AES-256) ✅
    
  Backups (all entities):
    All backup media must be encrypted
    Veeam backup: enable backup encryption in job settings (AES-256)
    Manual exports (QB; GHL; Covercy): encrypt with 7-Zip AES-256 or BitLocker before storage
    Backup encryption key: stored in BitWarden (separate from backup storage)
    
ENCRYPTION IN TRANSIT:
  Web services: TLS 1.2 minimum; TLS 1.3 preferred
    All entity web services: HTTPS only; HTTP redirects to HTTPS
    TLS 1.0 and TLS 1.1: deprecated; must be disabled
    TLS configuration check: SSL Labs (ssllabs.com) → A or A+ rating target
    
  Email: SMTP TLS opportunistic encryption (M365 default)
    Email body encryption for PHI: use M365 message encryption (OME) for any PHI in email
    PHI should generally NOT be transmitted via email; if necessary: OME or secure messaging app
    
  M365 services: all traffic encrypted (Microsoft default) ✅
  API connections (Krista.ai; GHL webhooks): HTTPS only; no HTTP API endpoints
  
TLS CERTIFICATE MANAGEMENT:
  What: TLS certificates enable HTTPS; expire typically every 1-2 years
  Risk of expired cert: browsers show "Not Secure" warning; users often bypass; security tools flag
  
  MBL-managed certificates:
    Employer portal (Allevio): certificate renewal tracked; Dr. Lewis sets reminder 60 days before expiry
    Any self-hosted web services: certificate renewal tracking
    Let's Encrypt: free; auto-renewing (90-day certs; automate renewal via certbot)
    Commercial cert: DigiCert; Sectigo; GlobalSign — typically $50-$200/year per domain
    
  SaaS certificates (vendor-managed):
    M365; GHL; AdvancedMD; Covercy: vendor manages TLS certificates; Dr. Lewis monitors for expiry warnings
    If a SaaS service shows cert expiry: contact vendor immediately
    
  Certificate monitoring: run monthly TLS check via SSL Labs or equivalent
  Alert: 60 days before expiry; 30 days before expiry; 7 days before expiry = P0 if not renewed
  
HIPAA AND ENCRYPTION:
  HIPAA encryption is addressable (not required) — BUT:
    If ePHI is NOT encrypted and a device is lost/stolen: HIPAA breach notification required
    If ePHI IS encrypted and a device is lost/stolen: presumed low risk; breach notification likely NOT required
    The practical effect: encrypting PHI devices (BitLocker) turns a reportable breach into a non-breach
    Dr. Lewis treats PHI encryption (endpoints; storage; transit) as functionally required for Allevio
    
  HIPAA encryption minimum standard (HHS guidance):
    At rest: AES 128-bit or higher
    In transit: TLS 1.2 or higher
    MBL standard: AES-256 at rest; TLS 1.2/1.3 in transit (exceeds minimum)
    
WEAK ENCRYPTION DETECTION:
  Check M365 for legacy auth (uses weak or no encryption): blocked via Conditional Access
  Check web services via SSL Labs for weak ciphers: look for A or A+ rating
  Check internal servers: use Nessus or similar to detect outdated TLS/cipher configurations
  Document findings: weak encryption is a Medium-to-High vulnerability per CVSS context
```

## Output Format

```markdown
# Encryption Standards Assessment — [Entity] | [Date]
**Owner:** Dr. John Lewis | **HIPAA encryption status (Allevio):** [Compliant / Gap]

---

## Encryption Coverage
| Data type | System | Encryption at rest | Encryption in transit | Status |
|----------|--------|-------------------|----------------------|--------|
| PHI (endpoints) | Clinical workstations | BitLocker ✅ | N/A (local) | ✅ |
| PHI (cloud) | AdvancedMD | AES-256 (vendor) ✅ | TLS 1.3 ✅ | ✅ |
| Financial data | QuickBooks Online | AES-256 (Intuit) ✅ | TLS 1.3 ✅ | ✅ |
| LP data | Covercy | AES-256 (vendor) ✅ | TLS 1.2 ✅ | ✅ |
| Backups | Veeam / manual | Encrypted ✅/❌ | Encrypted ✅/❌ | |

---

## TLS Certificate Status
| Domain / Service | Provider | Expiry | Days remaining | Status |
|-----------------|---------|--------|----------------|--------|
| employerportal.allevio.com | Let's Encrypt | [Date] | [N] | 🟢/🟡/🔴 |

---

## Open Issues
| Issue | Severity | Action | Owner | Due |
|-------|---------|--------|-------|-----|
| TLS certificate expiring in 18 days | 🔴 P0 | Renew immediately | IT | Today |
```

## Output Contract
- TLS certificate expiration is a P0 issue that requires same-day remediation — an expired TLS certificate causes browsers to show "Your connection is not private" warnings on the entity's website; employees and clients may click through the warning (a bad security habit); the connection between the browser and server may proceed without proper certificate validation depending on how the error is handled; for Allevio's employer portal or any patient-facing service, an expired certificate undermines trust and may technically violate the "encryption in transit" standard if the expired certificate causes TLS negotiation failures; Dr. Lewis monitors all entity certificates with 60-day advance notice; a certificate that expires despite 60-day advance notice means the monitoring system failed; immediate post-expiry actions: renew certificate; deploy to server; verify HTTPS working
- PHI email transmission requires either S/MIME encryption or M365 Message Encryption (OME) — standard email is encrypted in transit (SMTP TLS) but not end-to-end; the email provider (Microsoft) can access plaintext content; for PHI: this creates a HIPAA risk if email travels through intermediary servers or is accessed by vendor employees with data center access; Dr. Lewis's standard for Allevio: PHI should not be transmitted via standard email at all; if it must be: use M365 Message Encryption (OME) which applies envelope-level encryption so only the authorized recipient can read the content; alternatively, use AdvancedMD's built-in secure messaging features; M365 OME is included in M365 Business Premium (no additional cost); Dr. Lewis configures automatic encryption rules for emails containing keywords associated with PHI (DOB; SSN; diagnosis) when sent externally
- HITL required: TLS certificate renewal → IT renews; Dr. Lewis verifies success (test via SSL Labs or browser); employer portal cert expiry → P0; entity CEO notified; certificate expiry <7 days → Dr. Lewis accelerates; backup encryption configuration → Dr. Lewis sets; IT executes; backup encryption key storage → Dr. Lewis manages in BitWarden; PHI email encryption rule → Dr. Lewis configures in M365 Compliance Center; entity CEO informed; M365 OME deployment → Dr. Lewis configures; weak encryption finding (SSL Labs below A) → IT remediates; Dr. Lewis verifies; weak cipher disable (TLS 1.0/1.1) → Dr. Lewis surveys for breakage first; IT executes; entity CEO informed of any service disruption

## System Dependencies
- **Reads from:** SSL Labs test results (ssllabs.com — all entity web service TLS ratings); Intune (BitLocker status on endpoints — sec-endpoint-hardening-guide); M365 Compliance Center (OME policy status; sensitivity labels); certificate inventory (Dr. Lewis maintained — domain; provider; expiry date); vendor encryption documentation (AdvancedMD; Covercy; GHL — requested annually); vulnerability scan results (sec-vulnerability-scanner — weak cipher findings); backup encryption status (Veeam console; manual export encryption confirmation)
- **Writes to:** Encryption standards assessment report (SharePoint → [Entity] → Security → Encryption → [Date]); TLS certificate inventory (SharePoint → [Entity] → Security → Certificates → Certificate-Inventory.xlsx); M365 OME policy (Dr. Lewis configures in Compliance Center — Allevio); Intune BitLocker policy (sec-endpoint-hardening-guide); weak cipher remediation task (Monday.com — IT; Dr. Lewis oversight); entity CEO encryption briefing (quarterly); certificate expiry reminders (calendar alerts — Dr. Lewis; 60/30/7 days before expiry)
- **HITL Required:** TLS certificate renewal → IT renews; Dr. Lewis verifies; cert <7 days → Dr. Lewis accelerates; backup encryption config → Dr. Lewis sets; backup encryption key → Dr. Lewis in BitWarden; PHI email encryption rule → Dr. Lewis configures; entity CEO informed; OME deployment → Dr. Lewis; weak encryption finding remediation → Dr. Lewis verifies; TLS 1.0/1.1 disable → Dr. Lewis surveys breakage + IT executes; vendor encryption documentation requests → Dr. Lewis annually

## Test Cases
1. **Golden path:** Monthly TLS certificate check for all entity domains. Dr. Lewis runs SSL Labs for employer portal (allevio.com subdomain): Grade A; TLS 1.3 ✅; cert expiry 87 days. GHL-hosted marketing site: Grade A; expiry 245 days ✅. No issues. BitLocker status (Intune): all 12 clinical workstations encrypted ✅. Backup encryption: Veeam console — backup job encryption enabled ✅; last backup 11pm last night ✅. Quarterly vendor check: email to AdvancedMD support requesting encryption standard confirmation — response filed: "AES-256 at rest; TLS 1.3 in transit." All current. Report filed.
2. **Edge case:** AdvancedMD does not respond to the annual encryption standard documentation request after 2 follow-ups: Dr. Lewis: "Vendor non-response to security documentation requests is a vendor risk finding. Actions: (1) Third follow-up: formal written request from entity CEO (escalates beyond support ticket). (2) Review AdvancedMD's published security documentation and compliance certifications (their website; HIPAA compliance page; SOC 2 if available). (3) If no documentation after 3 attempts: document in vendor security register: 'AdvancedMD — encryption standards requested 3 times; no response; using published documentation only.' (4) Flag in annual vendor review: AdvancedMD has not responded to security documentation requests — consider escalating in the BAA review. (5) AdvancedMD is a Tier 1 vendor processing PHI; their refusal to provide encryption documentation is a risk that the entity CEO should be aware of."
3. **Adversarial:** An employee sends a spreadsheet with Allevio employer census data (names; SSNs; health plan enrollment) to a benefits consultant via standard Gmail-to-Gmail email: Dr. Lewis: "This is a HIPAA violation. Standard Gmail: (1) is not covered by a BAA with Google for Allevio's PHI; (2) provides no encryption at the application layer (just transport TLS); (3) the consultant's Gmail can be accessed by Google for targeted advertising (though Google claims no ad targeting on G Suite — the risk is the BAA gap). Immediate actions: (1) Have the consultant delete the email from Gmail immediately and confirm deletion. (2) Dr. Lewis HIPAA 4-factor breach assessment: was PHI sent to a person without authorized access? Yes (consultant without BAA). Likely required to notify individuals. (3) Entity CEO notified today. (4) Employee receives HIPAA email training (immediate). (5) Configure M365 DLP policy to block sending census-type data to external Gmail addresses. (6) Future census transmission: SharePoint secure link with MFA (no email attachments for PHI)."

## Audit Log
Encryption standards assessment records (quarterly; entity; coverage by data type; TLS ratings; Dr. Lewis review; SharePoint). TLS certificate inventory records (all domains; provider; expiry; renewal dates; Dr. Lewis monitoring). Certificate renewal records (domain; expiry; renewal date; IT executor; Dr. Lewis verification via SSL Labs; confirmation date). Vendor encryption documentation records (vendor; request date; response date; standard confirmed; filed in SharePoint). Backup encryption configuration records (tool; setting; Dr. Lewis set; IT confirmed; date). PHI email encryption policy records (Allevio — OME policy; Dr. Lewis configured; entity CEO informed; date). Weak encryption remediation records (finding; system; remediation; Dr. Lewis verification; date).

## Deprecation
Encryption standards reviewed annually. TLS minimum standard updated when NIST deprecates TLS versions (TLS 1.0/1.1 deprecated; TLS 1.2 minimum current; TLS 1.3 preferred). Certificate monitoring tool reviewed annually. OME policy reviewed when Microsoft updates M365 Message Encryption capabilities. HIPAA encryption guidance reviewed when HHS updates guidance. AES standard reviewed when NIST updates cryptographic standards.
