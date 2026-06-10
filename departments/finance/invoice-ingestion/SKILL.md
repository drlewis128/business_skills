---
name: invoice-ingestion
description: "Extract structured data from PDF or image invoices using OCR and LLM parsing. Use when the user says 'read this invoice', 'extract invoice data', 'parse this PDF invoice', 'pull data from invoice', 'invoice OCR', 'digitize invoice', or 'get the line items from this invoice'. Outputs a structured JSON or table ready for AP system entry."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<invoice-file-path | paste invoice text>"
---

# Invoice Ingestion

Extract structured data from unstructured invoice inputs (PDF, image, text paste) into a clean, AP-ready format. Eliminates manual data entry from AP workflows.

## When to Use
- Processing vendor invoices for entry into QuickBooks or Bill.com
- Batch ingestion of scanned invoice documents
- Validating that an invoice contains required fields before AP approval routing

## Process

### Step 1 — Detect Input Type
- File path provided → read file and extract text content
- Text pasted → proceed directly to extraction
- Image described → extract from description or ask user to paste text content

### Step 2 — Extract Fields

Required fields:
| Field | Notes |
|-------|-------|
| Vendor name | Full legal name |
| Vendor address | Street, city, state, zip |
| Invoice number | Exact as printed |
| Invoice date | ISO format YYYY-MM-DD |
| Due date | ISO format (calculate from terms if stated) |
| PO number | If present |
| Line items | Description, quantity, unit price, total per line |
| Subtotal | Before tax |
| Tax amount | Itemized if multiple tax types |
| Total amount due | Final |
| Payment terms | Net 30, Net 15, etc. |
| Remit-to information | Bank details or mailing address if present |
| Currency | Default USD if not stated |

### Step 3 — Flag Anomalies
- Missing required fields → flag each
- Invoice date in the future → flag
- Due date already past → flag as OVERDUE
- No PO number when expected → flag
- Round-number totals with no line item detail → flag for manual review

### Step 4 — Confidence Score
Rate each extracted field: High / Medium / Low based on clarity of source text.

## Output Format

```json
{
  "vendor": { "name": "", "address": "" },
  "invoice_number": "",
  "invoice_date": "YYYY-MM-DD",
  "due_date": "YYYY-MM-DD",
  "payment_terms": "",
  "po_number": "",
  "line_items": [
    { "description": "", "qty": 0, "unit_price": 0.00, "total": 0.00 }
  ],
  "subtotal": 0.00,
  "tax": 0.00,
  "total_due": 0.00,
  "currency": "USD",
  "flags": [],
  "confidence": "High/Medium/Low"
}
```

Also render as a readable table for human review.

## Output Contract
- Never fabricates missing fields — uses `null` and flags the gap
- Always includes a `flags` array (empty if no issues)
- HITL required before pushing extracted data to QuickBooks or Bill.com

## System Dependencies
- **Reads from:** File system (invoice file) or conversation input
- **Writes to:** Nothing (outputs structured data for human review before system entry)
- **HITL Required:** Before posting extracted data to any financial system

## Deprecation
Retire when a native Bill.com or QuickBooks OCR integration handles this end-to-end.
