# Contributing

Thank you for contributing to the GNIOT CSE Tech Club project. Contributions are welcome from club members and external developers.

## Fork-Based Workflow

1. Fork the original repository to your GitHub account.
2. Clone your fork locally.
3. Add the original repository as `upstream` if you need to synchronize it.
4. Create a branch from the appropriate parent branch.
5. Make focused changes and run relevant tests and linters.
6. Commit and push the branch to your fork.
7. Open a pull request against the original repository.
8. Request review and address feedback.

External contributors must submit pull requests to the original repository. This does not imply direct repository write access.

## Branch Naming

Use lowercase, hyphen-separated descriptive names:

- `feature/event-registration`
- `feature/student-dashboard`
- `fix/login-validation`
- `ui/homepage`
- `docs/api-guidelines`
- `refactor/auth-module`

Team module owners manage workstream branches. Contributors under a module owner should branch from and submit pull requests to the relevant workstream branch, not directly to `main`.

## Commit Messages

Use a conventional, imperative format:

- `feat(events): add event registration`
- `fix(auth): correct login validation`
- `docs: update contribution guidelines`
- `chore: update gitignore`

Keep commits focused and avoid mixing unrelated changes.

## Pull Request Requirements

- Use the repository pull request template.
- Explain the summary and link the related issue.
- List all meaningful changes.
- State which tests and checks were performed.
- Add screenshots for relevant UI changes.
- Complete the security and documentation checklist honestly.
- Keep changes scoped and do not introduce undocumented architecture or dependencies.

## Code Quality

- Inspect existing code and follow established repository patterns.
- Preserve existing application behavior unless the change intentionally modifies it.
- Use clear names and small, focused functions or components.
- Do not add frameworks or dependencies without approval.
- Never commit secrets, credentials, `.env` files, virtual environments, or build artifacts.

## Dependency Management

- Never commit `frontend/node_modules/`, `backend/.venv/`, `backend/venv/`, or other Python virtual environments.
- Use `npm install` when intentionally adding or changing frontend dependencies.
- Commit `frontend/package.json` and `frontend/package-lock.json` together.
- Use `npm ci` for routine reproducible frontend installation.
- Add direct backend runtime dependencies to `backend/requirements.txt`.
- Add test and development dependencies to `backend/requirements-dev.txt`.
- Document why any new dependency is needed and remove dependencies that are no longer used.
- Never commit local environment files or credentials.

## Testing

- Add or update tests for behavior introduced or fixed.
- Run the smallest relevant test or lint command before broader validation.
- Frontend changes should use the existing npm scripts.
- Backend changes should use the agreed Pytest setup once the test suite exists.
- Report failures and unrun checks in the pull request.

## Documentation

Update directly related README, API, setup, or onboarding documentation when behavior or requirements change. Do not add speculative documentation for architecture that has not been implemented or approved.
