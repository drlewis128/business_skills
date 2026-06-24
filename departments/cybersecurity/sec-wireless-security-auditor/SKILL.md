---
name: sec-wireless-security-auditor
description: "Audit and harden wireless network security for MBL portfolio companies. Use when the user says 'wireless security', 'Wi-Fi security', 'WiFi security', 'wireless audit', 'Wi-Fi audit', 'wireless network', 'Wi-Fi network', 'SSID', 'WPA', 'WPA2', 'WPA3', 'wireless password', 'Wi-Fi password', 'wireless encryption', 'wireless access point', 'access point', 'router wireless', 'guest Wi-Fi', 'guest wireless', 'corporate wireless', 'wireless policy', 'wireless configuration', 'Wi-Fi configuration', 'rogue access point', 'unauthorized access point', 'wireless intrusion', 'wireless coverage', 'clinic wireless', 'medical wireless', 'Allevio wireless', 'wireless network audit', 'WPS', 'wireless protected setup', 'WLAN', 'wireless LAN', 'wired equivalent privacy', 'WEP', 'wireless key', 'pre-shared key', 'PSK', 'EAP', 'RADIUS', 'wireless enterprise', 'WPA2 enterprise', 'WPA3 enterprise', 'wireless onboarding', 'wireless certificate', or 'captive portal'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--location <clinic|office|home>] [--action <audit|harden|report>]"
---

# Sec Wireless Security Auditor

Audit and harden wireless network security for MBL portfolio companies — assessing Wi-Fi configurations, enforcing WPA2/WPA3 standards, separating guest and corporate networks, and protecting clinic wireless networks that carry PHI. Wireless networks are often the weakest perimeter because they extend physically beyond the building and are accessible to anyone in proximity with the right credentials (or, if misconfigured, without them).

## When to Use
- Auditing wireless configurations at a new clinic or office location
- Reviewing Wi-Fi security posture as part of a network security assessment
- Responding to a suspected unauthorized access point
- Deploying or reconfiguring wireless at a new Allevio clinic location

## Wireless Security Audit Framework

```
WIRELESS SECURITY STANDARDS (MBL portfolio):

  Encryption protocol:
    WPA3: required on new access points (2021+ hardware supports WPA3)
    WPA2 (AES/CCMP): acceptable if hardware doesn't support WPA3
    WPA2 TKIP: deprecated — disable; use AES only
    WPA (original): insecure — do not use
    WEP: insecure — do not use; replace hardware if WEP-only
    Open (no password): prohibited; any open SSID must be captive portal minimum
    
  Authentication type:
    Personal (Pre-Shared Key / PSK): WPA2-Personal or WPA3-Personal
      Acceptable for small environments; single password for all users
      Risk: password sharing; hard to revoke one user's access without changing for all
      
    Enterprise (802.1X / RADIUS): WPA2-Enterprise or WPA3-Enterprise
      Each user has individual credentials (M365 username/password + MFA)
      Preferred for Allevio clinical networks (individual accountability; easier user revocation)
      Requires RADIUS server (Microsoft Network Policy Server or cloud RADIUS service)
      Complexity: higher setup cost; worth it for environments with >10 users + PHI access
      
WIRELESS AUDIT CHECKLIST:
  
  1. Encryption: WPA2-AES or WPA3 on all SSIDs (no WPA-TKIP; no WEP; no open)
  2. Default credentials: router/AP admin password changed from factory default
  3. Network separation: clinical SSID ≠ guest SSID (separate VLANs)
  4. WPS disabled: Wi-Fi Protected Setup is insecure; disable on all access points
  5. Guest network: enabled; no access to internal resources (clinical systems; file shares)
  6. SSID broadcast: corporate SSID may be hidden (security through obscurity — not a sole control)
  7. Management access: AP admin interface accessible only from wired network; not from Wi-Fi
  8. Password strength: PSK ≥ 16 characters; random; rotated quarterly (clinical networks)
  9. Access point placement: APs placed to minimize signal leakage outside building
  10. Unauthorized AP detection: scan for rogue access points regularly (monthly)
  
WIRELESS NETWORK SEGMENTATION (Allevio clinic — required):
  
  SSID 1 — Clinical (corporate): clinical workstations only; VLAN = Clinical
    WPA2-Enterprise (preferred) or WPA2-Personal with strong PSK
    Grants: access to AdvancedMD; M365; internal clinical resources
    No: personal devices; guest devices
    
  SSID 2 — Guest: visitors; personal devices; non-clinical use
    WPA2-Personal (simple password acceptable; reset quarterly)
    Grants: internet access only — no access to clinical VLAN
    Captive portal optional (user agreement before internet access)
    
  SSID 3 — Medical Devices (optional — advanced):
    IoT devices; medical equipment with Wi-Fi; printers
    VLAN = Medical-Devices; isolated from Clinical VLAN
    No internet access unless required for device function
    
WPS (Wi-Fi Protected Setup) — DISABLE ON ALL APs:
  WPS has a documented vulnerability (WPS PIN brute-force) that allows network compromise
  in hours regardless of PSK strength; WPS is disabled on all MBL entity access points;
  verify in AP admin console: Wireless → WPS → Disable (or Advanced → Security → WPS: Off)
  
ROGUE ACCESS POINT DETECTION:
  Monthly: IT or Dr. Lewis scans local Wi-Fi environment for unexpected SSIDs
  Tools: Wi-Fi Analyzer (Android app; free); inSSIDer; Netspot
  Alert: an SSID resembling a corporate SSID ("MBL-Corp"; "Allevio" — not your SSID) is a
  potential evil twin attack or employee-created unauthorized hotspot
  Response: investigate immediately; if external attack: sec-incident-responder P1
  
HIPAA WIRELESS CONTEXT (Allevio):
  Wireless networks that transmit ePHI are subject to HIPAA technical safeguards
  Required: access controls on wireless (WPA2-Enterprise or WPA2-Personal + strong PSK)
  Required: transmission security (WPA2-AES or WPA3 = encryption in transit over Wi-Fi)
  HIPAA breach: unsecured wireless = potential unauthorized access to ePHI
  Device on clinical Wi-Fi = potential access to AdvancedMD if no additional access controls
```

