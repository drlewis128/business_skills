---
name: ops-office-setup
description: "Plan and execute a new office setup or workspace reconfiguration. Use when the user says 'office setup', 'set up a new office', 'office move', 'new office location', 'workspace setup', 'configure a workspace', 'office buildout', 'office design', 'set up a workspace', 'new office checklist', 'office relocation', 'office configuration', 'workspace design', or 'standing up a new office'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--location <address>] [--size <headcount>] [--type <office|clinic|field|remote-hub>]"
---

# Ops Office Setup

Plan and execute office setup and workspace configurations at MBL portfolio companies — covering everything from the pre-move checklist to post-setup verification. Office setup is a one-time high-effort event with long-lasting impact; getting it wrong (poor network, wrong furniture, insufficient power, no signage) creates daily friction for the team. Getting it right creates a functional workspace on Day 1, within budget, with no scrambling.

## When to Use
- A new office location is being established
- An existing office is being expanded, reconfigured, or relocated
- A clinical space is being set up for Allevio
- A portfolio company needs a first-time office (transitioning from home-based)
- Remote workspace standards need to be established for a distributed team

## Office Setup Framework

```
Office types at MBL portfolio:
  Professional services office (MBL HoldCo): Open plan, conference rooms, executive offices
  Medical/clinical office (Allevio): Exam rooms, reception, clinical workstation requirements, ADA, HIPAA layout considerations
  Field office (HIVE): Functional, minimal — truck parking, field ops desk, equipment storage
  Remote-first hub: Minimal square footage, hot desks, conference capability

Space planning ratios:
  Open plan: 100-150 sq ft per person
  Private offices: 150-250 sq ft
  Conference rooms: 25-30 sq ft per seat
  Collaboration/common areas: Add 20-30% of workspace sq ft
  
  Clinical (Allevio): Per exam room capacity, not headcount
    Typical: 1 reception + 1 check-in per 4 providers + 1 exam room per provider + admin area

Setup phases:
  Phase 1 (Pre-move, T-60 to T-30 days): Lease signed, planning
  Phase 2 (Infrastructure, T-30 to T-14 days): Tech, power, network, signage
  Phase 3 (Furnishing, T-14 to T-7 days): Furniture delivery and placement
  Phase 4 (Go-live prep, T-7 to Day 1): Technology deployment, systems access
  Phase 5 (Post-setup, Day 1 to Day 30): Issues log, gap resolution

Budget categories:
  Tenant improvements (landlord-funded or company-funded): Walls, flooring, paint, lighting
  Furniture: Desks, chairs, filing, conference, reception
  Technology: Network, phones, computers, A/V, printers
  Signage: Exterior, interior, brand standards (MBL brand guide)
  Moving costs: Labor, truck, packing
  Miscellaneous: Supplies, art, plants, small appliances
```

## Output Format

