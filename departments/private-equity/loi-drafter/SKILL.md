---
name: loi-drafter
description: "Draft a Letter of Intent for an M&A transaction. Use when the user says 'draft LOI', 'letter of intent', 'write an LOI', 'LOI draft', 'acquisition letter of intent', 'preliminary agreement', or 'draft the offer letter'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<deal-context> [--target <company>] [--price <amount>] [--structure <stock|asset|merger>]"
---

# LOI Drafter

Draft a non-binding Letter of Intent for an M&A acquisition. Establishes the deal framework, signals intent, and provides the basis for exclusivity and due diligence.

## When to Use
- When MBL is ready to make an offer on an acquisition target
- When a target requests a written expression of interest
- Before engaging full deal counsel (LOI establishes terms before legal drafts definitive agreements)

## LOI Structure

### 1. Introduction
- Parties (MBL Partners or subsidiary as buyer, target company as seller)
- Purpose: non-binding expression of intent
- Reference to prior discussions

### 2. Transaction Structure
- Stock purchase / Asset purchase / Merger
- Rationale for structure (note: asset purchase preferred for liability limitation; stock for simplicity)
- Surviving entity (if merger)

### 3. Purchase Price
- Total enterprise value
- Form of consideration (cash / equity / notes / earnout)
- Earnout structure (if any): triggers, period, cap
- Working capital adjustment mechanism
- Escrow/holdback

### 4. Key Conditions
- Satisfactory due diligence
- Definitive agreement execution
- Board / LP approval (if required)
- Regulatory approvals (if required)
- Financing (if applicable — prefer "not subject to financing" when possible)

### 5. Exclusivity
- Period (typically 30-60 days)
- Scope (seller cannot solicit or respond to other offers)
- Extension process

### 6. Confidentiality
- Reference to existing NDA (preferred) or include standalone confidentiality
- No-talk provision (no discussions with third parties about potential sale during exclusivity)

### 7. Non-Binding vs. Binding Provisions
**Binding (even though LOI is "non-binding" overall):**
- Exclusivity
- Confidentiality
- Governing law
- Break fee (if included)

**Non-binding:**
- All economics and structure provisions

### 8. Timing
- Expected LOI to close timeline
- Key milestones

## Output Format

```markdown
# LETTER OF INTENT
**[CONFIDENTIAL — NON-BINDING]**

Date: <date>

[Seller Name]
[Seller Address]

Re: Proposed Acquisition of [Target Company]

Dear [Seller / Seller's Representative]:

This Letter of Intent ("LOI") sets forth the general terms and conditions upon which [MBL Partners / Buyer Entity] ("Buyer") proposes to acquire [Target Company] ("Company"). This LOI is non-binding except as expressly noted.

**1. Transaction Structure**
[stock/asset/merger language]

**2. Purchase Price**
[price, consideration, earnout, adjustments]

**3. Conditions**
[diligence, approvals, financing]

**4. Exclusivity**
[period, scope]

**5. Confidentiality**
[reference to existing NDA or standalone]

**6. Non-Binding Nature**
This LOI, except for Sections [4] and [5] (Exclusivity and Confidentiality), does not constitute a legally binding agreement and is not intended to create any legally binding obligations on the part of either party.

**7. Governing Law**
[State, typically Delaware or deal state]

---

This LOI is subject to revision based on due diligence and final agreement on all terms.

Please confirm your agreement to the terms herein by signing below.

Sincerely,

Matt Mathison
Managing Partner
MBL Partners
```

## Output Contract
- Always clearly labeled NON-BINDING except for specifically noted binding sections
- Earnout provisions flagged if >20% of total consideration (see `term-sheet-analyzer`)
- HITL required (Matt Mathison + legal counsel) before any LOI is sent to seller
- Buyer entity (MBL Partners vs. acquisition subsidiary) must be confirmed before sending

## System Dependencies
- **Reads from:** Deal terms and context provided, prior deal summary (`m-and-a-deal-summary`)
- **Writes to:** Nothing (draft for legal and Matt review)
- **HITL Required:** Matt Mathison and transaction counsel must review before sending

## Test Cases
1. **Golden path:** Clean deal — cash only, no earnout, stock purchase → simple 3-page LOI draft
2. **Edge case:** Asset purchase where assumed liabilities are not listed → flags assumed liabilities as missing — must be specified before sending
3. **Adversarial:** Request to include aggressive break fee favoring seller → flags atypicality, explains market standard, presents both versions

## Audit Log
LOI drafts versioned by deal name and date. Final signed LOI retained as deal documentation.

## Deprecation
Retire when legal operations platform generates LOI drafts from structured deal data inputs.
