---
name: ops-crisis-ops
description: "Manage crisis and incident response operations across MBL Partners portfolio. Use when the user says 'crisis', 'incident', 'crisis response', 'incident response', 'emergency', 'emergency response', 'operational emergency', 'business crisis', 'crisis management', 'crisis plan', 'incident plan', 'crisis playbook', 'incident playbook', 'crisis communication', 'crisis comms', 'emergency comms', 'business continuity', 'BCP', 'business continuity plan', 'disaster recovery', 'DR', 'data breach', 'security incident', 'cyber incident', 'ransomware', 'breach response', 'breach notification', 'HIPAA breach', 'fraud', 'fraud response', 'executive departure', 'sudden executive departure', 'CEO departure', 'key person', 'key person departure', 'key person risk', 'regulatory action', 'regulatory notice', 'regulatory violation', 'NOV', 'notice of violation', 'lawsuit', 'litigation', 'legal emergency', 'press inquiry', 'media inquiry', 'negative press', 'reputation management', 'crisis PR', 'natural disaster', 'workplace incident', 'workplace safety', 'OSHA', 'financial emergency', 'cash crisis', 'cash shortfall', 'runway crisis', or 'going concern'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--crisis-type <data-breach|fraud|executive-departure|regulatory|legal|financial|reputation|safety|natural-disaster>] [--severity <P1|P2|P3>] [--action <respond|contain|communicate|recover|debrief>]"
---

# Ops Crisis Ops

Manage crisis and incident response operations across MBL Partners portfolio — detecting, containing, communicating, and recovering from crises that threaten entity operations, legal standing, financial stability, LP relationships, or reputational integrity. Crises are defined by their time pressure and the severity of consequences if mismanaged: a data breach that isn't contained in the first 24 hours becomes a notification event; a sudden executive departure without a succession plan becomes an operational crisis; a financial runway shortfall without a Matt Mathison escalation becomes a legal exposure; a regulatory action without legal involvement becomes a compliance failure. Dr. Lewis is the portfolio-level crisis coordinator — he manages the response structure and ensures that Matt Mathison, legal, and affected stakeholders are engaged at the right time; entity CEOs own the on-the-ground execution.

## When to Use
- A P1 or P2 incident occurs at any portfolio entity
- A crisis response plan needs to be built (proactive)
- A crisis is developing and the entity CEO needs a response framework
- A post-crisis debrief is needed to improve readiness

## Crisis Operations Framework

