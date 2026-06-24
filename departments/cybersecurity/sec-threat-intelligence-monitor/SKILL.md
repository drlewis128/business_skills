---
name: sec-threat-intelligence-monitor
description: "Monitor threat intelligence relevant to MBL portfolio companies. Use when the user says 'threat intelligence', 'threat intel', 'threat feed', 'threat landscape', 'current threats', 'threat actor', 'threat group', 'ransomware', 'ransomware threat', 'new ransomware', 'malware threat', 'malware campaign', 'active campaign', 'phishing campaign', 'current phishing', 'active threat', 'active attack', 'attack campaign', 'CISA alert', 'CISA advisory', 'FBI alert', 'HHS alert', 'healthcare cyber threat', 'healthcare threat', 'MSO cyber threat', 'MSP threat', 'oil and gas cyber threat', 'energy sector threat', 'HIVE ransomware', 'critical infrastructure', 'cyber threat news', 'security news', 'vulnerability disclosure', 'zero day', '0-day', 'zero-day', 'exploit in the wild', 'actively exploited', 'CISA KEV', 'Known Exploited Vulnerability', 'CVE', 'CVE alert', 'NVD', 'National Vulnerability Database', 'threat briefing', 'executive threat briefing', 'are we at risk', 'threat landscape briefing', 'situational awareness', or 'MBL threat briefing'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive|all>] [--period <weekly|monthly|adhoc>] [--action <monitor|brief|assess|respond>]"
---

# Sec Threat Intelligence Monitor

Monitor threat intelligence relevant to MBL portfolio companies — tracking active campaigns, CISA alerts, healthcare-specific cyber threats, and newly exploited vulnerabilities to give Dr. Lewis advance warning before threats reach the MBL portfolio. Threat intelligence is the difference between reacting to a breach and proactively hardening before a threat arrives; for small organizations, the highest-ROI threat intelligence is free and publicly available.

## When to Use
- Weekly threat intelligence review to assess relevance to MBL entities
- Responding to a CISA alert or HHS healthcare cybersecurity advisory
- Preparing a threat briefing for entity CEO or Matt Mathison
- Assessing whether a new CVE or ransomware campaign affects MBL systems

## Threat Intelligence Framework

