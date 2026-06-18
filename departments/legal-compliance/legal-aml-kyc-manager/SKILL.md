---
name: legal-aml-kyc-manager
description: "Manage anti-money laundering and know-your-customer compliance for MBL financial transactions. Use when the user says 'AML', 'anti-money laundering', 'KYC', 'know your customer', 'beneficial ownership', 'customer due diligence', 'FinCEN', 'beneficial ownership rule', 'BOI report', 'corporate transparency act', 'CTA', 'CDD', 'CFTC', 'BSA', 'Bank Secrecy Act', 'wire verification', 'who owns the company', 'ownership disclosure', 'beneficial owner', 'AML compliance', 'money laundering risk', 'suspicious activity', 'SAR', or 'transaction monitoring'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <file-boi|review|verify|assess>] [--context <new-entity|transaction|investor|annual-review>]"
---

# AML / KYC Manager

Manage anti-money laundering (AML) and know-your-customer (KYC) compliance for MBL Partners and its portfolio companies — including FinCEN Beneficial Ownership Information (BOI) reporting under the Corporate Transparency Act, investor due diligence for new capital, and transaction verification protocols. AML/KYC is not just a bank requirement — the Corporate Transparency Act creates direct reporting obligations for most small businesses, and failure to file can result in civil and criminal penalties.

## When to Use
- A new legal entity is formed (BOI report due within 30 days for new entities formed after January 1, 2024)
- An existing entity has a change in ownership or control (update BOI report within 30 days)
- Onboarding a new investor or LP (KYC due diligence)
- Verifying a transaction counterparty's identity (large wire transfers; new vendor relationships)
- Annual AML/KYC compliance review

## AML / KYC Framework

```
CORPORATE TRANSPARENCY ACT (CTA) — BOI REPORTING:

  Who must file:
    Most U.S. LLCs, corporations, and similar entities must file a Beneficial Ownership Information (BOI)
    report with FinCEN (Financial Crimes Enforcement Network)
    
  Exemptions (do NOT apply to most MBL portfolio companies):
    Large operating companies: 20+ full-time employees; $5M+ gross revenue; physical US office
    Publicly traded companies; regulated banks; large operating companies; government entities
    NOTE: MBL portfolio companies may qualify for the large operating company exemption as they grow
    Check each entity annually — the exemption threshold may be met as revenues increase
    
  What is reported:
    Company information: Legal name; trade names (DBAs); address; state of formation; EIN
    Beneficial owners: Anyone who (1) exercises substantial control OR (2) owns/controls 25%+ of the company
      "Substantial control": Senior officers (CEO, CFO, COO, president); managers with authority to
        appoint or remove officers; someone with substantial influence over company decisions
    For each beneficial owner: Full legal name; date of birth; residential address; 
      unique identifying number (U.S. passport, driver's license, or FinCEN identifier)
      
  Deadlines:
    Entities formed before January 1, 2024: Originally due January 1, 2025 (check current deadline)
    Entities formed on or after January 1, 2024: 30 days after formation
    Updates: 30 days after any change in beneficial ownership or company information
    
  Penalties for non-compliance:
    Civil: $500/day for each day the violation continues
    Criminal: Up to $10,000 fine and 2 years imprisonment (for willful violations)
    Dr. Lewis tracks BOI filing status for all MBL portfolio entities
    
  MBL PORTFOLIO ENTITIES — FILING STATUS:
    Track for each entity: Filing date; last update; next required update (ownership change or annually confirm)
    Dr. Lewis files or confirms filing annually for each entity in the portfolio

INVESTOR / LP KNOW-YOUR-CUSTOMER (KYC):
  When receiving new capital from investors or LPs:
    Standard KYC documents to collect:
      Individual investor: Government-issued ID; proof of address; source of funds documentation
      Entity investor: Certificate of formation; operating agreement; beneficial ownership information;
        government-issued ID for controlling persons
    Accredited investor verification (if raising equity):
      Self-certification: Investor certifies they meet the accredited investor standard
      Third-party verification: CPA or attorney letter confirming accredited investor status
    Source of funds: Understand where the investment capital comes from
      Red flags: Investor cannot explain source of funds; funds sourced from high-risk jurisdictions;
        investor is evasive about beneficial ownership; unusual payment methods (crypto; cash)
        
TRANSACTION COUNTERPARTY VERIFICATION:
  For new vendor relationships >$25K: Verify the business is legitimate (W-9; business registration)
  For wire transfers: See legal-closing-checklist-manager — voice verification mandatory
  For material new counterparties (M&A targets; investors): Enhanced due diligence
    Sanctions check: OFAC SDN list screening (particularly relevant for M&A and investor onboarding)
    Foreign investor: Additional scrutiny if investor is foreign-controlled or state-owned enterprise
    
OFAC SANCTIONS COMPLIANCE:
  What it is: Office of Foreign Assets Control (OFAC) maintains a list of sanctioned persons and entities
  Requirement: U.S. companies cannot do business with sanctioned parties
  Risk for MBL: M&A targets; investors; international business counterparties
  Dr. Lewis screens new material relationships against the OFAC SDN (Specially Designated Nationals) list
  How to check: OFAC website — free lookup tool; or commercial compliance software
  If a match is found: Do not proceed; immediately engage compliance counsel; no communication about 
    the potential transaction until counsel advises
```

