---
name: legal-trade-secret-protector
description: "Identify and protect trade secrets for MBL portfolio companies. Use when the user says 'trade secret', 'proprietary information', 'confidential information', 'protect our secrets', 'trade secret protection', 'trade secret misappropriation', 'DTSA', 'Defend Trade Secrets Act', 'stolen trade secret', 'former employee took our data', 'trade secret theft', 'protect our IP', 'trade secret policy', 'confidential business information', 'protect our processes', 'protect our data', 'protect our formulas', 'protect our methods', 'trade secret misuse', or 'IP theft'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <identify|protect|assess|enforce>] [--asset-type <process|data|formula|customer-list|software|other>]"
---

# Trade Secret Protector

Identify, document, and protect trade secrets for MBL portfolio companies — ensuring that confidential business information is legally protected through the combination of active secrecy measures and contractual agreements. Trade secrets are often the most valuable IP in an early-stage portfolio company: HIVE's LOE optimization methods, Allevio's clinical efficiency protocols, and Column6's audience targeting algorithms are worth protecting. But trade secret protection requires affirmative action — a company that fails to take reasonable steps to keep information secret cannot later claim trade secret protection.

## When to Use
- Identifying what confidential business information qualifies for trade secret protection
- A key employee is leaving (assess trade secret risk)
- A competitor appears to be using the company's confidential information
- Drafting or reviewing employment agreements and NDAs (confidentiality provisions)
- Responding to a suspected trade secret misappropriation

## Trade Secret Protection Framework

```
WHAT QUALIFIES AS A TRADE SECRET:
  Under the Defend Trade Secrets Act (DTSA) and Uniform Trade Secrets Act (UTSA):
  Two requirements:
    1. Information has economic value from not being generally known or readily ascertainable
    2. Reasonable measures are taken to maintain its secrecy
    
  PORTFOLIO COMPANY TRADE SECRET INVENTORY:
  
  ALLEVIO:
    High-value trade secrets:
      PMPM pricing model: Rate calculation methodology; employer group negotiation approach; margin thresholds
      Clinical efficiency protocols: Proprietary processes for managing member health outcomes (if original)
      Employer group contact list + pricing history: Who the clients are; what they pay; their renewal risk profile
      Billing and claims optimization methodology: Denial prevention processes; billing code prioritization
    Note: HIPAA-protected patient data has separate protection requirements (see legal-hipaa-compliance-manager)
      PHI is not a "trade secret" — it has specific legal protections that go beyond trade secret law
      
  HIVE PARTNERS:
    High-value trade secrets:
      LOE optimization methods: How HIVE achieves lower LOE than the sector benchmark; specific operational processes
      Proprietary production data: Well-specific production profiles; decline curve analysis; drilling targets
      Land/mineral lease strategy: Which leases are targeted; negotiation approach; pricing thresholds
      Vendor pricing: What HIVE pays for LOE services (gives competitive advantage in negotiations)
    Note: DOGM production reports are public (filed publicly with DOGM) — not trade secrets
      But the analysis built on top of that data (decline curves; well economics models) is protected
      
  COLUMN6:
    High-value trade secrets:
      Audience targeting algorithms: Lookalike modeling; demographic inference; behavioral attribution
      Agency relationship details: Pricing; deal structures; key contacts; renewal approaches
      Revenue model: How Column6 prices and packages its inventory (CPM floor; take rate)
      First-party data: Audience segments built from publisher partnerships (if proprietary)
      
PROTECTION MEASURES (what "reasonable steps" looks like):

  Contractual:
    □ NDA / Confidentiality agreement: All employees (in employment agreement); contractors (in SOW)
    □ Employee IP assignment: Work product assigns to company (prevents ownership dispute)
    □ Non-solicitation: Prevents departing employees from taking client relationships
    □ Exit protocol: Remind departing employees of confidentiality obligations; confirm data return
    
  Physical / Technical:
    □ Access controls: Only employees who need the information have access (need-to-know)
    □ Password protection and encryption: Trade secret files encrypted; access logged
    □ System monitoring: Detect unusual data access or downloads (flag large downloads before departure)
    □ Compartmentalization: No single employee knows all aspects of a proprietary process
    
  Administrative:
    □ Trade secret designation: Mark documents containing trade secrets as "CONFIDENTIAL"
    □ Trade secret policy: Written policy explaining what is a trade secret; employees must read and sign
    □ Exit interview: Standard protocol to remind departing employees of obligations; retrieve devices
    □ Trade secret inventory: List of what is protected (helps prove "secret" status later)
    
TRADE SECRET MISAPPROPRIATION — RESPONSE PROTOCOL:
  Triggered by: Former employee took confidential data; competitor has suspiciously similar processes
  Day 0-24 hours:
    1. Issue litigation hold immediately
    2. Secure evidence: IT forensics on departing employee's devices (before they are wiped)
    3. Notify Dr. Lewis same day
    4. Dr. Lewis notifies Matt Mathison same day
    5. Engage IP/trade secret counsel within 24 hours
  Day 1-5:
    6. IT forensic review: What data was accessed/downloaded in the 30 days before departure?
    7. Assess actual misappropriation: Do we have evidence of taking, not just access?
    8. Identify the specific trade secrets at risk
  Day 5-10:
    9. Cease-and-desist letter to the former employee (drafted by counsel)
    10. Evaluate TRO / preliminary injunction (if misuse is ongoing or imminent)
  
FEDERAL TRADE SECRET PROTECTION (DTSA):
  Defend Trade Secrets Act (federal): Creates a private cause of action in federal court
  Advantages over state law: Federal court access; nationwide subpoenas; ex parte seizure orders
  Remedy: Injunction + damages (actual or unjust enrichment) + exemplary damages (2× if willful) + attorney's fees
  Limitation: Must prove reasonable measures to protect secrecy (hence the framework above)
```

