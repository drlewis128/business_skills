---
name: ops-allevio-provider-relations
description: "Manage Allevio provider network relationships, contracts, and credentialing. Use when the user says 'provider relations', 'provider relationship', 'provider network', 'provider contract', 'provider credentialing', 'credentialing', 'provider onboarding', 'provider management', 'provider recruitment', 'provider retention', 'provider satisfaction', 'provider performance', 'provider communication', 'provider panel', 'in-network provider', 'out-of-network', 'network adequacy', 'network development', 'specialist referral', 'referral network', 'provider directory', 'provider directory update', 'provider agreement', 'fee schedule', 'provider fee', 'provider rate', 'provider contract renewal', 'provider termination', 'physician relations', 'PCP relations', 'specialist relations', 'Allevio provider', 'add a provider', 'remove a provider', 'provider dispute', 'clean claim provider', or 'provider billing'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--provider <name>] [--type <pcp|specialist|np|pa|hospital|lab>] [--action <credential|contract|renew|terminate|evaluate|recruit>] [--entity allevio] [--focus <network|billing|performance|relations>]"
---

# Ops Allevio Provider Relations

Manage Allevio provider network — credentialing new providers, maintaining provider contracts and fee schedules, tracking provider performance, and ensuring the network is adequate to support enrolled members. Provider relations is the operational backbone of Allevio's ability to serve members: the quality and coverage of the provider network determines whether members can access care (access KPI), whether claims are processed correctly (claim ratio), and whether the clinical model can scale as new employer groups are added. Dr. Lewis tracks network health at the portfolio level — provider credentialing bottlenecks, fee schedule disputes, and network adequacy gaps are operational risks that connect directly to EBITDA and GRR.

## When to Use
- A new provider is being credentialed and onboarded
- A provider contract is due for renewal
- A provider has a billing or payment dispute with Allevio
- Network adequacy assessment (before adding new employer groups)
- A provider is being terminated from the network

## Provider Relations Framework

```
PROVIDER TYPES IN ALLEVIO NETWORK:

  Internal (employed by Allevio):
    PCPs (Primary Care Physicians): core of the Allevio model
    NPs/PAs (Nurse Practitioners / Physician Assistants): clinical support; extends PCP capacity
    
  External (contracted, not employed):
    Specialists: cardiology; orthopedics; mental health; other
    Hospitals: emergency; inpatient (for members who need acute care)
    Labs/imaging: diagnostic services
    Pharmacy benefit: if Allevio manages pharmacy benefit

PROVIDER CREDENTIALING (new providers):

  TIMELINE: 60-120 days from hire/contract to first patient (credentialing is the constraint)
  
  STEP 1 — APPLICATION (Week 1-2):
    Provider submits credentialing application
    Required: medical degree; residency; board certification; state license; DEA (if applicable)
    Malpractice history: any claims reviewed; >$50K claim → Allevio CEO review
    
  STEP 2 — PRIMARY SOURCE VERIFICATION (Week 2-6):
    Verify: medical school; residency program; board certifications; state license status
    Source: NPDB (National Practitioner Data Bank) check mandatory
    NPDB flag: any adverse action → Allevio CEO review + legal
    
  STEP 3 — COMMITTEE REVIEW (Week 6-10):
    Credentialing committee reviews complete file
    Committee includes: Medical Director + Allevio CEO + external credentialing support
    Outcome: Approved / Approved with conditions / Denied
    
  STEP 4 — PAYER ENROLLMENT (Week 8-12):
    Enroll provider with any insurance panels (if Allevio is a payer)
    Add provider to AdvancedMD billing profile
    Provider NPI linked to billing system
    
  STEP 5 — EFFECTIVE DATE (Day 60-120):
    Provider credentialed → can see patients and generate billable encounters
    Provider directory updated (member-facing)
    
  CREDENTIALING STATUS TRACKING:
    Dr. Lewis tracks all providers in credentialing in the ops pipeline
    Any provider >90 days without approval → escalate to Allevio CEO + investigate bottleneck

PROVIDER CONTRACT MANAGEMENT:

  FEE SCHEDULE:
    Fee schedule = what Allevio pays contracted providers per service
    Allevio's claim ratio is directly affected by provider fee levels
    Fee schedule review: annually; any rate increase >3% requires Dr. Lewis approval
    
  CONTRACT TERMS (key provisions Dr. Lewis reviews):
    Term length: 1-3 years (longer = more stability but less negotiation flexibility)
    Rate adjustment: annual; indexed to CPI or negotiated flat
    Clean claim submission: provider must submit within 90 days of service
    Appeal rights: provider can appeal denied claims within 60 days
    Termination: 90-day notice (either party); immediate termination for cause (fraud; safety)
    
  CONTRACT RENEWAL:
    60 days before: Dr. Lewis reviews performance + market rate benchmarks
    If rate increase requested: evaluate against claim ratio impact
    New rate impact on claim ratio: modeled before agreement signed
    >5% rate increase: Dr. Lewis + Allevio CEO + Matt Mathison awareness

PROVIDER PERFORMANCE MONITORING:

  FOR INTERNAL PROVIDERS (employed PCPs/NPs/PAs):
    Visits per day; panel size; no-show rate; patient satisfaction → from clinical ops
    Billing accuracy: clean claim rate for their encounters
    
  FOR EXTERNAL/CONTRACTED PROVIDERS:
    Clean claim submission rate (target: ≥95% clean first submission)
    Average claim processing time
    Dispute rate: % of claims disputed (target: <5%)
    
  PROVIDER BILLING DISPUTES:
    Within 30 days: Allevio operations resolves with provider billing contact
    30-60 days unresolved: Dr. Lewis reviews
    >60 days unresolved or >$5,000: Allevio CEO escalation
    >$10,000: Matt Mathison notification
    Suspected fraud: immediate — Allevio CEO + legal + Dr. Lewis

NETWORK ADEQUACY:

  ADEQUACY STANDARD: members can access a PCP within 30 miles (or 30-minute drive)
  Before adding a new employer group in a new geography:
    Is there PCP coverage in the employer's primary location?
    Is there specialist coverage for common referral needs?
    If not: recruit a provider or partner with an existing practice before signing the employer group
  
  PROVIDER DIRECTORY:
    Updated monthly (at minimum)
    Accuracy: member cannot be told a provider is in-network if they are not
    Directory error = member denied service or surprise bill = complaint + potential regulatory issue
```

