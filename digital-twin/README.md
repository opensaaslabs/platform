# OpenSaaSLabs Digital Twin

The OpenSaaSLabs Digital Twin is the versioned, inspectable representation of the platform, its agents, models, scores, recommendations, evidence, and governance state.

It turns platform reality into structured state that can be validated, compared, replayed, reconciled, and published.

## Definition

A digital twin is not a copy of code. It is the governed state representation of a real platform object.

```text
Real object
  -> observed state
  -> declared model
  -> evidence
  -> events
  -> current projection
  -> conformance status
```

## Twin Types

| Twin Type | Represents |
| --- | --- |
| `platform` | the OpenSaaSLabs platform itself |
| `agent` | an operating agent such as Evaluation Model Agent |
| `score_model` | usage, governance, trust, risk, ROI, or index model |
| `software` | a software catalog entity |
| `recommendation` | an explainable recommendation |
| `evidence` | source-backed evidence item |
| `assessment` | maturity or adoption assessment |
| `workflow` | governed process lifecycle |

## Required Twin Fields

Every twin must contain:

- twin id
- twin type
- source object id
- declared model version
- owner
- current state
- evidence references
- event references
- conformance status
- last observed timestamp
- last reconciled timestamp

## Twin Lifecycle

```text
defined
  ↓
observed
  ↓
validated
  ↓
projected
  ↓
reconciled
  ↓
published
```

Failure states:

```text
stale
invalid
missing_evidence
drift_detected
policy_blocked
```

## Reconciliation Rule

A twin is healthy only when:

- declared model exists
- observed state exists
- evidence exists
- latest event is applied
- conformance status is passing
- drift is absent or explained

## Relationship to Git

Git is the versioned reality for the digital twin definition.

Runtime state belongs in the platform data layer.

```text
Git repository
  = declared twin model

SurrealDB
  = live twin state and event projection

CI / conformance
  = validation evidence

Platform UI/API
  = readable twin surface
```
