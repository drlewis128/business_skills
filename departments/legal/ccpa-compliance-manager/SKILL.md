---
name: ccpa-compliance-manager
description: "Manage CCPA/CPRA compliance for California data privacy. Use when the user says 'CCPA', 'CPRA', 'California privacy', 'California consumer rights', 'do not sell my data', 'opt-out of sale', 'California data privacy', 'CCPA compliance', 'consumer data rights', or 'California privacy law'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <assess|dsr|audit>]"
---

# CCPA/CPRA Compliance Manager

Manage California Consumer Privacy Act (CCPA) and California Privacy Rights Act (CPRA) compliance. CCPA/CPRA applies to businesses that meet threshold criteria AND do business in California, collect California consumers' personal information, and meet at least one of: $25M+ annual gross revenues, buy/sell/share personal data of 100,000+ California consumers annually, or derive 50%+ of annual revenues from selling/sharing California consumers' personal information. The California AG can impose fines of $2,500 per unintentional violation and $7,500 per intentional violation. CPRA (effective Jan 2023) added stricter requirements and created the California Privacy Protection Agency (CPPA) to enforce.

## When to Use
- Determining if CCPA/CPRA applies to a portfolio entity
- Responding to a California Consumer Request (access, deletion, opt-out)
- Annual CCPA compliance audit
- Privacy policy update to include CCPA disclosures
- Assessing data practices for CPRA sensitive personal information requirements

## Applicability Threshold Test

```
CCPA applies if the business:
  ✅ Does business in California (has California customers, employees, or users)
  
  AND meets at least ONE of:
  ✅ Annual gross revenues > $25 million
  ✅ Buys, sells, receives, or shares personal info of 100,000+ California 
     consumers or households annually
  ✅ Derives 50%+ of annual revenues from selling California consumers' 
     personal information
```

## Consumer Rights Under CCPA/CPRA

| Right | What Consumers Can Request | Response Deadline |
|-------|--------------------------|----------------|
| **Right to Know** | What personal info is collected, how it's used, who it's shared with | 45 days (+ 45-day extension if needed) |
| **Right to Delete** | Delete personal information (with exceptions) | 45 days |
| **Right to Opt-Out of Sale/Sharing** | Stop sale or sharing of personal info for cross-context behavioral advertising | Immediately |
| **Right to Non-Discrimination** | Cannot be discriminated against for exercising rights | Ongoing |
| **Right to Correct** (CPRA) | Correct inaccurate personal information | 45 days |
| **Right to Limit Use of Sensitive PI** (CPRA) | Limit use of sensitive personal information | Ongoing |
| **Right to Data Portability** (CPRA) | Receive personal info in portable format | 45 days |

## Output Format

```markdown
# CCPA/CPRA Compliance Assessment — <Entity>
**Date:** <date> | **Entity:** <name>
**California presence:** <describe — customers, employees, operations>
**Prepared by:** Dr. John Lewis / Legal counsel

---

## CCPA Applicability

| Threshold | Meets? | Basis |
|---------|--------|-------|
| Does business in California? | Yes / No | <basis> |
| Annual revenues > $25M? | Yes / No / Unknown | |
| 100K+ California consumers' data? | Yes / No / Unknown | |
| 50%+ revenue from selling CA data? | Yes / No | |

**CCPA/CPRA Applicability Verdict:** Applies / Does Not Apply / Assess Further

---

## Compliance Gap Assessment

| Requirement | Status | Gap | Action |
|-----------|--------|-----|--------|
| Privacy policy includes CCPA disclosures | ✅ / ❌ | | Add categories of PI collected, sold, shared |
| "Do Not Sell or Share My Personal Information" link | ✅ / ❌ | | Add opt-out link to website footer |
| Consumer request intake process | ✅ / ❌ | | Designate email/form for consumer requests |
| Consumer request response within 45 days | ✅ / ❌ | | Assign owner; log all requests |
| Data inventory — what PI is collected | 🟡 Partial | Not fully documented | Complete data mapping |
| Sensitive PI handling (CPRA) | ❌ | Not assessed | Identify sensitive PI; limit use |
| Service provider contracts with CCPA terms | 🟡 | Some vendors | Add CCPA addenda to service provider contracts |
| Employee/applicant privacy notices (CPRA) | ❌ | No HR privacy notice | Draft and publish HR Privacy Notice |

---

## Data Inventory (Categories of Personal Information)

| PI Category | Collected? | Source | Purpose | Sold/Shared? | Retention |
|-----------|---------|--------|---------|------------|---------|
| Contact info (name, email, phone) | ✅ | Website, CRM | Marketing, operations | Shared (email platform) | Until opt-out + 1 year |
| Professional info (title, company) | ✅ | CRM | Business development | No | Active relationship |
| Geolocation (IP-derived) | ✅ | Website analytics | Analytics | Shared (Google Analytics) | 26 months |
| Sensitive PI (if any) | ❌ | — | — | — | — |

---

## Consumer Request Log

| Request ID | Type | Request Date | Due Date | Status | Notes |
|-----------|------|------------|---------|--------|-------|
| CCR-001 | Delete | <date> | <date + 45 days> | Complete | |
| CCR-002 | Know | <date> | <date + 45 days> | In progress | |

---

## Vendor Contracts — CCPA Service Provider Terms

| Vendor | Data Shared | CCPA Addendum? | Action |
|--------|-----------|--------------|--------|
| GoHighLevel | Contact, behavioral | ❌ Missing | Add CCPA service provider addendum |
| Google Analytics | Geolocation, behavioral | ✅ | Data Processing Addendum covers CCPA |
| Email platform | Contact info | ❌ Missing | Add CCPA terms |
```

## Output Contract
- Applicability test always first — CCPA is not universal; confirm threshold before building a compliance program
- "Do Not Sell or Share" link always assessed for websites — most visible CCPA compliance indicator
- Consumer request response log always maintained — California AG looks for process compliance, not just policy
- Service provider vs. third party distinction always evaluated — service providers (limited use) vs. third parties (data can be sold/shared) changes requirements
- HITL required: Dr. Lewis reviews compliance assessment; Legal counsel interprets CCPA requirements; consumer requests reviewed by Legal before responding to deletion requests involving contractual relationships

## System Dependencies
- **Reads from:** Website privacy policy, data inventory, marketing system (GoHighLevel, email platform), CRM (provided)
- **Writes to:** CCPA compliance assessment and consumer request log (maintained by Legal/compliance)
- **HITL Required:** Legal counsel for applicability determination and consumer request responses; Dr. Lewis oversees; Matt Mathison informed of significant CCPA fines risk

## Test Cases
1. **Golden path:** MBL Partners CCPA assessment → revenues under $25M threshold but California contacts in GoHighLevel above 100K — CCPA applies; privacy policy missing CCPA disclosures (update); no "Do Not Sell" link (add to footer); GoHighLevel and email vendor missing CCPA addenda (execute within 30 days); consumer request process established
2. **Edge case:** California consumer submits deletion request for GoHighLevel marketing contact → verify identity (California resident), assess if there's a legal retention reason (no active business relationship) → delete from GoHighLevel and email platform, document within 45 days
3. **Adversarial:** Marketing team wants to "sell" California contact data to a partner for a campaign → "selling" personal information triggers full CCPA sale provisions — must offer opt-out, disclose in privacy policy, and classify partner as a third party; engage Legal before proceeding

## Audit Log
CCPA compliance assessments retained annually. Consumer request log maintained with response times. All requests and responses documented.

## Deprecation
Retire when entity deploys a privacy management platform (OneTrust, TrustArc) with automated consumer rights processing and CCPA consent management.
