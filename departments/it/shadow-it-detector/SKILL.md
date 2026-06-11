---
name: shadow-it-detector
description: "Identify unauthorized software, applications, and services in use across the organization. Use when the user says 'shadow IT', 'unauthorized apps', 'what tools are employees using', 'unsanctioned software', 'unapproved tools', 'app discovery', or 'what SaaS is running'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--method <network|ssso|survey|all>] [--format <report|risk>]"
---

# Shadow IT Detector

Identify unauthorized software, applications, and services being used outside IT visibility. Shadow IT is both a security risk and a data governance problem. Employees who solve problems with unapproved tools may be well-intentioned, but they're creating unmanaged security exposure and fragmented data. Detection is the first step — remediation follows.

## When to Use
- Quarterly shadow IT audit
- Security incident response — was an unsanctioned tool a vector?
- After employee offboarding — what systems did they have access to?
- Pre-compliance audit (SOC 2 CC6 requires visibility into access)
- SaaS consolidation initiative — what are we actually paying for vs. what's in use?

## Detection Methods

| Method | What It Finds | Effort | Coverage |
|--------|-------------|--------|---------|
| **SSO / IdP analysis** | Apps connected via Okta, Azure AD OAuth | Low | High — misses non-SSO apps |
| **Network traffic analysis** | Domains and SaaS services making network requests | Medium | High — catches most SaaS |
| **Browser extension / endpoint** | Software installed on managed devices | Low (via MDM) | Endpoints only |
| **Credit card / expense audit** | SaaS charges on corporate cards not in IT registry | Low | Catches paid SaaS |
| **Employee survey** | Self-reported tools employees use for work | Low | High trust requirement |
| **DNS / proxy logs** | Web services accessed by company network | Medium | Network-connected only |

## Risk Classification

| Shadow IT Type | Risk Level | Common Examples |
|--------------|-----------|----------------|
| **AI tools processing company data** | Critical | ChatGPT, Gemini, Claude (without IT approval) |
| **File sharing / storage** | High | Personal Dropbox, personal Google Drive, WeTransfer |
| **Communication** | Medium | Personal WhatsApp for work, Telegram |
| **Productivity / PM tools** | Medium | Personal Trello, Notion, Airtable |
| **Email forwarding to personal** | High | Work email forwarded to Gmail |
| **Browser-based apps** | Low-Medium | Any web app without SSO enforcement |

## Output Format

```markdown
# Shadow IT Detection Report — <Entity>
**Date:** <date> | **Methods used:** <list>

---

## Shadow IT Findings

| Application / Service | Category | Estimated Users | Risk Level | Data Exposure Risk | Action |
|---------------------|---------|----------------|-----------|------------------|--------|
| Personal Dropbox (3 accounts) | File sharing | 3 | High | Company documents likely stored | Block via network + offboard data |
| ChatGPT (free tier) | AI | 8 | Critical | Confidential data may be pasted in prompts | Educate + provide approved alternative |
| Personal Gmail forwarding | Email | 1 | High | All email visible outside company | Block forwarding + user counseling |
| Trello (personal) | Project management | 5 | Medium | Internal project data in unmanaged system | Review; migrate to Monday.com |
| Zoom (personal account) | Video | 2 | Low | Meetings recorded in personal account | Switch to M365 Teams |

---

## Risk Summary

| Risk Level | Count | Immediate Action? |
|-----------|-------|----------------|
| Critical | 1 (AI tool with potential confidential data) | Yes — within 24 hours |
| High | 2 | Yes — within 5 days |
| Medium | 2 | Within 30 days |
| Low | 1 | Quarterly cycle |

---

## Remediation Plan

### Critical: AI Tool Usage
**Finding:** 8 employees using free ChatGPT with no guardrails on data pasted into prompts
**Risk:** Confidential and potentially Restricted data in third-party AI prompts
**Action:**
1. IT + managers communicate AI usage policy within 24 hours
2. Provide approved AI alternative (if available — e.g., Microsoft Copilot, Claude Enterprise)
3. Block free-tier ChatGPT at network level if policy is not adopted within 30 days
4. Add AI tool usage to security awareness training

### High: Personal Dropbox
**Finding:** 3 users storing company files in personal Dropbox accounts
**Action:**
1. Contact users — request file migration to approved SharePoint
2. Block personal Dropbox via network/DNS (not business Dropbox)
3. Offboard users from personal accounts with files migrated by <date>

---

## Root Cause Analysis

| Root Cause | Shadow IT Found | Solution |
|-----------|----------------|---------|
| Approved tool doesn't meet need | Trello vs. Monday.com | Improve Monday.com onboarding |
| Employees don't know policy | AI tools | Add AI policy to acceptable use policy; training |
| Approved tool harder to use | Personal Dropbox | SharePoint UX improvement or training |
```

## Output Contract
- AI tools processing company data always treated as Critical — data privacy risk is immediate
- Every finding has a named remediation action — detection without remediation is just surveillance
- Root cause analysis always included — blocking tools without addressing the need creates more shadow IT
- HITL required: IT Manager reviews all Critical and High findings; Dr. Lewis informed of AI tool usage findings; Legal informed if PHI or LP data may have been exposed to non-approved AI

## System Dependencies
- **Reads from:** SSO logs, network/DNS logs, expense reports, MDM software inventory (provided)
- **Writes to:** Nothing (shadow IT report for HITL review and remediation)
- **HITL Required:** IT Manager reviews report; Dr. Lewis informed of Critical findings within 24 hours; Legal notified of any Restricted data potentially exposed

## Test Cases
1. **Golden path:** Quarterly scan → AI tool usage (8 users, Critical), personal Dropbox (3 users, High), Trello (5 users, Medium), remediation plan with 24-hour action for AI, 5-day action for Dropbox
2. **Edge case:** Employee using a highly specialized industry tool that IT doesn't recognize → researches the tool's security posture and data handling before classifying; may recommend IT-sanctioned adoption if the tool is legitimate and low-risk
3. **Adversarial:** Manager argues employees need AI tools and IT is blocking productivity → acknowledges the need, fast-tracks an approved AI tool evaluation (Microsoft Copilot or Claude Enterprise), provides a 30-day interim policy with usage guidelines while the approved tool is procured

## Audit Log
Shadow IT detection reports retained by entity and quarter. Remediation outcomes tracked. Policy violations documented.

## Deprecation
Retire when entity deploys a CASB (Cloud Access Security Broker) or SaaS management platform with continuous shadow IT discovery and policy enforcement.
