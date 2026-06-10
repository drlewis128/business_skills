---
name: ar-dispute-triage
description: "Classify and route customer billing disputes to correct resolution path. Use when the user says 'customer dispute', 'billing dispute', 'invoice dispute', 'customer says they owe less', 'dispute resolution', 'AR dispute', or 'customer is disputing the invoice'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<dispute-description | dispute-file>"
---

# AR Dispute Triage

Classify incoming billing disputes and route them to the correct resolution team with the supporting documentation needed to resolve quickly.

## When to Use
- When a customer disputes an invoice amount
- During collections calls when a dispute is raised
- Month-end AR cleanup

## Dispute Classification

| Type | Signals | Resolution Owner | Typical Timeline |
|------|---------|-----------------|-----------------|
| Pricing dispute | "Wrong rate," "contract says X" | Sales/Account Manager | 3-5 days |
| Quantity dispute | "We only received X units" | Operations + AP | 5-7 days |
| Duplicate invoice | "We already paid this" | AR team | 1-2 days |
| Quality/service dispute | "Work wasn't completed" | Operations/CSM | 7-14 days |
| Contract interpretation | "Our contract says..." | Legal + Sales | 14-30 days |
| Data entry error | Wrong amount, wrong entity | AR team | 1 day |
| Unauthorized charge | "We never ordered this" | Sales + AR | 3-5 days |

## Process

### Step 1 — Classify the Dispute
Based on the customer's stated reason, classify into one of the types above.

### Step 2 — Pull Required Documentation
Based on type, specify what to pull:
- Pricing dispute → Signed contract, rate schedule, invoice
- Quantity → PO, delivery receipt, invoice
- Duplicate → Prior payment record
- Quality → Service agreement, completion records, customer communications

### Step 3 — Calculate Exposure
- Full dispute amount
- Amount likely valid (not disputed)
- Maximum credit memo exposure

### Step 4 — Route with Context Package

## Output Format

```markdown
# Dispute Triage — <customer> — Invoice #<N>
**Dispute Date:** <date> | **Invoice Amount:** $X | **Disputed Amount:** $X

## Classification: <type>
**Confidence:** High/Medium/Low

## Resolution Owner: <team/person>
**Target Resolution Date:** <date>

## Documentation Required
1. <doc 1>
2. <doc 2>

## Recommended First Response to Customer
"Thank you for bringing this to our attention. We're reviewing your concern regarding [specific issue] and will respond with a resolution by [date]. Your account is on hold for the disputed amount of $X pending resolution."

## Financial Exposure
- Full dispute: $X
- Likely valid: $X
- Maximum credit exposure: $X
```

## Output Contract
- Never commits to a resolution without owner review
- Draft customer response requires approval before sending
- HITL required on any credit memo > $1,000

## System Dependencies
- **Reads from:** Invoice data, contract data (provided)
- **Writes to:** Nothing
- **HITL Required:** Before issuing any credit memo or customer communication

## Deprecation
Retire when CRM/AR system includes dispute workflow management.
