---
name: sec-penetration-test-coordinator
description: "Coordinate penetration tests for MBL portfolio companies. Use when the user says 'penetration test', 'pen test', 'pentest', 'ethical hacking', 'red team', 'red team assessment', 'purple team', 'offensive security test', 'security assessment', 'external pentest', 'internal pentest', 'web application pentest', 'social engineering test', 'phishing assessment', 'network penetration test', 'API security test', 'cloud penetration test', 'scope a pentest', 'pentest scope', 'pentest vendor', 'pentest firm', 'hire pentesters', 'pentest report', 'pentest findings', 'remediate pentest findings', 'pentest authorization', 'rules of engagement', 'statement of work security', 'pentest preparation', 'pre-pentest', 'post-pentest', 'pentest remediation', 'address pentest findings', 'fix pentest findings', 'vulnerability validation', 'attack simulation', 'security validation', 'test our defenses', 'are we hackable', 'how secure are we', or 'attack surface assessment'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--type <external|internal|web-app|social-engineering>] [--action <scope|authorize|prepare|review|remediate>]"
---

# Sec Penetration Test Coordinator

Coordinate penetration tests for MBL portfolio companies — scoping, authorizing, preparing for, and following up on third-party security assessments that test whether MBL's security controls actually work against a real attack. Vulnerability scanning tells you what vulnerabilities exist; penetration testing tells you whether those vulnerabilities are actually exploitable and what an attacker can access once they are. Pen tests answer the question that every security program must face: "We think we're protected — are we?"

## When to Use
- Scoping and authorizing a penetration test for an entity
- Preparing the entity for an upcoming pen test
- Reviewing pen test findings and building the remediation plan
- Responding to a client or investor request for pen test evidence

## Penetration Test Framework

```
PENTEST TYPES (MBL portfolio relevance):

  External network penetration test:
    Simulates an attacker with no prior access trying to break in from the internet
    What's tested: internet-facing systems; M365 services; web applications; VPN
    Recommended: annually for Allevio (PHI risk); bi-annually for others
    
  Internal network penetration test:
    Simulates an attacker who has gained a foothold inside the network (via phishing; insider)
    What's tested: lateral movement; privilege escalation; internal system access
    Recommended: annually or after significant infrastructure changes
    
  Web application penetration test:
    Tests web apps and portals for OWASP Top 10 vulnerabilities
    What's tested: SQL injection; XSS; authentication bypass; API security
    When needed: Allevio employer portal; Column6 client/agency portal; any MBL-owned web app
    
  Social engineering assessment:
    Simulates phishing; vishing; physical access attempts
    Tests: employee security awareness; physical security; helpdesk social engineering resistance
    Not required annually; schedule when leadership is concerned about social engineering risk
    
PENTEST AUTHORIZATION AND LEGAL REQUIREMENTS:
  CRITICAL: A penetration test without proper authorization is a crime
  Authorization must be documented before any testing begins:
    Written authorization from entity CEO (the actual system owner)
    Rules of Engagement document signed by pentest vendor and entity CEO
    Scope clearly defined (IP ranges; domains; systems in scope; explicitly out of scope)
    Testing window defined (dates; hours; any blackout periods)
    Emergency contact: Dr. Lewis mobile number + entity CEO; available 24/7 during test window
    
  What is ALWAYS out of scope (unless explicitly authorized with specific additional controls):
    Production databases containing live PHI (Allevio AdvancedMD production) — test copies only
    Live financial transaction systems (don't disrupt payments)
    Covercy LP data production environment — extreme sensitivity
    
SELECTING A PENTEST VENDOR:
  Qualifications to require:
    OSCP or equivalent certifications (at least 1 tester on the engagement)
    CREST or GPEN certifications preferred
    Experience in healthcare or financial services (Allevio context)
    Adequate liability insurance (errors and omissions; cyber liability)
    Willingness to sign an NDA before receiving any environment details
    
  Scope and pricing guidance (rough estimates — request quotes):
    External network test: $3,000-$8,000 (small organization; 5-15 external IPs)
    Internal network test: $5,000-$15,000 (includes on-site or VPN access component)
    Web application test: $4,000-$10,000 per application
    
  Entity CEO budget approval required before engaging any pentest vendor
    
PENTEST PROCESS:

  Pre-test (2-4 weeks before):
    1. Define scope and rules of engagement
    2. Entity CEO signs authorization
    3. Dr. Lewis sends scope document to pentest vendor
    4. Vendor signs NDA + Rules of Engagement
    5. Prepare environment: notify IT; confirm monitoring is active (we want to see if we detect the test)
    6. Confirm out-of-scope systems are clearly documented
    
  During test:
    Dr. Lewis + IT on call during testing window
    Emergency stop: if pentest causes unexpected disruption, Dr. Lewis can halt with one call
    Pentest firm logs all activities (required for Rules of Engagement compliance)
    
  Post-test (within 2 weeks of test completion):
    1. Pentest vendor delivers findings report (executive summary + detailed findings)
    2. Dr. Lewis reviews findings; maps to current controls; assesses each finding
    3. Remediation plan: assign owner; due date; priority for each finding
    4. Entity CEO briefed: executive summary; top 5 findings; remediation timeline; cost
    5. Critical findings: remediate within 30 days; not on a normal roadmap cadence
    6. Re-test: schedule re-test for critical and high findings after remediation
    7. File report: SharePoint → [Entity] → Security → Pen-Tests → [Date]-[Type]-Report.pdf
       (do not store in an easily accessible location — pentest reports are roadmaps for attackers)
    
  Re-test:
    After critical and high findings are remediated, vendor confirms fix via targeted re-test
    Re-test is typically included in original engagement or at reduced cost
```

