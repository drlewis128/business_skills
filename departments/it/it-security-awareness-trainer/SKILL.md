---
name: it-security-awareness-trainer
description: "Design and deliver security awareness training for employees. Use when the user says 'security awareness', 'security training', 'phishing training', 'cybersecurity training', 'employee security education', 'security culture', 'phishing simulation', or 'security training program'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--format <program|module|phishing-sim|brief>] [--audience <all|finance|exec|remote>]"
---

# IT Security Awareness Trainer

Design and deliver security awareness training for employees. 90%+ of breaches start with a human action — a clicked phishing link, a reused password, or a shared credential. Technical controls are necessary but not sufficient. Employees who know what to look for are the last line of defense and the most cost-effective security control available.

## When to Use
- Annual security awareness training (required for SOC 2 and cyber insurance)
- After a phishing incident or near-miss
- New employee onboarding
- Compliance audit preparation
- Specific threat landscape change (new phishing campaign targeting the industry)

## Training Program Components

| Component | Format | Frequency | Audience |
|---------|--------|---------|---------|
| **Phishing awareness** | Video + simulated phishing test | Quarterly (test) + Annual (training) | All staff |
| **Password security** | Module + password manager rollout | Annual | All staff |
| **Data handling and classification** | Policy + module | Annual + on role change | All staff |
| **Social engineering** | Scenarios + quiz | Annual | All staff |
| **Financial fraud awareness** | Module + scenarios (wire fraud, BEC) | Annual | Finance + Exec |
| **Remote work security** | Module + checklist | Annual + for new remote employees | Remote staff |
| **Executive cyber risk** | 1-hour focused session | Annual | C-suite + Directors |

## Phishing Simulation Framework

| Wave | Difficulty | Template Type | Pass Rate Target |
|------|-----------|-------------|----------------|
| 1 | Low | Obvious external sender, generic content | > 90% pass |
| 2 | Medium | Brand impersonation (Microsoft, DocuSign) | > 80% pass |
| 3 | High | Spear phishing (personalized, uses company context) | > 70% pass |
| 4 | Very High | Business Email Compromise (BEC) — fake executive email | > 65% pass |

A "pass" = employee does not click the malicious link or attachment.

## Output Format

```markdown
# Security Awareness Training Program — <Entity>
**Date:** <date> | **Audience:** <N employees>
**Compliance requirement:** SOC 2 CC2 / Cyber Insurance / Internal policy

---

## Training Calendar

| Module | Format | Duration | Audience | Delivery Date | Owner |
|--------|--------|---------|---------|-------------|-------|
| Annual security awareness | Video + quiz | 30 min | All staff | <date> | IT Manager |
| Phishing simulation Wave 1 | Email test | — | All staff | <date + 1 week> | IT |
| Password security + password manager | Module + setup | 20 min | All staff | <date> | IT |
| Financial fraud / BEC | Scenario module | 20 min | Finance + Exec | <date> | IT Manager |
| Executive cyber risk briefing | Live 1-hour | 60 min | C-suite | <date> | IT Manager + Dr. Lewis |

---

## Annual Training — Module 1: Phishing Awareness

**Learning objectives:** After this training, employees can:
1. Identify the top 5 phishing signals (urgency, odd sender, unexpected attachment, suspicious link, request for credentials)
2. Know what to do: Report → IT, Don't click → Even if curious
3. Understand that IT will NEVER ask for a password via email

**Content outline:**
1. What is phishing? (3 min) — Real examples from news
2. How to spot a phishing email (8 min) — 5 signals with examples
3. What to do (3 min) — Report to IT, forward with headers, don't reply
4. What happens if you click (3 min) — Steps to take, who to call
5. Quiz (5 min) — 5 questions, must pass with ≥ 80%

---

## Phishing Simulation Results

### Wave 1 — <date>
**Template:** Generic "Your account will be suspended" email
**Sent to:** <N> employees | **Clicked:** <N> (<N>%)
**Pass rate:** <N>% | **Target:** > 90%

| Department | Employees | Clicked | Click Rate | Status |
|-----------|---------|---------|-----------|--------|
| Finance | 4 | 0 | 0% | ✅ |
| Sales | 8 | 2 | 25% | ❌ — Remedial training |
| All staff avg | <N> | <N> | <N>% | |

**Employees who clicked:** Received immediate education (landing page explaining it was a test + link to 5-min module)

---

## Compliance Evidence Package

For SOC 2 / Cyber Insurance Audit:
- [ ] Training completion records (% of staff who completed annual training)
- [ ] Phishing simulation results (click rates by quarter)
- [ ] Policy acknowledgment signatures (acceptable use policy)
- [ ] Completion certificates for all employees

**Training completion rate:** <N>% of employees
**Target:** 100% (required for SOC 2 evidence)

---

## Reporting Structure

Employees who click a phishing simulation email → immediate educational landing page → 5-min remedial module
Employees who fail remedial module → IT Manager + HR notified → 1:1 coaching
Employees who fail 3 times → HR conversation about acceptable use policy compliance
```

## Output Contract
- Annual training always ends with a completion certificate and tracked completion — no training without evidence
- Phishing simulation results always broken out by department — aggregate numbers hide the real risk
- Employees who click phishing tests get immediate education (not punishment) — the goal is behavior change
- HITL required: IT Manager runs the program; Dr. Lewis briefs the executive team personally on BEC and wire fraud risks; HR involved in repeated non-compliance cases

## System Dependencies
- **Reads from:** Employee roster, role/department list, prior simulation results (provided)
- **Writes to:** Completion records (training platform or IT records)
- **HITL Required:** IT Manager reviews simulation results and owns the program; Dr. Lewis delivers or co-delivers executive security briefings; HR involved in repeated non-compliance cases

## Test Cases
1. **Golden path:** Annual program → all-staff 30-min phishing awareness module (95% completion), Wave 1 phishing sim (12% click rate vs. 10% target — 2 departments need remedial training), financial fraud module for Finance team, executive briefing with Dr. Lewis; evidence package assembled for SOC 2
2. **Edge case:** High-profile phishing campaign targeting the industry (e.g., healthcare BEC campaign) → immediate out-of-cycle alert to all staff with specific examples, 5-minute "what to watch for" module deployed, Finance team briefed personally within 24 hours
3. **Adversarial:** Employee resents phishing simulation ("that's entrapment") → explains that simulations are the only way to know whether training is working, notes that the cost of a real phishing click is far higher, reassures that names of clickers are kept in IT (not shared broadly) — the goal is education not shame

## Audit Log
Training completion records retained by entity and year. Phishing simulation results retained per wave. Non-completion and remedial training cases documented.

## Deprecation
Retire when entity deploys a security awareness training platform (KnowBe4, Proofpoint Security Awareness, Cofense) with automated phishing simulations, training modules, and completion reporting.
