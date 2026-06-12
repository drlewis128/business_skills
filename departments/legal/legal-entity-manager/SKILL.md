---
name: legal-entity-manager
description: "Manage the corporate entity structure for MBL portfolio companies. Use when the user says 'entity structure', 'legal entities', 'corporate structure', 'LLC', 'registered agent', 'state registration', 'good standing', 'annual report', 'subsidiary', 'operating agreement', 'entity formation', or 'registered in which state'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name|all>] [--mode <inventory|status|filing>] [--state <AZ|UT|DE|all>]"
---

# Legal Entity Manager

Manage the corporate entity structure for MBL Partners and its portfolio companies. Every operating entity must be properly formed, registered in the states where it does business, maintain a registered agent, file annual reports, and keep its operating documents current. A lapsed entity registration or missed annual report can create personal liability exposure, contract enforceability problems, and M&A complications. This skill maintains the entity inventory and tracks required filings.

## When to Use
- Annual entity audit — all entities in good standing?
- Adding a new entity (new portfolio company, subsidiary, JV)
- Expanding into a new state (requires foreign qualification)
- M&A diligence — what entities does the target own?
- Checking if an entity is in good standing before a transaction closes

## MBL Portfolio Entity Structure

```
MBL Partners (PE holding firm)
├── Allevio (healthcare MSO)
│   └── [operating entities — confirm with Matt/Legal]
├── HIVE Partners (oil & gas, Utah)
│   └── [LP/operating entities — confirm with Legal]
├── Column6 / Siprocal (CTV/media)
│   └── [operating entities — confirm with Legal]
└── North Vista (marketing entity)
```

## Output Format

```markdown
# Legal Entity Inventory — MBL Portfolio
**Date:** <date> | **Prepared by:** Dr. John Lewis / Outside Counsel

---

## Entity Status Summary

| Entity | Type | State of Formation | Good Standing | Registered Agent | Annual Report Due | Foreign Qualifications |
|--------|------|------------------|------------|----------------|----------------|----------------------|
| MBL Partners LLC | LLC | AZ | ✅ | <Agent> | <date> | N/A |
| Allevio LLC | LLC | AZ | ✅ | <Agent> | <date> | UT (if ops there) |
| HIVE Partners LLC | LLC | AZ/UT | ✅ | <Agent> | <date> | UT |
| Column6 LLC | LLC | AZ/DE | ✅ | <Agent> | <date> | CA (if CA ops) |
| North Vista LLC | LLC | AZ | ✅ | <Agent> | <date> | N/A |

---

## Compliance Calendar — Filing Deadlines

| Filing | Entity | State | Due Date | Status | Responsible |
|--------|--------|-------|---------|--------|-----------|
| Annual Report | MBL Partners | AZ | <date> | 📅 Calendared | Admin / Outside Counsel |
| Annual Report | Allevio | AZ | <date> | 📅 | |
| Annual Report | HIVE Partners | AZ | <date> | 📅 | |
| Annual Report | HIVE Partners | UT | <date> | 📅 | |
| Annual Report | Column6 | AZ | <date> | 📅 | |
| Registered Agent renewal | All | All | <date> | 📅 | |
| BOI Report (FinCEN) | All | Federal | Ongoing — new entities within 90 days | 📅 Confirm | CRITICAL: Beneficial Ownership Info required under CTA |

---

## Beneficial Ownership Information (BOI) — Corporate Transparency Act

**CRITICAL:** The Corporate Transparency Act (CTA) requires most small businesses to file Beneficial Ownership Information with FinCEN. Penalties for non-compliance: $500/day civil, $10,000 criminal.

| Entity | BOI Filed? | Filing Date | Beneficial Owners Listed | Annual Update Required? |
|--------|---------|------------|----------------------|----------------------|
| MBL Partners | ✅ / ❌ | <date> | <names> | Only if ownership changes |
| Allevio | ✅ / ❌ | | | |
| HIVE Partners | ✅ / ❌ | | | |
| Column6 | ✅ / ❌ | | | |

---

## Entity Documents Inventory

| Entity | Operating Agreement | Signed? | Last Updated | Where Stored |
|--------|------------------|---------|------------|------------|
| MBL Partners | ✅ | ✅ | <date> | SharePoint/Legal Drive |
| Allevio | ✅ / ❌ | | | |
| HIVE Partners | ✅ / ❌ | | | |
| Column6 | ✅ / ❌ | | | |

---

## Foreign Qualification Status

| Entity | Home State | Operating in State | Foreign Qualification | Status |
|--------|----------|------------------|---------------------|--------|
| HIVE Partners | AZ | Utah (oil & gas) | UT Foreign LLC | ✅ Registered |
| Allevio | AZ | Multiple states (healthcare) | Confirm per state | 🟡 Review |

---

## Action Items

| Priority | Item | Entity | Owner | Due |
|--------|------|--------|-------|-----|
| Critical | File BOI Report if not filed | All entities | Outside Counsel | Immediately |
| High | Confirm all annual reports current | All | Admin / Outside Counsel | <date> |
| High | Update operating agreements if ownership changed | Any with changes | Outside Counsel | Q2 |
| Medium | Confirm foreign qualifications match actual operations | HIVE, Allevio | Outside Counsel | Q3 |
```

## Output Contract
- BOI/CTA filing always checked first — it's a relatively new requirement (2024) with significant penalties that many small businesses have missed
- Good standing always verified before any transaction — can't sell, borrow against, or transfer interests in an entity not in good standing
- Foreign qualifications always checked for entities with multi-state operations (HIVE Utah, Allevio multi-state healthcare)
- Operating agreements always confirmed current — especially after any ownership changes or new investor entry
- HITL required: Dr. Lewis reviews entity status; Outside counsel maintains entity filings; Matt Mathison approves any entity formation, dissolution, or restructuring

## System Dependencies
- **Reads from:** State business registry portals (AZ Corporation Commission, Utah Division of Corporations), FinCEN BOI system, legal document repository (provided by outside counsel)
- **Writes to:** Entity inventory and compliance calendar (for Legal)
- **HITL Required:** Outside counsel maintains filings; Dr. Lewis reviews annually; Matt Mathison approves entity changes

## Test Cases
1. **Golden path:** Annual entity audit → all 5 entities in good standing, 2 annual reports due in 30 days (schedule filing), BOI for new subsidiary not filed (file within deadline), HIVE Utah foreign qualification current, all operating agreements dated within 2 years
2. **Edge case:** HIVE Partners opens operations in Colorado — new state → requires Colorado foreign qualification before conducting business in CO; file within 90 days of starting CO operations
3. **Adversarial:** Discovery that an entity was administratively dissolved for missing annual report → cannot conduct business, sign contracts, or defend lawsuits in this entity name; immediate reinstatement filing required; assess any contracts signed during dissolved period (enforceability risk)

## Audit Log
Entity inventory reviewed annually. Annual report filings documented. BOI filings documented. Foreign qualification changes recorded.

## Deprecation
Retire when MBL deploys a corporate entity management platform (CT Corporation, CSC Global) with automated deadline tracking and filing services.
