---
name: legal-software-license-reviewer
description: "Review SaaS and software license agreements for MBL portfolio companies. Use when the user says 'software license', 'SaaS agreement', 'software agreement', 'EULA', 'end user license agreement', 'software subscription', 'software contract', 'tech contract', 'technology agreement', 'platform agreement', 'cloud agreement', 'API terms', 'terms of service', 'ToS', 'subscription agreement', 'data processing agreement', 'DPA', 'software renewal', 'software audit', 'license compliance', or 'software vendor'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--vendor <name>] [--action <review|renew|audit>] [--tier <enterprise|smb>]"
---

# Software License Reviewer

Review SaaS and software license agreements for MBL portfolio companies — identifying unfavorable data ownership, termination, and liability terms before a software subscription is signed. The SaaS model has fundamentally changed how companies acquire software: a platform that becomes mission-critical within 6 months of adoption has significant leverage at renewal; data portability provisions determine whether you can leave without losing your data; and the DPA (data processing agreement) determines what the vendor can do with your company's data. Dr. Lewis reviews material software agreements before signature.

## When to Use
- A portfolio company is signing a new SaaS platform subscription (>$12K annual)
- A software subscription is up for renewal — evaluate terms and price
- Annual software license audit — what are we paying? what do we own?
- A software vendor proposes an enterprise agreement with custom terms
- Assessing data portability and exit risk before adopting a new platform

## Software License Review Framework

```
SaaS AGREEMENT KEY PROVISIONS:

  DATA OWNERSHIP:
    Critical question: Who owns the data the company inputs into the platform?
    MBL's position: The company owns all of its data; the vendor receives only a license to process it
    Red flags:
      "Vendor may use anonymized data for product improvement" — acceptable IF data cannot be re-identified
      "Vendor owns all data generated on the platform" — REJECT
      "Vendor may share data with third parties for [purposes]" — review carefully
    Data portability: On termination, how do you get your data back?
      Minimum: Export functionality in a standard format (CSV; JSON; XML) available at termination
      Red flag: No export functionality; data deleted immediately on termination
      Best practice: 30-day post-termination access to export; data deleted after 90 days

  UPTIME AND SLA:
    Uptime guarantee: 99.9% (8.7 hours/year downtime) is the typical SaaS standard
      For mission-critical platforms: 99.95% or higher; or require 99.9% during business hours
    Exclusions from SLA: Third-party outages; customer-caused downtime — standard and acceptable
    Remedies: Service credits for downtime — typically 10-25% of monthly fees per incident
    For Tier 1 critical platforms: Service credit alone is not sufficient; include a termination right
      for repeated SLA failures (e.g., 3 incidents in 12 months)

  SUBSCRIPTION TERM AND RENEWAL:
    Monthly vs. annual: Monthly is more flexible; annual is cheaper; multi-year locks in price
    Auto-renewal: Flag and calendar the auto-renewal notice window
    Price escalation at renewal: Negotiate a cap (CPI or 5% whichever is less) at contract signing
      Not after the first year — after you're dependent on the platform, you have no leverage

  DATA SECURITY:
    SOC 2 Type II certification: The SaaS standard for security assurance; require it for Tier 1 vendors
    Encryption: Data encrypted at rest and in transit (TLS 1.2+; AES-256 at rest)
    Breach notification: Vendor must notify within 72 hours of a confirmed breach affecting company data
    Data location: Where is the data stored? (Relevant for HIPAA, CCPA, international data transfers)
    
  DATA PROCESSING AGREEMENT (DPA):
    Required when: The vendor processes any personal data (employee PII; customer data; member data)
    Allevio: DPA is required; HIPAA BAA is also required if the vendor processes PHI
    Column6: DPA required; CCPA data processing addendum required if California personal data
    HIVE: DPA for any personal data (employee records); UCPA if Utah personal data
    
    DPA contents:
      Subprocessor disclosure: What third parties does the vendor share data with?
      International transfer mechanisms: Standard Contractual Clauses (SCCs) for EU personal data
      Data subject rights: How does the vendor support data subject requests?
      Data retention and deletion: How long is data retained? When is it deleted?
      
  INTELLECTUAL PROPERTY:
    Customer IP: The company retains ownership of all data, content, and configurations in the platform
    Vendor IP: The vendor retains ownership of the platform; company gets a license to use it
    Custom development: If the vendor builds customizations — who owns them?
      MBL position: Customer owns custom code built for the customer; vendor gets a license to reuse
      Common compromise: Vendor retains IP but licenses it back royalty-free to customer
    
  TERMINATION:
    Termination for convenience: Most annual contracts allow termination at renewal only (not mid-term)
      Negotiate: 90-day termination for convenience right; important for avoiding vendor lock-in
    Termination for cause: Immediate termination for material breach after 30-day cure period
    Effect of termination: Data export period; payment for remaining term; auto-renewal shut-off
    
SOFTWARE LICENSE COMPLIANCE:
  Ensure the number of users/seats does not exceed the license terms
  Over-deployment creates audit risk (vendor discovery; retroactive licensing fees)
  Annual internal audit: Confirm actual usage vs. licensed seats
  For open source software: Review license type (GPL requires open-sourcing derivative works;
    MIT/Apache are permissive; AGPL is highest restriction for SaaS-based usage)
```

