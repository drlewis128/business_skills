---
name: legal-ip-asset-manager
description: "Manage intellectual property assets for MBL portfolio companies. Use when the user says 'trademark', 'copyright', 'intellectual property', 'IP', 'IP protection', 'trademark registration', 'brand protection', 'IP assets', 'IP portfolio', 'trade name', 'service mark', 'patent', 'IP audit', 'IP ownership', 'IP transfer', 'work for hire', 'IP assignment', 'USPTO', 'trademark search', 'trademark filing', 'IP infringement', 'copyright infringement', or 'IP strategy'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--ip-type <trademark|copyright|patent|trade-secret>] [--action <register|audit|assign|search|enforce>]"
---

# IP Asset Manager

Manage intellectual property assets for MBL portfolio companies — covering trademark registration, copyright, IP ownership confirmation, and IP strategy. IP assets are balance sheet value that is often underprotected in early-stage portfolio companies: a company that has built a brand, a technology platform, or proprietary processes without protecting them is giving away value that could appear in the exit multiple. An unregistered trademark is more difficult and expensive to protect; an unassigned employee invention is a cloud on the company's title to its own technology. Dr. Lewis manages IP compliance and escalates to IP counsel for registrations, enforcement, and complex IP matters.

## When to Use
- A portfolio company has a brand name, product name, or logo worth protecting
- A new product, technology, or content is created (copyright and IP assignment questions)
- An employee, contractor, or founder created IP outside a formal assignment framework
- A portfolio company is preparing for exit (IP due diligence will occur)
- A competitor appears to be infringing the company's mark or content

## IP Asset Framework

```
IP TYPES AND RELEVANCE BY ENTITY:

  TRADEMARKS (Brand names, logos, slogans):
    Protects: The brand identity; prevents others from using confusingly similar names
    Scope: Geographic (registered trademark = national in the US; unregistered = geographic use)
    Registration: USPTO (federal); EUIPO (EU); WIPO (international)
    Duration: Renewable indefinitely (10-year terms in the US; maintained with use declarations)
    
    ALLEVIO:
      Priority: Register "Allevio" (name + logo) for healthcare MSO services
      Class: Class 44 (Medical Services) and Class 35 (MSO/Management Services)
      Confirm no conflicts with existing healthcare marks ("Allevio" — clear prior to registration)
      
    HIVE PARTNERS:
      Priority: Register "HIVE Partners" (or confirm trade name protection in Utah)
      Class: Class 4 (Fuel and Oil) and Class 37 (Oil and Gas Services)
      Note: O&G companies primarily compete on relationships and operations, not brand — trademark
        protection is important but not the highest-value IP asset for HIVE
      
    COLUMN6 / SIPROCAL:
      Priority: Register "Column6" and "Siprocal" (both may be in use)
      Class: Class 35 (Advertising Services) and Class 38 (Telecommunications/Data)
      Confirm: Do agency holding company agreements or SSP agreements raise any IP conflicts?
      High priority: Ad tech platforms live and die on their brand in the agency buying community
      
  COPYRIGHTS (Original creative works):
    Protects: Original works of authorship (content, software, databases, creative materials)
    Automatically created: Copyright exists from creation; registration enhances enforcement ability
    When to register: If the work has commercial value and enforcement is realistic
    Work for hire: When an employee creates work in the scope of employment → company owns it
    Contractor-created work: Contractor owns unless there is a written assignment agreement
    
    ALLEVIO:
      Clinical protocols; patient education materials; software customizations → copyright ownership
      Confirm all contractor-developed materials have IP assignment agreements
      
    HIVE:
      Operational processes; proprietary data models (production projections) → trade secret (not copyright)
      Software tools → copyright if proprietary; confirm ownership vs. licensed
      
    COLUMN6:
      Ad creative (CTV spots, display ads) — typically client-owned or licensed to Column6
      Ad serving technology; platform code → copyright; may also be trade secret
      Audience data models; targeting algorithms → trade secret + copyright protection
      
  PATENTS (Inventions and processes):
    Protects: Novel, non-obvious inventions and processes
    Relevance to MBL portfolio: LOW — O&G, healthcare MSO, and media/advertising are not typically
      patent-intensive at current portfolio scale; evaluate if specific patentable innovation exists
    Cost: $15K-$30K per patent (prosecution); long timeline (2-4 years)
    Rule of thumb: Only pursue patents for innovations that (a) are novel and non-obvious,
      (b) have sustained competitive value, and (c) can be enforced cost-effectively
      
  TRADE SECRETS (Confidential proprietary information):
    Protects: Confidential business information with commercial value
    Protection mechanism: Keep secret; enforce via NDA; use only on need-to-know basis
    No registration required — but must actively protect to maintain status
    
    Portfolio examples:
      Allevio: PMPM pricing model; employer group contract terms; clinical efficiency metrics
      HIVE: LOE optimization methodology; proprietary production data models; drilling strategy
      Column6: Audience targeting algorithms; pricing models; agency relationship details

IP OWNERSHIP CHECKLIST (for each entity):
  □ Entity's name and logos confirmed as trademarks (registered or application pending)
  □ All employee IP assignments confirmed (employment agreements should include IP assignment clause)
  □ All contractor IP assignments confirmed (SOWs and contractor agreements include assignment language)
  □ Founder IP: Did any founder create IP before the company was formed? (confirm transferred to company)
  □ Open source: Does any company software incorporate open source? (check license compliance)
  □ Third-party licenses: What licenses does the company rely on? Are they transferable on exit?
```

