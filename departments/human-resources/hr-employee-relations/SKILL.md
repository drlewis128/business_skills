---
name: hr-employee-relations
description: "Manage employee relations issues and complaints for MBL Partners portfolio companies. Use when the user says 'employee relations', 'employee complaint', 'HR complaint', 'employee concern', 'workplace issue', 'workplace complaint', 'employee grievance', 'team conflict', 'manager complaint', 'complaint about manager', 'hostile work environment', 'harassment', 'harassment complaint', 'discrimination complaint', 'discrimination concern', 'bullying', 'retaliation complaint', 'retaliation concern', 'employee dispute', 'interpersonal conflict', 'coworker conflict', 'HR issue', 'how do I handle this complaint', 'what do I do with this complaint', 'complaint intake', 'report a concern', 'speak up', 'hotline', 'anonymous complaint', 'HR records', or 'confidential HR matter'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--type <complaint|conflict|accommodation|concern>] [--severity <minor|moderate|serious|legal>] [--action <intake|triage|investigate|resolve>]"
---

# HR Employee Relations

Manage employee relations issues — receiving complaints, triaging severity, initiating investigations when warranted, and resolving workplace concerns while protecting the rights of all parties and preserving the entity's legal compliance. Employee relations is the function where THRIVE values are most tested: a complaint about a manager who produces great numbers is a THRIVE Integrity test; how the entity handles it signals to every employee what the culture actually values.

## When to Use
- An employee raises a complaint, concern, or conflict
- A manager reports an interpersonal issue on their team
- A complaint requires triage to determine severity and response path
- An accommodation request is received

## Employee Relations Framework

```
INTAKE AND TRIAGE:

  WHO CAN RAISE A CONCERN:
    Any employee of any MBL portfolio entity
    Anonymous (via written submission to Dr. Lewis)
    Third-party (customer, vendor) concerns about employee conduct: receive and triage
    
  TRIAGE CLASSIFICATION:
    MINOR: interpersonal tension; communication style conflict; policy clarification question
      Response: manager coaching conversation; mediation if needed
      Timeline: 5 business days to initial response
      
    MODERATE: persistent conflict; complaint about management style; policy violation 
      (non-discrimination/harassment)
      Response: Dr. Lewis conducts investigation (hr-investigation-manager)
      Timeline: investigation begins within 3 business days
      
    SERIOUS: harassment; discrimination; THRIVE Integrity violation; protected class complaint
      Response: Dr. Lewis + legal counsel; entity CEO notified
      Timeline: investigation begins within 1 business day; legal counsel within same day
      
    LEGAL: threat of EEOC charge; attorney contact; mention of lawsuit
      Response: Dr. Lewis + legal counsel immediately; Matt Mathison within 4 hours
      Timeline: legal counsel same day; Matt Mathison notification within 4 hours
      
  SPECIAL CATEGORIES:
    Harassment (sexual, racial, national origin, disability, religion, age):
      Always = Serious or Legal; Dr. Lewis conducts or oversees investigation
      Cannot be delegated to the harassing manager's manager
    Retaliation complaint:
      Any complaint following protected activity (prior complaint; leave; EEOC) = Serious
      Dr. Lewis + legal counsel review before any action involving the complaining employee
    Accommodation request (ADA, pregnancy, religious):
      Separate track from ER complaint; see hr-leaves-manager for FMLA/leave overlap
      Interactive process required: Dr. Lewis + entity CEO + the employee

COMPLAINT HANDLING PRINCIPLES:
  Confidentiality: only on need-to-know basis (not "we'll keep this private" — cannot guarantee)
  Non-retaliation: remind all parties that retaliation is prohibited; document this reminder
  Promptness: all complaints receive a response — no complaint is left unacknowledged
  Objectivity: Dr. Lewis is neutral; findings follow the evidence
  Documentation: all complaints and actions are documented in the HR file (not email drafts)
  
EMPLOYEE RIGHTS REMINDER (communicate to complainant at intake):
  "Your concern has been received. We take all concerns seriously.
  We will investigate appropriately and follow up with you.
  You are protected from retaliation for raising a concern.
  We cannot guarantee confidentiality in every aspect of the investigation 
  but will protect your identity to the extent possible."

ALLEVIO-SPECIFIC:
  Any employee relations complaint involving PHI or patient care = add HIPAA layer
  Clinical complaints (care quality; patient safety) route to clinical leadership + Dr. Lewis
  No PHI disclosed in ER investigation records
```

## Output Format

