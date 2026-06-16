---
name: partner-agreement-reviewer
description: "Review a partner agreement before signing. Use when the user says 'review a partner agreement', 'check this partnership contract', 'partner agreement review', 'partnership contract checklist', 'what should be in a partner agreement', 'review this referral agreement', 'partnership MOU review', 'check the partner terms', 'partnership agreement red flags', or 'partner contract due diligence'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--agreement-type <referral|co-sell|technology|distribution|MOU>] [--party <our role: recipient|offeror>]"
---

# Partner Agreement Reviewer

Review a partner agreement before signing — checking for missing protections, unfavorable terms, and deal-killers that are easy to miss when you're excited about a new partnership. Partner agreements are where partnerships succeed or fail: a well-structured agreement creates clarity, accountability, and remedies when things go wrong; a poorly structured one creates disputes, unenforceable obligations, and liability. This skill is a pre-legal-review checklist, not a legal opinion.

**Critical:** This skill identifies issues for legal counsel to review. It does not replace legal counsel. All partner agreements must be reviewed by an attorney before signing.

## When to Use
- Reviewing a draft partner agreement received from a prospective partner
- Preparing a partner agreement template to send to a prospect
- A partner is pushing to sign quickly — need to do a rapid risk check first
- Auditing an existing partner agreement before renewal
- Identifying non-standard terms that need Matt Mathison's decision before proceeding

## Agreement Components Checklist

```
Every partner agreement should contain:

1. Definitions: What counts as a "qualified referral"? What is "closed revenue"?
   Undefined terms become disputes.

2. Revenue model: How are fees calculated? When are they paid? What triggers payment?
   How are attribution disputes resolved?

3. Obligations: What exactly does each party commit to? (Vague obligations = unenforceable)

4. Exclusivity: Does this agreement prevent us from working with similar partners?
   Or prevent them from working with our competitors?

5. IP and data: Who owns the customer relationship? What data can the partner share?
   PHI/PII protections for regulated entities.

6. Term and renewal: How long does the agreement last? What happens at the end?
   Does it auto-renew?

7. Termination: What can each party terminate for? With how much notice?
   What happens to in-flight referrals at termination?

8. Liability and indemnification: What are the liability limits?
   Who is responsible if a referred customer sues?

9. Dispute resolution: How are disputes resolved? Which jurisdiction?

10. Governing law: Which state's law governs?
```

## Output Format

```markdown
# Partner Agreement Review — <Partner Name>
**Agreement type:** Referral / Co-sell / Technology / Distribution / MOU
**Our role:** Offering party / Receiving party / Mutual
**Date reviewed:** <date> | **Reviewed by:** Dr. John Lewis
**Status:** ✅ Ready for legal review | ⚠️ Issues to resolve first | ❌ Do not sign — major gaps

---

## TL;DR

**Overall assessment:** [1-2 sentences — what this agreement does well and what the primary risk is]
**Do not sign until:** [Specific issues that must be resolved — or "None — send to legal"]

---

## Component Checklist

| Component | Present | Assessment | Issue |
|-----------|---------|-----------|-------|
| Definitions — "qualified referral" defined | ✅ / ❌ | [Adequate/Vague/Missing] | [If missing: flag] |
| Revenue model — fee rate, calculation basis | ✅ / ❌ | [Clear/Ambiguous] | [Flag if ambiguous] |
| Payment timing and trigger | ✅ / ❌ | [Defined/Undefined] | |
| Attribution dispute resolution | ✅ / ❌ | [Present/Missing] | |
| Our obligations — specific and measurable | ✅ / ❌ | [Specific/Vague] | |
| Partner obligations — specific and measurable | ✅ / ❌ | [Specific/Vague] | |
| Exclusivity — present or absent | ✅ No / ⚠️ Yes — [scope] | [Acceptable/Problematic] | |
| IP ownership — customer relationship, materials | ✅ / ❌ | | |
| Data sharing — PII/PHI protections | ✅ / ❌ | [Compliant/Risk] | |
| Term and renewal — duration and mechanism | ✅ / ❌ | | |
| Termination rights — both parties, notice period | ✅ / ❌ | [Fair/One-sided] | |
| In-flight referral protection at termination | ✅ / ❌ | [Protected/Not protected] | |
| Liability cap | ✅ / ❌ | [$X cap / Unlimited — flag] | |
| Indemnification — what we're covering | ✅ / ❌ | [Reasonable/Broad — flag] | |
| Governing law and jurisdiction | ✅ / ❌ | [State] | |
| Dispute resolution mechanism | ✅ / ❌ | [Arbitration/Court/Mediation] | |

---

## Red Flags (automatic escalation to Matt Mathison)

- [ ] Exclusivity clause: We cannot work with other similar partners → **Do not sign without Matt Mathison approval**
- [ ] Unlimited liability: No liability cap on either party → **Legal must review before signing**
- [ ] Broad IP assignment: Partner claims ownership of customer relationships or jointly developed materials → **Legal must review**
- [ ] No termination right for cause: We can't exit if partner misrepresents us → **Legal must add termination for cause**
- [ ] Auto-renew with long notice window: Agreement auto-renews and we must cancel 90+ days early → **Negotiate shorter notice window**
- [ ] Non-compete on our side: We agree not to work in certain markets → **Do not sign without Matt Mathison approval**
- [ ] PHI/PII sharing without BAA (Allevio): Healthcare data shared without Business Associate Agreement → **Illegal — must be resolved before signing**
- [ ] Unrealistic performance guarantees: We commit to minimum revenue from their referrals → **Flag and negotiate out**

---

## Favorable Terms to Protect (don't negotiate away)

- In-flight referral protection: if the agreement terminates, referrals already in pipeline still pay out — **don't give this up**
- Fee payment timing: shorter is better (30 days vs. 90 days after contract signature) — **hold this**
- Termination for cause with short notice: we can exit immediately if the partner breaches — **hold this**

---

## Suggested Changes

| Section | Current language | Suggested change | Priority |
|---------|----------------|-----------------|---------|
| [Section] | "[Current text]" | "[Proposed revision]" | 🔴 Critical / 🟡 Recommended / ⚪ Nice to have |

---

## Next Steps

- [ ] **Resolve before legal review:** [List any critical gaps that need to be addressed in negotiation first]
- [ ] **Send to legal counsel for review** — do not sign any partner agreement without legal sign-off
- [ ] **Matt Mathison approval:** [Required if any red flags exist, or if contract value >$25K annually]
- [ ] **Compliance check:** [Required if Allevio agreement involves patient data — BAA required]
```

