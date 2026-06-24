---
name: ai-integration-monitor
description: "Monitor AI integration health, errors, and performance for MBL's Krista.ai and Claude API applications. Use when the user says 'integration monitor', 'integration health', 'integration status', 'integration error', 'integration failure', 'integration alert', 'monitor integrations', 'AI health check', 'AI status', 'AI monitoring', 'Krista health', 'Krista status', 'Krista error', 'workflow status', 'workflow health', 'workflow monitoring', 'workflow error', 'workflow failure', 'workflow alert', 'API health', 'API status', 'API monitoring', 'API error rate', 'API latency', 'API availability', 'webhook health', 'webhook monitoring', 'webhook error rate', 'error spike', 'failure spike', 'error rate alert', 'health dashboard', 'observability', 'monitoring dashboard', 'integration observability', 'uptime', 'availability monitoring', 'SLA monitoring', 'integration SLA', 'error threshold', 'failure threshold', 'alert configuration', 'alert tuning', 'monitoring setup', 'alert setup', 'integration log', or 'integration audit trail'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--integration <krista|claude-api|monday|quickbooks|ghl|webhook>] [--action <check|alert|report|configure>] [--period <today|7d|30d>]"
---

# AI Integration Monitor

Monitor AI integration health, errors, and performance for MBL's Krista.ai and Claude API applications — providing real-time visibility into workflow execution, API error rates, webhook delivery, and integration latency. Integration monitoring is the operational nerve center: the difference between "something is broken" and "I know exactly what is broken and when it started" is what monitoring delivers.

## When to Use
- Daily health check of all active AI integrations
- Investigating a reported issue with any Krista.ai workflow or Claude API application
- Configuring alerts for a new integration going live
- Monthly integration performance review for Matt Mathison

## Integration Monitoring Framework

```
MONITORING COVERAGE:

  KRISTA.AI WORKFLOW HEALTH:
    Metrics: workflow execution count; success rate; avg processing time; HITL pending count
    Targets: success rate >95%; avg processing time within expected range; HITL queue <5 items
    Source: Krista.ai workflow execution logs (accessible via Krista admin dashboard)
    Alert: success rate <90% → Dr. Lewis notified; <80% → workflow suspended; Matt Mathison notified
    
  CLAUDE API HEALTH:
    Metrics: request count; error rate; avg latency; monthly spend rate
    Targets: error rate <2%; latency within Anthropic SLA; spend on track vs. budget
    Source: Anthropic Console (API usage dashboard; error logs; spend tracking)
    Alert: error rate >5% → Dr. Lewis investigates; spend >$500/month → Dr. Lewis reviews
    
  API INTEGRATION HEALTH (per-system):
    Monday.com: API call success rate; rate limit headroom; webhook delivery rate
    QuickBooks (4 entity connections): OAuth token validity; API response time; data freshness
    GoHighLevel: API call success rate; contact operations success; webhook delivery rate
    Bill.com: notification delivery; API response time
    Microsoft Graph: OAuth token validity; Teams/SharePoint API response time
    Source: individual vendor API dashboards + Krista.ai integration status
    
  WEBHOOK HEALTH:
    Metrics: webhook delivery rate; signature verification success rate; processing time
    Targets: delivery rate >99%; verification success 100%; processing time <30 seconds
    Source: source system webhook logs + Krista.ai intake logs
    Alert: delivery rate <95% → investigate; verification failure >0 → Dr. Lewis immediate
    
MONITORING CADENCE:
  Real-time alerts: error rate spikes; webhook signature failures; Claude API errors >5%
  Daily check (5 min): Krista.ai workflow success; QuickBooks token validity; webhook status
  Weekly review: all integrations; error trends; latency trends; HITL queue trends
  Monthly report: integration SLA performance; spend vs. budget; Matt Mathison briefing
  
ALERT ROUTING:
  All alerts: Dr. Lewis (primary)
  Meeting Intelligence workflow failure: Dr. Lewis + Matt Mathison (his workflow)
  Any security-related alert: Dr. Lewis + Matt Mathison (see ai-incident-response-ops)
  HIPAA-adjacent workflow failure (Allevio): Dr. Lewis + Allevio entity CEO
  
ERROR CATEGORIES AND RESPONSE:
  Authentication failure: API key expired or rotated; OAuth token lapsed → credential refresh
  Rate limit exceeded: API quota hit → implement backoff; review quota tier
  Schema mismatch: source system changed payload format → update workflow parsing
  Network timeout: transient → retry logic handles; persistent → investigate connectivity
  Workflow logic error: AI output format issue; processing failure → investigate Krista.ai logs
```

