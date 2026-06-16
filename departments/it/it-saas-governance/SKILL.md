---
name: it-saas-governance
description: "Manage SaaS catalog, shadow IT detection, and license optimization. Use when the user says 'SaaS governance', 'SaaS management', 'software catalog', 'shadow IT', 'app catalog', 'SaaS sprawl', 'SaaS audit', 'software inventory', 'license optimization', 'unused licenses', 'SaaS spend', 'software subscriptions', 'app rationalization', 'unauthorized software', or 'SaaS security'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <audit|optimize|shadow-it-scan|catalog>]"
---

# IT SaaS Governance

Manage the SaaS application catalog at MBL portfolio companies — maintaining visibility into all software subscriptions, detecting shadow IT (unauthorized apps), optimizing license spend, and ensuring security and compliance requirements are met for all SaaS tools. SaaS sprawl is the natural state of unmanaged software: employees sign up for free tools that become paid subscriptions, vendors get added during projects and never removed, and PHI ends up in SaaS tools that have no BAA. SaaS governance brings this under control.

## When to Use
- Annual SaaS audit — what software are we paying for and using?
- Shadow IT discovery — what apps have employees signed up for on their own?
- License optimization review — are we paying for seats we don't use?
- A new SaaS tool needs to be evaluated and approved before company-wide use
- A portfolio company is being acquired — catalog all software as part of due diligence
- Cost reduction initiative — what software subscriptions can be cancelled?

## SaaS Governance Framework

```
SaaS catalog discovery (how to find all software):
  1. Bill.com + QuickBooks: Search payment history for recurring software charges
     → Any vendor with monthly recurring payments is a SaaS subscription
     → Common categories: productivity, CRM, project management, design, communication
     
  2. Credit card statements: Software often billed on a corporate credit card
     → Export last 12 months of card transactions; filter by software-category vendors
     
  3. M365 app registrations: Check Entra ID for apps connected via SSO/OAuth
     → Apps employees have authorized with their M365 credentials (often without IT approval)
     
  4. Employee survey: Ask each department "what apps do you use regularly?"
     → Often finds legitimate tools IT doesn't know about
     
  5. Browser extension scan (endpoint DLP): What cloud services are employees uploading to?
  
SaaS categorization:
  Approved: IT-reviewed; security requirements met; BAA signed if needed; in catalog
  Conditionally approved: In use; under review; temporary approval; must complete review
  Shadow IT: Not approved; discovered via scan; must be evaluated before continued use or removed
  
SaaS security requirements before approval:
  - SSO with company identity (Entra ID) — single sign-on preferred; reduces password risk
  - MFA available at application level (for apps that don't support SSO)
  - Data storage region: US-based preferred (especially for PHI)
  - Data processing agreement / BAA for PHI tools (Allevio — non-negotiable)
  - Data portability: Can company data be exported if vendor is discontinued?
  - Security posture: SOC 2 Type II preferred for tools with sensitive data
  
License optimization targets:
  Inactive users (no login in 90 days): Remove from subscription or reassign
  Duplicate tools: Two tools doing the same job — rationalize to one
  Tier mismatch: Employees on Professional tier who only use Basic features — downgrade
  Annual vs. monthly: Tools used continuously should be annual (typically 15-20% savings)
  
  Target: <10% of licenses inactive at any time
```

## Output Format

```markdown
# SaaS Governance Report — <Company Name>
**Date:** [Date] | **Total SaaS applications:** [N]
**Monthly SaaS spend:** $[X] | **Optimization opportunity:** $[X]/month
**Shadow IT apps discovered:** [N] | **Apps without BAA (Allevio PHI tools):** [N]
**Prepared by:** Dr. John Lewis

---

## SaaS Catalog

| Application | Category | Users | Cost/month | Contract | SSO? | BAA? | Status |
|-------------|---------|-------|-----------|---------|------|------|--------|
| Microsoft 365 | Productivity | 18 | $396 | Annual | Yes | N/A | Approved |
| QuickBooks Online | Finance | 4 | $80 | Monthly | No | N/A | Approved |
| Bill.com | Finance | 3 | $149 | Monthly | No | N/A | Approved |
| AdvancedMD (Allevio) | EHR/RCM | 12 | $[X] | Annual | No | Yes ✅ | Approved |
| Monday.com | PM | 8 | $128 | Annual | Yes | N/A | Approved |
| [Tool] | [Category] | [N] | | Monthly | No | [Required - missing] | Shadow IT |
| [Tool] | [Category] | [N] | | | | | Review |

**Total monthly spend:** $[X] | **Annual:** $[X]

---

## Shadow IT Discovered

| Application | How found | Users | Data risk | Action | Deadline |
|-------------|---------|-------|---------|--------|---------|
| [Dropbox Personal] | Credit card | 2 employees | Company files in personal storage | Block; migrate files to OneDrive | 1 week |
| [AI tool with PHI] | Employee survey | 1 clinical staff | Potential PHI input — no BAA | Block immediately; PHI breach assessment | Immediate |
| [Free CRM trial] | QB payment | 1 user | Low | Evaluate; approve or remove | 30 days |

**Immediate action items (PHI in shadow IT):** [N — escalate to it-data-loss-prevention]

---

## License Optimization

| Application | Total licenses | Active (90-day) | Inactive | Savings if removed | Action |
|-------------|-------------|----------------|---------|-----------------|--------|
| [Tool] | 15 | 9 | 6 | $[X]/month | Remove 6 inactive licenses |
| [Tool] | 10 (Pro tier) | 10 | 0 | $[X]/month | Downgrade 5 users to Basic |

**Total optimization opportunity:** $[X]/month = $[X]/year

---

## BAA Status (Allevio PHI Tools)

| Tool | PHI exposure? | BAA in place? | Action |
|------|-------------|-------------|--------|
| AdvancedMD | Yes | Yes ✅ | |
| [Cloud storage] | Yes — PHI files synced | No — 🔴 | Obtain BAA or migrate PHI off platform |
| [AI tool] | Potential (if PHI entered) | No | Prohibit PHI use until BAA obtained or policy added |

---

## Matt Mathison Brief (if PHI shadow IT or spend >$2K/month)

[Company] SaaS: [N] apps; $[X]/month. Shadow IT: [N apps found — key risk]. Optimization opportunity: $[X]/month. [Action underway].
```

