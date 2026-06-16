---
name: ops-vendor-onboarding
description: "Onboard a newly selected vendor into operations. Use when the user says 'onboard a vendor', 'vendor onboarding', 'set up a new vendor', 'new vendor setup', 'vendor setup checklist', 'vendor activation', 'add a vendor', 'get a vendor started', 'vendor intake', 'new supplier setup', 'vendor paperwork', 'vendor W-9', 'vendor BAA', 'vendor bill.com setup', or 'vendor contract signed, now what'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--vendor <vendor name>] [--entity <company name>] [--type <SaaS|service|supplier|clinical>]"
---

# Ops Vendor Onboarding

Execute the vendor onboarding process at MBL portfolio companies — completing all required administrative, legal, compliance, and system setup steps after a vendor has been selected and before the first invoice is paid or service begins. Vendor onboarding is the bridge between the procurement decision (ops-procurement-manager) and active vendor management (ops-vendor-manager). Skipping or rushing this process is how vendors get paid without W-9s on file, how PHI flows without BAAs, and how service begins without a signed contract.

## When to Use
- A procurement decision has been made and the vendor needs to be set up
- A contract has been signed and the vendor needs to be activated in systems
- An existing vendor was never formally onboarded (compliance catch-up)
- Allevio is adding any vendor who will touch PHI

## Vendor Onboarding Framework

```
Onboarding requirements by vendor type:
  All vendors (any type):
    W-9 (or W-8BEN for foreign vendors): Required before first payment — non-negotiable
    Signed contract or agreement: Must be executed before service begins
    Bill.com vendor setup: Record created; payment method configured; W-9 attached
    QuickBooks vendor record: Created and mapped to correct expense account
    Primary contact: Name, email, phone for both operations and accounts payable

  SaaS/Technology vendors:
    Admin access credentials: Dr. Lewis or designated admin provisioned as owner
    SSO/SAML integration: If applicable to M365 environment
    API keys/tokens: Stored in password manager (never in plaintext documents)
    Security review: SOC 2 confirmation; data handling assessment
    BAA (if applicable at Allevio): Required before PHI access — see below

  Service vendors (consultants, agencies, contractors):
    Scope of work document: Even for informal engagements — what are they doing?
    Insurance certificates (COI): GL and professional liability per contract requirements
    Non-disclosure agreement (NDA): For vendors who will see confidential business information
    Payment terms: Net 30 standard unless negotiated otherwise

  Healthcare-specific (Allevio — any vendor who may access PHI):
    BAA (Business Associate Agreement): REQUIRED before any PHI exposure — no exceptions
    HIPAA compliance confirmation: Vendor confirms HIPAA policies and training
    Access logging: Vendor's system must log all PHI access
    PHI handling procedures: How does the vendor handle, store, and destroy PHI?
    
    Zero-tolerance rule: If the vendor cannot sign a BAA, they cannot access PHI at Allevio.
    If PHI access is necessary for the vendor's function and they won't sign a BAA, find a different vendor.

Onboarding timeline targets:
  Emergency vendor (operational necessity): 48 hours — compressed but still compliant
  Standard vendor: 5-7 business days
  Clinical vendor at Allevio (PHI access): 10+ business days — BAA negotiation may take time
```

## Output Format

