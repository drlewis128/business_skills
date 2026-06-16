---
name: it-app-lifecycle-manager
description: "Manage application lifecycle from evaluation through retirement. Use when the user says 'application lifecycle', 'app lifecycle', 'software lifecycle', 'retire application', 'decommission software', 'replace application', 'implement new software', 'software implementation', 'application management', 'end of life software', 'migrate from old system', 'legacy application', 'application strategy', or 'app portfolio'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--application <name>] [--action <evaluate|implement|maintain|retire>] [--phase <all|specific>]"
---

# IT App Lifecycle Manager

Manage the full lifecycle of applications at MBL portfolio companies — from initial evaluation through implementation, active maintenance, and eventual retirement. Application decisions are among the most consequential and hardest-to-reverse IT decisions: a new EHR implementation can take a year and cost six figures; retiring a legacy system requires data migration and retraining; keeping a system past its useful life accumulates hidden costs. This skill provides the framework for making and executing application decisions deliberately.

## When to Use
- Evaluating a new application to replace an existing one
- Planning the implementation of a newly selected application
- An existing application is approaching end-of-support or vendor discontinuation
- Auditing the application portfolio — what should be replaced or retired?
- A portfolio company is being acquired — what applications are in use and what's the plan?

## Application Lifecycle Framework

```
Phase 1 — Evaluate (see also: ops-software-evaluation for full evaluation process)
  Trigger: Current app is failing to meet needs, is EOL, or a new capability is needed
  Output: Go/No-go decision + selected vendor (if Go)
  Key gates:
    - Requirements defined before demos (not the other way around)
    - Year 1 TCO calculated (implementation + license + training + migration)
    - Integration requirements mapped (what does this need to connect to?)
    - BAA status confirmed if PHI (Allevio non-negotiable)
    - Security review: SSO support, MFA, data residency, SOC 2
  Decision authority:
    <$10K/year: Dr. Lewis + business owner
    $10K-$25K/year: Dr. Lewis + CEO
    >$25K/year: Matt Mathison + CEO

Phase 2 — Implement
  Timeline: Realistic; do not compress implementation to meet an artificial go-live date
  Data migration: Plan before contract signing — what data moves? In what format? Who validates?
  Training: All users trained before go-live (not "train as you go")
  Parallel run: Run old + new systems simultaneously for a defined period (1-4 weeks typically)
  Go-live criteria: Defined in advance — what must be true for go-live to proceed?
  Rollback plan: What is the path back to the old system if go-live fails?
  
Phase 3 — Maintain
  Vendor contract management: Renewal dates in calendar; evaluate at T-90 (not T-0)
  Version management: Ensure major upgrades are planned, not reactive
  Usage monitoring: Is the application being used as intended? (See it-saas-governance)
  User feedback: Collect and act on — unhappy users find workarounds that create shadow IT
  
Phase 4 — Retire
  Trigger: Vendor EOL, acquisition, replacing with better alternative, or not used
  Data retention: Extract and archive all required data before decommission
  Regulatory retention: HIPAA requires medical records retention per state law (typically 6-10 years)
  Data destruction: Formally destroy data after retention period; get vendor certification if SaaS
  Transition: Users migrated to replacement before old system goes dark
  Contract termination: Provide notice per contract terms (typically 30-90 days)
```

## Output Format

```markdown
# Application Lifecycle — <Application Name> — <Company Name>
**Current phase:** Evaluate / Implement / Maintain / Retire
**Category:** EHR / RCM / Finance / CRM / Productivity / PM / Other
**Current status:** [Active and performing / Under evaluation / Implementation in progress / Retiring]
**Annual cost:** $[X] | **Users:** [N] | **Business criticality:** Mission critical / Business critical / Departmental
**Prepared by:** Dr. John Lewis

---

## Phase Status (current phase detail)

### If Evaluating:
| Criterion | Weight | [Vendor A] | [Vendor B] | [Vendor C] |
|-----------|--------|-----------|-----------|-----------|
| Functional fit | 30% | [score] | | |
| Integration | 20% | | | |
| TCO | 20% | | | |
| Vendor stability | 15% | | | |
| Support | 10% | | | |
| Security/compliance | 5% | | | |
| **Weighted total** | 100% | | | |

**Recommended vendor:** [Vendor] — [Reason]
**Decision authority needed:** Dr. Lewis + [CEO / Matt Mathison] — [$X/year]
**BAA confirmed available:** Yes / No (Allevio only)

### If Implementing:
| Milestone | Target date | Status | Owner |
|-----------|-----------|--------|-------|
| Contract signed | [Date] | Done | Dr. Lewis |
| Data migration plan finalized | [Date] | | |
| User training complete | [Date] | | Vendor + Dr. Lewis |
| UAT (user acceptance testing) | [Date] | | Business owner |
| Parallel run period | [Start - End date] | | |
| Go-live | [Date] | | Dr. Lewis + Business owner |

**Go-live criteria:**
- [ ] All users trained (100%)
- [ ] Data migration validated (sample audit)
- [ ] Critical integrations tested
- [ ] Rollback plan documented
- [ ] IT support staff trained

### If Maintaining:
| Item | Status | Next action | Date |
|------|--------|------------|------|
| Contract renewal | [Date] | Evaluate at T-90 | [T-90 date] |
| Version current | Yes / No — [N versions behind] | Plan upgrade | [Date] |
| Usage health | [X%] active users | | |
| Pending issues | [N open] | | |

### If Retiring:
| Step | Status | Date | Notes |
|------|--------|------|-------|
| Data export completed | Yes/No | | Format: [CSV/JSON/DB export] |
| HIPAA retention confirmed (Allevio) | Yes/No | | Retention: [N years per state law] |
| Users migrated to [replacement] | Yes/No | | |
| Contract termination notice sent | Yes/No | [Date] | [N-day notice per contract] |
| Data destruction certificate obtained | Yes/No | | Required for PHI tools (Allevio) |

---

## Matt Mathison Brief (for decisions >$25K/year or implementation >$50K total)

[Company] [Application]: [Phase and status]. Investment: $[X]/year. [Key decision or status]. [Action needed from Matt: Yes/No].
```