```
FREE THREAT INTELLIGENCE SOURCES (Dr. Lewis monitors):

  CISA (Cybersecurity and Infrastructure Security Agency):
    Known Exploited Vulnerabilities (KEV) Catalog: cisa.gov/known-exploited-vulnerabilities
      Updated when a CVE is confirmed actively exploited in the wild
      MBL protocol: any KEV affecting MBL systems bypasses normal patch SLA → patch immediately
      Check: weekly (subscribe to CISA email alerts at cisa.gov/subscribe-updates)
      
    CISA Alerts and Advisories: cisa.gov/cybersecurity-advisories
      High-priority alerts on active threats; ransomware advisories; sector-specific warnings
      Relevant sectors: Healthcare (#StopRansomware targeting hospitals/MSOs); Energy (HIVE context)
      
    CISA #StopRansomware advisories: specific ransomware group TTPs; IOCs; mitigations
    
  HHS Health Sector Cybersecurity Coordination Center (HC3):
    hhs.gov/hipaa/for-professionals/security/guidance/index.html
    HC3 Threat Briefs: healthcare-specific threat intelligence (ransomware targeting MSOs; EHR vendors)
    Relevant to Allevio: healthcare ransomware attacks; AdvancedMD vendor threats; MSO targeting
    Subscribe: CISA HC3 mailing list
    
  FBI Internet Crime Complaint Center (IC3):
    ic3.gov — annual Internet Crime Report; sector-specific advisories
    Relevant: BEC statistics; ransomware trends; healthcare sector targeting
    
  Microsoft Security Blog / MSRC:
    Microsoft Security Response Center: msrc.microsoft.com
    Monthly Patch Tuesday: second Tuesday of each month — new CVEs; Critical patches
    Microsoft Threat Intelligence: active campaigns using Office; M365; Windows vulnerabilities
    
  SANS Internet Storm Center: isc.sans.edu (daily threat diary)
  
THREAT RELEVANCE ASSESSMENT (for each threat intel item):

  Step 1 — Does it affect MBL systems?
    Is the vulnerable system in MBL's tech stack?
    (M365; Windows; Defender; AdvancedMD; Covercy; GoHighLevel; specific CVEs)
    If NO: low relevance; file for awareness only
    
  Step 2 — Is it actively exploited?
    CISA KEV? FBI advisory? Known in-the-wild exploitation?
    If YES: elevate urgency; patch within 24-72 hours regardless of patch schedule
    
  Step 3 — Which entities are affected?
    Does the threat target healthcare? → Allevio priority
    Does the threat target oil/gas/energy? → HIVE awareness
    Does the threat target SMB Windows + M365? → All entities
    
  Step 4 — What mitigation exists?
    Vendor patch available? Workaround? Detection signatures?
    If patch available: coordinate with IT on accelerated patch
    If no patch (zero-day): implement compensating controls; increase monitoring
    
MBL THREAT PROFILE (current known risks — update as threats evolve):

  RANSOMWARE (highest risk for all entities):
    MBL entities are SMB targets — ransomware groups increasingly target mid-market
    Allevio: healthcare ransomware (Akira; LockBit; BlackCat/ALPHV; RHYSIDA) target MSOs
    HIVE energy: ransomware targeting operational technology (not yet relevant — HIVE is data-only)
    Attack vectors: phishing (most common); exposed RDP (sec-network-security-monitor); unpatched vulns
    
  BUSINESS EMAIL COMPROMISE (BEC):
    All entities at risk; MBL HoldCo most targeted (PE/investment firms are high-value BEC targets)
    Matt Mathison and entity CEOs are high-value BEC targets ("whaling")
    Dr. Lewis monitors: any BEC campaigns specifically targeting PE firms reported by FBI/IC3
    
  CREDENTIAL THEFT:
    Phishing campaigns harvesting M365 credentials (AiTM phishing attacks bypassing MFA)
    Dark web credential dumps affecting entity domains (sec-dark-web-monitor)
    
  SUPPLY CHAIN:
    Vendor compromise (AdvancedMD; Covercy; Krista.ai vendors being compromised)
    Software supply chain (updates containing malware — monitor vendor security bulletins)

THREAT BRIEFING FORMAT (monthly for entity CEOs; quarterly for Matt Mathison):
  BLUF: "Current threat environment for [Entity]: [Elevated / Normal / Reduced]"
  Top 3 threats relevant to entity: description; why relevant; MBL mitigation status
  Recent CISA/HHS alerts: any requiring action
  Matt Mathison version: portfolio-level summary; any entity with elevated threat level
```

## Output Format

```markdown
# Threat Intelligence Briefing — [All Entities] | [Date]
**Compiled by:** Dr. John Lewis | **Threat environment:** [Elevated/Normal]

---

## Active Threats Relevant to MBL Portfolio
| Threat | Type | Entities affected | Severity | MBL mitigation |
|--------|------|-----------------|---------|----------------|
| RHYSIDA ransomware | Ransomware | Allevio | 🔴 High | Patched; phishing training ✅ |
| CISA KEV — CVE-2024-XXXX | Vuln exploit | All | 🔴 Critical | Patch deployed ✅ |

---

## CISA KEV — New Entries This Period
| CVE | Affected product | In MBL stack? | Action |
|-----|-----------------|--------------|--------|
| CVE-[XXXX] | Microsoft Exchange | Yes → Allevio Exchange | Patched 3 days ago ✅ |

---

## No Action Required
[List of threats reviewed but not relevant to MBL stack]

## Entity CEO Distribution
- Allevio CEO: Healthcare-specific section
- HIVE CEO: Energy sector section (if applicable)
- Column6 CEO: SMB/digital media section
```

