---
name: it-help-desk-triage
description: "Triage IT support requests and provide first-level resolution or escalation path. Use when the user says 'IT issue', 'tech support', 'my computer', 'system not working', 'can't access', 'IT problem', 'how do I fix', 'password reset', or 'IT help desk'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<issue-description> [--user <name>] [--urgency <low|medium|high|critical>]"
---

# IT Help Desk Triage

Triage incoming IT support requests, attempt first-level resolution, and escalate to the appropriate resource when first-level resolution is insufficient.

## When to Use
- Any IT issue reported by MBL staff
- System access problems
- Hardware or software issues
- Network or connectivity problems
- Account / password issues

## Triage Priority Matrix

| Priority | Type | Response Time |
|---------|------|--------------|
| P1 — Critical | Total system outage, security breach, CEO/CFO/MD affected | Immediate |
| P2 — High | Team-wide issue, revenue-impacting, multiple users | 1 hour |
| P3 — Medium | Single user, workaround exists | 4 hours |
| P4 — Low | Minor inconvenience, cosmetic, non-blocking | Next business day |

## Common Issues and First-Level Resolution

### Account / Access Issues

**Password reset (Microsoft 365)**
1. Go to account.microsoft.com/password
2. Use "Forgot my password" flow
3. Verify via backup email or authenticator app
4. If locked out: IT admin must reset — escalate to Dr. Lewis

**MFA not working**
1. Verify authenticator app is open and current
2. Check phone time is synchronized (time drift breaks TOTP)
3. Use backup code if app fails
4. If all else fails: Escalate to IT admin for MFA reset

**Account locked**
- Microsoft 365: Usually self-resolves in 30 min after too many failed attempts
- Bill.com / QuickBooks: Contact IT admin for unlock
- Third-party SaaS: Use "forgot password" or contact IT admin

### Connectivity Issues

**VPN not connecting**
1. Check internet connectivity first (can you reach google.com?)
2. Restart VPN client
3. Check for VPN client updates
4. If persistent: Escalate to IT (may be certificate expiry)

**Slow internet/network**
1. Restart router/modem (unplug 30 seconds)
2. Switch from WiFi to wired connection if available
3. Check if other devices are affected (if yes → network issue; if no → device issue)

**Microsoft Teams issues**
1. Check Microsoft 365 status at status.office.com
2. Clear Teams cache (close app, delete cache files)
3. Reinstall Teams client if persistent

### Software Issues

**Software won't open or crashes**
1. Restart the application
2. Restart the computer
3. Check for pending updates
4. If QuickBooks/Bill.com: check service status page
5. Escalate if persists after restart

**Software update required**
1. Save all work first
2. Run update through software's built-in update mechanism
3. Restart if required
4. If update fails: Escalate to IT admin

### Hardware Issues

**Computer slow or freezing**
1. Check disk space (should have > 15% free)
2. Restart the computer
3. Check for running background processes
4. If persistent after restart: Escalate — may need hardware review

**Printer not working**
1. Check physical connections and power
2. Check print queue for stuck jobs (clear them)
3. Restart printer
4. Reinstall printer driver if persists

## Escalation Path

| Issue Type | Escalate To | Method |
|-----------|-------------|--------|
| Security concern | Dr. Lewis immediately | Call/text |
| System outage (P1-P2) | Dr. Lewis | Immediate |
| General IT (P3-P4) | IT support queue | Email or ticket |
| Vendor-specific issue | Vendor support + IT admin | Per vendor SLA |

## Output Format

```markdown
# IT Help Desk Triage — <Issue Description>
**Priority:** P<N> | **User:** <name> | **Date/Time:** <timestamp>

## Issue Summary
<Brief description of the reported issue>

## First-Level Resolution Attempted
1. <Step attempted> → <Result>
2. <Step attempted> → <Result>

## Outcome
✅ Resolved: <what fixed it>
⬆️ Escalating to: <who> for <reason>
⏳ Pending: <what the user should do while waiting>

## Prevention Note (if applicable)
<What would prevent this in the future>
```

## Output Contract
- Security concerns always escalate immediately — never self-resolve security issues
- P1 issues never left in a queue — immediate escalation
- User always receives an expected resolution timeline
- HITL required before any system-wide changes are made as part of resolution

## System Dependencies
- **Reads from:** Issue description, known issue database (this skill)
- **Writes to:** IT ticket system (if available)
- **HITL Required:** Dr. Lewis approves any security-related resolution or system-wide configuration changes

## Test Cases
1. **Golden path:** Password reset request → self-service steps provided, resolved without escalation
2. **Edge case:** Microsoft Teams outage affecting all staff → identifies as P2 team-wide, checks Microsoft status page, communicates ETA from Microsoft
3. **Adversarial:** User reports "my computer was hacked" → immediately escalates to P1 security incident (`security-incident-responder`), does not attempt self-resolution

## Audit Log
IT support requests logged with priority, resolution steps, and outcome. Security-related tickets retained indefinitely.

## Deprecation
Retire when IT help desk platform (Freshdesk, Zendesk, Jira Service Management) handles structured triage and resolution workflows.
