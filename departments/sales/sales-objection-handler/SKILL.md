---
name: sales-objection-handler
description: "Handle sales objections for MBL portfolio company sales teams. Use when the user says 'objection', 'sales objection', 'handle objection', 'objection response', 'objection handling', 'prospect said no', 'prospect pushback', 'pushback', 'prospect concern', 'they said too expensive', 'too expensive', 'price objection', 'cost objection', 'pricing concern', 'budget objection', 'no budget', 'not in budget', 'bad timing', 'wrong timing', 'not now', 'maybe later', 'not a priority', 'we have a solution', 'already have a solution', 'happy with current vendor', 'using someone else', 'incumbent', 'need to think about it', 'need more time', 'need to check with', 'need to talk to my boss', 'need internal approval', 'need approval', 'competitive objection', 'competitor objection', 'why not competitor', 'why you vs', 'what makes you different', 'how are you different', 'prove it', 'I need references', 'case studies', 'proof', 'Allevio objection', 'Column6 objection', 'HIVE objection', 'employer objection', 'agency objection', or 'how do I respond'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--objection <price|timing|incumbent|authority|proof|competitor>]"
---

# Sales Objection Handler

Handle sales objections for MBL portfolio company sales teams — providing entity-specific responses to the most common prospect objections. An objection is not a rejection; it is a request for more information, a signal about a gap in the rep's understanding of the prospect's situation, or a test of the rep's conviction in the solution. The response to every objection follows the same structure: acknowledge → explore → reframe → advance.

## When to Use
- Preparing for a call where a known objection is expected
- A rep received an objection and needs a coached response
- Building an objection response playbook for a new entity sales team
- Reviewing a rep's objection handling in a coaching session

## Objection Handling Framework

```
UNIVERSAL RESPONSE STRUCTURE (Acknowledge → Explore → Reframe → Advance):
  Acknowledge: validate the concern without agreeing (never dismiss; never "I understand but...")
  Explore: ask a clarifying question to understand the real objection beneath the stated one
  Reframe: address the real concern with a specific, evidence-based response
  Advance: propose a specific next step
  
COMMON OBJECTIONS — MBL ENTITIES:

  ALLEVIO:

  "It's too expensive."
    Acknowledge: "Healthcare cost is exactly why we're talking."
    Explore: "When you say expensive — are you comparing to what you're paying today, or to other vendors?"
    Reframe: "Allevio employers typically reduce per-employee healthcare cost 15-22% in year 2. At your enrollment size, that's $X-$Y in avoided cost increases annually. The PMPM is the investment; the avoided claims trend is the return."
    Advance: "Would it help if I built a cost model showing your current estimated claims trend vs. Allevio?"
    
  "Now's not a good time / we just renewed."
    Acknowledge: "Timing matters — I want to make sure any change is well-planned."
    Explore: "When does your current contract run through? And is timing the only factor?"
    Reframe: "If your renewal is in N months, that's ideal timing — we'd start now, run a 30-day evaluation, and be ready to execute at renewal. Starting now puts you in control of the decision."
    Advance: "Would it be worth a 20-minute call to understand what the evaluation looks like?"
    
  "Our employees are happy with their current providers."
    Acknowledge: "Provider continuity is one of the most common concerns we hear."
    Explore: "Is maintaining that specific network the priority, or is it about not disrupting what's working?"
    Reframe: "Allevio doesn't replace existing specialists — we add a primary care layer that reduces costly specialist and ER utilization. Employees keep their provider relationships; Allevio adds accessibility and cost reduction."
    Advance: "Can I show you how the model worked for a comparable employer?"
    HIPAA NOTE: outcome examples must be employer-aggregate only; no individual member data
    
  "I need to get approval from my CFO / CEO."
    Acknowledge: "Of course — this is a significant benefits decision."
    Explore: "What will your CFO/CEO want to see? Would it help if I joined that conversation?"
    Reframe: "CFOs respond well to the cost model. I can prepare a one-page financial summary tailored to your situation."
    Advance: "Let's schedule 20 minutes with your CFO/CEO — I can walk through the numbers directly."
    
  COLUMN6:

  "We're happy with our current CTV partner."
    Acknowledge: "Most agencies we work with have existing CTV relationships."
    Explore: "What are they delivering today? What does your current IVT rate and VCR look like?"
    Reframe: "We don't ask you to replace anyone — most agencies run Column6 as supplemental supply initially. Our IVT rate averages [X]% vs. industry benchmark [Y]%; VCR runs [Z]%. A test IO tells you whether it's worth adding to your stack."
    Advance: "What's the smallest IO you'd need to test and compare performance?"
    
  "Your CPM is too high."
    Acknowledge: "CPM is a key lever — I want to make sure you're getting value at any price."
    Explore: "Are you comparing to open exchange CPMs, or another premium CTV supplier?"
    Reframe: "Open exchange runs lower CPM but IVT rates of 8-12% mean you're paying for undelivered impressions. At Column6's IVT rate, your effective CPM on delivered impressions is often lower than open exchange once adjusted for quality."
    Advance: "Let me build the effective CPM model using your current inventory mix."
    
  HIVE (Acquisition Target):

  "I'm not sure I want to sell."
    Acknowledge: "That's completely understandable — this is your asset and a significant decision."
    Explore: "What would change your mind? Is there a price or structure that would make sense?"
    Reframe: "We're not trying to push you to sell if it's not right. If you ever decide the timing is right, we'd like to be the first call."
    Advance: "Would it be useful if I shared what comparable transactions have looked like in the basin?"
    
OBJECTION COACHING STANDARDS:
  If rep dismisses objection: coaching needed — dismissal kills deals
  If rep over-explains: response should be ≤3 sentences + next step
  If rep doesn't advance after reframe: every objection response ends with a next step
  If rep accepts first "no" as final: first objection is rarely the last word
```