## Output Format

```markdown
# Software License Review — [Platform] | [Vendor]
**Entity:** [Company] | **Date reviewed:** [Date] | **Tier:** [1/2/3]
**Annual cost:** $[X]K | **Term:** [X months] | **Auto-renews:** [Date]
**Recommendation:** SIGN / NEGOTIATE / DO NOT SIGN

---

## Key Terms

| Provision | Current Terms | MBL Position | Status |
|-----------|--------------|-------------|--------|
| Data ownership | [Who owns company data] | Company owns all data | ✅ / ❌ |
| Data portability | [Export on termination?] | 30-day post-term export | ✅ / ❌ |
| Uptime SLA | [X]% | 99.9% with service credits | ✅ / ⚠️ |
| Price escalation | [CPI / uncapped] | Capped at 5% annually | ✅ / ❌ |
| Auto-renewal notice | [X] days | [Calendared date] | ✅ |
| DPA in place | [Yes/No] | Required | ✅ / ❌ — add |
| SOC 2 Type II | [Yes/No] | Required for Tier 1 | ✅ / ⚠️ |

---

## Risk Assessment

| Risk | Level | Notes |
|------|-------|-------|
| Vendor lock-in | High / Medium / Low | [Data portability available?] |
| Data privacy compliance | [Status] | [BAA/DPA needed?] |
| Price risk at renewal | [Level] | [Escalation cap: Yes/No] |

---

## Recommendation

**[SIGN / NEGOTIATE X items first / DO NOT SIGN]**
[Rationale + most important issue if negotiating]
```

## Output Contract
- Data portability before signing, not at exit — the best time to negotiate data export rights is before the company is dependent on the platform; after 18 months of using a CRM with thousands of deal records and no easy export path, the negotiating position is essentially zero (the company cannot easily leave); Dr. Lewis confirms data portability before signing: can we export all of our data in a standard format without paying an additional fee? the answer must be yes, or the risk of vendor lock-in is material
- DPA and BAA are not optional for Allevio — any SaaS vendor that processes Allevio member data or PHI requires both a HIPAA-compliant BAA and a data processing agreement; many software vendors have these documents ready; Dr. Lewis requests them before signature; if the vendor does not have a BAA template, they may not be suitable for use with PHI; Dr. Lewis does not allow Allevio to use any platform that processes PHI without a signed BAA — this is a HIPAA compliance requirement, not a negotiating preference
- Software audit is annual — the annual software license audit compares what the company is paying (from QuickBooks — all software subscriptions in the last 12 months) against what it is actually using (login activity; feature usage); zombie subscriptions (paid for but unused) are eliminated; over-licensed seats are identified before the vendor discovers them in an audit; under-licensed situations are corrected before the annual renewal (when the vendor will audit usage and charge retroactively)
- HITL required: Dr. Lewis reviews material software agreements (>$12K annual); CEO approves; Matt Mathison approves for agreements >$50K annual; HIPAA BAA review by Dr. Lewis mandatory for Allevio PHI systems; DPA review by Dr. Lewis for any personal data processing; Dr. Lewis does not sign software agreements on behalf of portfolio companies — CEO signs; software subscription renewals below $12K are handled by the CEO without Dr. Lewis review unless they have unusual terms

