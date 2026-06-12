---
name: ip-portfolio-manager
description: "Manage intellectual property portfolio for MBL portfolio companies. Use when the user says 'IP', 'intellectual property', 'patent', 'trademark', 'copyright', 'trade secret', 'IP assignment', 'IP ownership', 'IP portfolio', 'IP protection', 'IP audit', 'open source license', or 'IP due diligence'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <patent|trademark|copyright|trade-secret|all>] [--mode <audit|protect|license>]"
---

# IP Portfolio Manager

Manage the intellectual property portfolio for MBL portfolio companies. IP is often the primary value driver in technology and media businesses — OpenFang, Krista.ai integrations, Column6 ad tech, Allevio care management systems. Unprotected IP, ambiguous ownership, or missing IP assignment agreements reduce enterprise value and create M&A risk. This skill audits IP assets, identifies gaps, and prioritizes protection.

## When to Use
- Annual IP audit
- Pre-M&A due diligence — what IP does the target own and is it clean?
- New product or feature development — what needs protection?
- Contractor or employee separation — confirm IP assignment is in place
- Open source license compliance audit

## IP Types and Protection Methods

| IP Type | What It Protects | How to Protect | Duration |
|---------|----------------|--------------|---------|
| **Patent** | Inventions, novel processes | USPTO application ($10-$20K+) | 20 years from filing |
| **Trademark** | Brand names, logos, slogans | USPTO registration ($250-$350/class) | Renewable indefinitely |
| **Copyright** | Original creative works | Automatic at creation; optional registration ($45-$65) | Life + 70 years |
| **Trade Secret** | Confidential business info | NDAs, access controls, reasonable measures | Indefinite while secret |
| **Domain Names** | Web identity | Registration + renewal ($10-$15/year) | Annual renewal |

## Output Format

```markdown
# IP Portfolio Audit — <Entity>
**Date:** <date> | **Entity:** <name>
**Prepared by:** Dr. John Lewis / IP Counsel

---

## IP Asset Inventory

### Registered IP

| Asset | Type | Registration # | Filed | Status | Expires | Classes/Coverage |
|-------|------|-------------|-------|--------|---------|----------------|
| "MBL Partners" | Trademark | <#> | <date> | ✅ Registered | <date> | Class 36 (financial services) |
| "Allevio" | Trademark | <#> | <date> | ✅ Registered | <date> | Class 44 (healthcare) |
| "HIVE Partners" | Trademark | <#> | <date> | 🟡 Pending | — | Class 36 |
| "OpenFang" | Trademark | Not filed | — | ❌ Unregistered | — | File priority: Class 42 (software) |
| [Software patent] | Patent | | | | | |

### Unregistered IP (Trade Secrets / Copyright)

| Asset | Type | Owner | Protection Measures | M&A Risk |
|-------|------|-------|-------------------|---------|
| OpenFang codebase (14 crates) | Copyright + Trade Secret | Dr. Lewis / MBL | GitHub private, NDAs | IP assignment needed |
| Krista.ai integration workflows | Copyright | MBL Partners | Access controls | Confirm ownership vs. Krista |
| Column6 ad targeting algorithms | Trade Secret | Column6 | Access controls, NDAs | Assess trade secret protections |
| Allevio care management protocols | Trade Secret | Allevio | Access controls, BAAs | Confirm employee IP assignments |
| Client lists / deal pipeline | Trade Secret | MBL Partners | Access controls | Reasonable measures in place? |

---

## IP Ownership Chain — Critical Gaps

| IP Asset | Developer | IP Assignment? | Gap | Action |
|---------|---------|------------|-----|--------|
| OpenFang | Dr. Lewis | ❌ No formal assignment to MBL | If OpenFang is MBL asset, assignment agreement needed | Confirm entity (Dr. Lewis personally vs. MBL) |
| Software contractors | External contractors | ❌ Missing work-for-hire / IP assignment | Contractor IP defaults to contractor, not company | Execute IP assignment addenda for all contractors |
| Employee-developed IP | Employees | 🟡 In offer letter? | Confirm IP assignment in employment agreements | Review offer letters |

---

## Open Source License Compliance (OpenFang, Software Products)

| Dependency | License | Obligation | Risk | Action |
|----------|---------|-----------|------|--------|
| serde (Rust) | MIT / Apache 2.0 | Attribution | ✅ Low | Include license notices |
| tokio (Rust) | MIT | Attribution | ✅ Low | Include license notices |
| openssl | OpenSSL License | Attribution + No GPL mixing | 🟡 Medium | Confirm no GPL contamination |
| [GPL dependency] | GPL v2/v3 | COPYLEFT — infectious | 🔴 High | Remove or comply with copyleft |

---

## Trademark Monitoring

| Mark | Monitoring Active? | Monitoring Service | Last Review | Recent Conflicts |
|------|----------------|-----------------|-----------|----------------|
| MBL Partners | ❌ No formal monitoring | — | — | Unknown |
| Allevio | ❌ | — | — | Unknown |
| OpenFang | ❌ | — | — | Unknown |

**Recommendation:** Set up USPTO TESS alerts and common-law monitoring for all registered/pending marks.

---

## IP Protection Action Plan

| Priority | Action | Asset | Owner | Due | Est. Cost |
|--------|--------|-------|-------|-----|---------|
| Critical | Execute IP assignment agreements for all contractors with IP | All contractor-built software | Dr. Lewis + Outside Counsel | 30 days | Legal time |
| Critical | Confirm employee IP assignment in offer letters | All entities | HR + Outside Counsel | 30 days | Legal review |
| High | File trademark for "OpenFang" if pursuing commercial use | OpenFang | Dr. Lewis | Q2 | $350 + filing |
| High | File trademark for "HIVE Partners" if not yet registered | HIVE | Legal | Q2 | $350 |
| Medium | Set up trademark monitoring for MBL/Allevio/OpenFang | All marks | IP Counsel | Q3 | $1-2K/yr |
| Medium | GPL license audit of all Rust dependencies | OpenFang | Dr. Lewis | Q2 | Internal |
```

