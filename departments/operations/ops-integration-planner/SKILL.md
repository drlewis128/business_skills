---
name: ops-integration-planner
description: "Plan and manage system integrations across MBL Partners portfolio. Use when the user says 'integration', 'integrations', 'system integration', 'API integration', 'connect systems', 'integrate systems', 'system connection', 'data flow', 'data sync', 'data pipeline', 'workflow integration', 'automate between systems', 'connect to Krista', 'connect to Monday.com', 'connect QuickBooks', 'Bill.com integration', 'connect GoHighLevel', 'connect AdvancedMD', 'connect Covercy', 'integration plan', 'integration roadmap', 'integration design', 'integration architecture', 'integration testing', 'integration monitoring', 'broken integration', 'integration failure', 'integration issue', 'integration error', 'MCP integration', 'API connection', 'webhook', 'Zapier', 'Make.com', 'middleware', 'iPaaS', 'no-code integration', or 'system glue'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--system-a <quickbooks|monday|krista|ghl|bill|covercy|advancedmd|other>] [--system-b <same>] [--action <design|build|test|monitor|troubleshoot|document>] [--priority <high|normal|low>] [--entity <allevio|hive|column6|mbl|all>]"
---

# Ops Integration Planner

Plan and manage system integrations across MBL Partners portfolio — designing how data flows between the MBL core systems, evaluating integration approaches (native API; MCP; iPaaS; webhook), building the integration architecture that lets Krista.ai, Monday.com, QuickBooks, Bill.com, and entity-specific systems share data reliably, and maintaining the integration map that tells Dr. Lewis how each system connects to the others. Integration failures are one of the most common causes of operational breakdowns: a disconnected system creates manual workarounds, data duplication, and errors; a well-designed integration architecture reduces manual effort, improves data accuracy, and creates the operational foundation for AI-powered workflows via Krista.ai.

## When to Use
- Designing a new integration between two systems
- An existing integration has failed or is producing data errors
- Evaluating whether a new tool integrates with the MBL stack
- Building the Krista.ai orchestration layer for a new workflow

## Integration Planning Framework

```
MBL INTEGRATION ARCHITECTURE (current state):

  CORE INTEGRATION HUB: Krista.ai
    Krista.ai is the AI orchestration layer — it connects to and coordinates:
    → Microsoft 365 (email; calendar; Teams; SharePoint)
    → Monday.com (task creation; board updates; workflow triggers)
    → GoHighLevel (CRM — contact updates; pipeline stage changes)
    → QuickBooks (financial data reads; expense categorization)
    → Bill.com (AP workflow; payment approvals)
    Integration method: MCP (Model Context Protocol) where available; API otherwise
    
  ENTITY-SPECIFIC INTEGRATIONS:
    Allevio: AdvancedMD ↔ QuickBooks (RCM data flow)
    HIVE: Covercy ↔ QuickBooks (royalty accounting)
    Column6: DSP platforms → internal reporting (impression/cost data)
    
  INTEGRATION MAP (maintain as living document):
    System A → System B | Method | Data flow | Owner | Health status
    Krista.ai → Monday.com | MCP | Action items from meetings | Dr. Lewis | Active
    QuickBooks → Consolidation | Manual export | Monthly financial data | Dr. Lewis | Manual (automate)
    Covercy → QuickBooks | Manual | Royalty data | Dr. Lewis | Manual (automate)

INTEGRATION DESIGN PROCESS (for new integrations):

  STEP 1 — DEFINE THE NEED:
    What data needs to flow? (source; destination; field mapping)
    How often? (real-time; daily; weekly; monthly)
    What triggers the flow? (event-based; scheduled; manual)
    What is the failure mode if the integration breaks?
    
  STEP 2 — EVALUATE APPROACH:
    Option A: Native integration (built-in connector — lowest effort; highest reliability)
      Check: does System A natively connect to System B?
    Option B: MCP integration (Krista.ai as orchestration layer)
      Use when: the integration involves AI decision-making or natural language
    Option C: iPaaS (Make.com; Zapier — no-code middleware)
      Use when: no native integration; moderate complexity; no AI required
    Option D: Custom API integration (code-based)
      Use when: iPaaS can't handle the complexity; Dr. Lewis involves an engineer
    
  STEP 3 — DESIGN THE INTEGRATION:
    Field mapping: System A field → System B field (exact names; data types)
    Transform rules: any data transformation required (date format; currency; enumeration)
    Error handling: what happens when the integration fails? (alert; retry; fallback)
    Test cases: golden path + edge case + failure mode
    
  STEP 4 — BUILD AND TEST:
    Build in staging/test environment first (not production)
    Run golden path test (happy path)
    Run edge case test (empty data; duplicate; missing field)
    Run failure test (what happens when source system is unavailable)
    
  STEP 5 — DOCUMENT:
    Integration name; purpose; systems; method; data flow; owner
    Add to Integration Map (SharePoint → Operations → Integrations)
    
  STEP 6 — MONITOR:
    Set up health monitoring (daily check; alert on failure)
    Monthly integration health review (are all integrations running cleanly?)
    
INTEGRATION PRINCIPLES:

  1. Systems of record stay authoritative — integration can READ from any system;
     WRITE operations must not create conflicting records in two systems
     (QuickBooks is the financial SoR; always write financial data there, read from it)
     
  2. Build for failure — every integration has a failure mode; define it in design
  
  3. Log everything — every integration event logged for audit and debugging
  
  4. Prefer native over custom — native integrations are maintained by vendors;
     custom integrations are maintained by Dr. Lewis (or an engineer he manages)
     
  5. PHI-aware for Allevio — any integration that touches Allevio clinical data
     must be HIPAA-compliant; both systems must have signed BAAs
```