## Output Format

```markdown
# Wireless Security Audit — [Entity] | [Location] | [Date]
**Auditor:** Dr. John Lewis | **Locations assessed:** [N clinics / offices]

---

## Wireless Control Status
| Control | Status | Finding | Priority |
|---------|--------|---------|---------|
| WPA2-AES or WPA3 on all SSIDs | ✅/⚠️/❌ | | |
| Default admin password changed | ✅/⚠️/❌ | | P0 if ❌ |
| WPS disabled | ✅/⚠️/❌ | | |
| Clinical/guest SSID separated | ✅/⚠️/❌ | | |
| Guest network isolated | ✅/⚠️/❌ | | |
| PSK strength (≥16 char) | ✅/⚠️/❌ | | |
| PSK rotation (quarterly) | ✅/⚠️/❌ | | |
| No unauthorized SSIDs detected | ✅/⚠️/❌ | | |

---

## Allevio HIPAA Wireless
- Clinical SSID: [WPA2-Enterprise / WPA2-Personal]
- PHI transmission encrypted: ✅/❌
- Clinical/guest isolation: ✅/❌
```

## Output Contract
- Default admin credentials on access points are a P0 finding — every consumer-grade and business access point ships with a default admin username and password (typically "admin"/"admin" or "admin"/"password" or printed on the device label); if the admin interface is accessible from the local network and default credentials were never changed, any device on the network can access the AP admin console and reconfigure or monitor the wireless network; for Allevio clinic networks where personal devices are occasionally connected (guest network), a default admin credential means a non-employee with guest Wi-Fi access could navigate to the AP admin IP (typically 192.168.1.1 or 192.168.0.1) and reconfigure the network; Dr. Lewis finds and changes default credentials during the initial wireless audit of every clinic location
- WPS disabled is a mandatory hard requirement — not a recommendation — for any wireless network where clinical workstations or clinical systems have access; the WPS PIN brute-force vulnerability (Reaver attack) can compromise a WPA2 PSK in hours even if the PSK is strong, long, and random; disabling WPS makes the PSK the sole attack surface (still requires brute-force against a strong PSK which is computationally infeasible at ≥16 random characters); WPS is commonly left enabled by default on consumer and prosumer access points; the audit step is to physically access the AP admin console and confirm WPS status in the security settings
- HITL required: wireless audit at new clinic location → Dr. Lewis conducts; entity CEO notified of findings; default credentials found → Dr. Lewis changes immediately; entity CEO briefed on remediation; WPS enabled → IT disables immediately; Dr. Lewis verifies; unsecured clinical SSID (WEP or WPA or open) → P0; Dr. Lewis + entity CEO; remediate before any clinical workstations reconnect; rogue AP detected → Dr. Lewis investigates; IT checks AP inventory; if external (not MBL equipment): P1 incident (sec-incident-responder); clinical/guest separation missing → Dr. Lewis designs VLAN separation; entity CEO informed (operational impact on clinic setup)

