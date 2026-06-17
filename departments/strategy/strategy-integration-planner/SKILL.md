---
name: strategy-integration-planner
description: "Build a post-acquisition integration plan — 100-day and full integration roadmap. Use when the user says 'integration plan', 'post-acquisition integration', 'integration roadmap', 'post-merger integration', 'PMI', '100-day integration plan', 'how to integrate', 'integration playbook', 'integration workstreams', 'integrate the acquisition', 'onboard the acquisition', 'Day 1 plan', 'integration timeline', 'acquisition integration', or 'post-close plan'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--acquirer <company name>] [--target <company name>] [--close-date <date>] [--type <tuck-in|platform|strategic-asset>]"
---

# Integration Planner

Build the post-acquisition integration plan for MBL Partners portfolio company acquisitions — structuring the 100-day roadmap that stabilizes operations, captures near-term synergies, and positions the combined entity for the full VCP. Integration is where acquisitions are won or lost: the valuation and deal structure determine what you paid; integration determines what you get. Most PE deal failures are not deal failures — they are integration failures: key employees leave, customers churn, synergies are never captured, and management is distracted from the core business. At MBL scale, most acquisitions are tuck-ins (target is smaller than the platform), which simplifies integration: the target adopts the platform's systems, processes, and culture — the platform doesn't adapt to the target.

## When to Use
- LOI stage — developing the preliminary integration plan (informs due diligence priorities)
- Post-signing, pre-close — detailed 100-day plan with owners and dates
- Day 1 — executing the integration plan; employee and customer communication
- 30/60/90-day check-ins — tracking integration progress vs. plan
- Post-integration review — what was captured vs. plan; lessons for next acquisition

## Integration Planning Framework

```
Integration types (MBL portfolio context):

  TUCK-IN (most common at MBL scale):
    Description: Target is smaller; target adopts acquirer's systems, culture, and processes
    Integration approach: Move fast; don't let the target maintain parallel operations
    Timeline: 90% of integration complete by Day 180
    Risk: Key person departure if target leadership is not retained; customer retention
    
    Allevio tuck-in example: Acquire 3-provider Tucson practice → move to AdvancedMD,
    Marshall Medical Billing, Allevio brand, Allevio employment agreements, Allevio culture
    
  PLATFORM BUILD (less common; larger):
    Description: Target is a new platform (not a tuck-in); acquirer and target operate in parallel
    Integration approach: Selective integration; preserve target's operational identity
    Timeline: 12-24 months
    Risk: Integration overreach destroying target's value; culture clash
    
Integration domains (must plan all seven):

  1. PEOPLE — First 24 hours; most critical
    Key person identification: Who must stay for the business to function?
      Allevio: Lead physician(s); practice manager; key admin
      Offer retention packages to key people before Day 1 if not in deal structure
    Management transition: Target CEO → what is their role post-close?
      Tuck-in: Target CEO may become regional/operational lead or exits (per deal structure)
    Communication: Employees hear about acquisition from leadership, not rumors
      Day 1 announcement: All hands meeting with acquirer leadership present
      Message: Why this acquisition; what stays the same; what changes; who to ask questions
    
  2. CUSTOMER/PATIENT COMMUNICATION — Day 1-30
    Message: Services continue uninterrupted; quality improves; ownership change has no impact on care
    Healthcare (Allevio): Patients receive letter from their physician (not from Allevio corporate)
      Physician's voice is more trusted than new ownership brand
    Contact: Patient letter within 7 days of close; practice manager available for questions
    HIPAA: Patient communication does not require PHI disclosure; standard change-of-ownership communication is permissible
    
  3. SYSTEMS AND TECHNOLOGY — Day 1-90
    Tuck-in: Target migrates to acquirer's systems
      Allevio: AdvancedMD migration (timeline: 60-90 days; data migration + training)
      Billing: Migration to Marshall Medical Billing (timeline: 30-60 days)
      HR/Payroll: Migration to acquirer's payroll system (timeline: Day 30)
    Dual-system period: Plan explicitly for parallel running during migration
    IT security: Ensure target's systems are properly secured from Day 1 (access control, passwords reset)
    
  4. LEGAL AND COMPLIANCE — Pre-close through Day 30
    Healthcare:
      CMS provider enrollment: Target providers must enroll under new entity (60-90 day process; plan proactively)
      OIG LEIE: Screen all staff of target entity (required at close; condition of deal)
      HIPAA BAA: Update/establish BAAs with all vendors and partners of target
      Payer credentialing: New entity credentialing with all payers target contracts with (90-180 days)
      AZ Medical Board: All clinical staff licenses confirmed current at close
    All acquisitions:
      Contract assignment: Which target contracts require counterparty consent to assign?
      Employee agreements: New employment agreements with key personnel under acquirer's template
      Permits and licenses: Transfer or new applications for all operational permits
      
  5. FINANCIAL — Day 1-30
    Banking: Target bank accounts consolidated or transitioned to acquirer's banking
    Payroll: Target employees on acquirer's payroll by Day 30
    AP/AR: Target payables and receivables absorbed into acquirer's accounting (QuickBooks)
    Budget integration: Target's remaining-year budget integrated into acquirer's financial model
    
  6. OPERATIONS — Day 30-90
    Process alignment: Target adopts acquirer's key operational processes (scheduling, billing, clinical protocols for healthcare)
    Quality standards: Target meets acquirer's quality standards by Day 90
    Brand transition: Target's physical branding updated (signage, materials) by Day 90 for tuck-ins
    
  7. CULTURE — Ongoing; not linear
    Culture integration is the hardest and longest workstream
    Tuck-in approach: Target team joins the culture — acquirer doesn't fragment its culture to accommodate target
    Dr. Lewis observes cultural signals in the first 30 days: How do target employees talk about the deal? Are they engaged or resistant?
    Key indicator: Target employees asking "what can I do here?" vs. "what are you going to change?" — former is integration-ready; latter requires more active culture work
```