## Output Format

```markdown
# Integration Design Document — [Integration Name]
**Systems:** [System A] → [System B]
**Owner:** Dr. Lewis | **Entity:** [Entity] | **Status:** Design / Build / Testing / Active

---

## Purpose
[One sentence: what business need does this integration serve?]

---

## Data Flow Design

| System A field | Data type | Transform | System B field | Required? |
|---------------|-----------|-----------|---------------|----------|
| [field_name] | String | None | [field_name] | Yes |
| [invoice_date] | Date (M/D/Y) | → ISO 8601 | [invoice_date] | Yes |

**Trigger:** [Event / Schedule] | **Frequency:** [Real-time / Daily / Weekly]
**Approach:** [Native / MCP / Make.com / Custom API]

---

## Error Handling
- **Integration failure:** [Alert Dr. Lewis; retry 3× before manual fallback]
- **Missing required field:** [Skip record; log to error queue; Dr. Lewis reviews daily]
- **Duplicate detection:** [Check [field] for uniqueness before write]

---

## Test Results
- Golden path: [Pass / Fail — notes]
- Edge case (empty data): [Pass / Fail — notes]
- Failure mode (source unavailable): [Pass / Fail — notes]
```

## Output Contract
- Systems of record are never overwritten by integration — the single most dangerous integration failure is a bidirectional sync that creates conflicting records in two systems; QuickBooks is the financial system of record; if an integration writes financial data to QuickBooks, it is validated against the QuickBooks record before writing, never overwriting what's there; Dr. Lewis designs all integrations with explicit write permissions: the integration design document specifies which system is the authority for each data field and which direction data flows
- Every integration has a documented failure mode — integrations that silently fail are worse than integrations that never existed; a silent integration failure means data stops flowing but nobody knows; Dr. Lewis configures health monitoring and alerting for every active integration; a failed integration that affects financial data (QuickBooks; Bill.com) or action item routing (Monday.com) generates an alert to Dr. Lewis within 1 hour; Dr. Lewis resolves before the next business day or notifies the affected system owners
- Allevio integrations are HIPAA-gated — no integration that touches Allevio clinical data (AdvancedMD; patient billing; clinical documentation) is built without confirming HIPAA compliance for both systems; both systems must have signed BAAs; the integration itself (the data pipe) must be encrypted; Dr. Lewis does not allow PHI to flow through non-BAA-covered middleware even temporarily; this is an absolute constraint, not a risk to be managed
- HITL required: any integration that writes financial transactions to QuickBooks or initiates payments in Bill.com → Dr. Lewis review before activation; integrations involving LP data → Matt Mathison review before activation; Allevio PHI-touching integrations → Dr. Lewis + Allevio CEO sign-off + BAA confirmation; custom API integrations involving an external engineer → engineer must sign an NDA and follow MBL data handling standards; new integrations go live in staging before production; production activation requires Dr. Lewis explicit sign-off after testing passes

