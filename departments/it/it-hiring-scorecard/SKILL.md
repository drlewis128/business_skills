---
name: it-hiring-scorecard
description: "Score IT and technology role candidates against structured criteria. Use when the user says 'hire IT staff', 'IT hiring', 'evaluate IT candidate', 'IT interview scorecard', 'IT job interview', 'IT role candidate', 'hire a developer', 'hire sysadmin', 'IT technician hiring', 'hire IT manager', 'technology hire', 'evaluate tech candidate', or 'IT staff scorecard'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--role <title>] [--candidate <name>] [--level <junior|mid|senior|manager>] [--entity <company name>]"
---

# IT Hiring Scorecard

Score IT and technology role candidates at MBL portfolio companies against a structured evaluation framework — ensuring that IT hires are assessed on technical skills, operational discipline, communication, and cultural alignment (THRIVE) rather than just resume credentials or interview impressiveness. At portfolio scale, a weak IT hire creates problems that compound for years; an excellent IT hire multiplies Dr. Lewis's capacity.

## When to Use
- Interviewing candidates for IT support, sysadmin, IT manager, or developer roles
- Evaluating a managed service provider (MSP) technician who will become embedded support
- Comparing multiple candidates for an IT role across portfolio companies
- Post-interview debrief — structured scoring to avoid hiring based on gut feeling

## IT Hiring Framework

```
Core competency dimensions for IT roles:
  Technical depth (30%): Does the candidate actually know the systems and technologies involved?
    → Scored through specific technical questions, not resume keywords
    → Sysadmin/IT support: M365/Entra ID, Intune, networking, troubleshooting methodology
    → Developer: Languages relevant to the role, architecture, testing discipline
    → Healthcare IT: HIPAA technical safeguards, AdvancedMD or EHR experience (Allevio)
    
  Troubleshooting and problem-solving (25%): How do they think through an unfamiliar problem?
    → Scored through scenario-based questions: "Walk me through how you would diagnose..."
    → Do they ask clarifying questions first? Do they think systematically?
    → Red flag: They jump to a solution without understanding the problem
    
  Operational discipline (20%): Do they document? Do they think about process?
    → Scored through questions about how they've handled recurring issues, change management
    → "How do you decide when to document something?"
    → "Tell me about a time a process change you made reduced ticket volume"
    
  Communication and stakeholder management (15%): Can they explain technical issues to non-technical people?
    → Scored through how they describe technical concepts in the interview
    → At portfolio scale, IT communicates directly with business owners and employees
    → Red flag: Condescending, jargon-heavy explanations for non-technical concepts
    
  THRIVE alignment (10%): Do they align with MBL's core values?
    → Truth: Are they honest about what they don't know? Or do they fake knowledge?
    → Hustle: Do they have examples of working hard to solve a difficult problem?
    → Integrity: "Tell me about a time you had to deliver bad news to a stakeholder"
    → Red flag: Exaggerated claims about past work; blaming others for failures

Auto-disqualifiers (zero-tolerance):
  Technical depth ≤12/30: Cannot perform the core IT function — immediate reject
  THRIVE alignment ≤4/10: Cultural misfit — immediate reject regardless of technical score
  Dishonesty during interview (caught in a false claim): Immediate reject
  Refuses to discuss a documented failure or mistake: Strong reject signal
```

## Output Format

```markdown
# IT Hiring Scorecard — <Role Title>
**Candidate:** [Name] | **Interview date:** [Date]
**Interviewer:** Dr. John Lewis | **Entity:** [Company]

---

## Scorecard

| Dimension | Weight | Score (1-5) | Weighted | Notes |
|-----------|--------|-----------|---------|-------|
| Technical depth | 30% | [1-5] | [X] | |
| Troubleshooting / problem-solving | 25% | [1-5] | [X] | |
| Operational discipline | 20% | [1-5] | [X] | |
| Communication | 15% | [1-5] | [X] | |
| THRIVE alignment | 10% | [1-5] | [X] | |
| **Total weighted score** | 100% | — | **[X/5]** | |

**Threshold:** Technical depth must score ≥3/5 (weighted ≥0.9); THRIVE must score ≥2/5 (weighted ≥0.2)

---

## Technical Questions and Responses

| Question | Expected answer elements | Candidate response quality | Score |
|---------|------------------------|--------------------------|-------|
| "Walk me through how you'd diagnose a user who can't connect to VPN" | Asks clarifying questions first; checks local network; checks VPN client logs; checks server-side; escalates if needed | [Summary of response] | [1-5] |
| "How do you decide what to document after resolving an issue?" | Documents when the fix is non-obvious, when the issue could recur, or when others would benefit | | |
| "A user reports their laptop is running slow. Where do you start?" | CPU/memory/disk utilization; startup programs; malware scan; recent changes | | |
| "What's a HIPAA Business Associate Agreement and why does it matter?" [Allevio roles] | Vendor agreement required for PHI handlers; legal requirement; specific controls | | |
| [Role-specific technical question] | | | |

---

## Behavioral Questions and Responses

| Question | What good looks like | Candidate response | Score |
|---------|---------------------|------------------|-------|
| "Tell me about the most difficult technical problem you've solved" | Structured explanation; clear diagnosis process; honest about what they tried | | |
| "Describe a time you had to tell a stakeholder something they didn't want to hear" | Direct; provided a recommendation; owned the situation | | |
| "Tell me about a time a process you owned failed. What happened?" | Takes ownership; explains root cause; describes what changed | | |
| "How do you stay current with IT and security threats?" | Specific sources (CISA alerts, vendor security bulletins, etc.) | | |

---

## Auto-Disqualifier Check

- [ ] Technical depth ≥3/5 — if below: STOP, do not advance
- [ ] THRIVE alignment ≥2/5 — if below: STOP, do not advance
- [ ] No dishonesty detected during interview
- [ ] Willing to discuss a documented failure

---

## Overall Assessment

**Weighted score:** [X/5]
**Auto-disqualifiers triggered:** Yes (STOP) / No (continue)
**Recommendation:** Strong Yes / Yes / Lean Yes / Lean No / No / Hard No
**Key strength:** [What stands out positively]
**Key concern:** [What requires further evaluation or is a red flag]
**References:** Required for Manager+ roles — [Status: Requested / Complete / Waived with reason]

---

## Comparison (if multiple candidates)

| Candidate | Technical | Problem-solving | Operational | Communication | THRIVE | Total | Recommendation |
|---------|----------|---------------|-----------|-----------|----|---|---|
| [Name 1] | | | | | | | |
| [Name 2] | | | | | | | |

**Recommended hire:** [Name] — [Brief rationale]
```

