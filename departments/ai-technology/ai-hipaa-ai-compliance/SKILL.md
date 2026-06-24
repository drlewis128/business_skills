---
name: ai-hipaa-ai-compliance
description: "Ensure HIPAA compliance for AI applications at Allevio and any healthcare-adjacent MBL operation. Use when the user says 'HIPAA AI', 'AI and HIPAA', 'HIPAA compliance for AI', 'is this AI HIPAA compliant', 'AI HIPAA risk', 'PHI and AI', 'AI and PHI', 'AI PHI exposure', 'AI health data', 'AI healthcare', 'AI clinical data', 'HIPAA review', 'HIPAA for Allevio', 'Allevio AI compliance', 'Allevio HIPAA', 'AI BAA', 'BAA for AI vendor', 'AI vendor BAA', 'does this vendor have a BAA', 'HIPAA AI vendor evaluation', 'covered entity AI', 'business associate AI', 'AI data handling healthcare', 'AI security healthcare', 'HIPAA security rule AI', 'HIPAA privacy rule AI', 'de-identification AI', 'safe harbor AI', 'expert determination AI', 'AI aggregate health data', 'AI de-identified data', 'AI health data compliance', 'minimum necessary AI', 'HIPAA audit AI', 'HIPAA incident AI', 'AI breach healthcare', or 'HIPAA training AI'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--entity allevio] [--use-case <name>] [--action <assess|audit|train|incident|baa-review>]"
---

# AI HIPAA Compliance

Ensure HIPAA compliance for AI applications at Allevio and any healthcare-adjacent MBL operation — assessing PHI risk in AI workflows, reviewing BAAs for AI vendors, enforcing de-identification requirements, and managing HIPAA AI incidents. This skill is the HIPAA firewall for all AI activity at Allevio; PHI in an AI pipeline without proper safeguards is not a theoretical risk — it is an immediate regulatory violation.

## When to Use
- Before deploying any AI application at Allevio
- When evaluating an AI vendor for Allevio use
- After any AI output at Allevio that may contain PHI
- Quarterly HIPAA AI compliance review at Allevio

## HIPAA AI Compliance Framework

```
HIPAA APPLICABILITY TO AI:
  Allevio is a covered entity (healthcare MSO providing care coordination)
  Any AI application that: receives PHI; processes PHI; generates content from PHI → requires HIPAA compliance
  PHI definition for AI context:
    → Individual member names + any health-related context (even implicit)
    → Member-specific utilization data (ER visits; clinical encounters; prescription history)
    → Individual diagnoses or condition management data
    → Health plan enrollment data at individual level (employer code + individual name = PHI)
    → Aggregated data that could be re-identified to individuals (<5 members in a group → treat as PHI)
  NOT PHI (safe for AI processing without special controls):
    → Employer aggregate metrics (enrolled EE count; total PMPM; aggregate claim cost by employer)
    → De-identified data meeting HIPAA Safe Harbor standards (all 18 identifiers removed)
    → Publicly available health policy or medical knowledge (no individual data)
    
DE-IDENTIFICATION STANDARDS (HIPAA Safe Harbor):
  Remove all 18 identifiers: names; geographic data below state level; dates (except year for most);
    phone; fax; email; SSN; medical record numbers; health plan beneficiary numbers; account numbers;
    certificate/license numbers; VINs; device identifiers; URLs; IPs; biometric identifiers; 
    full-face photos; any unique identifying number
  Residual risk: no reasonable basis to believe data could identify an individual
  Minimum group size for safe aggregation: ≥10 members (MBL standard; conservative of HIPAA minimum)
  
BAA REQUIREMENTS FOR AI VENDORS (Allevio):
  Any AI vendor that receives PHI from Allevio → BAA required before first data transfer
  BAA must cover: permitted uses; safeguards; breach notification (< 60 days); return/destroy on termination
  Approved AI vendors with BAAs: Anthropic (HIPAA-eligible tier); Krista.ai (BAA in place); 
    Microsoft 365 (M365 BAA in place)
  Not approved without BAA review: OpenAI; Google AI; any "free tier" AI service; any new vendor
  BAA review: Dr. Lewis + Allevio entity CEO + legal counsel for new vendor BAAs
  
ALLEVIO AI ABSOLUTE PROHIBITIONS:
  1. No AI model trained on Allevio member PHI (not even "anonymized" without Safe Harbor verification)
  2. No AI output containing individual member names + health context (any context)
  3. No PHI sent to any AI vendor without an executed BAA
  4. No member-level data in meeting summaries; pre-meeting prep; or any Krista workflow output
  5. No AI-generated content about individual members sent to employers (potential HR/EEOC issue)
  
INCIDENT RESPONSE (HIPAA AI incident):
  Definition: any unauthorized disclosure of PHI through an AI application
  Immediate: Dr. Lewis suspends the affected AI workflow immediately (no delay for investigation)
  Within 24 hours: Dr. Lewis + Allevio entity CEO + legal counsel; breach risk assessment begins
  Breach assessment: was PHI actually disclosed? To whom? How many members? What data elements?
  Breach threshold: if risk assessment indicates >50% probability of compromise → breach notification
  Breach notification: 60 days from discovery; HHS OCR; affected individuals; potentially media (>500)
  Documentation: all incident details preserved; legal hold on related AI logs and transcripts
```