## Output Contract
- Implementation dates do not override readiness gates — if go-live criteria are not met on the planned date, the date moves; "we have to go live on the 15th because the old contract expires" is a pressure that should have been anticipated in the project plan; a failed go-live (launching a system that users aren't trained on, or that has unvalidated data) costs more than a 2-week delay; go-live criteria are defined before implementation begins and are non-negotiable
- Data retention is planned before any system is retired — for Allevio, medical records must be retained for the period specified by state law (varies: Arizona is 6 years from last visit for adults, longer for minors); PHI must be retained even if the software is cancelled; the data export must happen before the contract is terminated; if the vendor goes out of business, this window closes; extraction is scheduled as part of the retirement plan, not as an afterthought
- BAA is a pre-contract blocker for PHI tools at Allevio — if a vendor cannot provide a BAA, the contract is not signed; this applies even if the application is the best technical fit; there is no workaround for a missing BAA if PHI will be processed; Dr. Lewis confirms BAA availability before any vendor evaluation enters the final round
- HITL required: Dr. Lewis leads all application lifecycle decisions; evaluation and vendor selection require Dr. Lewis + CEO for >$10K/year; implementation decisions (go-live, rollback) require Dr. Lewis; retirement data extraction and destruction require Dr. Lewis; BAA for Allevio PHI tools by Dr. Lewis; Matt Mathison for decisions >$25K/year

## System Dependencies
- **Reads from:** ops-software-evaluation (evaluation phase), vendor contracts (SharePoint), BAA tracker (Allevio), usage data (it-saas-governance), application support logs
- **Writes to:** Application lifecycle record (SharePoint/Ops/<Company>/IT/Applications/); implementation project plan; retirement checklist; data destruction certificate; BAA tracker
- **HITL Required:** Dr. Lewis leads lifecycle; CEO for >$10K/year; Matt Mathison for >$25K/year; go-live/rollback decisions by Dr. Lewis; data destruction by Dr. Lewis; BAA by Dr. Lewis (Allevio)

## Test Cases
1. **Golden path:** Allevio replacing legacy billing module with integrated AdvancedMD billing → Evaluate: requirements defined (ICD-10 coding, real-time eligibility, ERA posting, denial management); AdvancedMD billing add-on evaluated vs. standalone clearinghouse; AdvancedMD wins on integration (single vendor, BAA already in place ✅); Cost: $X/month (within CEO approval threshold — Dr. Lewis + CEO); Implement: 8-week plan; Data migration: 2 years of billing history extracted from legacy system; Training: 3 days (Dr. Lewis + AdvancedMD trainer); Parallel run: 3 weeks; Go-live criteria met at week 11 ✅; Retire legacy: data exported; final invoice paid; contract terminated with 30-day notice; data destruction certificate obtained; timeline: 3 months total
2. **Edge case:** A critical SaaS vendor announces end-of-life in 90 days → This is a compressed timeline; begin retirement planning immediately: export all data this week; identify replacement vendor (accelerated evaluation — 2-3 vendors, not 5); check data portability format (is the export usable by the replacement?); determine if 90 days is enough time for a full replacement implementation; if not, negotiate with vendor for extended support or data escrow; at Allevio, if this is the EHR: Matt Mathison must be briefed immediately — this is a business continuity issue
3. **Adversarial:** "Can we just switch to the new system this Friday without a parallel run? The old system is terrible" → The impulse is understandable — but: a 2-week parallel run that reveals a data migration error costs 2 weeks; a go-live without a parallel run that reveals the same error costs 2-6 months of reconciliation (and at Allevio, may affect billing and patient records); the parallel run is the insurance policy; the old system being terrible does not change what happens when the new system goes live with unvalidated data

## Audit Log
Application evaluations retained with decision rationale. Implementation milestone records retained. Go-live criteria and actual go-live decisions retained. Data extraction records retained (permanently for HIPAA-subject applications at Allevio). Data destruction certificates retained. Contract termination notices retained.

## Deprecation
Retire when portfolio companies have dedicated application portfolio managers who own lifecycle decisions and implementation projects — with Dr. Lewis reviewing major decisions (>$25K/year) and compliance-related application decisions. BAA requirements for Allevio PHI tools require Dr. Lewis or Privacy Officer review permanently.
