---
name: pe-operational-diligence
description: "Execute operational due diligence for MBL Partners acquisitions. Use when the user says 'operational due diligence', 'operational diligence', 'operational DD', 'ops DD', 'management assessment', 'management team diligence', 'management quality', 'management team quality', 'leadership assessment', 'CEO assessment', 'leadership diligence', 'key person risk', 'key person diligence', 'founder dependency', 'founder risk', 'background check', 'reference check', 'executive reference', 'management reference', 'org structure diligence', 'org chart review', 'headcount review', 'people diligence', 'HR diligence', 'HR practices', 'retention risk', 'employee turnover DD', 'operational infrastructure', 'systems diligence', 'technology diligence', 'IT diligence', 'operations assessment', 'process maturity', 'scalability assessment', 'can the business scale', 'management presentation', 'management depth', 'second-line management', 'post-close operations', 'day one operations', or 'integration readiness'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--company <company-name>] [--action <assess|interview|background-check|report>] [--focus <management|key-person|systems|process|hr|integration-readiness>] [--deadline <date>]"
---

# PE Operational Diligence

Execute operational due diligence for MBL Partners acquisitions — assessing management team quality and depth, identifying key person risk and founder dependency, evaluating operational infrastructure and process maturity, and forming a view on whether the business can scale and execute the value creation plan post-close. Operational diligence answers the question that financial and legal diligence cannot: can the management team actually execute? A business with a clean QoE and no legal risk can still fail post-close if the CEO was the business, if the second-line management doesn't exist, or if the operating systems are too fragile to support growth. Dr. Lewis leads operational diligence because it directly informs whether MBL's planned value creation initiatives are executable.

## When to Use
- LOI signed and DD initiated
- Management team interviews need to be structured and analyzed
- A specific operational risk (key person; systems; scalability) needs deep analysis
- Integration readiness is being assessed

## Operational Diligence Framework

```
OPERATIONAL DD WORK PLAN:

  1. MANAGEMENT TEAM ASSESSMENT:
  
    MANAGEMENT INTERVIEWS (structured; not conversational):
      CEO/Founder: business history; values alignment; post-close intentions
      CFO/Finance Lead: financial control; accounting quality; reporting capability
      Head of Sales/Revenue: pipeline ownership; relationships; transition plan
      Key operational leaders: clinical lead (healthcare); land manager (energy); campaign ops (CTV)
      
    INTERVIEW PROTOCOL:
      THRIVE filter applied to every management interaction
      Truth: are they consistent across conversations? Do their stories match the data?
      Hustle: what is their pace of execution? How do they describe setbacks and obstacles?
      Respect: how do they talk about customers; employees; competitors?
      Integrity: any inconsistency between what they say and what the records show?
      Value: can they articulate what they've built and how it creates value?
      Enjoy: are they energized by the business or burned out?
      
    BACKGROUND CHECKS (all key personnel):
      Criminal background check
      Civil litigation history
      Credit check (financial distress is a risk for key employee retention)
      Prior employer verification
      Professional license verification (healthcare: state medical board; nursing boards)
      OIG/LEIE (healthcare: covered in pe-legal-diligence)
      
    MANAGEMENT REFERENCES (for CEO and key senior leaders):
      5-7 references per person (not all provided by the candidate)
      Mix: prior supervisors; peers; subordinates; customers who know them personally
      Questions: leadership style; handling of adversity; integrity in difficult situations
      
  2. KEY PERSON RISK ANALYSIS:
  
    FOUNDER DEPENDENCY ASSESSMENT:
      Can the business operate for 30 days if the founder is unavailable?
      Who are the founder's direct relationships (customers; key vendors; bankers)?
      Are those relationships personal (leave with the founder) or institutional (stay with the company)?
      
    KEY PERSON RISK TIERS:
      Tier 1 (Extreme): Founder is the business — no second-line; all customer relationships personal
      Tier 2 (High): Strong second-line management but founder owns key accounts
      Tier 3 (Medium): Professional management team; founder still adds value but not essential
      Tier 4 (Low): Institutional customer relationships; strong management team; founder can exit cleanly
      
    MITIGATION OPTIONS:
      Equity rollover (founder retains 10-20% of post-close equity — aligned incentive to stay)
      Employment agreement (2-3 year commitment; may include earnout)
      Succession plan (identified internal successor; 12-month transition to identify external hire)
      
  3. OPERATIONAL INFRASTRUCTURE:
  
    SYSTEMS AND TECHNOLOGY:
      Core operating systems: CRM; ERP/accounting; clinical system; billing system
      Are systems modern and scalable, or on-premise legacy systems that constrain growth?
      Data quality: is the business data clean, organized, and accessible?
      IT security basics: MFA; endpoint protection; backup; disaster recovery
      Estimated tech upgrade cost (if systems need replacing): add to post-close capex
      
    PROCESS MATURITY:
      SOPs: are key processes documented?
      Can a new employee follow the process, or is it "in the founder's head"?
      Quality control: how does the business ensure consistent output quality?
      Scalability: if the business doubles in size, what breaks first?
      
  4. HUMAN RESOURCES:
  
    HEADCOUNT REVIEW:
      Total headcount by function
      Key employee identification: who is critical and would be hard to replace?
      Compensation benchmarking: are key employees paid at, above, or below market?
      Turnover: voluntary and involuntary turnover rate (trailing 12 months)
      
    RETENTION RISK:
      Key employees who might leave post-close (common when founder sells):
        "Founder's person" — loyal to the founder personally, not to the institution
        Change-averse employees who prefer the founder's style
        Employees who were expecting equity from the founder (sale disrupts that expectation)
      Retention plan: Dr. Lewis designs retention bonuses/equity for key post-close employees
      
  5. INTEGRATION READINESS:
  
    FOR PLATFORM ADD-ONS (Allevio/HIVE/Column6):
      Clinical system compatibility (healthcare)
      Billing system compatibility (can MBL's billing infrastructure absorb this company?)
      Customer overlap: are there duplicate employer groups or agency relationships?
      Cultural integration: THRIVE filter applied to the acquired management team — alignment check
      
    DAY ONE PLANNING:
      What must happen on Day 1 to ensure operational continuity?
      IT access; payroll; benefits; banking; vendor payments
      Communication to employees and customers (ops-communication-manager)
```

