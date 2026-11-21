# Copilot Project Instructions

## Project Identity

Build the GNIOT CSE Tech Club Website & Management System for the GNIOT CSE Tech Club. The platform will combine a public website, college-verified student portal, and administrative dashboard while replacing fragmented manual and Google Forms workflows.

The MVP target is before mid-January 2027.

## Established Technology

- Frontend: React, JavaScript, Vite, Tailwind CSS, React Router, Axios or Fetch, TanStack Query, React Hook Form, Zod, FullCalendar, and Vite PWA plugin.
- Backend: Python, FastAPI, SQLAlchemy, Alembic, Pydantic, and MySQL 8.
- Reporting/media: ReportLab and Python `qrcode`.
- Testing: Pytest and Vitest.
- Deployment: Docker.
- Redis and Celery are Phase 2 proposals, not confirmed current implementation.

Do not introduce additional frameworks or dependencies without approval.

## Repository Structure

- `frontend/` contains the React/Vite application.
- `backend/app/main.py` contains the initial FastAPI application.
- `backend/app/api/v1/` is reserved for versioned API modules.
- `docs/` contains public and internal project guidance.
- `.github/` contains collaboration and AI coding instructions.

Inspect existing code before changing it. This architecture is only partly implemented; do not assume modules, authentication, database models, or integrations already exist.

## Coding Conventions

- Make focused, minimal changes and preserve existing behavior.
- Follow existing formatting and naming patterns.
- Use clear component, function, and endpoint boundaries.
- Keep frontend and backend concerns separate.
- Update directly related documentation for behavior or setup changes.
- Do not rewrite or restructure application code for documentation-only requests.

## Security Expectations

- Never commit secrets, credentials, private keys, `.env` files, or virtual environments.
- Validate user input at API boundaries and through Pydantic schemas.
- Plan authorization around the public, verified-student, and administrator access levels.
- Do not log passwords, tokens, personal data, or sensitive database values.
- Use parameterized ORM queries and repository-supported database access patterns.
- Treat authentication and authorization changes as security-sensitive and include review.

## Testing

- Add or update tests for behavior that is introduced or fixed.
- Run focused tests or linters before broader checks.
- Report unrun or failing checks clearly.
- Do not claim that an unfinished feature is complete or verified.

## Git Collaboration

- Never push directly to `main`.
- Never force-push shared branches.
- Use descriptive branch names and focused commits.
- Team module owners control workstream branches; contributors submit PRs to the appropriate parent branch.
- Do not merge your own PR without required approval.
- See `CONTRIBUTING.md` and `docs/TEAM_ONBOARDING.md`.
