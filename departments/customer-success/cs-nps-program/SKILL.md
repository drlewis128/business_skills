---
name: cs-nps-program
description: "Manage the Net Promoter Score program for MBL portfolio companies. Use when the user says 'NPS', 'Net Promoter Score', 'NPS program', 'NPS survey', 'customer satisfaction survey', 'customer satisfaction', 'CSAT', 'customer sentiment', 'promoters', 'detractors', 'passives', 'would they recommend us', 'likelihood to recommend', 'survey the customers', 'customer feedback survey', 'feedback survey', 'measure satisfaction', 'satisfaction score', 'customer loyalty', 'customer feedback collection', 'how happy are our customers', 'NPS score', 'NPS benchmark', 'NPS results', 'close the loop on NPS', or 'follow up on survey feedback'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--survey-type <NPS|CSAT|pulse>] [--action <design|send|analyze|report|close-loop>]"
---

# CS NPS Program

Manage the Net Promoter Score program for MBL portfolio companies — designing the survey, deploying it to the right contacts at the right cadence, analyzing the results, and closing the loop with every respondent. NPS is only valuable if the CS team acts on it; a survey that collects responses and doesn't follow up tells customers their feedback doesn't matter; a survey that triggers a follow-up call within 48 hours tells customers we're listening. Dr. Lewis reviews NPS results monthly and personally follows up with all Detractors.

## When to Use
- Quarterly NPS survey cycle (design, deploy, analyze, close-loop)
- Post-onboarding pulse check (30-60-90 days after go-live)
- Post-escalation follow-up survey (30 days after a resolved escalation)
- Annual CS report (NPS trend as a key portfolio metric)

## NPS Program Framework

```
NPS FUNDAMENTALS:
  Question: "On a scale of 0-10, how likely are you to recommend [Allevio/Column6/HIVE]
    to a colleague or peer?"
  Promoters (9-10): Loyal enthusiasts; potential references and case studies
  Passives (7-8): Satisfied but not enthusiastic; vulnerable to competitive offers
  Detractors (0-6): Unhappy customers; churn risk; potential negative word of mouth
  
  NPS Score = % Promoters − % Detractors
  Benchmark by entity:
    Allevio (employer benefits): Good = 30+; Excellent = 50+
    Column6 (CTV advertising): Good = 20+; Excellent = 40+
    HIVE (mineral rights): No published benchmark — target: net positive (more Promoters than Detractors)

NPS SURVEY DESIGN:

  Core question: "0-10 likelihood to recommend" (always the same — don't change)
  Follow-up question 1 (open text): "What is the most important reason for your score?"
  Follow-up question 2 (by score):
    Promoters (9-10): "What could we do to make your experience even better?"
    Passives (7-8): "What would need to improve for you to give us a higher score?"
    Detractors (0-6): "What specific issue has most affected your experience with us?"
  Optional question 3 for Promoters: "Would you be willing to serve as a reference
    for [Allevio/Column6/HIVE]?" (Yes / Not at this time — feeds cs-advocacy-builder)
    
DEPLOYMENT CADENCE:
  Annual relationship NPS: 
    Send once per year (January) to all active accounts
    Contact: HR Director for Allevio; agency media buyer for Column6; landowner for HIVE
    Timing: 2+ months after renewal (neutral moment — not near the renewal pressure)
    
  Post-onboarding pulse check:
    Send at Day 30, 60, and 90 after go-live
    Contact: same as annual relationship NPS
    Use 3-question format (NPS + open text + one specific onboarding question)
    
  Post-escalation follow-up:
    Send 30 days after a resolved P1 or P2 escalation
    Contact: the customer who experienced the escalation
    Purpose: Did the resolution rebuild trust?
    
  Do NOT send during:
    Active escalation (wait for resolution + 30 days)
    Within 30 days of a renewal conversation
    During open enrollment season for Allevio accounts (October-December — too busy)

CLOSE-THE-LOOP PROTOCOL (within 48 hours of survey response):

  Promoters (9-10):
    → CS rep sends a personal thank-you email: "Thank you for your score of [X] — it means a lot.
       I want to make sure we continue to deliver the same quality..."
    → If they said yes to being a reference: Dr. Lewis sends a follow-up email to schedule a call;
       route to cs-advocacy-builder for case study or reference program enrollment
    → No CS action required unless open text reveals a specific improvement request
    
  Passives (7-8):
    → CS rep calls (not emails) within 48 hours: "I saw your score of [X] and I wanted to
       understand what we'd need to do to earn a 9 or 10 from you. What's the one thing
       we could improve?"
    → Log the improvement request in CRM; build it into the Q[X+1] plan
    → Flag in cs-health-score-tracker: a 7-8 score is an engagement signal (not alarming; needs attention)
    
  Detractors (0-6):
    → Dr. Lewis personally calls within 24 hours — not the CS rep (this elevates the response)
    → Opening: "I personally review every NPS response, and your score of [X] tells me
       something isn't working. I want to hear directly from you what we need to fix.
       Could you give me 15 minutes?"
    → Detractor call = fact-finding, not defending; listen to understand, not to rebut
    → Outcome logged in CRM; action plan built within 48 hours of the call
    → Flag in cs-health-score-tracker: Detractor = automatic Yellow if not already Yellow/Red
    → Monitor: re-survey in 90 days; if still Detractor, escalate to Red and CEO-led intervention

ANALYSIS AND REPORTING:
  Monthly: Dr. Lewis reviews response rates and any new Detractor responses
  Quarterly: Full NPS analysis (score by entity; trend; Detractor themes; Promoter segmentation)
  Annual: NPS included in the portfolio CS review for Matt Mathison
```

