---
name: rc-financial-regulation
description: "Manage financial regulatory compliance for PE portfolio companies — SOX awareness, fiduciary duty, investor reporting, and PE-specific regulatory posture. Use when the user says 'financial regulation', 'financial compliance', 'SOX awareness', 'fiduciary duty', 'investor reporting compliance', 'PE regulatory', 'securities compliance', 'accredited investor', 'LP reporting', 'investment adviser', 'financial disclosure', 'fund compliance', 'SEC filing', 'GAAP compliance', 'financial reporting obligations', 'lender covenants', or 'debt covenant compliance'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name or MBL>] [--domain <SOX|fiduciary|LP-reporting|covenants|SEC|GAAP>] [--action <assess|advise|report>]"
---

# Financial Regulation Manager

Manage financial regulatory compliance at MBL Partners and portfolio companies — covering the regulatory and fiduciary obligations that apply to a private equity holding firm and its operating companies. This is distinct from SOX-lite controls (rc-sox-lite-assessor), which focuses on internal control effectiveness; this skill focuses on the regulatory framework: what MBL and its portfolio companies are required to report, to whom, and with what accuracy. At the PE portfolio level, financial regulatory compliance covers fiduciary obligations to LPs, debt covenant compliance with lenders, and GAAP/financial reporting accuracy — not securities law compliance (MBL is not an investment adviser or registered fund, which dramatically simplifies the regulatory posture).

## When to Use
- LP reporting is due — are the reports accurate and timely?
- A portfolio company has debt — are covenants being tracked and tested?
- A transaction is being contemplated — what disclosure obligations apply?
- Annual review — what financial regulatory obligations does MBL have?
- A new lender covenant is added — how does it affect operations?
- Matt Mathison needs a regulatory posture summary for the portfolio

## Financial Regulatory Framework

```
MBL Partners regulatory posture (key determinations):
  Investment Adviser Act: MBL Partners is a holding company, not a registered investment adviser (RIA); does not manage third-party funds on a discretionary basis; no SEC registration required for holding company activities; if MBL were to raise a blind-pool fund from LPs for purposes of investing, SEC registration / exemption analysis would be required — this is a legal determination requiring counsel
  
  Securities law: Portfolio company equity is not publicly traded; no SEC reporting obligations (10-K, 10-Q) for private companies; private placements (LP investments in MBL entities) must comply with Regulation D exemptions (Reg D / Rule 506); accredited investor verification required for LP investors under Rule 506(b); Dr. Lewis does not manage LP capital directly — Matt Mathison owns this area with counsel
  
  Bank Secrecy Act / Anti-Money Laundering: Private equity holding companies have limited BSA/AML obligations vs. financial institutions; relevant for large cash transactions (CTR threshold: $10K) and suspicious activity; FinCEN beneficial ownership rules (Corporate Transparency Act) — beneficial ownership disclosure required for most private companies post-2024
  
  Corporate Transparency Act (CTA — post-2024):
    → Requires beneficial ownership information (BOI) reporting to FinCEN for most US entities
    → Reporting companies: All LLCs and corporations unless exempt (>20 FTE + >$5M revenue + US physical presence)
    → MBL portfolio companies: likely required to file unless they meet exemptions
    → Beneficial owners: Individuals with 25%+ ownership OR substantial control
    → Due date: Existing entities formed before January 1, 2024: Initial report due (date varies by litigation status — confirm current deadline with counsel)
    → New entities formed after January 1, 2024: 30 days to file
    → Attorney manages filing; Dr. Lewis tracks compliance status
    
  GAAP and financial reporting:
    → Portfolio company financial statements should be prepared in accordance with US GAAP
    → Matt Mathison and LP reporting rely on GAAP financials
    → Compilation vs. Review vs. Audit: Scale determines level of external assurance required; Dr. Lewis advises on minimum standards for each portfolio company based on lender requirements and LP expectations
    → Accrual vs. cash basis: Most lenders and investors require accrual-basis financials; cash-basis QuickBooks must be converted for reporting
    
  Fiduciary duty (holding company):
    → Dr. Lewis and CEO have fiduciary duties to the entity; Matt Mathison has fiduciary duties as managing partner
    → Fiduciary duty includes: Duty of care (informed decisions), Duty of loyalty (no undisclosed conflicts), Duty of disclosure (material information)
    → Related-party transactions require disclosure and fair dealing
    → Business judgment rule: Informed, in good faith decisions made in the company's interest are protected
    
  LP / investor reporting obligations:
    → Contractual (Operating Agreement / LP Agreement): Matt Mathison manages these; Dr. Lewis supports data delivery
    → Typical requirements: Quarterly financial reports within 45 days of quarter end; annual audited/reviewed financials within 90-120 days; annual K-1 by March 15 (tax); capital call and distribution notices per agreement terms
    → Content: Revenue, EBITDA, cash, working capital, debt; KPIs; significant developments; investment-specific commentary
    
  Debt covenant compliance:
    → Lenders impose financial covenants in loan agreements; breach = default (or waiver negotiation)
    → Common covenants:
        Financial covenants: Minimum EBITDA; Maximum Debt/EBITDA ratio; Minimum liquidity/cash; Fixed charge coverage ratio (FCCR); Debt service coverage ratio (DSCR)
        Affirmative covenants: Maintain insurance; deliver financial statements; provide notice of defaults; maintain corporate existence
        Negative covenants: No additional debt above threshold; no asset sales above threshold; no dividends or distributions without lender consent; no change of control without lender consent
    → Testing frequency: Quarterly (most financial covenants); Annually (some)
    → Covenant tracking: Dr. Lewis models covenant compliance with actuals each quarter; alerts CEO and Matt Mathison if trending toward breach; negotiates waiver before breach (not after)
    → Covenant breach: Immediate notification to lender; attorney engaged; waiver or amendment negotiated; never report false compliance
```