```markdown
# Vendor Onboarding Checklist — <Vendor Name>
**Company:** <Entity> | **Vendor type:** [SaaS / Service / Supplier / Clinical]
**Contract signed:** [Date] | **Service start target:** [Date]
**Prepared by:** Dr. John Lewis | **Date:** [Date]
**PHI access (Allevio):** [Yes — BAA required / No]

---

## Pre-Service Blockers (nothing starts until these are complete)

- [ ] **W-9 received** — [Date received / Requested on: Date]
- [ ] **Contract/agreement signed** — [Date / Reference: contract file location]
- [ ] **BAA signed (Allevio — PHI vendors)** — [Date / Reference / N/A]

🔴 **Service must not begin until all pre-service blockers are cleared.**

---

## Administrative Setup

### Bill.com
- [ ] Vendor record created in Bill.com
- [ ] Legal name matches W-9 exactly
- [ ] Tax ID (EIN/SSN) entered
- [ ] Payment method configured: [ACH / Check / Credit card]
- [ ] W-9 PDF attached to vendor record
- [ ] First invoice routed to Dr. Lewis for approval

### QuickBooks
- [ ] Vendor record created in QuickBooks
- [ ] Mapped to expense account: [Account name]
- [ ] Vendor tier designated: [Tier 1 / Tier 2 / Tier 3]
- [ ] Annual spend estimate recorded for tier tracking

### Vendor Register
- [ ] Added to vendor register (SharePoint/Ops/<Company>/Vendors/)
- [ ] Contract location recorded: [SharePoint path]
- [ ] Contract expiration date: [Date]
- [ ] Renewal notice lead time set: [90 days before expiration] — calendar reminder created
- [ ] BAA location recorded (if applicable): [SharePoint path]

---

## Contacts

| Role | Name | Email | Phone | Notes |
|------|------|-------|-------|-------|
| Primary account manager | [Name] | [Email] | [Phone] | |
| Accounts payable / invoicing | [Name] | [Email] | | Invoice submission email |
| Technical/IT contact | [Name] | | | For SaaS/IT vendors |
| Escalation contact | [Name] | | | For SLA breaches |

---

## Technology Setup (SaaS/IT vendors)

- [ ] Admin account created under Dr. Lewis (email: jlewis@mblpartners.com)
- [ ] SSO configured (if M365 integration available)
- [ ] API keys stored in password manager: [1Password / Bitwarden / Vault location]
- [ ] User accounts provisioned for: [List staff names]
- [ ] Role permissions configured: [Admin / Standard / Read-only by role]
- [ ] Security assessment: SOC 2 Type II confirmed — [Document location / Not applicable]
- [ ] Data retention and deletion policy confirmed: [Vendor's policy confirmed / Location]

---

## Compliance (complete all that apply)

**For all vendors:**
- [ ] NDA in place: [Yes — [Date] / Not required for this vendor type]
- [ ] COI received (service vendors): [Date / Not applicable]

**Allevio PHI vendors only:**
- [ ] BAA signed — attached to vendor record
- [ ] Vendor HIPAA training policy confirmed (vendor confirms staff are HIPAA-trained)
- [ ] PHI access logging confirmed (vendor can produce audit logs of PHI access)
- [ ] PHI destruction/return process confirmed (what happens when relationship ends)
- [ ] Integration compliance reviewed (ops-integration-mapper — PHI flow documented)

---

## Onboarding Complete Confirmation

- [ ] All pre-service blockers cleared
- [ ] All administrative setup complete
- [ ] Contacts recorded
- [ ] Technology provisioned (if applicable)
- [ ] Compliance complete
- [ ] Vendor scorecard baseline set (ops-vendor-scorecard — Tier 1/2 vendors)
- [ ] Service start confirmed with vendor: [Date]

**Onboarding complete date:** [Date] | **Dr. Lewis sign-off:** ✅

---

## Matt Mathison Notification (Tier 1 vendors or >$50K annual spend)

[Vendor name] onboarded at [Company] — [Service type] at $[X]/year. Contract term: [Term]. [BAA in place: Yes / N/A]. Service begins [Date].
```

