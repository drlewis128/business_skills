---
name: legal-brand-protection-manager
description: "Protect and manage brand assets for MBL portfolio companies. Use when the user says 'brand protection', 'trademark', 'trademark monitoring', 'brand monitoring', 'brand infringement', 'someone is using our name', 'trademark enforcement', 'brand misuse', 'logo misuse', 'brand compliance', 'trademark filing', 'trademark registration', 'trademark renewal', 'USPTO', 'brand policy', 'brand guidelines enforcement', 'counterfeiting', 'cybersquatting', 'domain dispute', 'UDRP', 'brand impersonation', or 'brand licensing'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--mark <trademark name or logo>] [--action <monitor|enforce|register|renew>] [--threat <competitor|cybersquatter|infringer>]"
---

# Brand Protection Manager

Protect and manage trademark and brand assets for MBL portfolio companies — from registration through monitoring and enforcement. A brand that is not actively monitored and defended loses its distinctiveness and can even lose its trademark protection through abandonment or genericide. Dr. Lewis maintains the brand protection program: registering marks, monitoring for infringement, and enforcing rights proportionately.

## When to Use
- A new brand name, logo, or tagline needs to be registered or cleared
- A potential infringer is using a confusingly similar mark
- A trademark renewal is approaching
- A domain or social media squatter is impersonating a portfolio company
- Annual brand IP audit

## Brand Protection Framework

```
TRADEMARK REGISTRATION:
  Why register: Federal registration (USPTO) provides:
    (1) Legal presumption of nationwide ownership of the mark
    (2) Right to use the ® symbol
    (3) Bar to later-filed similar marks from registering
    (4) Ability to record with US Customs to block infringing imports
    (5) Basis for international registration (Madrid Protocol)
    
  What can be registered: Words; logos; slogans; colors (distinctive); sounds (distinctive)
    Must be: Distinctive (not generic or merely descriptive)
    Cannot be: Generic ("Healthcare" for a healthcare company); merely descriptive without secondary meaning
    
  CLEARANCE SEARCH BEFORE USE (required before investing in a new brand):
    Step 1: Common law search (Google; state business registries; domain check)
    Step 2: USPTO database search (full TESS search for identical and similar marks)
    Step 3: If any conflicts found: Analyze likelihood of confusion before proceeding
    Step 4: IP counsel conducts a formal opinion if material investment at risk
    A brand that conflicts with a prior registration must be changed — after investment, the cost is high
    
  REGISTRATION PROCESS:
    Filing basis:
      Use in commerce: Mark is already in use in interstate commerce
      Intent to use: Mark is not yet in use but is planned for use
    Classes: Trademark registration is by class (Nice Classification); file in all classes where the mark is used
      Allevio: Class 44 (healthcare services); Class 36 (insurance)
      HIVE Partners: Class 40 (energy services); Class 37 (drilling; well services)
      Column6: Class 35 (advertising services); Class 38 (digital media)
    Timeline: 8-12 months from filing to registration (if no office action)
    Cost: $250-$350/class (USPTO fee) + IP counsel fees ($1,000-$2,000 per mark for full filing)
    
  TRADEMARK MAINTENANCE:
    Declaration of Use (Section 8): Filed between years 5-6 after registration
    Declaration of Incontestability (Section 15): Filed in years 5-6 (optional but strongly recommended)
    Renewal (Section 8/9): Filed every 10 years (years 9-10 of each 10-year term)
    Dr. Lewis calendars all maintenance deadlines at registration — missed deadlines cancel the registration
    
TRADEMARK MONITORING:
  Active monitoring is required to preserve rights:
    If the mark holder fails to police infringement, the mark can become generic or unenforceable
    Free monitoring: Google alerts for the brand name; periodic USPTO searches for similar filings
    Paid monitoring: Trademark monitoring services (Thomson CompuMark; Eagle Eye) — recommended for 
      high-value brands
    Frequency: Monthly Google alert review; quarterly USPTO filing review
    
  What to look for:
    Identical or similar marks in the same or related industries
    Domain registrations that use the mark (cybersquatting)
    Social media accounts impersonating the portfolio company
    Advertising that uses the mark without authorization

ENFORCEMENT STRATEGY:
  Not every infringement requires the same response:
  
  Low-level / non-commercial: Monitor; document; no immediate action required
  Commercial infringement that may cause confusion:
    Step 1: Cease-and-desist letter (IP counsel drafts)
    Step 2: If the C&D is ignored: USPTO opposition (if they have filed an application) or lawsuit
  Cybersquatting (domain name):
    UDRP (Uniform Domain Name Dispute Resolution Policy): Fast; low cost ($1,500-$4,000)
    Used for: Domain names registered in bad faith; famous marks; bad-faith use
    Alternative: Federal ACPA (Anti-Cybersquatting Consumer Protection Act) lawsuit — more costly
  Social media impersonation:
    Report to the platform directly (Twitter, Instagram, LinkedIn have impersonation policies)
    Platform takedown is usually faster and cheaper than legal action
    
BRAND LICENSING:
  When the mark is licensed to third parties (co-branding; distribution):
    License agreement must: Define authorized uses; quality control provisions (required for trademark validity)
    Quality control requirement: Licensor must maintain quality control over licensed uses or the license
      creates a "naked license" — which can cause the mark to be invalidated
    Dr. Lewis reviews any brand license before execution
```

