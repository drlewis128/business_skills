---
name: sec-cyber-insurance-manager
description: "Manage cyber insurance for MBL portfolio companies. Use when the user says 'cyber insurance', 'cyber liability insurance', 'cyber coverage', 'cyber policy', 'cybersecurity insurance', 'technology errors and omissions', 'tech E&O', 'network security insurance', 'data breach insurance', 'ransomware insurance', 'cyber claim', 'file a cyber claim', 'insurance coverage for breach', 'insurance coverage for ransomware', 'cyber insurance renewal', 'cyber insurance application', 'cyber insurance questionnaire', 'cyber underwriting', 'cyber premium', 'insurance controls', 'insurance requirements', 'what does cyber insurance cover', 'cyber insurance limits', 'insurance deductible', 'cyber risk transfer', 'transfer the risk', 'insurance for data breach', 'HIPAA breach insurance', 'Allevio insurance', 'HIVE insurance', 'Column6 insurance', 'insurance broker', 'insurance policy review', 'policy exclusions', 'ransomware payment coverage', 'ransom coverage', 'BEC coverage', 'wire fraud coverage', 'social engineering insurance', 'cyber incident response costs', 'legal costs insurance', or 'regulatory fine insurance'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <assess|apply|review|claim>] [--coverage <limits|exclusions|controls>]"
---

# Sec Cyber Insurance Manager

Manage cyber insurance for MBL portfolio companies — selecting appropriate coverage, maintaining controls that satisfy underwriting requirements, managing renewals, and initiating claims when needed. Cyber insurance is risk transfer — it does not prevent incidents, but it funds the response when prevention fails. For Allevio, cyber insurance is especially critical: a HIPAA breach involving 500+ individuals triggers notification costs, legal fees, and potential OCR penalties that can easily exceed $500K.

## When to Use
- Reviewing or selecting cyber insurance coverage for an entity
- Preparing the cyber insurance application and controls questionnaire
- Initiating a cyber insurance claim after an incident
- Ensuring security controls meet underwriting requirements

## Cyber Insurance Framework

```
COVERAGE TYPES (understand what is and isn't covered):

  First-party coverage (covers Allevio/entity's own losses):
    Incident response costs: forensic investigation; IT recovery; legal counsel
    Business interruption: lost revenue during downtime caused by cyber incident
    Ransomware / extortion: ransom payment (if authorized — legal and insurer review required)
    Data recovery: cost to restore data from backup or recreate
    Notification costs: HIPAA breach notification letters; call center (Allevio)
    
  Third-party coverage (covers claims made against the entity):
    Regulatory fines and penalties: OCR HIPAA enforcement (some policies cover; verify)
    Customer/patient lawsuits: individuals suing Allevio over a PHI breach
    Media liability: defamation; privacy violations in published materials
    
  COMMON EXCLUSIONS (read the policy carefully):
    Unencrypted data: some policies exclude breaches of unencrypted PHI (MBL standard: encrypt all PHI)
    Known vulnerabilities: incidents caused by a vulnerability known to the insured for >90 days
      (patch compliance matters for insurance coverage)
    War exclusion: nation-state attacks may be excluded (check NotPetya-era rulings)
    Bodily injury from cyber incident (covered by general liability, not cyber)
    Intentional acts: insider deliberate actions may be excluded
    Wire fraud without security controls: BEC may require specific controls
    (some policies require: dual approval; call-back verification for wire transfers)
    
UNDERWRITING CONTROLS (what insurers require for good rates):
  2024-2025 cyber insurance underwriting commonly requires:
    ✅ MFA enforced (M365; critical systems) — often the #1 requirement; without it: coverage denied or high premium
    ✅ Endpoint detection and response (EDR) on all endpoints
    ✅ Privileged Access Management (admin accounts separate; limited count)
    ✅ Backup with tested restore (especially air-gapped or immutable backup)
    ✅ Email security (MFA; DMARC; anti-phishing)
    ✅ Security awareness training (annual; documented completion)
    ✅ Patch management (critical patches within 7 days)
    ✅ Incident response plan (documented; tested)
    ✅ Vendor/third-party risk management (BAAs for Allevio; vendor security reviews)
    ✅ Business email compromise controls (wire transfer verification protocol)
    
  Controls not in place = higher premiums; possible coverage limitations; possible denial
  MBL approach: security program controls are implemented for risk reduction; they also satisfy underwriting
  
COVERAGE LIMITS (MBL portfolio guidance):
  Limits depend on entity size; industry; data sensitivity; regulatory exposure
  
  Allevio (HIPAA; PHI):
    Recommended minimum: $2M-$5M
    Rationale: HIPAA breach 500+ individuals; notification + legal + OCR response easily $500K-$2M+
    Include: incident response costs; regulatory; first-party; third-party; ransomware
    
  Column6 (consumer data; CCPA):
    Recommended minimum: $1M-$2M
    Rationale: consumer data breach; CCPA penalties; agency client lawsuits
    
  HIVE (LP data; financial):
    Recommended minimum: $1M
    Rationale: LP data breach; Covercy financial data; BEC risk (oil and gas financial transfers)
    
  MBL HoldCo:
    Recommended minimum: $2M (umbrella/parent policy may apply)
    Rationale: financial system access; Krista.ai integration; executive email BEC risk
    
CLAIM FILING PROCESS:
  1. Notify insurer immediately after incident confirmation (most policies require prompt notification)
  2. Do not engage third-party forensic investigators or legal counsel before insurer authorization
     (insurer typically has approved panel vendors; using non-panel may void coverage)
  3. Document everything: incident timeline; actions taken; costs incurred
  4. Follow insurer's incident response coordination process
  5. Cooperate fully with insurer investigation
  6. Matt Mathison informed of any cyber insurance claim immediately
  Entity CEO + Dr. Lewis + insurer coordinate the claim process
```

