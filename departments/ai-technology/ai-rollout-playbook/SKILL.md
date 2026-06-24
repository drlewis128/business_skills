---
name: ai-rollout-playbook
description: "Build and execute AI rollout playbooks for MBL Partners and portfolio companies. Use when the user says 'AI rollout', 'AI rollout plan', 'AI rollout playbook', 'AI deployment plan', 'roll out AI', 'scale AI', 'AI scale', 'AI expansion', 'portfolio AI rollout', 'AI rollout checklist', 'AI onboarding', 'AI adoption', 'entity AI rollout', 'Allevio rollout', 'HIVE rollout', 'Column6 rollout', 'AI go-live', 'AI launch plan', 'AI deployment playbook', 'AI implementation plan', 'AI implementation checklist', 'how do we roll out AI', 'AI rollout timeline', 'AI rollout milestones', 'AI rollout gates', 'AI rollout readiness', 'entity AI launch', 'AI handoff', 'AI training plan', 'AI user training', 'entity CEO AI training', 'AI workflow handoff', 'AI knowledge transfer', 'AI go-live checklist', or 'AI operational readiness'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6>] [--phase <4>] [--action <plan|execute|checklist|review>]"
---

# AI Rollout Playbook

Build and execute AI rollout playbooks for MBL Partners portfolio companies — standardizing the deployment process from readiness assessment through live operations, including compliance setup, entity CEO training, workflow testing, and go-live gates. The playbook is MBL's validated deployment pattern, built from Phase 1-3 experience at MBL and applied to each portfolio company.

## When to Use
- Planning Phase 4 AI rollout for any portfolio company
- Executing a live AI rollout at Allevio; HIVE; or Column6
- Reviewing rollout readiness before go-live
- Post-rollout review and lessons learned documentation

## AI Rollout Playbook Framework

```
ROLLOUT STAGES (each entity follows this sequence):

  STAGE 0 — PRE-ROLLOUT ASSESSMENT (2-4 weeks):
    Prerequisite: ai-portfolio-ai-assessor score ≥15/25 (ready with preparation)
    Activities:
      □ Entity CEO discovery session (60-90 min) — identify top 3 AI use cases
      □ Data readiness audit — confirm data is in accessible, structured format
      □ Compliance setup:
          Allevio: HIPAA risk assessment + BAA execution (4-6 weeks)
          HIVE: DPA with any new vendors (1-2 weeks)
          Column6: client data confidentiality review (2-3 weeks)
      □ System access audit — ensure entity CEO has access to all relevant systems
      □ Vendor BAA/DPA review completed
    Gate: Dr. Lewis + entity CEO confirm Stage 0 complete; Matt Mathison approves Stage 1
    
  STAGE 1 — FIRST WORKFLOW LIVE (4-6 weeks):
    Target: deploy the highest-ROI, lowest-risk use case first
      Allevio: employer billing automation
      HIVE: production report synthesis
      Column6: campaign reporting synthesis
    Activities:
      □ Skill/workflow specification written (ai-agent-builder or ai-krista-workflow-builder)
      □ HIPAA/compliance review completed (use case-specific)
      □ Entity CEO training (how to interact with AI; how HITL gate works; how to provide feedback)
      □ Test run with synthetic data (not production data)
      □ Test run with 1 month of historical production data (Dr. Lewis monitors)
      □ Entity CEO reviews first 5 outputs before declaring live
      □ Go-live decision: Dr. Lewis + entity CEO + Matt Mathison
    Gate: entity CEO confirms value from first 5 live outputs
    
  STAGE 2 — SECOND WORKFLOW (4-6 weeks, after Stage 1 stable):
    Target: second-highest-ROI use case
    Follow same pattern: spec → compliance → training → test → live
    
  STAGE 3 — STEADY STATE:
    Target: ongoing operations; Dr. Lewis as support (not daily operator)
    Entity CEO handles: routine AI interactions; HITL reviews; first-line troubleshooting
    Dr. Lewis handles: workflow updates; quality audits; new use case deployment
    Monthly check-in: Dr. Lewis + entity CEO (15 min): quality; issues; new ideas
    
ENTITY CEO AI TRAINING CONTENT:
  How to interact with the AI skill (trigger phrases; argument hints)
  HITL gate: how to review and approve Krista outputs (Teams; email; Monday.com)
  Quality feedback: how to report quality issues to Dr. Lewis (Teams message; include example)
  What AI can't do: PHI restriction (Allevio); acquisition decisions (HIVE); client data mixing (Column6)
  Escalation: when to call Dr. Lewis vs. handle independently
  
ROLLOUT SUCCESS METRICS:
  Stage 1 go-live: entity CEO approves within 6 weeks of Stage 1 start
  Quality: first 30-day average quality score ≥4.0/5
  HITL rejection rate: <15% in first month; <10% by month 3
  Entity CEO satisfaction: confirmed valuable at 30-day check-in
  Zero compliance incidents (especially HIPAA for Allevio)
```