## Output Format

```markdown
# HIPAA AI Compliance Assessment — [Use Case / Incident]
**Entity:** Allevio | **Assessed by:** Dr. Lewis | **Date:** [Date]
**Assessment type:** [Pre-deployment / Audit / Incident response]

---

## PHI Risk Determination
**Data processed by AI:** [Description — employer aggregate / member-level / unknown]
**PHI present:** ✅ Yes / ❌ No / ⚠️ Uncertain — requires further review
**PHI elements (if any):** [List]
**De-identification status:** [Safe Harbor met / Not met / Not required]

---

## Compliance Status
| Requirement | Status | Notes |
|-------------|--------|-------|
| BAA executed with AI vendor | ✅/❌ | [Vendor; BAA date] |
| Data de-identified before AI processing | ✅/❌ | |
| Member-level data excluded from outputs | ✅/❌ | |
| Minimum group size ≥10 maintained | ✅/❌ | |

---

## Determination: [COMPLIANT / NON-COMPLIANT / INCIDENT]
[If non-compliant: required remediation steps]
[If incident: breach risk assessment initiated — see incident log]
```

## Output Contract
- Any uncertainty about PHI in an Allevio AI context defaults to "treat as PHI" — when Dr. Lewis is not certain whether data processed by an AI application contains PHI, the default is to treat it as PHI and apply all HIPAA controls; the cost of incorrectly treating non-PHI as PHI is some additional friction; the cost of incorrectly treating PHI as non-PHI is a HIPAA breach, OCR investigation, and potential regulatory action; at Allevio, ambiguity is resolved conservatively, not optimistically; if Dr. Lewis cannot confirm that data is de-identified to Safe Harbor standards, it is PHI until proven otherwise
- BAA review is not a rubber stamp — when Dr. Lewis reviews a BAA for a new AI vendor, he reads the permitted uses carefully: does the BAA allow the vendor to use Allevio's data for model training? Does it cover the specific data types Allevio will share? Does it include the required breach notification timeline (<60 days)? A BAA that allows model training on PHI or doesn't include breach notification is not an acceptable BAA — Dr. Lewis red-lines it and negotiates or finds a different vendor; Allevio entity CEO and legal counsel sign the final BAA; Dr. Lewis does not sign on behalf of Allevio
- HITL required: pre-deployment assessment → Dr. Lewis completes; Allevio entity CEO reviews; new AI vendor BAA → Dr. Lewis + entity CEO + legal counsel review; BAA signing → Allevio entity CEO and vendor; HIPAA incident → Dr. Lewis suspends workflow immediately; entity CEO + legal counsel within 24 hours; breach assessment → legal counsel leads; Matt Mathison notified within 24 hours of any incident determination; quarterly HIPAA AI review → Dr. Lewis prepares; entity CEO reviews

