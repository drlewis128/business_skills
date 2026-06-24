---
name: sec-dark-web-monitor
description: "Monitor the dark web for MBL portfolio company credential and data exposure. Use when the user says 'dark web monitoring', 'dark web', 'dark web scan', 'credential exposure', 'credential leak', 'credential dump', 'leaked credentials', 'breached credentials', 'stolen credentials', 'password exposed', 'email exposed', 'data leak monitoring', 'breach monitoring', 'Have I Been Pwned', 'HIBP', 'credential stuffing', 'data dump', 'underground forums', 'hacker forums', 'dark web presence', 'are our credentials on the dark web', 'find our leaked data', 'data breach exposure', 'corporate credential exposure', 'employee credential exposure', 'monitoring for breaches', 'threat intelligence monitoring', 'external threat monitoring', 'reconnaissance monitoring', 'brand monitoring', 'domain monitoring dark web', 'executive PII dark web', 'MBL domain monitoring', 'Allevio domain monitoring', 'portfolio monitoring', 'stolen data', 'leaked data', or 'identity exposure'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive|all>] [--action <scan|alert|respond|report>] [--scope <credentials|pii|domain|all>]"
---

# Sec Dark Web Monitor

Monitor the dark web for MBL portfolio company credential and data exposure — detecting when employee credentials, PHI, or proprietary data appear on dark web markets, paste sites, or in credential dumps before attackers use them. Dark web monitoring is early warning: it tells Dr. Lewis that a credential has been compromised before the attacker uses it to access an MBL entity system.

## When to Use
- Running dark web scans for entity domains and executive email addresses
- Responding to a dark web alert (found credential or data exposure)
- Setting up continuous dark web monitoring for a new entity
- Investigating whether a security incident resulted in data appearing on the dark web

## Dark Web Monitoring Framework

```
WHAT TO MONITOR:

  MBL Portfolio Domains (all entities):
    @mblpartners.com; @allevio.com; @hive-partners.com; @column6.com
    Monitor for: credentials matching these domains appearing in breach databases
    
  Executive and High-Risk Accounts:
    Matt Mathison; Dr. Lewis; entity CEOs; finance team; IT admins
    Monitor for: personal or corporate email + password combos in dumps
    Why: executives are high-value targets; their credentials in a dump = P0 risk
    
  PHI-related data (Allevio):
    Monitor for: Allevio employer names + any health data indicators on paste sites
    Monitor for: AdvancedMD-related data exposure
    HIPAA: PHI appearing on dark web = confirmed HIPAA breach (notify OCR)
    
  IP ranges and domains (MBL-managed systems):
    Monitor for: MBL domains appearing in hacker forums as targets or compromised systems
    
MONITORING TOOLS (Dr. Lewis selects per entity):
  Free tier options:
    Have I Been Pwned (haveibeenpwned.com) — Domain Search; notify when domain breached
    DeHashed — credential search (limited free; paid for comprehensive)
    Flare.io — free dark web monitoring for businesses (domain monitoring)
    Google Alerts — monitor company/executive names appearing in public breach reports
    
  Paid tier (for entities with elevated risk, e.g., Allevio):
    SpyCloud; Digital Shadows; Recorded Future (threat intelligence platforms)
    Kroll or Experian dark web monitoring for executives
    Recommendation: start with free tools; escalate to paid if alert volume is high
    
ALERT RESPONSE PROCESS:

  Alert type: credential found in breach database (email + password combo):
    1. Dr. Lewis notifies affected employee within 24 hours
    2. Force password reset on matching account immediately (M365 Admin Center; other systems)
    3. Revoke all active sessions for the affected account
    4. Enable or verify MFA is active (compromised password is neutralized if MFA is active)
    5. Investigate: is there evidence the credential was used? (review sign-in logs)
    6. Determine source: which breach? (Have I Been Pwned shows breach source)
       If breach source is external (e.g., LinkedIn breach) — password was reused
       If breach source is MBL system — that is a security incident (sec-incident-responder)
    7. Entity CEO notified if executive credential or PHI-adjacent system credential
    
  Alert type: PHI appearing on dark web (Allevio):
    1. Dr. Lewis + entity CEO notified immediately
    2. Matt Mathison notified (PHI breach = P0)
    3. HIPAA breach assessment initiated (sec-incident-responder)
    4. Preserve evidence (screenshot; URL; timestamp)
    5. Forensic investigation: what data? where from? how many individuals?
    6. Legal counsel engaged (Matt Mathison authorizes)
    7. 60-day notification clock may have started at discovery
    
  Alert type: MBL domain or executive name in hacker forum:
    1. Dr. Lewis assesses: active targeting vs. passive mention
    2. If active targeting (forum post claiming to have access; selling MBL data):
       P0 — entity CEO + Matt Mathison notified immediately
       Consider: law enforcement (FBI IC3); legal counsel
    3. If passive mention (general discussion; no specific access claim):
       Document; monitor for escalation; no immediate action required
       
MONITORING CADENCE:
  Continuous: Have I Been Pwned domain notifications (configure email alerts for all domains)
  Monthly: manual scan of executive emails through DeHashed or SpyCloud
  Quarterly: full dark web scan report for Dr. Lewis review
  Incident-triggered: after any breach or suspected credential compromise, immediate scan
```