```markdown
# Office Setup Plan — <Company Name> | <Address>
**Move-in date:** [Date] | **Go-live date:** [Date]
**Space:** [X sq ft] | **Headcount:** [N staff on Day 1 / [N] capacity]
**Office type:** [Professional / Clinical / Field / Remote hub]
**Budget:** $[X] total | **Status:** Planning / In progress / Complete
**Prepared by:** Dr. John Lewis | **Date:** [Date]

---

## Space Plan

**Layout:** [Description — open plan with N workstations, N private offices, N conference rooms]
**Special requirements:**
- [ ] ADA accessibility (required for Allevio patient-facing areas)
- [ ] HIPAA-compliant layout (no PHI visible from waiting area — Allevio)
- [ ] Clinical sink in each exam room (Allevio)
- [ ] Secure medication storage (Allevio — DEA compliance if controlled substances)
- [ ] Server/equipment room with appropriate cooling
- [ ] [Other]

---

## Budget

| Category | Budgeted | Committed | Spent | Remaining |
|---------|---------|----------|-------|----------|
| Tenant improvements | $[X] | $[X] | $[X] | $[X] |
| Furniture | $[X] | | | |
| Technology/IT | $[X] | | | |
| Signage | $[X] | | | |
| Moving costs | $[X] | | | |
| Miscellaneous (10% contingency) | $[X] | | | |
| **Total** | **$[X]** | | | |

**Budget status:** 🟢 On budget / 🟡 $[X] over, offset from [category] / 🔴 Escalate to Matt Mathison

---

## Phase 1: Pre-Move Checklist (T-60 to T-30)

Infrastructure planning:
- [ ] Lease signed and abstracted (ops-lease-manager)
- [ ] Internet/connectivity — ISP selected, installation date confirmed: [Date]
- [ ] Floor plan finalized and approved
- [ ] Contractor/TI work scope defined (if applicable)
- [ ] Furniture ordered (lead times: 4-8 weeks for custom pieces)
- [ ] Technology procurement started
- [ ] Signage designed (brand guide applied — MBL/entity standards)
- [ ] Moving company contracted (3 quotes obtained)

Permits and compliance (if TI work):
- [ ] Building permits obtained (if required for TI scope)
- [ ] ADA compliance review complete (Allevio or any public-facing office)
- [ ] Electrical capacity verified for technology load
- [ ] HVAC capacity verified for headcount

---

## Phase 2: Infrastructure (T-30 to T-14)

Technology infrastructure:
- [ ] Internet installed and tested: [Date] | Speed: [X Mbps up/down]
- [ ] Network hardware installed (router, switches, WAPs)
- [ ] Phone system (VoIP setup if applicable)
- [ ] Security cameras (if applicable)
- [ ] Door access system: keycard/fob system provisioned
- [ ] UPS (uninterruptible power supply) for server/network equipment
- [ ] Printer/copier delivered and networked

Network documentation:
- Network diagram completed: [Date]
- Password vault entry created: [Date]
- IT contact for this location: [Name / Vendor]

---

## Phase 3: Furnishing (T-14 to T-7)

- [ ] Furniture delivery confirmed: [Date]
- [ ] All items received (vs. purchase order): [✅ Complete / ❌ Missing: list]
- [ ] Workstations assembled and arranged per floor plan
- [ ] Conference room A/V tested (screen, video conferencing, whiteboard)
- [ ] Reception area complete
- [ ] Kitchen/break room stocked
- [ ] Supply closet organized and inventoried

---

## Phase 4: Go-Live Prep (T-7 to Day 1)

Technology deployment:
- [ ] Computers deployed and domain-joined (if applicable)
- [ ] All staff have network login credentials
- [ ] Printers accessible from all workstations
- [ ] VPN or remote access configured
- [ ] Software installed on all machines: [List key applications]
- [ ] Phones working (test each extension)

Systems access:
- [ ] Building/suite access for all staff: keycards/fobs distributed
- [ ] Parking validated (if applicable)
- [ ] Emergency contacts posted (building management + Dr. Lewis)
- [ ] OSHA required postings displayed
- [ ] First aid kit stocked and mounted

Allevio-specific (clinical):
- [ ] AdvancedMD workstations configured and tested
- [ ] PHI visibility review: waiting area cannot see clinical records on screens
- [ ] Clinical equipment installed and calibrated
- [ ] Medication storage locked and secured
- [ ] HIPAA privacy notices posted in waiting area

---

## Phase 5: Post-Setup Issues Log (Day 1 to Day 30)

| Issue | Priority | Reported by | Status | Resolution |
|-------|---------|------------|--------|-----------|
| [Issue] | P1/P2/P3 | [Name] | Open / Resolved | |

**Day 30 sign-off:** All issues resolved ✅ / [N] open issues — transferred to facilities log

---

## Matt Mathison Brief (if >$50K total or new location)

[Company] office at [address] opens [Date] — [N] staff, [X sq ft]. Budget: $[X] ([status: on/over]). [Key risk or status note]. [No action needed / Action needed: description].
```

