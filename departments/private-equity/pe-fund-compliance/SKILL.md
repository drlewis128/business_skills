---
name: pe-fund-compliance
description: "Manage regulatory compliance for MBL Partners fund operations. Use when the user says 'fund compliance', 'PE compliance', 'private equity compliance', 'SEC compliance', 'investment adviser compliance', 'registered investment adviser', 'RIA', 'exempt reporting adviser', 'ERA', 'Form ADV', 'Form D', 'Form PF', 'FINRA', 'regulatory filing', 'regulatory calendar', 'compliance calendar', 'compliance program', 'investment adviser act', 'securities compliance', 'blue sky compliance', 'state securities', 'accredited investor verification', 'regulation D', 'Reg D', 'securities exemption', 'anti-fraud rule', 'fiduciary duty', 'fund governance', 'compliance policy', 'compliance review', 'compliance testing', 'conflicts of interest', 'co-investment compliance', 'side letter compliance', 'ILPA principles', 'fund document compliance', 'LPA compliance', 'compliance officer', 'chief compliance officer', 'compliance monitoring', 'insider trading', 'material non-public information', 'MNPI', 'personal trading', or 'fund regulatory risk'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--area <sec|state|lpa|fiduciary|conflicts>] [--action <file|review|calendar|test|report>] [--deadline <specific-date>] [--fund <fund-name>]"
---

# PE Fund Compliance

Manage regulatory compliance for MBL Partners fund operations — maintaining the fund's regulatory status (Exempt Reporting Adviser or Registered Investment Adviser per SEC threshold), filing required regulatory forms, monitoring conflicts of interest, maintaining the compliance program, and ensuring that the fund's operations comply with the LPA, applicable securities law, and fiduciary obligations to LPs. Fund compliance is not a background function — regulatory violations in the PE/fund context carry severe consequences: SEC enforcement; fund manager disgorgement; reputational damage; LP litigation; and in extreme cases, criminal liability. Dr. Lewis manages the compliance calendar and operations; fund counsel advises on all regulatory questions; Matt Mathison is the fund's responsible person for compliance.

## When to Use
- Regulatory filings are due (Form ADV, Form D, Form PF, state filings)
- A potential conflict of interest is identified
- A new fund activity raises a compliance question
- The annual compliance review is due
- An LP raises a governance or compliance concern

## Fund Compliance Framework

