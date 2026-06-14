---
name: data-governance-framework
description: "Build a data governance framework for data ownership, quality, and access. Use when the user says 'data governance', 'data ownership', 'who owns the data', 'data access control', 'data stewardship', 'govern our data', 'data policy', 'data management', 'data quality governance', or 'establish data ownership'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--company <MBL|Allevio|HIVE|Column6>] [--focus <access|quality|ownership|compliance>]"
---

# Data Governance Framework

Build a data governance framework that ensures data is accurate, accessible to the right people, and protected from unauthorized access. Ungoverned data creates three problems: people can't trust it (quality), people can't find it (discoverability), and the wrong people can access it (security). For MBL, data governance is both a quality issue (can we trust the numbers?) and a compliance issue (HIPAA for Allevio; LP data for HIVE).

## When to Use
- Multiple people are producing conflicting numbers for the same metric
- Someone accessed data they shouldn't have
- HIPAA or compliance audit is coming — need to demonstrate data controls
- Onboarding a new data tool — governance before access
- Portfolio company is growing and data is getting messy
- Building an AI product — data governance is foundational to AI quality

## Governance Components

```
1. Data ownership
   Who is responsible for each data domain?
   The owner ensures quality, access, and documentation for their domain

2. Data access control
   Who can see what data?
   Principle of least privilege: access only to what is needed for the job

3. Data quality standards
   What does "good data" look like for each domain?
   Automated checks + human review cadence

4. Data catalog
   Where is all the data? What does each field mean?
   Without a catalog, institutional knowledge lives in people's heads

5. Compliance and data privacy
   GDPR, HIPAA, CCPA requirements
   Data residency, retention, and disposal

6. Data incident management
   What happens when data is wrong, lost, or accessed inappropriately?
```

## Data Domain Ownership for MBL

```
Finance (QuickBooks):
  Owner: CFO / Dr. Lewis (interim)
  Access: Dr. Lewis, Matt Mathison, accountants
  Quality checks: Monthly reconciliation; automated balance checks

CRM (GoHighLevel):
  Owner: Dr. Lewis / Sales lead
  Access: All commercial team; read-only for operations
  Quality checks: Duplicate detection weekly; completeness checks monthly

Projects (Monday.com):
  Owner: Dr. Lewis / Operations lead
  Access: MBL team; portfolio company leads (their boards only)
  Quality checks: Sprint closure rate; stale task detection

Meetings (Krista.ai + SharePoint):
  Owner: Dr. Lewis
  Access: Meeting attendees only; summaries to Matt Mathison
  Quality checks: Summary quality HITL review weekly

Healthcare (Allevio — AdvancedMD / Marshall Medical Billing):
  Owner: Allevio CEO / designated HIPAA privacy officer
  Access: HIPAA-compliant access only; PHI never in cross-entity BI
  Quality checks: Quarterly HIPAA compliance audit; Dr. Lewis reviews

HIVE Partners (Covercy):
  Owner: HIVE Partners GP
  Access: HIVE GP, Dr. Lewis, MBL fund admin
  Quality checks: Quarterly LP reporting reconciliation
```

## Output Format