## Output Format

```markdown
# NPS Program Report — [Entity] | [Quarter YYYY]
**Survey period:** [Start] to [End] | **Responses:** [N] of [N sent] ([X]% response rate)
**NPS Score:** [X] (vs. last quarter: [+/-X]) | **Benchmark:** [Good/Excellent/Below benchmark]

---

## Score Distribution

| Category | Count | % |
|---------|-------|---|
| Promoters (9-10) | [N] | [X]% |
| Passives (7-8) | [N] | [X]% |
| Detractors (0-6) | [N] | [X]% |

---

## Detractor Summary (requires action)

| Account | Score | Primary complaint | Close-loop action | Owner | Status |
|---------|-------|-----------------|------------------|-------|--------|
| [Account A] | 4 | "Reports are always late" | Dr. Lewis call scheduled | Dr. Lewis | ⏳ |

---

## Theme Analysis (open text)

| Theme | Count | Category |
|-------|-------|---------|
| Communication timeliness | 5 | Improvement request |
| Cost savings | 8 | Positive |
| Claims process | 3 | Improvement request |

---

## Promoter Pipeline (for cs-advocacy-builder)

| Account | Score | Reference willing? | Case study potential |
|---------|-------|--------------------|---------------------|
| [Account B] | 10 | Yes | Yes — strong cost savings story |

---

## NPS Trend

| Quarter | NPS | Response rate |
|---------|-----|--------------|
| Q[X-2] | [X] | [X]% |
| Q[X-1] | [X] | [X]% |
| Q[X] | [X] | [X]% |
```

## Output Contract
- Every Detractor gets a Dr. Lewis call, no exceptions — a Detractor score (0-6) is a churn signal; waiting for the CS rep to follow up with an email is not enough; Dr. Lewis personally calls every Detractor within 24 hours of receiving the survey response; "the CEO of customer success called me personally" changes the customer's experience of being heard; this is the single highest-ROI action Dr. Lewis can take in the NPS program — 1 hour of Dr. Lewis's time converting a Detractor to a Passive or Promoter protects $50-150K+ of ARR
- Response rates matter as much as scores — an NPS of 65 from 4 of 22 customers is meaningless; an NPS of 42 from 19 of 22 customers is a reliable signal; Dr. Lewis requires a minimum 60% response rate to treat the NPS score as a portfolio metric; below 60%: re-send to non-respondents once; below 40% response after re-send: acknowledge the low response rate in reporting; do not report a score as definitive with <40% response
- NPS data is not shared publicly without anonymization — survey responses contain customer sentiment; individual scores are never shared outside of the CS and executive team without customer permission; aggregate NPS scores (no individual attribution) may be used in marketing or investor reporting with Dr. Lewis approval; a Detractor response is confidential — the complaint is addressed internally; it is not shared with other customers or vendors
- HITL required: Dr. Lewis personally calls all Detractors within 24 hours; Promoters willing to serve as references are routed to Dr. Lewis before being enrolled in cs-advocacy-builder; NPS results with Detractor ARR >$150K reported to Matt Mathison monthly; survey deployment requires Dr. Lewis sign-off on the survey questions and timing; action plans for Detractors require Dr. Lewis approval