## Output Format

```markdown
# Financial Regulatory Compliance Status — <Entity>
**Date:** [Date] | **Responsible:** Dr. John Lewis
**Entity type:** [Operating company / Holding company / Both]

---

## Corporate Transparency Act (CTA / BOI)

| Entity | Filing required? | Beneficial owners filed | Filing date | Status |
|--------|----------------|----------------------|-----------|--------|
| MBL Partners LLC | Yes / Exempt | [Owners] | [Date] | ✅ Filed / ⚠️ Pending |
| Allevio | Yes / Exempt | | | |
| HIVE Partners | Yes / Exempt | | | |

**Attorney managing CTA filings:** [Name]

---

## LP / Investor Reporting Calendar

| Report | Period | Due date (per agreement) | Delivered | Status |
|--------|--------|------------------------|---------|--------|
| Q1 financials | Jan-Mar | May 15 (45 days) | [Date] | ✅ / ⚠️ |
| Q2 financials | Apr-Jun | Aug 15 | | |
| Q3 financials | Jul-Sep | Nov 15 | | |
| Annual financials (reviewed) | FY | 90 days after FYE | | |
| K-1 | FY | March 15 | | |

---

## Debt Covenant Compliance — <Lender> — <Loan>

| Covenant | Threshold | Actual | Cushion | Next test | Status |
|---------|---------|--------|--------|---------|--------|
| Minimum EBITDA | $[X] trailing 12M | $[Y] | $[Z] (cushion) | Q[N] | ✅ Green / 🟡 Amber / 🔴 Red |
| Max Debt/EBITDA | [X]× | [Y]× | [Z]× cushion | | |
| Minimum liquidity | $[X] | $[Y] | $[Z] | | |
| FCCR | >[X]× | [Y]× | | | |

**Amber/Red covenants:** [None / List with description and action]
**Lender notification required:** [Yes — reason / No]
**Trend:** [Improving / Stable / Deteriorating — reason]
**Attorney engaged:** [Name / Not yet — trigger: <X covenant at <Y threshold]

---

## Financial Reporting Compliance

| Obligation | Standard | Method | CPA Firm | Status |
|-----------|---------|--------|---------|--------|
| Annual financial statements | GAAP | Compilation / Review / Audit | [Firm] | ✅ |
| Monthly management reporting | Accrual basis | QuickBooks → Excel | Internal | ✅ |
| LP quarterly reports | Per LP Agreement | [Method] | | |

---

## Matt Mathison Brief (quarterly)

[Entity] financial regulatory status: CTA filed ✅ / pending ⚠️ [action]. LP reporting: [N] reports delivered on time; [issue if any]. Debt covenants ([Lender]): [Green / Amber on [covenant] — action]. Material regulatory items: [None / Issue].
```