## Output Format

```markdown
# BOI / AML-KYC Compliance Status — MBL Portfolio
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## BOI Filing Status

| Entity | State | Formed | Filed | Last Updated | Next Update | Status |
|--------|-------|--------|-------|-------------|------------|--------|
| MBL Partners LLC | AZ | [Date] | [Date] | [Date] | [If change] | ✅ Current |
| Allevio MSO LLC | AZ | [Date] | [Date] | [Date] | [If change] | ✅ Current |
| HIVE Partners LLC | UT | [Date] | [Date] | [Date] | [If change] | ✅ Current |
| Column6 / Siprocal | [State] | [Date] | [Date] | [Date] | [If change] | ⚠️ Update needed |

---

## New Investor KYC

| Investor | Type | KYC Documents | OFAC Check | Status |
|---------|------|--------------|------------|--------|
| [Name] | Individual / Entity | Collected ✅ / Pending ⚠️ | Clear ✅ / Match ❌ | Approved / Pending |

---

## AML Risk Flags (if any)

| Flag | Entity | Description | Action |
|------|--------|-------------|--------|
| [Any AML red flag] | | | |

**No AML risk flags identified** / **[N] flags — see above**
```

## Output Contract
- BOI reports must be filed within 30 days of entity formation or ownership change — this is a hard federal deadline under the Corporate Transparency Act; the $500/day penalty is real; Dr. Lewis calendars the BOI filing deadline immediately upon any new entity formation; for existing entities, Dr. Lewis keeps a roster of all beneficial owners and updates the FinCEN filing within 30 days of any change (new equity grant; new investor; management change that results in a new "substantial control" person); the 30-day window is short and non-negotiable
- Beneficial ownership definition is broader than equity ownership — "beneficial owner" under the CTA includes not just people who own 25%+ of the company but also anyone who exercises "substantial control" (senior officers; key managers); this means the COO who owns no equity but has substantial decision-making authority over the company may be a reportable beneficial owner even with 0% equity; Dr. Lewis reviews the substantial control definition for each entity and confirms who must be reported; missing a "substantial control" person in the BOI report is a violation
- OFAC sanctions screening is fast and mandatory for new material relationships — the OFAC SDN list is searchable for free on the OFAC website; the search takes 2 minutes; a positive match means the company cannot do business with the counterparty and must immediately stop all related activity; no excuses are accepted for transacting with sanctioned parties — OFAC penalties are significant ($65K-$1M+ per violation) and do not require intent; Dr. Lewis conducts an OFAC check for all new material counterparties (investors, M&A targets, significant new vendors) before engagement
- HITL required: Dr. Lewis manages BOI filings and KYC compliance; Matt Mathison is a beneficial owner of all MBL portfolio entities and must provide his identifying information for all BOI filings; CEO and other officers who meet the "substantial control" test must provide their information for BOI filings; compliance counsel required for any OFAC match or unusual AML red flag; Dr. Lewis does not proceed with any transaction where an OFAC match is found without compliance counsel's clearance

