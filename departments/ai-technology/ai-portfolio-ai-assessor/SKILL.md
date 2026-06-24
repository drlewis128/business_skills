---
name: ai-portfolio-ai-assessor
description: "Assess AI readiness and opportunities for MBL portfolio companies. Use when the user says 'portfolio AI assessment', 'entity AI readiness', 'AI readiness assessment', 'Allevio AI readiness', 'HIVE AI readiness', 'Column6 AI readiness', 'entity AI opportunities', 'where can AI help this company', 'AI for portfolio companies', 'portfolio AI strategy', 'portfolio AI rollout', 'AI assessment for the portfolio', 'AI playbook for portfolio', 'portfolio company AI', 'AI maturity assessment', 'entity AI maturity', 'entity AI opportunities', 'AI for Allevio operations', 'AI for HIVE operations', 'AI for Column6 operations', 'AI opportunity scan', 'AI gap analysis', 'where should we apply AI at', 'what are the AI opportunities at', 'portfolio AI plan', 'entity AI plan', 'AI transformation', 'digital transformation AI', 'AI deployment plan for portfolio', 'AI rollout readiness', 'AI infrastructure assessment', or 'technology readiness for AI'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6>] [--action <assess|score|report|plan>]"
---

# AI Portfolio AI Assessor

Assess AI readiness and opportunities for MBL portfolio companies (Allevio; HIVE; Column6/Siprocal) — scoring each entity's AI maturity, identifying high-ROI AI use cases, flagging constraints (HIPAA; O&G; client confidentiality), and producing a portfolio AI rollout plan sequenced by value and feasibility.

## When to Use
- Before planning portfolio-level AI rollout (Phase 4 of Krista roadmap)
- When an entity CEO asks about AI for their business
- Quarterly AI readiness update as MBL's AI capabilities mature
- When evaluating whether a portfolio company is ready for AI deployment

## Portfolio AI Assessment Framework

```
ASSESSMENT DIMENSIONS (per entity; scored 1-5):

  1. DATA READINESS:
     Does the entity have structured, accessible data for AI to process?
     Systems available: QuickBooks; CRM; operational systems (Covercy; AdvancedMD)
     Score 5: All key data in structured systems; accessible via API; clean
     Score 1: Data in spreadsheets; inconsistent; no API access
     
  2. PROCESS CLARITY:
     Are the entity's processes documented and consistent enough for AI to automate?
     Score 5: Documented SOPs; consistent execution; clear inputs/outputs for automation targets
     Score 1: Ad hoc processes; no documentation; different each time
     
  3. TEAM READINESS:
     Will the entity CEO and team adopt AI-assisted workflows?
     Score 5: Entity CEO is enthusiastic; team has demonstrated tool adoption; clear champion
     Score 1: Skepticism about AI; prior failed tech implementations; no internal champion
     
  4. COMPLIANCE COMPLEXITY:
     What is the regulatory burden for AI at this entity?
     Score 5: No special constraints; standard privacy requirements
     Score 3: Some constraints (client confidentiality; financial regulations)
     Score 1: High regulatory burden (HIPAA for Allevio; special regulatory consideration)
     Note: Low score ≠ AI can't be deployed; it means extra time for compliance setup
     
  5. ROI POTENTIAL:
     How much time, cost, or revenue opportunity could AI unlock at this entity?
     Score 5: >$50K/year identifiable ROI from top 3 use cases
     Score 1: Primarily nice-to-have; hard to quantify ROI
     
ENTITY-SPECIFIC CONTEXT:

  ALLEVIO (Healthcare MSO):
    High-ROI AI areas: employer billing automation; care coordination reporting; employer outreach;
      aggregate analytics; prior authorization support; scheduling optimization
    Constraints: HIPAA ABSOLUTE — all AI must be aggregate-only; BAA required for any vendor
    Recommended Phase 4 sequence: (1) employer billing automation (low PHI risk; high time savings);
      (2) aggregate care coordination reporting; (3) employer outreach AI (GHL + Claude)
    Compliance setup time: 4-6 weeks (BAA review; HIPAA risk assessment; workflow design)
    
  HIVE PARTNERS (Oil & Gas; Uinta Basin):
    High-ROI AI areas: production report synthesis; LP communication drafting; WTI monitoring;
      acquisition model automation; LOE analysis; royalty reconciliation
    Constraints: WTI $58 trigger (acquisition decisions → Matt Mathison); LP communications reviewed
    Recommended Phase 4 sequence: (1) production report synthesis (Covercy data → Claude summary);
      (2) WTI monitoring and alerts; (3) LP communication drafting (with HITL gate)
    Compliance setup time: 1-2 weeks (simpler regulatory environment; no HIPAA)
    
  COLUMN6/SIPROCAL (CTV/Mobile/Gaming):
    High-ROI AI areas: IO pipeline management; campaign reporting automation; media intelligence;
      agency outreach; revenue recognition support
    Constraints: client campaign data confidentiality; IO-based revenue model requires accurate tracking
    Recommended Phase 4 sequence: (1) campaign reporting automation; (2) IO pipeline management;
      (3) agency outreach AI (GHL + Claude)
    Compliance setup time: 2-3 weeks (client data handling review; IO model mapping)
    
SCORING INTERPRETATION:
  20-25: Ready for AI deployment now — begin Phase 4 planning
  15-19: Ready with preparation — address gaps (compliance; process documentation) then deploy
  10-14: 6-12 months from readiness — focus on process and data foundations first
  <10: Not yet ready — significant foundations missing
```

## Output Format

