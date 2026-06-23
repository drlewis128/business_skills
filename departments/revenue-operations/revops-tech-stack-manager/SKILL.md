---
name: revops-tech-stack-manager
description: "Manage the revenue technology stack for MBL Partners portfolio entities. Use when the user says 'tech stack', 'revenue tech stack', 'sales tech stack', 'marketing tech stack', 'CRM tools', 'sales tools', 'marketing tools', 'tool audit', 'tool rationalization', 'tool review', 'what tools do we use', 'what software does sales use', 'tool inventory', 'tool cost', 'tool ROI', 'tool consolidation', 'reduce tools', 'add a tool', 'new tool', 'evaluate a tool', 'tool evaluation', 'tool selection', 'tech stack audit', 'tech stack review', 'tool budget', 'SaaS spend', 'SaaS audit', 'tool governance', 'tool approval', 'approve a tool', 'is this tool approved', 'tool compliance', 'HIPAA tool', 'BAA requirement', or 'does this tool require a BAA'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--action <audit|evaluate|approve|rationalize|report>] [--tool <name>]"
---

# RevOps Tech Stack Manager

Manage the revenue technology stack across MBL Partners portfolio entities — maintaining a current inventory of tools, evaluating new tool requests, rationalizing unused or duplicate tools, tracking tool costs and ROI, and ensuring all tools handling Allevio data have appropriate BAA documentation. Technology proliferation without governance produces runaway SaaS costs and compliance gaps.

## When to Use
- New tool request from an entity team member
- Annual tech stack audit and rationalization
- Identifying redundant tools across entities
- Evaluating whether a tool requires a BAA for Allevio use

## Tech Stack Management Framework

```
PORTFOLIO TECH STACK (REVENUE FUNCTION):

  MASTER PLATFORMS (ALL ENTITIES — DR. LEWIS MANAGES):
    GoHighLevel: CRM; email marketing; pipeline management; automations (all entities)
    Microsoft 365: Outlook / Teams / SharePoint — identity; communication; document library
    Monday.com: project management; sprint boards; action item tracking
    GA4: web analytics (entity-specific properties; Allevio HIPAA-configured)
    
  ENTITY-SPECIFIC TOOLS:
    Allevio:
      AdvancedMD: RCM (clinical; not RevOps — RevOps reads aggregate data only)
      Marshall Medical Billing: billing operations (not RevOps)
      [Email tool if separate from GHL]: BAA required; Dr. Lewis approves before use
      
    Column6:
      [DSP / programmatic platform]: Column6 self-serve CTV platform
      [Analytics / measurement]: campaign performance dashboards
      IAB certification tools: brand safety; IVT measurement (MOAT; DoubleVerify if applicable)
      
    HIVE:
      Covercy: oil & gas operations; LP distributions; financial reporting
      DOGM / SITLA public records: landowner and parcel research (public; no BAA needed)
      
  TOOL EVALUATION CRITERIA (NEW TOOL REQUESTS):
    1. Functional fit: does this tool do something not already covered in the stack?
    2. Integration: does it connect to GoHighLevel, MS365, or Monday.com? How?
    3. Data access: what data does it need? (Allevio data access → BAA required)
    4. Cost: monthly/annual cost; per-seat cost; total cost of ownership
    5. Security: SOC 2 Type II certified? HIPAA-ready (Allevio requirement)?
    6. BAA: if it touches Allevio data → BAA required (Dr. Lewis confirms) → without BAA, tool cannot access Allevio data
    7. Redundancy: is there an existing tool in the stack that can do this with minor configuration?
    
  TOOL APPROVAL PROCESS:
    Request: entity team member submits tool request to entity CEO
    Review: entity CEO evaluates functional fit and cost
    HIPAA check (Allevio tools): Dr. Lewis reviews before any approval
    Approval: entity CEO approves + Dr. Lewis for Allevio tools; >$5K/year → Dr. Lewis + entity CEO
    Activation: no Allevio-data-touching tool goes live without signed BAA in hand
    Registry: new tool added to entity tech stack registry within 7 days of activation
    
  BAA TRACKING (ALLEVIO):
    BAA required: any tool that accesses, processes, or stores any Allevio data
    BAA on file: Dr. Lewis maintains (SharePoint → Legal → Vendor BAAs → Allevio → [Tool Name])
    BAA review: annually (before expiry)
    Unsigned tool: any tool accessing Allevio data without a signed BAA → deactivate immediately
    
  TOOL RATIONALIZATION (ANNUAL):
    Identify: tools with <20% active user rate; tools duplicating another tool's function; tools unused >90 days
    Evaluate: is the low usage a training issue or a fit issue?
    Decision: retain / retrain / replace / cancel
    Savings: track SaaS savings from rationalization (cost efficiency metric for Dr. Lewis portfolio review)
```

## Output Format

```markdown
# Tech Stack Audit — [Entity / All] — [Date]
**Auditor:** Dr. Lewis | **Focus:** [Specific area or full review]

---

## Active Tool Registry

| Tool | Entity | Function | Monthly cost | BAA? | Last reviewed | Status |
|------|--------|---------|-------------|------|--------------|--------|
| GoHighLevel | All | CRM | $X | ✅ (Allevio) | [Date] | Active |
| [Tool] | Allevio | [Function] | $X | ✅ | [Date] | |

---

## BAA Status (Allevio Tools)

| Tool | BAA signed | Expiry | Status |
|------|-----------|--------|--------|
| GoHighLevel | ✅ | [Date] | Current |
| [Tool] | ⚠️ | Expired | Renew immediately |

---

## New Tool Requests This Period

| Tool | Requestor | Function | Allevio data? | BAA needed? | Decision |
|------|-----------|---------|--------------|------------|---------|

---

## Rationalization Candidates

| Tool | Usage | Cost | Recommendation |
|------|-------|------|----------------|
| [Tool] | 8% active users | $X/mo | Cancel — unused |
```