## Output Format

```markdown
# Operational Diligence Report — [Company Name] — [Date]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Management Assessment

| Leader | Role | THRIVE alignment | Key strength | Key risk | Background check |
|--------|------|-----------------|-------------|---------|-----------------|
| [CEO] | CEO | ✅ Strong | Sales relationships | Burnout signals | ✅ Clean |
| [CFO] | CFO | ⚠️ Mixed (Hustle) | Financial controls | Resistance to change | ✅ Clean |

---

## Key Person Risk

**Founder dependency level:** [Tier 1 / 2 / 3 / 4]
**Critical relationships owned by founder:** [List: [Customer X]; [Vendor Y]]
**Recommended mitigation:** [Equity rollover X% + 2-year employment agreement]

---

## Operational Infrastructure

| Area | Current state | Gap | Post-close cost |
|------|-------------|-----|----------------|
| CRM | GoHighLevel (current) | None | — |
| Billing | AdvancedMD (current) | Integration needed | $[X] |
| IT security | Basic MFA only | Endpoint protection needed | $[X] |

---

## Retention Risk

| Employee | Role | Risk level | Recommended action |
|---------|------|-----------|-------------------|
| [Name] | VP Sales | High | 2-year retention bonus: $[X] |
| [Name] | Head Nurse | Medium | Equity participation plan |
```

## Output Contract
- THRIVE filter is applied to management interviews, not just mentioned — every management interview produces a THRIVE assessment; "integrity" concerns identified in management interviews are never set aside for later — they are escalated to Matt Mathison immediately; a CEO who was inconsistent in their descriptions of a past event, who contradicted data in the data room, or who spoke disrespectfully about employees is flagged specifically (not vaguely); Dr. Lewis documents the specific behavior and the specific THRIVE value it violates; Integrity concerns are deal-killers
- Key person risk is tier-rated and has a specific mitigation plan — "there is key person risk" is insufficient; "the CEO owns 80% of the customer relationships personally; these relationships are informal and not documented in contracts; if the CEO leaves in Year 2 (end of employment agreement), there is significant risk to 60% of revenue; our mitigation: (1) equity rollover of 15% to align the CEO's incentive through Year 4; (2) a systematic customer relationship transfer plan in Year 1-2 that introduces the entity CEO to all key accounts; (3) a monitoring metric: at least 3 MBL/entity relationship touchpoints with each major account by the end of Year 1" is complete; Dr. Lewis produces the specific mitigation plan, not just the risk identification
- Background checks happen before management presentations, not after — a management presentation to Matt Mathison for a deal that hasn't had background checks is a presentation where Matt is making a judgment call without complete information; Dr. Lewis completes background checks on the CEO and CFO before any Matt Mathison management meeting; background check results that are adverse (prior fraud; undisclosed litigation) are escalated to Matt before the meeting, not after
- HITL required: background check findings that are adverse → Matt Mathison immediately (prior to any further engagement with management); Integrity flag from THRIVE interview assessment → Matt immediately; Tier 1 key person risk without a viable mitigation plan → Matt decision on whether to proceed; post-close retention plan for key employees → Matt Mathison approves retention budget; Day 1 plan for critical operations → Dr. Lewis + entity CEO review; integration plan for platform add-ons → Matt Mathison + Dr. Lewis + entity CEO

