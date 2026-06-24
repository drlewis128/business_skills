---
name: ai-agent-performance-monitor
description: "Monitor and measure MBL AI agent and skill performance over time. Use when the user says 'agent performance', 'skill performance', 'how is the agent doing', 'agent quality', 'agent drift', 'agent degradation', 'skill quality', 'skill drift', 'skill accuracy', 'skill performance metrics', 'agent KPIs', 'agent monitoring', 'agent health', 'AI health', 'AI performance dashboard', 'AI system health', 'AI operations health', 'AI workflow health', 'meeting intelligence performance', 'Krista performance', 'AI output quality', 'AI accuracy trend', 'AI quality trend', 'AI agent metrics', 'agent usage metrics', 'skill usage', 'skill invocation', 'skill invocation frequency', 'which skills are used most', 'underused skills', 'unused skills', 'agent performance report', 'AI quarterly performance', 'AI performance review', 'AI system review', or 'AI operations review'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--agent <name>] [--period <month|quarter>] [--action <dashboard|report|alert|trend>]"
---

# AI Agent Performance Monitor

Monitor and measure MBL AI agent and skill performance over time — tracking output quality scores, usage frequency, error rates, and performance drift across all active Krista workflows and Claude integrations to produce a quarterly AI operations health report.

## When to Use
- Monthly AI operations health check
- Quarterly AI performance review for Matt Mathison
- After receiving user feedback about agent output quality
- When planning skill updates based on performance trends

## Agent Performance Monitoring Framework

```
PERFORMANCE METRICS (per active workflow / skill):

  OUTPUT QUALITY SCORE:
    Source: Krista conversation audits (ai-krista-conversation-auditor); user feedback
    Scale: 1-5 per interaction; monthly average
    Target: ≥4.0 average; <3.0 triggers workflow review
    Trend: month-over-month; flag declining trends even if still above threshold
    
  USAGE FREQUENCY:
    Invocations per month per skill / workflow
    Trend: increasing = growing adoption (positive); decreasing = low value or friction (investigate)
    Zero-invocation skills: skills not invoked in 60+ days → review for deprecation
    
  ERROR RATE:
    HITL gate rejections (Dr. Lewis reviewing and rejecting Krista output before distribution)
    API errors (Claude API timeouts; Krista integration failures)
    Target: HITL rejection rate <10% (high rejection = workflow or prompt quality issue)
    
  HITL TURNAROUND TIME:
    Time from Krista output delivery to Dr. Lewis approval
    Target: <2 hours for meeting summaries; <24 hours for pre-meeting prep
    Trend: increasing turnaround = bottleneck forming; consider streamlining review
    
  COVERAGE (skills only):
    Which department skills are being invoked?
    Which skills haven't been used in 90+ days → candidate for deprecation
    Which skill categories are growing (signals future build priorities)
    
ENTITY-SPECIFIC MONITORING:
  Allevio: zero tolerance on HIPAA violations; any PHI flag = immediate investigation (not just metric)
  HIVE: WTI trigger compliance — was the trigger honored in all HIVE acquisition discussions?
  Meeting Intelligence: Matt Mathison satisfaction (qualitative; gather quarterly)
  
PERFORMANCE DASHBOARD STRUCTURE:
  Section 1: Overall AI health (green/yellow/red per system)
  Section 2: Meeting Intelligence metrics (quality; frequency; HITL turnaround)
  Section 3: Skill library usage (top 10 used; zero-invocation list)
  Section 4: Error and incident log summary
  Section 5: Recommendations (upgrades; deprecations; new skills needed)
```

## Output Format

```markdown
# AI Agent Performance Report — Q[N] [Year]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison | **Date:** [Date]

---

## System Health Overview
| System | Status | Quality Score | Usage | Error Rate |
|--------|--------|--------------|-------|-----------|
| Meeting Intelligence | 🟢 Green | 4.6/5 | 12/mo | 2% |
| Pre-Meeting Prep | 🟡 Yellow | 3.8/5 | 8/mo | 8% |
| Finance AI support | 🟢 Green | 4.4/5 | 6/mo | 0% |

---

## Skill Library Usage
**Top 5 most used:** [list]
**Zero-invocation (90+ days):** [list — deprecation candidates]

## HIPAA Compliance: ✅ Zero PHI incidents

## Recommendations
1. [Meeting Intelligence pre-meeting prep prompt update — quality declining from 4.2 to 3.8]
2. [Deprecate [skill-name] — 0 invocations in 4 months]
```

