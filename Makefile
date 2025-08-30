.PHONY: help install dev-install test lint format clean build

help: ## Show this help message
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Install the project dependencies
	poetry install

dev-install: ## Install development dependencies
	poetry install --with dev

	poetry run pre-commit install


test: ## Run tests
	poetry run pytest

test-cov: ## Run tests with coverage
	poetry run pytest --cov=three_d_ml --cov-report=html

lint: ## Run linting
	poetry run ruff check

format: ## Format code
	poetry run ruff format

format-check: ## Check if code is formatted
	poetry run ruff format --check

fix: ## Fix linting issues
	poetry run ruff check --fix

clean: ## Clean build artifacts
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info/
	find . -type d -name __pycache__ -delete
	find . -type f -name "*.pyc" -delete

build: ## Build the package
	poetry build

run: ## Run the application
	poetry run python -m three_d_ml
