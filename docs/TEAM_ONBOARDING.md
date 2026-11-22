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

## Development Hierarchy and Branch Ownership (A lesson on how to use GitHub professionally)

The team uses three integration levels. Branch prefixes are descriptive labels; they do not themselves create a parent-child relationship in Git.

### Level 1: Project Integration

- `main` is the primary integration branch.
- You must work on your own assigned or created branch.
- If you are a lead for frontend, backend, docs, testing you are responsible for creating and managing the workstream branch for that work. Read [Level 2: Worksteam Branches](#level-2-workstream-branches)
- If you are a supporting member, like frontend support (frontend or UI/UX), you are 
- Anish Rana, as Project Lead, owns project-wide integration and release coordination.
- Only Anish or explicitly delegated maintainers may approve integration into `main`.
- No contributor may force push directly to `main`.

### Level 2: Workstream Branches

Each module owner creates and maintains an integration branch for their area. Examples include:

- `work/frontend` — Frontend workstream, managed by Dedmalya
- `work/backend` — Backend workstream, managed by Devashish
- `work/testing` — Testing workstream, managed by Shrish
- `work/docs` — Documentation workstream, managed by Rajat

Workstream owners:

- Create their workstream branches from the latest `main`. For example:

```text
git switch main
git pull origin main

git switch -c work/docs
git push -u origin work/docs
```

- Coordinate development in their assigned area.
- Review and integrate contributor pull requests.
- Maintain workstream quality and consistency.
- Synchronize with `main` when needed.
- Submit completed work or milestones to `main` through a pull request.

Workstream branches are integration branches, not permanent personal branches.

### Level 3: Contributor Branches

Contributors working under a module owner create task-specific branches from the relevant workstream branch. For example:


```text
work/frontend
├── task/frontend-initial-design    # Maybe just create a mock up index page design
├── task/frontend-event-timeline    # Working branch for Event Timeline page
└── task/frontend-about-us          # Working branch for About Us page
```

Create a task branch from its intended parent workstream:
(Creating a new branch `task/frontend-initial-design`(child) with `origin/work/frontend` as base (parent))

```bash
git fetch origin
git switch -c task/frontend-initial-design origin/work/frontend
```

After implementation:

```bash
git add .
git commit -m "feat(frontend): implement homepage"
git push -u origin task/frontend-initial-design
```

The contributor opens a pull request targeting `work/frontend-initial-design`. The workstream owner, Deb, reviews it, requests changes as needed, and merges approved work into the workstream.
Later the workstream owner opens a pull request for this workstream to merge with `main`.

### How Branches Are Connected

Git does not create actual parent-child branches from slash-separated names. Branch names are labels. The actual relationship is established by:

1. The commit history from which a branch was created.
2. The parent workstream branch used as its starting point.
3. The pull request base branch selected for integration.

Use distinct names such as `work/frontend-initial-design` and `task/frontend-homepage`; avoid names like `frontend/initial_design` and `frontend/initial_design/index`, which conflict as Git refs. The pull request's base branch determines the intended integration target.

### Two-Level Pull Request Workflow

**Contributor to workstream owner**

1. The contributor branches from the relevant workstream.
2. The contributor implements the task and opens a pull request targeting that workstream.
3. The workstream owner reviews, requests changes if needed, and merges approved work.

**Workstream owner to Project Lead**

1. The workstream owner ensures relevant contributor pull requests are resolved.
2. The owner tests the consolidated workstream.
3. The owner opens a pull request targeting `main`.
4. Anish or a designated maintainer reviews it.
5. Approved changes are integrated into `main`.

Individual contributors do not each need to open a pull request directly against `main`.

### Synchronizing Workstreams with `main`

Workstream branches do not automatically receive changes merged into `main`. Other active workstreams may become outdated after a significant integration. Owners should synchronize periodically, especially after significant changes, before a workstream integration pull request, and when work depends on newly merged changes.

For a shared workstream, merge the latest `main` rather than rebasing; contributors may already have based task branches on it:

```bash
git switch work/frontend-initial-design
git fetch origin
git merge origin/main
git push origin work/frontend-initial-design
```

Contributors should also synchronize task branches with their parent workstream when necessary. Coordinate conflict resolution with the relevant owner.

### Workstream Completion and Lifecycle

Submit a workstream integration pull request when relevant contributor pull requests are resolved, the milestone is functionally complete, relevant tests pass, no critical issues remain unresolved, and the workstream is ready for project integration.

After a successful merge, the completed milestone branch may be deleted. The owner may create a fresh workstream branch from updated `main` for the next milestone, or retain and synchronize an active workstream branch. Not every small task requires a new workstream branch.

### Ownership and Authority

- The Project Lead coordinates project-wide integration and releases.
- Workstream owners coordinate development and review within their assigned areas.
- Contributors work with the relevant workstream owner.
- Contributors must not redefine another module's architecture without coordination.
- Workstream owners must not bypass project-level review for integration into `main`.
- Workstream ownership does not grant permission to merge directly into `main`.

## Git Contribution Rules

- Never push directly to `main`. Only the Tech lead and Co-lead are allowed to push to main.
- Never force-push shared branches.
- Workstream branches are created and managed by the relevant owner.
- Create task branches from the correct parent workstream.
- Open pull requests against the correct parent branch.
- Obtain module-owner review before integrating work into a workstream.
- Obtain project-level review before integrating a workstream into `main`.
- Do not merge your own pull request without the required approval.
- Synchronize workstreams with `main` and task branches with their parent workstream when needed.
- Never commit secrets, `.env` files, `node_modules`, virtual environments, or generated build output.
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
- Automated certificate generation

### P1 - Additional planned features

- Attendance management
- Notifications
- Basic reporting
- PWA installation
- QR-based attendance, subject to an approved attendance design decision

### P2 - Future expansion

- Advanced analytics
- Advanced media management
- Scheduled notifications and background jobs

P1 and P2 features are not guaranteed for the first release. Final P0 scope should be confirmed by project leadership before release.