## Output Format

```markdown
# Dark Web Monitoring Report — [All Entities] | [Period] | [Date]
**Monitored domains:** [List] | **Tools used:** [Have I Been Pwned; Flare.io; etc.]

---

## Findings This Period
| Alert type | Entity | Data type | Source | Date found | Severity | Status |
|-----------|--------|----------|--------|-----------|---------|--------|
| Credential found | MBL | jlindsley@mblpartners.com | LinkedIn2023 breach | [Date] | Medium | ✅ Password reset |
| PHI exposure | Allevio | Employer data | [Unknown source] | [Date] | 🔴 P0 | Investigating |

---

## Active Monitoring Status
| Domain | Tool | Alerts enabled | Last verified |
|--------|------|---------------|--------------|
| @mblpartners.com | HIBP | ✅ Email alerts | [Date] |
```

## Output Contract
- A credential found in a breach database from an old breach is still actionable — the source of the breach may be an old LinkedIn hack from 2021; that doesn't mean the exposure is harmless today; credential stuffing attacks use old breach databases to try credentials against M365, GHL, Covercy, and other live systems constantly; if an employee's email + password appears in any breach database, that combination must be assumed compromised; the password must be reset on any MBL system where it might have been used (and employees who reuse passwords across personal and work accounts are given targeted training on password hygiene); MFA mitigates the risk (attacker has the password but not the second factor), which is why MFA remains the #1 control — but the credential reset still happens regardless
- PHI on the dark web is a HIPAA breach, not a potential breach — the moment Allevio PHI (individually identifiable health information) appears on a dark web site, paste site, or in a breach dump, the 4-factor HIPAA breach risk assessment begins and the 60-day notification clock is running; "maybe it's not real PHI" is not a determination that can be made casually; Dr. Lewis preserves the evidence (screenshot; URL; all details); initiates the HIPAA breach assessment process with the same urgency as a system compromise; the fact that the data has already appeared publicly means the individuals whose data was exposed are already at risk; speed of notification protects them; Matt Mathison is notified same day; legal counsel is engaged within 24 hours of PHI dark web discovery
- HITL required: dark web credential alert → Dr. Lewis notifies affected employee within 24 hours; force password reset + session revoke; entity CEO notified if executive credential; PHI on dark web → Dr. Lewis + entity CEO + Matt Mathison immediately; HIPAA breach assessment initiated; legal counsel authorized; active targeting in hacker forum → entity CEO + Matt Mathison + potential law enforcement; monthly executive scan → Dr. Lewis reviews; quarterly dark web report → Dr. Lewis prepares; entity CEO informed of any findings; monitoring tool selection → Dr. Lewis selects; entity CEO budget approval for paid tools