## Output Contract
- W-9 before first payment — no exceptions — this is an IRS requirement; the first invoice arrives, and the impulse is to pay it promptly; the rule is: no payment without a W-9 on file; the W-9 is requested as part of onboarding, not after the first invoice; Dr. Lewis does not approve payments in Bill.com to vendors without a W-9 attached to the vendor record
- BAA before any PHI access — this is the most important compliance requirement at Allevio; a vendor who touches PHI without a signed BAA creates HIPAA liability regardless of how good their actual security practices are; the BAA is negotiated as part of the selection process (ops-procurement-manager) and signed before the contract executes; if the BAA is still being negotiated, service doesn't start
- Contract before service — a vendor relationship that begins on a handshake and a verbal agreement is a vendor relationship without enforceable terms; the contract doesn't need to be a 40-page agreement — for smaller vendors a one-page MSA or a signed proposal/SOW is sufficient; the key is that there is a signed document that defines scope, price, term, and governing terms before work begins
- System setup completeness — admin access, API keys, and user permissions are configured at onboarding, not as needed; a SaaS tool where only one person has admin access is a business continuity risk (what if that person leaves?); Dr. Lewis is always provisioned as an admin; API keys are stored in the password manager, not in a personal email or document
- HITL required: Dr. Lewis owns and signs off on all vendor onboarding; W-9 verification by Dr. Lewis before Bill.com approval; BAA review by Dr. Lewis + attorney for complex agreements (Allevio); Matt Mathison notified for Tier 1 vendors or >$50K annual spend; system admin access for SaaS vendors provisioned under Dr. Lewis's oversight; service cannot start until Dr. Lewis signs off

## System Dependencies
- **Reads from:** Contract (from ops-procurement-manager), vendor W-9, BAA (Allevio — if applicable), insurance certificate, prior security assessment
- **Writes to:** Bill.com vendor record (W-9, payment method, tier); QuickBooks vendor record; vendor register (SharePoint/Ops/<Company>/Vendors/); password manager (API keys, credentials); integration map (ops-integration-mapper — if PHI or system integration); renewal calendar reminder
- **HITL Required:** Dr. Lewis signs off on completion; W-9 verification by Dr. Lewis; BAA review for complex agreements; Matt Mathison notified for Tier 1 / >$50K; service start authorized by Dr. Lewis

## Test Cases
1. **Golden path:** Allevio adding a new medical billing consultant ($36K/year service vendor, Tier 2, accesses patient records) → W-9 requested Day 1; BAA required (accesses PHI); BAA sent to vendor Day 1; contract reviewed by Dr. Lewis (scope, IP, confidentiality, data handling); BAA returned signed Day 5; contract signed Day 6; Bill.com: vendor created, W-9 attached, payment method ACH; QuickBooks: vendor mapped to Professional Services — Medical Billing; NDA in place (included in BAA); COI received (professional liability $1M); integration map updated (PHI flow: Allevio → consultant's system — BAA: ✅); contacts recorded; onboarding complete Day 7; service begins Day 8; Matt Mathison notified (Tier 2 clinical vendor)
2. **Edge case:** An existing vendor has been sending invoices for 6 months and there's no W-9 on file → Stop the next payment immediately; request W-9 from vendor urgently; if the vendor is a contractor (not a corporation), check if 1099 reporting is required for amounts paid; work with the controller to address any prior-year tax reporting gaps; set up the vendor record properly in Bill.com and QuickBooks retroactively; document the gap and use it to tighten the new vendor setup process going forward
3. **Adversarial:** "We just need to start using this tool ASAP — we can do the paperwork later" → The "paperwork" is a W-9 (IRS requirement), a contract (protection for both sides), and possibly a BAA (HIPAA regulatory requirement); "later" doesn't apply to regulatory requirements; respond: "I'll have the vendor record set up and the W-9 collected by end of day. The contract can be a one-page signed proposal. If there's PHI involved (Allevio), we need the BAA before any data flows — that's non-negotiable. Everything else can move fast. Let me make some calls."

## Audit Log
All vendor onboarding records retained by vendor and company. W-9 documents retained permanently (IRS requirement). BAAs retained permanently (HIPAA). Contract files retained. COI records retained. API credentials stored in password manager only (never in audit logs). Matt Mathison notifications retained.

## Deprecation
Retire when portfolio companies have accounts payable or procurement coordinators who own vendor onboarding — collecting documentation, setting up vendor records, and confirming compliance requirements — with Dr. Lewis reviewing completeness before service authorization.
