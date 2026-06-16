---
name: it-monitoring-setup
description: "Set up and manage IT infrastructure monitoring and alerting. Use when the user says 'monitoring', 'alerts', 'system monitoring', 'uptime monitoring', 'server monitoring', 'infrastructure monitoring', 'alerting setup', 'monitoring dashboard', 'health checks', 'downtime alert', 'monitoring tools', 'observability', 'set up alerts', 'performance monitoring', or 'system health'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--scope <SaaS|servers|network|all>] [--action <setup|review|alert-tune>]"
---

# IT Monitoring Setup

Set up and manage infrastructure monitoring at MBL portfolio companies — ensuring that system failures, performance degradation, and security events are detected automatically rather than discovered by users who can't work. The difference between a well-monitored and an unmonitored environment: in the first, Dr. Lewis gets a Slack alert at 2 PM that AdvancedMD's API is returning errors; in the second, the billing team loses 4 hours of work before anyone thinks to check if the system is down.

## When to Use
- A portfolio company has no monitoring and needs visibility into system health
- A new critical system is being added and needs monitoring coverage
- Monitoring alerts are noisy (too many false positives) and need tuning
- After an incident — what monitoring would have caught this earlier?
- Annual monitoring review — is coverage still adequate?

## Monitoring Framework

```
Monitoring layers (from user to infrastructure):
  1. SaaS availability: Is the vendor's service up? (AdvancedMD, QuickBooks, M365, Bill.com)
     → Subscribe to vendor status pages; use a monitoring service for automatic polling
     
  2. External connectivity: Can users reach the internet and key services?
     → Router monitoring; ISP status; DNS resolution checks
     
  3. Application performance: Is the application responding within acceptable time?
     → API response time monitoring; web application uptime checks
     
  4. Server/VM health (if applicable): CPU, memory, disk, network at the OS level
     → Agent-based monitoring (Datadog, Prometheus, Azure Monitor)
     
  5. Security events: Failed logins, unusual access patterns, policy violations
     → Microsoft Sentinel, Entra ID sign-in logs, CloudTrail/Activity Log

Monitoring tools for MBL portfolio:
  SaaS status monitoring: Better Uptime, UptimeRobot, or Freshping — free tiers available
    Subscribe to: AdvancedMD status, M365 status (admin.microsoft.com), QuickBooks status
    Simple checks: HTTP ping to key URLs every 5 minutes; alert if down >2 consecutive checks
    
  Azure/AWS infrastructure: Azure Monitor (built-in); CloudWatch (AWS)
    CPU alert: >80% for 15 minutes → warning; >90% for 5 minutes → critical
    Disk alert: <20% free space → warning; <10% → critical
    Memory: >85% sustained → warning
    
  M365 security: Microsoft Entra ID sign-in logs; Defender for M365 alerts
    Failed logins: Alert if same account fails >5 times in 10 minutes (brute force indicator)
    
Alert routing:
  P1 (critical — service down): Alert to Dr. Lewis immediately (SMS/call, not just email)
  P2 (warning — degraded, at-risk): Alert to Dr. Lewis (Teams/email within 15 min)
  P3 (informational): Daily digest; no immediate action
  
Alert fatigue prevention:
  Every alert must be actionable: if there's no action when an alert fires, tune it out
  False positive rate target: <5% of alerts should be false positives
  Review alert history monthly: are alerts firing correctly? Are any being ignored?
```

## Output Format

```markdown
# Monitoring Configuration — <Company Name>
**Date:** [Date] | **Monitoring tools:** [List]
**Critical systems monitored:** [N/N required]
**Prepared by:** Dr. John Lewis

---

## Monitoring Coverage

| System | Monitoring type | Tool | Check frequency | Alert threshold | Status |
|--------|---------------|------|----------------|----------------|--------|
| AdvancedMD (Allevio) | Status page subscription | Better Uptime | 5 min | Any outage | ✅ Active |
| Microsoft 365 | M365 admin health alerts | M365 Admin | Real-time | Any incident | ✅ Active |
| QuickBooks Online | Status page | UptimeRobot | 5 min | >2 min down | ✅ Active |
| Bill.com | Status page | UptimeRobot | 5 min | | ✅ Active |
| [ISP/internet] | Ping test | [Tool] | 1 min | >30 sec down | |
| [Azure VM] | CPU/Memory/Disk | Azure Monitor | 1 min | >80% CPU | ✅ Active |
| [Website/App] | HTTP uptime | UptimeRobot | 5 min | Any downtime | |

**Unmonitored critical systems:** [List — these need monitoring added]

---

## Alert Configuration

| Alert | Trigger | Severity | Notify | Channel |
|-------|---------|---------|--------|---------|
| AdvancedMD down | HTTP check fails 2× | P1 | Dr. Lewis | SMS + Teams |
| M365 service degraded | M365 health incident | P2 | Dr. Lewis | Teams |
| Azure CPU >90% (5 min) | CPU metric | P1 | Dr. Lewis | Email |
| Disk <10% free | Disk metric | P1 | Dr. Lewis | Email |
| Failed login ×5 (10 min) | Entra ID sign-in log | P2 | Dr. Lewis | Teams |
| [SSL cert expiring in 14 days] | Certificate monitor | P2 | Dr. Lewis | Email |

**Alert quality metrics:**
- Total alerts this period: [N]
- P1 (critical): [N] — false positive rate: [X%]
- P2 (warning): [N] — false positive rate: [X%]
- Alert fatigue score: 🟢 <5% false positive / 🟡 5-15% / 🔴 >15% — needs tuning

---

## Recent Incidents Detected by Monitoring

| Date | Alert | System | Response time | Outcome |
|------|-------|--------|-------------|---------|
| [Date] | AdvancedMD down | AdvancedMD | 8 minutes | Vendor outage confirmed; staff notified; manual process activated |
| [Date] | Disk 8% free | Azure VM | 15 minutes | Old log files purged; disk back to 40% |

---

## Monitoring Gaps

| Gap | Risk | Recommended action | Tool | Cost |
|----|------|------------------|------|------|
| [Covercy status not monitored] | 🟡 HIVE production reporting blindspot | Subscribe to Covercy status page | UptimeRobot | Free |
| [SSL certificate expiry not tracked] | 🟡 Expired cert = site unavailable | Add cert monitor | UptimeRobot | Free |
| [No brute-force alert] | 🔴 Credential attack could go undetected | Enable Entra ID alert | Built into M365 | Free |

---

## Matt Mathison Brief (if critical monitoring gap or major incident)

[Company] monitoring: [N] critical systems covered. [Key gap or incident]. [Action underway].
```