## Output Format

```markdown
# IP Asset Inventory — [Entity]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **IP counsel:** [Name / To be engaged]

---

## Registered IP

| Asset | Type | Registration # | Jurisdiction | Registered | Expires/Renewal | Status |
|-------|------|---------------|-------------|-----------|----------------|--------|
| [Allevio] (word mark) | Trademark | [#] | USPTO | [Date] | [Date] | ✅ |
| [Logo] | Trademark | [#] | USPTO | [Date] | [Date] | ✅ |

---

## IP Applications Pending

| Asset | Type | Application date | Expected registration |
|-------|------|----------------|----------------------|
| [Column6] | Trademark | [Date] | [Date estimate] |

---

## IP Ownership Gaps

| Gap | Risk | Action | Priority |
|----|------|--------|---------|
| [Contractor created platform UI — no IP assignment agreement] | High | Execute retroactive IP assignment | High |
| [Founder's pre-company algorithm — not transferred] | High | IP counsel: confirm assignment via IP transfer agreement | Immediate |

---

## IP Maintenance Calendar

| Asset | Action | Due | Cost |
|-------|--------|-----|------|
| [Allevio] USPTO trademark | Section 8/15 declaration (year 5-6) | [Date] | ~$200 + counsel fees |
| [HIVE] trademark | Renewal (year 10) | [Date] | ~$325 + counsel fees |
```

## Output Contract
- Contractor IP assignment is the most common gap — employees who create IP in the scope of their employment vest that IP in the employer as "work for hire"; contractors do not — contractor-created work is owned by the contractor unless there is a written IP assignment agreement; Dr. Lewis flags this every time a contractor is engaged: does the contract include IP assignment language? For existing contractors, does the SOW retroactively assign previously created deliverables? A company that uses contractors to build its technology platform without IP assignment agreements does not own its own platform — this is a serious diligence issue in any M&A transaction and must be resolved before exit
- Trademark use maintains protection — a registered trademark that is not used can be canceled for abandonment (3+ years of non-use in the US creates abandonment risk); Dr. Lewis confirms that each registered trademark is actively used in commerce in the format registered; if the mark has been changed (e.g., new logo design), the old registration may need to be supplemented with a new registration for the new design; maintaining the trademark is not just filing a renewal — it requires confirmed active use
- Exit IP due diligence is comprehensive — in any M&A process, the buyer's IP diligence will ask: Who owns all the IP? Are there employee IP assignments for all creators? Contractor IP assignments? Third-party licenses — are they assignable? Is there any open source that could "infect" proprietary code? Are all trademarks clear and registered? A company that cannot confidently answer these questions will face price reductions, escrow holdbacks, or closing conditions tied to IP remediation; Dr. Lewis conducts an annual IP health check to ensure exit readiness at all times
- HITL required: Dr. Lewis reviews and identifies IP gaps; IP counsel handles all trademark registrations, patent applications, and IP enforcement actions; Dr. Lewis does not file trademarks directly — IP counsel must assess clearance (is the mark available?) before filing; Matt Mathison informed of any IP infringement claim (as plaintiff or defendant); CEO authorizes IP counsel engagement for registrations; Dr. Lewis maintains the IP inventory but relies on IP counsel for legal analysis and formal filings