## Output Format

```markdown
# Cyber Insurance Status — [Entity] | [Date]
**Insurer:** [Name] | **Policy period:** [Start] - [End] | **Premium:** $[X]

---

## Coverage Summary
| Coverage type | Limit | Deductible | Status |
|--------------|-------|-----------|--------|
| First-party (incident response, business interruption) | $[X]M | $[X]K | Active |
| Ransomware / extortion | $[X]M | $[X]K | Active |
| HIPAA regulatory (Allevio) | $[X]M | $[X]K | Active / Excluded |
| Third-party (claims; lawsuits) | $[X]M | $[X]K | Active |

---

## Underwriting Controls Status
| Control | Status | Insurance requirement | Gap |
|---------|--------|----------------------|-----|
| MFA enforced | ✅/❌ | Required | — |
| EDR on endpoints | ✅/❌ | Required | — |
| Backup with tested restore | ✅/❌ | Required | — |

---

## Renewal Checklist (90 days before expiry)
- [ ] Current controls status updated for application
- [ ] Entity CEO reviews coverage limits vs. current risk exposure
- [ ] Broker benchmarks against market alternatives
```

## Output Contract
- Insurance must be notified before engaging forensic investigators or legal counsel — most cyber policies have a panel of approved vendors (forensic firms; breach response attorneys; crisis PR); using a non-panel vendor without insurer authorization can result in coverage denial for those costs; when a major incident occurs, the first call after Dr. Lewis + entity CEO is to the cyber insurance carrier; the insurer's breach response team then coordinates the investigation; this is not a limitation on Allevio's autonomy — it is a contractual requirement that also means the insurer is bearing the cost; if Dr. Lewis or entity CEO engages a forensic firm independently ("because we trust them"), they may be personally responsible for those fees if the insurer denies the invoice; the protocol: Dr. Lewis calls the insurer hotline within 24 hours of a confirmed P0 incident; then proceeds with their guidance
- Security controls failures that caused the incident may trigger coverage limitations — if a cyber insurance claim arises from a breach involving: unencrypted PHI (when encryption was a policy requirement); known unpatched vulnerabilities (when patching was a policy requirement); or an account without MFA (when MFA was a policy requirement) — the insurer may investigate whether the entity misrepresented their security controls on the application; inaccurate answers on the cyber insurance application (even inadvertently) can create coverage disputes; Dr. Lewis reviews the controls attestation on the annual application against actual implementation before signing; entity CEO reviews and signs the application; if any control is not fully implemented at application time, Dr. Lewis notes it accurately on the application (and works to implement it before renewal)
- HITL required: cyber insurance policy selection → entity CEO approves coverage and premium; Dr. Lewis advises on coverage adequacy; Matt Mathison informed of portfolio-level cyber insurance decisions; claim filing → Dr. Lewis initiates; entity CEO authorizes; Matt Mathison notified immediately; insurer notification → Dr. Lewis makes the call; non-panel vendor engagement → insurer authorizes before Dr. Lewis proceeds; annual application controls attestation → Dr. Lewis reviews accuracy; entity CEO signs; coverage limit adequacy review → Dr. Lewis recommends to entity CEO annually; ransomware payment decision (if applicable) → entity CEO + Dr. Lewis + Matt Mathison + insurer + legal counsel all involved

