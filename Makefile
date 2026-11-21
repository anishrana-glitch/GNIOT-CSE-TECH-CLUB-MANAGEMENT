PYTHON ?= python

ifeq ($(OS),Windows_NT)
VENV_PYTHON := backend/.venv/Scripts/python.exe
else
VENV_PYTHON := backend/.venv/bin/python
endif

.PHONY: help install install-frontend install-backend dev-frontend dev-backend test build

help:
	@$(PYTHON) -c "print('Available targets:\n  help             Display available Make targets\n  install          Install frontend and backend dependencies\n  install-frontend Install frontend dependencies with npm ci\n  install-backend  Create backend/.venv and install runtime and development dependencies\n  dev-frontend     Start the Vite development server\n  dev-backend      Start the FastAPI server with Uvicorn\n  test             Run configured frontend and backend checks\n  build            Build the frontend')"

install: install-frontend install-backend

install-frontend:
	cd frontend && npm ci

install-backend:
	@$(PYTHON) -c "import venv; venv.EnvBuilder(with_pip=True).create(r'backend/.venv')"
	$(VENV_PYTHON) -m pip install -r backend/requirements.txt -r backend/requirements-dev.txt

dev-frontend:
	cd frontend && npm run dev

dev-backend:
	$(VENV_PYTHON) -m uvicorn app.main:app --reload --app-dir backend

test:
	cd frontend && npm run lint
	@$(PYTHON) -c "from pathlib import Path; import subprocess, sys; excluded={'.venv','node_modules','.git','frontend/node_modules'}; files=[str(p) for p in Path('.').rglob('test_*.py') if not excluded.intersection(p.parts)] + [str(p) for p in Path('.').rglob('*_test.py') if not excluded.intersection(p.parts)]; files=list(dict.fromkeys(files)); sys.exit(subprocess.run([r'$(VENV_PYTHON)','-m','pytest']+files).returncode if files else print('No backend Pytest test files found.'))"

build:
	cd frontend && npm run build