```markdown
# Employee Relations Intake — [Case ID: ER-[Entity]-[YYYY]-[NNN]] — [Date]
**Complainant:** [Name / Anonymous] | **Entity:** [Entity] | **Severity:** Minor / Moderate / Serious / Legal
**Received by:** Dr. Lewis | **Respondent (if named):** [Name or role]

---

## Complaint Summary
[Brief, factual description — 3-5 sentences; complainant's language where possible]

---

## Triage Decision
**Classification:** [Minor / Moderate / Serious / Legal]
**Response path:** [Manager coaching / Dr. Lewis investigation / Legal counsel + Dr. Lewis]
**Notifications required:**
- [ ] Entity CEO notified: [Date] (Serious/Legal)
- [ ] Matt Mathison notified: [Date] (Legal)
- [ ] Legal counsel engaged: [Date] (Serious/Legal)

---

## Non-Retaliation Reminder Delivered
- [ ] Complainant reminded: [Date]
- [ ] Respondent reminded (if named and aware): [Date]

---

## Status
☐ Open — investigation in progress
☐ Closed — outcome: [summary of resolution]
☐ Referred to legal — attorney engaged [Date]
```

## Output Contract
- Every complaint receives a documented response — a complaint that is received and ignored (no acknowledgment; no triage; no update) is the fastest path to an EEOC charge and a reputation for not caring; Dr. Lewis acknowledges every complaint within 1 business day; this acknowledgment is documented (date; method; content); if the complaint is anonymous, the response is documented even though there is no recipient to receive it directly
- Retaliation protection is stated explicitly at intake — employees who raise concerns fear retaliation; stating explicitly that retaliation is prohibited (and documenting that the statement was made) is a legal requirement in the EEOC investigative process and is a foundational trust signal; Dr. Lewis makes this statement at every complaint intake without exception; if a subsequent adverse action affects the complainant, the documented non-retaliation reminder is evidence that the entity was aware of the obligation
- THRIVE Integrity complaints skip the manager and go to Dr. Lewis directly — a complaint about a manager's integrity cannot be triaged by that manager's supervisor without bias risk; Dr. Lewis receives all Integrity-level complaints directly; the entity CEO is notified if the complaint involves a direct report to the CEO; Matt Mathison is notified if the complaint involves an entity CEO
- HITL required: triage classification → Dr. Lewis determines; Serious complaint → entity CEO notified + Dr. Lewis; Legal complaint → Matt Mathison within 4 hours + legal counsel same day; THRIVE Integrity complaint about entity CEO → Matt Mathison; investigation initiation → Dr. Lewis authorizes; complaint involving Dr. Lewis → Matt Mathison is notified + independent HR consultant engaged; complaint outcome → entity CEO approves corrective action

## System Dependencies
- **Reads from:** hr-handbook-manager (policy violations — what policies apply); legal-employment-law-tracker (EEOC; ADA; Title VII; AZ/UT employment law); hr-investigation-manager (Moderate+ complaints trigger investigation); legal-incident-response-manager (Legal-tier complaints)
- **Writes to:** ER case file (SharePoint → HR → Employee Relations → [Entity] → [Case ID]); non-retaliation reminder record; entity CEO notification (Serious/Legal); Matt Mathison notification (Legal + THRIVE Integrity re: CEO); legal counsel engagement record; outcome record
- **HITL Required:** Triage → Dr. Lewis; Serious → entity CEO + Dr. Lewis; Legal → Matt Mathison + legal counsel; Integrity → Dr. Lewis handles; complaint re: Dr. Lewis → Matt Mathison; investigation → Dr. Lewis authorizes; corrective action → entity CEO approves

## Test Cases
1. **Golden path:** Allevio employee submits written concern that a coworker is using aggressive language in team meetings. Triage: Minor-Moderate (non-protected class; interpersonal communication issue). Acknowledgment: same day. Response: Dr. Lewis speaks with the complainant (with consent) and the manager. Manager conducts coaching conversation with the respondent (hr-coaching-guide). 30-day follow-up with complainant. Closed.
2. **Edge case:** Anonymous complaint that HIVE CEO is approving personal travel expenses through company funds → Dr. Lewis: "This triage is Serious — it involves a financial integrity concern about an entity CEO. I'm classifying this as a THRIVE Integrity complaint about an executive. I'm notifying Matt Mathison today. I will not involve the HIVE CEO in this investigation. I'll request access to the expense records through HIVE's finance system directly. Matt Mathison decides on next steps after my initial findings."
3. **Adversarial:** Entity CEO wants to know who filed an anonymous complaint → Dr. Lewis: "I cannot disclose the identity of an anonymous complainant — this is non-negotiable. The value of anonymous reporting is that employees can raise concerns without fear of identification. If I disclose identities when pressure is applied, no one will ever report anonymously again. I understand the frustration. Let me focus on investigating the substance of the complaint. If the investigation produces findings, we address those. The complainant's identity is protected."

## Audit Log
All ER case files retained permanently (potential litigation). Non-retaliation reminder records retained permanently. Triage classification records retained. Entity CEO notifications retained. Matt Mathison notifications retained. Legal counsel engagement records retained. Outcome records retained. Anonymous complaint records retained (complaint content; investigation; outcome — not identity).

## Deprecation
Triage classification criteria reviewed annually. Legal referral triggers updated when EEOC or AZ/UT employment law changes. Allevio HIPAA overlay reviewed when HIPAA regulations change.