## Output Format

```markdown
# Integration Health Report — [Date]
**Prepared by:** Dr. Lewis | **Period:** [Today / Week ending / Month ending]

---

## Overall Status: 🟢 All Systems Operational / 🟡 Degraded / 🔴 Outage

## System Status

| Integration | Success Rate | Latency | Last Checked | Status |
|-------------|-------------|---------|-------------|--------|
| Krista.ai (all workflows) | 98.2% | 12s avg | [Time] | 🟢 |
| Claude API | 99.7% | 1.2s avg | [Time] | 🟢 |
| Monday.com API | 99.9% | 0.3s avg | [Time] | 🟢 |
| QuickBooks (MBL) | 100% | 0.8s avg | [Time] | 🟢 |
| QuickBooks (Allevio) | 100% | 0.9s avg | [Time] | 🟢 |
| QuickBooks (HIVE) | — | — | [Time] | 🟡 Token lapsed |
| QuickBooks (Column6) | 100% | 0.7s avg | [Time] | 🟢 |
| GHL (MBL) | 99.5% | 0.4s avg | [Time] | 🟢 |
| Webhooks (all) | 100% | 8s avg | [Time] | 🟢 |

---

## Active Issues
- [QuickBooks HIVE: OAuth token lapsed — re-authorize via Intuit; estimated 5 min]

## HITL Queue Status
- Meeting Intelligence: 0 pending
- GHL Outreach: 2 pending (within SLA)
```

## Output Contract
- Integration health is checked daily, not when something breaks — the value of daily monitoring is that Dr. Lewis knows baseline behavior: how many Krista.ai workflows run per day; what a normal error rate looks like; what average latency looks like; when the actual pattern deviates from the baseline, it is visible immediately rather than being discovered when Matt Mathison asks "why didn't I get my meeting summary?"; the daily 5-minute check is not a bureaucratic exercise — it is the mechanism by which integration problems are caught at 8am on Monday rather than at 3pm when they've been failing since Friday
- Alert thresholds are tuned to reduce noise without missing real problems — an alert that fires 10 times a week because of transient network blips is not an alert system, it is a noise generator that gets ignored; Dr. Lewis tunes alert thresholds based on observed baseline behavior; a success rate alert at <95% is meaningful if baseline is 99%; the same threshold is noisy if baseline is 97% with normal variation; tuning is revisited quarterly or after any integration change; the test for a well-tuned alert: it fires when Dr. Lewis needs to act and not otherwise
- HITL required: meeting intelligence workflow failure → Dr. Lewis + Matt Mathison immediate; any webhook signature verification failure → Dr. Lewis immediate (security event); Allevio-related workflow failure → Dr. Lewis + Allevio entity CEO; alert configuration changes → Dr. Lewis; monthly integration report → Matt Mathison reviews; QuickBooks token lapse → Dr. Lewis re-authorizes; alert threshold changes → Dr. Lewis logs reason and new threshold

