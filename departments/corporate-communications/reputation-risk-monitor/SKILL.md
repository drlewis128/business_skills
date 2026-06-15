---
name: reputation-risk-monitor
description: "Assess and monitor reputational risks for MBL Partners or a portfolio company. Use when the user says 'reputation risk', 'reputational risk assessment', 'what could hurt our reputation', 'brand risk', 'reputation management', 'what are our PR risks', 'reputational vulnerabilities', 'assess reputation risk', or 'what could blow up on us'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--trigger <specific event or concern>]"
---

# Reputation Risk Monitor

Identify, assess, and monitor reputational risks for MBL Partners or a portfolio company — before they become public problems. Reputational risk is often the gap between what an organization says and what it does. This skill maps the gap, assigns severity, and creates a monitoring + mitigation plan for each risk.

## When to Use
- Pre-acquisition due diligence — assess target company's reputational vulnerabilities before close
- Annual communications review — refresh the reputational risk register
- A specific event or trend is raising concern (negative social media, employee complaints)
- Matt Mathison asks "what's our biggest PR exposure right now?"
- Preparing for a significant announcement where counter-narrative could emerge

## Reputational Risk Categories

```
1. Operational/Product Risk: A failure in operations or product quality becomes public
   Examples: Patient safety event (Allevio), environmental spill (HIVE), ad fraud (Column6)
   
2. Leadership/Personnel Risk: Executive misconduct, departure, or controversy
   Examples: CEO misconduct allegation, public social media controversy by a key executive
   
3. Financial/Investor Risk: Financial performance or structure becomes a public controversy
   Examples: LP dispute, bankruptcy rumors, excessive management fees scrutinized
   
4. Regulatory/Legal Risk: A regulatory action or litigation becomes public
   Examples: HIPAA enforcement action (Allevio), EPA fine (HIVE), FTC action (Column6)
   
5. Third-Party Risk: A partner, supplier, or customer creates a reputational association
   Examples: A key partner has a scandal; a major customer is controversial
   
6. Social/ESG Risk: Company position or behavior on social issues creates controversy
   Examples: Workforce issues, environmental footprint, diversity practices challenged
   
7. Competitor/Market Risk: Competitors or industry critics target the company
   Examples: Competitor attacks; industry investigative journalism
```

## Output Format

```markdown
# Reputation Risk Assessment — <Entity Name>
**Entity:** <Company> | **Date:** <date>
**Owner:** Dr. John Lewis | **Reviewed by:** Matt Mathison

---

## Risk Register

| # | Risk | Category | Likelihood (1-5) | Impact (1-5) | Risk Score | Status | Owner |
|---|------|----------|-----------------|-------------|-----------|--------|-------|
| R1 | [Risk description] | Operational | [1-5] | [1-5] | [L×I] | 🔴 Active / ⚠️ Latent / ✅ Mitigated | Dr. Lewis |
| R2 | [Risk description] | Leadership | [1-5] | [1-5] | [L×I] | | |
| R3 | [Risk description] | Regulatory | [1-5] | [1-5] | [L×I] | | |

Risk scoring:
  Likelihood: 1=Rare, 2=Unlikely, 3=Possible, 4=Likely, 5=Certain
  Impact: 1=Negligible, 2=Minor, 3=Moderate, 4=Significant, 5=Severe
  Risk Score = L × I (range 1-25)
  Priority: ≥15=Critical (red); 8-14=High (orange); 4-7=Medium (yellow); <4=Low (green)

---

## Risk Detail (Critical and High risks only)

### R[N]: [Risk Name] — Score [X]/25 — 🔴 Critical

**What is the risk:**
[2-3 sentence description of the specific reputational threat]

**What would trigger it:**
- [Specific trigger event 1]
- [Specific trigger event 2]

**Early warning indicators:**
- [What to watch for that signals this risk is materializing]
- [Media indicator / social media signal / internal signal]

**Current status:** [Active / Latent / Being monitored]

**Mitigation actions:**
| Action | Owner | Due | Status |
|--------|-------|-----|--------|
| [Specific mitigation] | Dr. Lewis | [Date] | [Status] |
| [Preventive action] | [Owner] | [Date] | [Status] |

**If triggered — first response:** [What to do in the first hour]

---

## Portfolio-Level Risk Summary (MBL Partners)

| Entity | Top risk | Score | Most likely trigger | Mitigation status |
|--------|---------|-------|-------------------|-----------------|
| MBL Partners | [Risk] | [Score] | [Trigger] | [Status] |
| Allevio | [Risk] | [Score] | [Trigger] | [Status] |
| HIVE | [Risk] | [Score] | [Trigger] | [Status] |
| Column6 | [Risk] | [Score] | [Trigger] | [Status] |

---

## Matt Mathison Summary

**Overall reputational risk level:** Low / Medium / High / Critical
**Highest current risk:** [Risk name, entity] — Score [X]/25
**Mitigation priority this quarter:** [Specific action and why]
**Trend:** Improving / Stable / Worsening — [reason]
**Matt Mathison action needed:** [Specific decision or awareness item — or "None"]
```

## Output Contract
- Risk score always numerical — qualitative "high risk" without a score is not actionable; L×I gives a consistent prioritization basis
- Every Critical and High risk has mitigation actions — a risk register without mitigation is just a worry list; every ≥8 risk has at least one mitigation action with an owner and deadline
- Early warning indicators always defined — knowing a risk exists is not enough; the team needs to know what signals it is materializing so they can respond before it becomes public
- Portfolio-level rollup always included for MBL — the portfolio view is Matt Mathison's key input; he needs to see the full risk picture across all entities, not just one company
- HITL required: Dr. Lewis builds and maintains the register; Matt Mathison reviews quarterly; any Critical risk (≥15) is escalated to Matt Mathison immediately; mitigation plans for Regulatory risks require legal counsel input

## System Dependencies
- **Reads from:** Media monitoring data, legal counsel input, company operations updates, social media monitoring
- **Writes to:** Risk register (SharePoint/Comms/Risk/Reputation Register); quarterly risk report; Matt Mathison briefing
- **HITL Required:** Dr. Lewis manages; Matt Mathison reviews quarterly; Critical risks escalated immediately; legal counsel reviews regulatory risks

## Test Cases
1. **Golden path:** Allevio reputation risk assessment → R1: Patient safety event (Operational, L=2, I=5, Score=10, High); R2: HIPAA breach (Regulatory, L=3, I=5, Score=15, Critical) — mitigation: monthly HIPAA audit, incident response plan in place; R3: Key physician departure (Leadership, L=2, I=3, Score=6, Medium); overall: High; Matt Mathison action: review HIPAA mitigation plan and confirm budget for security audit
2. **Edge case:** A risk the company identified is actually already materializing (not just latent) → reclassify from Latent to Active; escalate to Matt Mathison immediately; activate crisis-response-playbook; update the risk score to reflect current status; the risk register must reflect reality, not what was true when the risk was first identified
3. **Adversarial:** Matt Mathison downplays a legitimate risk ("we don't need to worry about that") → document his assessment in the risk register with date; maintain Dr. Lewis's assessment separately; if the risk materializes later, the documentation protects Dr. Lewis and provides the post-crisis review with a clear record; do not delete a legitimate risk from the register because it's uncomfortable

## Audit Log
Risk register version history retained. Quarterly review dates documented. Risk materializations documented with timeline. Post-event assessments retained.

## Deprecation
Retire when MBL engages a communications agency or risk management firm with a dedicated reputational risk monitoring service.
