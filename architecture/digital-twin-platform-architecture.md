# Digital Twin Platform Architecture

The OpenSaaSLabs platform is digital-twin-native.

Every important platform object has two forms:

1. **Declared model** — the versioned definition stored in Git.
2. **Observed state** — the live or computed state stored in the platform data layer.

The digital twin connects both forms through events, evidence, validation, reconciliation, and published projections.

## Architecture Layers

```text
Source Base
  GitHub / GitLab / Forgejo / Gitea
  repositories, commits, issues, pull requests, releases, CI evidence

Model Layer
  schemas, score models, agent specs, taxonomies, conformance rules

Event Layer
  observations, evaluations, score updates, review events, drift events

State Layer
  SurrealDB records, graph relations, current projections

Twin Layer
  twin identity, twin state, twin events, twin conformance, twin health

Agent Layer
  Evaluation Model Agent, Recommendation Agent, Evidence Agent, Review Agent

API/UI Layer
  catalog, recommendations, assessments, scorecards, twin views

Governance Layer
  policy checks, approvals, ownership, evidence rules, audit trail
```

## Core Principle

A digital twin is the governed operational representation of a platform object.

It must answer:

- What is this object?
- What model defines it?
- What is its current state?
- What evidence supports that state?
- What events changed it?
- Is it conformant?
- Is it stale or drifting?
- What action should happen next?

## Twin Unit

```text
Twin = Identity + Model + State + Evidence + Events + Conformance + Projection
```

## Canonical Twin Types

| Twin Type | Real Object | Declared Model | Observed State |
| --- | --- | --- | --- |
| `platform` | OpenSaaSLabs platform | architecture docs, schemas | platform health and release state |
| `agent` | Evaluation/Recommendation agent | agent spec | latest execution, health, confidence |
| `score_model` | SaaS score model | maturity model spec | computed score versions |
| `software` | catalog software | software schema | current catalog state |
| `recommendation` | recommendation output | recommendation schema | score, rationale, evidence |
| `evidence` | source reference | evidence schema | freshness and trust state |
| `assessment` | maturity assessment | assessment schema | completed evaluation state |
| `workflow` | process lifecycle | workflow spec | current step and approvals |

## Platform Data Flow

```text
Git commit / external observation / user action
  ↓
Event captured
  ↓
Evidence linked
  ↓
Model validated
  ↓
State projected
  ↓
Conformance checked
  ↓
Twin reconciled
  ↓
Recommendation or next action emitted
```

## Reconciliation Loop

```text
Declared State
  ↓
Observed State
  ↓
Compare
  ↓
Detect Drift
  ↓
Classify Drift
  ↓
Repair / Approve / Reject / Publish
  ↓
Update Twin Projection
```

## Drift Types

| Drift | Meaning |
| --- | --- |
| `schema_drift` | observed state does not match declared schema |
| `evidence_drift` | score or recommendation lacks current evidence |
| `policy_drift` | state violates platform policy |
| `model_drift` | score model changed but projections were not recomputed |
| `source_drift` | external source changed or disappeared |
| `runtime_drift` | agent/runtime behavior differs from declared contract |

## Git as Source Base

Git is the platform source base, not the whole platform.

```text
Git stores:
  schemas
  score models
  agent specs
  conformance rules
  architecture
  examples
  releases

Git does not store:
  secrets
  tenant-private runtime data
  live execution state
  payment state
  personal data unless explicitly governed
```

## SurrealDB as State Base

SurrealDB stores the current and historical twin state:

```text
twin
twin_event
twin_projection
evidence
recommendation
assessment
software
trust_score
usage_score
```

## Agent Responsibilities

| Agent | Responsibility |
| --- | --- |
| Evaluation Model Agent | computes scores and explains them |
| Evidence Agent | collects and verifies evidence |
| Recommendation Agent | turns evaluations into next actions |
| Review Agent | supports human review and approval |
| Reconciliation Agent | detects drift and updates twin state |

## Governance Rules

A twin cannot be published unless:

- it has an owner
- it has a declared model
- it has evidence
- it has a current projection
- it passes conformance checks
- it has a traceable event history

## Platform Architecture Summary

```text
Source Base -> Model Layer -> Event Layer -> State Layer -> Twin Layer -> Agent Layer -> API/UI Layer
                                      Governance Layer wraps all layers
```

The digital twin is therefore not an extra feature. It is the architecture pattern that makes the platform explainable, reconcilable, auditable, and governable.