## System Dependencies
- **Reads from:** Active account list (GoHighLevel CRM — who should receive the survey?); cs-health-score-tracker (cross-reference NPS with health score — do they correlate?); cs-onboarding-coordinator (post-onboarding pulse timing — has the customer been live for 30/60/90 days?); cs-escalation-manager (post-escalation timing — has it been 30 days since resolution?)
- **Writes to:** NPS survey record (GoHighLevel CRM — score; open text; date; follow-up status); cs-health-score-tracker (Detractor score triggers Yellow; 2nd consecutive Detractor triggers Red); cs-advocacy-builder (Promoters willing to be references routed here); NPS report (SharePoint/CustomerSuccess/<Company>/NPS/[YYYY-QX]_NPS_Report.pdf); cs-kpi-dashboard (NPS score; response rate; Detractor count; Promoter count)
- **HITL Required:** Dr. Lewis personally calls all Detractors within 24 hours; Promoter reference enrollment requires Dr. Lewis routing; survey deployment requires Dr. Lewis sign-off; NPS results with Detractor ARR >$150K reported to Matt Mathison monthly; aggregate NPS use in marketing or investor materials requires Dr. Lewis approval

## Test Cases
1. **Golden path:** Q1 Allevio NPS survey — 22 accounts sent; 16 responses (73% response rate); Promoters: 10 (45%); Passives: 5 (23%); Detractors: 1 (5%); NPS = 45−5 = 40 ✅ (Good benchmark); 1 Detractor: Account B, score 3, complaint: "Clinical care referrals take too long for our employees"; Dr. Lewis calls the HR Director within 18 hours: "I personally saw your score and I want to understand the referral issue better. Can you give me 15 minutes?" Call reveals the issue: 2 specific clinical referrals where the response time was 10 days instead of the standard 3 days; root cause: a provider availability gap in the HR Director's ZIP code; Dr. Lewis connects the HR Director with the clinical team the same day; issue resolved; 90-day re-survey: score of 8 (Passive → Promoter trajectory)
2. **Edge case:** Post-onboarding Day 30 pulse check for a new Column6 agency — score of 7 (Passive); open text: "The campaign launched a day late and I had to chase the reporting dashboard link" → CS rep calls within 24 hours: "I saw your Day 30 score and I want to make sure we're set up right. The launch delay and the dashboard link — those shouldn't have happened and I want to make sure they don't happen again. Can I walk you through the reporting access right now?" 15-minute call; reporting access confirmed; CS rep adds a Day 1 checklist item for reporting dashboard setup for all future IOs; Day 60 survey: score of 9 (Promoter)
3. **Adversarial:** Annual NPS survey returns only 8 of 22 responses (36% response rate) → Dr. Lewis: "A 36% response rate is too low to report with confidence. We need to re-send before we conclude the score. Two things: (1) Add a personal note from the CS rep to the re-send — not the automated survey tool email, a personal email that says 'I wanted to personally ask for 2 minutes of your time — your feedback directly shapes how we serve you'; (2) for the 5 accounts we most want to hear from, have the CS rep call to ask if they received the survey and if they'd be willing to complete it. We're targeting 14 responses (64%) before we report. If we don't hit it: we acknowledge the response rate limitation in the report and flag it as an action item for Q2." Re-send sent; 6 more responses received; total: 14 (64% response rate); NPS reportable

## Audit Log
All NPS survey responses retained by account, entity, date, and score (anonymized in aggregate reporting). Detractor follow-up call records retained. Action plans from Detractor conversations retained. Close-the-loop completion rates tracked. Reference enrollment records (Promoter → cs-advocacy-builder) retained. NPS reports retained quarterly and annually.

## Deprecation
Retire when each portfolio company has a dedicated CS platform or NPS tool (Delighted; Medallia; Qualtrics) that automates survey deployment and response tracking — with Dr. Lewis reviewing the NPS program annually and personally calling all Detractors regardless of automation level.