## Output Contract
- Technology infrastructure is installed and tested before Day 1 — the one non-negotiable: employees cannot work without internet, network access, and computers; the technology setup is completed and tested in Phase 4 before anyone arrives on Day 1; there is no acceptable version of "IT will be ready in a few days"; if the internet installation is delayed, this is a schedule risk that escalates immediately; Dr. Lewis tracks this personally
- Clinical setup at Allevio is not just an office — it has regulatory requirements (ADA, HIPAA privacy, medication storage, clinical equipment calibration) that go beyond standard office setup; these requirements are identified in Phase 1 and verified in Phase 4 before any patient arrives; the HIPAA privacy review (can someone in the waiting area see PHI on a clinical workstation?) is a specific checklist item, not a vague reminder
- Budget has a 10% contingency — office setup always has surprises (a TI item that costs more than expected, a technology item that requires an additional switch, a furniture piece that doesn't fit); the 10% contingency absorbs the expected surprises; surprises beyond the contingency are escalated to Matt Mathison before committing
- HITL required: Dr. Lewis leads setup; CEO approves the space plan and budget; Matt Mathison notified for new locations (any), total cost >$50K, or budget overruns; technology decisions during setup require Dr. Lewis approval; TI work >$25K requires Dr. Lewis + CEO alignment; any personal guarantee on TI allowance requires Matt Mathison review

## System Dependencies
- **Reads from:** Lease agreement (ops-lease-manager), brand guide, floor plan, equipment quotes, technology vendor proposals
- **Writes to:** Setup project plan (Monday.com + SharePoint/Ops/<Company>/Facilities/Offices/); asset register (new equipment); vendor records; building access records
- **HITL Required:** Dr. Lewis leads; CEO approves space plan and budget; Matt Mathison for new locations and total cost >$50K; TI work >$25K requires alignment; Day 1 and Day 30 sign-off by Dr. Lewis

## Test Cases
1. **Golden path:** Allevio second clinic setup — 2,400 sq ft medical office, 4 exam rooms, 2 providers, $85K budget → Phase 1: TI contractor selected (3 bids: $28K, $31K, $35K — awarded to low bidder); furniture ordered (6-week lead time); internet: ISP installed at T-28; Phase 2: network rack installed, AdvancedMD workstations ordered; Phase 3: Exam room furniture delivered — 1 exam table damaged in shipping (replacement scheduled T-5); Phase 4: all workstations configured, AdvancedMD login tested for each provider, PHI privacy review passed, medication cabinet locked and keyed, clinical equipment calibrated; Phase 5: Day 1 — 2 issues (printer driver on 1 workstation, parking fob for 1 staff member) — both resolved Day 2; Day 30 sign-off: complete; final budget: $88K ($3K over contingency — TI cost came in $3K higher than estimate); Matt Mathison briefed: "Allevio Clinic 2 opened on schedule. Final cost $88K vs. $85K budget — $3K over on TI. Both providers operational Day 1."
2. **Edge case:** Internet installation is delayed 2 weeks — the office opens without internet → Unacceptable; escalate immediately to ISP with executive escalation request; identify temporary connectivity: (A) 4G/5G business internet (installed same day, $150/month — get it now); (B) temporarily run from a hotspot bridge; delay is not an option for an office opening; if ISP cannot accelerate, escalate to Dr. Lewis who escalates to ISP account manager; temporary connectivity is funded from the contingency budget
3. **Adversarial:** "Can we just do this ourselves to save money?" → For a small office (5 people, no clinical requirements, existing furniture), self-managed setup is reasonable; provide a simplified checklist; flag the items that are non-negotiable regardless (internet tested before Day 1, OSHA postings, access credentials for all staff); for a clinical setup at Allevio, Dr. Lewis manages directly — the regulatory requirements and coordination complexity are too high for a self-managed setup

## Audit Log
Setup plans retained by location and company. Budget vs. actual retained. Phase sign-offs documented. Day 30 issue resolution documented. Vendor quotes and contracts retained. Matt Mathison notifications retained.

## Deprecation
Retire when portfolio companies have office managers who execute setup projects independently with Dr. Lewis providing input on specifications and budget approval, and when clinical setup protocols at Allevio are owned by the clinical operations director.
