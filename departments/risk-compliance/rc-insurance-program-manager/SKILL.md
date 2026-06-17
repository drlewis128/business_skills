---
name: rc-insurance-program-manager
description: "Manage the insurance portfolio — GL, E&O, D&O, Cyber, EPLI, Workers Comp. Use when the user says 'insurance', 'insurance program', 'general liability', 'GL coverage', 'E&O insurance', 'errors and omissions', 'D&O insurance', 'directors and officers', 'cyber insurance', 'EPLI', 'employment practices liability', 'workers comp', 'insurance review', 'coverage gap', 'insurance renewal', 'file an insurance claim', 'policy limits', or 'coverage analysis'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--line <GL|E&O|D&O|cyber|EPLI|workers-comp|all>] [--action <review|claim|renew|gap-analysis>]"
---

# Insurance Program Manager

Manage the insurance portfolio at MBL portfolio companies — ensuring that each entity has appropriate coverage for its risk profile, coverage gaps are identified before a claim arises, renewals are managed proactively, and claims are filed promptly and correctly. Insurance is the risk transfer mechanism that converts large, unpredictable losses into manageable premiums; at MBL portfolio scale, the insurance program must match the risk profile of each entity (healthcare-specific risks at Allevio, oil & gas risks at HIVE, media/ad tech risks at Column6). Insurance is the last line of defense after all other risk controls — it is not the first.

## When to Use
- Annual insurance renewal — are current coverages adequate for current risk?
- A potential claim arises — what coverage may apply and how to notify the carrier
- A new business activity or acquisition changes the risk profile — coverage needs review
- A coverage gap is identified — how to address it
- Matt Mathison asks for an insurance portfolio summary
- A contract requires specific insurance coverages — verify compliance

## Insurance Framework

```
MBL portfolio insurance lines:

GENERAL LIABILITY (GL):
  Purpose: Third-party bodily injury and property damage claims
  Typical limits: $1M per occurrence / $2M aggregate; umbrella/excess recommended for portfolio companies
  Allevio-specific: Premises liability for clinic locations; patient slip-and-fall; visitor injuries
  HIVE-specific: Field operations; contractor accidents on HIVE premises
  Required in vendor contracts: Typically require vendors to carry $1M GL and name company as Additional Insured
  
PROFESSIONAL LIABILITY / E&O (Errors and Omissions):
  Purpose: Claims arising from professional services or advice
  Healthcare: Medical malpractice / Professional liability is the primary clinical risk at Allevio — required by AZ licensing; per-provider policy or group policy; tails (if claims-made policy)
  Technology/Consulting (MBL/Dr. Lewis roles): Tech E&O covers claims arising from IT services, system implementations, consulting advice
  Column6: Media liability / Advertising E&O for content and data use claims
  
DIRECTORS AND OFFICERS (D&O):
  Purpose: Covers directors and officers for claims alleging wrongful acts in management decisions
  PE-specific: LP claims, investor disputes, breach of fiduciary duty allegations
  Coverage issues: Claims-made policy; defense costs included in limits (erodes coverage); Side A (individual), B (entity repayment), C (entity direct)
  MBL Holdings: D&O policy for Matt Mathison and portfolio management team
  
CYBER LIABILITY:
  Purpose: Data breach costs (notification, credit monitoring, forensics), business interruption, ransomware extortion, regulatory fines
  Allevio requirement: PHI exposure makes cyber coverage essential; minimum $1M; confirm HIPAA-compliant incident response assistance included
  Coverage triggers: Unauthorized access; data theft; ransomware; phishing
  Pre-breach services: Many cyber policies include free IR retainer, security scanning — use them proactively
  Premium factors: Cyber Secure Score; MFA status; EDR deployment; backup policy; all reported on application
  
EMPLOYMENT PRACTICES LIABILITY (EPLI):
  Purpose: Claims of discrimination, harassment, wrongful termination, retaliation
  Required: For any company with employees; Allevio and HIVE have the most employee risk
  Coverage: Defense costs + judgments/settlements; typically $1M per claim / $2M aggregate
  Interaction with investigations: Notify carrier when a charge is filed; some carriers require notification at complaint (not just charge); read the policy
  
WORKERS COMPENSATION:
  Purpose: Required by law; covers employee work-related injuries and illnesses
  AZ: Required for all employers with 1+ employee; coverage through carrier or AZ State Compensation Fund
  UT: Required for employers with 1+ employee
  HIVE: Oil & gas field workers have elevated injury risk; ensure adequate coverage and mod rate management
  Allevio: Clinical staff have elevated bloodborne pathogen risk; ensure post-exposure coverage
  
UMBRELLA / EXCESS LIABILITY:
  Purpose: Additional limits over primary GL, Auto, and Employer's Liability
  Recommended: $5M umbrella for Allevio (clinical risk + premises); $2M for HIVE (field operations)
  
Insurance renewal process:
  60 days before renewal: Request quote from broker; provide updated exposure data (revenue; headcount; locations)
  45 days before renewal: Review quotes; identify coverage changes; confirm limits remain adequate
  30 days before renewal: Bind coverage; certificates of insurance updated; notify vendors if required
  Annual risk review: Compare risk profile changes to coverage — new revenue streams, new locations, new employees, new activities all affect coverage needs
```