## Output Format

```markdown
# AI Rollout Plan — [Entity] Phase 4
**Prepared by:** Dr. Lewis | **Entity CEO:** [Name] | **Matt Mathison approval:** [Date]

---

## Rollout Timeline

| Stage | Activity | Start | Target Complete | Gate |
|-------|----------|-------|----------------|------|
| Stage 0 | Pre-rollout assessment | [Date] | [Date] | Matt Mathison |
| Stage 1 | First workflow live | [Date] | [Date] | Entity CEO + Dr. Lewis |
| Stage 2 | Second workflow | [Date] | [Date] | Entity CEO + Dr. Lewis |
| Stage 3 | Steady state | [Date] | Ongoing | Monthly check-in |

---

## First Workflow
**Workflow:** [Billing automation / Production synthesis / etc.]
**Data inputs:** [Confirmed accessible: ✅/❌]
**Compliance gate:** [HIPAA assessment ✅ / BAA executed ✅]
**Training:** Entity CEO training scheduled: [Date]

---

## Post-Launch Monitoring (Days 1-30)
- First 5 outputs: Dr. Lewis monitors and entity CEO reviews each
- 30-day check-in: [Date]
- Quality target: ≥4.0/5 average
```

## Output Contract
- Stage 0 compliance setup cannot be rushed — for Allevio, the HIPAA risk assessment and BAA execution takes 4-6 weeks because it requires legal review of the BAA, entity CEO signature, and vendor counter-signature; Dr. Lewis does not start building the Allevio Stage 1 workflow until Stage 0 compliance is complete; building the workflow before the compliance gate creates sunk cost pressure to deploy even if compliance isn't clean; the sequence is: compliance first, then build; this applies to HIVE (DPA) and Column6 (client confidentiality review) as well, though with shorter timelines
- Entity CEO training is the make-or-break for steady state — the rollout fails if the entity CEO doesn't understand how to interact with the AI and how the HITL gate works; Dr. Lewis spends 60-90 minutes with each entity CEO on training: live demo of the workflow; explanation of what the AI can and can't do; practice with the HITL approval process (Teams reply; email; Monday.com); common quality feedback scenarios; the training is not a lecture — it is a hands-on session where the entity CEO uses the workflow themselves before go-live; an entity CEO who doesn't understand the HITL gate will either approve everything without reviewing (defeating the gate's purpose) or reject everything without understanding why (creating frustration with the AI)
- HITL required: Stage 0 gate → Matt Mathison approves Stage 1 before any build begins; Stage 1 go-live → Dr. Lewis + entity CEO + Matt Mathison confirm; first 5 outputs → Dr. Lewis monitors; entity CEO reviews each; go-live decision → entity CEO confirms value; all Allevio outputs → HIPAA review maintained post-go-live; any compliance incident → rollout paused; Matt Mathison notified immediately

