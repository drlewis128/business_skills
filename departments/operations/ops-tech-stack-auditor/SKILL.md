---
name: ops-tech-stack-auditor
description: "Audit the technology stack for gaps, redundancy, and cost. Use when the user says 'tech stack audit', 'technology audit', 'audit our tools', 'what tools are we using', 'technology stack', 'SaaS audit', 'software audit', 'tool audit', 'technology review', 'rationalize our tech stack', 'what software do we have', 'system audit', 'tech rationalization', 'consolidate tools', or 'technology landscape'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--focus <all|SaaS|infrastructure|clinical|field>]"
---

# Ops Tech Stack Auditor

Audit the technology stack at MBL portfolio companies — cataloguing all tools and systems, identifying redundancies, gaps, underutilized licenses, and security risks. Technology sprawl is one of the most common and preventable cost problems at portfolio companies: tools get bought individually by departments, licenses exceed actual users, contracts auto-renew, and no one has a complete picture of what the company is actually running. This audit produces that picture and drives rationalization.

## When to Use
- Annual tech stack audit (should accompany ops-spend-analyzer technology section)
- A new leader is starting and needs to understand the technology landscape
- A portfolio company is preparing for an exit and the tech stack needs to be clean
- Technology costs feel too high and Dr. Lewis needs to understand why
- Systems are overlapping and the right consolidation path isn't clear

## Tech Stack Audit Framework

```
Audit dimensions:
  1. Inventory: What systems are we running? (Discover what's actually in use — not just what's approved)
  2. Utilization: Are we actually using it? (License count vs. active users)
  3. Cost: What are we paying? (Per tool, per user, total)
  4. Integration: How does it connect to other systems? (Data flows, dependencies)
  5. Risk: What's the security posture? (SOC 2, data handling, access controls)
  6. Redundancy: Are two tools doing the same thing?
  7. Gaps: Is there a capability we need but don't have?

Discovery sources (don't rely on memory — be systematic):
  Bill.com/QuickBooks: All vendor payments — cross-reference for SaaS subscriptions
  Bank/credit card statements: Subscriptions that bypass AP
  IT admin: Microsoft 365 admin, Google Workspace (app integrations, connected apps)
  Email inbox: Search for "subscription renewal", "invoice", "receipt" from known SaaS vendors
  Department heads: Ask each function lead what tools their team uses
  HR/IT offboarding checklists: What access gets revoked tells you what tools exist

Tool categories for MBL portfolio:
  Communication: Email, video, chat, phone (Microsoft 365/Teams, Zoom)
  Productivity: Documents, spreadsheets, presentations (Microsoft 365)
  Project management: Monday.com, Asana, Trello, Jira, Notion
  CRM/Sales: GoHighLevel, Salesforce, HubSpot
  Finance: QuickBooks, Bill.com, Expensify, Ramp
  HR/Payroll: HRIS, payroll processor
  Industry-specific: AdvancedMD (Allevio), Covercy (HIVE)
  Security: Password manager, MFA, VPN, endpoint protection
  Analytics/BI: Excel, Power BI, Tableau, Looker
  Automation: Zapier, Make, Power Automate, Krista.ai
```

## Output Format

```markdown
# Technology Stack Audit — <Company Name>
**Date:** [Date] | **Prepared by:** Dr. John Lewis
**Total tools catalogued:** [N] | **Total annual SaaS spend:** $[X]
**Redundancies found:** [N] | **Estimated savings from rationalization:** $[X]

---

## Tech Stack Inventory

| Tool/System | Category | Vendor | Annual cost | Licensed users | Active users | Utilization | Status |
|------------|---------|--------|------------|--------------|------------|------------|--------|
| Microsoft 365 Business | Comm + Productivity | Microsoft | $[X] | [N] | [N] | [X%] | Keep |
| AdvancedMD | Clinical/Billing | AdvancedMD | $[X] | [N] | [N] | [X%] | Keep |
| [Tool] | [Category] | [Vendor] | $[X] | [N] | [N] | [X%] | Keep/Review/Cancel |

**Total annual spend:** $[X] across [N] tools

---

## Utilization Analysis

**Under-utilized (active users <60% of licensed seats):**
| Tool | Licensed | Active | Utilization | Annual waste | Action |
|------|---------|--------|------------|------------|--------|
| [Tool] | [N] | [N] | [X%] | $[X] | Downgrade to [N] seats |

**Suspected zombie tools (no active logins in 90 days):**
| Tool | Annual cost | Last known use | Action |
|------|------------|--------------|--------|
| [Tool] | $[X] | [Date / Unknown] | Cancel |

---

## Redundancy Map

| Capability | Tool A | Tool B | (Tool C) | Recommendation |
|-----------|--------|--------|---------|----------------|
| [Video conferencing] | [Zoom — $X] | [Teams (included)] | — | Consolidate to Teams — cancel Zoom |
| [Project management] | [Monday.com] | [Trello — $X] | [Notion — $X] | Keep Monday.com; cancel Trello and Notion |
| [E-signature] | [DocuSign — $X] | [Adobe Sign — $X] | | Consolidate to one; cancel the other |

**Total redundancy savings:** $[X]/year

---

## Gap Analysis

Capabilities we need but don't have:
| Capability | Why needed | Recommended tool | Estimated cost |
|-----------|-----------|-----------------|---------------|
| [Cyber/endpoint protection] | [All devices should have EDR] | [CrowdStrike / SentinelOne / Bitdefender] | $[X]/year |
| [Password manager] | [Shared credentials are a security risk] | [1Password / Bitwarden Teams] | $[X]/year |
| [Backup solution for local files] | [SharePoint/OneDrive may not cover all scenarios] | [Veeam / Backblaze B2] | $[X]/year |

---

## Security Posture Assessment

| Security control | Status | Risk if absent | Action |
|-----------------|--------|---------------|--------|
| MFA on all accounts | ✅ / 🔴 Not enforced | High | Enforce in M365 admin — 1 hour |
| Password manager | ✅ / 🔴 Not in place | High | Provision 1Password Teams |
| Endpoint protection (EDR) | ✅ / 🔴 | High | Evaluate vendors |
| Security awareness training | ✅ / 🟡 Overdue | Medium | Schedule annual training |
| SOC 2 / trust certs for key vendors | ✅ verified / 🔴 Not checked | Medium | Verify AdvancedMD, QuickBooks, M365 |

**Immediate security actions (no-cost or low-cost):**
1. [MFA: enforce on all M365 accounts — already licensed, just enable it]
2. [Remove departed employees' app access — N former employees still have active accounts]

---

## Rationalization Roadmap

| Action | Savings | Timeline | Effort | Priority |
|--------|---------|---------|--------|---------|
| Cancel zombie tools (N tools) | $[X]/year | This week | 1 hour | 🔴 High |
| Downgrade over-licensed tools (N tools) | $[X]/year | 30 days | 2 hours | 🔴 High |
| Consolidate redundant tools | $[X]/year | 60 days | Medium | 🟡 Medium |
| Fill gaps (security) | -$[X]/year investment | 30 days | Medium | 🔴 High |

**Total net annual improvement:** $[X] savings + improved security posture

---

## Matt Mathison Brief

Tech stack audit at [Company]: [N] tools, $[X]/year total SaaS spend. Found $[X] in savings from [N unused subscriptions + N redundancies]. Addressing [security gap] is the priority action this week.
```

