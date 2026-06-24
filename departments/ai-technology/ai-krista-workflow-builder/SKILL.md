---
name: ai-krista-workflow-builder
description: "Build and configure Krista.ai workflows for MBL Partners AI orchestration. Use when the user says 'Krista workflow', 'build a Krista workflow', 'Krista automation', 'Krista process', 'automate with Krista', 'Krista.ai build', 'Krista skill', 'Krista integration', 'Krista step', 'Krista trigger', 'Krista action', 'Krista conversation', 'Krista agent', 'configure Krista', 'set up Krista', 'Krista for meetings', 'Krista for operations', 'Krista for finance', 'Krista for HR', 'Krista Monday.com', 'Krista QuickBooks', 'Krista Teams', 'Krista email', 'Krista notification', 'Krista approval', 'Krista escalation', 'Krista data pull', 'Krista report', 'Krista summary', 'Krista pipeline', 'Krista prompt', 'Krista conversation flow', 'new Krista workflow', 'design the Krista workflow', or 'map out the Krista process'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--workflow <name>] [--trigger <event|schedule|manual>] [--entity <mbl|allevio|hive|column6>] [--action <design|build|test|deploy>]"
---

# AI Krista Workflow Builder

Build and configure Krista.ai workflows for MBL Partners AI orchestration — designing conversation flows, integration triggers, action sequences, and escalation paths that connect Krista to the MBL systems stack (Microsoft 365; QuickBooks; Monday.com; GoHighLevel; Bill.com). Krista is MBL's coordination layer: it orchestrates systems above them, not replacing them.

## When to Use
- Designing a new Krista workflow for any MBL or portfolio process
- Mapping trigger-action-escalation sequences before building in Krista
- Integrating a new system into an existing Krista workflow
- Reviewing a Krista workflow that is not producing expected outputs

## Krista Workflow Design Framework

```
KRISTA ARCHITECTURE CONTEXT:
  Krista.ai role: AI orchestration coordinator — sits above all MBL systems
  What Krista does: receives inputs (meeting transcripts; triggers; commands) → processes with AI →
    executes actions across connected systems → notifies humans for approval or review
  What Krista does NOT do: replace QuickBooks; replace CRM; replace payroll; own data
  Systems Krista integrates with:
    Microsoft 365: Outlook (email); Teams (messaging/meetings); SharePoint (documents)
    Monday.com: task creation; sprint board updates; action item push
    QuickBooks: financial data read (not write — HITL required for any write)
    GoHighLevel: CRM lead and contact management; email automation
    Bill.com: AP notification triggers (not payment execution — HITL required)
    Transcription: meeting recordings → Krista transcription → Claude summary
    
WORKFLOW DESIGN ELEMENTS:

  TRIGGER (what starts the workflow):
    Event-based: meeting ends → transcript ready; new Monday.com card; email keyword detected
    Schedule-based: every Monday 8am; first of month; quarterly
    Manual: Dr. Lewis or Matt Mathison sends command via Teams or email to Krista
    
  PROCESSING LAYER (what Krista + Claude do):
    Transcription: Krista converts audio/text → structured transcript
    Summarization: Claude summarizes per template (meeting type; entity context)
    Data pull: Krista queries QuickBooks; Monday.com; GHL for context
    Classification: Krista categorizes input (meeting type; priority; action items vs. decisions)
    
  ACTION LAYER (what Krista executes):
    Write to Monday.com: create card; update status; assign owner; set due date
    Send email/Teams: summary; notification; escalation
    Create SharePoint document: save meeting summary; pre-meeting prep
    Notify Dr. Lewis: for HITL approval before any financial or LP-facing action
    
  HITL GATES (where human approval is required):
    Any action that writes to a financial system of record
    Any LP-facing communication
    Any Allevio communication (HIPAA boundary)
    Any action flagged as high-stakes by Krista's escalation logic
    
WORKFLOW DOCUMENTATION STANDARD:
  Every Krista workflow gets a workflow spec document:
    Workflow name and version
    Trigger: [event/schedule/manual] + conditions
    Inputs: what data Krista receives
    Processing steps: numbered sequence
    Outputs: what Krista produces (document; notification; action)
    HITL gates: where human review is required
    Error handling: what Krista does if an integration fails
    Owner: who is responsible for the workflow
    Last tested: date of last successful test run
```

## Output Format

```markdown
# Krista Workflow Spec — [Workflow Name] v[N]
**Owner:** Dr. Lewis | **Entity:** [MBL/Allevio/HIVE/Column6] | **Status:** [Draft/Active/Deprecated]

---

## Trigger
**Type:** [Event / Schedule / Manual]
**Condition:** [Meeting ends with Matt Mathison as participant / Every Monday 8am / etc.]

---

## Processing Steps
1. [Krista receives transcript from Teams/recording]
2. [Claude processes via Meeting Summary template]
3. [Krista extracts action items → structures for Monday.com]
4. [Krista sends draft summary to Dr. Lewis for review]

---

## HITL Gate
**Gate:** Dr. Lewis reviews summary before Monday.com push
**Approval path:** Dr. Lewis replies "send" → Krista pushes to Monday.com

---

## Outputs
- [Meeting Summary: saved to SharePoint → MBL → Meetings → [Date]]
- [Action items: pushed to Monday.com sprint board → [Board] → [Column]]
- [Summary email: sent to Matt Mathison + Jimmy Lindsley]

---

## Error Handling
- [Monday.com API unavailable: Krista emails Dr. Lewis with manual push instructions]
- [Transcript quality < threshold: Krista flags for Dr. Lewis manual review]
```