## System Dependencies
- **Reads from:** Access point admin consoles (each clinic location — admin interface; SSID list; WPS status; encryption protocol; admin credentials); Wi-Fi scanning tools (Wi-Fi Analyzer or equivalent — external SSID scan); network diagram (sec-network-security-monitor — AP placement; VLAN assignments); prior wireless audit report (trend analysis); Intune (managed devices on network — confirm which devices are on clinical SSID); entity clinic location list (how many locations; each assessed separately)
- **Writes to:** Wireless security audit report (SharePoint → [Entity] → Security → Network-Security → Wireless-Audit-[Date]); remediation task list (Monday.com — WPS; credentials; SSID separation; Dr. Lewis + IT; due dates); AP configuration documentation (SharePoint → [Entity] → IT → Network → AP-Config-[Location]); entity CEO wireless audit briefing (any critical or high findings); HIPAA wireless compliance record (Allevio — audit finding; WPA2-Enterprise or WPA2-Personal + PSK; clinical/guest separation; retained 6 years)
- **HITL Required:** Wireless audit → Dr. Lewis conducts; entity CEO notified; default credentials → Dr. Lewis changes immediately; entity CEO briefed; WPS enabled → IT disables; Dr. Lewis verifies; unsecured clinical SSID → P0; entity CEO; remediate before workstations reconnect; rogue AP → Dr. Lewis investigates; external rogue AP → P1 incident; clinical/guest separation missing → Dr. Lewis + entity CEO; AP admin password rotation → IT; Dr. Lewis verifies

## Test Cases
1. **Golden path:** Wireless audit for new Allevio clinic location (lease signed; Wi-Fi deployed by MSP). Dr. Lewis reviews: SSID 1 "Allevio-Clinical" — WPA2-Personal; PSK 20 characters (generated by Dr. Lewis in BitWarden); WPS: disabled ✅; AP admin password: changed from default ✅. SSID 2 "Allevio-Guest" — WPA2-Personal; simple guest password; WPS: disabled ✅; VLAN: Guest (no access to Clinical). Wi-Fi scan: only expected SSIDs visible — no unauthorized SSIDs. Document: WPA2-AES; WPS disabled; PSK strength ≥16 chars; clinical/guest separated. Recommendation: upgrade to WPA2-Enterprise within 6 months (RADIUS server needed — add to roadmap). HIPAA wireless compliance recorded.
2. **Edge case:** Wireless scan identifies an SSID named "Allevio-Free" that is not an MBL access point: Dr. Lewis: "Unknown SSID resembling our corporate name is a potential evil twin access point — an attacker positioned near the clinic broadcasting a fake Allevio SSID to capture credentials from employees who connect. P1 response: (1) Identify the source: use Wi-Fi Analyzer to determine BSSID (MAC address) and signal strength direction — which direction is the source? (2) Is it in the parking lot? A nearby office suite? (3) Do not connect any device to the unknown SSID. (4) Inform clinic staff: 'Do not connect to Allevio-Free — connect only to Allevio-Clinical with the clinic password.' (5) If we can determine the source (neighboring business; individual in parking lot): contact building management; potentially law enforcement. (6) sec-incident-responder activated. (7) Entity CEO notified. (8) Monitor for the SSID over the next week — if it disappears, it may have been a temporary test."
3. **Adversarial:** An IT vendor proposes deploying a "cloud-managed wireless system" for all Allevio clinic locations with a single admin account for all locations: Dr. Lewis: "Cloud-managed wireless is fine — that's how Cisco Meraki, Ubiquiti UniFi, and Aruba work, and they're good platforms. But a single admin account for all locations is a risk we need to address: (1) If that account is compromised, all clinic wireless networks are compromised simultaneously. (2) Require: the cloud management platform must support individual admin accounts with MFA (Entra SSO preferred). (3) Require: role-based access — an IT technician for Location A should not have management rights over Location B without explicit authorization. (4) Require: audit logs in the cloud management platform — who changed what configuration; when; from where. (5) Dr. Lewis and entity CEO get admin access; IT technicians get read-only or location-scoped access. This is a vendor contract negotiation point — we specify it in the SOW."

## Audit Log
Wireless audit records (entity; location; date; controls status; findings; Dr. Lewis; entity CEO briefed; SharePoint). Default credentials change records (location; AP model; changed by; date; new credentials in BitWarden; Dr. Lewis verification). WPS disable records (location; AP model; IT executes; Dr. Lewis verifies; date). Unsecured SSID remediation records (SSID; issue; remediation; date; Dr. Lewis verification; entity CEO briefed). Rogue AP records (SSID; BSSID; investigation; source; resolution; date; sec-incident-responder if applicable). HIPAA wireless compliance records (Allevio — per location; WPA2 standard; clinical/guest separation; Dr. Lewis; date; retained 6 years). PSK rotation records (SSID; date rotated; new PSK in BitWarden; users notified; Dr. Lewis; IT; date).

## Deprecation
Wireless audit checklist reviewed annually. WPA3 adoption target updated annually as AP hardware refresh occurs. WPA2-Enterprise deployment roadmap reviewed each year for Allevio clinic locations. Rogue AP detection tools reviewed if new scanning tools become available. Cloud-managed wireless platform security requirements reviewed when entities upgrade AP infrastructure.
