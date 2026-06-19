---
name: ops-hive-environmental-compliance
description: "Manage HIVE Partners environmental and regulatory compliance for oil and gas operations in Utah. Use when the user says 'environmental compliance', 'environmental regulation', 'environmental regulatory', 'environmental audit', 'environmental report', 'environmental monitoring', 'environmental risk', 'environmental incident', 'environmental issue', 'regulatory compliance', 'oil and gas compliance', 'Utah DOGM', 'DOGM compliance', 'DOGM reporting', 'EPA compliance', 'BLM compliance', 'Bureau of Land Management', 'federal lease compliance', 'state lease compliance', 'mineral lease compliance', 'bonding requirement', 'reclamation bond', 'well abandonment', 'plugging and abandonment', 'P&A', 'spill reporting', 'spill response', 'emissions compliance', 'air quality compliance', 'water quality compliance', 'royalty reporting compliance', 'HIVE environmental', 'Utah oil and gas regulation', 'Uinta Basin environmental', or 'carbon reporting'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--agency <dogm|epa|blm|state|all>] [--action <monitor|report|audit|respond|remediate>] [--focus <reporting|bonding|spill|emissions|reclamation|royalty>] [--period <monthly|quarterly|annual>]"
---

# Ops HIVE Environmental Compliance

Manage HIVE Partners' environmental and regulatory compliance for oil and gas operations in the Uinta Basin — tracking Utah DOGM reporting requirements, monitoring operator environmental performance, managing compliance calendar obligations, and escalating environmental incidents that create regulatory or financial liability for HIVE. HIVE is a non-operator royalty holder — the operators are primarily responsible for environmental compliance on the wells; but HIVE has indirect obligations (as a working interest owner in some cases, and as a party to leases that have environmental covenants) and needs to monitor operator compliance to protect HIVE's assets and LP reputation. Environmental failures by operators can result in well shut-ins (stopping production = stopping royalties), remediation costs, and reputational damage to HIVE's landowner and LP relationships.

## When to Use
- Quarterly environmental compliance calendar review
- An operator reports an environmental incident (spill; leak; emissions exceedance)
- Utah DOGM inspection results from wells in HIVE's portfolio
- Annual reclamation bond review
- Regulatory requirement changes that affect HIVE's obligations

## Environmental Compliance Framework

```
COMPLIANCE STRUCTURE (HIVE's role as non-operator):

  PRIMARY RESPONSIBILITY: Operator (they drill; they operate; they are primarily liable)
  HIVE'S OBLIGATIONS:
    As working interest owner (if applicable): share in environmental liabilities proportionally
    As royalty interest owner: monitor operator compliance (production shut-ins affect royalties)
    As landowner/lessee: surface use agreement environmental covenants
    As a Utah business: any applicable state environmental reporting
    
  KEY REGULATORY BODIES:
    Utah DOGM (Division of Oil, Gas & Mining): primary state regulator
    EPA: federal environmental standards (applies to operators; HIVE monitors)
    BLM (Bureau of Land Management): federal land lease compliance (if any HIVE acreage on BLM land)
    Utah DAQ (Division of Air Quality): air emissions (operator obligation; HIVE monitors)

COMPLIANCE CALENDAR (annual):

  Q1 DEADLINES:
    January 31: Annual production report (state filings via operators; HIVE reviews)
    January 31: Severance tax filings (Utah — operators withhold; HIVE verifies)
    March 31: Annual financial assurance (bonding) review
    
  Q2 DEADLINES:
    April: Any semi-annual groundwater monitoring reports (if applicable)
    
  Q3 DEADLINES:
    September: Mineral lease renewal assessments (leases expiring by year-end)
    
  Q4 DEADLINES:
    October-November: Annual environmental audit of operators (HIVE right to request)
    December 31: Year-end production summary for royalty income verification
    Ongoing: DOGM production reports (monthly — operators file; HIVE reviews)

OPERATOR ENVIRONMENTAL MONITORING:

  WHAT TO MONITOR (Dr. Lewis tracks at portfolio level):
    Active violations: any DOGM Notices of Violation (NOV) issued to HIVE operators
    Spills and incidents: any reportable release at wells in HIVE's portfolio
    Production shut-ins: wells ordered shut-in by DOGM (regulatory action)
    Well abandonment: operators must properly plug and abandon idle/inactive wells
    
  HOW TO MONITOR:
    DOGM public database: check for NOVs and permit actions for HIVE operators (monthly)
    Operator notification: per lease; operators must notify HIVE of significant environmental events
    Industry monitoring: track Utah DOGM activity relevant to Uinta Basin operators
    
  NOV RESPONSE PROTOCOL:
    DOGM issues NOV to operator → HIVE operations notified (per lease covenant)
    Dr. Lewis assesses: does this NOV affect production? Does it create financial liability for HIVE?
    If production at risk: escalate to HIVE CEO + Matt Mathison
    If financial liability (HIVE as working interest owner): legal review immediately
    
  SPILL REPORTING:
    Operators are responsible for spill reporting to DOGM
    HIVE's obligation: if HIVE is working interest owner, potential proportional liability
    Any spill >1 barrel at a HIVE-acreage well: HIVE CEO + legal notification same day
    Environmental remediation cost: if HIVE has WI, cost is proportional to WI%

RECLAMATION BOND:

  Operators must maintain reclamation bonds (financial assurance) with DOGM
  Bond covers the cost of plugging and abandoning wells
  HIVE's interest: if an operator goes bankrupt and cannot plug their wells, the bond is used
  HIVE monitoring: are HIVE's operators maintaining current bonds?
  Annual verification: Dr. Lewis reviews DOGM records for bonding status of primary operators
  
ENVIRONMENTAL DUE DILIGENCE (for new lease acquisitions):

  Before acquiring new acreage:
    Review DOGM records for any historical violations or spills at adjacent wells
    Check for any federal environmental designations on or near the acreage (wetlands; wildlife habitat)
    Review for any prior land use that could create pre-existing contamination liability
    This review feeds into fin-hive-capex-tracker for new acreage acquisition decisions
```