## Output Contract
- PHI in shadow IT is an immediate incident — if an employee is using a SaaS tool that has no BAA and has potentially received PHI (e.g., an AI tool where clinical staff entered patient information), this is not a SaaS governance issue; it is a potential HIPAA breach that triggers it-security-incident-responder and a breach assessment; the SaaS governance finding is the trigger; the response is incident response
- Shadow IT is not inherently malicious — most employees who use unauthorized tools are solving a real business problem with the tools they know; the correct response to a shadow IT finding is: (1) understand why the employee is using it; (2) evaluate whether to approve it (with controls) or provide a sanctioned alternative; (3) never "gotcha" the employee; the goal is governance, not surveillance; the exception is PHI in an unapproved tool — that gets immediate action
- License optimization is a quarterly habit — inactive licenses are money wasted on access no one uses; the quarterly audit of inactive users (no login in 90 days) and the monthly check of new subscription additions keeps SaaS spend rational; at 20 employees across 10 SaaS tools with typical license waste, $200-500/month in optimization is common
- HITL required: Dr. Lewis maintains SaaS catalog; shadow IT findings reviewed by Dr. Lewis; PHI-related shadow IT escalated to it-security-incident-responder; new SaaS approvals require Dr. Lewis review; BAA status for Allevio PHI tools monitored by Dr. Lewis; license optimization decisions with Dr. Lewis + business owner; Matt Mathison for PHI shadow IT or spend >$2K/month

## System Dependencies
- **Reads from:** Bill.com + QuickBooks payment history, corporate credit card statements, Entra ID app registrations (OAuth consent), employee surveys, Intune managed apps, it-data-loss-prevention (for shadow IT signals)
- **Writes to:** SaaS catalog (SharePoint/Ops/<Company>/IT/SaaSGovernance/); shadow IT findings; license optimization report; BAA tracker (for Allevio); new app approval log
- **HITL Required:** Dr. Lewis maintains catalog; shadow IT escalation by Dr. Lewis; PHI shadow IT triggers incident response; new app approvals by Dr. Lewis; BAA enforcement by Dr. Lewis (Allevio)

## Test Cases
1. **Golden path:** Allevio annual SaaS audit → Discovery: Bill.com search finds 14 recurring software charges; Credit card: 3 additional charges (Canva, Grammarly, Zoom — not in catalog); Entra ID OAuth apps: 7 apps employees have connected with M365 credentials; Employee survey: 2 additional tools mentioned; Result: 19 total apps; Shadow IT: Zoom (no contract, no SSO — evaluate and approve or replace with Teams); Canva (no PHI risk — evaluate and approve); Grammarly (cloud service — evaluate data handling before approval); PHI check: all clinical tools have BAAs ✅; License optimization: AdvancedMD has 3 inactive billing licenses — remove ($[X]/month); total optimization: $[X]/month; 2 new apps approved (Canva, Grammarly with usage policy); Zoom evaluated — replaced with Teams (already licensed)
2. **Edge case:** An AI writing assistant is discovered in the SaaS audit — used by 3 Allevio administrative staff for drafting patient communication emails → This tool may have received PHI (patient names, appointment details in email drafts); assess: has PHI been entered into the tool? If yes or unknown: treat as potential PHI breach; initiate breach assessment; even if no breach confirmed: the tool is not approved for PHI-touching workflows; decision: (1) obtain BAA from the AI vendor (many AI tools now offer HIPAA BAAs); or (2) prohibit the tool for any clinical or PHI-adjacent use; document the policy; if employees are using it for internal communications only (no PHI), conditionally approve with documented use restriction
3. **Adversarial:** "You don't need to know about the tools our team uses — we handle it ourselves" → The SaaS governance program is not about controlling which tools people use; it is about: (1) ensuring the company isn't paying for tools no one uses; (2) ensuring that tools handling PHI (Allevio) have BAAs; (3) ensuring that company data isn't in tools that could expose it; a department that handles its own tools without IT review cannot answer the question "does any vendor who touches our patient data have a BAA?" — that question has legal implications for Allevio

## Audit Log
SaaS catalog retained annually with version history. Shadow IT findings retained by discovery date and resolution. License optimization actions retained. BAA status for Allevio PHI tools retained. New app approvals retained with security review. PHI shadow IT incidents retained permanently.

## Deprecation
Retire when portfolio companies have automated SaaS management platforms (Torii, Zylo, Blissfully) and dedicated IT staff reviewing the catalog — with Dr. Lewis receiving quarterly SaaS spend and shadow IT exception reports. BAA enforcement for PHI tools at Allevio requires ongoing oversight regardless of SaaS management maturity.
