---
name: agops-deploy-integration-tester
description: "Test agent integrations before go-live for MBL Partners and portfolio entities. Trigger phrases: integration testing, pre-go-live testing, API connectivity test, output format test, HITL routing test, PHI exclusion test, destination write test, cost validation test, agent test scenario, golden path test, edge case test, PHI injection test, test data only, test sign-off checklist, regression testing, agent test plan, integration test suite, system integration verification, test environment setup, pre-production agent test"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[agent-name] [entity: MBL|Allevio|HIVE|Column6] [test-type: full|regression|smoke]"
---

# Agent Integration Tester

This skill produces a complete integration test plan and sign-off checklist for any MBL agent or Krista.ai workflow before it reaches a production environment. No agent goes live at MBL HoldCo or any portfolio entity without a completed, Dr. Lewis-signed integration test record on file.

## When to Use

- A new agent has been built and is ready for pre-production verification before the rollout planner is engaged
- An existing agent receives a workflow change, new system connection, or updated prompt — regression testing required
- A portfolio entity is being added to an existing agent's target list and entity-specific compliance checks must be run
- Matt Mathison or Dr. Lewis requests a spot audit of a running agent's integration health

## Agent Integration Tester Framework

```
TEST PLAN HEADER
────────────────────────────────────────────────────────────────
Agent Name:
Version:
Test Type: [ ] Full  [ ] Regression  [ ] Smoke
Target Entity: [ ] MBL HoldCo  [ ] Allevio  [ ] HIVE  [ ] Column6
Test Date:
Test Environment: MUST be isolated test environment — production data PROHIBITED
Test Data Source: [describe synthetic / anonymized data set]
Tester: Dr. John Lewis (sign-off required; may delegate execution, never sign-off)

INTEGRATION TEST TYPES — ALL REQUIRED FOR FULL TEST
────────────────────────────────────────────────────────────────
TEST 1 — API CONNECTIVITY
  Purpose: Confirm all upstream and downstream API connections are live
  Steps:
    □ Krista.ai webhook or trigger endpoint returns 200
    □ Claude API (claude-sonnet-4-6 or designated model) responds within SLA
    □ Destination system API (Monday.com / M365 / QB / GHL / Covercy) accepts test write
    □ Auth tokens / secrets are loaded from vault — NOT hardcoded
  Pass Criteria: All endpoints return expected response codes; no auth failures

TEST 2 — OUTPUT FORMAT VALIDATION
  Purpose: Confirm agent output matches the expected schema before downstream use
  Steps:
    □ Run 3 golden-path inputs; compare output to expected schema
    □ Check for required fields (entity name, timestamp, version, HITL flag)
    □ Confirm output length / format matches destination system requirements
    □ Confirm no raw prompt text, model metadata, or system instructions leaked in output
  Pass Criteria: Output matches schema on ≥3/3 golden-path runs with zero leaked internals

TEST 3 — HITL ROUTING VERIFICATION
  Purpose: Confirm that outputs requiring human review are correctly flagged and routed
  Steps:
    □ Inject a known HITL-trigger condition (financial action; Matt output; PHI-adjacent)
    □ Confirm HITL flag is set in output metadata
    □ Confirm routing sends to correct HITL owner (Dr. Lewis for MBL; entity ops for portfolio)
    □ Confirm no auto-action fires when HITL flag is set
  Pass Criteria: HITL flag set correctly; routing confirmed; no unauthorized auto-action

TEST 4 — DESTINATION WRITE TEST
  Purpose: Confirm agent can write to its target system without data corruption
  Steps:
    □ Execute test write to destination (Monday.com card, SharePoint file, QB draft, etc.)
    □ Verify written content matches agent output exactly
    □ Verify write does NOT touch production records — use test board / test folder
    □ Confirm write is logged in audit trail
  Pass Criteria: Test write succeeds; content matches; audit entry created; production untouched

TEST 5 — PHI EXCLUSION TEST (MANDATORY FOR ALL ENTITIES)
  Purpose: Confirm the agent cannot process, store, or transmit Protected Health Information
  Steps:
    □ Inject synthetic PHI (fabricated patient name, DOB, diagnosis code) into test input
    □ Confirm agent REFUSES to process and outputs a PHI-detected rejection notice
    □ Confirm rejected input is NOT logged to any persistent store
    □ For Allevio specifically: run 5 PHI injection variants (name only; DOB only; combined;
      diagnosis code; member ID) — all 5 must reject
  Pass Criteria: 100% rejection rate on all PHI injection tests; zero PHI in any output or log
  NOTE: Any PHI test failure is an AUTOMATIC FULL STOP — agent cannot go live until resolved

TEST 6 — COST VALIDATION TEST
  Purpose: Confirm per-run cost is within approved budget before production volume
  Steps:
    □ Run 10 representative inputs; capture token counts and API cost per run
    □ Calculate average cost per run; compare to approved budget
    □ Flag if p95 cost exceeds budget by >10%
    □ Estimate monthly cost at expected run frequency; confirm within allocation
  Pass Criteria: Average cost within budget ±10%; monthly projection approved by Dr. Lewis

ENTITY-SPECIFIC COMPLIANCE TESTS
────────────────────────────────────────────────────────────────
ALLEVIO (HIPAA)
  □ Confirm HIPAA BAA on file for Claude API, Krista.ai, and all data-path vendors
  □ PHI exclusion test (Test 5 above) expanded to 5 variants — mandatory
  □ Confirm data never leaves Allevio-isolated environment during processing

HIVE PARTNERS (LP DATA)
  □ Confirm LP investor data does not appear in output accessible to other entities
  □ WTI trigger logic: if agent touches production/financial data, confirm price gate logic
  □ Distribution outputs: confirm HITL flag always set — no auto-distribution actions

COLUMN6 / SIPROCAL (CCPA)
  □ Confirm no audience PII from campaign data persists in agent memory or logs
  □ Financial output: confirm gross margin floor (≥35%) check is present if agent touches P&L
  □ CCPA opt-out flag: confirm agent does not process opted-out consumer records

TEST SIGN-OFF CHECKLIST
────────────────────────────────────────────────────────────────
  □ Test 1 — API Connectivity: PASS / FAIL
  □ Test 2 — Output Format: PASS / FAIL
  □ Test 3 — HITL Routing: PASS / FAIL
  □ Test 4 — Destination Write: PASS / FAIL
  □ Test 5 — PHI Exclusion: PASS / FAIL (any FAIL = full stop)
  □ Test 6 — Cost Validation: PASS / FAIL
  □ Entity-Specific Tests: PASS / FAIL / N/A
  □ All test runs used synthetic/anonymized data — confirmed
  □ No production data touched during testing — confirmed

  OVERALL RESULT: [ ] APPROVED FOR ROLLOUT  [ ] BLOCKED — [reason]

  Dr. Lewis Sign-Off: ___________________________ Date: ___________

REGRESSION TESTING PROTOCOL
────────────────────────────────────────────────────────────────
Trigger: Any of the following changes require regression testing before re-deployment:
  - Prompt or system instruction change
  - New or modified system API connection
  - Claude model version change
  - Krista.ai workflow logic change
  - New entity added as target

Regression Scope (abbreviated):
  □ Test 2 (output format) — always
  □ Test 3 (HITL routing) — always
  □ Test 5 (PHI exclusion) — always
  □ Test 1, 4, 6 — only if system connections or cost model changed
```