## System Dependencies
- **Reads from:** Software vendor's agreement (terms of service, enterprise license agreement, or custom contract); DPA (if offered by vendor); SOC 2 Type II report summary (if available); vendor's subprocessor list; prior agreements with the same vendor (consistency check); QuickBooks (annual software spend tracking); legal-hipaa-compliance-manager (Allevio PHI systems — BAA requirement); legal-data-privacy-manager (CCPA/DPA requirements for Column6)
- **Writes to:** Software license review memo; DPA/BAA execution records (SharePoint/Legal/<Company>/Contracts/Software/[Vendor]_DPA_[Date].pdf); software license tracker (SharePoint/Legal/<Company>/Contracts/SoftwareTracker.xlsx — annual cost; renewal date; license type; auto-renewal notice deadline); compliance calendar entries (auto-renewal alerts); annual software audit report
- **HITL Required:** Dr. Lewis reviews; CEO approves and signs; Matt Mathison approves >$50K annual; DPA and BAA must be reviewed by Dr. Lewis and signed by CEO before Allevio PHI or Column6 California personal data is loaded into the platform; Dr. Lewis does not authorize data upload into a platform until the DPA/BAA is fully executed; software agreements are signed by the CEO, not Dr. Lewis

## Test Cases
1. **Golden path:** Allevio is adopting a new care coordination platform — $48K/year enterprise license → Dr. Lewis reviews: Data ownership: Company retains ownership of all member data ✅; Data portability: Full CSV export available at termination; 60-day post-termination access ✅; Uptime: 99.9% SLA; 15% monthly credit for non-performance; termination right after 3 failures in 12 months ✅; Price escalation: CPI capped at 5% annually ✅; BAA: Template provided; HIPAA-compliant; Dr. Lewis reviews and confirms adequacy ✅; DPA: Included in the enterprise agreement ✅; SOC 2 Type II: Current report provided ✅; Auto-renewal: 60-day notice to terminate; calendared immediately ✅; Matt Mathison approves ($48K > $50K threshold — slightly under; CEO approval sufficient; Dr. Lewis briefs Matt Mathison as a courtesy); BAA executed; platform agreement signed; license tracker updated; BAA filed in HIPAA records
2. **Edge case:** Column6 is evaluating a new data enrichment platform — the vendor's terms say "vendor may use customer data to train AI models" → Dr. Lewis flags immediately: "This provision gives the vendor a license to use Column6's audience data — which includes advertisers' first-party data, lookalike models, and targeting algorithms — to train their AI systems. This is a significant IP risk: (1) Column6's proprietary data becomes training data for the vendor's product, which the vendor may sell to competitors; (2) The advertiser clients whose data is processed may not have consented to this use; (3) CCPA likely requires disclosure of this use to California residents in the data. Recommendation: Reject this provision. Negotiate for: 'Vendor may not use Customer Data to train or improve any AI model, algorithm, or product without Customer's express written consent.' If the vendor refuses to negotiate this out, do not sign — the IP risk is too high." Vendor offered a "no AI training" opt-out in the enterprise agreement; opt-out executed; provision removed; agreement signed with modified data use terms
3. **Adversarial:** HIVE's accounting software vendor attempts to audit HIVE's license compliance — claims HIVE has been running 5 concurrent users on a 3-user license → Dr. Lewis responds: "Pull the license agreement and confirm the license terms: what exactly is a 'user' and what counts as concurrent use? Many SMB software vendors define 'users' as named users (total accounts), not concurrent users. If the license is for 3 named users and HIVE has 5 named accounts, that is a compliance gap. If the license is for 3 concurrent users and HIVE rarely has more than 3 simultaneous users, there may be no gap. Before acknowledging any liability: (1) Read the license definition; (2) Pull HIVE's user list and concurrent usage logs from the last 12 months; (3) If there is a gap, quantify it: how many additional users, for how many months, at what rate? This becomes the negotiating position for a retroactive true-up. Do not agree to any fee without Dr. Lewis's review of the license and the usage data." License reviewed: named user model; 3-user license; 5 active accounts; 2 accounts over license; retroactive fee calculated at 2 users × 12 months × monthly rate; negotiated settlement for a 12-month retroactive true-up plus a 5-user enterprise upgrade

## Audit Log
All software license agreements retained by vendor and date. DPAs and BAAs retained permanently (for HIPAA 6-year retention; others 5 years). SOC 2 reports retained by year. Auto-renewal notice and decision records retained. Software audit reports retained by year. Retroactive true-up records retained. Annual software tracker maintained.

## Deprecation
Retire when each portfolio company has in-house IT and legal support who manage software contracts — with Dr. Lewis reviewing Tier 1 enterprise agreements and Matt Mathison approving contracts >$50K annually.
