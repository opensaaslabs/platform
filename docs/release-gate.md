# Release Gate

A release may be tagged only after the following checks are complete.

## Required checks

1. **Schema validation passed**
   - JSON schemas are valid.
   - Examples validate against their schemas.

2. **Documentation review passed**
   - README is current.
   - Production readiness document is current.
   - Security, governance, and operations docs are current.

3. **Trust review passed**
   - Claims are evidence-based.
   - Recommendations are not presented as paid endorsements unless clearly marked.
   - Data sources are documented where applicable.

4. **Security review passed**
   - No secrets.
   - No private customer data.
   - No credentials or tokens.
   - No unsafe operational instructions.

5. **Operations review passed**
   - Rollback path is known.
   - Support path is documented.
   - Incident handling owner is known.

## Release decision

```text
Draft → CI Passed → Review Passed → Release Candidate → Production Release
```

## Release note template

```markdown
# Release vX.Y.Z

## Summary

## Added

## Changed

## Fixed

## Validation evidence

## Known limitations

## Rollback
```
