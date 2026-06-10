---
name: workflow-bottleneck-analyzer
description: "Identify workflow bottlenecks and recommend process improvements. Use when the user says 'workflow bottleneck', 'process bottleneck', 'where is the slowdown', 'why is this process slow', 'process analysis', 'workflow analysis', 'improve this process', or 'find the bottleneck'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<workflow-description-or-data> [--metric <time|cost|error-rate>]"
---

# Workflow Bottleneck Analyzer

Diagnose bottlenecks in operational workflows and recommend targeted improvements to increase throughput, reduce cycle time, and lower error rates.

## When to Use
- When a process takes longer than expected
- When a process has unpredictable output timing
- Before automating a process (fix the bottleneck first, then automate)
- When errors cluster at a specific step
- During an efficiency review

## Bottleneck Identification Methods

### Method 1 — Cycle Time Analysis
Map each step with:
- Average time to complete
- Waiting time between steps
- Queue depth at each step

**Bottleneck = step with longest total time (processing + waiting)**

### Method 2 — Error Rate by Step
Map error rates per step:
- High error rate at a step = bottleneck or design flaw
- Errors downstream often caused by problems upstream

### Method 3 — Constraint Theory
The constraint is the step that limits overall throughput:
- A chain is only as fast as its slowest link
- Improving a non-bottleneck step doesn't increase throughput

### Method 4 — Root Cause Categories

| Cause | Symptoms |
|-------|----------|
| **Person** | Output varies by who does it; high personal dependency |
| **Method** | Steps are unclear; multiple ways to do the same thing |
| **Machine/System** | System lag, manual entry, duplicate data entry |
| **Material/Information** | Missing data at the step; waiting on inputs |
| **Measurement** | Can't tell if the step completed correctly |
| **Environment** | Interruptions, competing priorities |

## Output Format

```markdown
# Workflow Bottleneck Analysis — <Process Name>
**Entity:** <entity> | **Analysis Date:** <date>

## Process Map (Current State)
| Step | Owner | Avg Time | Waiting Time | Total | Error Rate |
|------|-------|---------|-------------|-------|-----------|
| 1. Receive invoice | AP Clerk | 2 min | 4 hours | 4:02 | 2% |
| 2. Code to GL | AP Clerk | 5 min | 0 | 5:00 | 8% |
| 3. Manager approval | Manager | 1 min | 48 hours | 48:01 | 0% |
| 4. Payment process | Finance | 3 min | 2 hours | 2:03 | 1% |

## Identified Bottleneck(s)
**Primary bottleneck: Step 3 — Manager approval**
- Avg 48-hour wait for approval — longest wait in the process
- Root cause category: **Method** (no SLA for approval response) + **Person** (single approver, no backup)
- Impact: 48-hour delay cascades to all subsequent steps

**Secondary bottleneck: Step 2 — GL coding**
- 8% error rate — 4× higher than other steps
- Root cause category: **Method** (COA is complex and poorly documented) + **Measurement** (no validation before approval)
- Impact: Errors caught at audit or payment stage cause rework

## Recommendations

### Priority 1: Bottleneck Removal
**Step 3 — Add a 24-hour approval SLA and backup approver**
- Effort: Low (policy change)
- Expected impact: Reduce cycle time by ~24 hours (50% reduction)
- Owner: <name> | Deadline: <date>

### Priority 2: Error Reduction
**Step 2 — Add coding lookup reference and validation step**
- Effort: Medium (create cheat sheet + system rule)
- Expected impact: Reduce error rate from 8% to < 2%
- Owner: Finance | Deadline: <date>

## Projected Improvement
Current avg cycle time: 72 hours → Projected: 24 hours (-66%)
Current error rate (overall): 3.5% → Projected: < 1%
```

## Output Contract
- Bottleneck is a specific named step, not "the whole process"
- Root cause category always identified (person/method/machine/material)
- Every recommendation includes effort, impact, owner, and deadline
- HITL required before implementing any process change that affects staff workflow

## System Dependencies
- **Reads from:** Process description and timing data (provided)
- **Writes to:** Nothing (recommendations for operations review)
- **HITL Required:** Process owner and Operations lead approve changes before implementation

## Test Cases
1. **Golden path:** Invoice approval process with timing data → identifies manager approval wait as primary bottleneck with specific recommendations
2. **Edge case:** Process with no timing data available → conducts qualitative analysis, recommends data collection before making quantitative recommendations
3. **Adversarial:** Bottleneck is a specific person (single-threaded dependency) → flags as key person risk in addition to process bottleneck, recommends cross-training solution

## Audit Log
Bottleneck analyses retained by process and date. Improvement tracking against baseline measurements.

## Deprecation
Retire when business process mining tools (Celonis, Process Gold) handle automated bottleneck detection from system log data.
