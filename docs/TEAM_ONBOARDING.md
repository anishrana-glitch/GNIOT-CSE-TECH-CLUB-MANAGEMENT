# Team Onboarding

## Project Identity

The GNIOT CSE Tech Club Website & Management System is a centralized digital platform for GNIOT CSE Tech Club information, verified student access, event registration, and administrative operations. The MVP target is before mid-January 2027.

This document records internal team ownership and collaboration rules. Public-facing repository information should not expose credentials or unrelated private operational details.

## Team Structure and Ownership

- **Anish Rana - Project Lead:** Main ownership, admin dashboard, system architecture, project integration, and deployment.
- **Shivang Mahi - Co-Lead:** Student portal, frontend integration, and team coordination.
- **Lovekush Kumar - Senior Technical Mentor / Full-Stack Developer:** Authentication, authorization, and technical code reviews.
- **Prashant Kumar - Full-Stack Developer:** Event module and registration module.
- **Pushkar Kumar - Event Management & Frontend:** Event management frontend and calendar.
- **Devashish Pandey - Backend Developer:** Database foundation and attendance backend.
- **Debmalya Chanda - UI/UX & QA Designer:** Figma designs, design system, and UI quality review.
- **Rajat Negi - UI/UX, Backend & Documentation:** API documentation, notifications, and reports.
- **Rounak - Full-Stack Developer:** Certificate system and media management.
- **Shrish Kushwaha - QA Lead:** Testing across modules, test plans, test reports, bug tracker, and release approval.

Roles describe primary ownership and do not reduce the Project Lead's integration and release responsibility.

## Development Hierarchy

1. Anish Rana, as Project Lead, has final responsibility for project-wide integration and release management.
2. The Project Lead or an explicitly delegated maintainer controls `main` and release branches.
3. Module owners manage their workstream or integration branches.
4. Contributors under a module owner create task-specific branches from the relevant workstream branch.
5. Contributors submit pull requests to the appropriate workstream branch, not directly to `main`.
6. The module owner reviews and integrates approved contributions into the workstream.
7. Integration into `main` requires designated project-level review and approval.
8. Contributors must not independently claim ownership of another module or alter established architecture without module-owner coordination.
9. Contributors must not bypass project leadership or create competing integration branches.
10. Branch ownership does not grant authority to merge directly into `main`.

Example hierarchy:

```text
main
└── feature/events                 (managed by event module owner)
    ├── feature/event-listing
    ├── feature/event-registration
    └── fix/event-validation
```

This is an example branch structure, not a requirement to create every branch immediately.

## Git Contribution Rules

- Never push directly to `main`.
- Never force-push shared branches.
- Never commit `.env` files, credentials, virtual environments, or generated build output.
- Synchronize with the parent branch before starting work.
- Use descriptive branch names and focused commits.
- Open pull requests against the correct parent branch.
- Request review from the relevant module owner.
- Do not merge your own pull request without the required approval.
- Delete merged feature branches when appropriate.

## Dependency Systems and Makefile

Frontend dependencies are managed independently with npm; `package.json` declares dependencies and scripts, while `package-lock.json` provides reproducible resolution. Backend dependencies are managed separately through `backend/requirements.txt` and `backend/requirements-dev.txt`, with `backend/.venv/` used locally.

From the repository root, use GNU Make for `make help`, `make install`, `make dev-frontend`, `make dev-backend`, `make test`, and `make build`. Run development servers in separate terminals. Windows, Linux, and macOS developers should not commit generated virtual environments or node modules.

## MVP Scope

### P0 - Required for first release

- Public-facing club website
- Student authentication and college verification
- Role-based access control
- Student portal
- Administrative dashboard
- Event creation, editing, and publishing
- Event discovery
- Student event registration
- Event timelines
- Registration management

### P1 - Additional planned features

- Attendance management
- Notifications
- Basic reporting
- PWA installation
- QR-based attendance, subject to an approved attendance design decision

### P2 - Future expansion

- Advanced analytics
- Automated certificate generation
- Advanced media management
- Scheduled notifications and background jobs

P1 and P2 features are not guaranteed for the first release. Final P0 scope should be confirmed by project leadership before release.