## Output Format

```markdown
# Objection Response — [Entity] | [Objection Type]
**Context:** [Where in the sales cycle this typically appears]

---

## Acknowledge
[1 sentence — validate without agreeing]

## Explore  
[1-2 clarifying questions]

## Reframe
[2-3 sentences with specific evidence]

## Advance
[Specific next step]

---

## Coaching Note
[What reps typically do wrong and how to correct it]
```

## Output Contract
- Every objection response ends with an advance — a rep who handles an objection perfectly but doesn't propose a next step has resolved the concern and stalled the deal simultaneously; "let me know if you want to continue the conversation" is not an advance; "Can I build a cost model for your CFO?" is an advance; Dr. Lewis coaches reps to treat the advance as mandatory
- Objections are information, not rejection — "too expensive" tells the rep that value hasn't been demonstrated relative to price; the rep's job is not to justify the price but to uncover what "expensive" means compared to what, then reframe around the value from discovery; a rep who responds to "too expensive" with a discount has confirmed price was the problem rather than understanding whether value was clear
- HITL required: Allevio health outcome reframes → employer-aggregate only (no individual member data); HIVE acquisition pricing responses → Dr. Lewis reviews before rep reengages; pricing concessions: <5% entity CEO discretion; 5-15% entity CEO + Dr. Lewis; >15% entity CEO + Dr. Lewis + Matt Mathison; objection pattern (same objection from 3+ prospects in 30 days) → entity CEO + Dr. Lewis review (may indicate product/pricing/market fit issue)

## System Dependencies
- **Reads from:** Discovery notes (GHL — rep's knowledge of prospect situation); win/loss records; competitive intelligence (sales-competitive-playbook); entity pricing and aggregate outcome data (no PHI for Allevio); ICP qualification status
- **Writes to:** GHL (objection logged in opportunity notes; stage implications); coaching records; objection pattern log (monthly review); pricing concession approval records
- **HITL Required:** Pricing concession → entity CEO + Dr. Lewis per matrix; HIVE acquisition pricing → Dr. Lewis; Allevio outcome claims → aggregate only; objection pattern (3+ same in 30 days) → entity CEO + Dr. Lewis; competitor claims → Dr. Lewis validates accuracy

## Test Cases
1. **Golden path:** Allevio prospect (CFO) says "We tried an MSO 2 years ago and ROI wasn't there." Acknowledge: "Past experience matters — I want to understand what didn't work." Explore: "Was it cost model, employee utilization, or provider network?" Prospect: "8% utilization — couldn't justify the PMPM." Reframe: "That's a utilization problem, not a cost model problem. The key variable is accessibility. Allevio employers average [X]% utilization in year 1. Can I show you how two comparable employers went from low utilization to [Y]%?" Advance: "Would it be worth a 30-minute call with our VP of Employer Success to walk through the utilization playbook?" Objection logged in GHL.
2. **Edge case:** Prospect says "I heard you had delivery issues with another agency last quarter" → coach response: "Don't defend pre-emptively. Ask: 'Can you tell me more about what you heard?' Listen. Then: 'Thank you for raising that. Delivery performance is something I take seriously — let me connect you with our Head of Partnerships to walk through our delivery metrics and make-good policy directly.' Never share information about other agencies."
3. **Adversarial:** Rep offers 20% discount to overcome a price objection without approval → Dr. Lewis: "That discount requires entity CEO + Dr. Lewis + Matt Mathison authorization — above the 15% threshold. Did the prospect accept? If not, we haven't committed. If yes, we honor it but need a coaching conversation about why we went to 20% without exploring other options first. Going forward: any concession requires entity CEO approval before offering."

## Audit Log
Objection log (type; entity; outcome; GHL). Pricing concession records (amount; approval chain; outcome). Objection pattern analysis (monthly; entity CEO). Coaching records. Win/loss records linked to objections.

## Deprecation
Objection library reviewed quarterly with win/loss data. Pricing thresholds reviewed when authorization matrix changes. Entity-specific objections reviewed when offering or competitive environment changes.