```
MBL PARTNERS REGULATORY STATUS (verify with fund counsel — may change as AUM grows):

  CURRENT STATUS: Exempt Reporting Adviser (ERA) — typical for PE funds <$150M AUM
    OR Registered Investment Adviser (RIA) — required at $100M+ AUM (SEC) or $25M-$100M (state)
    
  ERA REQUIREMENTS (if applicable):
    File Form ADV Part 1 with SEC (annually; within 90 days of fiscal year-end)
    Report: fund description; AUM; key personnel; disciplinary history; conflicts
    No full registration required; no investment adviser representative registration
    
  RIA REQUIREMENTS (if applicable):
    Form ADV Part 1 + Part 2 (annual update; 90 days after fiscal year-end)
    Form ADV Part 2 delivered to clients/LPs annually
    Chief Compliance Officer designated (Dr. Lewis in coordination with fund counsel)
    Annual compliance review documented
    Books and records maintained per Rule 204-2

REGULATORY FILING CALENDAR (maintain and track):

  FORM D (Regulation D exemption notice):
    First filing: within 15 days of first sale of fund interests
    Annual amendment: within 1 year of prior filing (if fund is still raising or active)
    State blue sky filings: may be required in LP home states (fund counsel advises)
    
  FORM ADV (if ERA or RIA):
    Annual update: within 90 days of December 31 fiscal year-end (by March 31)
    Interim amendments: within 30 days of material changes
    
  FORM PF (if AUM ≥ $150M — Large Private Fund Adviser threshold):
    Quarterly or annual (depends on fund size and type)
    Not required for most early-stage PE funds (verify with fund counsel)
    
  STATE REGISTRATIONS:
    State securities blue sky: fund counsel advises on LP home state requirements
    Some states require filing or notice for private fund sales to residents

CONFLICTS OF INTEREST MANAGEMENT:

  COMMON CONFLICTS IN PE (must be disclosed and managed):
    Co-investment opportunities: how are co-investments offered? (all LPs first? select LPs?)
    Deal allocation: multiple funds or vehicles — how are deals allocated between them?
    Management fees on portfolio companies: do MBL employees receive fees from portfolio companies?
    Board seat compensation: do MBL/fund personnel receive compensation for portfolio board seats?
    GP commitment: is the GP investing alongside LPs? At the same terms?
    Related party transactions: any transactions between the fund and MBL-affiliated entities?
    
  CONFLICTS MANAGEMENT PROGRAM:
    All conflicts identified and documented in conflicts register
    Each conflict: disclosed to LPs (in LPA, offering documents, or separately as it arises)
    All conflicts: resolved in favor of LPs where possible (fiduciary duty)
    LP Advisory Committee (LPAC) consulted on material conflicts (per LPA)
    Matt Mathison + fund counsel: involved in every conflict situation
    
  MATERIAL NON-PUBLIC INFORMATION (MNPI):
    MBL personnel may receive MNPI as board members of portfolio companies
    MNPI policy: all MBL employees are prohibited from trading in any public securities 
    while aware of MNPI related to that security
    Information barriers: documented between portfolio company board role and any public market activity
    Dr. Lewis maintains MNPI log: who received what information; when; from whom

ANNUAL COMPLIANCE REVIEW:

  SCOPE:
    Review LPA compliance (are all fund operations consistent with LPA terms?)
    Review regulatory filings (all required filings made on time?)
    Review conflicts of interest register (all conflicts disclosed?)
    Review LP communications (all required communications made per schedule?)
    Review books and records (maintained per requirements?)
    
  OUTPUT: Annual compliance review memo to Matt Mathison
  TIMING: Complete by February 28 annually
  DOCUMENTATION: Retained for minimum 5 years (or per applicable law)
```

## Output Format

```markdown
# Fund Compliance Calendar — [Fund Name] — [Year]
**Maintained by:** Dr. Lewis | **Fund Counsel:** [Firm Name] | **Last updated:** [Date]

---

## Regulatory Filing Schedule

| Filing | Regulatory body | Due date | Status | Notes |
|--------|----------------|---------|--------|-------|
| Form D amendment | SEC | [Date] | ✅ Filed | |
| Form ADV annual update | SEC | March 31 | ⏳ Pending | |
| State blue sky — [State] | [State] | [Date] | ⚠️ Due soon | |

---

## Conflicts Register

| Conflict | Disclosed in | Date first disclosed | Status | LPAC consulted? |
|---------|-------------|---------------------|--------|----------------|
| Board fees from Allevio | LPA §[X] | [Date] | ✅ Disclosed | N/A |
| Co-investment allocation | LPA §[X] | [Date] | ✅ Disclosed | Yes |

---

## Annual Compliance Review Summary — [Year]

| Area | Finding | Status |
|------|---------|--------|
| LPA compliance | No violations identified | ✅ |
| Regulatory filings | All filed on time | ✅ |
| Conflicts disclosure | All material conflicts disclosed | ✅ |
| LP communications | Q3 report delivered 3 days late | ⚠️ |
```

## Output Contract
- No regulatory filing is missed — the consequences of missing a required SEC, state, or LPA filing range from penalties to fund registration issues that affect the fund's ability to continue raising capital; Dr. Lewis maintains a rolling 12-month compliance calendar with all filing deadlines; each filing is initiated at least 30 days before its due date; fund counsel reviews the filing before submission; Dr. Lewis logs the submission date and confirmation number; if a filing deadline is at risk of being missed, Matt Mathison is notified immediately (not after the deadline)
- All conflicts are disclosed before they create a problem — undisclosed conflicts of interest are the primary basis for SEC enforcement actions against PE fund managers; Dr. Lewis identifies potential conflicts proactively (before they arise, not after a complaint) and brings them to fund counsel for a disclosure strategy; the standard is: if a reasonable LP would want to know about it, it must be disclosed; disclosures are made in the LPA (at fund formation), the offering documents, or by separate notice to LPs; disclosure alone is not sufficient for material conflicts — consent from LPs or LPAC may also be required
- MNPI policy is enforced, not just documented — the prohibition on trading while aware of MNPI is a securities law requirement with criminal consequences; Dr. Lewis logs all MNPI received by MBL personnel in their capacity as portfolio company board members; the MNPI log is reviewed quarterly; any MBL personnel trading in public securities while the MNPI log shows they held relevant information is a securities law violation that goes to Matt Mathison + legal immediately
- HITL required: all regulatory filings → fund counsel review + Matt Mathison awareness before submission; conflicts of interest → Matt + fund counsel; MNPI log review → Matt Mathison quarterly; annual compliance review → Matt Mathison review and sign-off; LP advisory committee consultations → Matt Mathison participates; any SEC inquiry or examination → Matt + fund counsel immediately; new fund activities (co-investment; new fee type) → compliance analysis before launch