## Output Format

```markdown
# Trade Secret Protection Assessment — [Entity]
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## Trade Secret Inventory

| Asset | Description | Economic Value | Currently Protected? | Gaps |
|-------|-------------|---------------|---------------------|------|
| [PMPM pricing model] | Employer group rate calculation | High | ✅ NDA in employment agreements | No designation marking on files |
| [LOE optimization methods] | Proprietary field service processes | High | ⚠️ Partial — no written protocol | Add to written employee policies |

---

## Protection Measures Status

| Measure | Status | Action |
|---------|--------|--------|
| Employee confidentiality agreements | ✅ All signed | Annual re-confirmation at review |
| Contractor IP assignment | ⚠️ Missing for 1 contractor | Execute retroactive assignment |
| Access controls | ✅ Active | Review quarterly |
| Confidential document marking | ❌ Not in place | Train staff; update document templates |
| Exit protocol | ⚠️ Informal | Create written exit checklist |

---

## Misappropriation Assessment (if triggered)

**Event:** [Description of suspected misappropriation]
**Evidence:** [What has been observed]
**Assets at risk:** [Specific trade secrets potentially compromised]
**Recommended action:** [Cease-and-desist / TRO / Forensic investigation / Monitor]
**Counsel:** [Engaged / Engage immediately]
```

## Output Contract
- "Reasonable measures" is the legal requirement — a trade secret claim fails without proof that the company took reasonable steps to protect the information; "reasonable" does not mean perfect; a company that uses access controls, confidentiality agreements, and document marking has taken reasonable measures even if one employee violated those measures; a company with no controls — no confidentiality agreements, no access restrictions, no document marking — cannot claim trade secret protection no matter how valuable the information; Dr. Lewis implements the reasonable measures framework so that trade secret protection is available when needed
- IT forensics before device wipe is time-critical — when an employee who has access to trade secrets departs (especially for a competitor), the window to preserve forensic evidence is short; devices are typically returned and wiped within days of departure; a forensic image of the device before it is wiped preserves the evidence of what data was accessed and when; Dr. Lewis includes a standard IT forensic hold in the departure protocol for any employee with significant access to trade secrets; the forensic image is not automatically reviewed — it is preserved in case evidence is needed
- Misappropriation vs. knowledge-in-head — a former employee who "remembers" how the company does something is not a trade secret violation; an employee who copies files, emails data to a personal account, or photographs proprietary documents is; Dr. Lewis helps the CEO distinguish between an uncomfortable competitive situation (employee leaves with general knowledge — not actionable) and actual misappropriation (employee took specific data — actionable); many companies overreact to the first and underreact to the second
- HITL required: Dr. Lewis reviews and identifies; IP/trade secret counsel required for any misappropriation claim, TRO proceeding, or enforcement action; Matt Mathison notified same day of any suspected misappropriation event; CEO confirms which business information is actually secret (the company must know what its trade secrets are); Dr. Lewis does not take enforcement action without IP counsel and Matt Mathison authorization; IT forensic investigation must be conducted by qualified forensic professionals, not Dr. Lewis directly

