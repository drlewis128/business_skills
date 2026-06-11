---
name: dark-web-monitor
description: "Monitor the dark web for exposed credentials and data. Use when the user says 'dark web monitoring', 'dark web', 'exposed credentials', 'credential exposure', 'have we been breached', 'leaked passwords', 'breach monitoring', 'stolen data', 'data in the dark web', or 'check if our data is exposed'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <monitor|alert|respond>] [--domains <list>]"
---

# Dark Web Monitor

Monitor the dark web for exposed credentials and data. Attackers buy and sell stolen credentials, data dumps, and access to compromised systems on dark web markets and forums. For MBL portfolio companies, the highest-risk exposures are M365 credentials (the identity backbone) and any PHI from Allevio. This skill manages dark web monitoring, responds to exposures, and converts findings into remediation actions.

## When to Use
- After a data breach announcement in your sector (was our data in it?)
- Monitoring ongoing credential exposure for M365 email domains
- After a phishing incident — were credentials posted somewhere?
- Before a pen test — know what the tester might already have access to
- Monthly security hygiene check

## What to Monitor

| Asset | Exposure Risk | Source |
|-------|------------|--------|
| **M365 email credentials** (@mblpartners.com, @allevio.com) | Account takeover, BEC | HaveIBeenPwned, breach monitoring services |
| **Employee email addresses** | Phishing targeting, credential stuffing | Breach data, combo lists |
| **PHI (Allevio patient data)** | HIPAA breach indicators | Data breach forums |
| **Financial account credentials** | Wire fraud, fraud | Breach data |
| **LP data (HIVE Partners)** | Regulatory, LP trust | Breach forums |
| **Company credit cards / banking** | Financial fraud | Carding markets |

## Monitoring Sources

| Source | What It Monitors | Cost | Use |
|--------|----------------|------|-----|
| **HaveIBeenPwned (HIBP)** | Email addresses in breach data | Free API | Primary — monitor all domains |
| **SpyCloud** | Credentials, malware-stolen passwords | $$ | Next-level — criminal marketplaces |
| **Flare / DarkOwl** | Full dark web monitoring | $$$ | Enterprise tier |
| **M365 Identity Protection** | Azure-native credential risk signals | Included in E3/E5 | Already available |
| **Manual HIBP domain search** | All emails at a domain | Free (manual) | Monthly check |

## Output Format

```markdown
# Dark Web Monitoring Report — <Entity>
**Domains monitored:** <list> | **Period:** <month>
**Date:** <date> | **Source:** HIBP / SpyCloud / M365 Identity Protection

---

## Exposure Summary

| Domain | Employees Monitored | New Exposures This Period | Total Historical | Last Breach Found |
|--------|-------------------|--------------------------|-----------------|------------------|
| @mblpartners.com | <N> | 2 | 8 | <breach name, date> |
| @allevio.com | <N> | 0 | 3 | |
| @hivepartners.com | <N> | 0 | 1 | |

---

## New Exposures — Action Required

| Email | Breach Source | Data Exposed | Breach Date | Account Type | Action |
|-------|------------|------------|-----------|------------|--------|
| jsmith@mblpartners.com | Combination list (unknown origin) | Email + password hash | Unknown | M365 primary | Reset M365 password + MFA re-enroll |
| finance@mblpartners.com | Generic bulk dump | Email only | 2022 | M365 | Monitor — email only, no password |

---

## Response Actions

| Priority | Account | Action | Owner | Due | Status |
|---------|---------|--------|-------|-----|--------|
| High | jsmith@mblpartners.com | Reset M365 password, re-enroll MFA, check sign-in logs for suspicious logins | IT Manager | Today | Open |
| Medium | finance@mblpartners.com | Monitor for suspicious activity; no password in breach so lower risk | IT Tech | This week | Open |

---

## Historical Exposure Trend

| Month | New Exposures | Cumulative | Remediated |
|-------|------------|---------|---------|
| 3 months ago | 3 | 6 | 3 |
| 2 months ago | 1 | 7 | 1 |
| Last month | 0 | 7 | 0 |
| This month | 2 | 9 | 0 (assigned) |

---

## No-Action Items (Context)

| Email | Breach | Data | Reason No Action |
|-------|--------|------|----------------|
| mkt@mblpartners.com | LinkedIn (2021) | Email only | Old breach, email-only, low risk — no password; monitored |

---

## M365 Identity Protection Signals (If Available)

| User | Risk Level | Signal | Action |
|------|-----------|--------|--------|
| jdoe@mblpartners.com | Medium | Leaked credentials detected | Password reset + MFA |
| | | | |
```

## Output Contract
- Any credential exposure (email + password/hash) always triggers immediate password reset — there is no "wait and see" for leaked credentials
- PHI exposure (Allevio) always triggers HIPAA breach assessment — dark web listing of PHI is a breach indicator
- Email-only exposures always noted but lower priority — no password means lower immediate risk
- Monthly monitoring discipline enforced — one-time checks are not a monitoring program
- HITL required: IT Manager executes password resets; Dr. Lewis notified of any PHI indicators; Allevio compliance officer notified of any Allevio data indicators; Matt Mathison briefed if executive credentials are exposed

## System Dependencies
- **Reads from:** HaveIBeenPwned API, M365 Identity Protection, (optionally SpyCloud or Flare)
- **Writes to:** Nothing (monitoring report for HITL action)
- **HITL Required:** IT Manager executes account remediation; Dr. Lewis notified of PHI exposure; Allevio compliance officer for HIPAA assessment if PHI indicators found

## Test Cases
1. **Golden path:** Monthly HIBP check → 2 new credential exposures for @mblpartners.com (email + password hash) → IT Manager resets both passwords and re-enrolls MFA within 24 hours, sign-in logs checked for unauthorized access, no suspicious activity found, documented
2. **Edge case:** Bulk data dump found containing 50 MBL employee email addresses — no passwords → lower priority but triggers email awareness briefing to all affected staff about potential phishing targeting; no mandatory password reset for email-only
3. **Adversarial:** Allevio patient SSN data appears in a dark web marketplace listing → immediate HIPAA breach assessment begins; Legal counsel notified; Allevio compliance officer coordinates; HHS OCR timeline starts at discovery; affected patients notification assessed

## Audit Log
Monthly monitoring reports retained by entity. Exposure responses documented. HIPAA assessment triggers documented. HHS notification decisions documented.

## Deprecation
Retire manual HIBP checks when Microsoft Entra ID Protection is fully deployed with automated credential risk detection and remediation, or when a dark web monitoring service (SpyCloud, Flare) is integrated with automated alerting.
