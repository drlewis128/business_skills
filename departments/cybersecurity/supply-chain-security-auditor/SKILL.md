---
name: supply-chain-security-auditor
description: "Audit software and vendor supply chain security. Use when the user says 'supply chain security', 'software supply chain', 'SBOM', 'dependency security', 'vendor supply chain', 'open source risk', 'dependency vulnerabilities', 'SolarWinds-type attack', 'third-party software security', or 'software bill of materials'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--scope <software|vendor|both>] [--project <project-name>]"
---

# Supply Chain Security Auditor

Audit software and vendor supply chain security. Supply chain attacks (SolarWinds, Log4Shell, XZ Utils) compromise the tools organizations trust, not the organizations themselves. For MBL AI systems (OpenFang, Krista.ai), open-source dependencies in Rust, Python, and Node.js create a software supply chain risk that must be managed. For the broader portfolio, vendor supply chain (a breach at a trusted SaaS vendor) is the other major vector.

## When to Use
- Auditing dependencies in OpenFang or other MBL software projects
- After a major software supply chain incident is announced (Log4j-style)
- Annual vendor supply chain review
- Before a new library or framework is adopted
- When a vendor announces a breach affecting their software

## Software Supply Chain Risks

| Risk | Example | Detection | Mitigation |
|------|---------|----------|----------|
| **Vulnerable dependency** | Log4Shell — widely used Java library had RCE | Dependency scanner, CISA KEV | Keep dependencies updated; scan |
| **Malicious package** | Typosquatting — evil-lodash vs lodash | Package name verification | Pin versions; verify checksums |
| **Compromised library** | Maintainer account hijacked; malicious update pushed | Reproducible builds; hash verification | Pin to specific version + hash |
| **Abandoned library** | No security patches for a CVE | Dependency health check | Replace or maintain fork |
| **License risk** | GPL dependency in proprietary code | License scanner | License compliance check |

## Vendor Supply Chain Risks

| Risk | Example | Detection | Mitigation |
|------|---------|----------|----------|
| **SaaS vendor breach** | Breach at GoHighLevel affects MBL CRM data | Vendor breach announcement | Monitor vendor security, have IR plan |
| **Update mechanism compromised** | SolarWinds — update process used to distribute malware | Vendor integrity verification | Limit auto-update; verify signatures |
| **Vendor credential theft** | Attacker steals vendor's admin credentials, accesses customer tenants | Vendor SSO audit | Separate credentials; review vendor access |

## Output Format

