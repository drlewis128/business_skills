---
name: corporate-governance-tracker
description: "Track corporate governance requirements and board obligations. Use when the user says 'board meeting', 'board minutes', 'corporate governance', 'board resolutions', 'member consent', 'annual meeting', 'board obligations', 'governance compliance', 'board committee', or 'fiduciary duty'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <calendar|audit|checklist>] [--period <annual|quarterly>]"
---

# Corporate Governance Tracker

Track corporate governance requirements and board/member obligations for MBL Partners and portfolio companies. Good governance is not bureaucracy — it's the documented decision trail that protects personal liability, supports M&A due diligence, and demonstrates institutional quality to LPs and investors. Governance failures (missing board minutes, unsigned consents, undocumented major decisions) are discovered in due diligence and create transaction risk or price discounts.

## When to Use
- Annual governance calendar review
- Pre-M&A due diligence governance cleanup
- After a major business decision (acquisition, financing, executive hire/termination)
- Board/member meeting preparation
- LP/investor reporting obligations

## Core Governance Obligations by Entity Type

```
LLC (most MBL portfolio entities)
  - Annual member/manager meetings (if required by operating agreement)
  - Member/manager resolutions for major decisions
  - Operating agreement amendments for ownership changes
  - Annual compliance filings (annual report, registered agent)
  - Records maintenance (operating agreement, consents, bank resolutions)

Board-Governed Entity (C-Corp or formal governance structure)
  - Regular board meetings (quarterly for PE-backed companies)
  - Board minutes (accurate record of decisions)
  - Audit committee, compensation committee obligations
  - Annual meeting (if required)
  - Board resolutions for: officer appointments, contracts above threshold,
    equity grants, M&A, financing, major capex
```

## Output Format

```markdown
# Corporate Governance Assessment — <Entity>
**Date:** <date> | **Entity:** <name>
**Entity type:** LLC / Corporation
**Governance maturity:** Level <N>/4
**Prepared by:** Dr. John Lewis / Outside Counsel

---

## Governance Calendar

| Obligation | Frequency | Next Due | Status | Responsible |
|-----------|---------|---------|--------|-----------|
| Annual member/manager meeting OR written consent | Annual | <date> | 📅 | Dr. Lewis + Outside Counsel |
| Board meeting | Quarterly | <date> | 📅 | Matt Mathison / Board Chair |
| Board minutes | Per meeting | After each meeting | 📅 | Outside Counsel |
| Major decision resolutions | As needed | Ongoing | Ongoing | Outside Counsel |
| Annual report filing | Annual | <date> | 📅 | Outside Counsel |
| LP reporting (HIVE) | Quarterly/Annual | <date> | 📅 | CFO / Legal |

---

## Governance Records Audit

| Document | Required? | On File? | Current? | Gap |
|---------|---------|---------|---------|-----|
| Operating Agreement | ✅ | ✅ / ❌ | ✅ / ❌ | |
| Member/manager list (current) | ✅ | | | |
| Last 3 years of meeting minutes | ✅ | | | |
| Bank resolutions (current signers) | ✅ | | | |
| Officer appointment resolutions | ✅ | | | |
| Major contract approval resolutions | ✅ for transactions >$100K | | | |
| Equity / ownership certificates | ✅ | | | |
| IP assignment agreements | ✅ (for key IP) | | | |

---

## Decisions Requiring Board/Member Resolution

| Decision Type | Threshold | Resolution Required |
|-------------|---------|-------------------|
| Contracts | > $<threshold> (per operating agreement) | Member/manager consent |
| Equipment / capital purchase | > $<threshold> | Manager consent |
| New employee (executive level) | VP and above | Manager consent |
| Executive compensation | All | Manager consent |
| M&A — acquisition of another company | Any | Member consent (usually supermajority) |
| Financing — new debt | > $<threshold> | Member/manager consent |
| New entity formation / dissolution | Any | Member consent |
| Sale of substantially all assets | Any | Member consent (supermajority) |
| Equity issuance / new investors | Any | Member consent (supermajority) |

---

## Fiduciary Duty Summary

**Duty of Care:** Directors/managers must make decisions based on adequate information, with reasonable diligence.
**Duty of Loyalty:** Directors/managers must act in the entity's interest, not personal interest; disclose conflicts of interest.
**Duty of Confidentiality:** Confidential company information protected.

**Conflict of Interest Policy:**
- Disclose any personal financial interest in a transaction where the entity is a party
- Recuse from vote if conflict exists
- Document disclosure in meeting minutes

---

## LP / Investor Reporting (HIVE Partners)

| Report | Frequency | Due | Status |
|--------|---------|-----|--------|
| Quarterly operations update | Quarterly | 45 days after quarter end | |
| Annual audited financials | Annual | 90-120 days after year end | |
| K-1 tax documents | Annual | March 15 (or extended) | |
| Material event notices | As needed | Promptly | |

---

## Governance Action Items

| Priority | Item | Owner | Due |
|--------|------|-------|-----|
| High | Ensure last 12 months of major decisions have written resolutions | Outside Counsel + Dr. Lewis | Q2 |
| High | Update bank resolutions if signers changed | Outside Counsel + CFO | 30 days |
| Medium | Annual member/manager consent or meeting scheduled | Outside Counsel | Q4 |
| Medium | Review operating agreements — ownership current? | Outside Counsel | Q2 |
```

## Output Contract
- Resolution backfill always checked — PE due diligence will find every undocumented major decision
- LP reporting obligations always flagged for HIVE — LP relationships require timely, accurate reporting
- Conflict of interest policies always referenced — fiduciary breaches are personal liability
- Operating agreement currency always verified — undated operating agreements without amendment history are a red flag in diligence
- HITL required: Dr. Lewis reviews governance assessment; Outside counsel prepares resolutions and minutes; Matt Mathison (as managing partner) signs resolutions; LP reports reviewed by Matt Mathison before distribution

## System Dependencies
- **Reads from:** Operating agreements, prior board minutes, annual report filings, LP agreements (provided by outside counsel)
- **Writes to:** Governance calendar and action items (for outside counsel execution)
- **HITL Required:** Outside counsel prepares documents; Dr. Lewis reviews; Matt Mathison approves and signs; LP reports reviewed before distribution

## Test Cases
1. **Golden path:** Annual governance audit for MBL portfolio → MBL Partners missing written consents for 3 major vendor contracts signed without formal resolution (backfill consents), Allevio operating agreement doesn't reflect 2024 ownership change (amend), HIVE LP Q4 report 15 days late (file immediately)
2. **Edge case:** Executive hire at VP level with no board resolution → retroactive manager consent drafted and signed; if employment agreement was already signed, consent ratifies the prior action; flag to outside counsel
3. **Adversarial:** Portfolio company CEO pushes back on formalizing governance ("we're a small company, this is overkill") → governance failures are discovered in M&A due diligence and reduce deal value; PE-backed companies are held to higher governance standards than typical SMBs; implement even lightweight governance

## Audit Log
Annual governance assessments retained. Resolutions and minutes retained permanently. LP reports retained.

## Deprecation
Retire when entity deploys a board management platform (Diligent, Boardvantage) with integrated resolution tracking, minutes management, and LP reporting.
