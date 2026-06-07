# SaaS Adoption Intelligence Index

The SaaS Adoption Intelligence Index is a composite model for evaluating whether a software product is suitable, usable, scalable, governed, trusted, and value-realizing for a given user, team, or organization.

It combines six explainable scores:

1. SaaS Usage Score
2. SaaS Scalability Score
3. SaaS Governance Score
4. SaaS Trust Score
5. SaaS Vendor Risk Score
6. SaaS ROI Score

## Composite Formula

```text
adoption_intelligence_index =
  usage_score * 0.25 +
  scalability_score * 0.15 +
  governance_score * 0.15 +
  trust_score * 0.15 +
  vendor_risk_score * 0.10 +
  roi_score * 0.20
```

Each score is normalized to 0..100.

## Interpretation

| Score | Band | Meaning |
| ---: | --- | --- |
| 0-24 | Avoid | Not fit or not ready |
| 25-49 | Risky | Significant adoption gaps |
| 50-69 | Conditional | Usable with controls and enablement |
| 70-84 | Recommended | Strong fit for the current maturity stage |
| 85-100 | Strategic | High-value, trusted, scalable, governed adoption candidate |

## Governance Rule

No recommendation may expose only a score. Every recommendation must include:

- score breakdown
- evidence references
- assumptions
- maturity fit
- risks
- recommended next action
- review timestamp