## System Dependencies
- **Reads from:** Employment agreements (confidentiality provisions); contractor agreements (IP assignment and confidentiality); NDA tracker (legal-nda-manager); access control logs (IT systems — who has access to what?); IT forensic records (if departure protocol triggered); IP asset inventory (legal-ip-asset-manager — trade secrets listed alongside registered IP); exit interview records (hr-exit-interview-analyzer)
- **Writes to:** Trade secret inventory (SharePoint/Legal/<Company>/TradeSecrets/Inventory.xlsx); protection gap assessment; confidential document marking policy; exit protocol (checklist for departing employees with trade secret access); cease-and-desist letter (if misappropriation triggered — drafted by IP counsel); litigation hold notice; Matt Mathison misappropriation notification
- **HITL Required:** Dr. Lewis reviews; IP counsel required for misappropriation enforcement; Matt Mathison notified of any misappropriation event; IT forensic professionals conduct the device image; CEO confirms the trade secret inventory (Dr. Lewis identifies candidates; CEO confirms business value); Dr. Lewis does not conduct IT forensic analysis directly; Dr. Lewis does not issue cease-and-desist letters without IP counsel

## Test Cases
1. **Golden path:** Annual trade secret protection review for Column6 → Dr. Lewis reviews the inventory: Audience targeting algorithm (high value; currently protected by: access control — only 3 engineers have source access; confidentiality in employment agreements ✅; no external documentation ✅); Agency pricing model (high value; stored in a shared drive accessible to all 12 employees — access is too broad); Revenue model spreadsheet (marked "CONFIDENTIAL" ✅; access limited to CEO and Dr. Lewis ✅); Dr. Lewis identifies one gap: Agency pricing model too widely accessible; Action: Restrict access to CEO, sales VP, and Dr. Lewis only; require passwords for access; train the sales team that this is confidential and cannot be shared with agency contacts; Gap closed; protection measures updated; inventory updated
2. **Edge case:** HIVE's field operations supervisor leaves for a direct competitor and takes her work laptop; the CEO notices that 2 days before she resigned, she accessed and downloaded the proprietary LOE cost database (vendor pricing data for all HIVE's field service contracts) → Dr. Lewis activates: "This is a potential trade secret misappropriation event. Activate the response protocol: (1) Litigation hold issued to CEO and IT — do not wipe or return the company phone or any other devices; (2) IT forensic hold on all her system access (email, file shares, cloud storage) — we need the activity logs before they auto-purge; (3) Notify Matt Mathison today; (4) Engage IP counsel today — we need an advice opinion on whether this constitutes actionable misappropriation and whether a TRO is appropriate; (5) Do not confront her or contact the new employer without counsel review." IT forensics confirms she emailed the LOE vendor pricing database to her personal Gmail; IP counsel advises: clear misappropriation case; cease-and-desist sent; database returned and deleted from personal email; competitor employer puts her on a different project; no further action needed
3. **Adversarial:** Column6's CEO wants to include Column6's proprietary audience targeting algorithm in a marketing white paper to showcase Column6's technical capabilities → Dr. Lewis advises: "Publishing the algorithm methodology in a white paper eliminates its trade secret protection — once it's public, it's no longer 'not generally known' and cannot be protected as a trade secret. We can showcase Column6's technical capabilities without disclosing the specific algorithm. Options: (1) Describe the outcome and performance (CPM efficiency; targeting accuracy) without describing how; (2) Describe the general category of approach (machine learning; lookalike modeling) without the specific model architecture or training data; (3) Obtain an IP attorney's review of the white paper before publication — they can identify which sentences disclose protectable information and which do not. I recommend option 3. The white paper goes to IP counsel before publication; they'll redline any specific algorithmic disclosure." CEO agrees; white paper reviewed; proprietary specifics removed; trade secret protection maintained

## Audit Log
All trade secret inventories retained by entity and date. Protection measure assessments retained. Exit protocols for departed employees with trade secret access retained. IT forensic images retained (by employee and departure date — per counsel's litigation hold instructions). Cease-and-desist letters and responses retained. Matt Mathison misappropriation notifications retained. Any litigation records retained permanently.

## Deprecation
Retire when each portfolio company has IP counsel on retainer who conducts the annual trade secret audit — with Dr. Lewis reviewing the trade secret inventory for exit readiness and Matt Mathison authorizing any enforcement action.