## Output Contract
- Critical business systems have active monitoring before the next business day — when a new critical system is added (any system that, if it went down, would stop operations), monitoring is configured as part of the activation process — not as a follow-up task; the ops-incident-response skill is activated when a monitoring alert fires; the monitoring is what turns a 4-hour undetected outage into a 15-minute response
- Alerts route to Dr. Lewis immediately — most portfolio companies don't have an on-call rotation; Dr. Lewis is the first responder for P1 alerts; the alert channel is configured to interrupt, not inform (SMS or phone call for P1, not just email); the alerting system is tested monthly (send a test alert to confirm the routing works)
- Alert fatigue is actively managed — a team that ignores alerts has no monitoring; every month Dr. Lewis reviews which alerts fired and whether they were actionable; alerts that consistently fire without action are either misconfigured (threshold too sensitive) or are pointing to an underlying issue that needs to be fixed (not ignored); the goal is a small number of high-signal alerts, not comprehensive noise
- SSL certificates are tracked — an expired SSL certificate takes a website offline as effectively as a server failure; certificate expiry alerts are configured 30 days before expiration, not on the day; this is a solved problem with a 15-minute monitoring setup
- HITL required: Dr. Lewis configures and maintains monitoring; P1 alerts go directly to Dr. Lewis (SMS/call); Dr. Lewis activates incident response for any P1; alert configuration changes require Dr. Lewis; monthly alert review by Dr. Lewis; Matt Mathison notified when a critical system experiences >2-hour outage

## System Dependencies
- **Reads from:** Vendor status pages, Azure Monitor / CloudWatch, Microsoft 365 admin health, Entra ID sign-in logs, network monitoring agents
- **Writes to:** Monitoring configuration (SharePoint/Ops/<Company>/IT/Monitoring/); alert history log; incident triggers (ops-incident-response)
- **HITL Required:** Dr. Lewis configures and responds; P1 alerts to Dr. Lewis; incident response activated for critical alerts; Matt Mathison for >2-hour critical outages

## Test Cases
1. **Golden path:** Allevio monitoring setup → Systems: AdvancedMD, M365, QuickBooks, Bill.com, ISP ping; Tools: UptimeRobot (free — 5-min checks), M365 admin health (native), Entra ID alerts (native); Alerts: P1 (AdvancedMD down >2 checks, ISP ping failure) → Dr. Lewis SMS; P2 (M365 incident, QB slow) → Dr. Lewis Teams; SSL certs: allevio.com cert tracked (expires in 90 days — reminder set); Security: Entra ID brute-force alert enabled; Test: manually trigger UptimeRobot test alert — confirmed Dr. Lewis receives SMS within 60 seconds ✅; monitoring documentation filed
2. **Edge case:** 47 alerts fired last month but only 3 were actual issues → Alert fatigue state; audit each alert type: CPU >80% alert is firing 15 times/day on an instance that legitimately runs at 85% under normal load — adjust threshold to 95% or add duration (>90% for 10 consecutive minutes); review all 44 false positive alerts; tune thresholds; target: <5 alerts per day, all actionable
3. **Adversarial:** "Everything is cloud SaaS — there's nothing to monitor" → SaaS has outages too; the question is whether you find out from a monitoring alert or from the billing team saying "we can't submit claims and we've been trying for 2 hours"; subscribe to each SaaS vendor's status page and configure an automated check — UptimeRobot pings AdvancedMD every 5 minutes and alerts Dr. Lewis within 10 minutes of an outage; that's 2 hours earlier than "billing team says it's down"

## Audit Log
Monitoring configurations retained with effective dates. Alert history retained for 12 months. False positive rates tracked monthly. Incidents detected by monitoring documented. SSL certificate tracking log retained. Matt Mathison notifications retained.

## Deprecation
Retire when portfolio companies have IT managers who own monitoring configuration and response — with automated alerting routing to an on-call IT team rather than to Dr. Lewis — and when monitoring dashboards are reviewed in IT operations meetings rather than by Dr. Lewis alone.
