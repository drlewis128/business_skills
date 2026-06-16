---
name: ops-integration-mapper
description: "Map system integrations and data flows. Use when the user says 'integration map', 'how do our systems connect', 'system integration', 'data flow', 'integration diagram', 'which systems talk to each other', 'integration architecture', 'map integrations', 'systems map', 'data flow diagram', 'API integrations', 'what connects to what', 'system dependencies', 'integration inventory', or 'systems architecture'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--scope <all|finance|clinical|operations>] [--format <map|inventory|risk>]"
---

# Ops Integration Mapper

Map and document the system integrations and data flows at MBL portfolio companies — creating a clear picture of how software systems connect, what data flows where, and where integration failures could cause operational or compliance problems. Integration mapping is foundational for: understanding operational dependencies, planning system changes without breaking things, troubleshooting data discrepancies, and ensuring PHI is only flowing through HIPAA-compliant pathways at Allevio.

## When to Use
- A new system is being added and its integration requirements need to be mapped
- A system is being replaced and the impact on dependent systems needs to be understood
- A data discrepancy between two systems needs to be traced to its source
- Annual tech stack review — updating the integration map
- Allevio: any system that might touch PHI needs to be mapped for HIPAA compliance
- Matt Mathison or an investor asks "how do your systems work together?"

## Integration Mapping Framework

```
Integration types:
  Native/built-in: One vendor provides a pre-built connector to another
    Example: QuickBooks Online ↔ Bill.com (native sync)
    Reliability: High — maintained by vendors
    
  iPaaS (Zapier, Make, Power Automate, Krista.ai): Middle-layer automation
    Example: Monday.com → Zapier → QuickBooks (when task completed, create QB invoice)
    Reliability: Medium — depends on iPaaS platform uptime + config maintenance
    
  API direct: Custom-built connection between two systems
    Example: Custom code pulls AdvancedMD data → pushes to reporting database
    Reliability: Depends on maintenance — highest risk if no documentation
    
  Manual/human: Data moved by a person (CSV export/import, copy-paste)
    Example: Pulling monthly Covercy report → pasting into QuickBooks journal entry
    Reliability: Lowest — human error, timing variability, not scalable
    Risk: Manual integrations are automation opportunities (ops-automation-identifier)

Data flow characteristics to document:
  Direction: Unidirectional (A → B) or bidirectional (A ↔ B)
  Frequency: Real-time / hourly / daily / weekly / on-demand
  Data type: Financial transactions, patient data (PHI), HR records, operational data
  Error handling: What happens when the integration fails? Is there an alert?
  PHI flag: Does this flow include or potentially include PHI? (Allevio)

HIPAA integration requirements (Allevio):
  Any integration that transmits PHI must route through HIPAA-compliant services only
  All services receiving PHI must have a BAA with Allevio
  PHI integrations must have access logging
  Integration failures involving PHI must trigger an incident response
```

## Output Format

```markdown
# System Integration Map — <Company Name>
**Date:** [Date] | **Prepared by:** Dr. John Lewis
**Systems mapped:** [N] | **Integrations mapped:** [N]
**PHI-touching integrations:** [N] | **Manual integrations (automation candidates):** [N]

---

## System Inventory

| System | Category | Primary function | Integration count | PHI? |
|--------|---------|----------------|-----------------|------|
| Microsoft 365 | Productivity | Email, docs, chat | [N] | No |
| QuickBooks Online | Finance | GL, AP/AR, reporting | [N] | No |
| AdvancedMD | Clinical | Billing, scheduling | [N] | 🔴 Yes — HIPAA |
| Bill.com | Finance | AP automation | [N] | No |
| Monday.com | PM | Project and task tracking | [N] | No |
| Covercy | Finance | HIVE ops/LP reporting | [N] | No |
| GoHighLevel | CRM | Marketing, contacts | [N] | No |
| Krista.ai | Orchestration | AI workflow automation | [N] | Conditional |

---

## Integration Map (Text Diagram)

```
Core Financial Hub:
  QuickBooks Online ←→ Bill.com [Native sync — bidirectional, real-time AP]
  QuickBooks Online ← [Manual monthly journal] ← Covercy (HIVE) [Manual — automation candidate]
  Bill.com → [Manual CSV] → QuickBooks [redundant with native sync — investigate]

Clinical Hub (Allevio — PHI):
  AdvancedMD ← [Manual scheduling input] (Patient scheduling)
  AdvancedMD → [Clearinghouse API] → Insurance payers (Claims)
  AdvancedMD → [Vendor API] → [Medical billing service] (RCM)
  
  ⚠️ PHI flows: AdvancedMD → Clearinghouse [BAA: ✅]; AdvancedMD → Billing service [BAA: ✅]

Operations/Project Hub:
  Monday.com → [Zapier] → Microsoft Teams (Task notifications)
  Monday.com → [Manual] → QuickBooks (No integration — manual update)
  Microsoft 365 → Krista.ai (Meeting transcripts → meeting intelligence)

CRM:
  GoHighLevel → [Manual export] → QuickBooks (No native integration)
  GoHighLevel → Microsoft 365 (Email sync — native)
