---
applyTo: "backend/**"
---

# Backend Instructions

- Use FastAPI, SQLAlchemy, Alembic, Pydantic, and MySQL 8 for backend implementation.
- Preserve versioned API organization under `backend/app/api/v1/`.
- Keep route functions thin and separate validation, database, service, and domain concerns as the architecture develops.
- Use Pydantic models or schemas for request and response validation.
- Use SQLAlchemy models and migrations rather than ad hoc schema changes.
- Use environment variables for configuration and never commit credentials or `.env` files.
- Keep CORS settings explicit and avoid unrestricted production origins.
- Apply role-based authorization to student-only and administrator-only operations.
- Add Pytest coverage for endpoint and service behavior that is introduced or fixed.
- Do not add Celery, Redis, report, QR, or certificate implementation unless it belongs to an approved workstream.
