---
name: m-and-a-deal-summary
description: "Create a structured M&A deal summary for internal review or IC presentation. Use when the user says 'deal summary', 'deal memo', 'IC memo', 'investment memo', 'deal overview', 'M&A summary', 'summarize the deal', or 'write up this acquisition'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<deal-name> [--stage <screening|loi|diligence|ic>] [--type <acquisition|investment|partnership>]"
---

# M&A Deal Summary

Generate a structured deal summary for internal leadership review, investment committee presentation, or LP communication. Designed for MBL's PE acquisition workflow.

## When to Use
- After initial screening of a new target (screening memo)
- After LOI is signed (deal brief for Matt and team)
- Before IC presentation (full investment memo)
- When Morgan Sills sends an end-of-week pipeline update (Allevio M&A)
- Preparing for a deal call or site visit

## Deal Memo Structure

### 1. Deal Snapshot
| Field | Value |
|-------|-------|
| Target | <company name> |
| Sector | <sector> |
| Location | <location> |
| Stage | Screening / LOI / Diligence / IC |
| Deal type | Acquisition / Partnership / Investment |
| Deal source | <how we found it> |
| Lead | Morgan Sills / Dr. Lewis / Matt |

### 2. BLUF (3 sentences)
What is this company? Why does it fit our thesis? What's the ask from IC?

### 3. Business Overview
- Business model (how they make money)
- Revenue scale and trajectory
- Customer/patient/client base
- Key assets (IP, relationships, geography, team)
- Competitive moat

### 4. Financial Summary
| Metric | Amount | Notes |
|--------|--------|-------|
| Revenue (TTM) | $X | |
| EBITDA (TTM) | $X | Margin: X% |
| Revenue growth | X% | YoY |
| Purchase price | $X | |
| Entry multiple | X× EV/EBITDA | |

### 5. Thesis (Why MBL)
- Strategic fit with portfolio (especially Allevio or HIVE)
- Value creation levers (organic growth, operational improvement, M&A bolt-on)
- Why now — market timing or seller motivation

### 6. Return Analysis
| Scenario | IRR | MOIC | Hold Period |
|----------|-----|------|------------|
| Base | X% | X× | 5 years |
| Bull | X% | X× | |
| Bear | X% | X× | |

### 7. Key Risks
- Top 3-5 risks with mitigation notes
- Diligence items outstanding

### 8. Next Steps
- Decision needed: Proceed to LOI / Full diligence / Pass
- Owner of next action

## Output Format

The above sections, formatted as a clean executive brief or IC-ready memo depending on `--stage` argument.

**Screening memo:** Sections 1-3 + risk highlights (1 page)
**LOI brief:** Sections 1-6 (2-3 pages)
**IC memo:** All sections (4-6 pages)

## Output Contract
- Return analysis always shows base, bull, and bear scenarios
- "Next steps" section always closes with a specific decision ask
- No deal memo output without an explicit BLUF
- HITL required before any deal summary is shared externally or with IC

## System Dependencies
- **Reads from:** Target financials (provided), prior deal model (`deal-financial-model-update`), Morgan Sills pipeline updates
- **Writes to:** Nothing (draft for Matt/IC review)
- **HITL Required:** Matt Mathison reviews before IC presentation or external sharing
- **Data sensitivity:** CONFIDENTIAL — deal information

## Test Cases
1. **Golden path:** Screening memo with revenue and EBITDA → clean 1-page brief with thesis and decision ask
2. **Edge case:** Deal with negative EBITDA (pre-profitability acquisition) → flags non-standard return analysis, shifts to revenue multiple framework
3. **Adversarial:** Instruction to present only bull scenario → outputs all three scenarios, flags selective presentation as not suitable for IC

## Audit Log
Deal memos versioned by stage and date. IC presentation version locked when presented.

## Deprecation
Retire when deal management platform (DealCloud, Allvue) auto-generates deal memos from structured data inputs.