## Output Format

```markdown
# Provider Relations Status — [Month Year]
**Prepared by:** Allevio Operations | **Reviewed by:** Dr. Lewis

---

## Credentialing Pipeline

| Provider | Type | Application date | Est. approval | Status | Blocker |
|----------|------|-----------------|---------------|--------|---------|
| [Dr. Smith] | PCP | [Date] | [Date] | Week 6 — PSV | None |
| [Dr. Jones] | NP | [Date] | [Date] | ⚠️ Day 95 — delayed | NPDB issue in review |

---

## Contract Renewals Due (next 90 days)

| Provider / Practice | Type | Expiration | Rate change requested | Recommendation |
|--------------------|------|-----------|----------------------|---------------|
| [Practice A] | Specialist | [Date] | +4% | Approve (within CPI) |
| [Practice B] | Hospital | [Date] | +8% | Negotiate — model claim impact first |

---

## Active Disputes

| Provider | Amount | Age | Status |
|----------|--------|-----|--------|
| [Provider] | $[X] | [N] days | Allevio ops resolving |

---

## Network Adequacy

- **PCP coverage:** [N] PCPs covering [geography] | Utilization: [%]
- **Specialist coverage:** [N] categories; gap areas: [any]
```

## Output Contract
- Credentialing timeline is tracked and bottlenecks are escalated — the 60-120 day credentialing timeline is a known constraint; the risk is that a provider who is hired but not yet credentialed is drawing a salary without generating revenue; Dr. Lewis tracks every provider in the credentialing pipeline and flags any provider who hits Day 90 without an approved credential; the escalation is to the Allevio CEO with a specific question: "Is this a bottleneck in the credentialing process or a quality issue in the provider file?"; the answer determines the action
- Fee schedule changes connect to claim ratio before they're signed — any provider contract with a rate increase >3% gets a claim ratio impact model before the Allevio CEO signs; the model answers: "If this rate increase applies to all encounters with this provider type, what is the expected impact on the claim ratio?"; for a 5% rate increase on a provider category that represents 20% of encounters, that's a meaningful claim ratio impact; this analysis ensures that rate increases are a conscious trade-off (keep the provider vs. protect the margin), not a surprise
- No PHI in any report — provider performance data is reported without individual patient information; billing accuracy, no-show rates, and visit counts are reported at the provider level (not the patient level); this is both a HIPAA requirement and a design principle for Dr. Lewis's reporting layer
- HITL required: NPDB flag on any provider → Allevio CEO review + legal; provider fee increase >5% → Allevio CEO + Dr. Lewis + Matt Mathison awareness; provider termination (internal employee) → Allevio CEO + standard HR process + legal review if cause-based; provider termination (contracted) → Allevio CEO + 90-day notice per contract; suspected provider fraud → immediate escalation (Allevio CEO + legal + Matt Mathison same day); provider billing dispute >$10,000 → Matt Mathison awareness

