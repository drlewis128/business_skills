---
name: ai-krista-conversation-auditor
description: "Audit Krista.ai conversation quality, accuracy, and compliance for MBL Partners. Use when the user says 'Krista conversation audit', 'audit Krista', 'Krista quality', 'Krista accuracy', 'Krista output quality', 'Krista conversation quality', 'Krista is giving wrong answers', 'Krista is hallucinating', 'Krista said something wrong', 'Krista made an error', 'Krista output error', 'review Krista conversations', 'Krista conversation log', 'Krista compliance', 'Krista HIPAA', 'Krista said something inappropriate', 'Krista tone', 'Krista response quality', 'Krista conversation review', 'Krista performance', 'Krista quality assurance', 'Krista QA', 'Krista drift', 'Krista output drift', 'Krista response drift', 'is Krista performing well', 'Krista conversation history', 'Krista log review', 'Krista audit log', or 'Krista output review'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--workflow <name>] [--date-range <start end>] [--entity <mbl|allevio|hive|column6>] [--action <audit|spot-check|full-review|compliance-check>]"
---

# AI Krista Conversation Auditor

Audit Krista.ai conversation quality, accuracy, and compliance for MBL Partners — reviewing conversation logs for output errors, hallucinations, tone issues, HIPAA boundary violations, and performance drift; producing a quality scorecard and remediation log. Krista's output quality must be consistently high because its outputs flow directly to Matt Mathison, entity CEOs, and (via HITL gates) to LPs and employers.

## When to Use
- Monthly Krista conversation quality spot-check (all active workflows)
- After any reported output error or user complaint about Krista
- Quarterly full Krista quality audit (all workflows; all entities)
- Before adding a new entity to a Krista workflow

## Krista Conversation Audit Framework

```
AUDIT DIMENSIONS:

  1. OUTPUT ACCURACY:
     Does Krista's output correctly reflect the input (meeting transcript; data pull; query)?
     Are action items, decisions, and names correctly extracted?
     Are numbers (financial; production; metric) accurately reported?
     Red flags: hallucinated participants; invented action items; wrong financial figures; wrong dates
     
  2. COMPLETENESS:
     Does Krista's output include all significant decisions and action items from the source?
     Does it omit any critical items?
     Red flags: major decisions from transcript not appearing in summary; action items missing owners
     
  3. TONE AND PROFESSIONAL STANDARD:
     Is the output appropriate for its audience (Matt Mathison; entity CEO; LP)?
     Is it BLUF-first? Concise? Professional?
     Red flags: informal language; excessive hedging; overly verbose; inappropriate confidentiality level
     
  4. HIPAA COMPLIANCE (Allevio workflows):
     Does any Allevio workflow output contain PHI (member names; individual health data; individual utilization)?
     Is all Allevio output limited to employer aggregate data?
     Red flags: any mention of member names; individual ER visits; individual utilization patterns; diagnoses
     This is a zero-tolerance check — one PHI output in a Krista conversation log = immediate investigation
     
  5. SCOPE ADHERENCE:
     Is Krista operating within its designed workflow scope?
     Red flags: Krista providing financial recommendations beyond its workflow design; Krista answering out-of-scope queries without escalating to Dr. Lewis
     
  6. ESCALATION APPROPRIATENESS:
     When Krista encountered an ambiguous situation, did it escalate correctly (to Dr. Lewis; entity CEO)?
     Did it attempt to answer questions it should have escalated?
     
SAMPLING METHODOLOGY:
  Monthly spot-check: 5 random conversations per active workflow
  Quarterly full audit: all conversations per workflow (or 20% sample for high-volume workflows)
  Triggered audit (after error report): full audit of affected workflow for prior 30 days
  
SCORING PER CONVERSATION:
  5: Perfect output — accurate; complete; professional; compliant
  4: Minor issues — 1-2 small accuracy gaps; no compliance issues
  3: Moderate issues — accuracy gaps OR completeness gap; needs workflow adjustment
  2: Significant issues — material error; needs immediate workflow remediation
  1: Critical issue — HIPAA violation; materially wrong financial data; inappropriate output
  
Workflow average ≥4.0: No action required
Workflow average 3.0-3.9: Workflow review required; Dr. Lewis adjusts prompt or logic
Workflow average <3.0: Workflow suspended pending remediation
Any conversation scored 1: Immediate investigation; workflow suspended; Matt Mathison notified
```

## Output Format

```markdown
# Krista Conversation Audit — [Workflow Name] | [Date Range]
**Audited by:** Dr. Lewis | **Sample:** [N conversations] | **Workflow status:** Active/Suspended

---

## Quality Scorecard

| Dimension | Average Score | Flag |
|-----------|--------------|------|
| Output accuracy | X.X/5 | ✅/⚠️/🔴 |
| Completeness | X.X/5 | |
| Tone / professional | X.X/5 | |
| HIPAA compliance | ✅ Pass / 🔴 FAIL | |
| Scope adherence | X.X/5 | |
| Escalation | X.X/5 | |
| **Overall** | **X.X/5** | **Green/Yellow/Red** |

---

## Issues Found

| Conversation | Date | Issue | Severity | Action |
|-------------|------|-------|----------|--------|
| [ID] | [Date] | [Wrong participant name] | Low | Prompt update |

---

## Remediation Actions
1. [Prompt update: action item extraction instruction clarified]
2. [Escalation: conversation #[ID] — Dr. Lewis reviewed; no external impact]

## Workflow Status: [Active / Under review / Suspended]
```

