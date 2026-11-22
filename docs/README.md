# Documentation

This directory contains project documentation that is intended to remain useful as the repository evolves.

## Team Documentation

- [Team Onboarding](TEAM_ONBOARDING.md)

The hierarchical workstream branching rules are internal team guidance in `TEAM_ONBOARDING.md`; they are not a mandatory ownership structure for external contributors.

## Developer Workflow

- The frontend uses npm with `frontend/package.json` and `frontend/package-lock.json`.
- The backend uses Python requirements files with `backend/.venv/` as a local virtual environment.
- The root `Makefile` provides common setup, development, test, and build commands.
- Run `make help` for available targets and see the root README for Windows and Unix-like setup instructions.

## Future Documentation Areas

Add documentation to these locations when the relevant work is established:

- `docs/architecture/` - system and component architecture
- `docs/database/` - schema, migrations, and data conventions
- `docs/api/` - API usage and endpoint documentation
- `docs/frontend/` - frontend structure and implementation conventions
- `docs/backend/` - backend structure and implementation conventions
- `docs/deployment/` - deployment and infrastructure procedures
- `docs/development/` - local setup and developer workflows
- `docs/decisions/` - approved architecture decision records

Do not create placeholder documents for areas that do not yet have content. Keep documentation synchronized with implementation and clearly label proposed or under-development features.