## Output Format

```markdown
# Brand Protection Status — [Entity]
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## Trademark Registration Status

| Mark | Class(es) | Status | Registration # | Maintenance Due | Filing Date |
|------|----------|--------|---------------|----------------|------------|
| [Mark name] | [44] | Registered ® | [US #] | [Yr 5-6 declaration] | [Date] |
| [Logo] | [35, 38] | Application pending ™ | [App #] | — | [Date] |
| [Tagline] | Not yet filed | ™ (common law only) | — | File recommended | — |

---

## Monitoring Activity

| Period | Platform | Finding | Action |
|--------|----------|---------|--------|
| [Month YYYY] | USPTO | No new conflicting applications | None required |
| [Month YYYY] | Google | [Competitor site using similar name] | C&D letter sent |
| [Month YYYY] | Domain | [Cybersquatter registered marksimilar.com] | UDRP filed |

---

## Active Brand Threats

| Threat | Nature | Status | Recommended Action |
|--------|--------|--------|-------------------|
| [Competitor using "AllevioHealth"] | Commercial use; same class | Active | C&D letter pending |

---

## Next Actions

| Action | Priority | Due | Owner |
|--------|---------|-----|-------|
| File Section 8/15 declaration for [mark] | 🔴 Required by [date] | [Date] | IP counsel + Dr. Lewis |
| Expand registration to Class [X] for [entity] | 🟡 Recommended | [Date] | IP counsel |
```

## Output Contract
- Register before you invest — the time to do a trademark clearance search and file an application is before the brand is launched, printed on business cards, built into the website, and promoted to clients; discovering a conflict after $200K in brand investment is expensive; discovering a conflict before a name is chosen costs $1,500 in IP counsel fees; Dr. Lewis ensures new brands go through clearance before any significant investment is made in the name
- Calendar all maintenance deadlines at registration — a registered trademark that misses its Section 8 declaration (years 5-6) or its 10-year renewal is automatically cancelled; the USPTO provides no grace period reminders; IP counsel may send reminders if on retainer, but this is not guaranteed; Dr. Lewis adds all trademark maintenance deadlines to the compliance calendar at the time of registration; the alert is set 12 months before the deadline; IP counsel handles the actual filings
- Enforcement must be proportionate but consistent — failing to enforce against known infringers can weaken trademark rights; but suing every small business that uses a remotely similar name is expensive and reputationally damaging; Dr. Lewis assesses each infringement using a proportionality framework: Is the infringer commercial? Is there actual or likely consumer confusion? What is the harm? For low-level or non-commercial use, monitoring is appropriate; for commercial competitors in the same space, enforcement is appropriate; for cybersquatters, UDRP is the proportionate first step
- HITL required: Dr. Lewis monitors and manages; IP counsel required for trademark clearance searches, USPTO filings, maintenance filings, C&D letters, and enforcement actions; Matt Mathison approves any enforcement action that involves litigation (cost and reputational implications); CEO provides business context for brand decisions (which marks are most valuable; which potential infringers are actual competitors); Dr. Lewis does not file trademark applications directly — IP counsel files; Dr. Lewis tracks and manages the program