## Output Format

```markdown
# Integration Plan — [Acquirer] + [Target]
**Close date:** [Date] | **Integration type:** [Tuck-in / Platform / Strategic asset]
**Integration lead:** Dr. Lewis | **CEO owner:** [Name]

---

## Day 1 Readiness Checklist

Must be complete before close:

☐ Key person retention packages communicated (signed)
☐ Employee announcement prepared (all hands script ready)
☐ Patient/customer letter drafted (physician-voice letter for healthcare)
☐ IT access transition plan confirmed (new credentials; target system access transferred)
☐ OIG LEIE screen complete for all target staff
☐ CMS provider enrollment applications submitted (healthcare)
☐ Payer credentialing applications submitted (healthcare — 90-180 day process starts now)
☐ Payroll system transition initiated (Day 1 under acquirer's payroll)
☐ Banking transition plan ready
☐ Emergency contact list: Dr. Lewis, CEO of both entities, HR, legal counsel

---

## 100-Day Integration Plan

### Days 1-30: Stabilize

| Workstream | Action | Owner | Due date | Status |
|-----------|--------|-------|---------|--------|
| People | All-hands announcement meeting (both entities together) | CEO | Day 1 | |
| People | 1:1 meetings with all key personnel (retention pulse) | CEO + Dr. Lewis | Day 7 | |
| Customer | Patient/customer letter sent | CEO + Practice Manager | Day 7 | |
| Financial | Target payroll transitioned to acquirer | HR | Day 14 | |
| Financial | Target bank accounts → acquirer banking | CFO/Controller | Day 30 | |
| Legal | Contract assignment audit complete | Attorney | Day 30 | |
| Legal | All HIPAA BAAs updated for target's operations | Attorney + COO | Day 21 | |
| Systems | IT security: All target credentials reset; access controlled | IT/Dr. Lewis | Day 1 | |
| Systems | AdvancedMD migration initiated (Allevio) | COO + AdvancedMD | Day 7 | |
| Systems | Marshall Medical Billing transition initiated | COO + Marshall | Day 7 | |

### Days 31-90: Integrate

| Workstream | Action | Owner | Due date | Status |
|-----------|--------|-------|---------|--------|
| Systems | AdvancedMD data migration complete | IT | Day 90 | |
| Systems | Target on Marshall Medical Billing | Marshall | Day 60 | |
| Operations | Target adopts acquirer's scheduling/clinical protocols | COO | Day 60 | |
| Financial | Target's AP/AR fully in QuickBooks | Controller | Day 45 | |
| Brand | Signage and materials updated (tuck-in) | Marketing | Day 90 | |
| Legal | Payer credentialing status update (track progress) | COO + Attorney | Day 90 | |
| People | Retention check-in with all key personnel | CEO | Day 60 | |
| Synergies | Cost synergy capture: overhead, billing, software | Dr. Lewis | Day 90 | |

### Days 91-180: Optimize

| Workstream | Action | Owner | Due date | Status |
|-----------|--------|-------|---------|--------|
| Operations | Combined entity at full operational efficiency | CEO | Day 180 | |
| Synergies | Medium-confidence synergies: vendor renegotiation | CEO | Day 180 | |
| Legal | Payer credentialing complete (or active + workaround in place) | COO | Day 180 | |
| Culture | Culture integration assessment; pulse survey | Dr. Lewis | Day 90, 180 | |

---

## Synergy Capture Tracker

| Synergy | Target ($K/year) | Captured to date | Status | Next action |
|---------|----------------|----------------|--------|------------|
| Target management overhead | $[X]K | $[X]K | 🟢 | — |
| Billing migration (Marshall) | $[X]K | $[X]K | 🟡 | Migration Day 60 |
| Vendor renegotiation | $[X]K | $[X]K | 🔴 | Begin negotiations Month 4 |
| **Total** | **$[X]K** | **$[X]K** | | |

---

## Risk Register (Integration-Specific)

| Risk | Probability | Impact | Mitigation |
|------|------------|--------|-----------|
| Key physician departs post-close | Medium | Revenue -$[X]K/year | Retention package signed; 1:1 check-ins monthly |
| Payer credentialing delay (90-180 days) | High | Revenue at risk during gap | Maintain legacy billing arrangement until credentialing complete |
| Patient attrition (brand/ownership change) | Low-Medium | Revenue -[X]% Year 1 | Physician-voice letter; continuity of care message |
| AdvancedMD migration error (data integrity) | Medium | Operational disruption | Parallel run period; data validation before cutover |

---

## Matt Mathison 30/60/90-Day Brief

[Company] + [Target] integration status [Date]:
- **Day 30 summary:** [All-hands complete ✅; patient letters sent ✅; payroll transitioned ✅; AdvancedMD migration underway ⚠️ — delay from [reason]; OIG LEIE all clear ✅]
- **Synergies captured to date:** $[X]K vs. plan $[X]K
- **Key risk:** [Payer credentialing delay — currently Day 45; workaround in place]
- **Employee pulse:** [Positive — 2 key employees asked about growth opportunities]
- **Patient retention:** [No unusual attrition; 3 calls about ownership change — all addressed by physician]
- **Action from Matt Mathison:** [None / Discuss payer credentialing workaround / Approve [specific decision]]
```