```markdown
# Portfolio AI Readiness Assessment — [Entity]
**Assessed by:** Dr. Lewis | **Date:** [Date] | **Assessment period:** [Quarter/Year]

---

## AI Readiness Score

| Dimension | Score (1-5) | Finding |
|-----------|------------|---------|
| Data readiness | X | |
| Process clarity | X | |
| Team readiness | X | |
| Compliance complexity | X | |
| ROI potential | X | |
| **Total** | **X/25** | |

---

## Top 3 AI Use Cases (Prioritized)
1. [Use case — [X]/25 evaluation score — estimated ROI $X/year]
2. [Use case]
3. [Use case]

---

## Compliance Requirements Before Deployment
- [Allevio: BAA with AI vendors; HIPAA risk assessment — estimated 4-6 weeks]

## Recommended Rollout Timeline
**Ready for Phase 4:** [Date] | **First workflow live:** [Date]
```

## Output Contract
- Assessment scores are inputs to a plan, not verdicts — a low compliance complexity score at Allevio doesn't mean "don't deploy AI"; it means "invest 4-6 weeks in compliance setup before deployment"; Dr. Lewis presents assessment scores with the path forward, not just the rating; a score of 12/25 with a clear 90-day improvement plan is more actionable than a score of 20/25 with no specific recommendations; the assessment generates a roadmap
- Entity CEO involvement is required in the assessment, not assumed — AI readiness at a portfolio company is not something Dr. Lewis can assess from the outside; he needs 60-90 minutes with the entity CEO to understand: what are the most painful manual processes? Where do you spend the most time on reporting? What technology has the team adopted well vs. rejected? The assessment score reflects the entity CEO's input, not just system mapping; an assessment completed without entity CEO input is a desk review, not a readiness assessment
- HITL required: assessment → entity CEO participates in discovery; Dr. Lewis completes; Matt Mathison sees summary; rollout plan → entity CEO + Dr. Lewis + Matt Mathison approve; Allevio rollout → HIPAA assessment complete before any workflow is deployed; compliance setup → entity CEO and Dr. Lewis complete together; Phase 4 timeline → Matt Mathison approves

## System Dependencies
- **Reads from:** Entity operating documentation; QuickBooks entity structure (data readiness); entity CRM and operational systems (GHL; Covercy; AdvancedMD — data availability); entity CEO input (process clarity; team readiness); MBL Phase 0-3 lessons learned; AI use case evaluations (entity-specific use case scoring)
- **Writes to:** Portfolio AI readiness reports (SharePoint → MBL → AI Strategy → Portfolio Assessments → [Entity] → [Date]); Phase 4 rollout plans; entity AI roadmaps; Matt Mathison portfolio AI briefings
- **HITL Required:** Entity CEO discovery → required for assessment; Matt Mathison sees summary; rollout plan → Matt Mathison approves; Allevio → HIPAA assessment before deployment; Phase 4 timeline → Matt Mathison approves

## Test Cases
1. **Golden path:** Allevio AI readiness assessment (Q3 2026). Entity CEO discovery session (75 min): most painful manual process = monthly employer billing run (3 hours/month; manual Excel); reporting = manually compiled GRR report (2 hours/quarter). Data readiness: 4 (QuickBooks; AdvancedMD aggregate in Marshall Medical Billing; structured). Process clarity: 3 (billing process documented; reporting is ad hoc). Team readiness: 4 (entity CEO enthusiastic; team has adopted Monday.com well). Compliance complexity: 1 (HIPAA; BAA required; significant setup). ROI potential: 5 ($45K/year identified in billing + reporting automation). Score: 17/25. Assessment: Ready with preparation — complete HIPAA setup (BAA + risk assessment; 4-6 weeks) then deploy billing automation first.
2. **Edge case:** HIVE entity CEO is skeptical of AI — "we're an oil and gas company, not a tech company" — and the team readiness score is 2 → Dr. Lewis: "I hear the skepticism — and it's actually a fair position. AI for O&G is still early, and there's a lot of vendor noise. What I want to show you is not 'AI for oil and gas' in the abstract — I want to show you one specific workflow: what if Covercy's monthly production data was automatically formatted into the LP communication I send quarterly? That's 3 hours of manual work per quarter that Claude can do in 5 minutes with HITL review. No PhD in AI required. Would you be willing to try it for one quarter? If it doesn't save meaningful time, we stop. If it does, we talk about what else might be automatable." Convert skepticism into a controlled experiment.
3. **Adversarial:** Matt Mathison wants to roll out AI to all three portfolio companies simultaneously rather than sequentially → Dr. Lewis: "I understand the appeal — simultaneous rollout is faster in theory. But I want to flag the risk: MBL's AI orchestration is still in Phase 1 (Meeting Intelligence not yet fully operational). Rolling out to all three portfolio companies before Phase 1 is validated means we're deploying Phases 2-4 infrastructure before Phase 1 is stable. If something breaks at the MBL level (a Krista integration issue; a prompt quality problem), we're managing the same issue across four entities simultaneously instead of one. The phased approach protects us from that scenario. My recommendation: complete Phase 1 (Q3 2026); start HIVE Phase 4 (Q4 2026 — simplest compliance); start Allevio Phase 4 (Q1 2027 — needs HIPAA setup time); Column6 follows. By Q2 2027, all three are live with lessons from each deployment applied to the next."

## Audit Log
Portfolio AI readiness assessments (all entities; all dates; SharePoint). Entity CEO discovery session notes. Rollout plan documents. Matt Mathison approval records. HIPAA assessment records (Allevio). Phase 4 milestone tracking. Deployment records for each entity.

## Deprecation
Assessment framework reviewed after each Phase 4 deployment (lessons applied). Entity-specific context updated when portfolio companies change (new entity; exit; major strategic shift). Compliance requirements updated when regulations change. ROI potential thresholds reviewed as AI capabilities and MBL's AI experience grow.
