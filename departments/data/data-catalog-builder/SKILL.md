---
name: data-catalog-builder
description: "Build a data catalog documenting all data assets, definitions, and ownership. Use when the user says 'data catalog', 'document our data', 'where is this data', 'what does this field mean', 'data dictionary', 'data inventory', 'catalog our data assets', 'document our tables', 'data asset registry', or 'data documentation'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--system <quickbooks|gohighlevel|monday|all>] [--mode <build|update|audit>]"
---

# Data Catalog Builder

Build and maintain a data catalog — the authoritative reference for what data exists, where it lives, what it means, and who owns it. Without a catalog, every analyst spends time finding data that someone else already found. Definitions drift and the same field means different things to different people. For MBL, a catalog also enables AI systems like OpenFang to know what data to query without manual instructions each time.

## When to Use
- Analytics team needs to know what data is available before building a report
- Two people have different definitions of the same metric — establish the standard
- New data analyst or engineer joins the team — give them a map
- Building an AI/agent system that needs to query data — the catalog is the schema
- Data audit: what data do we have, where is it, is it compliant?

## Catalog Entry Structure

```
For each data asset (table, object, dataset):
  - Name: What is it called in the system?
  - Business definition: What does it represent in plain English?
  - System: Which tool/database does it live in?
  - Owner: Who is responsible for its quality?
  - Fields: Key fields with definitions and data types
  - Quality: Completeness target, last updated, known issues
  - Access: Who can see it? Any compliance restrictions?
  - Relationships: How does it connect to other data assets?
  - Example: A sample record (anonymized)
```

## Output Format

```markdown
# Data Catalog — <Company>
**Maintained by:** Dr. John Lewis | **Last updated:** <date>
**Scope:** All data systems / <specific system>

---

## Catalog Index

| Asset | System | Domain | Owner | Access | Compliance |
|-------|--------|--------|-------|--------|-----------|
| [Contacts] | GoHighLevel | CRM | Dr. Lewis | Commercial team | Standard |
| [Deals] | GoHighLevel | CRM | Dr. Lewis | Commercial team | Standard |
| [Chart of Accounts] | QuickBooks | Finance | Dr. Lewis | Finance only | Standard |
| [Board Items] | Monday.com | Projects | Dr. Lewis | All team | Standard |
| [Meeting Summaries] | SharePoint | Intelligence | Dr. Lewis | Attendees | Standard |
| [Patient Records] | AdvancedMD | Healthcare | Allevio Privacy Officer | HIPAA role-based | HIPAA |

---

## Catalog Entry: [Asset Name]

**Business definition:** <What does this data represent in plain English?>
**System:** <Tool name> | **Database/Table:** <technical path if applicable>
**Domain:** Finance / CRM / Projects / Healthcare / Intelligence
**Owner:** <Name — responsible for quality and access>
**Updated:** <frequency — real-time / daily / weekly>

### Key Fields

| Field | Type | Definition | Values/Range | Null OK? |
|-------|------|-----------|-------------|---------|
| [field_name] | String/Date/Number/Bool | [Plain English definition] | [Enum values or range] | Yes/No |
| [field_name] | String | [Definition] | [Values] | No |

**Calculated fields:**
- `<field>` = <formula in plain English>

**Known quality issues:**
- [Field X] is blank in ~15% of records created before <date>
- [Field Y] has free-text values that haven't been normalized

### Relationships

| Relationship | Other asset | Join key | Cardinality |
|-------------|------------|---------|------------|
| [Contact] → Deals | Deals | contact_id | 1:many |
| [Deal] → Company | Contacts | company_name | many:1 |

### Access and Compliance

**Who can access:** <role list>
**Who cannot:** <any restrictions>
**Compliance flags:** 
- [ ] HIPAA: Contains PHI — restrict to named roles; log all access
- [ ] PII: Contains personal data — handle per data retention policy
- [ ] LP Data: Contains LP financial data — HIVE GP + MBL fund admin only

### Example Record (anonymized)

```json
{
  "field1": "example_value",
  "field2": 42,
  "field3": "2026-01-15"
}
```

---

## Metric Definitions (business metric → data source)

| Metric | Definition | Data source | Calculation | Owner |
|--------|-----------|-------------|------------|-------|
| MRR | Monthly recurring revenue from active customers | QuickBooks Invoices | SUM(invoice_amount) WHERE customer_type='recurring' AND month=current | Dr. Lewis |
| Pipeline | Total value of active deals | GoHighLevel Deals | SUM(deal_value) WHERE stage NOT IN ('Closed Won','Closed Lost') | Dr. Lewis |
| D7 Retention | % of users who return within 7 days of first session | Product analytics | COUNT(returning_users_d7) / COUNT(new_users) | Dr. Lewis |
| Meeting coverage | % of Krista-recorded meetings with a published summary | SharePoint + Krista | COUNT(summaries_published) / COUNT(meetings_recorded) | Dr. Lewis |

---

## Data Dictionary — Common Terms

| Term | Definition | Context |
|------|-----------|---------|
| ARR | Annual Recurring Revenue = MRR × 12 | Finance |
| Closed Won | Deal stage where customer signed | CRM |
| PHI | Protected Health Information — HIPAA regulated | Healthcare |
| LP | Limited Partner in HIVE Partners fund | HIVE |
| HITL | Human-in-the-Loop — AI action requiring human approval | AI/Agent |
| NSM | North Star Metric — the single most important product metric | Product |
```

## Output Contract
- Every metric always has a precise calculation — not "we measure revenue" but the exact formula
- HIPAA assets always flagged — PHI must be explicitly called out, not assumed known
- Owner always named per asset — "team" is not an owner
- Known quality issues always documented — hiding data quality problems is worse than exposing them
- HITL required: Dr. Lewis reviews and approves catalog additions; HIPAA asset entries reviewed by Allevio privacy officer; new data asset entries require Dr. Lewis approval before publishing

## System Dependencies
- **Reads from:** All data systems (QuickBooks, GoHighLevel, Monday.com, Krista.ai, AdvancedMD, Covercy, SharePoint)
- **Writes to:** Data catalog (SharePoint/Data/Catalog)
- **HITL Required:** Dr. Lewis approves all catalog entries; HIPAA assets reviewed by Allevio privacy officer

## Test Cases
1. **Golden path:** GoHighLevel CRM catalog entries → Contacts table: 12 fields documented (Name, Email, Phone, Company, Owner, Stage, Created, Tags, Source, ARR, Notes, Last Activity); Deals table: 10 fields documented; relationship: Contact 1:many Deals via company_name; quality issues: phone_number missing in 35% of records (pre-2025 imports); owner: Dr. Lewis; access: commercial team; no HIPAA flags; metric: Pipeline calculation documented
2. **Edge case:** A field has different meanings in different contexts (e.g., "owner" means the salesperson in CRM but the account manager in CS) → document both meanings with context; flag the ambiguity; recommend renaming one of the fields to eliminate the confusion; ambiguous field names are technical debt in the data catalog
3. **Adversarial:** Team says they don't have time to maintain a catalog — it will be out of date immediately → a partial catalog is better than no catalog; start with the 5 most-used metrics and 3 most-used data sources; build a "catalog ownership" rule: whoever creates a new data table/metric is responsible for cataloging it; without a catalog, the team pays the "where is this data?" tax on every project

## Audit Log
Catalog versioned in SharePoint. New entries logged with author and date. HIPAA asset access logs maintained separately per HIPAA requirements.

## Deprecation
Retire when MBL adopts a dedicated data catalog tool (Alation, DataHub, or similar) with automated schema discovery and business glossary management.
