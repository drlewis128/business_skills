---
name: strategy-data-room-builder
description: "Build and manage the M&A data room — organizing diligence materials for a buyer or due diligence process. Use when the user says 'data room', 'build the data room', 'diligence data room', 'organize documents for sale', 'data room setup', 'virtual data room', 'VDR', 'diligence package', 'sell-side data room', 'buyer data room', 'data room index', 'prepare documents for diligence', 'gather diligence documents', 'data room checklist', or 'organize the sale documents'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--purpose <sell-side|buy-side-request|lp-reporting>] [--stage <build|update|review>]"
---

# Data Room Builder

Build and manage the sell-side M&A data room for MBL Partners portfolio company exit processes — organizing, curating, and maintaining the document repository that prospective buyers access during due diligence. The data room is the first substantive impression a buyer forms of how well a company is run: a well-organized, complete data room signals an organized management team, good governance, and no surprises; an incomplete, disorganized data room signals the opposite and creates buyer uncertainty that translates into price discounts or deal failure. At PE portfolio scale, the data room is prepared 12-24 months before the exit process begins (through continuous exit readiness maintenance), not 2 weeks before the CIM is distributed.

## When to Use
- Exit preparation — building the data room 12-24 months before process launch
- A buyer requests a data room for an acquisition
- Annual exit readiness update — refreshing the data room contents
- A sell-side banker is engaged and needs the data room populated
- A data room from an acquisition target needs to be reviewed (buy-side)

## Data Room Framework

```
Standard sell-side data room structure:

01 — Corporate
    01.1 Entity organization (articles, operating agreement, formation documents)
    01.2 Ownership/cap table (current equity holders; any pending changes)
    01.3 Board minutes (last 3 years)
    01.4 Management presentations
    01.5 Company overview / CIM

02 — Financial
    02.1 Financial statements (3 years; CPA-reviewed or audited)
    02.2 Monthly financials (current year MTD + trailing 12 months)
    02.3 Budget vs. actual (current year)
    02.4 Accounts receivable aging
    02.5 Working capital analysis (trailing 12-month average)
    02.6 Quality of earnings documentation (addbacks explained and documented)
    02.7 CapEx schedule (last 3 years; maintenance vs. growth)
    02.8 Debt schedule (all obligations, maturities, covenants)
    02.9 Bank statements (last 12 months; for cash verification)

03 — Legal
    03.1 Customer contracts (all material agreements >$25K/year)
    03.2 Vendor contracts (top 10 by spend)
    03.3 Lease agreements (all facilities)
    03.4 Loan agreements and security interests
    03.5 IP documentation (trademarks, patents if any; no pending claims)
    03.6 Litigation register (all pending and threatened)
    03.7 Insurance certificates (all lines; current)

04 — Operations
    04.1 Organizational chart
    04.2 Key employee bios and employment agreements
    04.3 Employee handbook
    04.4 Standard operating procedures (key operational processes)
    04.5 Technology / systems documentation
    04.6 Facilities (owned or leased properties)

05 — Compliance and Regulatory (Healthcare — Allevio)
    05.1 HIPAA: Privacy policy + Security policy + BAA register
    05.2 HIPAA: Most recent security risk assessment
    05.3 OIG LEIE: Screening records (most recent; all clinical staff)
    05.4 State medical licenses: All clinical staff — current
    05.5 CMS: Provider enrollment records
    05.6 Payer contracts: All current payer agreements + credentialing records
    05.7 Malpractice insurance: Current + claims history 5 years
    05.8 AZ Medical Board: Standing for all licensed practitioners
    05.9 OSHA: Records and current standing
    05.10 OIG Advisory Opinion / AKS documentation (if referral arrangements exist)

05 — Compliance and Regulatory (Oil & Gas — HIVE)
    05.1 UT DOGM: All current permits + permit history
    05.2 Environmental: Phase I ESA; water rights documentation
    05.3 Mineral rights and surface rights: All leases and ownership records
    05.4 Production records: 3 years; state production data
    05.5 OSHA and safety records

06 — Commercial
    06.1 Customer/payer list with revenue by customer (trailing 12 months)
    06.2 Customer concentration analysis
    06.3 Pipeline and backlog (if applicable)
    06.4 Pricing documentation

07 — Human Resources
    07.1 Employee list (name, title, tenure, salary, benefits summary)
    07.2 Employee agreements (all key employees)
    07.3 Benefits plan documentation
    07.4 Workers comp claims history (3 years)
    
Data room discipline:
  Document naming: Consistent, descriptive names (no "Final_v3_REAL.pdf")
  Version control: Only current versions in the data room; remove outdated documents
  Completeness: Every folder has content; empty folders signal gaps
  Confidentiality: Redact SSNs, personal employee data, competitive details from customer contracts
  Access log: Track who accessed what; report to Matt Mathison; do not share with competitors
  Attorney reviews: NDA from all buyers before data room access granted
```

