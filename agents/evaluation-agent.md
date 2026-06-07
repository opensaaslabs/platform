# Evaluation Model Agent

The Evaluation Model Agent turns software adoption evidence into explainable scores, recommendations, risks, and next actions.

It does not make unsupported recommendations. It evaluates only from declared inputs, evidence, scoring models, and policy constraints.

## Purpose

The Evaluation Model Agent evaluates:

- SaaS Usage Score
- SaaS Governance Score
- SaaS Trust Score
- SaaS Vendor Risk Score
- SaaS ROI Score
- SaaS Adoption Intelligence Index
- adoption readiness
- recommendation confidence

## Inputs

Every evaluation request must include:

- tenant id
- subject id
- subject type
- evaluation model id
- evidence references
- scoring dimensions
- policy context
- requester
- trace id

## Outputs

Every evaluation response must include:

- score
- score band
- dimension breakdown
- evidence used
- assumptions
- risks
- recommended next action
- confidence
- trace id
- computed timestamp

## Evaluation Lifecycle

```text
requested
  ↓
validated
  ↓
evidence_checked
  ↓
scored
  ↓
explained
  ↓
reviewed
  ↓
published
```

Failure states:

```text
missing_evidence
invalid_model
policy_blocked
insufficient_confidence
stale_evidence
```

## Governance Rules

The Evaluation Model Agent must not:

- evaluate without evidence
- hide score dimensions
- output a recommendation without rationale
- ignore policy constraints
- overwrite prior evaluations without creating a new version
- claim certainty when evidence is weak

## Agent Boundary

| Component | Responsibility |
| --- | --- |
| Evaluation Model Agent | scoring, explanation, evaluation lifecycle |
| Platform | stores catalog, evidence, recommendations, maturity models |
| Governance | policy checks and approval requirements |
| Traces | evaluation timeline and audit events |
| Human Reviewer | optional approval for published evaluations |

## Confidence Bands

| Confidence | Meaning |
| ---: | --- |
| 0-39 | weak evidence |
| 40-59 | partial evidence |
| 60-79 | usable evidence |
| 80-100 | strong evidence |

## Publishing Rule

A published evaluation must have:

- score
- band
- evidence
- rationale
- confidence
- owner
- timestamp
- trace id