## System Dependencies
- **Reads from:** MBL Integration Map (SharePoint → Operations → Integrations); all connected systems (health status); Krista.ai MCP connection status; entity system admin panels
- **Writes to:** Integration Map (living document); individual Integration Design Documents; Monday.com AI Projects board (integration build status); ops-tech-stack-audit (integration coverage informs tech stack audit); error and alert logs
- **HITL Required:** Financial write integrations → Dr. Lewis review before activation; LP data integrations → Matt Mathison review; PHI-touching Allevio integrations → Dr. Lewis + CEO + BAA confirmation; production activation → Dr. Lewis explicit sign-off after testing; external engineer involvement → NDA required

## Test Cases
1. **Golden path:** Design the Covercy → QuickBooks royalty data integration (currently manual monthly reconciliation). Step 1: Define — royalty statements export from Covercy in CSV format; need to import to QuickBooks as income by well/property; monthly; triggered by month-end statement arrival. Step 2: Evaluate — Covercy has CSV export; QuickBooks has CSV import — Option C (Make.com) is sufficient. Step 3: Design — field mapping: Covercy [PropertyName] → QuickBooks [Class]; [GrossProduction] → [Revenue line item]; [SeveranceTax] → [Tax line item]; [NetRoyalty] → [Net income]. Transform: Covercy date format (M/D/YYYY) → QuickBooks (ISO 8601). Step 4: Build in Make.com; test with July statement data in sandbox QuickBooks. Step 5: Document. Step 6: Monitor — alert if Covercy export doesn't arrive by the 25th of each month.
2. **Edge case:** Krista.ai pushes a meeting action item to Monday.com but the assigned person doesn't have a Monday.com account → Dr. Lewis: "The integration failure is: Krista.ai identified '[Person]' as the action item owner, but [Person] doesn't have a Monday.com account in our workspace. The action item was not created. I need to decide: (1) Create a [Person] view-only account in Monday.com (best long-term solution); (2) Map [Person] to a proxy account (Dr. Lewis receives and manually assigns — workaround); (3) Add a validation step in the Krista.ai → Monday.com workflow that checks person exists before creating (prevents silent failures). I recommend option 1 + 3: add the account AND add the validation. Cost: 30 minutes of setup. Benefit: no more silent routing failures."
3. **Adversarial:** An entity employee builds their own integration without Dr. Lewis's knowledge (connecting entity data to an external SaaS via Zapier) → Dr. Lewis: "I found an unauthorized Zapier integration at [entity] — it's connecting [system] to [external service]. Before I assess the risk, I need to understand what it does. The risk factors are: (1) Is it sending any sensitive data externally? (2) Is [external service] on our approved vendor list? (3) Was this built for a legitimate business need that wasn't being met? My immediate action: pause the Zapier integration (disable the Zap) until I can review it. My message to the entity CEO: 'I found an integration that wasn't on our approved list. I've paused it while I review — no business disruption, just a pause. Can you have [employee] walk me through what it does and why they built it?'"

## Audit Log
All Integration Design Documents retained. Integration Map version history retained. Error and alert logs retained. Test results retained. PHI-touching integration compliance records retained. Unauthorized integration incidents retained. External engineer access records retained.

## Deprecation
The Integration Map is a living document — it evolves as systems are added, changed, or removed from the MBL stack. Individual integrations are retired when the underlying systems change; the Integration Map reflects current-state integrations, not historical ones.