## Output Contract
- No Allevio tool goes live without a signed BAA — this is a non-negotiable constraint; it is not a process preference; it is a HIPAA requirement; a tool that accesses Allevio employer data without a BAA is a HIPAA violation regardless of how small the data set is or how well-intentioned the tool; Dr. Lewis's BAA requirement does not have a "trial period" exception or a "we'll get the BAA in a few weeks" grace period; the BAA is signed before the first piece of Allevio data enters the tool, or the tool is not used for Allevio data — period
- Tool proliferation is a real and recurring risk — every entity team member who discovers a useful SaaS tool and adds it to the stack without approval is creating three problems: unapproved spend (budget governance); potential HIPAA risk (Allevio data may flow into an unapproved tool); and stack complexity (more integrations to maintain, more failure points, more confusion); Dr. Lewis enforces a "one new tool, one old tool" principle in annual rationalization: if a new tool is genuinely better, the old tool gets cancelled; the stack does not grow indefinitely
- HITL required: any new Allevio tool → Dr. Lewis HIPAA review + BAA confirmed before activation; any tool >$5K/year → Dr. Lewis + entity CEO; any tool cancellation → entity CEO approves; unsigned Allevio tool found → Dr. Lewis deactivates immediately; annual rationalization decisions → entity CEO + Dr. Lewis; new integration to Allevio subaccount → Dr. Lewis architecture review

## System Dependencies
- **Reads from:** Entity tool registries (SharePoint); BAA files (SharePoint → Legal → Vendor BAAs); GoHighLevel (integration log; connected apps); entity billing records (tool subscription costs in QuickBooks or entity budgets); revops-ghl-architect (GHL integration governance)
- **Writes to:** Tech stack registry (SharePoint → [Entity] → RevOps → Tech Stack → Registry); BAA tracking records; Dr. Lewis tool approval log; tool rationalization records; SaaS cost tracking (feeds mktg-marketing-budget-manager for marketing tools; revops-marketing-budget-manager for all RevOps tools)
- **HITL Required:** Allevio tool → Dr. Lewis + BAA; tool >$5K → Dr. Lewis + entity CEO; cancellation → entity CEO; unsigned Allevio tool → Dr. Lewis deactivates; annual rationalization → entity CEO + Dr. Lewis; GHL integration → Dr. Lewis architecture

## Test Cases
1. **Golden path:** Annual Allevio tech stack audit. Tool inventory: GoHighLevel (BAA ✅ current); GA4 (BAA N/A — analytics only; no PHI); Zoom (BAA ✅ — used for Allevio webinars; member-facing; required); Microsoft 365 (BAA ✅ — Microsoft HIPAA BAA in MS365 tenant settings). Rationalization: identified one tool (email testing tool, $80/month) with 0 uses in 90 days → entity CEO approves cancellation → cancelled → $960 annual savings. New tool request: entity marketing coordinator requested a social scheduling tool ($29/month; no Allevio data access; no BAA needed; Column6 and Allevio org social posts only) → entity CEO approves → added to registry. Tech stack clean. Dr. Lewis sign-off.
2. **Edge case:** Allevio CS lead signed up for a free trial of a patient engagement platform that connects to AdvancedMD (Allevio's clinical system) without Dr. Lewis review → Dr. Lewis: "This trial needs to be deactivated immediately. Any integration that touches AdvancedMD — Allevio's clinical data — is a potential PHI access point and requires a BAA review before it is connected to anything. Free trial or not, if the platform can access AdvancedMD data, it is a covered integration under HIPAA. I'm deactivating the trial now. If this platform is genuinely useful, submit a formal tool request, I'll review the BAA documentation, and we'll evaluate it properly. The trial is not a safe way to evaluate a HIPAA-adjacent integration."
3. **Adversarial:** Entity CEO approves a new marketing tool for Column6 that includes an "AI analytics" feature that automatically ingests CRM contact data from GoHighLevel → Dr. Lewis: "Before this goes live, I need to understand exactly what data the AI analytics feature is accessing from GoHighLevel and where it's being processed. 'Ingests CRM contact data' is a broad description that could mean anything from reading company names to processing individual contact behavior. For Column6, this is a data governance question (is agency contact data being sent to a third-party AI without their knowledge?). For any connection to Allevio data, even indirect, it's a HIPAA question. I'm pausing the activation pending a technical review of what the API connection actually sends. Give me 48 hours to evaluate the data flow before anything goes live."

## Audit Log
Annual tech stack audit records. Tool registry with version history. BAA tracking records (Allevio — permanent). New tool approval records (Dr. Lewis sign-off). Tool cancellation records. Rationalization decisions. Unsigned tool deactivation records. SaaS cost savings tracking.

## Deprecation
Tool registry reviewed annually. BAA review triggered by tool BAA expiry dates. Rationalization criteria reviewed when entity scale changes. Tool evaluation criteria reviewed when HIPAA regulations change or when GoHighLevel integration capabilities change. BAA requirements reviewed annually with legal counsel.