## Output Contract
- CISA KEV entries override the standard patch SLA immediately — the patch SLA (7 days for Critical CVSS ≥9.0; 30 days for High) assumes a theoretical risk; CISA adds a CVE to the KEV only when that vulnerability is actively being exploited by threat actors in real attacks right now; the gap between "there is a vulnerability" and "this vulnerability is being actively used to compromise organizations like yours" is what the KEV closes; when Dr. Lewis sees a CISA KEV entry for a CVE affecting MBL systems, the patch SLA changes from "within 7 days" to "within 24-72 hours" regardless of severity score; this is the correct response because the attacker's weaponization timeline is measured in hours after a KEV publication, not days; Dr. Lewis alerts IT immediately upon KEV publication for any MBL-relevant CVE
- Healthcare-specific threat intelligence (HHS HC3) is required monitoring for Allevio — ransomware groups actively target healthcare organizations because: (1) downtime creates patient safety risk, increasing willingness to pay; (2) PHI has high dark web value; (3) healthcare organizations often have older systems and slower patch cycles; HHS HC3 publishes healthcare-specific threat briefs including information about ransomware groups targeting MSOs specifically; Dr. Lewis subscribes to HC3 alerts and reviews every healthcare advisory for Allevio relevance; a RHYSIDA or Akira ransomware campaign targeting MSOs in the Southwest United States is immediately relevant to Allevio; Dr. Lewis assesses Allevio's mitigations against the TTPs described and communicates to the entity CEO within 48 hours of any directly relevant advisory
- HITL required: CISA KEV affecting MBL system → Dr. Lewis alerts IT immediately (24-72hr patch); entity CEO notified within 24hr; HHS HC3 advisory directly relevant to Allevio → Dr. Lewis assesses mitigations + entity CEO briefed within 48hr; new ransomware campaign targeting MBL sector → Dr. Lewis briefing to entity CEO + Matt Mathison within 1 week; monthly threat briefing → entity CEO reviews; Matt Mathison quarterly portfolio briefing → Dr. Lewis prepares; zero-day with no patch → Dr. Lewis implements compensating controls; entity CEO informed; threat actor actively targeting MBL-type organizations → Dr. Lewis elevates monitoring; entity CEO security awareness briefing