## System Dependencies
- **Reads from:** Have I Been Pwned domain alerts (configured for all entity domains); DeHashed/SpyCloud/Flare.io scans (monthly manual; quarterly comprehensive); M365 sign-in logs (post-alert investigation); entity email lists (all employees at each domain); executive account list (sec-privileged-access-manager); breach notification services (HIBP, NVD); incident records (sec-incident-responder — source investigation)
- **Writes to:** Dark web monitoring report (SharePoint → [All Entities] → Security → Dark-Web-Monitoring → [Period]); credential alert response log (employee notified; password reset; session revoke; MFA verified; date); PHI dark web incident record (sec-incident-responder trigger; HIPAA breach assessment); entity CEO dark web briefing (quarterly + any finding); Matt Mathison notification (PHI or executive credential findings); Monday.com (password reset tasks; monitoring tool setup)
- **HITL Required:** Credential alert → Dr. Lewis notifies employee + force reset within 24hr; entity CEO if executive; PHI on dark web → Dr. Lewis + entity CEO + Matt Mathison immediately; HIPAA breach assessment; legal counsel authorized; active targeting → entity CEO + Matt Mathison + law enforcement; quarterly report → Dr. Lewis; entity CEO informed of findings; paid tool selection → entity CEO budget approval

## Test Cases
1. **Golden path:** HIBP domain alert for @mblpartners.com: "3 email addresses appeared in the Dropbox 2012 breach database — jlindsley@mblpartners.com and 2 others." Dr. Lewis: breach date 2012; passwords are old hashes; but credential stuffing uses old dumps. Actions: (1) Force password reset for all 3 accounts in M365 (Admin Center → Users → Reset password). (2) Revoke all active sessions for 3 accounts. (3) Verify MFA is active on all 3 (all are enrolled ✅). (4) Notify employees: "Your email appeared in an old breach database from 2012 — we've reset your M365 password as a precaution. This was from a breach of Dropbox, not our systems. Please update any personal accounts where you may have reused this password." (5) Review M365 sign-in logs for any anomalous sign-ins before the reset. No anomalous activity found. (6) Document. Entity CEO briefed. No escalation needed.
2. **Edge case:** Dark web monitoring finds a paste site with what appears to be employer census data formatted identically to Allevio's census collection template: Dr. Lewis: "This is a potential PHI exposure — treat as confirmed until proven otherwise. P0 actions: (1) Preserve evidence: screenshot the paste site with URL and timestamp. (2) Entity CEO notified within 1 hour. Matt Mathison notified within 2 hours — potential HIPAA breach. (3) HIPAA breach risk assessment begins immediately. (4) Analyze the paste: how many employers? How many individuals? Is the data actually Allevio's or a template that resembles Allevio's format? (5) Cross-reference with Allevio's current employer census list — do the employer names match Allevio clients? (6) If confirmed Allevio data: 60-day notification clock running from today. Legal counsel engaged (Matt Mathison authorizes). (7) Source investigation: where did this data come from? Who had access to census files? sec-incident-responder activated."
3. **Adversarial:** Entity CEO asks: "Isn't dark web monitoring just security theater? Hackers don't usually advertise": Dr. Lewis: "Dark web monitoring is one of the highest-ROI threat intelligence controls for small organizations — here's why: (1) 80%+ of account compromises involve previously breached credentials; monitoring gives us advance warning before the attacker uses the credential. (2) The monitoring tools (HIBP domain alerts, Flare.io) are free or low-cost — the labor is Dr. Lewis spending 30 minutes monthly on the scan. (3) When we find a credential, we reset it immediately — that's the whole point. The benefit is: the attacker has the credential; we reset it before they use it to access our systems. We've had [N] credential alerts in the last year; each one was reset within 24 hours. That's [N] prevented account compromises at near-zero cost. The alternative — finding out a credential was used after a breach — is significantly more expensive."

## Audit Log
Dark web monitoring configuration records (domains monitored; tools configured; alert methods; Dr. Lewis setup; date). Credential alert records (email; breach source; date found; Dr. Lewis notification to employee; password reset; session revoke; MFA verification; entity CEO briefing if executive; date). PHI dark web incident records (date discovered; source; data type; entity CEO + Matt Mathison notification; HIPAA breach assessment; legal counsel; outcome; SharePoint; retained 6 years). Active targeting records (forum; content; entity CEO + Matt Mathison; law enforcement consideration; date). Monthly executive scan records (accounts scanned; date; findings; actions; Dr. Lewis review).

## Deprecation
Dark web monitoring tools reviewed annually. Tool selection updated when new free or low-cost options emerge. Domain list updated when entity domains change. Executive monitoring list updated when MBL leadership changes. HIPAA breach response for PHI dark web findings reviewed when HHS updates breach notification guidance.