## System Dependencies
- **Reads from:** Allevio AI application specifications; data flow diagrams (what data enters each AI call); vendor BAA documents; HIPAA Security Rule (45 CFR Part 164); HIPAA Privacy Rule (45 CFR Part 164); HHS guidance on AI and HIPAA; Anthropic HIPAA documentation (HIPAA-eligible tier); Krista.ai BAA
- **Writes to:** HIPAA AI compliance assessments (SharePoint → Allevio → Compliance → HIPAA → AI Compliance → [Date]); BAA register (SharePoint → Allevio → Compliance → BAA Register); incident response records (legal hold; SharePoint → Allevio → Compliance → Incidents); HHS breach notifications (if required); Matt Mathison HIPAA incident briefings
- **HITL Required:** Pre-deployment → entity CEO reviews; BAA signing → entity CEO + legal counsel; incident → Dr. Lewis suspends + entity CEO + legal counsel within 24h; breach determination → legal counsel leads; Matt Mathison → within 24h of incident determination; breach notification → legal counsel files; quarterly review → entity CEO reviews

## Test Cases
1. **Golden path:** Allevio entity CEO proposes using Claude API to generate monthly employer progress reports. Pre-deployment HIPAA assessment: Data inputs? → QuickBooks billing data (employer code; enrolled EE count; PMPM; total; no individual member data). AdvancedMD summary from Marshall Medical Billing → aggregate payer reimbursement (no individual claims). PHI present? → No PHI in these inputs. Employer aggregate data is not PHI. De-identification required? → Data is already aggregate; no 18 identifiers present. BAA status: Anthropic HIPAA-eligible tier → BAA in place. Assessment: COMPLIANT. Deployment proceeds.
2. **Edge case:** Krista.ai conversation audit finds this phrase in a meeting summary for an Allevio employer meeting: "Clinical lead mentioned that 3 members in the Johnson employer group have diabetes and are not engaging with the care coordination program" → Dr. Lewis: "This is a PHI incident. Individual member health conditions (diabetes) combined with employer group identification constitutes PHI. The Krista Meeting Intelligence workflow for Allevio is suspended immediately. Investigation: This data came from the meeting transcript — a clinical lead disclosed member-level diagnosis information in an employer meeting. The Krista workflow faithfully summarized it — the workflow is not at fault; the PHI entered at the source. Action: (1) Incident logged; (2) Summary with PHI destroyed; (3) Allevio entity CEO notified within 2 hours; (4) Legal counsel notified within 24 hours; (5) Breach risk assessment: Was this summary distributed? If Dr. Lewis caught it in the HITL review before distribution, risk of breach may be low. If it was distributed, breach assessment escalates. (6) Clinical lead training on HIPAA and meeting content required."
3. **Adversarial:** An AI vendor sales representative claims "our platform is HIPAA compliant" and uses this to shortcut the BAA process ("just use us, we're HIPAA compliant") → Dr. Lewis: "HIPAA compliance claims in marketing materials are not the same as a signed Business Associate Agreement. A vendor can have SOC 2 Type II certification and strong security practices and still not be an appropriate business associate for Allevio without a BAA. The BAA creates the legal framework for Allevio to share PHI with you — and Allevio cannot share PHI without one. I need the following: (1) Your HIPAA BAA template; (2) Confirmation that you do not train your models on customer data (this must be in the BAA); (3) Your breach notification timeline (must be <60 days). Once I have these, I'll review with Allevio's entity CEO and legal counsel. Until then, no Allevio data enters your platform."

## Audit Log
All HIPAA AI compliance assessments (permanent; SharePoint → Allevio → Compliance). BAA register (all vendors; BAA dates; coverage; signatories). PHI incident log (all incidents; even near-misses). Breach assessment records. HHS notification records. Workflow suspension records. Clinical staff HIPAA training records (AI-related). Matt Mathison notification records. Legal counsel engagement records.

## Deprecation
HIPAA requirements reviewed when HHS issues new guidance on AI. BAA templates reviewed annually. PHI definition for AI context reviewed as AI capabilities evolve. Minimum group size standard reviewed when OCR guidance changes. Incident response protocol reviewed after any incident (lessons learned). Quarterly review cadence reviewed if Allevio's AI portfolio grows significantly.
