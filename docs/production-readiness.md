# Production Readiness Framework

OpenSaaSLabs Platform is production-ready only when the repository can prove that its data model, governance process, release process, and operational controls are safe for public use and enterprise adoption.

## Production readiness definition

A production-ready platform must be:

- **Clear**: the platform boundary, audience, and promise are documented.
- **Structured**: core entities are represented with schemas.
- **Governed**: contribution, review, trust, and quality rules exist.
- **Validated**: schemas, examples, and catalog data are checked in CI.
- **Auditable**: changes are traceable through GitHub pull requests and release notes.
- **Operable**: deployment, rollback, incident, and support paths are documented.
- **Secure by default**: no secrets, private data, or unsupported claims enter the repository.

## Release gate

Every production release must pass these gates:

| Gate | Requirement | Evidence |
|---|---|---|
| Scope | Platform boundary is unchanged or explicitly approved | README and architecture docs |
| Schema | JSON schemas validate | CI schema validation |
| Data | Catalog examples validate against schemas | CI validation report |
| Quality | Documentation is current | docs review |
| Governance | Trust and review rules are followed | PR review trail |
| Security | No secrets or sensitive data are committed | secret scan / reviewer check |
| Operations | Rollback and support paths are known | release notes |

## Minimum production artifacts

The repository should contain:

```text
README.md
docs/production-readiness.md
docs/release-gate.md
docs/operations.md
docs/security.md
docs/governance.md
schemas/software-tool.schema.json
schemas/software-category.schema.json
schemas/use-case.schema.json
examples/software-tool.example.json
.github/workflows/production-readiness.yaml
scripts/validate-json.js
```

## Production checklist

Before marking a release production-ready:

- [ ] README explains the product promise and boundary.
- [ ] Core schemas exist and are valid JSON Schema.
- [ ] Examples validate against schemas.
- [ ] CI runs on every pull request and push to `main`.
- [ ] Release gate is documented.
- [ ] Security policy is documented.
- [ ] Operations policy is documented.
- [ ] Governance policy is documented.
- [ ] No unsupported enterprise claims are present.
- [ ] No secrets, credentials, or customer data are committed.

## Operating model

```text
GitHub → CI validation → Review gate → Release gate → Published platform data model
```

## Human-at-gate principle

Automation validates structure. Humans approve meaning, claims, trust, and release readiness.
