# SaaS Usage Score Model

The SaaS Usage Score measures whether a software product is being adopted, used, governed, and improved in a healthy way.

It is not a vanity usage metric. It combines activation, engagement, retention, depth, breadth, governance, value realization, and risk signals into one explainable adoption score.

## Purpose

Use the score to answer:

- Is the software actually being used?
- Is usage healthy or shallow?
- Is adoption growing or decaying?
- Is value being realized?
- Is the organization mature enough to keep using the tool safely?
- What action should be taken next?

## Score Range

```text
0   = no meaningful adoption
25  = weak / experimental usage
50  = functional but fragile usage
75  = healthy adoption
100 = embedded, governed, value-realizing usage
```

## Dimensions

| Dimension | Weight | Meaning |
| --- | ---: | --- |
| Activation | 15 | users/accounts reached first meaningful use |
| Engagement | 15 | recurring active use over the measured period |
| Retention | 15 | users/teams continue using the product |
| Depth | 10 | advanced or high-value features are used |
| Breadth | 10 | usage spreads across relevant users/teams/use cases |
| Value Realization | 15 | measurable business outcome is observed |
| Governance | 10 | ownership, policy, access, review, and compliance are in place |
| Risk / Friction | 10 | inverse score for incidents, churn signals, support burden, shadow usage |

Total weight: 100.

## Formula

```text
usage_score =
  activation_score * 0.15 +
  engagement_score * 0.15 +
  retention_score * 0.15 +
  depth_score * 0.10 +
  breadth_score * 0.10 +
  value_score * 0.15 +
  governance_score * 0.10 +
  risk_score * 0.10
```

Each dimension is scored from 0 to 100.

## Interpretation

| Score | Band | Meaning | Recommended Action |
| ---: | --- | --- | --- |
| 0-24 | Dormant | Tool is unused, blocked, or not adopted | retire, reset onboarding, or re-evaluate fit |
| 25-49 | Fragile | Some usage exists but adoption is weak | run enablement and remove blockers |
| 50-69 | Functional | Tool works but is not yet mature | expand use cases and improve governance |
| 70-84 | Healthy | Product is meaningfully adopted | optimize and deepen usage |
| 85-100 | Strategic | Product is embedded and value-realizing | scale, renew, and standardize |

## Required Inputs

Every score record must include:

- tenant id
- software id
- profile id or organization id
- measurement period
- dimension scores
- evidence references
- owner
- computed timestamp
- recommended next action

## Governance Rules

A SaaS Usage Score is not valid unless:

- every dimension has an explicit score
- every score has evidence
- the owner is identified
- the measurement period is explicit
- the score is explainable
- the recommended action is present

## Relationship to Platform

- `Software` defines the product being measured.
- `Assessment` defines adoption context.
- `Evidence` supports the dimension scores.
- `AdoptionReadiness` predicts whether the organization is ready to improve usage.
- `Recommendation` uses the usage score to suggest next actions.