```

---

## Integration Register

| Integration ID | From | To | Direction | Method | Frequency | PHI? | BAA? | Status |
|--------------|------|-----|----------|--------|----------|------|------|--------|
| INT-001 | QuickBooks | Bill.com | Bidirectional | Native | Real-time | No | N/A | 🟢 Active |
| INT-002 | AdvancedMD | Clearinghouse | Unidirectional | API | Per claim | Yes | ✅ | 🟢 Active |
| INT-003 | Monday.com | Teams | Unidirectional | Zapier | Trigger | No | N/A | 🟢 Active |
| INT-004 | Covercy | QuickBooks | Unidirectional | Manual | Monthly | No | N/A | 🟡 Automation candidate |
| INT-005 | GoHighLevel | QuickBooks | None | — | — | No | N/A | 🔴 Gap — no integration |

---

## PHI Flow Audit (Allevio)

| Integration | PHI transmitted | BAA in place | Access logged | Risk level |
|------------|----------------|-------------|--------------|-----------|
| AdvancedMD → Clearinghouse | Yes — claims | ✅ [Vendor name] | Yes | 🟢 Low |
| AdvancedMD → [Billing service] | Yes — full patient records | ✅ [Vendor name] | Verify | 🟡 Verify |
| [Any other PHI-touching integration] | | | | |

**PHI integrations without BAA:** [N — these must be remediated immediately]

---

## Issues and Risks

| Issue | Integration | Risk | Action |
|-------|------------|------|--------|
| Manual integration — no error detection | Covercy → QB | 🟡 Monthly journal entry errors undetected | Automate; add reconciliation |
| Duplicate data path | Bill.com → QB (2 paths) | 🟡 Data inconsistency | Investigate and consolidate |
| No integration between CRM and QB | GoHighLevel ↔ QB | 🟡 Revenue recognition delay | Evaluate Zapier connector |
| PHI BAA verification pending | AdvancedMD → Billing service | 🔴 HIPAA compliance | Verify BAA within 48 hrs |

---

## Automation Opportunities (Manual Integrations)

| Integration | Manual effort | Automation option | Est. ROI |
|------------|-------------|-----------------|---------|
| Covercy → QuickBooks | [N hrs/month] | Power Automate or Zapier | $[X]/year |
| GoHighLevel → QuickBooks | [N hrs/month] | Zapier native connector | $[X]/year |

---

## Matt Mathison Brief (if PHI gaps or major integration issues)

[Company] integration map complete: [N] systems, [N] integrations documented. [Key finding — PHI risk or manual bottleneck]. [Action underway].
```

## Output Contract
- PHI flows are always flagged — every integration at Allevio is evaluated for PHI exposure; any integration that could transmit or receive PHI without a BAA is a HIPAA risk and is flagged immediately; this is not a future action — it is same-week remediation; the BAA either exists or the integration is suspended until it does
- Manual integrations are automation candidates — every manual integration (human moves data from System A to System B) is flagged for the automation identifier (ops-automation-identifier); the integration map makes these visible; some manual integrations are acceptable for low-frequency, low-risk data; most are automation opportunities waiting to be prioritized
- Integration failures need alert paths — a Zapier workflow that silently fails for a week is worse than no automation; every integration should have an error notification path (Zapier sends a failure email; Power Automate sends a Teams alert); the integration register includes the error handling status; integrations without error alerts are flagged as 🟡 risk
- HITL required: Dr. Lewis builds and maintains the integration map; new integrations are documented before going live; PHI integration changes require Dr. Lewis review and BAA verification; any integration change that affects financial data requires controller review; the map is updated when systems are added, removed, or significantly changed

## System Dependencies
- **Reads from:** Tech stack registry (ops-tech-stack-auditor), vendor documentation, system admin panels, Zapier account, Power Automate account, Krista.ai workflows, BAA registry (Allevio)
- **Writes to:** Integration map (SharePoint/Ops/<Company>/IT/Integrations/); automation opportunities list (feeds ops-automation-identifier); PHI compliance record (Allevio); tech stack registry
- **HITL Required:** Dr. Lewis maintains; PHI integration changes require Dr. Lewis + BAA verification; financial data integrations require controller awareness; new integration deployments require Dr. Lewis approval

## Test Cases
1. **Golden path:** Allevio integration map → 8 systems mapped; 12 integrations documented; PHI audit: 2 PHI-touching integrations (AdvancedMD → Clearinghouse: BAA ✅; AdvancedMD → billing service: BAA needs verification — action within 48 hours); 3 manual integrations identified as automation candidates (18 hrs/month total manual effort); 1 gap identified (no GoHighLevel → QuickBooks integration — marketing revenue not flowing to GL without manual entry); integration map published to SharePoint; billing service BAA verification scheduled; Matt Mathison not notified (no critical PHI gaps confirmed yet)
2. **Edge case:** A new Zapier automation was built by the marketing team that routes contact form submissions including health condition questions (PHI) to a non-HIPAA-compliant tool → Discovered during integration review; immediately suspend the Zapier workflow; the health condition questions constitute PHI; the receiving tool does not have a BAA; this is a potential HIPAA breach depending on what data was sent and how long; initiate HIPAA breach assessment (ops-incident-response); notify Privacy Officer; remediate: either disable the health condition questions or route through a HIPAA-compliant tool with a BAA; document the incident regardless of breach determination
3. **Adversarial:** "We don't need to document integrations — we know how everything works" → Respond: "The documentation isn't for you — it's for the next person, and for the moment when something breaks and you're trying to trace where the data went. It's also for me, so that when I propose a system change, I know what I'm breaking. The integration map takes 3 hours to build and saves much more than that the first time we need it."

## Audit Log
Integration maps versioned with dates. PHI integration audit records retained permanently (Allevio). BAA verification records retained. Integration failures logged. Map updates made when systems change.

## Deprecation
Retire when portfolio companies have IT managers who own the integration architecture, maintain live documentation in a configuration management system, and review PHI flows quarterly with the Privacy Officer without Dr. Lewis building and maintaining the map manually.