```markdown
# Data Governance Framework — <Company>
**Date:** <date> | **Author:** Dr. John Lewis
**Scope:** All data systems / Specific domain: <domain>
**Compliance requirements:** HIPAA (Allevio) / LP/SEC (HIVE) / Standard

---

## Data Domain Registry

| Domain | Owner | Systems | Access level | Compliance | Quality cadence |
|--------|-------|---------|-------------|-----------|----------------|
| Finance | Dr. Lewis | QuickBooks | Restricted | Standard | Monthly recon |
| CRM | Dr. Lewis | GoHighLevel | Commercial team | Standard | Weekly dedup |
| Projects | Dr. Lewis | Monday.com | All team | Standard | Sprint closure |
| Healthcare | Allevio privacy officer | AdvancedMD | HIPAA role-based | HIPAA | Quarterly audit |
| LP Data | HIVE GP | Covercy | GP + fund admin | SEC/Standard | Quarterly |

---

## Access Control Matrix

| Role | Finance | CRM | Projects | Healthcare | LP Data | AI outputs |
|------|---------|-----|---------|-----------|---------|-----------|
| Matt Mathison | Read | Read | Read | No access | Read | Read |
| Dr. Lewis | Full | Full | Full | Governance only | Read | Full |
| Portfolio CEO (Allevio) | Allevio only | Allevio only | Allevio only | Full (own entity) | No | Allevio only |
| MBL Team member | No | Read | Read | No | No | MBL only |

**Principle of least privilege:** Default to no access; grant explicitly

---

## Data Quality Standards

| Domain | Required fields | Completeness target | Accuracy check | Freshness |
|--------|---------------|-------------------|--------------|---------|
| Finance | All GL accounts, amounts, dates | 100% | Monthly reconciliation | Daily sync |
| CRM | Company, owner, deal stage, close date | >90% | Weekly dedup run | Daily sync |
| Projects | Task, owner, due date, status | >85% | Sprint planning review | Real-time |
| Healthcare PHI | Per HIPAA minimum necessary | 100% | Quarterly audit | Per clinical need |

**Data quality incident:** If completeness drops >5% below target → Dr. Lewis notified; investigation within 24h

---

## Data Catalog (Summary)

| System | Key tables/objects | Business definition | Owner | Last updated |
|--------|------------------|---------------------|-------|------------|
| QuickBooks | Chart of accounts | Revenue recognition per entity | Dr. Lewis | <date> |
| GoHighLevel | Contacts, Deals | Prospect and customer records | Dr. Lewis | <date> |
| Monday.com | Boards, Items | Project and sprint tracking | Dr. Lewis | <date> |

*Full catalog maintained in SharePoint/Data/Catalog*

---

## Compliance Controls

### HIPAA (Allevio)
- PHI never stored in cross-entity data warehouse
- Access logs retained 6 years (AdvancedMD system)
- Breach notification protocol: Allevio privacy officer → Dr. Lewis → Matt Mathison within 72h of discovery
- Business Associate Agreements (BAAs) in place with all vendors touching PHI: [list]

### LP Data (HIVE Partners)
- LP records access restricted to HIVE GP + MBL fund admin
- No LP PII in cross-portfolio analytics
- Quarterly distribution reports reviewed by Dr. Lewis before distribution

---

## Data Incident Response

| Incident type | Response time | Owner | Escalation |
|-------------|--------------|-------|-----------|
| Data quality error (wrong numbers reported) | 4 hours | Data owner | Dr. Lewis if >1 business day to fix |
| Unauthorized access | 1 hour | Dr. Lewis | Matt Mathison; legal if PHI |
| HIPAA breach | Immediate | Allevio privacy officer | Dr. Lewis + Matt Mathison + legal + notification within 72h |
| Data loss | Immediate | Dr. Lewis | Matt Mathison; backup restoration protocol |

---

## Governance Review Cadence

| Review | Cadence | Owner | Output |
|--------|---------|-------|--------|
| Access review | Quarterly | Dr. Lewis | Remove stale access; confirm current |
| Data quality review | Monthly | Data domain owners | Quality scorecard |
| HIPAA compliance | Quarterly | Allevio privacy officer | Compliance attestation |
| Governance framework review | Annually | Dr. Lewis | Update framework for new systems/regulations |
```

## Output Contract
- Every data domain has a named owner — shared ownership means no ownership
- HIPAA controls always explicit for Allevio — not optional, not abbreviated
- Access matrix always includes portfolio entity isolation — cross-entity data access is a compliance and trust risk
- Data incident response always defined — when something goes wrong is not the time to figure out who owns it
- HITL required: Dr. Lewis approves governance framework; Matt Mathison signs off on LP data controls; Allevio privacy officer signs off on HIPAA controls; any new data system addition requires Dr. Lewis governance review before access is granted

## System Dependencies
- **Reads from:** All data systems (QuickBooks, GoHighLevel, Monday.com, Krista.ai, AdvancedMD, Covercy)
- **Writes to:** Governance framework (SharePoint/Data/Governance); access control configurations
- **HITL Required:** Dr. Lewis designs and maintains governance; Matt Mathison approves major access changes; HIPAA decisions require Allevio privacy officer

## Test Cases
1. **Golden path:** MBL data governance framework → 5 domains defined (Finance, CRM, Projects, Healthcare, LP); access matrix built; HIPAA controls explicit for Allevio (PHI never in cross-entity warehouse, BAAs confirmed, breach protocol defined); quarterly access review scheduled; data quality cadence set; Dr. Lewis and Matt Mathison review and approve
2. **Edge case:** New SaaS tool adopted by a portfolio company — where does its data fit in governance? → any new tool touching MBL or portfolio company data must be reviewed before adoption; governance review: what data does it collect? who can access it? does it have HIPAA/SOC2 compliance? does it require a BAA for Allevio data? Dr. Lewis approves before data flows in
3. **Adversarial:** Team wants to build a cross-portfolio analytics dashboard showing all four portfolio companies' data in one view → portfolio entity isolation is a core principle; LP trust and competitive sensitivity require data walls between entities; cross-portfolio analytics can show aggregate/anonymized portfolio performance but never entity-specific data in a single view without explicit authorization from each entity's leadership

## Audit Log
Governance framework versioned and dated. Access reviews documented per quarter. Data incidents logged with resolution. HIPAA breach log maintained separately per HIPAA requirements.

## Deprecation
Retire when each portfolio company has a dedicated data governance program with its own privacy officer and governance board, and MBL's role shifts to oversight rather than direct governance.