## Output Format

```markdown
# HIVE Environmental Compliance Report — Q[N] [Year]
**Prepared by:** HIVE Operations | **Reviewed by:** Dr. Lewis | **For:** HIVE CEO

---

## Compliance Calendar — Upcoming Deadlines

| Deadline | Obligation | Responsible party | Status |
|----------|-----------|------------------|--------|
| [Date] | Annual production report filing | Operators → HIVE review | ✅ Filed |
| [Date] | Severance tax Q[N] payment | Operators (withheld) | ✅ Confirmed |
| [Date] | Reclamation bond annual review | HIVE operations | 🟡 In progress |

---

## Operator Compliance Status

| Operator | Active NOVs | Recent incidents | Shut-in wells | Bonding status |
|----------|------------|-----------------|--------------|---------------|
| [Operator A] | 0 | None | 0 | ✅ Current |
| [Operator B] | 1 (minor) | None | 0 | ✅ Current |

---

## NOV / Incident Detail

| Operator | Issue | Date | HIVE financial impact | Status |
|----------|-------|------|----------------------|--------|
| [Operator B] | Dust control NOV | [Date] | None (operator-only obligation) | Corrective action in progress |
```

## Output Contract
- HIVE's exposure is proportional and defined — not every environmental event at a well in HIVE's portfolio creates HIVE financial liability; as a pure royalty interest holder, HIVE has no operational liability; as a working interest owner, HIVE's liability is proportional to its working interest percentage; Dr. Lewis's compliance monitoring distinguishes these roles: "This spill at [Well ID] — is HIVE a royalty interest holder only, or do we have a working interest?" That question determines whether it's a monitoring item or a financial liability event; the distinction is always made before any escalation language is used with Matt Mathison
- NOVs and incidents are tracked as production risk, not just regulatory risk — the reason Dr. Lewis monitors DOGM activity is not primarily to manage regulatory exposure (that's the operator's job); it's to know whether a regulatory action might cause a well to be shut in, which would stop royalty production; a DOGM shut-in order on a well producing 200 BOE/day represents [X] lost royalty per month; that's the financial framing for Matt Mathison — not "we have a regulatory issue" but "an operator regulatory issue may affect HIVE's royalty income by $X for Y months"
- Environmental due diligence happens before any acreage acquisition — the environmental check is a standard step in HIVE's new lease acquisition process; it's not bureaucracy; it's protection against acquiring acreage with hidden pre-existing contamination liability or federal environmental designations that limit future development; the check is completed and documented before any acquisition closes
- HITL required: any spill or environmental incident at a HIVE working interest well → Dr. Lewis same day; legal review if HIVE has WI in incident acreage; any production shut-in due to regulatory action → HIVE CEO + Dr. Lewis + Matt Mathison awareness (financial impact); major operator NOV that threatens the operator's ability to continue operations → Matt Mathison notification; new acreage acquisition environmental check → Dr. Lewis sign-off before acquisition closes