## System Dependencies
- **Reads from:** IP asset inventory (legal-ip-asset-manager — all registered trademarks with maintenance deadlines); USPTO TESS database (monitoring new conflicting filings); Google alerts (monitoring commercial uses of the marks); domain registrar searches (cybersquatting monitoring); prior trademark monitoring reports; cease-and-desist records (enforcement history); brand guidelines (Context/Brand/<Entity>/ — authorized uses of the mark)
- **Writes to:** Trademark registration tracker (SharePoint/Legal/<Company>/IP/Trademarks/Trademark_Tracker.xlsx — all marks; registration dates; maintenance deadlines); monitoring log (monthly entries); enforcement action records; UDRP filings; Matt Mathison IP briefings for enforcement actions
- **HITL Required:** Dr. Lewis monitors and manages; IP counsel for all USPTO filings, maintenance, C&D letters, and UDRP proceedings; Matt Mathison approves enforcement actions involving litigation; CEO determines which brand assets are business-critical (prioritizes registration investment); Dr. Lewis does not draft or send C&D letters without IP counsel review; Dr. Lewis does not file USPTO filings directly — IP counsel files under their bar number

## Test Cases
1. **Golden path:** Annual brand IP audit for Allevio → Dr. Lewis reviews the trademark tracker: 2 registered marks (Allevio word mark — Class 44; Allevio logo — Class 44); both current; Section 8/15 declarations due in 8 months for the word mark — calendar alert already set; no conflicting applications in the last 12 months per quarterly USPTO review; Google alerts: one mention of "Allevio" in a non-competing Arizona healthcare blog (educational content; no commercial use; no action required); domain monitoring: allevi0.com (number zero instead of letter o) registered — check for bad faith redirect; if redirecting to competitor: UDRP; if parked: monitor; Recommendation: File in Class 36 (insurance-adjacent) before exit to strengthen the registration breadth; IP counsel to assess; all items current; audit report filed
2. **Edge case:** Column6 discovers that a startup company in Dallas is using the name "Column7" for a competing connected TV advertising platform, with a very similar logo → Dr. Lewis assesses: "This is a potential infringement situation. 'Column7' is confusingly similar to 'Column6' in the same industry (CTV advertising); the logo is reportedly similar; likelihood of consumer confusion is plausible. However, 'Column7' is not identical and consumers may distinguish them by number. Next steps: (1) IP counsel conducts a comprehensive search for Column7's trademark applications and registrations; (2) If they have filed a trademark application: file an opposition at the USPTO (90 days after publication); (3) Assess whether to send a C&D letter; (4) Gather evidence of actual consumer confusion if any exists (sales inquiries misdirected; social media tags; industry press confusion). Matt Mathison briefed; IP counsel engaged." IP counsel advises: C&D letter appropriate; sent; Column7 agrees to rebrand; no litigation needed
3. **Adversarial:** A cybersquatter has registered hive-partners.com, hivepartners.net, and hivepartner.com and is pointing them at a competitor's website → Dr. Lewis: "This is a cybersquatting situation with clear bad faith — the domains are confusingly similar to HIVE Partners' name; they are being actively redirected to a competitor, which is commercial use; this is textbook ICANN UDRP bad faith. UDRP filing recommended: (1) IP counsel files a UDRP complaint with ICANN; (2) Cost: ~$3,000-4,000; (3) Timeline: 60-90 days; (4) Remedy: Transfer of the infringing domains to HIVE. Simultaneously: (a) Send a cease-and-desist letter to the registrant (if identifiable from WHOIS); (b) Notify the competitor's website to remove the redirects (they may not be aware their competitor is squatting on HIVE's brand). The UDRP proceeding is the faster and more efficient remedy than federal ACPA litigation. Matt Mathison briefed." UDRP filed; all 3 domains transferred to HIVE within 90 days

## Audit Log
All trademark registrations retained permanently (USPTO registration certificates). Maintenance filing records retained permanently. Monitoring log maintained monthly. C&D letters and responses retained. UDRP filings and decisions retained. Brand licensing agreements retained. Matt Mathison enforcement approvals retained. IP counsel engagement records retained.

## Deprecation
Retire when each portfolio company has IP counsel on an annual retainer who manages the full trademark program — with Dr. Lewis reviewing the portfolio-level brand protection strategy and Matt Mathison approving enforcement actions above the litigation threshold.