```
CRISIS SEVERITY CLASSIFICATION:

  P1 — CRITICAL (immediately life-safety, legal, or existential):
    Data breach with confirmed PHI or PII exfiltration
    Fraud by a senior employee (VP+ or CEO)
    Cash runway <30 days without identified resolution
    Regulatory action that could suspend entity operations
    Workplace safety incident with serious injury or fatality
    Press or social media crisis with active viral spread
    
    RESPONSE TIME: Dr. Lewis notified within 1 hour; Matt Mathison within 2 hours; legal retained same day
    
  P2 — SIGNIFICANT (major operational or reputational impact):
    Security incident without confirmed exfiltration (under investigation)
    Sudden departure of a CEO or key senior leader
    Major client or LP inquiry indicating serious dissatisfaction
    Regulatory notice or investigation (not yet an action)
    Financial shortfall requiring bridge or covenant renegotiation
    
    RESPONSE TIME: Dr. Lewis notified same day; Matt Mathison within 24 hours; legal consulted
    
  P3 — ELEVATED (operationally significant; manageable without emergency protocol):
    Single system outage at an entity
    Customer complaint escalated to executive level
    Key employee resignation (not C-suite)
    Vendor failure with operational impact
    
    RESPONSE TIME: Entity CEO handles with Dr. Lewis awareness; standard escalation protocol

CRISIS RESPONSE PROTOCOL (P1 and P2):

  PHASE 1: CONTAIN (first 4 hours for P1; first 24 hours for P2):
    Identify the full scope of the incident (what happened; when; who knows; what's at risk)
    Contain the immediate damage (shut down affected systems; secure access; preserve evidence)
    Notify Dr. Lewis → Matt Mathison → legal (in that order; don't skip steps)
    Establish a crisis team: entity CEO; Dr. Lewis; legal counsel; relevant technical/clinical lead
    Crisis team contact list active (everyone knows how to reach everyone)
    
  PHASE 2: ASSESS (within 8 hours for P1; within 48 hours for P2):
    Root cause determination (initial hypothesis; may not be final)
    Legal exposure assessment (from legal counsel)
    Regulatory notification requirements (are there mandatory notification deadlines?)
    Stakeholder notification list (who needs to know; in what order; by when?)
    
  PHASE 3: COMMUNICATE (based on legal counsel guidance):
    Internal first: entity employees (appropriate level of detail; no speculation)
    Regulatory: per legal counsel's timing guidance
    LP notification: Matt Mathison determines (material events within 5 business days)
    External/press: coordinated with legal; PR support if needed
    
  PHASE 4: RECOVER (timeline depends on incident type):
    Restore affected operations
    Document the full incident timeline (for legal; regulatory; insurance)
    Monitor for secondary impacts (did containment work? Is the incident truly resolved?)
    
  PHASE 5: DEBRIEF (within 30 days of resolution):
    Post-crisis review (what happened; what was done well; what needs to improve)
    Process improvements implemented
    Crisis plan updated with lessons learned

CRISIS-SPECIFIC PROTOCOLS:

  DATA BREACH / CYBERSECURITY INCIDENT:
    Contain: immediately isolate affected systems; preserve logs; do not wipe
    Legal: retain cyber counsel within 1 hour (attorney-client privilege on investigation)
    HIPAA (Allevio): if PHI is involved → 60-day notification deadline from discovery (HHS/OCR + affected individuals)
    Notification: state breach notification laws vary (most require notification within 30-60 days); cyber counsel guides
    Insurance: notify D&O and cyber insurance carriers immediately
    Do not: publicly disclose before legal clears the communication; make factual statements about what was accessed before forensics are complete
    
  FRAUD (INTERNAL):
    Contain: do not tip off the suspected individual; preserve all evidence
    Legal: retain immediately; do not interview the suspect without counsel present
    Access: revoke all access to affected systems (coordinated with legal for timing)
    Law enforcement: legal counsel advises on reporting
    Matt Mathison: notified same day regardless of severity
    Internal investigation: conducted by legal (not by Dr. Lewis or entity CEO alone)
    
  SUDDEN EXECUTIVE DEPARTURE (CEO OR KEY LEADER):
    Interim leadership: entity CEO role → Matt Mathison determines interim; Dr. Lewis coordinates operations
    Internal announcement: within 24 hours (before employees hear through other channels)
    LP notification: Matt Mathison decides whether P2 LP disclosure is warranted
    Operational continuity: Dr. Lewis activates ops-action-tracker for critical owner transfer
    Recruiting: Dr. Lewis activates permanent replacement search within 30 days
    
  REGULATORY ACTION:
    HIVE (DOGM/EPA/BLM): Dr. Lewis + HIVE CEO + legal within 24 hours
    Allevio (CMS/DOH): Dr. Lewis + Allevio CEO + legal same day; HIPAA counsel if PHI-related
    Column6 (FTC/state regulators): Dr. Lewis + Column6 CEO + legal within 24 hours
    Response: legal counsel coordinates all regulatory communications; Dr. Lewis does not respond directly to regulators
    
  FINANCIAL CRISIS (CASH RUNWAY):
    <60 days runway: Dr. Lewis + entity CEO → financial modeling + options (bridge; line of credit; expense reduction)
    <30 days runway: P1 → Matt Mathison immediately; legal and banking relationships activated
    <15 days runway: Matt Mathison and Dr. Lewis directly managing; entity CEO operationally executing
    Do not: allow a runway crisis to develop without Matt Mathison's knowledge
    
  MEDIA / REPUTATIONAL CRISIS:
    No spokesperson without Matt Mathison approval
    "No comment" is an acceptable interim position; never lie or mislead press
    Legal and PR counsel engaged for P1 media crises
    Social media: monitor and document; do not engage in public arguments
    LP communications: Matt Mathison decides proactive disclosure vs. reactive response

CRISIS COMMUNICATION RULES (universal):
    Never speculate about root cause publicly before investigation is complete
    Never promise a timeline you can't meet
    Never disclose more than legal counsel has cleared
    Communicate early with internal audiences (employees); communicate carefully with external audiences (press; regulators)
    One spokesperson per crisis — no multiple voices contradicting each other
```