## System Dependencies
- **Reads from:** Trademark registration database (USPTO search — dr.lewis confirms status of existing marks); employee IP assignment clauses (employment agreements); contractor IP assignment language (SOWs and contractor agreements); open source license inventory (if company has software development); IP counsel retainer; exit-readiness review (fpa-exit-value-model — IP is a value component)
- **Writes to:** IP asset inventory (SharePoint/Legal/<Company>/IP/IPInventory.xlsx); IP ownership gap list; IP counsel engagement letter; trademark watch report (if trademark monitoring service is engaged); IP assignment agreements (drafted by IP counsel; executed by employee/contractor and company); Matt Mathison IP summary (for exit readiness)
- **HITL Required:** Dr. Lewis reviews and identifies; IP counsel handles registrations, clearance searches, and enforcement; CEO authorizes IP registrations (cost + strategy decision); Matt Mathison informed of material IP issues or infringement actions; Dr. Lewis does not conduct trademark clearance searches independently — relies on IP counsel's search and opinion for registration decisions

## Test Cases
1. **Golden path:** Column6 is building a new ad technology product — "Siprocal" audience sync tool built by 2 engineers (1 employee, 1 contractor) → Dr. Lewis reviews IP ownership: Employee (W-2) created code in scope of employment → Column6 owns; Contractor created the UI/UX design and front-end code → contractor owns unless there's a written assignment; Dr. Lewis reviews the contractor SOW — it contains IP assignment language: "All work product and deliverables created under this Agreement are work made for hire... to the extent not constituting work made for hire, Contractor hereby assigns all right, title, and interest..." → Column6 owns the contractor work; No open source issues flagged in the code review; Dr. Lewis logs the Siprocal product in the IP inventory as a trade secret (proprietary audience sync algorithm); recommends trademark application for "Siprocal" to IP counsel; IP counsel confirms clearance and files application; Column6 IP fully protected
2. **Edge case:** Dr. Lewis discovers that Allevio's clinical protocol was originally developed by the founding physician before the company was formed — the physician is now Allevio's Chief Medical Officer (CMO) but the protocol was never formally transferred → Dr. Lewis flags: "The foundational clinical protocol that differentiates Allevio's service model is currently owned by the CMO individually, not Allevio. This creates a title defect — if the CMO leaves or has a dispute with the company, they could claim the protocol is their personal IP. In any exit transaction, the buyer will flag this. Action: IP counsel must draft an IP Transfer Agreement whereby the CMO assigns all rights in the clinical protocol to Allevio, in exchange for agreed consideration (could be nominal — $1 plus the employment relationship). This is a standard situation in physician-founded companies. The CMO should be willing to execute — the protocol is embedded in the company's operations and their equity value depends on its being company-owned." IP counsel engaged; IP Transfer Agreement executed; CMO retains a non-exclusive license to use the protocol in their personal medical practice (outside Allevio)
3. **Adversarial:** A competitor sends Column6 a cease-and-desist letter claiming that Column6's brand name "Siprocal" infringes their registered trademark "Syproval" (a healthcare analytics company) → Dr. Lewis evaluates: Does a CTV/programmatic advertising company's use of "Siprocal" create a likelihood of confusion with a healthcare analytics company's use of "Syproval"? The marks are in different industries (Class 35/38 vs. healthcare); the goods/services are different; the channels of commerce are different — Dr. Lewis's initial assessment is that confusion is unlikely, but this is IP counsel territory; Dr. Lewis engages IP counsel immediately: "Review the cease-and-desist and advise on likelihood of confusion analysis; our response options (dispute; discuss; negotiate co-existence); and risk assessment of continued use vs. rebranding." IP counsel responds; likelihood of confusion is low given different industries; cease-and-desist responded to with IP counsel's letter disputing infringement; no rebranding required

## Audit Log
All trademark registration records retained permanently. IP assignment agreements retained permanently. IP counsel opinions retained permanently. Cease-and-desist letters and responses retained permanently. IP maintenance calendar and completion records retained. Annual IP health check documentation retained (7 years). Exit IP diligence responses retained permanently.

## Deprecation
Retire when each portfolio company has IP counsel on retainer who conducts the annual IP health check and manages the IP portfolio — with Dr. Lewis reviewing the IP inventory for exit readiness and Matt Mathison approving any material IP enforcement action.
