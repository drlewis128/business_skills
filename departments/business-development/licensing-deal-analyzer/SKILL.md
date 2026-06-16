---
name: licensing-deal-analyzer
description: "Analyze a licensing deal or arrangement. Use when the user says 'licensing deal', 'license our technology', 'analyze a license agreement', 'intellectual property licensing', 'IP licensing', 'technology licensing', 'license our product', 'licensing revenue', 'royalty deal', 'license agreement review', or 'should we license this'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--role <licensor|licensee>] [--license-type <technology|brand|content|data>]"
---

# Licensing Deal Analyzer

Analyze a licensing deal — an arrangement where one party (licensor) grants another (licensee) the right to use intellectual property (technology, brand, content, data) in exchange for fees or royalties. Licensing is one of the most capital-efficient business models when done correctly: the licensor monetizes existing IP without additional production cost; the licensee avoids the time and cost of building the capability internally. But licensing agreements are legally complex and strategically consequential — a poorly structured license can create a competitor, undermine exclusivity, or generate royalties that don't keep pace with the value being transferred.

## When to Use
- A company or investor wants to license our technology/content for their platform
- We want to use another company's technology or content by licensing it rather than building
- A partnership is better structured as a license than a co-sell or referral
- Evaluating the licensing revenue potential for a piece of IP
- Reviewing a licensing agreement before signing

## License Types

```
Four main licensing types for MBL portfolio context:

1. Technology license: Rights to use software, algorithms, systems, or technical methodologies.
   Most common for portfolio companies with proprietary tech (Allevio RCM algorithms, 
   Column6 ad targeting IP, OpenFang agent framework).

2. Brand license: Rights to use a company's name, logo, or brand identity.
   Rarer for MBL portfolio; more common in consumer brands.

3. Content license: Rights to use proprietary data, content, or media.
   Relevant for Column6/Siprocal (media content rights).

4. Data license: Rights to use a company's proprietary dataset.
   High value; high legal sensitivity (privacy, HIPAA for Allevio).
```

## Output Format

```markdown
# Licensing Deal Analysis — <Licensor → Licensee>
**Our role:** Licensor / Licensee
**License type:** Technology / Brand / Content / Data
**IP being licensed:** <Description>
**Counterparty:** <Company name>
**Date:** <date> | **Prepared by:** Dr. John Lewis | **For:** Matt Mathison / CEO

---

## License Deal Overview

| Item | Detail |
|------|--------|
| What is being licensed | [Specific description of the IP] |
| Scope of use | [What specifically is the licensee permitted to do with it?] |
| Exclusivity | [Exclusive / Non-exclusive / Field-of-use exclusive] |
| Territory | [Geographic or market scope] |
| Term | [Duration] |
| Royalty / fee structure | [See economics below] |

---

## Strategic Rationale

**Why license vs. alternatives?**
- vs. selling the IP outright: [Retain ownership + recurring royalty vs. one-time payment]
- vs. building internally (if licensee): [Speed to market + cost vs. dependency on licensor]
- vs. referral or partnership: [License provides rights; referral provides leads — different purpose]

**Strategic benefit to us:**
[If licensor: recurring royalty revenue without production cost; market reach]
[If licensee: access to IP we can't build faster or cheaper ourselves; competitive advantage]

**Strategic risk to us:**
[If licensor: losing competitive advantage if licensee competes with us; IP leakage]
[If licensee: dependency on licensor; licensor can raise prices or exit]

---

## Economics Analysis

### Royalty / Fee Structure

| Fee structure | Detail | Our assessment |
|--------------|--------|---------------|
| Upfront license fee | $[X] | [Appropriate / High / Low] |
| Royalty rate | [X%] of licensee's revenue / $[X] per unit | [Appropriate for the IP value?] |
| Minimum annual royalty | $[X] | [Protects us if licensee underperforms] |
| Most-favored-nation (MFN) | [Yes — we can't offer better terms to others / No] | [If yes: constrains our flexibility] |
| Cap on total royalties payable | [$[X] / Unlimited] | [If capped: may undervalue IP over time] |

### Revenue Model (if we are the licensor)

| Scenario | Year 1 | Year 3 | Year 5 |
|---------|--------|--------|--------|
| Bear (licensee underperforms) | $[X] | $[X] | $[X] |
| Base | $[X] | $[X] | $[X] |
| Bull (licensee scales significantly) | $[X] | $[X] | $[X] |

**Economics verdict:** ✅ Attractive / ⚠️ Marginal / ❌ Unattractive — [key reason]

---

## IP Risk Assessment

| Risk | Assessment | Mitigation |
|------|-----------|-----------|
| Licensee creates competing product using our IP | [Low/Med/High] | Non-compete clause; field-of-use restrictions |
| Licensee shares or sublicenses our IP without permission | [Low/Med/High] | Sublicense prohibition in agreement; audit rights |
| Licensor's IP becomes our core dependency (if we're licensee) | [Low/Med/High] | Escrow of source code or methodology; alternative supplier |
| Improvements made during license term | [Who owns product improvements?] | Agreement must specify: "improvements to licensed IP are owned by licensor" |
| License invalidated if licensor's IP turns out to be infringing | [Low/Med/High] | IP warranty + indemnification from licensor |

---

## Agreement Key Terms

| Term | Our position | Non-negotiable? |
|------|-------------|----------------|
| IP warranty (licensor warrants they own the IP) | Required | Yes |
| Field of use (what the licensee can use it for) | Narrow: [specific use cases only] | Yes |
| Sublicensing | Prohibited without written consent | Yes |
| Audit rights | We can audit licensee's royalty calculations annually | Yes |
| Improvements | Licensor owns all improvements to base IP | Yes |
| Change of control | License may terminate if licensee is acquired by a competitor | Yes |
| Governing law | [State — preferably ours] | Negotiable |
| Dispute resolution | Arbitration preferred | Negotiable |
| Termination | 90-day notice; immediate for IP breach | Yes |
| Post-termination | Licensee must cease use of IP within 30 days | Yes |

---

## Recommendation

**Verdict:** ✅ Pursue / ⚠️ Pursue with modifications / ❌ Decline

**Key conditions:** [What must change before signing?]
**Next step:** [Draft term sheet / Request modifications / Decline with specific rationale]
**Legal priority:** [What specific legal expertise is needed? IP counsel? HIPAA counsel?]

---

## Matt Mathison Summary

**Licensing deal: [Licensor] → [Licensee] | [IP type]:** [1 sentence description]. Our role: [Licensor/Licensee]. Economics: Base case $[X]/year royalty / Year 1. Strategic fit: [Strong/Moderate/Weak]. Primary risk: [1 sentence]. Recommendation: [Pursue/Modify/Decline]. **Matt Mathison decision needed:** Approve pursuing licensing arrangement / Approve royalty structure / No action — Dr. Lewis managing
```