## Output Format

```markdown
# Data Room — [Company Name]
**Purpose:** [Sell-side / Buy-side request / LP reporting]
**Date:** [Date] | **Maintained by:** Dr. Lewis | **Platform:** [SharePoint / Intralink / Datasite / Box]

---

## Data Room Status

| Section | Documents required | Documents complete | Gaps | Action |
|---------|------------------|-----------------|------|--------|
| 01 Corporate | [N] | [N] | [None / Board minutes missing 2024] | CEO action |
| 02 Financial | [N] | [N] | [QoE documentation needed] | Controller |
| 03 Legal | [N] | [N] | [Payer contract #3 expired — renewal needed] | COO |
| 04 Operations | [N] | [N] | [SOP documentation 30% complete] | CEO |
| 05 Compliance (Healthcare) | [N] | [N] | [HIPAA SRA: most recent is 2023 — needs refresh] | Dr. Lewis |
| 06 Commercial | [N] | [N] | [None] | |
| 07 HR | [N] | [N] | [Benefit plan summary outdated] | COO |
| **Overall** | **[Total N]** | **[Complete N]** | **[N] gaps** | **[N] actions** |

**Exit readiness from data room perspective:** 🟢 Ready / 🟡 [N] gaps — estimate [X weeks to close] / 🔴 Significant work needed

---

## Data Room Index (complete document list)

[Full index of all documents organized by section — name, date, owner, last updated]

---

## Access Log (active process)

| Buyer / Party | NDA signed | Access granted | Last access | Documents accessed |
|--------------|-----------|--------------|------------|------------------|
| [Buyer A] | ✅ [Date] | ✅ [Date] | [Date] | [Section list] |

**Access control note:** Competitors not granted access without Matt Mathison explicit approval. All access logged.

---

## Data Room Gaps — Remediation Plan

| Gap | Severity | Owner | Action | Target date |
|-----|---------|-------|--------|------------|
| [HIPAA SRA needs refresh] | Medium | Dr. Lewis | Engage security consultant | Q3 |
| [SOP documentation incomplete] | Medium | CEO | CEO + COO documentation sprint | Q2-Q3 |
| [Board minutes 2024 not signed] | Low | CEO | CEO signature + filing | 2 weeks |

**Estimated time to full data room readiness:** [N weeks / N months]

---

## Matt Mathison Brief

[Company] data room status [Date]: [N]/[Total] documents complete. Exit readiness from data room: [🟢 Ready / 🟡 [N] gaps — closes in [X] weeks / 🔴 Significant work]. Top gaps: [1-2 specific items]. Next action: [Dr. Lewis closes HIPAA gap; CEO closes SOP gap]. Timeline to full readiness: [Specific estimate]. Action from Matt Mathison: [None / Approve HIPAA consultant engagement at $[X] / Begin banker conversations — data room ready in [X] weeks].
```