## Output Format

```markdown
# Insurance Portfolio — <Company Name>
**Date:** [Date] | **Broker:** [Name] | **Next renewal:** [Date]
**Managed by:** Dr. John Lewis | **Matt Mathison aware:** ✅ Annual

---

## Coverage Summary

| Line | Carrier | Policy # | Limits | Premium | Effective dates | Renewal | Status |
|------|---------|---------|--------|---------|---------------|---------|--------|
| GL | [Carrier] | [#] | $1M/$2M | $[X]/yr | [Date] — [Date] | [Date] | ✅ |
| Professional/Medical Malpractice (Allevio) | [Carrier] | [#] | $1M/$3M | $[X]/yr | | | |
| D&O | [Carrier] | [#] | $1M | | | | |
| Cyber | [Carrier] | [#] | $1M | | | | |
| EPLI | [Carrier] | [#] | $1M/$2M | | | | |
| Workers Comp | [Carrier] | [#] | Statutory | | | | |
| Umbrella | [Carrier] | [#] | $5M | | | | |

---

## Coverage Gap Analysis

| Risk | Coverage in place | Adequate? | Gap | Action |
|------|-----------------|---------|-----|--------|
| HIPAA data breach at Allevio | Cyber — $1M | ✅ Adequate for current scale | None | |
| Medical malpractice (Allevio) | Med Mal — $1M/$3M | ✅ | | Tail coverage needed if policy is claims-made and provider leaves |
| EPLI — wrongful termination | EPLI — $1M | ✅ | | |
| Ransomware extortion | Cyber — includes ransomware | ✅ | | Confirm sub-limit |
| Oil & gas field worker injury (HIVE) | Workers Comp + umbrella | ✅ | | Review mod rate annually |
| D&O — LP claim | D&O | ⚠️ Review | Confirm Side A coverage adequate | Attorney to review D&O terms |

---

## Claims Log

| Claim # | Date | Entity | Line | Description | Status | Resolution |
|---------|------|--------|------|------------|--------|-----------|
| [Claim #] | [Date] | Allevio | Workers Comp | [Employee injury] | Open | |
| [Claim #] | [Date] | MBL | EPLI | [EEOC charge — settled] | Closed | $[X] — below deductible |

---

## Annual Renewal Checklist

| Task | Due date | Owner | Status |
|------|---------|-------|--------|
| Update revenue/headcount data for all entities | [60 days before renewal] | Dr. Lewis + Controller | |
| Request broker quotes | [60 days] | Broker | |
| Review coverage adequacy vs. current risk profile | [45 days] | Dr. Lewis | |
| Bind coverage | [30 days] | Dr. Lewis + CEO | |
| Update certificates of insurance | [30 days] | Broker | |
| Notify vendors of updated COIs | [At renewal] | Dr. Lewis | |

---

## Matt Mathison Annual Insurance Brief

[Year] insurance portfolio: Total premium: $[X]. Coverage lines: [List]. Key changes from prior year: [What changed and why]. Coverage gaps resolved: [What]. Remaining gaps: [What — with recommendation]. Claims: [N] — [summary]. Total claims cost: $[X]. Recommendations: [What to change for next year].
```