## System Dependencies
- **Reads from:** Entity formation documents (to confirm date of formation and initial ownership for new entities); cap table (legal-equity-cap-table-manager — current beneficial owners by equity %); officer and manager roster (who meets the "substantial control" test); FinCEN BOI portal (prior filings; update submissions); investor onboarding documents (for new LP/investor KYC); OFAC SDN list (ofac.treasury.gov — for screening); entity maintenance tracker (legal-entity-maintenance-manager — all active entities)
- **Writes to:** BOI filings (FinCEN portal — digital submission; retain confirmation receipt); KYC documentation file (SharePoint/Legal/<Company>/AML_KYC/[Entity]_BOI_[Date].pdf); investor KYC records (SharePoint/Legal/MBL/Investors/[Investor]_KYC_[Date].pdf); OFAC screening log; BOI filing calendar (all entities; due dates; filing status)
- **HITL Required:** Dr. Lewis files and manages; Matt Mathison provides his identifying information for BOI filings (this is a legal requirement — he cannot be excluded); all beneficial owners must provide their information directly (Dr. Lewis cannot fabricate or substitute information); compliance counsel required for OFAC matches, foreign investor KYC, or any unusual AML flag; Dr. Lewis does not close a transaction with a counterparty where an unresolved OFAC match exists; Dr. Lewis does not certify investor accredited status — that comes from the investor or their counsel

## Test Cases
1. **Golden path:** MBL Partners forms a new acquisition vehicle LLC (HIVE Acquisitions LLC) for a new deal → Dr. Lewis: Formation date confirmed (January 15, 2027); BOI filing deadline: February 14, 2027 (30 days); Dr. Lewis identifies beneficial owners: (a) MBL Partners LLC — entity owner; (b) Matt Mathison — substantial control (managing member of MBL Partners; exercises control over HIVE Acquisitions); (c) Dr. Lewis — substantial control (if Dr. Lewis has authority over the entity per the Operating Agreement; assess whether he meets the test); Collect identifying information: Matt Mathison provides driver's license and DOB; BOI report filed on January 20 (5 days after formation); FinCEN confirmation receipt retained; calendar entry added for any ownership change trigger; done within budget and deadline
2. **Edge case:** MBL Partners is considering accepting a $500K investment from a foreign investor with a UAE business address → Dr. Lewis: "Before accepting any foreign investor capital, I'm running three checks: (1) OFAC screening — search the investor's name, company name, and any associated entities against the OFAC SDN list; (2) UAE AML risk assessment — UAE has had FATF (Financial Action Task Force) compliance concerns in recent years; enhanced due diligence is required; (3) CFIUS review — if this investor is affiliated with a foreign government or state-owned enterprise and MBL has any national security nexus, CFIUS may require a filing; unlikely for MBL but must assess. Collect: Certificate of incorporation; beneficial ownership information (who ultimately owns the UAE entity?); source of funds documentation; wire transfer history; sanctions attestation. Matt Mathison must approve accepting any foreign investor after the KYC review is complete. I'll bring the complete KYC package to Matt Mathison with a recommendation."
3. **Adversarial:** During routine annual BOI verification, Dr. Lewis discovers that a 2025 equity restructuring (where a new COO was granted 30% equity) was never reported as a BOI update → Dr. Lewis: "This is a missed BOI update. The COO's equity grant in March 2025 made her a beneficial owner (30% — above the 25% threshold) and that ownership change was required to be reported to FinCEN within 30 days. We're now 18 months late. Voluntary correction: File the updated BOI report immediately. FinCEN does not have a formal voluntary disclosure program, but filing promptly after discovering a violation is preferable to continuing non-compliance and reduces the penalty risk. The $500/day civil penalty runs from the due date of the update (April 2025) until the date we file. Approximate exposure: ~18 months × 30 days/month × $500/day = ~$270,000 at the statutory maximum — though actual enforcement against good-faith violators is typically much lower. Compliance counsel engaged to advise on the penalty risk and whether a voluntary disclosure to FinCEN is advisable before filing the update." Updated BOI filed immediately; compliance counsel engaged; penalty negotiated

## Audit Log
All BOI filings retained permanently (FinCEN confirmation receipts). All KYC documents retained for 5 years after the relationship ends (standard AML retention). OFAC screening records retained (date screened; result; database version used). Investor KYC records retained for 5 years after the investor relationship ends. Matt Mathison identifying information provided for BOI filings retained permanently. Any compliance counsel advice on AML matters retained.

## Deprecation
Retire when MBL Partners has a dedicated compliance function that manages CTA/BOI filings — with Dr. Lewis reviewing the annual beneficial ownership list and Matt Mathison confirming his information for all portfolio entity BOI filings.