## Output Contract
- Scoring happens during or immediately after the interview, not from memory 2 days later — interview impressions decay quickly; the scorecard is completed within 2 hours of the interview; specific quotes and response summaries are recorded, not general impressions; "seemed knowledgeable" is not a score; "correctly diagnosed the VPN scenario by starting with client-side logs before server-side" is a score
- Technical depth is tested with specific questions, not resume keywords — a candidate who lists "Azure" on their resume but cannot explain what Entra ID does or how Conditional Access works has "Azure" on their resume; specific technical questions with expected answer elements are used; the expected answer elements are defined before the interview, not after; this prevents scoring based on confidence rather than knowledge
- References are required for Manager+ roles — a reference call with a former direct manager takes 20 minutes and provides signal that no interview can produce: "Would you work for this person again? What was their biggest weakness as a manager? How did they handle conflict within the team?"; reference calls at Manager+ level are not optional; Dr. Lewis conducts them personally
- HITL required: Dr. Lewis interviews all IT Manager+ candidates; portfolio company CEOs interview final IT hires (Manager+ level); reference calls by Dr. Lewis; hiring decision by Dr. Lewis + CEO for Manager+; Matt Mathison for IT Director or VP-level IT hires

## System Dependencies
- **Reads from:** Job description, role requirements, portfolio company IT needs, prior interview feedback (if second round)
- **Writes to:** Hiring scorecard (SharePoint/Ops/<Company>/HR/Hiring/<Role>/Scorecards/); candidate comparison; hiring recommendation
- **HITL Required:** Dr. Lewis interviews IT hires; CEO interviews Manager+ candidates; references by Dr. Lewis; hiring decision by Dr. Lewis + CEO (Manager+); Matt Mathison for Director+ IT hires

## Test Cases
1. **Golden path:** Evaluating 3 IT support technician candidates for Allevio → Technical questions: VPN diagnosis, M365 user provisioning, endpoint encryption; Behavioral: difficult stakeholder situation, process improvement example; Candidate A: Technical 4/5 (correctly diagnosed VPN in 3 steps; explained BitLocker accurately), Troubleshooting 4/5, Operational 3/5 (documents issues, inconsistent format), Communication 4/5, THRIVE 4/5 — Total: 3.85/5 ✅; Candidate B: Technical 2/5 (could not explain Entra ID vs. local accounts) — AUTO-DISQUALIFY; Candidate C: Technical 3/5, THRIVE 2/5 (blamed previous employer repeatedly for failures) — borderline; Recommendation: Candidate A — strong technical fit, healthcare IT experience, passes all thresholds; reference calls initiated
2. **Edge case:** Top candidate has excellent technical skills but low THRIVE score (1.5/5) due to multiple "blame others" answers → Auto-disqualified: THRIVE ≤4/10 weighted = 0.15 < 0.2 threshold; technical excellence cannot override cultural misalignment; at MBL portfolio scale, an IT person who deflects accountability and blames others will conflict with the THRIVE operating model and damage the culture at a small company more severely than at a large enterprise; document the rationale clearly; do not advance; continue the search
3. **Adversarial:** "The candidate's resume is amazing and the CEO really liked them in the intro call — do we really need to do this structured evaluation?" → The structured evaluation is what separates a good interviewer from a biased one; an impressive resume and a good first impression are the two most common predictors of hiring mistakes; the scorecard is what catches: the sysadmin who says "Azure" but cannot explain Entra ID; the manager who talks about teamwork but cannot describe a single example of advocating for their team; the pattern of impressive candidates who fail on THRIVE alignment is consistent — run the scorecard

## Audit Log
Hiring scorecards retained per candidate. Interview notes retained. Reference call notes retained (Manager+ roles). Hiring decisions documented with rationale. Rejected candidates documented with reason. Comparison matrices retained for multi-candidate evaluations.

## Deprecation
Retire when portfolio companies have dedicated HR/recruiting functions with IT-specific hiring frameworks — with Dr. Lewis reviewing technical scoring criteria and interviewing Manager+ IT candidates. THRIVE alignment assessment in all IT hires is a permanent requirement regardless of who leads recruiting.