## Output Contract
- IP risk assessment always explicit — the most common licensing mistake is underestimating the risk of the licensee using the IP to compete or sublicense without permission; all four IP risk categories must be evaluated
- Audit rights always required — a licensor without audit rights has no way to verify that royalties are being calculated correctly; this is non-negotiable; no license agreement without audit rights
- Field-of-use restrictions always assessed — a broad license that allows the licensee to use our IP for anything creates the risk of competition; field-of-use should be as narrow as possible for the licensor
- Change of control always included — if the licensee is acquired by a competitor, the license agreement becomes a mechanism for the competitor to use our IP; the change of control clause must be addressed
- HITL required: Dr. Lewis analyzes; Matt Mathison approves any licensing arrangement (licensor or licensee role); IP counsel required for all licensing agreements; HIPAA counsel for any Allevio data licensing; no licensing agreement may be signed without legal review

## System Dependencies
- **Reads from:** IP inventory, prior licensing agreements, competitive analysis, financial model
- **Writes to:** Licensing deal analysis (SharePoint/BD/Licensing); agreement draft for legal review
- **HITL Required:** Dr. Lewis analyzes; Matt Mathison approves; IP counsel reviews; HIPAA counsel for data licenses; no signing without legal review

## Test Cases
1. **Golden path:** Column6/Siprocal licenses proprietary CTV targeting data to an ad tech platform → Licensor role; Data license: targeting segments built from CTV viewing patterns; Economics: $150K upfront + 8% of licensee's revenue attributed to campaigns using our data; minimum annual royalty $120K; field of use: CTV ad targeting only (not general advertising, not resale); audit rights: annual royalty audit; sublicensing: prohibited; Matt Mathison approved; legal reviewed and added data privacy warranty + CCPA compliance clause; signed; Year 1 royalties: $185K (above minimum); clean IP, no disputes; 3-year term with auto-renewal
2. **Edge case:** The licensee wants to sublicense the IP to their clients as part of their service offering → this is a significant expansion of the license scope; a sublicense means our IP is now in the hands of unknown third parties; evaluate whether to allow it (at a higher royalty) or prohibit it; if you allow sublicensing, require that all sublicenses have the same terms as the primary license and that we're notified of each sublicense; don't allow sublicensing without a specific written addendum and additional fees
3. **Adversarial:** A licensee claims the IP they licensed isn't performing as expected and they want to renegotiate the royalty downward → the license agreement licenses the right to use the IP, not the performance of the IP; if the IP isn't performing, that's a licensee execution issue, not a licensor obligation (unless we warranted specific performance); hold firm on the royalty; offer to help diagnose the implementation; if the licensee is using the IP incorrectly (common), offer training; don't renegotiate the royalty rate based on their performance

## Audit Log
Licensing deal analyses retained. Agreement terms and approval dates documented. Royalty calculations verified. Audit rights exercised annually and results retained. Sublicensing approvals logged. IP warranty claims documented.

## Deprecation
Retire when portfolio companies have dedicated IP counsel and business development teams who manage licensing as a standard revenue stream with their own licensing program management frameworks.
