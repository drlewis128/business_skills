---
name: it-network-manager
description: "Manage network infrastructure and connectivity. Use when the user says 'network management', 'network', 'firewall', 'VPN', 'wifi', 'network security', 'network performance', 'network topology', 'internet connectivity', 'bandwidth', 'network monitoring', 'router', 'switch', 'network infrastructure', 'network audit', 'network configuration', or 'connectivity issues'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--location <office address>] [--action <audit|configure|troubleshoot|plan>]"
---

# IT Network Manager

Manage network infrastructure at MBL portfolio company office locations — covering network topology, firewall configuration, VPN, Wi-Fi, network security, and connectivity monitoring. The network is the foundational layer beneath everything else: if the network is down or misconfigured, every SaaS tool, every cloud resource, and every communication tool stops working. Network management at portfolio scale is about keeping things simple, secure, and well-documented so that problems can be diagnosed quickly.

## When to Use
- A new office location needs network infrastructure designed or installed
- Network performance is slow or intermittent for employees
- A security review of firewall and Wi-Fi configuration is needed
- VPN is needed for remote access to company resources
- A network incident is being investigated (intrusion, unusual traffic, outage)
- Annual network audit — is the current setup adequate and secure?

## Network Management Framework

```
Network architecture for portfolio companies (right-sized):
  ISP → Firewall/Router → Core switch → Access switches/WAPs → Endpoints
  
  For small offices (<20 users): All-in-one firewall + router + WAP may be sufficient
  For mid-size offices (20-100 users): Dedicated firewall, managed switches, separate WAPs
  
  Recommended hardware for MBL portfolio scale:
    Firewall: Fortinet FortiGate (small office) or Cisco Meraki MX (cloud-managed)
    Wi-Fi: Ubiquiti UniFi or Meraki MR — managed, not consumer-grade
    Switches: Managed switches only — unmanaged switches are a security risk
    
Network security baseline:
  Firewall: Stateful inspection; deny-by-default outbound policy; IPS enabled
  Wi-Fi: WPA3 encryption (or WPA2-AES minimum); separate SSIDs for corporate and guest
  Guest Wi-Fi: Isolated from corporate network — guests cannot reach internal resources
  VPN: Site-to-site for connected locations; remote access VPN for remote workers
  Network segmentation: Clinical devices (Allevio) on separate VLAN from admin devices
  
  Prohibited: Default router/switch passwords; WEP or WPA (old encryption); open Wi-Fi
  
DNS and security filtering:
  DNS filtering (e.g., Cisco Umbrella, Cloudflare Gateway) blocks malicious domains
  Protects against phishing, malware C2 communication, and risky content
  Cost: Cloudflare Gateway = free; Cisco Umbrella = ~$22/user/year
  
VPN for remote access:
  Use case: Employees who need access to on-prem resources from home/travel
  Recommended: Azure VPN Gateway (if Azure-connected); OpenVPN; or Fortinet FortiClient
  MFA required on VPN — credentials alone are insufficient
  Split tunneling: Only route corporate traffic through VPN; personal traffic bypasses
  
Network segmentation at Allevio (HIPAA):
  Medical devices and clinical workstations: Separate VLAN from admin/business devices
  ePHI traffic segmented and encrypted
  Guest Wi-Fi: Never on clinical VLAN
```

## Output Format

```markdown
# Network Management Report — <Company Name> — <Location>
**Date:** [Date] | **Location:** [Office address]
**Network hardware:** [Firewall make/model, WAPs, switches]
**ISP:** [Provider] | **Circuit type:** [Fiber/Cable/MPLS] | **Bandwidth:** [X Mbps up/down]
**Prepared by:** Dr. John Lewis

---

## Network Topology

```
[Simple ASCII diagram or description]
ISP (Comcast Business 500/500 Mbps) → FortiGate 60F → UniFi Switch 24 → [endpoints]
                                                       → UniFi APs (3) — Corp SSID + Guest SSID
                                                       → Medical VLAN (Allevio clinical devices)
```

---

## Security Configuration Audit

| Control | Status | Risk | Action |
|---------|--------|------|--------|
| Firewall firmware current | ✅ / 🔴 [Version X — X months old] | High | Update this week |
| Default passwords changed | ✅ / 🔴 Default | Critical | Change immediately |
| WPA3 or WPA2-AES on corporate Wi-Fi | ✅ / 🔴 WPA (outdated) | High | Update Wi-Fi encryption |
| Guest Wi-Fi isolated from corporate | ✅ / 🔴 Not isolated | High | Configure VLAN separation |
| DNS filtering enabled | ✅ / 🟡 Not configured | Medium | Enable Cloudflare Gateway |
| VPN MFA enforced | ✅ / 🔴 Password only | High | Enable MFA on VPN |
| Clinical devices on separate VLAN (Allevio) | ✅ / 🔴 Shared network | High | Segment PHI network |
| Firewall deny-by-default (outbound) | ✅ / 🟡 Allow-all outbound | Medium | Review outbound rules |

**Critical findings (immediate remediation):** [N items]

---

## Network Performance

| Metric | Current | Target | Status |
|--------|---------|--------|--------|
| WAN uptime (30-day) | [X%] | >99.5% | 🟢/🟡/🔴 |
| Average WAN latency | [X ms] | <20ms | |
| Peak bandwidth usage | [X% of capacity] | <70% | |
| Wi-Fi signal strength — problem areas | [Locations] | -70 dBm or better | |
| User-reported connectivity complaints | [N this month] | 0 | |

---

## Network Inventory

| Device | Model | Firmware | Location | Last rebooted | Status |
|--------|-------|---------|---------|-------------|--------|
| Firewall | FortiGate 60F | v7.4.3 | Server closet | [Date] | 🟢 |
| Switch-1 | UniFi Switch 24 | v6.5.59 | Server closet | [Date] | 🟢 |
| WAP-1 | UniFi U6-Pro | v6.5.28 | Lobby | [Date] | 🟢 |
| WAP-2 | UniFi U6-Lite | | Conference | | 🟡 Firmware out of date |

---

## Open Items

| Issue | Priority | Action | Owner | Deadline |
|-------|---------|--------|-------|---------|
| [Guest Wi-Fi not isolated] | 🔴 High | Configure VLAN separation in firewall | Dr. Lewis | 48 hours |
| [WAP-2 firmware outdated] | 🟡 Medium | Update to current firmware | Dr. Lewis | This week |
| [No DNS filtering] | 🟡 Medium | Enable Cloudflare Gateway (free) | Dr. Lewis | This week |

---

## Matt Mathison Brief (if critical security finding or infrastructure cost >$5K)

[Company] network at [Location]: [Key finding]. [Action underway].
```