## Output Contract
- Covenant compliance is reported with cushion, not just pass/fail — a covenant technically in compliance at 1.01× FCCR when the threshold is 1.0× is not a healthy covenant; the cushion (or lack thereof) is the information that matters; Dr. Lewis models covenant compliance with 12-month projections to forecast when a covenant might be breached before it happens; a breach discovered at testing is a default; a breach discovered 3 quarters ahead is a refinancing or waiver conversation; the cushion is the early warning
- CTA beneficial ownership reporting is a new and material obligation — the Corporate Transparency Act creates a FinCEN reporting obligation for most private companies with penalties of up to $500/day for non-filing; attorney manages the filings; Dr. Lewis tracks compliance status across all MBL portfolio entities; this is not optional and not tracked by most small company financial systems; Dr. Lewis proactively verifies filing status for every new entity and annually for all entities
- Fiduciary duty means related-party transactions are disclosed before execution — the fiduciary duty of loyalty requires disclosure of any transaction in which a fiduciary has a personal interest; at MBL, any transaction between a portfolio company and a related party (management equity holder, family member, connected entity) is disclosed to Matt Mathison before the transaction is executed; the business judgment rule protects the decision; concealment does not; Dr. Lewis maintains the related-party register and confirms annual disclosure
- HITL required: Dr. Lewis models covenant compliance and manages LP reporting data; Matt Mathison owns LP relationships and investor communications; attorney manages CTA filings, securities law questions, and debt waiver negotiations; Matt Mathison and attorney for any material financial regulatory issue or covenant breach; Dr. Lewis never independently represents financial regulatory compliance to LPs or lenders without Matt Mathison review

## System Dependencies
- **Reads from:** QuickBooks (financial actuals), debt agreements (loan covenant terms), LP/operating agreements (reporting obligations), CTA filing status from attorney, FinCEN (BOI filing system), rc-sox-lite-assessor (controls assessment), rc-audit-plan-builder (audit results)
- **Writes to:** Covenant compliance tracker (SharePoint/RC/Financial Regulation/Covenants/); LP reporting calendar; CTA compliance log; Matt Mathison quarterly financial regulatory brief; attorney engagement log
- **HITL Required:** Dr. Lewis models and tracks; Matt Mathison owns LP communications; attorney for CTA filings, securities law questions, covenant breach/waiver; Matt Mathison for all material financial regulatory decisions and investor communications

## Test Cases
1. **Golden path:** Q3 covenant compliance test for Allevio (SBA loan) → Pull Q3 financials from QuickBooks; calculate trailing 12-month EBITDA: $1.4M; DSCR covenant threshold: ≥1.25×; actual DSCR: 1.38×; cushion: $180K before breach; Minimum liquidity threshold: $200K; actual cash: $340K; cushion: $140K; all covenants: Green; LP quarterly report due November 15: drafted with Q3 EBITDA, revenue, significant developments (1 new clinic location signed); Matt Mathison reviewed October 30; delivered November 1 (14 days early); covenant tracker updated; CTA status confirmed with attorney: all entities filed; Q4 projection model: EBITDA trend stable; no covenant concerns for Q4
2. **Edge case:** HIVE Partners revenue drops due to oil price decline — DSCR covenant trending toward breach in 90 days → Dr. Lewis models: at current EBITDA trajectory, DSCR will reach 1.18× by Q4 (below 1.25× threshold); 90-day early warning triggered; Dr. Lewis alerts Matt Mathison immediately; Matt Mathison engages lender relationship for proactive conversation; attorney engaged; options: proactive waiver request (before breach — lender more cooperative); covenant amendment (raise threshold to give time to recover); bridge financing; operational cost reduction; lender notified proactively; no breach reported — waiver obtained; waiver agreement filed; compliance tracker updated; strategy: do not approach lender after breach with a surprise
3. **Adversarial:** "We don't need to worry about LP reporting — our investors are patient capital" → LP reporting obligations are contractual, not discretionary; the LP/operating agreement specifies what must be reported and when; "patient capital" investors are still investors with information rights; failure to deliver required reports triggers contractual default; in PE, LP relationships are built on trust and transparency; a missed quarterly report damages the relationship and creates legal exposure regardless of the LP's patience; Dr. Lewis delivers every required report on time because the contractual obligation exists regardless of the LP's stated preferences

## Audit Log
Covenant compliance test results retained permanently with quarterly documentation. LP reporting delivery records retained permanently. CTA filing records retained permanently. Related-party transaction register retained permanently. Attorney engagement records retained permanently. Lender waiver correspondence retained permanently.

## Deprecation
Retire when MBL has a dedicated CFO with financial regulatory oversight function — with Dr. Lewis contributing to covenant tracking and LP reporting data quality. Matt Mathison retains LP relationship and investor communication ownership permanently.