## Output Contract
- A HIPAA violation in a Krista conversation log is the highest-priority audit finding — if Dr. Lewis finds any Allevio workflow output containing PHI (member name; individual diagnosis; individual utilization data), the workflow is suspended immediately, not after the audit is complete; the suspension happens first, then the investigation; the reason: a PHI output that is still active in a Krista workflow can produce more PHI outputs while the investigation is ongoing; suspension takes 2 minutes; investigation takes 2 hours; the two-minute action prevents the two-hour investigation from growing into a reportable breach
- Audit findings that require workflow changes go to the Krista.ai team with a specification, not a complaint — when Dr. Lewis finds accuracy issues in a Krista conversation log, he does not report "Krista is making mistakes"; he identifies the specific cause (prompt instruction gap; workflow logic error; integration data error; edge case not handled) and writes a specification for the fix; "Krista said the wrong meeting date" becomes "the meeting date extraction step needs to use the Teams calendar invitation date as the authoritative source rather than inferring from the transcript"; the Krista.ai team gets a spec they can implement, not a bug report they need to diagnose
- HITL required: monthly spot-check → Dr. Lewis completes; quarterly full audit → Dr. Lewis prepares summary; Matt Mathison sees quarterly audit summary; any Score-1 conversation → Matt Mathison immediate notification; Allevio HIPAA violation → Matt Mathison + Allevio entity CEO immediate + legal counsel within 24 hours; workflow suspension → Dr. Lewis authority (does not need Matt Mathison approval for speed); workflow reinstatement after suspension → Dr. Lewis documents remediation; Matt Mathison notified before reinstatement

## System Dependencies
- **Reads from:** Krista.ai conversation logs (all workflows; platform access); Krista.ai audit trail; Microsoft Teams meeting recordings and transcripts (source data for meeting workflows); Monday.com (destination verification — did the action items actually appear?); SharePoint (meeting summary destination verification)
- **Writes to:** Krista conversation audit reports (SharePoint → MBL → AI Strategy → Krista → Audit Reports → [Date]); workflow remediation specifications (to Krista.ai team); workflow status updates (active/suspended/remediated); Matt Mathison quality briefings; HIPAA incident records (Allevio)
- **HITL Required:** Score-1 → Matt Mathison immediate; HIPAA violation → Matt Mathison + entity CEO + legal; workflow suspension → Dr. Lewis authority; reinstatement → Dr. Lewis documents; quarterly summary → Matt Mathison sees; Krista.ai team receives spec (not raw logs)

## Test Cases
1. **Golden path:** Monthly spot-check — Meeting Intelligence workflow (June 2026). 5 conversations sampled: June 3 (score 5), June 10 (score 4 — one action item owner misattributed; minor), June 15 (score 5), June 17 (score 5), June 22 (score 4 — meeting duration rounded to nearest hour; minor). Average: 4.6/5. Green. No workflow changes required. Noted: owner misattribution risk — add explicit "attribute action items to the meeting participant who agreed to take the action, not the person who proposed it" instruction to meeting summary prompt. Dr. Lewis updates prompt; Krista.ai team implements.
2. **Edge case:** Krista meeting summary for an Allevio employer onboarding meeting includes the line: "Dr. Smith expressed concern about the chronic condition management rates for [employer] members" — Dr. Lewis catches this during monthly audit → Score 1. Immediate: Krista Meeting Intelligence workflow for Allevio suspended. Investigation: the meeting was an employer onboarding call (employer representatives; Allevio entity CEO; no member PHI should be in scope). Root cause: "Dr. Smith" is an Allevio clinical lead, not a member's physician; the phrase "chronic condition management rates" is aggregate-level information; "member" language triggered PHI alert; re-read confirms no individual member data was disclosed. Assessment: not a HIPAA violation but a near-miss; the language was ambiguous. Remediation: prompt updated to exclude any language that references individual-level health metrics even if derived from an aggregate; workflow reinstated after 48-hour hold; Matt Mathison briefed; Allevio entity CEO briefed; no external notification required.
3. **Adversarial:** Entity CEO argues that Dr. Lewis's monthly audit process is "overkill" for a "simple summarization workflow" → Dr. Lewis: "I hear you — a 5-conversation spot-check takes me about 20 minutes, and most months I find nothing of concern. But three things make it worth the time: (1) Meeting Intelligence outputs go directly to Matt Mathison, who acts on them; a wrong action item in Matt's Monday.com board can misdirect an entity CEO's week; (2) Any workflow touching Allevio meetings has a HIPAA exposure window — 20 minutes monthly is cheap insurance for a potential breach investigation; (3) I've caught 2 minor issues in the last 6 months that I fixed before they became patterns. Those fixes took 30 minutes each. Skipping the audit would have meant those patterns continued for 3-6 months. I'll keep the monthly spot-check."

## Audit Log
All Krista conversation audit reports (monthly and quarterly; permanent; SharePoint). Conversation scores and findings. Remediation specifications (all; with implementation confirmation from Krista.ai team). Workflow suspension records (reason; date suspended; date reinstated; remediation summary). HIPAA incident records (Allevio; permanent). Matt Mathison notification records (Score-1 findings; quarterly summaries). Near-miss records.

## Deprecation
Audit framework reviewed quarterly. Scoring thresholds reviewed annually based on MBL's quality experience. HIPAA compliance criteria reviewed when regulations change. Sampling methodology reviewed when workflow volume changes significantly. Allevio-specific criteria reviewed annually.