## Output Contract
- Network security misconfigurations are not deferred — a firewall running default credentials, an open guest Wi-Fi that reaches corporate resources, or an out-of-date firewall firmware are immediate remediation items; these are the configurations that enable unauthorized network access; they are fixed the day they are discovered, not scheduled for next quarter
- Clinical network segmentation at Allevio is a HIPAA control — medical devices and clinical workstations that process ePHI must be on a network segment that is isolated from general business traffic; this is a security and compliance requirement, not a nice-to-have; a clinical device on an unsegmented network means a compromised admin laptop can reach ePHI-processing clinical devices
- VPN requires MFA — remote access VPN that accepts username + password without MFA is a common entry point for credential-based attacks; if an employee's VPN credentials are phished or breached, MFA prevents the attacker from using them; this is non-negotiable and applies to all remote access methods
- ISP redundancy is evaluated for critical locations — a single ISP connection is a single point of failure; for Allevio clinical locations, LTE failover (a 4G/5G backup connection that activates if the primary ISP fails) should be evaluated; this is a business decision, not an IT decision — it has a cost and a business value based on the cost of downtime
- HITL required: Dr. Lewis configures all network infrastructure; firewall rule changes require Dr. Lewis; new SSID or VLAN creation by Dr. Lewis; VPN MFA configuration by Dr. Lewis; new network hardware purchases >$1K need Dr. Lewis approval; >$5K needs CEO; >$25K needs Matt Mathison

## System Dependencies
- **Reads from:** Firewall management console, WAP controller (UniFi/Meraki), ISP portal, network monitoring tools, DHCP logs
- **Writes to:** Network diagram and documentation (SharePoint/Ops/<Company>/IT/Network/); firewall configuration; network change log; incident records
- **HITL Required:** Dr. Lewis configures all network infrastructure; firewall rule changes by Dr. Lewis; VPN changes by Dr. Lewis; >$1K hardware by Dr. Lewis; >$5K by CEO; >$25K by Matt Mathison

## Test Cases
1. **Golden path:** Allevio new clinic network setup (12-user clinic) → ISP: Comcast Business 500/500 installed by ISP; Firewall: FortiGate 60F (PoE); Switch: UniFi 16-port managed; WAPs: 2 UniFi U6-Lite; VLANs: Corp (desktops, admin), Medical (2 clinical workstations + AdvancedMD check-in tablet), Guest (patient waiting room Wi-Fi); Firewall: deny-by-default outbound; IPS enabled; DNS filtering via FortiDNS; Guest VLAN → internet only; Medical VLAN → AdvancedMD only + internet; VPN: FortiClient for remote access, MFA enforced; Firmware: all current on setup day ✅; Documentation: topology diagram, IP scheme, password manager entry for all credentials ✅
2. **Edge case:** Employee reports intermittent Wi-Fi dropping every 20-30 minutes → Diagnose: check WAP logs for disconnects; check for channel interference (run Wi-Fi spectrum scan); check client DHCP lease logs; check for "sticky client" behavior (device not roaming properly between WAPs); most likely cause: channel overlap with neighboring Wi-Fi networks → set channels to auto or manually select non-overlapping channels (1, 6, 11 for 2.4GHz); also check WAP firmware for known roaming bugs; resolution typically takes 1-2 hours of diagnosis + configuration change
3. **Adversarial:** "IT auditors want a full network penetration test — can the current setup pass?" → Before engaging external penetration testers, conduct an internal baseline review first: Are default credentials changed? Is firmware current? Is guest Wi-Fi isolated? Is VPN MFA enforced? Is DNS filtering enabled? These are the low-hanging fruit that external pentesters will find in the first 30 minutes; fix them before the pentest; then engage a reputable firm for external penetration testing (1-2 days, ~$3-5K) and internal network pentest; deliver results to Matt Mathison with remediation plan

## Audit Log
Network topology documentation retained and versioned. Firewall configuration exported and retained. Security audit findings retained. Firmware update log retained. Network incidents and root cause retained. Wi-Fi credentials in password manager (not in plaintext documents). VPN access logs retained 90 days.

## Deprecation
Retire when portfolio companies have dedicated IT network engineers who manage network infrastructure — with Dr. Lewis receiving quarterly network health reports rather than running the network management program. Clinical VLAN requirements and HIPAA segmentation requirements remain permanent.
