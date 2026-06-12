---
name: legal-entity-structure-analyzer
description: "Analyze and optimize the legal entity structure for MBL portfolio companies. Use when the user says 'entity structure', 'should we be an LLC or S-corp', 'holding company structure', 'tax optimization', 'entity reorganization', 'holding vs. operating', 'intercompany agreements', 'should I restructure', 'parent subsidiary', or 'entity optimization'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <analyze|optimize|restructure>] [--objective <tax|liability|M&A|operations>]"
---

# Legal Entity Structure Analyzer

Analyze and optimize the legal entity structure for MBL Partners and its portfolio companies. The legal entity structure determines tax treatment, liability protection, governance flexibility, and M&A optionality. The right structure for a PE holding company managing healthcare, oil & gas, and CTV assets is complex — and the wrong structure creates unnecessary tax burden or liability exposure. This skill analyzes the current structure and identifies optimization opportunities.

## When to Use
- Annual entity structure review
- Adding a new portfolio company or business line
- Before a significant M&A transaction (structure the acquisition correctly)
- Tax optimization review with outside tax and legal counsel
- Exit planning — is the structure optimized for a future sale?

## Key Entity Structure Considerations

| Factor | LLC | S-Corp | C-Corp | LP |
|--------|-----|--------|--------|-----|
| **Tax treatment** | Pass-through (default) | Pass-through | Double taxation (dividend) | Pass-through |
| **Liability protection** | ✅ Strong | ✅ Strong | ✅ Strong | ✅ (limited partners) |
| **Ownership flexibility** | High | Limited (100 shareholders, US only) | High | High |
| **PE investor friendly** | ✅ Yes (pass-through) | ❌ No (foreign/entity investors not allowed) | ✅ Yes (institutional investors prefer C-Corp) | ✅ Yes |
| **M&A — asset sale** | ✅ Efficient | ✅ Efficient | 🟡 Double tax on asset sale | ✅ |
| **M&A — stock sale** | N/A (membership interests) | ✅ (85%+ rule for S-election) | ✅ | N/A |
| **Healthcare** | ✅ Works for MSO | ✅ | ✅ | ❌ Usually |
| **Oil & gas (partnership income)** | ✅ | ❌ (passive loss limits) | ❌ | ✅ Best for LP structure |

## Output Format