```markdown
# Supply Chain Security Audit — <Entity / Project>
**Date:** <date> | **Scope:** Software / Vendor / Both
**Project (if software):** <project name>
**Auditor:** Dr. John Lewis

---

## Software Supply Chain Assessment

**Project:** OpenFang (Rust, 14 crates)

### Dependency Health

```bash
# Run to generate dependency audit
cargo audit                    # Check for known CVEs
cargo deny check              # License compliance + dependency policy
cargo outdated                # Find outdated dependencies
```

| Check | Result | Status |
|-------|--------|--------|
| cargo audit (CVEs) | 0 vulnerabilities | ✅ |
| cargo audit (warnings) | 2 yanked crates | 🟡 Update these |
| cargo deny (licenses) | 1 GPL-2.0 dep (risk if closed-source) | 🟡 Review |
| cargo outdated | 8 outdated dependencies (2 with security patches) | 🔴 Update now |

---

### Dependency Risk Assessment

| Crate | Version | Latest | CVEs | Downloads/Week | Maintained? | Action |
|-------|---------|--------|------|---------------|-----------|--------|
| tokio | 1.28 | 1.36 | 0 | 10M | ✅ Active | Update |
| serde | 1.0.190 | 1.0.205 | 0 | 15M | ✅ Active | Update |
| reqwest | 0.11 | 0.12 | 0 | 2M | ✅ Active | Update (API change) |
| some-old-crate | 0.3.1 | 0.3.1 | 1 (GHSA-xxxx) | 5K | ❌ Abandoned | Replace |

---

### SBOM (Software Bill of Materials)

**Generated:** `cargo sbom > sbom.json` (requires cargo-sbom)
**Format:** CycloneDX / SPDX
**Purpose:** Know exactly what's in your software; enables rapid response to new CVEs

**SBOM generation for audit:**
```bash
cargo install cargo-cyclonedx
cargo cyclonedx --format json > sbom-$(date +%Y%m%d).json
```

---

## Vendor Supply Chain Assessment

| Vendor | Software/Service Provided | Auto-Updates? | Breach History | Risk | Action |
|--------|--------------------------|-------------|--------------|------|--------|
| Microsoft | M365, Azure, Entra ID | ✅ (managed) | No recent breaches | Low | Monitor MSRC |
| Krista.ai | AI orchestration | 🟡 Version-pinned | None known | Medium | Pin version; monitor changelog |
| AdvancedMD | Allevio RCM (HIPAA) | 🟡 Manual approval | None known | Medium | Require security notification in contract |
| GoHighLevel | CRM SaaS | N/A (SaaS) | No known breaches | Low-Medium | Monitor security advisories |

---

## Critical Findings

| Finding | Severity | Action | Owner | Due |
|---------|---------|--------|-------|-----|
| Abandoned crate with CVE in OpenFang | High | Replace crate; vendor has no patch | Dr. Lewis / Developer | 7 days |
| 2 yanked crates still in use | Medium | Update to supported version | Developer | 30 days |
| GPL dependency in OpenFang (license risk) | Medium | Legal review if shipping closed-source | Dr. Lewis + Legal | 30 days |

---

## Incident Response (Vendor Breach)

**If a critical vendor announces a security breach:**

1. Immediately assess: Was MBL/entity data in scope?
2. Contact vendor for breach details and affected data types
3. If PHI (Allevio) involved: HIPAA breach assessment begins
4. If credentials involved: Rotate all shared credentials with the vendor
5. If software supply chain: Assess if the breach affected software you deployed
6. Dr. Lewis + Legal notified within 24 hours for Tier 1 vendor breach
```

## Output Contract
- Software dependency CVEs always mapped to remediation actions — "scan and report" without fixing is security theater
- Vendor supply chain always assessed alongside software — both vectors matter
- SBOM always recommended for any MBL software project — enables rapid response to new CVEs
- Abandoned dependencies always flagged — no security patches coming means CVE accumulation
- HITL required: Dr. Lewis reviews supply chain findings; developer implements dependency updates; Legal reviews license findings; Allevio compliance officer for any vendor breach affecting PHI

## System Dependencies
- **Reads from:** Cargo.toml / package.json / requirements.txt, vendor contracts, vendor security advisories (provided)
- **Writes to:** Nothing (audit report for HITL review and developer action)
- **HITL Required:** Dr. Lewis reviews findings; developer implements; Legal reviews licenses; Allevio compliance officer for PHI vendor breaches

## Test Cases
1. **Golden path:** OpenFang dependency audit → `cargo audit` finds 0 CVEs, `cargo outdated` finds 8 outdated, 1 abandoned crate → update outdated (automated via `cargo update`), replace abandoned crate within 7 days
2. **Edge case:** New zero-day CVE announced in a widely-used Rust crate (tokio/serde equivalent) → immediately run `cargo audit`, identify if affected, patch within 24-48 hours for Critical/High, communicate to Dr. Lewis
3. **Adversarial:** Developer argues "these are just warnings, not real vulnerabilities" → "warnings" include yanked crates (often due to security issues) and outdated crates with pending patches; supply chain attacks start as "just warnings" until they're actively exploited

## Audit Log
Supply chain audits retained by project and date. Dependency update actions documented. SBOM snapshots retained. Vendor breach responses documented.

## Deprecation
Retire manual supply chain auditing when Dependabot or Renovate Bot is configured for automated dependency updates with security-first PR generation and `cargo deny` CI enforcement.
