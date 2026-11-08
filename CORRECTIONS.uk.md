# CORRECTIONS.md — kl-gateway

Project: hl7dk/kl-gateway
Base branch analyzed: master
Destination fork: https://github.com/admeduardovieira/kl-gateway

## Corrections proposed

| ID | Title | Severity | Status | Risk | Files involved |
|----|-------|----------|--------|------|----------------|
| REA-klgateway-001 | No sushi-config.yaml | P3 | PROPOSING | Low | `sushi-config.yaml` (new) |
| REA-klgateway-002 | No automated tests for FSH/StructureDefinitions | P3 | PROPOSING | Medium | `test/` (new) |
| REA-klgateway-003 | No CI workflow configured | P3 | PROPOSING | Low | `.github/workflows/` (new) |

## Details of proposed corrections

### REA-klgateway-001 — No sushi-config.yaml
**Problem:** No `sushi-config.yaml` in root.
**Fix:** Add sushi-config.yaml with id, canonical, name, version, fhirVersion, dependencies, menu.
**Validation:** Confirm SUSHI can process the configuration.

### REA-klgateway-002 — No automated tests
**Problem:** No tests validate FSH profiles.
**Fix:** Add FSH validation tests.
**Validation:** Run tests; confirm profiles compile.

### REA-klgateway-003 — No CI workflow
**Problem:** No `.github/workflows` directory.
**Fix:** Add build.yml and pr-verification.yml workflows.
**Validation:** Confirm workflows trigger on push/PR.

## Not implemented
None implemented in this execution; proposals for maintainers.

## Publication plan
- Fork: `admeduardovieira/kl-gateway` (created).
- No code changes (only audit reports).
- Commit identity: `admeduardovieira <admeduardovieira@users.noreply.github.com>`.
- PR to `hl7dk/kl-gateway` branch `master`.

Переклад технічний, виконаний автоматизовано; рекомендується перегляд носієм мови перед використанням якнормативного посилання.