## Output Contract
- Discovery is systematic, not recalled — the audit starts with Bill.com and QuickBooks payments, not with a department list; SaaS vendors bill monthly; the payment history is the truth; Dr. Lewis runs the discovery before asking anyone what tools they use — the goal is to compare the payment-derived list against the self-reported list; the delta (tools that appear in billing but not in anyone's awareness) is where zombie tools hide
- Utilization data comes from system admin panels — every SaaS tool has an admin panel that shows login activity; the audit pulls actual usage, not estimated usage; "we have 20 seats but I think we use about 15" is not the same as "admin panel shows 8 users logged in over the past 90 days"; the latter enables a downgrade from 20 to 10 seats with confidence
- Security gaps are surfaced immediately — the tech stack audit always includes a security posture check; MFA, endpoint protection, and password management are the three most common gaps at portfolio companies; these are flagged and actioned separately from the cost rationalization; security gaps don't wait for the next planning cycle
- HITL required: Dr. Lewis conducts the audit; CEO reviews and approves rationalization actions; cancellations of tools that a department uses require department head awareness before execution; security changes (MFA enforcement, access revocation) require IT or Dr. Lewis to implement; savings >$25K from rationalization are highlighted in the Matt Mathison brief

## System Dependencies
- **Reads from:** Bill.com/QuickBooks payment history, Microsoft 365 admin center, SaaS admin panels (login activity), credit card statements, HR offboarding records
- **Writes to:** Tech stack registry (SharePoint/Ops/<Company>/IT/TechStack/); rationalization tracker; security gap remediation log; spend analysis (feeds ops-spend-analyzer)
- **HITL Required:** Dr. Lewis audits; CEO approves rationalization actions; department heads notified before tool cancellations; security remediations implemented by Dr. Lewis; Matt Mathison for >$25K total savings

## Test Cases
1. **Golden path:** Allevio tech stack audit → Discovery: 23 tools identified via Bill.com (3 not known to any department head); utilization: Zoom (20 licenses, 3 active users) — cancel ($4,800 savings); Asana (15 licenses — parallel to Monday.com) — consolidate to Monday.com, cancel Asana ($3,600 savings); 1 zombie tool (unused project template tool, $960/year) — cancel; security: MFA not enforced — enforce immediately (no cost); no password manager — provision 1Password Teams ($720/year); gaps: endpoint protection absent on 12 staff laptops — get quotes; total savings: $9,360/year; total net (after 1Password): $8,640; 3 security actions immediate; Matt Mathison brief: "Allevio tech audit: 23 tools, $34K/year. Found $9K in savings from 3 cancellations. MFA enforcement and endpoint protection are the priority security actions this week."
2. **Edge case:** A department head pushes back on canceling a tool they use → Verify the claim in the admin panel — does the data show active usage? If yes: retain the tool, right-size the license count; if admin panel shows no activity in 90 days: have the conversation; "I understand you're using it, but the system shows no logins in 90 days. Can you show me the last time you used it and for what? I want to make sure we keep it if it's genuinely valuable." This is not aggressive — it's factual
3. **Adversarial:** "Asking IT for tool access to run this audit is too much friction" → The audit can start without IT; begin with Bill.com and QuickBooks — that takes 30 minutes and gives 80% of the picture; then ask each department head to list their team's tools — 30 minutes more; the remaining 20% (usage data from admin panels) can be gathered one tool at a time as needed; don't let perfect be the enemy of useful

## Audit Log
All tech stack audits retained by company and date. Payment-derived tool list retained as baseline. Utilization data retained at audit date. Rationalization actions and savings retained. Security gaps identified and remediation dates retained.

## Deprecation
Retire when portfolio companies have IT managers or MSPs who maintain a live tech stack registry, monitor utilization automatically, and present rationalization opportunities quarterly without Dr. Lewis conducting a manual audit.
