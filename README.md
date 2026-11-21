# GNIOT CSE Tech Club Website & Management System

A centralized public website and management platform for the GNIOT CSE Tech Club.

## Project Vision

The project provides one platform for club information, student engagement, event management, registrations, and future attendance and reporting workflows. It is intended to replace fragmented Google Forms-based event processes with a maintained system owned by the club.

The target MVP is before mid-January 2027.

## Main Objectives

- Publish club information and public events.
- Provide verified students with a student portal.
- Give administrators tools to manage club operations.
- Centralize event creation, discovery, registration, and timelines.
- Establish a maintainable, tested React and FastAPI codebase.

## Access Levels

- **Public visitors:** Planned access to club information, published content, and event discovery.
- **Verified students:** Planned access to the student portal, profile information, and event registrations after college verification.
- **Administrators:** Planned access to the administrative dashboard for event and member management.

These access levels describe the product direction. Features that are not yet present in the codebase remain planned or under development.

## Planned Key Features

- Public club website and published event pages
- College-verified student accounts and role-based access
- Student event discovery and registration
- Event creation, editing, publishing, and timeline management
- Registration management and administrative reporting
- PWA installation (P1)
- Attendance and QR-based attendance (P1; attendance design is not yet finalized)
- Certificate generation and background jobs (P2)

## Technology Stack

### Established frontend stack

- React
- JavaScript
- Vite
- Tailwind CSS
- React Router
- Axios or Fetch
- TanStack Query
- React Hook Form
- Zod
- FullCalendar
- Vite PWA plugin

### Established backend stack

- Python
- FastAPI
- SQLAlchemy
- Alembic
- Pydantic
- PyMySQL
- ReportLab
- Python `qrcode`

### Data and infrastructure

- MySQL 8
- Docker for deployment
- Redis and Celery are proposed for Phase 2 background jobs
- Pytest and Vitest are the agreed test tools

Additional frameworks should not be introduced without project approval.

## Repository Structure

```text
backend/
  app/
    api/v1/       FastAPI API modules
    main.py       FastAPI application entry point
  requirements.txt
frontend/
  src/
  public/
  package.json
docs/
  architecture/
  database/
  api/
  frontend/
  backend/
  deployment/
  development/
  decisions/
.github/
  instructions/
  ISSUE_TEMPLATE/
```

The proposed documentation folders may be created as needed; only existing documentation should be treated as current project guidance.

## Development Setup

Prerequisites:

- Node.js and npm
- Python 3
- MySQL 8 for database-backed development
- Git

Clone the repository and use the setup instructions below.

## Frontend Setup

```bash
cd frontend
npm install
npm run dev
```

Available scripts include `npm run build`, `npm run lint`, and `npm run preview`.

## Backend Setup

```bash
cd backend
python -m venv .venv
```

Activate the virtual environment using the command appropriate for your operating system, then install dependencies:

```bash
python -m pip install -r requirements.txt
python -m uvicorn app.main:app --reload
```

The existing backend health endpoints are:

- `GET /`
- `GET /api/v1/health`

## Environment Configuration

No root or backend `.env.example` file is currently present. Database and application environment variables must not be committed. When environment examples are added, copy the documented `.env.example` to `.env` and replace placeholder values locally.

## Project Status

The repository contains an initial React/Vite frontend and a minimal FastAPI application. Core MVP modules are under development or planned and should not be described as complete until implemented and tested.

## Contributing

We welcome external contributors. Fork the repository, clone your fork, create a focused feature branch, commit and push the changes to your fork, then open a pull request against the original repository. Wait for review before integration.

External contributors do not receive write access automatically. Read [CONTRIBUTING.md](CONTRIBUTING.md) for detailed branch, commit, testing, and pull request requirements.

For team roles and approved branch hierarchy, see [Team Onboarding](docs/TEAM_ONBOARDING.md).