## System Dependencies
- **Reads from:** Cyber insurance policy documents (SharePoint → [Entity] → Insurance → Cyber-Policy); underwriting controls status (all sec-* skills — MFA; patch; backup; EDR; training; IAM; IR plan); prior year cyber insurance application; incident records (for claims — sec-incident-responder); security program status (annual controls attestation); broker communications
- **Writes to:** Cyber insurance status report (SharePoint → [Entity] → Insurance → Cyber-Coverage-Status → [Date]); annual application controls attestation (Dr. Lewis review; entity CEO signature); claim filing documentation (insurer notification; incident timeline; costs; entity CEO + Dr. Lewis); entity CEO cyber insurance briefing (annual — coverage; premium; controls alignment); Matt Mathison portfolio insurance briefing (annual); renewal reminders (90 days and 30 days before expiry)
- **HITL Required:** Policy selection → entity CEO + Dr. Lewis; Matt Mathison for portfolio decisions; claim filing → Dr. Lewis initiates; entity CEO authorizes; Matt Mathison notified; insurer notification → Dr. Lewis; non-panel vendor → insurer authorizes; annual application attestation → Dr. Lewis reviews + entity CEO signs; coverage limit review → Dr. Lewis recommends; entity CEO decides; ransomware payment → entity CEO + Dr. Lewis + Matt Mathison + insurer + legal

## Test Cases
1. **Golden path:** Allevio cyber insurance renewal — 30 days before expiry. Dr. Lewis pulls current policy; reviews coverage against current risk exposure. Assessment: $2M limit is appropriate for current size (65 employees; ~150 employer clients). Controls attestation: Dr. Lewis reviews against actual implementation — MFA ✅; EDR ✅; backup tested ✅; training completed ✅; IR plan tested ✅; DMARC p=reject ✅. All attestable. Entity CEO reviews application; signs. Broker submits to incumbent insurer and 2 alternatives. Incumbent offers renewal at same premium ($24K/year) with 15% higher limits ($2.5M). Alternative 1: $22K for $2M. Alternative 2: $28K for $3M. Dr. Lewis recommendation to entity CEO: "Renew with incumbent at $24K for $2.5M — the 25% limit increase for same premium is the best risk-adjusted value. Alternative 1 has lower limits; Alternative 2 is overpriced for the additional $500K." Entity CEO approves. Policy renewed.
2. **Edge case:** During annual cyber insurance application review, Dr. Lewis discovers that EDR is only deployed on 18 of 22 Allevio endpoints — the 4 missing are clinical coordinator workstations that were added recently and not yet enrolled in Intune/Defender for Business. The application asks "Is EDR deployed on 100% of endpoints?": Dr. Lewis: "We cannot attest to 100% EDR coverage — it would be inaccurate. Entity CEO: (1) We deploy EDR to those 4 endpoints this week (IT priority task — 30-minute effort per endpoint). (2) Then we complete the application accurately as 100%. Alternatively: we disclose '95% of endpoints' on the application — this is accurate; insurer may accept with a remediation plan. I strongly prefer option 1: fix the gap, then attest accurately. Misrepresenting controls on an insurance application is grounds for coverage denial when a claim is filed. Let's fix it first, then sign."
3. **Adversarial:** After a ransomware incident, entity CEO wants to pay the ransom immediately without notifying the insurer: Dr. Lewis: "Paying the ransom before notifying the insurer risks: (1) Losing ransom payment coverage — most cyber policies cover ransom payments if insurer is notified and authorizes; paying independently may mean we bear the cost ourselves. (2) Potential OFAC sanctions violation — if the ransomware group is sanctioned by the Treasury Department, paying the ransom is illegal; the insurer can help navigate this. (3) No guarantee of data recovery — paying the ransom does not guarantee the attacker provides a working decryption key or that they won't attack again. Required sequence: (1) Notify insurer within 24 hours; (2) Insurer coordinates breach response team; (3) Legal counsel advises on OFAC check; (4) Only then is a ransom payment decision made with all parties involved. Matt Mathison is also notified immediately. We do not make this decision alone or quickly."

## Audit Log
Cyber insurance policy records (entity; insurer; policy period; premium; limits; coverage summary; SharePoint). Annual application records (controls attestation; Dr. Lewis review; entity CEO signature; date; submitted to insurer). Claim records (incident; date of claim; insurer notified; insurer breach response team; claim number; costs incurred; outcome; Dr. Lewis + entity CEO). Claim payment records (amount; coverage used; deductible paid; Matt Mathison notified). Controls gap findings during application (gap; remediation; re-attestation date). Ransomware payment decision records (incident; insurer authorization; OFAC check; decision; Matt Mathison approval; outcome).

## Deprecation
Cyber insurance coverage reviewed annually at renewal. Coverage limits reviewed against entity growth and risk exposure annually. Underwriting control requirements updated when insurance market standards change (MFA was standard; quantum encryption may follow). Claim process reviewed after any claim. OFAC ransomware guidance reviewed when Treasury updates sanctioned ransomware group lists.