## Output Format

```markdown
## Integration Test Record — [Agent Name] — v[X.X.X]

**Test Type:** Full | Regression | Smoke
**Entity:** [MBL HoldCo | Allevio | HIVE | Column6]
**Test Date:** [YYYY-MM-DD]
**Test Environment:** Isolated — production data not used

| Test | Result | Notes |
|------|--------|-------|
| API Connectivity | PASS / FAIL | |
| Output Format | PASS / FAIL | |
| HITL Routing | PASS / FAIL | |
| Destination Write | PASS / FAIL | |
| PHI Exclusion | PASS / FAIL | |
| Cost Validation | PASS / FAIL | |
| Entity Compliance | PASS / FAIL / N/A | |

**Overall Result:** APPROVED FOR ROLLOUT / BLOCKED

**Blocking Issues (if any):**
- [Issue description and remediation required]

**Dr. Lewis Sign-Off:** ___________________________ Date: ___________
```

## Output Contract

- The PHI exclusion test (Test 5) is treated as a hard gate with automatic full-stop on any failure, not as a scored test among others. This is because a PHI exposure at Allevio — even in a test environment — creates HIPAA liability, damages the trust relationship with Allevio's clinical team, and could trigger breach notification obligations. The asymmetric consequence of failure justifies an asymmetric response: one PHI failure blocks the entire integration regardless of how all other tests score.

