---
name: security-awareness-program-manager
description: "Design and run a security awareness training program. Use when the user says 'security awareness', 'security training', 'phishing simulation', 'employee security training', 'security culture', 'awareness program', 'cybersecurity training', 'annual security training', or 'employee phishing training'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <design|plan|results>] [--audience <all|healthcare|finance>]"
---

# Security Awareness Program Manager

Design and run a security awareness training program. Technology controls stop known threats. Employees stop unknown threats — but only if they're trained to recognize them. The highest-impact security investment for most small-to-mid-size organizations is not more tools — it's employees who can spot a phishing email. This skill designs and manages the annual security awareness program.

## When to Use
- Building a security awareness program from scratch
- Planning the annual training calendar
- Reviewing phishing simulation results
- After a security incident caused by human error
- Compliance requirement — HIPAA requires workforce security training; SOC 2 and cyber insurance require annual training

## Program Components

| Component | Frequency | Delivery | Time |
|---------|---------|---------|------|
| **Annual security training** | Annual (all staff) | Online platform or facilitated session | 30-60 min |
| **Phishing simulation** | Quarterly | Automated simulation campaign | N/A |
| **New employee training** | At onboarding | Same as annual | 30-60 min |
| **Role-specific training** | Annual | Finance (BEC), Healthcare (HIPAA), IT (technical security) | 15-30 min |
| **Just-in-time micro-training** | On click (phishing sim failure) | Short video, <5 min | 3-5 min |
| **Security newsletter/tip** | Monthly | Email | 2 min read |
| **Executive security briefing** | Quarterly | Dr. Lewis / IT Manager-led | 15 min |

## Phishing Simulation Program

```
Template categories to test (rotate quarterly):
1. Executive impersonation (IT Manager → CEO → CFO)
2. Vendor impersonation (Microsoft, DocuSign, FedEx)
3. Urgent/time-sensitive (wire transfer request, package delivery)
4. Current events (tax season, healthcare, natural disaster)

What to measure:
- Click rate (target: <5%)
- Report rate (want this HIGH — reporting is the right behavior)
- Credential submission rate (subset of clickers)

Benchmark:
- Industry average click rate: 12-15%
- Well-trained organizations: 3-5%
- MBL target: <5% by end of year
```

## HIPAA-Specific Training Requirements (Allevio)

| Topic | HIPAA Requirement | Frequency |
|-------|-----------------|---------|
| PHI handling and minimum necessary | Required | Annual |
| PHI breach — what to do | Required | Annual |
| Physical safeguards (workstation, access) | Required | Annual |
| Password and authentication | Required | Annual |
| Social engineering awareness | Best practice | Annual |
| Texting/emailing PHI | Required | Annual |

## Output Format

```markdown
# Security Awareness Program — <Entity>
**Period:** <year> | **Date:** <date>
**Program Owner:** Dr. John Lewis / IT Manager

---

## Annual Training

| Training | Status | Completion Rate | Overdue | Platform |
|---------|--------|---------------|---------|---------|
| Annual security awareness | ✅ Complete | 94% | 2 employees | KnowBe4 / TalentLMS / Other |
| HIPAA workforce training (Allevio) | 🟡 In progress | 87% | 5 employees | |
| New employee training | ✅ Completed at onboarding | 100% | — | |

**Actions:**
- 2 employees overdue for annual training — IT to escalate to manager by <date>
- 5 Allevio employees overdue for HIPAA training — escalate to Allevio compliance officer

---

## Phishing Simulation Results — Q<N> <Year>

**Campaign type:** Microsoft phishing page with MFA credential harvest
**Sent to:** All employees (<N> total)
**Launch date:** <date>

| Metric | Result | Target | Trend | Status |
|--------|--------|--------|-------|--------|
| Click rate | 7% | <5% | ↓ from 12% (Q1) | 🟡 Improving |
| Report rate | 34% | >50% | ↑ from 22% (Q1) | 🟡 Improving |
| Credential submission rate | 2% | <1% | ↓ from 5% (Q1) | 🟡 Improving |
| Clickers who completed micro-training | 85% | 100% | | 🟡 |

**Top departments by click rate:** Finance (11%), Operations (9%), Sales (5%)

**Follow-up actions:**
- Finance team targeted training on wire fraud / BEC awareness
- All clickers auto-enrolled in 3-minute micro-training on credential phishing

---

## Role-Specific Training Status

| Role | Training Topic | Status | Completion | Due |
|------|-------------|--------|-----------|-----|
| Finance / Accounting | BEC and wire fraud | 🟡 In progress | 80% | <date> |
| Allevio clinical staff | HIPAA minimum necessary | ✅ Complete | 100% | Annual |
| IT staff | Technical security + Secure coding | ❌ Not started | 0% | <date> |
| Executive team | Executive BEC + voice phishing | ✅ Complete | 100% | Annual |

---

## Security Culture Indicators

| Indicator | This Period | Trend | Status |
|---------|-----------|-------|--------|
| Phishing emails reported by employees | 12 | ↑ | ✅ |
| Security questions asked via IT helpdesk | 8 | ↑ | ✅ |
| Policy violations reported | 3 | ↓ | ✅ |
| MFA adoption (self-enrollment) | 97% | ↑ | ✅ |
```

## Output Contract
- Completion rates always reported with overdue count — training completion is a compliance obligation
- Phishing simulation always shows click rate trend — single-period data without trend is not meaningful
- HIPAA training always reported separately for Allevio — compliance obligation with audit documentation required
- Overdue trainees always assigned to a specific escalation path — "overdue" without action is just a number
- HITL required: Dr. Lewis reviews program quarterly; Allevio compliance officer reviews HIPAA training completion; HR coordinates annual training completion

## System Dependencies
- **Reads from:** Training platform completion reports, phishing simulation platform results (provided)
- **Writes to:** Nothing (program management output for HITL review)
- **HITL Required:** Dr. Lewis approves program design and annual content; HR tracks completion and escalates overdue; Allevio compliance officer receives HIPAA training documentation

## Test Cases
1. **Golden path:** Q3 phishing simulation → click rate 7% (down from 12%), report rate 34% (up), Finance department highest click rate → targeted BEC training for Finance deployed, micro-training auto-enrolled for all clickers, results reported to Dr. Lewis
2. **Edge case:** New employee joins mid-year after annual training cycle → onboarding training assigned immediately, completion required within first 5 days, HIPAA training for Allevio employees required before PHI access
3. **Adversarial:** Employee complains that phishing simulations are "tricky" and "unfair" → simulations are intentionally realistic — real attackers don't play fair; educates the employee on the real-world risk; positive: they're now more aware of the threat

## Audit Log
Training completion records retained per employee. Phishing simulation results retained by campaign. HIPAA training certificates retained for audit (6 years). Program design decisions documented.

## Deprecation
Retire when entity deploys a dedicated security awareness platform (KnowBe4, Proofpoint, Cofense) with automated simulation campaigns, training assignment, and completion tracking.