## Output Format

```markdown
# Penetration Test Summary — [Entity] | [Test Type] | [Date Range]
**Vendor:** [Firm] | **Lead tester:** [Name/cert] | **Entity CEO authorized:** [Date]

---

## Findings Summary
| Severity | Count | Remediated | In progress | Not started |
|---------|-------|-----------|------------|------------|
| Critical | [N] | [N] | [N] | [N] |
| High | [N] | [N] | [N] | [N] |
| Medium | [N] | [N] | [N] | [N] |
| Low | [N] | [N] | [N] | [N] |

---

## Top 5 Findings
| # | Finding | Severity | CVSS | Remediation | Owner | Due |
|---|---------|---------|------|-------------|-------|-----|

---

## Re-test Schedule
| Finding | Remediation complete by | Re-test date |
|---------|------------------------|-------------|
```

## Output Contract
- The pentest authorization document is not a formality — it is the legal instrument that distinguishes an authorized security test from criminal hacking; the pentest vendor must have a signed authorization from the entity CEO (the actual legal owner of the systems being tested) before a single packet is sent; the authorization must specify the exact scope (IP ranges; domain names; specific systems); the time window (start date; end date; hours of testing); the emergency contact procedure; and what is explicitly out of scope; verbal authorization is insufficient; if a pentest vendor is willing to begin testing without a signed authorization, that is a red flag about their operational maturity — Dr. Lewis requires the authorization before any pre-engagement reconnaissance begins, not just before active exploitation
- Pentest reports must be stored and accessed as controlled security documents — a pentest report is a detailed roadmap of an entity's exploitable vulnerabilities; if the report is stored in a broadly accessible SharePoint library or emailed to distribution lists, attackers who compromise an employee account or a misconfigured SharePoint site gain exactly the information they need to attack the organization; storage standard: SharePoint → [Entity] → Security → Pen-Tests → [Report]; access limited to Dr. Lewis and entity CEO; not stored in general IT shared folders; not emailed in plaintext without encryption; old pentest reports (vulnerabilities now remediated) are still restricted — they reveal historical attack surface; Dr. Lewis controls access and is the only distribution point for pentest reports
- HITL required: pentest scope and rules of engagement → entity CEO authorizes in writing before any testing; pentest vendor selection → Dr. Lewis recommends; entity CEO approves engagement and budget; during-test emergency halt → Dr. Lewis authorized to halt with one call; findings report delivery → Dr. Lewis reviews first; then entity CEO briefed (executive summary); critical findings → entity CEO notified within 24 hours of Dr. Lewis review; critical finding remediation → entity CEO informed of completion; re-test scheduling → Dr. Lewis coordinates; pentest report storage and access → Dr. Lewis controls; Matt Mathison briefed annually on pentest status across portfolio