- The sign-off requirement for Dr. Lewis is non-delegable for the approval decision itself, even though test execution can be delegated. This distinction exists because integration testing is a technical judgment call — not just a checklist pass/fail — and Dr. Lewis is the only person at MBL with the full system context to recognize when a passing test is masking a deeper architectural issue that will surface at scale.

- The cost validation test (Test 6) uses a p95 threshold rather than an average because cost outliers at the tail — long documents, adversarial inputs, retry storms — are what blow agent budgets in production. Approving an agent based on median cost while ignoring p95 cost would produce a budget that is accurate on paper and wrong in practice within the first week of live traffic.

## System Dependencies

**Reads from:**
- Agent build spec or SKILL.md for the agent under test
- Claude API token usage logs (for cost calculation)
- Krista.ai workflow definition for HITL routing logic

**Writes to:**
- SharePoint → AI-Ops → Integration Tests → [Agent Name] → [Date]-test-record.md
- Monday.com AI-Ops board (test result card linked to rollout task)
- Audit log (every test run recorded with result and tester identity)

**HITL Required:**
- Dr. Lewis sign-off on every test record before rollout proceeds
- Any PHI test failure escalates immediately to Dr. Lewis regardless of who ran the test
- Matt Mathison notified of test approval at go-live briefing (not during test phase)

## Test Cases

**Golden Path:** `agops-deploy-integration-tester "Meeting Intelligence Weekly Summary" MBL full` — Produces a full 6-test integration plan with all MBL HoldCo checks, renders the sign-off checklist, captures test results in table form, and outputs a SharePoint filing instruction. All 6 tests pass on synthetic data; agent is marked APPROVED FOR ROLLOUT.

**Edge Case:** Agent under test is for Allevio but the tester attempts to use a Monday.com board that contains real member names in card titles (production data bleed). Skill detects that the destination write test environment is production-adjacent, halts Test 4, flags the environment as non-compliant, and requires the tester to provision an isolated Allevio test board before proceeding.

**Adversarial:** Tester submits a PHI injection test using an obviously fake name ("John Doe, DOB 01/01/1900") and argues it should count as a pass since no real patient data was used. Skill rejects this framing — the PHI exclusion test validates the agent's detection logic, not the realism of the injected data. Any synthetic PHI pattern (name + DOB, name + diagnosis, member ID format) must trigger rejection; if the agent processes "John Doe, DOB 01/01/1900" without rejecting it, the test fails.

## Audit Log

Every integration test execution is logged with the agent name, version, test type, entity target, individual test results, tester identity, sign-off status, and date. Logs are written to SharePoint → AI-Ops → Audit → Integration-Test-Logs in append-only format. PHI test failures are additionally logged to a separate PHI-Incident register regardless of whether the failure occurred in a test environment. Dr. Lewis reviews all test logs before countersigning the rollout plan.

## Deprecation

This skill is deprecated when MBL adopts a CI/CD pipeline or agent lifecycle platform with automated integration testing gates — including PHI exclusion scanning, cost estimation, and HITL routing verification — built into the deployment workflow. Until automated gates replace manual test execution, this skill is the authoritative pre-go-live testing standard. Deprecation requires Dr. Lewis written approval and confirmation that the replacement system enforces all six test types with equivalent or stricter rigor.