## Output Contract
- The data room is maintained year-round, not built 2 weeks before the process — a data room that is built reactively when the exit process is live contains rushed documents, outdated records, and gaps that generate buyer questions and delay; the right approach is continuous maintenance: Dr. Lewis updates the data room quarterly as part of the exit readiness process (strategy-exit-planner); when the exit process launches, the data room needs only a final review and access setup, not a 6-week document hunt; this approach also means the company is always buyer-ready in case of an unsolicited approach
- No buyer accesses the data room without NDA and Matt Mathison approval — a signed NDA from the prospective buyer is required before any data room access is granted; the NDA is prepared by the attorney; Dr. Lewis tracks all data room access in the access log; competitors are never granted data room access without Matt Mathison explicit approval (competitors could use diligence as intelligence gathering); the access log is reviewed with Matt Mathison in every deal update
- QoE documentation in the data room prevents price renegotiation at diligence — the most common diligence conflict in small PE transactions is the seller's EBITDA vs. the buyer's adjusted EBITDA; if the data room includes the addback documentation (clear explanation of why the $30K owner personal expense was added back to EBITDA), the buyer's QoE team has less room to challenge; Dr. Lewis prepares addback documentation for the data room before the process launches, working with the controller to document every addback in a format that a buyer's accountant can verify
- HITL required: Dr. Lewis builds and maintains the data room; controller provides financial documents; attorney provides legal documents; CEO provides operational documents; Matt Mathison approves all NDA signings (before buyer access granted); Matt Mathison reviews access log with each deal update; any data room access for a competitor requires Matt Mathison explicit approval; Matt Mathison decides when the data room is complete and the process can launch

## System Dependencies
- **Reads from:** Corporate records (SharePoint/Legal), financial statements (QuickBooks), compliance records (rc-compliance-ops-review, OIG LEIE screen results), payer contracts, employee agreements, exit plan (strategy-exit-planner)
- **Writes to:** Data room platform (SharePoint/Strategy/Exit/DataRoom/ or external VDR platform); data room index; access log; exit readiness update (strategy-exit-planner); Matt Mathison data room brief
- **HITL Required:** Dr. Lewis builds and maintains; each function contributes documents (controller, attorney, COO, CEO); Matt Mathison approves all NDA signings; Matt Mathison approves when data room is complete for process launch; Matt Mathison approves competitor access (if ever)

## Test Cases
1. **Golden path:** Allevio data room build for Year 3 exit preparation → 18 months before target exit (Year 3 Q4); Dr. Lewis initiates data room build on SharePoint; document collection: corporate (articles, operating agreement — in file ✅; board minutes — CEO signature needed on 2025 minutes ⚠️); financial (3 years financial statements — 2024 and 2025 CPA-reviewed ✅; 2026 YTD in progress; QoE documentation — prepare addback schedule for $22K owner auto and $8K country club ✅); legal (patient contracts — payer agreements all current ✅; physician employment agreements ✅; malpractice insurance ✅; lease for clinic space ✅); compliance (HIPAA SRA — completed May 2026 ✅; OIG LEIE — November 2025 all clear ✅; AZ Medical Board — all current ✅; payer credentialing ✅); operations (SOPs — 40% complete ❌ — CEO/COO sprint needed); HR (employee list ✅; benefit plan summary — outdated ⚠️); data room: 🟡 — 2 gaps to close in 3 months; Dr. Lewis presents to Matt Mathison; action: SOP sprint approved; benefit plan summary updated; data room 🟢 by Year 3 Q2
2. **Edge case:** A buyer engaged in early discussions asks to see the data room before signing an NDA → No data room access without NDA — period; the buyer's request (without NDA) suggests either inexperience or an attempt to gain information without committing to confidentiality; Dr. Lewis responds through Matt Mathison: "We're happy to provide a limited company overview and share a data room index (no documents) as a preview; full data room access requires NDA execution first"; if the buyer is serious, they sign the NDA; if they're not, the NDA requirement filtering is working as designed; Matt Mathison approves the response approach before it's delivered
3. **Adversarial:** A banker says "the data room looks light — buyers will think the company is disorganized" → Data room quality is a legitimate concern; Dr. Lewis reviews the banker's specific feedback: which sections are light? Is it missing documents (gaps to fill) or formatting (organization to improve)?; if documents are missing, Dr. Lewis builds the remediation plan with specific owners and dates; if the concern is organization (naming conventions, folder structure), Dr. Lewis improves the structure; the banker's input is valuable for knowing what sophisticated buyers expect in a sell-side data room for this sector; Dr. Lewis incorporates it; "the data room looks light" without specifics is not actionable — Dr. Lewis asks for the specific gaps

## Audit Log
Data room build records retained permanently (exit process record). Document version history retained. NDA signing records retained permanently. Access logs retained permanently. Data room index (at process launch) retained permanently. Post-process data room status retained.

## Deprecation
Retire when MBL engages a dedicated sell-side banker for an exit process — the banker typically manages the VDR platform and populates it with seller documents; Dr. Lewis becomes the primary document provider and reviewer rather than the data room manager.