## System Dependencies
- **Reads from:** AdvancedMD (billing data; provider NPI records; credentialing status — aggregate); NPDB (external — credentialing verification); provider contracts (SharePoint → Allevio → Contracts → Providers); fin-allevio-claim-ratio (fee schedule impact analysis); ops-allevio-clinical-ops (internal provider productivity — aggregate)
- **Writes to:** Provider relations reports (SharePoint → Allevio → Operations → ProviderRelations); credentialing pipeline tracker (Monday.com Allevio board); AdvancedMD (provider billing profiles; credentialing records); provider directory (member-facing); Allevio CEO briefings (credentialing bottlenecks; contract renewals; disputes); Matt Mathison notifications (>$10K disputes; >5% rate increases; fraud)
- **HITL Required:** NPDB flags → Allevio CEO + legal; rate increases >5% → Allevio CEO + Dr. Lewis + Matt awareness; internal provider termination → Allevio CEO + legal; contracted provider termination → Allevio CEO + 90-day notice; fraud → immediate (Allevio CEO + legal + Matt); disputes >$10K → Matt awareness; credentialing Day 90 without approval → escalation

## Test Cases
1. **Golden path:** Monthly provider relations review. Credentialing pipeline: 2 providers in process. Provider A (PCP) — Day 42 — primary source verification in progress; on track for Day 75 approval. Provider B (NP) — Day 68 — committee review this week; on track. Contract renewals: Cardiology Associates contract expires in 65 days; they requested +3.5% rate increase. Dr. Lewis models claim ratio impact: this specialty represents 8% of total claims; a 3.5% rate increase adds 0.28 claim ratio points (estimate). Allevio CEO review: acceptable given the specialist is the only cardiologist in the area (network adequacy risk if terminated). Recommendation: approve. Dr. Lewis to Allevio CEO: "I recommend approving the Cardiology Associates rate increase at 3.5%. The claim ratio impact is ~0.3 points — manageable. They're the sole cardiologist in coverage area; the network adequacy risk of losing them outweighs the margin cost. I've modeled the full financial impact in the provider contract file."
2. **Edge case:** An NPDB check on a new provider hire reveals a single malpractice claim from 7 years ago for $35,000 (settled without admission of liability) → Dr. Lewis: "The NPDB check for [Provider] shows one malpractice claim — settled 7 years ago for $35,000; no admission of liability. This doesn't automatically disqualify the provider, but it requires a credentialing committee review (below the $50K threshold that requires Allevio CEO + legal; but above the threshold where we credentialing-auto-approve). The committee needs: (1) the claim details from the provider's own account (what happened; what they learned); (2) references from supervisors at their most recent position; (3) any subsequent adverse events in NPDB (there are none in this case). I'm requesting the committee review this week. Estimated delay to credentialing: 1 week. I'll report the outcome."
3. **Adversarial:** A contracted specialist demands a 15% rate increase with a 30-day take-it-or-leave-it ultimatum, citing market rates → Dr. Lewis: "This requires analysis before any response. A 15% rate increase on this specialty category would add approximately [X] points to the claim ratio — that's a material impact. Before the Allevio CEO responds: (1) I'm pulling market rate data for this specialty in this geography to evaluate whether the 15% claim is accurate; (2) I'm assessing what network alternatives exist within 30 miles (can we credential an alternative? Is there a hospital-based option?); (3) I'm modeling 3 scenarios: approve; counteroffer at 7%; terminate and find an alternative. The 30-day ultimatum is a negotiation tactic — we don't have to treat it as a hard deadline if we're actively credentialing an alternative. I'll have this analysis for the Allevio CEO within 48 hours. Matt: I'm flagging this — if we terminate and lose network adequacy in this specialty, it affects our ability to serve members and new employer groups."

## Audit Log
Credentialing records retained (7 years minimum — healthcare compliance standard). NPDB check results retained. Provider contract history retained (signed contracts; renewal history; rate changes). Provider dispute records retained. Fraud investigation records retained (indefinitely). Network adequacy assessments retained. Provider directory version history retained.

## Deprecation
Review provider contract templates and credentialing timelines annually as healthcare regulations and market standards evolve. The NPDB check and committee review requirements are regulatory standards — they do not change. The fee schedule analysis model is maintained ongoing.