## System Dependencies
- **Reads from:** ai-portfolio-ai-assessor results; entity CEO discovery session notes; data readiness audit; compliance assessment (HIPAA; DPA); MBL Phase 1-3 lessons learned; entity-specific workflow specifications
- **Writes to:** Rollout plans (SharePoint → MBL → AI Strategy → Portfolio Rollout → [Entity] → Phase 4 Plan); training materials (SharePoint → [Entity] → AI → Training); go-live checklists; post-launch monitoring records; lessons learned documents; Matt Mathison rollout status briefings
- **HITL Required:** Stage 0 → Matt Mathison approves; go-live → Dr. Lewis + entity CEO + Matt Mathison; first 5 outputs → Dr. Lewis monitors; compliance incident → immediate pause + Matt Mathison; entity CEO training → Dr. Lewis conducts; steady state monthly check-in → Dr. Lewis + entity CEO

## Test Cases
1. **Golden path:** HIVE Phase 4 rollout (Q4 2026). Stage 0 (4 weeks): HIVE entity CEO discovery session — top use case: production report synthesis. Data: Covercy ✅ accessible. Compliance: DPA with Anthropic ✅ (already in place). Stage 0 complete. Matt Mathison approves Stage 1. Stage 1 (5 weeks): Production report synthesis workflow built; HIVE entity CEO trained (60-min session; WTI trigger explained; HITL review process demonstrated). Test with 3 months historical data: quality 4.3/5. First 5 live outputs: entity CEO reviews each; finds one accuracy issue (LOE property attribution); Dr. Lewis fixes prompt; quality improves to 4.7/5. 30-day check-in: "This is saving me 4 hours a month on reporting. Let's do Stage 2." Stage 1 complete. Stage 2 planning begins (LP communication drafting).
2. **Edge case:** Stage 0 Allevio HIPAA compliance takes 8 weeks instead of the expected 4-6 because the BAA negotiation with a new AI vendor requires legal counsel review → Dr. Lewis: "The Allevio Stage 0 is delayed 2 weeks — the BAA negotiation with [vendor] required us to engage Allevio's legal counsel, and their review took 3 weeks versus the expected 1 week. Stage 1 start is pushed from August 1 to August 15. I've updated the rollout timeline. There's no way to compress this — the BAA is the compliance gate and it needed legal review. Good news: the BAA now includes favorable data deletion terms and explicitly excludes training on Allevio data. The delay is worth the stronger BAA. I'll update Matt Mathison's briefing and adjust the Q4 target."
3. **Adversarial:** An entity CEO wants to skip the HITL gate post-go-live ("I trust the AI now; it's been accurate for 3 months — can we just auto-send the reports?") → Dr. Lewis: "Three months of strong performance is genuinely great news — and it's exactly the kind of track record that earns more automation. But I want to distinguish between two types of auto-send: (1) Internal reports (production summary for your own use) → I can set these to auto-deliver to your inbox without requiring your explicit approval each time; you'd review them as you would any internal report. (2) LP communications or external reports → these need to stay with the HITL gate. The value of the gate isn't catching errors every month; it's catching the one error in 20 months that would have gone to an LP. Internal auto-delivery: yes. External auto-send: the gate stays."

## Audit Log
Rollout plans (all entities; all versions; SharePoint). Stage gate approval records (Matt Mathison; entity CEO). Discovery session notes. Compliance setup records (HIPAA assessments; BAA/DPA execution). Training session records. First 5 output monitoring records. Go-live decision records. 30-day and 90-day check-in records. Lessons learned documents. Compliance incident records.

## Deprecation
Playbook updated after each entity Phase 4 rollout (lessons applied). Compliance setup timelines updated when regulatory requirements change. Training content updated when AI capabilities or workflows change. Success metrics reviewed after first full rollout cycle. Stage gate criteria reviewed annually.