## Output Contract
- People and patient communication are Day 1 priorities — in every acquisition, the integration fails most often in the first 30 days through poor employee communication (employees hear about the deal from a news article, not from leadership) or poor customer communication (patients call to ask if their doctor is still there, and the front desk doesn't know what to say); Dr. Lewis ensures both communications are drafted, rehearsed, and ready before close — not two days after; an employee who hears about the acquisition from leadership on Day 1 with a clear message stays; an employee who hears about it through rumor starts looking for a new job on Day 1
- Healthcare integration has mandatory compliance steps that must start before close — CMS provider enrollment under the new entity takes 60-90 days; payer credentialing takes 90-180 days; these cannot start on Day 1 because the process takes that long — they must start pre-close with appropriate representations; if credentialing is not in place at Day 1, the practice cannot bill some payers under the new entity; Dr. Lewis plans for a gap period (maintain legacy billing arrangement under the prior entity while new entity credentialing processes) and communicates the revenue risk to Matt Mathison explicitly
- Tuck-in integration means the target adapts to the platform — Dr. Lewis does not design integrations that ask the platform to change its systems, culture, or processes to accommodate the target; the target is smaller; it benefits from joining the platform's established infrastructure (AdvancedMD, Marshall Medical Billing, Allevio clinical protocols); if the target resists adopting platform systems, that is an integration risk that surfaces quickly and is addressed directly (if the target's clinical team insists on keeping their prior EMR, the cost savings from Marshall Medical Billing migration are not captured and the operational complexity of running two systems persists); Dr. Lewis addresses resistance early and escalates to Matt Mathison if it affects synergy capture
- HITL required: Dr. Lewis leads the integration plan and tracks it; CEO owns the people and culture workstreams (Dr. Lewis supports); COO owns the systems and operations workstreams; attorney owns the legal and compliance workstreams; Matt Mathison receives monthly integration status updates; any integration decision that affects synergy capture by >$50K or that involves a key person retention issue requires Matt Mathison review; Day 1 communications are reviewed by Matt Mathison before delivery

