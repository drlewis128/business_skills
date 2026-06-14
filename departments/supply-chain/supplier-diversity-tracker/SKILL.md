---
name: supplier-diversity-tracker
description: "Track and report supplier diversity metrics. Use when the user says 'supplier diversity', 'diverse suppliers', 'minority suppliers', 'MBE suppliers', 'WBE suppliers', 'diverse spend', 'supplier diversity report', 'diverse vendor program', 'SDVOB suppliers', or 'measure supplier diversity'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|all>] [--period <quarterly|annual>]"
---

# Supplier Diversity Tracker

Track and report supplier diversity metrics across MBL's portfolio. Supplier diversity measures the proportion of spend directed to businesses owned by historically underrepresented groups — minority-owned (MBE), women-owned (WBE), veteran-owned (VOSB/SDVOB), LGBTQ+-owned, and small business enterprises (SBE). For MBL, supplier diversity serves both a values commitment (THRIVE: Respect) and a competitive advantage — many enterprise customers and government contracts require supplier diversity reporting, and diverse suppliers often bring pricing and innovation advantages.

## When to Use
- Annual supplier diversity baseline assessment
- Enterprise customer requires supplier diversity reporting
- Matt Mathison wants to understand MBL's diversity posture
- Building a supplier diversity program from scratch
- Portfolio company acquisition — assess their diversity posture

## Certification Types

```
Key certifications (US):
  MBE (Minority Business Enterprise):
    Certifying body: NMSDC (National Minority Supplier Development Council)
    Eligible: 51%+ owned by ethnic minorities (Asian, Black, Hispanic, Native American)
    
  WBE (Women Business Enterprise):
    Certifying body: WBENC (Women's Business Enterprise National Council)
    Eligible: 51%+ owned and operated by women
    
  WOSB (Women-Owned Small Business):
    Certifying body: SBA
    Eligible: Women-owned small business (SBA size standards)
    
  SDVOB (Service-Disabled Veteran-Owned Business):
    Certifying body: SBA VOSB program
    Eligible: 51%+ owned by service-disabled veterans
    
  SBE (Small Business Enterprise):
    Certifying body: SBA size standards (varies by NAICS code)
    No special ownership requirement beyond small business size
    
  LGBTQ+ Business Enterprise:
    Certifying body: NGLCC (National LGBT Chamber of Commerce)
    Eligible: 51%+ owned by LGBTQ+ individuals
```

## Output Format