## Output Contract
- Red flags always listed explicitly — the most dangerous thing in a partner agreement review is what's missing or implied; every red flag category must be explicitly checked even if the answer is "not present in this agreement"
- Legal referral always required — this skill is a pre-legal checklist, not a legal opinion; the output always ends with "send to legal counsel before signing"; this is non-negotiable
- Suggested changes are specific — "this section needs improvement" is not actionable; every issue gets a specific proposed revision or a specific question to raise with legal
- In-flight referral protection always assessed — the most common dispute when a partnership ends is "what happens to the referrals I already submitted?"; this protection is almost always negotiable and critically important; always flag if it's missing
- HITL required: Dr. Lewis reviews agreements; legal counsel reviews all agreements before signing; Matt Mathison approves signing any agreement with red flags, exclusivity, non-competes, unlimited liability, or annual contract value >$25K; Allevio agreements involving patient data require healthcare counsel specifically for BAA and anti-kickback analysis

## System Dependencies
- **Reads from:** Partner agreement draft, prior partner agreements (for template comparison), legal templates
- **Writes to:** Agreement review notes (SharePoint/BD/Partners/<Partner>/Legal); negotiation tracker
- **HITL Required:** Dr. Lewis reviews; legal counsel required before signing; Matt Mathison approves red-flag items and high-value agreements

## Test Cases
1. **Golden path:** Allevio referral agreement review — partner sent their standard referral agreement → Review finds: "qualified referral" undefined (they define it as any introduction, we should require a minimum engagement); no in-flight referral protection (add: "referrals submitted within 60 days of termination are eligible for fees if closed within 180 days"); liability cap at $50K (acceptable); no exclusivity (good); governing law: their state, not AZ (negotiate to AZ); no BAA (required — add before signing); Flagged 3 issues; sent to legal with specific language requests; Matt Mathison notified (>$25K annual opportunity); signed after legal review and BAA added
2. **Edge case:** Partner agreement has a clause that we must refer business back to them (reciprocal referral) → For Allevio: healthcare anti-kickback statute analysis required immediately; for MBL Partners: evaluate whether we can realistically make referrals to this company; a reciprocal referral clause we can't honor is worse than no clause at all (creates a breach scenario); route to healthcare counsel for Allevio; route to Matt Mathison for MBL-level decision; don't sign until resolved
3. **Adversarial:** Partner pressures us to sign "as-is" and says "this is our standard agreement, we don't customize it" → this is a negotiating tactic; almost all partner agreements are negotiable; the correct response is "We'd like to move quickly — can you give us 3 business days to have our legal team review and we'll get back to you with any specific changes?"; if they refuse to allow any review and insist on signing today, that is a serious trust signal; walk away from any partner who won't allow a legal review period

## Audit Log
All agreement reviews retained with date and findings. Red flags escalated to Matt Mathison documented. Legal counsel review confirmations retained. Signed agreements archived in SharePoint.

## Deprecation
Retire when portfolio companies have dedicated legal counsel and a contract management system that handles partner agreement review as a standard workflow.