## Output Contract
- Krista workflow design starts with the human workflow, not the technology — before designing any Krista workflow, Dr. Lewis maps the current manual process: who does what, in what order, with what information; the Krista workflow replicates the human decision logic, not the technology's capabilities; a Krista workflow that automates the wrong process is worse than no automation because it creates confident-looking wrong outputs; the design process always starts with: "walk me through what you do today when [trigger event] happens"
- HITL gates are non-negotiable for any action with downstream consequences — in every Krista workflow, Dr. Lewis designs at least one human review point before any action that sends to an external recipient (LP), writes to a financial system, or pushes to a customer-facing channel; the HITL gate is not a bottleneck — it is the governance mechanism that makes AI orchestration safe enough to run at scale; a Krista workflow that auto-pushes to Monday.com without Dr. Lewis review is a workflow that will eventually push incorrect action items to Matt Mathison; the HITL gate takes 30 seconds to approve a clean summary and prevents every class of AI output error from becoming an external problem
- HITL required: workflow design → Dr. Lewis designs; entity CEO reviews for entity-specific workflows; any financial system write → HITL gate in workflow; LP-facing communication → Matt Mathison HITL gate; Allevio workflows → HIPAA review before deployment; new system integration → Dr. Lewis tests before Krista.ai team deploys; workflow deprecation → Dr. Lewis + entity CEO confirm; Matt Mathison sees quarterly AI operations update

## System Dependencies
- **Reads from:** Krista.ai platform (workflow builder; conversation logs; integration status); Microsoft 365 (Teams; Outlook; SharePoint — inputs to Krista); meeting transcripts (Krista transcription service); Monday.com (board structure; column names; card templates); GoHighLevel (CRM data for context); entity process documentation
- **Writes to:** Krista workflow spec documents (SharePoint → MBL → AI Strategy → Krista Workflows → [Workflow Name]); Monday.com (via Krista; HITL approved); SharePoint documents (via Krista); email/Teams notifications (via Krista); Krista.ai platform (workflow configuration)
- **HITL Required:** Financial system writes → HITL gate; LP-facing comms → Matt Mathison; Allevio → HIPAA review; new integration → Dr. Lewis tests first; workflow deployment → Dr. Lewis approves; deprecation → Dr. Lewis + entity CEO

## Test Cases
1. **Golden path:** Matt Mathison weekly meeting summary workflow. Trigger: Teams meeting with Matt Mathison tag ends AND recording available. Processing: Krista transcribes → Claude summarizes per Meeting Summary template (participants; key decisions; action items; next steps; BLUF first). HITL gate: summary sent to Dr. Lewis (Teams message: "Weekly meeting summary ready — review and reply 'send' to push to Monday.com and email distribution"). Dr. Lewis reviews in 2 minutes; replies "send". Krista: (1) Pushes action items to Monday.com MBL board; (2) Saves summary to SharePoint MBL/Meetings/[Date]; (3) Emails Matt Mathison + Jimmy Lindsley. Workflow complete. First run tested successfully.
2. **Edge case:** Krista receives a Teams meeting transcript but the recording quality was poor (several minutes of inaudible audio) → Krista's error handling: "Meeting summary quality flag — [Date] meeting transcript has X minutes of low-confidence transcription. I've completed the summary with available content but flagged [N] action items as uncertain (marked [?] in the summary). Dr. Lewis: please review the flagged items before approving the Monday.com push. If the uncertain items are significant, I can request the meeting host to resend the recording." Dr. Lewis reviews; determines uncertain items are minor; approves with manual edits to 2 flagged items. Workflow completes with human correction applied.
3. **Adversarial:** Krista.ai team suggests Dr. Lewis "turn off the HITL review" for the meeting summary workflow because "the summaries are consistently accurate" → Dr. Lewis: "I appreciate the team's confidence in Krista's output quality — the summaries have been good. But the HITL gate for this workflow takes me 2-3 minutes and it's the only checkpoint between Krista's interpretation of Matt Mathison's meetings and what lands in his Monday.com board. Even a 95% accuracy rate on meeting summaries means 1 in 20 meeting summaries has a consequential error — and meeting summaries that drive Matt Mathison's weekly agenda are exactly the place where a misattributed action item or wrong decision summary causes real problems. The gate stays. What I'd like to do instead: can Krista flag 'high confidence' summaries differently so I can review them faster? That reduces my review time from 3 minutes to 1 minute without removing the gate."

## Audit Log
Krista workflow spec documents (versioned; all versions retained). Workflow deployment records (date; version; deployer). HITL gate approval records. Workflow error and exception logs. Workflow performance records (success rate; HITL turnaround time). Workflow deprecation records. Integration test records. Allevio HIPAA review records for Allevio workflows.

## Deprecation
Workflow deprecated when underlying process changes. Version updated when integration APIs change (Monday.com; QuickBooks; GHL). HITL gates reviewed quarterly for continued appropriateness. Allevio workflow HIPAA review renewed annually. Workflow inventory reviewed quarterly for unused or degraded workflows.
