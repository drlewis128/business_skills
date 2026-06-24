---
name: sec-network-security-monitor
description: "Monitor and secure network infrastructure for MBL portfolio companies. Use when the user says 'network security', 'network monitoring', 'firewall', 'firewall rules', 'firewall configuration', 'network segmentation', 'VLAN', 'network access control', 'router security', 'switch security', 'network hardening', 'network scan', 'network traffic', 'intrusion detection', 'IDS', 'intrusion prevention', 'IPS', 'network anomaly', 'unusual network traffic', 'suspicious traffic', 'DNS security', 'DNS filtering', 'content filtering', 'web filtering', 'network policy', 'port security', 'open ports', 'exposed ports', 'network diagram', 'network architecture', 'network documentation', 'remote access', 'VPN', 'VPN security', 'site-to-site VPN', 'remote desktop', 'RDP security', 'RDP exposed', 'network access', 'clinic network', 'Allevio network', 'medical network', 'wireless network', 'network security policy', 'network audit', or 'network baseline'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <assess|harden|monitor|document>] [--scope <firewall|dns|vpn|segmentation>]"
---

# Sec Network Security Monitor

Monitor and secure network infrastructure for MBL portfolio companies — assessing and hardening the network controls (firewalls, DNS filtering, segmentation, remote access) that control what traffic enters and exits entity networks. For cloud-first organizations like MBL's portfolio, the "network" is a hybrid of on-premises clinic networks (Allevio) and cloud services; network security means both the traditional perimeter controls and the cloud network policies that protect SaaS connectivity.

## When to Use
- Reviewing and hardening firewall and router configurations
- Implementing DNS filtering to block malicious domains
- Assessing remote access security (VPN; RDP)
- Documenting network architecture for a new entity

## Network Security Framework

```
MBL PORTFOLIO NETWORK CONTEXT:

  MBL HoldCo (primarily cloud/remote):
    No significant on-premises network infrastructure
    Network security = M365/cloud security + endpoint controls + DNS filtering
    Primary concern: home office networks of employees (beyond MBL control; mitigate with VPN)
    
  Allevio (clinic network — on-premises):
    Physical network at clinic locations
    Connected systems: workstations; clinical equipment; printers; AdvancedMD (cloud SaaS)
    Key concerns: unsecured medical devices; flat network (no segmentation); open RDP
    HIPAA physical safeguard: facility access controls extend to network access
    
  Column6 (remote-first; cloud):
    Similar to MBL HoldCo; cloud-first; minimal on-premises
    Primary concern: CTV delivery infrastructure security if self-hosted
    
  HIVE (remote-first; Covercy cloud):
    Cloud-first; minimal on-premises
    Primary concern: secure access to Covercy; financial system access controls

NETWORK SECURITY CONTROLS (ordered by impact):

  1. FIREWALL (perimeter protection):
     Allevio clinic: router/firewall at clinic location; block inbound connections by default
     Rules: allow only specific outbound services (AdvancedMD; M365; Marshall; approved)
     Block: inbound RDP (Remote Desktop Protocol) from internet — common ransomware vector
     Block: inbound telnet; FTP; SMBv1 — obsolete and dangerous
     Review: quarterly — are firewall rules still needed and correct?
     
  2. DNS FILTERING (block malicious domains):
     Free options: Cloudflare for Teams (Gateway — DNS filtering; free tier for small orgs)
     Microsoft Defender for Business includes DNS/web protection on endpoints
     What it blocks: phishing sites; malware C2 domains; known malicious IPs
     Allevio: DNS filtering on clinic network blocks clinical staff from reaching phishing sites
     All entities: endpoint DNS filtering via Defender for Business settings
     
  3. NETWORK SEGMENTATION (limit lateral movement):
     Concept: separate networks for different purposes; compromise in one segment ≠ full access
     Allevio clinic:
       VLAN 1 — Clinical workstations (AdvancedMD access)
       VLAN 2 — Medical devices (printers; scanners; any connected clinic equipment)
       VLAN 3 — Guest/personal devices (no access to clinical systems)
     Simple segmentation: separate Wi-Fi SSID for guest/personal devices (most accessible)
     
  4. REMOTE ACCESS SECURITY:
     VPN: for employees accessing clinic systems remotely; enforce MFA on VPN
     Never expose RDP to internet: if remote desktop is needed, access only through VPN
     Alternative: Azure Virtual Desktop or remote support tool (Splashtop; TeamViewer Business)
       with MFA and session logging
     RDP on internet (port 3389 open): is a P0 security issue — remediate within 24 hours
     
  5. WIRELESS NETWORK SECURITY:
     WPA3 preferred; WPA2 minimum (WEP and WPA are obsolete and insecure)
     Guest network: separate SSID with no access to internal resources
     Password rotation: change Wi-Fi password quarterly (for networks with PHI access)
     Allevio: clinical Wi-Fi uses WPA2-Enterprise (individual credentials) if possible;
              otherwise WPA2 with strong pre-shared key rotated quarterly
     See also: sec-wireless-security-auditor
     
  6. NETWORK DOCUMENTATION:
     Simple network diagram: IP ranges; VLANs; key devices; internet gateway; WAN
     Device inventory: all network-connected devices (workstations; printers; routers; switches)
     Firewall rules: documented; owner; purpose; last reviewed
     Why: incident response requires network diagram; unauthorized devices easier to spot

NETWORK MONITORING (what to watch):
  Firewall logs: review weekly for blocked inbound connections from unusual countries
  DNS logs (if DNS filtering enabled): review weekly for blocked domain categories
  Unusual traffic: large outbound data transfers; connections to new external IPs at unusual hours
  New devices on network: MDM (Intune) shows all managed devices; unknown devices = investigate
  Monthly check: run internal vulnerability scan (sec-vulnerability-scanner) to confirm network posture
```