## Output Contract
- Declining quality trends get action before they become quality failures — when Dr. Lewis sees a workflow's monthly quality score declining from 4.4 → 4.2 → 3.9 → 3.6 over four months, he acts in month three (when the trend is clear) not in month five (when the score drops below threshold); the threshold is a floor, not a target; the monitoring skill tracks trends, not just snapshots; a workflow at 3.9 with a declining trend is more concerning than a workflow at 3.8 that has been stable for 6 months
- Zero-invocation skills are reviewed, not automatically deprecated — a skill that hasn't been invoked in 90 days might be: (1) a skill covering a quarterly process (legitimate — only runs 4 times/year); (2) a skill that should be used but isn't being discovered (description problem); (3) a skill that was superseded by a different workflow (deprecation candidate); Dr. Lewis investigates before deprecating; skills covering infrequent high-stakes processes (LP reporting; acquisition integration) are expected to have low invocation counts
- HITL required: performance report → Dr. Lewis prepares; Matt Mathison reviews quarterly; workflow suspension recommendation → Dr. Lewis proposes; Matt Mathison approves for Matt-workflow-touching skills; deprecation recommendation → Dr. Lewis proposes; any HIPAA performance metric (Allevio) → entity CEO sees; Matt Mathison satisfaction input → gathered by Dr. Lewis directly (not via survey); performance trend alerts → Dr. Lewis investigates before escalating

## System Dependencies
- **Reads from:** Krista.ai conversation audit reports; Claude API usage logs (Anthropic Console); skill invocation logs (when available; approximated from CLAUDE.md session context); HITL gate approval timing records; user feedback (Matt Mathison; entity CEOs); prior performance reports
- **Writes to:** Quarterly AI performance reports (SharePoint → MBL → AI Strategy → Performance Reports); Matt Mathison quarterly AI briefings; skill deprecation recommendations; workflow improvement recommendations
- **HITL Required:** Quarterly report → Matt Mathison reviews; workflow suspension → Dr. Lewis + Matt Mathison for Matt-workflow-touching; deprecation → Dr. Lewis proposes; Allevio metrics → entity CEO sees; Matt Mathison satisfaction → gathered directly

## Test Cases
1. **Golden path:** Q2 2026 performance report. Meeting Intelligence: quality 4.6 avg; 12 summaries/month; HITL rejection rate 2%; HITL turnaround avg 87 min. Pre-Meeting Prep: quality 4.1 avg; 6 prep sheets; HITL turnaround avg 4.2 hours. Finance support: quality 4.4; 6 sessions. HIPAA: zero incidents. Zero-invocation skills: 3 skills not invoked in 90+ days (quarterly-only processes — retained). Recommendations: (1) Pre-meeting prep HITL turnaround is high — consider adding a "fast track" for low-complexity prep sheets; (2) Meeting Intelligence prompt update for late-meeting action items (ongoing from v1.1 fix). Report delivered to Matt Mathison July 15.
2. **Edge case:** HITL rejection rate for Meeting Intelligence spikes to 28% in July (from 2% in June) → Dr. Lewis: "This spike indicates a workflow quality problem, not a one-off issue. I'm reviewing the 4 rejected summaries: all four were rejected because Krista was pulling action items from the meeting agenda (what was planned to discuss) rather than the actual discussion (what was committed to). Root cause: a Teams meeting format change — Matt Mathison's EA now includes a detailed agenda in the meeting body, and Krista's extraction logic is confusing 'agenda items' with 'action items.' Fix: update the extraction instruction: 'Extract action items only from spoken commitments in the transcript, not from the written agenda. Ignore pre-meeting agenda text.' Implementing today."
3. **Adversarial:** Matt Mathison sees the performance report and questions why HITL rejection rate matters — "if I'm reviewing everything anyway, who cares if the first draft is bad?" → Dr. Lewis: "The HITL rejection rate matters because a high rejection rate means I'm spending 5-10 minutes per summary correcting and rewriting, versus 90 seconds reviewing a high-quality first draft. At 28% rejection rate, my review process is effectively manual summarization with Krista producing a first draft I have to significantly revise. That's not AI assistance — that's AI-generated friction. The HITL gate is the quality gate; a low rejection rate means the gate is catching edge cases, not systematic errors. A high rejection rate means I've either got a workflow quality problem or a prompt problem — and both are fixable."

## Audit Log
Quarterly performance reports (permanent; SharePoint). Monthly quality score records (per workflow). HITL rejection rate records. Zero-invocation skill review records. Workflow suspension records. Deprecation recommendation records. Matt Mathison satisfaction notes. HIPAA performance records (Allevio).

## Deprecation
Performance metrics reviewed when new workflows are added. Threshold values reviewed annually. Zero-invocation review criteria updated as skill library grows. Quarterly report format reviewed when Matt Mathison's reporting preferences change.
