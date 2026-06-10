---
name: contract-value-extraction
description: "Extract financial terms from contracts and surface key monetary obligations. Use when the user says 'extract contract terms', 'what does this contract say', 'contract value', 'summarize contract financials', 'pull fees from contract', 'contract obligations', or 'what are we paying per this agreement'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<contract-file-or-text> [--type <vendor|customer|lease|loan>]"
---

# Contract Value Extraction

Parse contracts and surface all financial terms, obligations, and key dates in a structured format for financial planning and risk management.

## When to Use
- Onboarding a new vendor or customer agreement
- During M&A due diligence (target's contract portfolio)
- Lease renewal or renegotiation prep
- When building the annual budget (capture committed spend)
- Covenant compliance tracking setup

## Extraction Targets

### Core Financial Terms
- Total contract value (TCV)
- Annual contract value (ACV)
- Monthly recurring payment
- One-time fees (setup, implementation, deposits)
- Variable fees (usage-based, overage rates, milestone payments)

### Payment Structure
- Payment frequency (monthly, quarterly, annual, milestone-based)
- Payment due dates
- Auto-renewal terms and notice windows
- Early termination fees / penalties
- Price escalation clauses (CPI adjustments, step increases)

### Risk & Obligation Terms
- Minimum purchase commitments
- Service level penalties (SLA credits)
- Indemnification and liability caps
- Insurance requirements
- Governing law and dispute resolution

### Key Dates
- Effective date
- Initial term end date
- Renewal notice deadline (critical — missed = auto-renew)
- Next price review date
- Milestone or deliverable dates

## Output Format

```markdown
# Contract Extraction — <contract-name>
**Party:** <vendor / customer> | **Type:** <vendor|customer|lease|loan>
**Extracted:** <date>

## Financial Summary
| Field | Value |
|-------|-------|
| TCV | $X |
| ACV | $X/year |
| Monthly obligation | $X/month |
| One-time fees | $X |
| Variable fees | <description> |

## Payment Schedule
| Payment | Amount | Due Date | Notes |
|---------|--------|----------|-------|
| Quarterly SaaS fee | $X | Q1/Q2/Q3/Q4 first business day | |

## Key Dates — Action Required
| Date | Event | Action |
|------|-------|--------|
| <renewal-notice-date> | Renewal notice deadline | ⚠️ Cancel or renegotiate by this date |
| <term-end> | Contract expires | |

## Risk Flags
- Minimum commit: $X — verify actual spend vs. commitment
- Auto-renews: Yes — <N>-day notice required to cancel
- Price escalation: CPI + 3% annually

## Confidence
Fields where contract language was ambiguous are marked ⚠️ — verify with legal before relying on extracted value.
```

## Output Contract
- Flags ambiguous terms rather than guessing
- Auto-renewal notice deadlines always highlighted as high-priority
- HITL required before using extracted terms for budget commitments or legal disputes

## System Dependencies
- **Reads from:** Contract document (PDF or text, provided)
- **Writes to:** Nothing
- **HITL Required:** Before booking any extracted amounts in financial systems

## Test Cases
1. **Golden path:** Vendor SaaS agreement with clear pricing table → extracts all fields with high confidence
2. **Edge case:** MSA with separate SOW → flags missing pricing, requests SOW document
3. **Adversarial:** Ambiguous "fees TBD" clause → flags ⚠️, does not assign $0, requests clarification

## Audit Log
Extractions are read-only. Document lineage (contract name, extract date) included in output header for traceability.

## Deprecation
Retire when a dedicated contract lifecycle management (CLM) system (e.g., Ironclad, DocuSign CLM) is integrated and performs structured extraction automatically.