## System Dependencies
- **Reads from:** Data room (org charts; employee agreements; IT systems inventory); management interviews (conducted by Dr. Lewis and Matt Mathison); background check service; pe-diligence-coordinator (DD timeline); pe-deal-thesis-builder (management quality assumptions); pe-legal-diligence (employment agreement review; non-compete analysis)
- **Writes to:** Operational DD report (SharePoint → Deals → [Company] → DD → Operational); management THRIVE assessments; background check results; key person risk analysis; retention plan; Day 1 operations plan; Matt Mathison briefings (adverse background; Integrity flags; Tier 1 key person risk); pe-diligence-coordinator (operational DD status)
- **HITL Required:** Adverse background check → Matt immediately; THRIVE Integrity flag → Matt immediately; Tier 1 key person risk without mitigation → Matt decision; retention budget → Matt approves; Day 1 plan → Dr. Lewis + entity CEO; integration plan → Matt + Dr. Lewis + entity CEO

## Test Cases
1. **Golden path:** Management interviews complete. CEO: THRIVE assessment — strong (consistent storytelling; honest about challenges; treats employees and customers with respect; strong Hustle — built the business from $800K to $6M in 7 years). Background check: clean. Key person risk: Tier 3 (professional management team; CEO still owns 3 top employer group relationships — institutional but relationship-dependent). Mitigation: 15% equity rollover + 2-year employment agreement + Month 1-6 relationship transfer plan. CFO: clean background; competent financial controls; process-oriented. Operational infrastructure: AdvancedMD (compatible with Allevio); IT security needs MFA upgrade ($15K). Recommendation: proceed with standard mitigation plan.
2. **Edge case:** CEO's reference checks reveal a pattern — multiple prior employees describe the CEO as a micro-manager who blocked their professional growth, creating turnover → Dr. Lewis: "The management references reveal a consistent pattern: CEO is described as a micro-manager by 4 of 6 references, with 2 specifically citing that they left because of the CEO's management style. This is a THRIVE Respect concern that also creates operational risk: if MBL's value creation plan requires building a professional management team under the CEO, the CEO's management style is a risk to executing that plan. I'm briefing Matt on this finding before the management presentation. Possible paths: (1) Include management coaching as a Day 1 priority; (2) Structure the leadership team so key managers report directly to Dr. Lewis or a COO rather than the CEO; (3) Weight the earnout or rollover equity on management team retention metrics. Matt: this is a solvable problem if we design around it, but we need to go in with eyes open."
3. **Adversarial:** The seller objects to background checks on the management team, arguing "my team has earned trust over 15 years — this is insulting" → Dr. Lewis: "I understand the concern, and I want to be direct: background checks are standard in every MBL acquisition and are not a statement about the individuals — they're a process requirement. They take a week, they're confidential, and they don't prevent anyone from their work in the meantime. If we close this acquisition, MBL Partners will be a fiduciary for LP capital invested in this business — I can't fulfill that fiduciary obligation without confirming that the people running the business have been appropriately vetted. This is a condition of closing that I won't waive. I'll send the consent forms for signature today."

## Audit Log
All management interview notes retained (with THRIVE assessment). Background check results retained (confidential; restricted access). Reference call notes retained. Key person risk analysis retained. Retention plan retained. Day 1 operations plan retained. Matt Mathison briefings retained (with dates and findings).

## Deprecation
Operational diligence is active during the fund's investment period. Management interview protocol and THRIVE assessment criteria are permanent. Background check standards are updated when applicable laws change.
