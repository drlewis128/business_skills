---
name: trademark-monitor
description: "Monitor trademarks and manage brand protection. Use when the user says 'trademark monitoring', 'brand protection', 'trademark infringement', 'someone using our name', 'trademark conflict', 'trademark search', 'USPTO filing', 'trademark renewal', 'trademark registration', 'brand conflict', or 'trademark watch'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mark <name>] [--mode <search|monitor|conflict|renewal>]"
---

# Trademark Monitor

Monitor trademarks and manage brand protection for MBL portfolio companies. A registered trademark provides nationwide constructive notice of ownership and is the foundation for enforcement. Unmonitored trademarks are diluted by third-party use — and once a conflicting user establishes rights in a region, enforcement becomes expensive or impossible. This skill manages trademark registration status, renewal deadlines, and conflict monitoring for the MBL portfolio brand portfolio.

## When to Use
- Setting up trademark monitoring for a new or existing mark
- Reviewing USPTO TESS for potential conflicts before filing
- Responding to an Office Action from USPTO
- Enforcing against a third-party using a confusingly similar mark
- Trademark renewal deadline approaching (5-6 years, 9-10 years)

## MBL Portfolio Brand Marks

| Mark | Entity | Registration Status | Classes | Priority |
|------|--------|------------------|---------|---------|
| MBL Partners | MBL Partners | Register if not yet | 36 (financial services) | High |
| Allevio | Allevio | Register if not yet | 44 (healthcare services) | High |
| HIVE Partners | HIVE Partners | Register if not yet | 36, 44 (if healthcare element) | High |
| Column6 / Siprocal | Column6 | Register if not yet | 35, 38 (advertising, broadcasting) | High |
| OpenFang | Dr. Lewis / MBL | Not registered — evaluate | 42 (software) | High if commercial |
| North Vista | MBL (marketing) | Register if not yet | 35 (advertising, marketing) | Medium |

## USPTO Trademark Timeline

```
STEP 1 — Clearance search (before filing)
  - TESS search on USPTO.gov — identical and similar marks
  - Common law search — Google, social media, domain names
  - Results: CLEAR / POSSIBLE CONFLICT / CONFLICT — DO NOT FILE

STEP 2 — Application filing
  - ITU (Intent to Use) if not yet in commerce — $350/class
  - Use-based (1a) if mark is already in use — $250/class
  - Processing time: 8-12 months to registration (if no issues)

STEP 3 — Office Actions (if any)
  - USPTO examiner may issue an Office Action (objection)
  - Response due within 3 months (extendable to 6 months)
  - Failure to respond = abandonment

STEP 4 — Publication for Opposition
  - Published in Official Gazette — 30-day opposition period
  - Third parties can file opposition

STEP 5 — Registration
  - Certificate of registration issued
  - First renewal: between year 5-6 (Section 8 declaration)
  - Second renewal: between year 9-10 (Section 8 + 9)
  - Subsequent renewals: every 10 years

Mark must be in use in commerce to maintain registration.
```

## Output Format

```markdown
# Trademark Portfolio Report — <Entity / MBL Portfolio>
**Date:** <date> | **Prepared by:** Dr. John Lewis / IP Counsel

---

## Registration Status Summary

| Mark | Entity | Application # | Status | Filed | Registration # | Registered | Next Action | Due |
|------|--------|------------|--------|-------|------------|---------|-----------|-----|
| MBL Partners | MBL | <#> | ✅ Registered | <date> | <#> | <date> | Section 8 declaration | Year 5-6 |
| Allevio | Allevio | <#> | 🟡 Pending | <date> | — | — | Respond to Office Action | <date> |
| HIVE Partners | HIVE | Not filed | ❌ Unregistered | — | — | — | File clearance search | ASAP |
| OpenFang | MBL/Dr. Lewis | Not filed | ❌ Not assessed | — | — | — | Decide entity; file search | Q2 |

---

## Renewal Deadlines

| Mark | Registration # | Registered | Section 8 Due | Section 8+9 Due | Status |
|------|------------|---------|------------|--------------|--------|
| MBL Partners | <#> | <date> | <date> | <date> | 📅 Calendared |

---

## Clearance Search Results — <Mark Being Searched>

**Mark:** <mark text>
**Class:** <class number and description>
**Search date:** <date>

| Potential Conflict | Owner | Status | Similarity | Risk | Recommendation |
|------------------|-------|--------|----------|------|--------------|
| <Similar mark> | <Owner> | Registered | Highly similar in Class 36 | 🔴 High conflict | Do not file — seek counsel |
| <Similar mark> | <Owner> | Abandoned | Moderately similar | 🟡 Low risk | File with monitoring |
| <Similar mark> | <Owner> | Registered, different class | Different goods/services | ✅ Low risk | File — different market |

---

## Conflict Log — Third-Party Use of Similar Marks

| Conflict | Mark | Third Party | Identified | Similarity | Action |
|---------|------|-----------|---------|---------|--------|
| Example | MBL Capital | Financial services firm, same class | <date> | High | C&D letter via outside counsel |
| Example | Allevio Health | Healthcare SaaS | <date> | Medium | Monitor — different services |

---

## Monitoring Schedule

| Mark | Monitoring Method | Frequency | Last Review | Next Review |
|------|----------------|---------|-----------|-----------|
| MBL Partners | USPTO TESS search + Google Alert | Monthly | <date> | <date> |
| Allevio | USPTO TESS + industry news | Monthly | <date> | <date> |
| All marks | Domain registration monitoring | Quarterly | <date> | <date> |
```

## Output Contract
- Renewal deadlines always flagged 12 months in advance — missed renewals result in automatic cancellation with no grace period for Section 8
- Clearance search always before filing — filing without clearance wastes fees and creates conflict liability
- Conflicts always assessed before sending cease-and-desist — confirm registration strength and priority before enforcement
- OpenFang always assessed for trademark filing if commercial use is planned
- HITL required: Dr. Lewis reviews trademark strategy; IP counsel handles USPTO filings and Office Actions; Dr. Lewis and Matt Mathison approve cease-and-desist actions; opposition proceedings require outside counsel

## System Dependencies
- **Reads from:** USPTO TESS (trademark search), trademark docket management, Google Alerts (brand monitoring)
- **Writes to:** Trademark portfolio report and renewal calendar (for IP counsel)
- **HITL Required:** IP counsel handles USPTO interactions; Dr. Lewis approves enforcement strategy; Matt Mathison approves litigation if conflict escalates

## Test Cases
1. **Golden path:** Annual trademark portfolio review → MBL Partners mark registered and current, Section 8 due in 18 months (calendar), Allevio mark pending — Office Action issued (respond within 3 months), HIVE Partners mark not registered (clearance search initiated), OpenFang — decision needed on entity and commercial use before filing
2. **Edge case:** Third party registers a domain "mblpartners.com" (or similar confusable name) → assess ICANN UDRP (cybersquatting) process; if bad faith registration, UDRP is faster and cheaper than litigation; engage IP counsel within 72 hours of discovery
3. **Adversarial:** Competitor is using a name confusingly similar to "Allevio" in a different but adjacent healthcare niche → conduct priority analysis (who filed/used first?), assess likelihood of confusion (same market, same customers?), determine enforcement options (C&D, opposition if pending, lawsuit if registered); engage IP counsel

## Audit Log
USPTO filing dates, renewal dates, and correspondence retained. Conflict log maintained. Cease-and-desist letters retained.

## Deprecation
Retire when entity subscribes to a professional trademark monitoring service (CompuMark, Thomson Reuters SERION) with automated conflict alerts and docket management.
