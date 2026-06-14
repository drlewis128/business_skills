---
name: data-access-governance
description: "Manage data access controls and permissions across systems. Use when the user says 'data access', 'who can see this data', 'data permissions', 'access control', 'revoke data access', 'grant data access', 'data access review', 'least privilege for data', 'data access audit', or 'who has access to what data'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--system <bigquery|metabase|quickbooks|all>] [--mode <audit|grant|revoke|review>]"
---

# Data Access Governance

Manage data access permissions across MBL's data systems — who can see what data, under what conditions, and with what controls. Data access governance is the operational arm of the data governance framework: it's the day-to-day work of granting and revoking access, reviewing permissions quarterly, and ensuring the principle of least privilege is maintained. For MBL, this is especially important for HIPAA compliance (Allevio PHI access) and LP data access (HIVE Partners financials).

## When to Use
- New hire joins — what data should they access?
- Employee leaves — revoke all data access immediately
- Role change — access should change with the role
- Quarterly access review — audit who has access to what
- HIPAA audit — demonstrate PHI access controls
- Data breach investigation — who had access to this data?

## Access Control Matrix for MBL

```
Data systems and access tiers:
  Tier 1 — Public (within MBL): Any MBL team member
    Monday.com (project boards)
    Teams/SharePoint (general documents)
  
  Tier 2 — Role-based: Granted by function
    QuickBooks: Finance + Dr. Lewis + Matt Mathison (read)
    GoHighLevel: Commercial team + Dr. Lewis
    BigQuery marts (general): Analytics users
    Metabase dashboards: Designated dashboard groups

  Tier 3 — Restricted: Explicit grant required
    BigQuery raw tables: Data engineers only
    LP financial records (HIVE/Covercy): HIVE GP + MBL fund admin
    HIPAA data (Allevio/AdvancedMD): Named clinical roles only
    Claude API admin: Dr. Lewis only

Access principle: Least privilege by default
  No user should have more access than their job requires
  New access requires Dr. Lewis approval
  Access automatically reviewed quarterly
```

## Output Format

```markdown
# Data Access Governance — <System / Review>
**Date:** <date> | **Owner:** Dr. John Lewis
**Mode:** Audit / Grant / Revoke / Quarterly Review
**Systems covered:** <list>

---

## Access Registry

| User | Role | Entity | Systems with access | Access level | Granted by | Granted date | Last reviewed |
|------|------|--------|-------------------|------------|-----------|------------|--------------|
| Matt Mathison | Managing Partner | MBL | BigQuery (read), Metabase, QuickBooks (read) | Tier 2 | Dr. Lewis | <date> | <date> |
| Dr. Lewis | Principal SE | MBL | All systems | Tier 3 (full admin) | Self (owner) | Day 1 | Ongoing |
| [Allevio CEO] | Portfolio CEO | Allevio | Allevio entity data only; AdvancedMD (full) | Tier 2 (entity-scoped) | Dr. Lewis | <date> | <date> |
| [Engineer] | Engineering | MBL | BigQuery (raw + staging), Monday.com | Tier 2 | Dr. Lewis | <date> | <date> |

---

## Access Request Log

| Requestor | System | Access level | Business justification | Approved by | Date | Duration |
|---------|--------|------------|----------------------|------------|------|---------|
| [Name] | BigQuery | Read marts | Building new dashboard | Dr. Lewis | <date> | Permanent |
| [Name] | AdvancedMD | HIPAA role | Clinical data for Allevio | Allevio PO | <date> | Permanent |
| [Name] | Covercy | LP data | Fund admin role | Dr. Lewis + Matt | <date> | Permanent |

---

## Quarterly Access Review

**Review date:** <date> | **Reviewer:** Dr. Lewis

| User | System | Access | Still needed? | Action |
|------|--------|--------|--------------|--------|
| [Former employee] | BigQuery | Read | No — departed <date> | 🔴 Revoke immediately |
| [Contractor] | Metabase | Read | Yes — active project | ✅ Keep |
| [Portfolio lead] | GoHighLevel | Read | No — no longer primary contact | 🟡 Reduce scope |
| Matt Mathison | QuickBooks | Read | Yes | ✅ Keep |

**Actions from this review:**
- [ ] Revoke [former employee] from BigQuery and Metabase
- [ ] Reduce [portfolio lead] GoHighLevel to their entity only
- [ ] Confirm with HIVE GP that Covercy access list is current

---

## HIPAA Access Controls (Allevio)

| Role | Systems | PHI access | BAA in place? | Last reviewed |
|------|---------|-----------|-------------|--------------|
| Allevio clinical staff | AdvancedMD | Yes — minimum necessary | Yes | <date> |
| Allevio billing | Marshall Medical Billing | Yes — billing data only | Yes | <date> |
| Dr. Lewis | Allevio data (meta only) | No PHI access | N/A | N/A |
| BigQuery / Metabase | Allevio analytics | No PHI — de-identified only | N/A | N/A |

**PHI access rule:** Dr. Lewis and MBL team have NO direct PHI access. Analytics use de-identified or aggregate data only.

---

## Access Revocation Protocol

**When an employee leaves:**
1. HR notifies Dr. Lewis within 4 hours of departure
2. Dr. Lewis revokes all access within 24 hours:
   - [ ] BigQuery IAM removed
   - [ ] Metabase account deactivated
   - [ ] GoHighLevel user deactivated
   - [ ] QuickBooks user deactivated
   - [ ] Microsoft 365 (handled by IT)
   - [ ] Covercy (if applicable)
   - [ ] AdvancedMD (if applicable — HIPAA: immediate)
3. Access revocation logged with timestamp
4. HIPAA: AdvancedMD access revoked within 4 hours (not 24h)
```