## Output Format

```markdown
# Crisis Response Briefing — [Entity] — [Incident Date]
**Classification:** [P1 / P2 / P3] | **Type:** [Crisis type]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison + [Entity CEO] + Legal
**CONFIDENTIAL — ATTORNEY-CLIENT PRIVILEGE (if under legal investigation)**

---

## Incident Summary
**What happened:** [Factual description — no speculation]
**When discovered:** [Date/time]
**Current status:** [Contained / Active / Investigating]
**Who knows:** [Internal only / Legal involved / Regulatory notified / LP aware]

---

## Immediate Actions Taken

| Action | Owner | Status | Timestamp |
|--------|-------|--------|---------|
| Affected systems isolated | [IT/CEO] | ✅ Complete | [Time] |
| Dr. Lewis notified | Dr. Lewis | ✅ | [Time] |
| Matt Mathison notified | Matt | ✅ | [Time] |
| Legal retained | [Counsel] | ✅ | [Time] |

---

## Legal Exposure and Notification Requirements
[Per legal counsel — not Dr. Lewis's independent assessment]

---

## Stakeholder Notification Plan

| Stakeholder | Timing | Communicator | Status |
|------------|--------|-------------|--------|
| Entity employees | [Date] | Entity CEO | Pending |
| LPs (if material) | [Per LPA] | Matt Mathison | TBD |
| Regulators | [Per law] | Legal counsel | TBD |

---

## Next Decision Points (with deadlines)

1. [Decision needed] — by [Date] — owner: [Matt / Legal / Entity CEO]
2. [Decision needed] — by [Date] — owner: [...]
```

## Output Contract
- Matt Mathison is notified before the situation is managed, not after — the instinct in a crisis is to "solve it first, then tell Matt"; this is the wrong instinct in every crisis situation; solving it without Matt's involvement may require decisions that Matt should make; it creates an information asymmetry that erodes trust; and if the crisis escalates, Matt is now behind on context; the rule is simple: for P1, Dr. Lewis calls Matt within 2 hours; for P2, within 24 hours; the call is brief — "Here's what I know; here's what we're doing; here's what I need from you"; Dr. Lewis does not wait until he has the full picture to make the call
- Legal is not optional for P1 incidents — a P1 crisis (breach; fraud; regulatory action; financial emergency) will have legal implications; Dr. Lewis is not qualified to assess legal exposure or determine regulatory notification timing; retaining legal counsel early creates attorney-client privilege over the investigation; it costs less to retain counsel early than to manage the consequences of handling a legal situation without counsel; "we were trying to keep it quiet" is not a defense in regulatory proceedings; for every P1, Dr. Lewis treats legal retention as a Day 1 action, not a Day 7 option
- Speculation never goes in external communications — during a crisis, the most dangerous communications are the ones that contain factual claims that turn out to be wrong; "we believe no data was accessed" is a speculative claim that, if disproved, becomes evidence of misrepresentation; the rule is: Dr. Lewis's internal analysis (for Matt Mathison's eyes) may contain hypotheses and preliminary assessments; external communications (to employees; regulators; press; LPs) contain only confirmed facts, appropriate "under investigation" language, and legal-cleared disclosures; Dr. Lewis reviews all external communications in a crisis against this standard before they go out
- HITL required: every P1 crisis → Matt Mathison notified within 2 hours; legal retained same day; every P2 crisis → Matt Mathison within 24 hours; legal consulted; HIPAA breach at Allevio → HIPAA counsel retained same day; regulatory notifications → legal counsel coordinates and approves before submission; LP material event disclosure → Matt Mathison decides and approves; all external crisis communications → Matt Mathison + legal approval before release; incident debrief → Dr. Lewis facilitates + entity CEO + Matt review of lessons learned; cyber/D&O insurance notifications → Dr. Lewis coordinates + Matt awareness