```markdown
# Legal Entity Structure Analysis — MBL Portfolio
**Date:** <date>
**Objective:** <tax optimization / liability / M&A readiness / new acquisition>
**Prepared by:** Dr. John Lewis + Outside Counsel (tax and corporate)

---

## DISCLAIMER
This analysis provides a framework for entity structure evaluation. Any restructuring requires review by outside tax counsel and corporate attorney before implementation. Tax restructuring can trigger recognition events (gain realization) if not structured correctly.

---

## Current Structure Overview

```
MBL Partners LLC (AZ) — Managing Member: Matt Mathison, Dr. John Lewis
├── Allevio LLC (AZ) — Healthcare MSO
│   └── [Subsidiary operating entities — confirm with outside counsel]
├── HIVE Partners LLC (AZ) — Oil & Gas
│   ├── Foreign qualification: Utah
│   └── [LP interests in oil & gas properties — confirm structure]
├── Column6 LLC (AZ) — CTV/Media
└── North Vista LLC (AZ) — Marketing
```

---

## Structure Analysis

### MBL Partners (Holding Entity)

| Dimension | Current | Assessment | Consideration |
|---------|---------|---------|-------------|
| Entity type | LLC | ✅ Flexible, pass-through | |
| State | Arizona | ✅ Business-friendly | |
| Tax treatment | Partnership/disregarded | ✅ Pass-through appropriate for PE | |
| Liability protection | ✅ Strong | | |

### Allevio (Healthcare MSO)

| Dimension | Current | Assessment | Consideration |
|---------|---------|---------|-------------|
| Entity type | LLC | ✅ Works for MSO | |
| Holding vs. operating | [Confirm] | | Separate IP-holding entity? |
| HIPAA compliance entity | Required | | Medical entity must be clearly defined |
| Exit structure | [Confirm] | | Asset sale vs. interest sale for healthcare M&A |

### HIVE Partners (Oil & Gas)

| Dimension | Current | Assessment | Consideration |
|---------|---------|---------|-------------|
| LP structure | [Confirm] | | Oil & gas historically uses LP for pass-through + IDC deductions |
| Depletion deductions | | | Must be at operating entity level |
| Utah operations | Foreign qualified | ✅ | |

---

## Optimization Opportunities

| Opportunity | Impact | Complexity | Risk | Recommendation |
|-----------|--------|----------|------|--------------|
| Separate IP-holding entity for Allevio (holds care protocols, software) | Medium — liability protection for IP | Medium | Low | Evaluate with outside counsel |
| HIVE LP structure for oil & gas LP investors | High — IDC deductions, pass-through | High | Medium | Engage oil & gas tax counsel |
| C-Corp election for Column6 if institutional investor required | Medium — unlocks institutional investors | Medium | Medium | Evaluate at next investment round |

---

## Intercompany Agreement Requirements

| Agreement | Parties | Purpose | Status |
|---------|---------|---------|--------|
| Management Services Agreement | MBL Partners → All subsidiaries | Management fee for services | ✅ / ❌ |
| IP License Agreement | IP-holding entity → Operating entity | License IP at arm's length | ❌ If IP entity created |
| Intercompany Loans | If any | Document and charge market interest rate | Confirm |

**IRS requires intercompany transactions to be at arm's length and documented.** Undocumented intercompany transactions are an audit risk.

---

## M&A Readiness Assessment

| Portfolio Company | Sale Structure | Tax Efficiency | Notes |
|-----------------|-------------|-------------|-------|
| Allevio | Asset sale or interest sale | ✅ LLC pass-through avoids double tax | Confirm with tax counsel |
| HIVE | Interest sale (LP interests) | ✅ Capital gains rate on LP interest sale | |
| Column6 | Asset or interest | ✅ | Confirm structure |
```

## Output Contract
- Tax implications always flagged with "outside counsel required" — entity restructuring without tax counsel is dangerous
- Intercompany agreements always checked — undocumented management fees and loans are an IRS audit risk
- M&A structure always assessed — the current entity structure determines the most tax-efficient exit
- Disclaimer always included — this is a framework, not tax or legal advice
- HITL required: Dr. Lewis reviews analysis; outside corporate counsel and CPA/tax attorney review any proposed restructuring; Matt Mathison approves any restructuring decision; implementation executed by outside counsel

## System Dependencies
- **Reads from:** Operating agreements, state registration documents, tax returns (provided by outside counsel and CFO)
- **Writes to:** Entity structure analysis (for Dr. Lewis, CFO, and outside counsel)
- **HITL Required:** Outside corporate and tax counsel lead any restructuring; Dr. Lewis reviews; Matt Mathison approves; CPA/tax advisor confirms tax treatment

## Test Cases
1. **Golden path:** Annual entity review — HIVE Partners considering bringing on a new LP investor → current LLC structure may need to convert to LP for tax efficiency (IDC deductions, LP economics); engage oil & gas tax counsel; also confirm intercompany management fee agreement between MBL Partners and HIVE is documented and at arm's length
2. **Edge case:** New acquisition target is structured as C-Corp → evaluate: (1) convert to LLC post-acquisition (318 tax-free reorganization potentially available), (2) keep as C-Corp if institutional investors or stock option program is important, (3) S-Corp election — check eligibility; engage tax counsel before structuring the acquisition
3. **Adversarial:** Business unit wants to "merge" two portfolio entities to simplify operations → entity merger has significant legal and tax implications — it can trigger gain recognition, require LP approval, and affect liability protection; do not proceed without outside corporate and tax counsel; present options to Matt Mathison with analysis

## Audit Log
Entity structure analyses retained annually. Restructuring decisions and outside counsel engagement documented. Intercompany agreements retained.

## Deprecation
Retire when MBL deploys in-house CFO and General Counsel with entity structure expertise, supplemented by a dedicated corporate law firm on retainer.