## Output Contract
- Quarterly access review always scheduled and documented — stale access is a security risk
- HIPAA access controls always maintained separately and explicitly — PHI access requires individual documentation
- Revocation protocol always defined — off-boarding data access is as important as provisioning
- LP data access always explicitly controlled — Covercy and HIVE financial data requires documented approval
- HITL required: Dr. Lewis approves all Tier 2+ access grants; HIPAA access requires Allevio privacy officer approval; LP data access requires Dr. Lewis + Matt Mathison approval; revocations executed by Dr. Lewis (or designated admin) within the defined SLA

## System Dependencies
- **Reads from:** BigQuery IAM, Metabase user list, GoHighLevel user list, QuickBooks user list, AdvancedMD user list, Covercy user list
- **Writes to:** Access registry (SharePoint/Data/Governance/Access); HIPAA access log (separate, secure)
- **HITL Required:** Dr. Lewis approves grants; HIPAA access → Allevio privacy officer; LP data → Dr. Lewis + Matt Mathison; revocations within SLA

## Test Cases
1. **Golden path:** Quarterly access review → 12 users across 5 systems; 1 stale access (former contractor); 1 over-privileged (portfolio lead has full GoHighLevel vs. entity-scoped); HIPAA: no MBL staff have PHI access (confirmed); LP data: Covercy access confirmed current (HIVE GP + Dr. Lewis + fund admin); Actions: revoke contractor (today), reduce portfolio lead to entity-scoped (this week); next review scheduled in 90 days
2. **Edge case:** A new employee needs temporary access to a restricted system for a specific project → grant time-limited access with an expiration date; document the justification, project scope, and expiration; set a calendar reminder to review/revoke; do not grant permanent access for temporary needs; "temporary" access that isn't time-bounded tends to become permanent
3. **Adversarial:** A team member requests access to all data "for general awareness" → general awareness is not a business justification; access should be granted for specific tasks and revoked when complete; grant minimum required access; if they need general data visibility, provide a Metabase dashboard with aggregated data; raw data access requires a specific justification and Dr. Lewis approval

## Audit Log
All access grants and revocations logged with timestamp and approver. HIPAA access log maintained separately per HIPAA requirements. Quarterly reviews retained. Departing employee revocation log maintained.

## Deprecation
Retire when MBL implements an identity governance platform (Okta, Azure AD Privileged Identity Management) with automated access lifecycle management.