```markdown
# Supplier Diversity Report — <Entity / Portfolio>
**Period:** <Q<N> <Year> / FY <Year>> | **Owner:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE / Portfolio>
**Total spend analyzed:** $X

---

## Diversity Spend Summary

| Category | Annual spend | % of total spend | Prior year | Trend |
|---------|------------|-----------------|-----------|-------|
| MBE (Minority Business Enterprise) | $X | X% | X% | ↑/↓/→ |
| WBE (Women Business Enterprise) | $X | X% | X% | ↑/↓/→ |
| SDVOB (Veteran-Owned) | $X | X% | X% | ↑/↓/→ |
| SBE (Small Business) | $X | X% | X% | ↑/↓/→ |
| LGBTQ+ | $X | X% | X% | ↑/↓/→ |
| **Total diverse spend** | **$X** | **X%** | **X%** | ↑/↓/→ |
| Non-diverse / uncategorized | $X | X% | | |
| **Total spend** | **$X** | **100%** | | |

**Diverse spend benchmark:** Industry average for PE-backed companies: ~15-20% of spend
**MBL current position:** X% | **Target:** 20% by end of FY <Year>

---

## Certified Diverse Suppliers

| Supplier | Entity | Category | Certification | Annual spend | % of category |
|---------|--------|---------|-------------|------------|-------------|
| [Supplier] | Allevio | Medical supplies | MBE | $X | X% |
| [Supplier] | HIVE | Field services | SDVOB | $X | X% |
| [Supplier] | MBL | Technology | WBE | $X | X% |

**Note:** Only count certified suppliers (active certification on file). Do not estimate diversity status without certification — self-reporting without certification is not auditable.

---

## Diversity Spend Gap Analysis

| Category | Current diverse % | Target | Gap | Action to close |
|---------|-----------------|--------|-----|----------------|
| Medical supplies | X% | 25% | X pp | Include diverse suppliers in next RFQ |
| Technology | X% | 20% | X pp | Evaluate WBE/MBE options for next renewal |
| Field services (HIVE) | X% | 20% | X pp | SDVOB outreach for service contracts |

---

## Supplier Diversity Development Pipeline

Suppliers in the pipeline for diverse certification or outreach:

| Supplier | Category | Entity | Estimated diverse status | Action |
|---------|---------|--------|------------------------|--------|
| [Supplier] | [Category] | MBL | Likely WBE (female founder) | Ask about WBENC certification |
| [Supplier] | [Category] | HIVE | Likely SBE | Confirm SBA classification |

---

## Annual Action Plan

| Action | Timeline | Owner | Target impact |
|--------|---------|-------|-------------|
| Include diverse supplier requirement in all RFQs >$10K | Immediate | Dr. Lewis | +5pp diverse spend |
| Audit existing supplier base for uncertified diverse suppliers | 30 days | Dr. Lewis | Establish true baseline |
| Register on NMSDC and WBENC supplier databases | 60 days | Dr. Lewis | Access diverse supplier pools |
| Set supplier diversity KR in next supply chain OKR | Next quarter | Dr. Lewis | Accountability |
| Add COI diversity certification to supplier onboarding checklist | 30 days | Dr. Lewis | Capture new diverse suppliers at onboarding |

---

## Reporting

**Internal:** Supply chain quarterly review (supply-chain-ops-review)
**External (if required):** Enterprise customer supplier diversity questionnaire; government contract reporting
**Certification records:** Stored in SharePoint/Operations/Procurement/Diversity/Certificates
```

## Output Contract
- Spend always based on certified diverse suppliers — estimated or assumed diversity status is not auditable; only count suppliers with active certification on file
- Gap analysis always compared to a benchmark — absolute diverse spend % means little without a target and industry benchmark
- Action plan always tied to specific procurement processes — supplier diversity doesn't improve by publishing a report; it improves by changing how RFQs are run
- Certification records always stored — a supplier diversity program is only auditable if certification copies are on file
- HITL required: Dr. Lewis manages program and reporting; Matt Mathison reviews annual diversity report; external customer/government reporting reviewed by Dr. Lewis before submission; any spend classification disputes resolved by Dr. Lewis

## System Dependencies
- **Reads from:** QuickBooks (spend by vendor), supplier registry (certification status), Bill.com (invoice history)
- **Writes to:** Diversity report (SharePoint/Operations/Procurement/Diversity); supplier registry (diversity certification field)
- **HITL Required:** Dr. Lewis manages; Matt Mathison annual review; external reporting Dr. Lewis sign-off

## Test Cases
1. **Golden path:** Annual supplier diversity baseline → $X total portfolio spend analyzed; 14 diverse suppliers identified (9 certified, 5 with likely diversity status pending confirmation); current diverse spend: 12% ($X); target: 20%; gap plan: add diverse supplier requirement to all RFQs >$10K; 3 categories with zero diverse spend identified; 2-year plan to reach 20%; Matt Mathison reviews and endorses
2. **Edge case:** A supplier claims MBE status but doesn't have NMSDC certification → do not count toward diverse spend until certified; encourage the supplier to get certified (NMSDC certification process takes 3-6 months); offer to be a reference for their certification application; track as "pending" in the pipeline
3. **Adversarial:** An enterprise customer requires 20% diverse spend and MBL is at 12% → don't fabricate the number; report 12% accurately with the 2-year improvement plan; enterprise customers with diversity requirements understand that supplier diversity programs take time to build; a credible improvement plan with specific actions is more valuable than an inflated number; falsifying diverse spend data creates legal exposure

## Audit Log
Diversity certifications on file with expiration dates. Annual diversity reports retained. COI and certification copies retained per supplier. External reporting documented.

## Deprecation
Retire when MBL has a formal supplier diversity program with dedicated resources, a supplier portal, and automated spend tracking against certified diverse supplier databases.