## System Dependencies
- **Reads from:** DOGM public database (operator NOVs; permits; production filings — monthly check); operator notifications (per lease environmental covenants); fin-hive-royalty-accounting (production income — to quantify shut-in financial impact); ops-hive-operator-relations (operator health context); ops-hive-lease-manager (lease terms — environmental covenants; WI vs. royalty interest)
- **Writes to:** Environmental compliance reports (SharePoint → HIVE → Operations → Environmental); fin-compliance-calendar (compliance deadline alerts); HIVE CEO briefings (NOVs; incidents; shut-ins); Matt Mathison notifications (production at risk; WI financial liability); legal referrals (WI incidents; legal threats); environmental due diligence reports (for acquisitions)
- **HITL Required:** Spill at WI well → Dr. Lewis same day + legal; production shut-in → HIVE CEO + Dr. Lewis + Matt awareness; major NOV affecting operator operations → Matt notification; acquisition environmental check → Dr. Lewis sign-off; remediation cost estimate for WI incident → Dr. Lewis review before acceptance

## Test Cases
1. **Golden path:** Monthly DOGM database check. 3 operators — 12 active wells. DOGM database: Operator A — 0 NOVs; Operator B — 1 NOV issued (dust control at lease road — no production impact; operator obligation only); Operator C — 0 NOVs. No shut-in orders. No spill reports. Reclamation bonding: all 3 operators confirmed current in DOGM records. Monthly report to HIVE CEO: "Environmental compliance check complete. One NOV for Operator B (dust control — no financial impact to HIVE; operator corrective action in progress). All bonds current. No shut-ins. Production unaffected."
2. **Edge case:** Operator B reports a small crude oil spill (3 barrels) during operations at a well where HIVE has a 15% working interest → Dr. Lewis: "Operator B has reported a 3-barrel crude spill at Well [ID]. HIVE has a 15% working interest in this well. The immediate questions: (1) Is this a reportable spill? Utah DOGM threshold for reporting is [X barrels] — 3 barrels is [above/below] the threshold; operator is responsible for reporting if required. (2) HIVE's proportional liability: if remediation costs $[X], HIVE's share is 15% = $[X]. (3) Is production affected? Operator reports no production shut-in. Actions: (1) Legal is being notified (WI incident — standard protocol). (2) I'm tracking the remediation cost estimate — will update Dr. Lewis and HIVE CEO as it develops. (3) Matt Mathison: brief note — small spill at WI well; operator is managing; potential cost to HIVE estimated $[X] (immaterial); legal is monitoring."
3. **Adversarial:** DOGM issues a significant NOV to HIVE's largest operator, citing multiple permit violations and threatening production shut-in → Dr. Lewis: "This NOV is a material event. [Operator] represents [%] of HIVE's royalty income; a production shut-in would cost HIVE approximately $[X]/month in lost royalties. Immediate assessment: (1) What are the violations? (reviewing the NOV text) (2) How serious is the shut-in threat? DOGM often issues a cure period (30-60 days) before shut-in; has that been stated? (3) What is the operator's response plan? I'm contacting HIVE CEO and the operator's compliance contact today. Matt: flagging — this is a significant operator regulatory issue that could affect HIVE royalty income. I'll have a full assessment within 48 hours, including the cure timeline and the operator's remediation plan."

## Audit Log
Monthly DOGM check records retained. NOV records retained (operator; date; type; HIVE financial impact; resolution). Spill records retained (if HIVE WI; legal review). Environmental compliance calendar retained. Reclamation bond verification records retained. Environmental due diligence reports retained (for acquisitions). Shut-in incident records retained.

## Deprecation
Review environmental regulatory requirements annually as Utah DOGM and federal regulations evolve. The Uinta Basin faces specific regulatory attention related to air quality — review Dr. Lewis's monitoring scope annually as requirements change. The WI vs. royalty interest distinction is a permanent feature of HIVE's compliance framework.