## System Dependencies
- **Reads from:** LPA (fund governance; permitted activities; conflicts disclosure); regulatory filing calendars (SEC; state securities); fund counsel (regulatory interpretations; filing requirements); pe-lp-admin (LP roster for blue sky compliance; LPAC membership); pe-co-investment-manager (co-investment compliance); pe-fund-accounting (AUM for registration threshold monitoring)
- **Writes to:** Regulatory filings (Form D; Form ADV) via SEC EDGAR; compliance calendar (SharePoint → Governance → Compliance → [YYYY]); conflicts register; MNPI log; annual compliance review memo (to Matt Mathison); state blue sky filings; fund counsel instructions
- **HITL Required:** All regulatory filings → fund counsel + Matt awareness; conflicts → Matt + counsel; MNPI violations → Matt + legal immediately; annual review → Matt sign-off; SEC inquiry → Matt + fund counsel immediately; new fund activity compliance → analysis before launch

## Test Cases
1. **Golden path:** Annual Form ADV update due March 31. Dr. Lewis pulls the prior year filing. Updates: (1) AUM increased from $42M to $51M (still ERA, not RIA threshold); (2) One new key personnel addition (fund counsel advises on disclosure language); (3) No new disciplinary events. Draft sent to fund counsel February 20. Fund counsel reviews and marks one change to conflicts disclosure language. Revised filing approved. Filed via SEC EDGAR on March 15. Confirmation number logged. Annual compliance review memo completed February 28. Matt Mathison reviews and signs off March 5.
2. **Edge case:** A portfolio company board meeting is scheduled during which Dr. Lewis will receive material non-public financial information about a potential acquisition. Dr. Lewis is also considering a personal investment in a publicly traded company in the same sector → Dr. Lewis: "I'm about to receive MNPI at the [Company] board meeting regarding a potential acquisition. I cannot make any investment in public securities in this sector until the information is either made public or I no longer possess it. I'm logging today's date as my MNPI receipt date for [Company]. I'm putting my planned investment decision on hold. Once the company's announcement is public (or if the deal doesn't proceed and I'm released from MNPI), I'll revisit. Matt: I've logged this MNPI situation per our policy."
3. **Adversarial:** An LP raises a complaint that MBL Partners allocated a co-investment opportunity only to select LPs (not all LPs pro-rata), arguing this is a conflict of interest → Dr. Lewis: "I'm taking this complaint seriously. The co-investment allocation policy is documented in the LPA at §[X] — the LPA gives MBL Partners discretion to offer co-investment on a selective basis based on LP appetite and commitment size. However, if the complaint is that we deviated from our documented allocation policy (or if our policy is insufficient), that's a different issue. I'll pull the co-investment allocation records for this specific opportunity and compare against our stated policy. Fund counsel will review. Matt Mathison: this LP complaint may require an LPAC consultation depending on what the review finds. I'll brief you within 48 hours."

## Audit Log
All regulatory filings retained (with filing dates; confirmation numbers; fund counsel review). Conflicts register retained (with disclosure dates; LPAC consultations). MNPI log retained (with annual review dates). Annual compliance review memos retained. LP complaints and resolutions retained. Fund counsel opinions retained.

## Deprecation
Fund compliance is a permanent function for the life of each fund and for the required regulatory retention period after fund wind-down (minimum 5 years for most records; longer for some). Compliance standards are updated when SEC rules change or new guidance is issued.