## Output Contract
- IP assignment gaps always flagged as Critical — missing assignment means the company may not own its own IP, which is fatal in M&A
- Open source license compliance always assessed for software products — GPL contamination is a deal-killer in M&A
- Contractor IP always assessed — work-for-hire doctrine does not apply to independent contractors; written IP assignment required
- OpenFang always assessed — primary technical IP asset; entity and ownership must be clear
- HITL required: Dr. Lewis reviews IP audit; IP counsel reviews trademark and patent matters; Matt Mathison approves significant IP investments (patent filings, trademark registration programs); all IP assignments signed by both parties

## System Dependencies
- **Reads from:** USPTO TESS (trademark search), patent databases, GitHub (codebase ownership), employment and contractor agreements (provided)
- **Writes to:** IP inventory (maintained by Dr. Lewis / IP counsel)
- **HITL Required:** IP counsel for registrations; Dr. Lewis reviews strategy; Matt Mathison for significant IP investment decisions

## Test Cases
1. **Golden path:** Annual IP audit for MBL portfolio → OpenFang trademark not registered (file immediately), contractor who built Allevio patient portal feature missing IP assignment (execute retroactive assignment), GPL dependency found in OpenFang (evaluate: remove or comply with GPL copyleft), all employee offer letters have IP assignment clause
2. **Edge case:** M&A buyer asks for IP chain-of-title for Allevio software → trace every line of code: employees (IP assignment via offer letter), contractors (work-for-hire / written assignment), open source (license compliance); any gap reduces deal value or creates reps/warranties risk
3. **Adversarial:** Contractor claims they own code they wrote for Column6 because "I wrote it on my own time" → review contractor agreement for IP assignment clause; if missing, negotiate assignment; if unresolvable, assess how much of the codebase is affected and consider rewrite vs. legal action

## Audit Log
IP inventory maintained annually. Registration filings documented. IP assignment agreements retained permanently. Open source license assessments retained by software version.

## Deprecation
Retire when entity deploys a dedicated IP management platform (CPA Global, Anaqua) with automated renewal tracking and open source compliance scanning (FOSSA, Black Duck).
