---
name: legal-research-assistant
description: "Assist with legal research and regulatory analysis. Use when the user says 'legal research', 'what does the law say about', 'regulatory analysis', 'look up a regulation', 'what is the legal standard for', 'case law on', 'statutory interpretation', 'what are the rules for', 'legal question', or 'I need to know the law on'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--topic <description>] [--jurisdiction <federal|AZ|UT|CA>] [--entity <name>] [--depth <overview|detailed>]"
---

# Legal Research Assistant

Assist with legal research and regulatory analysis for MBL portfolio companies. Legal research is the process of identifying applicable law, regulations, and guidance on a specific question. This skill structures legal research questions, identifies authoritative sources, and produces organized legal summaries. IMPORTANT: This skill provides legal research assistance, not legal advice — all conclusions on material matters must be reviewed by outside legal counsel before action.

## When to Use
- Understanding the requirements of a specific law or regulation
- Identifying which regulations apply to a new business activity
- Researching whether a specific practice is compliant with applicable law
- Preparing a briefing on a regulatory area for Matt Mathison or the board
- Supporting outside counsel with research context

## IMPORTANT SCOPE LIMITATION

```
THIS SKILL PROVIDES LEGAL RESEARCH ASSISTANCE — NOT LEGAL ADVICE

  ✅ This skill can:
     - Summarize statutes, regulations, and agency guidance
     - Identify the primary legal framework applicable to a question
     - Organize research findings into structured briefings
     - Identify the right questions to ask outside counsel
     - Flag when a question requires outside counsel opinion

  ❌ This skill cannot:
     - Provide legal opinions or definitive legal conclusions
     - Tell you whether a specific action is legal for your specific facts
     - Replace the judgment of a licensed attorney
     - Be relied upon for compliance decisions without attorney review

Any material legal question requires review by outside counsel before action.
```

## Research Framework by Topic Area

### HIPAA Research Sources
| Source | Authoritative For | URL Category |
|--------|-----------------|-------------|
| HHS OCR | HIPAA rules, guidance, enforcement | hhs.gov/ocr |
| 45 CFR Parts 160, 162, 164 | HIPAA regulations (primary source) | eCFR |
| HHS OCR FAQs | Practical HIPAA application | hhs.gov/hipaa/faqs |
| HHS Resolution Agreements | What OCR finds and fines | Published on HHS.gov |

### GDPR Research Sources
| Source | Authoritative For |
|--------|-----------------|
| Regulation (EU) 2016/679 | GDPR text (primary source) |
| EDPB Guidelines | EU Data Protection Board interpretation |
| National DPA decisions | Country-specific enforcement guidance |
| Article 29 Working Party opinions | Pre-GDPR but still referenced |

### Employment Law Research Sources
| Source | Authoritative For |
|--------|-----------------|
| 29 CFR (DOL regulations) | Federal employment law |
| EEOC guidance | Discrimination law |
| State labor department guidance | State-specific requirements |
| NLRB | National Labor Relations Act |

## Output Format

```markdown
# Legal Research Summary — <Topic>
**Date:** <date> | **Research question:** <precise question>
**Jurisdiction:** <federal / state(s)>
**Applicable entity:** <name>
**Prepared by:** Dr. John Lewis

---

## DISCLAIMER: Legal Research Only — Not Legal Advice
This summary is legal research assistance. It summarizes applicable law but does not constitute legal advice. Any action based on this research requires review by outside legal counsel.

---

## Research Question

<Precise statement of the legal question being researched>

---

## Applicable Legal Framework

| Law / Regulation | Citation | Relevance |
|----------------|---------|---------|
| HIPAA Security Rule | 45 CFR Part 164 | Governs ePHI security requirements for covered entities |
| Arizona Employment Law | ARS §23-350 et seq. | Arizona state employment law |
| CCPA/CPRA | Cal. Civ. Code §1798.100 et seq. | California consumer data rights |

---

## Legal Summary

### Primary Rule

<Summary of the relevant statutory or regulatory provision>

**Statutory text (excerpt):**
"<Direct quote from the regulation or statute>"

### Agency Interpretation / Guidance

<How the relevant agency (HHS, DOL, etc.) has interpreted the rule>

**Key agency guidance points:**
- <Point 1>
- <Point 2>
- <Point 3>

### Enforcement History

**Relevant enforcement actions:**
- <Agency> fined <entity> $<amount> for <violation> (<year>)
- Key lesson: <what this enforcement action teaches>

---

## Application to MBL / <Entity>

**Based on the research, the following appears to be the applicable standard:**

<Summary of how the law applies to the specific question>

**Open questions requiring outside counsel opinion:**
1. <Question 1>
2. <Question 2>

**Recommended outside counsel consultation:** Yes / No — <reason>

---

## Sources

| Source | Title | Publication |
|--------|-------|-----------|
| | | |
```

## Output Contract
- Disclaimer always included — legal research is not legal advice; this cannot be removed
- Primary sources always cited (statutes, regulations) before secondary sources (articles, summaries)
- Open questions always identified — research that reaches a confident conclusion on a complex legal question without flagging uncertainties is overconfident
- Outside counsel recommendation always explicit — on material questions, the research should facilitate the outside counsel conversation, not replace it
- HITL required: Dr. Lewis reviews all legal research summaries; outside counsel reviews research and provides legal opinion on material matters; research is not shared externally without counsel review

## System Dependencies
- **Reads from:** Legal databases (LexisNexis, Westlaw — if subscribed), government websites (hhs.gov, irs.gov, dol.gov, NLRB, EEOC), eCFR, state law resources (provided via web research)
- **Writes to:** Legal research summary (for Dr. Lewis and outside counsel)
- **HITL Required:** Dr. Lewis reviews research quality; outside counsel provides legal opinion; Matt Mathison receives briefings on significant regulatory findings

## Test Cases
1. **Golden path:** Research question — "What are the HIPAA requirements for telehealth sessions delivered via video conference?" → identifies applicable regulations (45 CFR 164.312 — technical safeguards, §164.530 — administrative requirements), HHS telehealth guidance (2020 COVID flexibilities), enforcement actions related to unsecured video platforms, practical conclusions (use HIPAA-compliant video platform with BAA, not Zoom consumer), outside counsel not required for this settled question
2. **Edge case:** Research question that requires a legal conclusion on unsettled law → research identifies the conflicting positions, summarizes the primary and secondary sources, and explicitly flags: "This is an unsettled area of law; outside counsel opinion required before proceeding"
3. **Adversarial:** Business unit wants to use the research summary as a legal opinion to justify a business practice → research summaries are not legal opinions; for a formal opinion, engage outside counsel to issue a written legal opinion; using research as a substitute for legal counsel is a compliance risk

## Audit Log
Legal research summaries retained by topic and date. Outside counsel consultations triggered by research are documented. Research used in compliance decisions noted.

## Deprecation
Retire when entity subscribes to a legal research platform (Westlaw, LexisNexis) with AI-assisted research and internal counsel to conduct and interpret research directly.