## Output Contract
- Claims notification is time-critical — insurance policies require "prompt" or "timely" notification of claims or circumstances that may give rise to claims; late notification can void coverage; Dr. Lewis notifies the relevant carrier within 24 hours of learning of any lawsuit, demand letter, EEOC charge, OCR investigation, or workplace injury; for cyber policies, the breach must be reported to the carrier within 48-72 hours (read the specific policy — each carrier has a different notification window); the notification cost is zero; the cost of missing the notification window is the claim
- Claims-made policies require tail coverage when a provider or employee changes — medical malpractice policies are typically claims-made: they cover claims MADE during the policy period, not incidents that occurred during the policy period; if a provider leaves Allevio and the policy is not renewed with a tail, incidents that occurred while the provider was employed but where the claim is filed after the policy lapses are not covered; Dr. Lewis tracks claims-made policies and ensures tail coverage (typically 3-5 years) is purchased when providers depart or when a claims-made policy is replaced
- Insurance is the last layer, not the first — a $1M cyber policy is not a substitute for MFA, patching, and backup testing; a $1M EPLI policy is not a substitute for proper investigation and documentation; a company with poor security that has a $1M cyber policy will have their premiums skyrocket after a breach and may face coverage challenges for future incidents; Dr. Lewis maintains controls first and insurance second; the insurance program is designed to cover risks that controls cannot fully eliminate, not to provide comfort in the absence of controls
- HITL required: Dr. Lewis manages insurance program and renewals; CEO approves annual premium commitment; Matt Mathison receives annual insurance portfolio brief; claims notification: Dr. Lewis notifies carrier immediately; CEO and Matt Mathison for claims >$50K or involving regulatory actions; attorney for any lawsuit, EEOC charge, or OCR investigation (attorney coordinates with carrier)

## System Dependencies
- **Reads from:** Business risk profile (rc-risk-register), employee count and revenue (QuickBooks), location count (Allevio clinic locations; HIVE field sites), claims history, broker quotes, contract insurance requirements (vendor agreements)
- **Writes to:** Insurance portfolio tracker (SharePoint/RC/<Company>/Insurance/); claims log; renewal calendar; Matt Mathison annual insurance brief; certificates of insurance (broker provides; Dr. Lewis distributes); vendor COI requirements
- **HITL Required:** Dr. Lewis manages; CEO approves premium commitments; claims: Dr. Lewis notifies carrier within 24 hours; attorney for lawsuits and regulatory actions; Matt Mathison annual brief and for claims >$50K

## Test Cases
1. **Golden path:** Annual insurance renewal for Allevio → 60 days before renewal: Dr. Lewis pulls prior year: 22 employees (+3 from last year); 2 clinic locations (same); revenue $2.1M (+8%); broker contacted with updated exposures; medical malpractice quote: $48,000 (up $2,200 from prior year — rate increase across healthcare market); cyber quote: $12,000 (up $1,800 — Dr. Lewis implemented MFA and achieved Secure Score >65, limiting increase); EPLI: $8,000 (stable); Workers Comp: $18,000 (+$3,000 — 1 injury claim in prior year raised mod rate); total premium: $86,000; Dr. Lewis reviews coverage adequacy: BBP training completed ✅; med mal limits adequate for current revenue ✅; cyber limits: at $1M with $2.1M revenue — still adequate for current scale; recommend increase to $2M if revenue grows past $5M; CEO approves premium; coverage bound; COIs updated; Matt Mathison annual brief sent
2. **Edge case:** A nurse at Allevio is stuck with a needle while handling sharps — Workers' Comp claim and post-exposure protocol → Immediate: post-exposure BBP protocol initiated (source patient tested; nurse offered HBV treatment); Workers' Comp carrier notified within 24 hours (AZ requirement); OSHA 300 updated (work-related needlestick = recordable); Dr. Lewis reviews clinic sharps disposal protocol — was procedure followed? If protocol was followed: carrier handles claim; if protocol failure: process corrected; post-exposure records retained 30 years (OSHA BBP); nurse receives Workers' Comp benefits (medical coverage for testing and treatment); injury investigation documented; root cause: sharps container was overfull — standard fill line was ignored; corrective action: mandatory sharps container check added to clinical daily checklist
3. **Adversarial:** "Insurance is expensive — can we reduce coverage to save money?" → Premium reduction is achievable through controls (MFA reduces cyber premium; lower mod rate reduces WC premium; documented safety programs reduce GL premium); it is NOT achievable by reducing limits or eliminating coverage lines; the premium for EPLI is $8,000/year; one employment claim costs $50,000-$200,000 on average; the premium for cyber is $12,000/year; one ransomware recovery costs $100,000-$1M+ depending on scope; the premiums exist because the losses are real and predictable at portfolio scale; Dr. Lewis reduces premiums through controls, not through coverage gaps

## Audit Log
Insurance portfolio documentation retained with all policy years (7 years minimum; permanently for claims-made policies with tail). Claims log retained permanently. Renewal documentation retained. Matt Mathison annual briefs retained. Carrier notification records retained. Certificate of insurance library retained with renewal dates.

## Deprecation
Retire when portfolio companies have dedicated risk management or CFO functions managing insurance programs with professional brokers — with Dr. Lewis reviewing cyber and professional liability coverage at Allevio annually and providing Matt Mathison's annual insurance portfolio brief.
