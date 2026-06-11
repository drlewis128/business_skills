---
name: network-segmentation-auditor
description: "Audit and design network segmentation controls. Use when the user says 'network segmentation', 'VLAN', 'network isolation', 'segment the network', 'east-west traffic', 'lateral movement prevention', 'network architecture review', 'firewall rules', or 'microsegmentation'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <audit|design|review>] [--depth <quick|thorough>]"
---

# Network Segmentation Auditor

Audit and design network segmentation controls. A flat network is an attacker's playground — once they compromise one system, they can reach everything. Network segmentation limits lateral movement: even if an attacker gets in, they can't pivot to your financial systems, PHI, or backup infrastructure. For MBL portfolio companies, the highest-value segmentation protects Allevio PHI systems and backup infrastructure from the rest of the network.

## When to Use
- Auditing current network architecture for segmentation gaps
- Designing network segmentation for a new environment
- After a ransomware incident that revealed lateral movement
- Before a pen test — limit what the tester can reach from a compromised endpoint
- SOC 2 or HIPAA audit — network controls are a required domain

## Segmentation Zones (MBL Portfolio Model)

| Zone | What Belongs Here | Who Can Access | Key Controls |
|------|-----------------|--------------|-------------|
| **Corporate user** | Employee workstations, laptops, BYOD | All employees | Internet-filtered, can reach corporate apps |
| **Server / infrastructure** | File servers, domain controllers, internal apps | IT staff only | No direct user access; server-to-server restricted |
| **Backup / recovery** | Backup servers, DR systems | IT admin only | Air-gapped / isolated from user and server zones |
| **PHI (Allevio)** | AdvancedMD, PHI-adjacent systems | Clinical staff + IT admin | Strictly isolated; HIPAA audit logging |
| **DMZ (externally facing)** | Web servers, email relay, VPN concentrator | External + internal (restricted) | Firewall on both sides; no lateral path inward |
| **Management / OOB** | Network gear, IPMI, admin consoles | IT admin only | Isolated; only accessible from management jump host |
| **Guest / BYOD** | Guest WiFi, BYOD personal traffic | Guests, BYOD | Internet only — no corporate resource access |

## Output Format

```markdown
# Network Segmentation Audit — <Entity>
**Date:** <date> | **Scope:** LAN / WiFi / Cloud / All
**Auditor:** IT Manager / Dr. John Lewis

---

## Current Architecture Assessment

### Network Zones

| Zone | Exists? | Enforcement | Notes |
|------|---------|-----------|-------|
| Corporate user | ✅ Yes | VLAN 10 | User devices on flat VLAN |
| Server / infrastructure | ✅ Yes | VLAN 20 | Separate from users |
| Backup / recovery | ❌ No | Same as servers | 🔴 Backup accessible from user network |
| PHI (Allevio) | ❌ No | Same as corporate | 🔴 HIPAA gap — PHI not isolated |
| DMZ | ✅ Yes | VLAN 30 | External services separated |
| Management / OOB | ❌ No | Accessible from user network | Medium risk |
| Guest WiFi | ✅ Yes | Separate SSID | OK — internet only |

---

## Firewall Rule Assessment

| Source Zone | Destination Zone | Current Access | Recommended | Risk |
|-----------|----------------|--------------|-----------|------|
| Corporate user (VLAN 10) | Server (VLAN 20) | ✅ Full access | Restrict to required ports only | Medium |
| Corporate user (VLAN 10) | Backup (same VLAN) | ✅ Full access | ❌ Isolate — no user access to backups | 🔴 Critical |
| Server (VLAN 20) | Corporate user (VLAN 10) | ✅ Full | Restrict to response traffic only | Medium |
| PHI systems | Corporate (VLAN 10) | ✅ Accessible from all users | ❌ Restrict to clinical staff only | 🔴 Critical |
| Guest (VLAN 99) | Corporate (any) | ❌ Blocked | ✅ Correct | None |

---

## Critical Gaps

| Gap | Risk | Remediation | Effort | Priority |
|-----|------|------------|--------|---------|
| Backups on same network segment as users | Ransomware can encrypt backups | Create dedicated backup VLAN; firewall rule — server-to-backup only | Medium | Critical |
| PHI systems not isolated | HIPAA — unauthorized access to PHI | Create Allevio VLAN; restrict to clinical staff + IT admin | Medium-High | Critical |
| No management network | Admin interfaces accessible from corporate | Create OOB management VLAN; firewall to admin jump host only | Low-Medium | High |
| No firewall between user and server VLANs | Lateral movement unimpeded | Implement inter-VLAN firewall rules on core switch / next-gen firewall | Medium | High |

---

## Segmentation Design (Recommended)

```
Internet
    │
    ↓