## System Dependencies
- **Reads from:** ops-data-governance (access revocation during fraud/breach); fin-entity-consolidation (financial runway assessment); ops-headcount-ops (executive departure succession); ops-board-coordinator (material events that affect board obligations); ops-lp-relations (LP material event disclosure); legal counsel (regulatory notification; investigation management); entity CEO (on-the-ground incident facts)
- **Writes to:** Crisis briefing documents (SharePoint → Governance → CrisisManagement → [Entity] → [Date] — attorney-client privilege designation if legal is active); Matt Mathison notifications (P1 and P2 escalations); ops-action-tracker (crisis response actions; owner; deadline); post-crisis debrief report; ops-culture-ops (cultural impact of crisis on employee morale); crisis plan updates (lessons learned)
- **HITL Required:** P1 → Matt within 2 hours + legal same day; P2 → Matt within 24 hours + legal consulted; HIPAA breach → HIPAA counsel same day; regulatory submissions → legal coordinates and approves; LP material disclosure → Matt approves; all external communications → Matt + legal approve; debrief → Dr. Lewis facilitates + Matt reviews lessons learned; cyber/D&O insurance notification → Dr. Lewis + Matt awareness

## Test Cases
1. **Golden path:** Allevio's IT lead reports a failed login attempt with unusual behavior on a file server that contains enrollment data. Dr. Lewis classification: P2 (security incident; no confirmed exfiltration yet; potentially upgrades to P1 if exfiltration is confirmed). Actions in first 24 hours: (1) Allevio IT isolates the affected server and preserves logs — do not wipe; (2) Dr. Lewis retains a cyber counsel with HIPAA expertise (attorney-client privilege on investigation); (3) Dr. Lewis calls Matt Mathison: "We have a potential security incident at Allevio — server with enrollment data; unusual login activity; no confirmed exfiltration yet. Legal is engaged. We'll know more in 24-48 hours. No external communications until legal clears."; (4) Cyber forensics firm retained via counsel; (5) If investigation confirms no exfiltration: document and close with lessons learned; upgrade protocols; (6) If investigation confirms exfiltration of PHI: upgrade to P1; HIPAA notification clock starts from discovery date; 60-day notification window to HHS/OCR + affected individuals.
2. **Edge case:** An entity CEO calls Dr. Lewis to say "We had an issue but we handled it — just letting you know after the fact" about what turns out to be a potential regulatory violation → Dr. Lewis: "I need to understand this fully before we can consider it closed. Walk me through exactly what happened, when you discovered it, and what steps were taken. Depending on what I hear, this may require legal review and possibly regulatory notification. The fact that it's been handled internally doesn't necessarily mean there's no regulatory obligation. Can you send me the documentation of what occurred and what was done? I need 48 hours to assess, and I may need to loop in Matt Mathison depending on what I find." Dr. Lewis does not accept "we handled it" as a crisis closure without his own assessment of whether the entity's response was legally and operationally adequate.
3. **Adversarial:** An entity CEO wants to delay notifying Matt Mathison about a cash runway issue (29 days of runway) because "we almost have a bridge deal closed and don't want to worry him" → Dr. Lewis: "I understand the instinct, but I can't agree to delay notifying Matt. At 29 days runway, this is a P1 financial crisis by our protocol. Here's why this can't wait: (1) If the bridge deal doesn't close, Matt needs to have been involved earlier to act quickly — not learn about it 2 weeks from now; (2) Matt may have relationships or capital access that could help — but only if he knows; (3) If this becomes public or reaches LPs without Matt's knowledge, the trust damage is worse than the financial problem. I'm going to call Matt today. My framing will be: 'The bridge deal is nearly closed; here's the status; here's the risk if it doesn't close by [date]; here's what we need from you if it fails.' Matt has seen financial pressure before — he needs the truth, and he needs it now."

## Audit Log
All crisis briefings retained (with classification; date; resolution). All external communications retained (with legal clearance records). Matt Mathison notification records retained (date; time; what was communicated). Legal engagement records retained (with privilege designations). HIPAA breach records retained (discovery date; notification date; HHS/OCR submissions). Post-crisis debrief reports retained. Crisis plan version history retained. D&O and cyber insurance notification records retained.

## Deprecation
Crisis response is a permanent operational function. The crisis types and severity thresholds are reviewed annually and updated as the portfolio's risk profile evolves. Entity-specific protocols (HIPAA at Allevio; DOGM at HIVE) are updated when regulatory requirements change.