## Output Format

```markdown
# Network Security Assessment — [Entity] | [Date]
**Network type:** [Cloud-first / Clinic on-premises / Hybrid]

---

## Control Status
| Control | Status | Finding | Priority |
|---------|--------|---------|---------|
| Firewall rules reviewed | ✅/⚠️/❌ | [Finding] | |
| DNS filtering active | ✅/⚠️/❌ | | |
| RDP not exposed to internet | ✅/⚠️/❌ | | P0 if ❌ |
| Network segmentation | ✅/⚠️/❌ | | |
| VPN with MFA for remote access | ✅/⚠️/❌ | | |
| Guest Wi-Fi separated | ✅/⚠️/❌ | | |
| Network diagram current | ✅/⚠️/❌ | | |

---

## Open Issues
| Issue | Severity | Action | Owner | Due |
|-------|---------|--------|-------|-----|
| RDP port 3389 open to internet | 🔴 P0 | Block immediately in firewall | IT | Today |
```

## Output Contract
- RDP exposed to the internet is a P0 security issue that requires same-day remediation — Remote Desktop Protocol (port 3389) exposed directly to the internet is one of the most commonly exploited attack vectors in ransomware campaigns; ransomware groups run automated scanners that identify internet-facing RDP services and attempt credential stuffing attacks; once they have RDP access, they have interactive access to the machine and can install ransomware at will; Dr. Lewis's protocol: if an external vulnerability scan or any monitoring identifies port 3389 (or custom RDP ports) exposed to the internet, IT blocks the port in the firewall within 2 hours; entity CEO notified same day; if the port was open because employees need remote desktop access, the solution is VPN (with MFA) and RDP only within the VPN; there is no business case that justifies internet-exposed RDP
- Network segmentation for Allevio's clinic network is a HIPAA physical and technical safeguard — flat networks (everything on one VLAN) mean that an attacker who compromises a printer, scanner, or personal device has a potential path to clinical workstations with PHI access; VLAN segmentation limits that path; the minimum segmentation Dr. Lewis implements for any Allevio clinic network: separate the guest Wi-Fi (personal devices; visitors) from the clinical workstation network; this alone significantly reduces the attack surface from compromised personal devices; full three-VLAN segmentation (clinical; medical devices; guest) is the target; most modern business routers support VLAN configuration without significant cost
- HITL required: firewall rule changes → Dr. Lewis approves; IT executes; entity CEO informed of any significant changes; RDP exposed to internet → P0; entity CEO notified within 4 hours; IT blocks immediately; network diagram creation → IT creates; Dr. Lewis reviews; entity CEO approves (contains sensitive network layout); VPN or remote access changes → Dr. Lewis approves; DNS filtering deployment → Dr. Lewis selects and configures; network segmentation design → Dr. Lewis designs; entity CEO approves (Allevio — clinic operations impact); network device changes (new router; firewall replacement) → entity CEO budget approval; Dr. Lewis security review