[Next-Gen Firewall]
    │
    ├── VLAN 30 (DMZ) — Web servers, VPN, email relay
    │       [Firewall rules: Internet ↔ DMZ; DMZ → Corp (restricted)]
    │
    ├── VLAN 10 (Corporate User) — Laptops, workstations
    │       [Can reach: Corporate apps, Internet (filtered)]
    │       [Cannot reach: Servers directly, Backup, PHI, Mgmt]
    │
    ├── VLAN 20 (Servers) — File servers, DC, internal apps
    │       [Can reach: Backup (backup traffic only)]
    │       [Cannot initiate to: User VLAN]
    │
    ├── VLAN 40 (PHI — Allevio) — AdvancedMD, clinical systems
    │       [Can reach: AdvancedMD API, Internet (filtered)]
    │       [Accessible from: Clinical staff + IT admin only]
    │
    ├── VLAN 50 (Backup) — Backup servers, DR
    │       [No inbound from user network — server push only]
    │       [Accessible from: IT admin only (via management VLAN)]
    │
    ├── VLAN 60 (Management) — Network gear, IPMI, admin consoles
    │       [Accessible from: Jump host only]
    │
    └── VLAN 99 (Guest/BYOD) — Guest WiFi, BYOD
            [Internet only — no corporate access]
```

---

## Pen Test Results (If Available)

| Finding | Source Zone | Destination Reached | Severity | Remediated? |
|---------|-----------|-------------------|---------|-----------|
| Lateral movement from HW-015 to SRV-001 | Corporate user | Server — no firewall | High | In progress |
| Backup accessible from user endpoint | Corporate user | Backup VLAN | Critical | In progress |
```

## Output Contract
- Backup isolation always flagged as Critical — ransomware encrypting backups is a catastrophic outcome
- PHI isolation always flagged as Critical for Allevio — HIPAA requires technical safeguards preventing unauthorized access
- Firewall between all zones always recommended — VLANs without inter-VLAN firewall rules are not real segmentation
- Jump host for management access always recommended — prevents direct access to admin interfaces
- HITL required: IT Engineer designs and implements; Dr. Lewis reviews architecture; Allevio compliance officer approves PHI zone design; IT Manager tests rules before production

## System Dependencies
- **Reads from:** Network architecture, firewall rules, switch configuration, VLAN assignments (provided by IT)
- **Writes to:** Segmentation design (IT Engineer implements)
- **HITL Required:** IT Engineer implements; Dr. Lewis reviews design; Allevio compliance officer for PHI zone; IT Manager validates before production

## Test Cases
1. **Golden path:** Network audit → backup segment on same VLAN as users (Critical — fix), PHI not isolated (Critical — HIPAA), no management VLAN (High); segmentation design delivered, IT Engineer implements backup VLAN and Allevio PHI VLAN within 30 days
2. **Edge case:** Cloud-only environment (no on-prem network) → network segmentation is at the Azure Virtual Network level; NSG rules, VNet peering restrictions, Private Endpoints, and Azure Firewall replace physical VLAN segmentation
3. **Adversarial:** IT vendor says "VLANs are enough — we don't need inter-VLAN firewall rules" → VLANs without firewall rules are Layer 2 separation only; any device with a trunk port or misconfigured switch can reach all VLANs; Layer 3 inter-VLAN firewall rules are required for meaningful segmentation

## Audit Log
Network segmentation assessments retained by entity and date. Firewall rule changes documented. PHI zone controls documented for HIPAA.

## Deprecation
Retire when entity deploys next-gen firewall with automated policy enforcement, microsegmentation platform, or SD-WAN with embedded segmentation controls.