## System Dependencies
- **Reads from:** Krista.ai admin dashboard (workflow execution logs; error logs; HITL queue); Anthropic Console (API usage; error rates; spend); Monday.com API status and admin dashboard; Intuit QuickBooks API token status; GHL API status; Microsoft Graph API health (Microsoft 365 Admin); webhook intake logs (Krista.ai); individual vendor status pages (status.monday.com; developer.intuit.com; etc.)
- **Writes to:** Integration health reports (SharePoint → MBL → IT → Integration Monitor → Reports → [Period]); alert configuration (Krista.ai; monitoring tool); Matt Mathison monthly briefing; incident records (if failure escalates to incident); QuickBooks re-auth records; webhook audit records
- **HITL Required:** Meeting intelligence failure → Dr. Lewis + Matt Mathison immediate; webhook signature failure → Dr. Lewis immediate; Allevio workflow failure → Dr. Lewis + entity CEO; alert config changes → Dr. Lewis logs; monthly report → Matt Mathison; spend alert → Dr. Lewis within 24 hours; all investigation findings → documented before closing

## Test Cases
1. **Golden path:** Monday morning daily health check. Krista.ai: 8 workflow executions since Friday; 8 successes; 0 errors; HITL queue: 0 pending (all approved by Dr. Lewis Friday). Claude API: $0.80 spend since Friday; 0 errors; latency nominal. Monday.com, GHL, Bill.com APIs: all green. QuickBooks: MBL ✅; Allevio ✅; HIVE ✅; Column6 ✅. Webhooks: Teams → Krista fired 2x on Friday (2 meetings); 100% delivery; signatures ✅. 5-minute check complete. All systems operational. No action required.
2. **Edge case:** Claude API error rate spikes to 18% between 2pm-3pm on a Tuesday. Alert fires. Investigation: (1) Anthropic Console: spike correlates with a documented Anthropic API degradation (status.anthropic.com shows "Investigating API latency and errors 2:05pm-2:52pm"). (2) Not an MBL-specific issue — Anthropic platform issue. (3) Which workflows were affected: 2 Krista.ai requests during the window that hit the Claude API failed and were retried (Krista retry logic caught it; 1 succeeded on retry; 1 failed and went to error log). (4) HITL impact: 1 meeting summary for a meeting at 2:20pm was delayed (generated at 3:05pm instead of 2:40pm). Matt Mathison informed: "Anthropic had a brief API issue 2-3pm; your 2:20pm meeting summary was delayed by 25 minutes; all other summaries on time." Incident log entry: external vendor degradation, no MBL action required, monitor for recurrence.
3. **Adversarial:** Dr. Lewis sees a webhook signature verification failure alert — 5 failed verifications from an IP not in MBL's network in 10 minutes → Dr. Lewis: "This is a security event, not an integration error. Treatment: (1) Immediately route to ai-incident-response-ops — this is an unauthorized external probe of MBL's webhook endpoint; (2) Krista.ai team: rotate webhook URL + secret (invalidate the probed endpoint); (3) Update all legitimate source systems (Teams; Monday.com; GHL) with the new URL; (4) Log: 5 unauthorized webhook delivery attempts from [IP]; all rejected by signature verification; endpoint rotated; no payloads processed; Matt Mathison brief: 'Minor security probe on AI webhook endpoint detected and blocked; endpoint rotated; no impact to workflows; investigation in progress.'"

## Audit Log
Daily health check records (all systems; status; timestamp; SharePoint). Alert event log (all alerts fired; response time; resolution). Incident records (failures escalating to incidents; linked to ai-incident-response-ops). Monthly integration performance reports. Alert threshold change log (reason; new threshold; date). QuickBooks token re-auth records. Webhook delivery event records. Matt Mathison monthly briefing records.

## Deprecation
Monitoring framework reviewed when new integrations are added to MBL stack. Alert thresholds reviewed quarterly (or after significant integration change). HITL queue targets reviewed when workflow volume changes. Monitoring tooling reviewed annually (Krista.ai admin dashboard; Anthropic Console; vendor dashboards). Escalation routing reviewed when MBL team structure changes.