## System Dependencies
- **Reads from:** Asset inventory (all systems in scope — IP ranges; domains; web apps); vulnerability scan results (sec-vulnerability-scanner — helps narrow pen test focus to highest-risk areas); current security controls documentation (sec-security-program-builder); network diagram (if available); prior pentest reports (trend analysis — are we improving?); Rules of Engagement template (SharePoint → [Entity] → Security → Templates → Pentest-ROE-Template)
- **Writes to:** Pentest authorization document (entity CEO signed; SharePoint → [Entity] → Security → Pen-Tests → [Date]-Authorization); Rules of Engagement (signed by entity CEO + vendor; same location); pentest findings report (vendor-produced; Dr. Lewis files; controlled access); remediation plan (Monday.com — findings; owners; due dates; priority); entity CEO executive briefing (findings; timeline; cost); Matt Mathison portfolio pentest status (annual); re-test schedule (Dr. Lewis coordinates with vendor)
- **HITL Required:** Scope and ROE → entity CEO written authorization; vendor selection + engagement → entity CEO approves budget; during-test halt → Dr. Lewis authorized; findings review → Dr. Lewis first; entity CEO briefed within 48 hours; critical findings → entity CEO notified 24hr; critical remediation completion → entity CEO confirmed; report storage → Dr. Lewis controls access; report access request → Dr. Lewis reviews + entity CEO approves; Matt Mathison annual briefing → Dr. Lewis prepares

## Test Cases
1. **Golden path:** Annual external network pen test for Allevio. Dr. Lewis scopes: 3 internet-facing IPs (MX record; web server; VPN); employer portal URL; M365 external-facing services. Out of scope: AdvancedMD production system (PHI — vendor tests their own system; Dr. Lewis reviews their pentest SLA). Entity CEO signs authorization. Vendor: CREST-accredited firm; OSCP-certified lead tester; NDA signed; ROE signed. Testing window: 5 business days. During test: Dr. Lewis reviews detection alerts — Defender for Business triggered on 2 of 5 test attacks (40% detection rate). Post-test: vendor delivers report. Critical: 0. High: 2 (legacy TLS on VPN; password spray succeeded against 1 service account without MFA). Medium: 3. Entity CEO briefed: "2 high findings — we're fixing MFA gap on service account (this week) and updating VPN TLS (next patch window)." Remediation plan in Monday.com. Re-test scheduled 30 days out.
2. **Edge case:** During the penetration test, the tester accidentally takes down the Allevio employer portal (out-of-scope impact; aggressive test caused service disruption): Dr. Lewis: "Emergency halt authorization invoked. Call to pentest vendor lead: 'The employer portal is showing a service disruption — this appears to be test-related. Per our ROE, stop all active testing immediately while I investigate.' (1) Assess impact: is the portal actually down? How many employers affected? IT brings portal back online (takes 20 minutes — restart IIS/web service). (2) Employer notification: if any employers experience the outage, entity CEO determines whether to notify (brief interruption; testing context). (3) Document: the incident; cause; resolution time; impact. (4) Debrief with vendor: what test activity caused the disruption? Can testing resume with tighter scope on that system? (5) Update ROE for future tests: portal testing window restricted to off-hours."
3. **Adversarial:** A vendor proposes a "continuous penetration testing" subscription for $2,500/month ("we run automated tests constantly on your systems"): Dr. Lewis: "Continuous automated scanning is not penetration testing — it's vulnerability scanning. What's being proposed is likely a continuous vulnerability scanning service, which has value but is different from what a penetration test provides (manual exploitation; logic testing; business context). For the $30K/year budget: an annual pentest from a qualified firm ($8-12K) plus a quarterly vulnerability scanning subscription ($5-8K/year) would provide better coverage than this subscription. I'll also evaluate whether what they're proposing is truly penetration testing (manual exploitation by a human tester) or automated scanning (tool-driven). The authorization requirement alone is a differentiator: a genuine pentest requires signed authorization per engagement; automated continuous scanning requires a standing authorization. Let me review their SOW before we make any decision."

## Audit Log
Pentest authorization records (entity; test type; scope; entity CEO authorization signature; date; SharePoint). Pentest engagement records (vendor; lead tester; certifications; NDA signed; ROE signed; test dates; Dr. Lewis oversight). Pentest findings reports (vendor report; date received; Dr. Lewis review; entity CEO briefing; controlled storage; access log). Remediation plan records (findings; owner; due date; completion date; entity CEO informed). Re-test records (findings retested; remediation confirmed; vendor sign-off; date). Pentest portfolio summary (annual; all entities; test types; findings trends; Matt Mathison briefing).

## Deprecation
Pentest schedule reviewed annually. ROE template reviewed when testing methodology evolves or entity infrastructure changes significantly. Vendor qualification criteria reviewed annually as certification standards evolve. Pentest budget guidance reviewed annually against market pricing. Web application test scope updated when entity-owned applications change.