## System Dependencies
- **Reads from:** CISA KEV catalog (cisa.gov/known-exploited-vulnerabilities — RSS or weekly check); CISA advisories and alerts (cisa.gov/cybersecurity-advisories — email subscription); HHS HC3 threat briefs (hhs.gov HC3 subscription — healthcare-specific); Microsoft MSRC (msrc.microsoft.com — Patch Tuesday; security bulletins); SANS ISC Diary (isc.sans.edu — daily; brief review); FBI IC3 reports (annual; sector-specific); sec-patch-compliance-tracker (current patch status — cross-reference KEV relevance); entity tech stack inventory (what's in MBL stack — compare to CVE-affected products)
- **Writes to:** Weekly threat intelligence log (SharePoint → [Entity] → Security → Threat-Intelligence → Weekly-[Date] — reviewed sources; relevant items; actions); entity CEO monthly threat briefing (SharePoint → [Entity] → Security → Threat-Intelligence → Monthly-Briefing-[Month]); Matt Mathison quarterly portfolio threat briefing (portfolio-wide; Dr. Lewis prepares); accelerated patch request (Monday.com → IT — KEV or zero-day; 24-72hr target; Dr. Lewis); compensating control implementation (Monday.com — zero-day mitigations; Dr. Lewis + IT); threat intelligence relevant to specific incident (feeds sec-incident-responder — context for active incidents)
- **HITL Required:** CISA KEV → Dr. Lewis alerts IT 24-72hr; entity CEO 24hr; HC3 advisory relevant to Allevio → Dr. Lewis mitigation assessment + entity CEO 48hr; new ransomware campaign targeting MBL sector → entity CEO + Matt Mathison within 1 week; monthly briefing → entity CEO reviews; quarterly portfolio briefing → Matt Mathison; zero-day → Dr. Lewis compensating controls; entity CEO informed; elevated threat level → Dr. Lewis + entity CEO; increased monitoring

## Test Cases
1. **Golden path:** Monday morning threat intelligence review. Dr. Lewis checks: CISA KEV (no new entries this week). CISA advisories: one new #StopRansomware advisory for LockBit 3.0; reviewed TTPs (phishing → credential theft → lateral movement → ransomware deployment). Allevio assessment: phishing training (quarterly simulation ✅); MFA enforced ✅; RDP not exposed ✅; patches current ✅. LockBit TTP for initial access (phishing) — we have controls. Log: "LockBit advisory reviewed; Allevio controls assessed as adequate; no additional action required." MSRC: Patch Tuesday was last Tuesday; Critical patches reviewed in sec-patch-compliance-tracker — applied within 7 days ✅. SANS ISC: low-noise week; no specific MBL-relevant items. Threat environment: Normal. Weekly log filed.
2. **Edge case:** CISA adds CVE-2024-XXXX (ProxyChain — Microsoft Exchange Server) to the KEV catalog. Allevio uses Exchange Online (Microsoft-managed cloud), not on-premises Exchange: Dr. Lewis: "CVE-2024-XXXX affects on-premises Microsoft Exchange Server. Allevio uses Exchange Online (Microsoft's cloud-managed service) — Microsoft patches Exchange Online before KEV publication for actively exploited vulnerabilities; we don't manage Exchange patching for cloud tenants. Assessment: NOT affected (cloud tenant). Document: CVE reviewed; Allevio uses Exchange Online; not vulnerable; no action required. However: check if any other MBL entity uses on-premises Exchange. MBL HoldCo — Exchange Online ✅. Column6 — Exchange Online ✅. HIVE — Exchange Online ✅. No MBL entity uses on-premises Exchange. All clear. Log filed." This is the correct triage: CVE reviewed; applicability assessed; documented.
3. **Adversarial:** Entity CEO asks: "Should we buy a commercial threat intelligence platform? I saw a demo for $30K/year": Dr. Lewis: "For our current security maturity and portfolio size, commercial threat intelligence platforms are not the right investment. The free sources (CISA; HHS HC3; Microsoft MSRC; SANS ISC) cover 90%+ of what's relevant to our environment. The $30K/year commercial platform adds: (1) industry-specific threat feeds (useful for complex enterprises; not yet necessary for our portfolio scale); (2) automated threat correlation (valuable at higher alert volumes than we currently generate); (3) analyst-grade reports on specific threat actors. I recommend we revisit commercial threat intelligence when: (a) we've fully deployed Sentinel as our SIEM (creates the data volume where commercial feeds add value), OR (b) a specific entity (Allevio) is at Level 4 security maturity and actively working with an MSSP. At our current Level 2-3 maturity, the free sources plus structured weekly review is the right approach. The $30K is better deployed on: Sentinel license; endpoint protection upgrade; or pen test coverage."

## Audit Log
Weekly threat intelligence review logs (date; sources reviewed; relevant items; Dr. Lewis assessment; actions; SharePoint). CISA KEV response records (CVE; KEV date; MBL stack applicability; IT alert date; patch date; entity CEO notified; SharePoint). HHS HC3 advisory response records (advisory; Allevio applicability; mitigation assessment; entity CEO briefing date; Dr. Lewis; SharePoint). Monthly threat briefing records (entity; date; content; entity CEO receipt; SharePoint). Matt Mathison quarterly portfolio threat briefing records (date; portfolio threat environment; Dr. Lewis; Matt Mathison receipt). Zero-day compensating control records (CVE; compensating controls; Dr. Lewis implemented; entity CEO informed; patch available; date applied).

## Deprecation
Threat intelligence sources reviewed annually (new free sources; discontinued services). CISA KEV response protocol reviewed when CISA updates KEV publication procedures. HC3 monitoring reviewed when HHS updates healthcare cybersecurity programs. Threat profile reviewed quarterly (active threat groups change; MBL tech stack changes). Commercial threat intelligence evaluation criteria reviewed annually. Portfolio threat briefing format reviewed with Matt Mathison annually.