## System Dependencies
- **Reads from:** LOI terms (strategy-loi-builder), diligence findings (strategy-due-diligence-coordinator), synergy analysis (strategy-synergy-analyzer), employment agreements (target + acquirer), payer contracts (Allevio), VCP (strategy-value-creation-plan), OIG LEIE screening
- **Writes to:** Integration plan (SharePoint/Strategy/M&A/[Deal Name]/Integration/); synergy tracker (updated monthly); Matt Mathison integration brief (monthly); risk register (integration-specific risks); board report (integration section)
- **HITL Required:** Dr. Lewis leads; CEO owns people workstream; COO owns operations and systems; attorney owns legal and compliance; Matt Mathison receives monthly status and approves decisions >$50K or involving key person risk; all Day 1 communications reviewed by Matt Mathison before delivery

## Test Cases
1. **Golden path:** Allevio acquires a 3-provider Tucson practice; close date June 30 → Pre-close (by June 25): retention packages for lead physician and practice manager signed; all-hands script finalized; patient letter drafted (physician-signed); OIG LEIE screened — all clear; CMS enrollment applications submitted; payer credentialing applications submitted; AdvancedMD migration project initiated with vendor; Marshall Medical Billing transition initiated; Day 1 (June 30): all-hands meeting — CEO + lead physician present; message: "practice joining Allevio family; care unchanged; same physicians; better access to resources"; patient letter in mail; IT access transferred; payroll cutover July 1; Day 7-30: 1:1 check-ins all key staff; no attrition signals; 3 patient calls about ownership — addressed by physician; AdvancedMD migration on track; Day 60: billing migration to Marshall complete; Day 90: AdvancedMD migration complete; signage updated; $218K synergies on track; payer credentialing still in progress (Day 90 — expected Day 150); legacy billing maintained during gap; Matt Mathison monthly brief: on track; no key person risk; payer credentialing risk noted with workaround in place
2. **Edge case:** Lead physician of acquired practice announces intent to leave 30 days post-close → This is the most critical integration risk materializing; Dr. Lewis escalates to Matt Mathison immediately (same day the departure signal appears); Dr. Lewis and CEO have a direct conversation with the physician: what's driving the decision? (Compensation, culture fit, practice philosophy); if compensation: can the retention package be adjusted? If culture: what specific elements of the integration are not working?; if the physician is committed to leaving, the timeline matters: 90-day notice vs. immediate departure; if departure is certain, begin recruiting immediately (same process as provider vacancy in strategy-value-creation-plan); notify Matt Mathison: patient attrition risk increases from 5% to potentially 20-30% if the lead physician leaves (patients follow their doctor); acquisition economics must be reassessed at revised assumptions; Matt Mathison may need to assess whether this triggers a purchase price adjustment claim if the physician departure was a diligence representation issue
3. **Adversarial:** Integration is 60 days post-close and the CEO says "the integration is going great — we're totally integrated" but the AdvancedMD migration is still incomplete and synergy capture is at 35% of plan → "Going great" is a CEO narrative; the data tells a different story; Dr. Lewis presents: AdvancedMD migration is 50% complete (delayed from Day 90 target — now Day 120 estimate); billing on Marshall is operational but claims denial rate is elevated at 12% (target <5%) — likely due to new system and credentialing issues; synergy capture $75K vs. $218K plan at Day 60; specific actions: AdvancedMD migration — new milestone plan with vendor; claims denial — Marshall Medical Billing team is engaged to resolve by Day 90; synergy reforecast: $150K by Day 180 (vs. $218K by Day 90 plan); Matt Mathison receives the accurate picture, not the CEO's reassurance; integration is behind plan and requires active management

## Audit Log
Integration plan retained permanently with close date and ownership. Day 1-90 action completion records retained. Synergy capture tracking retained quarterly for 3 years post-close. Key person retention outcomes retained. Patient retention outcomes retained (where measurable). Compliance step completion records (OIG LEIE, CMS enrollment, payer credentialing) retained permanently.

## Deprecation
Retire when MBL has completed 3+ acquisitions and has built a repeatable integration playbook — at which point the playbook replaces this skill and Dr. Lewis reviews for portfolio-specific adaptations rather than building from scratch.