## System Dependencies
- **Reads from:** Firewall management console (rules; logs; blocked connections); DNS filtering console (Cloudflare Gateway or Defender — blocked domains; log); vulnerability scan results (sec-vulnerability-scanner — open ports; exposed services); network device inventory; M365 Admin Center (network access policies; Conditional Access); Intune (managed devices on network); network diagram (current); prior network security assessment
- **Writes to:** Network security assessment report (SharePoint → [Entity] → Security → Network-Security → [Date]); firewall rule documentation (SharePoint → [Entity] → IT → Network → Firewall-Rules → [Date]); network diagram (SharePoint → [Entity] → IT → Network → Network-Diagram-[Date]); entity CEO network security briefing (quarterly or when significant issue found); IT remediation tasks (Monday.com — firewall; DNS; VPN; segmentation tasks); P0 incident record (RDP exposed — sec-incident-responder)
- **HITL Required:** Firewall rule changes → Dr. Lewis approves + IT executes; RDP exposed → P0; entity CEO 4hr; IT blocks immediately; network diagram → IT creates; Dr. Lewis reviews; entity CEO approves; VPN/remote access changes → Dr. Lewis; DNS filtering → Dr. Lewis selects + configures; network segmentation design → Dr. Lewis + entity CEO (Allevio clinic impact); network device changes → entity CEO budget; Dr. Lewis security review

## Test Cases
1. **Golden path:** Monthly network security review for Allevio clinic. External scan confirms: no exposed RDP; no Telnet; no FTP; HTTPS only on employer portal ✅. DNS filtering (Cloudflare Gateway): active; blocked 47 malicious domain queries this month (phishing; malware C2) — no employee successfully reached those destinations ✅. Network segmentation: VLAN check — clinical VLAN and guest VLAN confirmed separate; medical device VLAN pending (2 printers still on clinical VLAN — scheduled for Q3 segmentation project). VPN: 3 employees using remote access; all connecting via VPN; MFA on VPN ✅. Firewall log: no unusual inbound connection patterns. Network diagram: last updated 3 months ago — needs update to reflect 2 new clinical workstations added. Actions: (1) Update network diagram (IT). (2) VLAN segregation for printers (Q3 project — remains on roadmap). Monthly report filed.
2. **Edge case:** New network scan discovers port 3389 (RDP) is open on one internal Allevio server: Dr. Lewis: "First, distinguish: is this port open to the internet (external-facing) or only on the internal network? Pull the external vulnerability scan — if 3389 shows up in the external scan, this is P0 immediate. If it's only on the internal network scan: it's still a risk (lateral movement; insider threat) but not an emergency. Assessment: (1) What is this server? Who accesses it via RDP? (2) Is this RDP needed? If for IT support only — replace with VPN + internal RDP, or use a remote support tool with session logging and MFA. (3) If internet-facing: block immediately; entity CEO notified. (4) If internal only: plan remediation within 30 days — reconfigure to only allow RDP from specific internal IPs (IT jump server); add MFA if possible; or eliminate RDP in favor of a remote support tool."
3. **Adversarial:** An employee sets up a personal Wi-Fi hotspot in the Allevio clinic "because the clinic Wi-Fi is slow": Dr. Lewis: "A personal hotspot in the clinic creates a shadow network that bypasses clinic network controls (DNS filtering; firewall; monitoring) and provides an unmonitored path for clinical workstations to access the internet if employees connect to it. This is a HIPAA physical and technical safeguard concern — we have no visibility into what transmits over that personal hotspot. Actions: (1) The personal hotspot should not be used for clinic work. (2) Address the root cause — why is the clinic Wi-Fi slow? IT diagnoses: channel congestion; bandwidth saturation; router placement. (3) If the clinic Wi-Fi genuinely needs improvement: entity CEO approves a better access point or bandwidth upgrade — typically $200-$500. (4) Update Acceptable Use Policy to explicitly prohibit personal hotspots for clinic work. (5) Communicate the policy to clinic staff from entity CEO."

## Audit Log
Network security assessment records (quarterly; entity; controls status; findings; Dr. Lewis review; entity CEO briefing; SharePoint). RDP exposure records (date found; source; entity CEO notification; IT remediation; confirmation; time to remediation). Firewall rule change records (rule; reason; Dr. Lewis approval; IT execution; date). DNS filtering records (deployed; blocked domain statistics monthly; Dr. Lewis review). Network segmentation records (current VLAN design; Allevio clinic; implementation dates; Dr. Lewis design; entity CEO approval). VPN access records (users; MFA requirement; access reviews quarterly — sec-iam-manager).

## Deprecation
Network security controls reviewed annually. Firewall rule review cadence updated when entity network complexity changes. DNS filtering tool reviewed annually (free tier availability; new tools). VPN standards updated when Microsoft or other platforms add better remote access alternatives. Allevio clinic VLAN design updated when clinic infrastructure changes. RDP policies reviewed if Microsoft releases RDP security improvements.
