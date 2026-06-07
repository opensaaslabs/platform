# Guardian Gadgets Model

The Guardian needs tools.

A Guardian without tools can only warn. A Guardian with governed tools can observe, protect, repair, escalate, and keep the loop alive.

These tools are called Guardian Gadgets.

## Core Principle

```text
A gadget is a bounded capability.
A gadget acts only through policy.
A gadget leaves evidence.
```

## Gadget Classes

| Gadget Class | Purpose |
| --- | --- |
| Sensor | observes state, evidence, drift, health, and risk |
| Validator | checks schema, conformance, policy, score, and lifecycle |
| Shield | blocks unsafe exits, policy violations, and unapproved actions |
| Grapple | connects objects, evidence, traces, issues, PRs, and twin records |
| Signal | notifies humans, agents, systems, and governance owners |
| Recorder | captures events, evidence, decisions, and acknowledgements |
| Repair Tool | proposes or performs approved runtime correction |
| Handoff Tool | transfers context to another agent or human reviewer |
| Replay Tool | replays events to reconstruct state |
| Exit Tool | publishes governed projections to the edge |

## Canonical Gadgets

| Gadget | Class | Responsibility |
| --- | --- | --- |
| `drift_sensor` | Sensor | detects mismatch between declared and observed state |
| `evidence_scanner` | Sensor | checks whether evidence exists and is fresh |
| `schema_validator` | Validator | validates objects against JSON Schema / Surreal schema |
| `policy_checker` | Validator | checks policy requirements before action or exit |
| `confidence_meter` | Validator | scores confidence of evaluation or recommendation |
| `edge_shield` | Shield | blocks unsafe publication or unsafe API response |
| `secret_filter` | Shield | prevents secrets or private data from crossing the edge |
| `trace_grapple` | Grapple | links events, evidence, model, actor, and outcome |
| `issue_signal` | Signal | opens or requests issue/PR/MR when model update is needed |
| `human_signal` | Signal | asks accountable human for approval or review |
| `event_recorder` | Recorder | records every action as a twin event |
| `repair_proposer` | Repair Tool | proposes safe model or runtime repair |
| `handoff_packager` | Handoff Tool | packages context for another guardian or reviewer |
| `event_replayer` | Replay Tool | rebuilds state from event history |
| `edge_publisher` | Exit Tool | publishes approved projection to UI/API/report/webhook |

## Gadget Contract

Every gadget must declare:

- id
- class
- purpose
- allowed inputs
- allowed outputs
- authority level
- policy requirements
- evidence emitted
- failure behavior
- owner

## Authority Levels

| Level | Meaning |
| --- | --- |
| `observe` | read and report only |
| `validate` | check and return result |
| `block` | prevent unsafe exit |
| `propose` | create issue, PR, or recommendation |
| `repair_runtime` | perform approved runtime correction |
| `publish` | publish approved projection |

No gadget may exceed its declared authority level.

## No Self-Authorization Rule

A gadget cannot grant itself new power.

```text
Guardian chooses gadget.
Policy grants authority.
Twin records action.
Human approves high-risk transitions.
```

## Gadget Flow

```text
Observation
  ↓
Sensor
  ↓
Validator
  ↓
Shield
  ↓
Grapple
  ↓
Signal / Repair / Publish
  ↓
Recorder
  ↓
Twin updated
```

## Relationship to the Guardian

The Guardian is the role.

Gadgets are bounded tools used by the role.

```text
Guardian = duty
Gadget = capability
Policy = boundary
Twin = evidence
Human = authority
```

## Safety Rule

A powerful gadget must be boring, bounded, observable, and reversible.

The Guardian survives because every tool is constrained, every action is recorded, and every exit is governed.
