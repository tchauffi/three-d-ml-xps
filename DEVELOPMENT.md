# Development Setup

This document describes how to set up the development environment for three-d-ml-xps.

## Prerequisites

- Python 3.10+
- [Poetry](https://python-poetry.org/) for dependency management

## Initial Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/tchauffi/three-d-ml.git
   cd three-d-ml
   ```

2. Install dependencies:
   ```bash
   make dev-install
   ```

3. Activate the virtual environment:
   ```bash
   poetry shell
   ```

## Development Workflow

### Code Quality

Before committing code, ensure it passes all quality checks:

```bash
# Format code
make format

# Run linter
make lint

# Fix automatically fixable issues
make fix
```

### Testing

Run the test suite:

```bash
# Run tests
make test

# Run tests with coverage
make test-cov
```

### Pre-commit Hooks

Pre-commit hooks are automatically installed when you run `make dev-install`. They will run on every commit to ensure code quality.

To run pre-commit hooks manually:
```bash
poetry run pre-commit run --all-files
```

### Jupyter Notebooks

This project includes Jupyter notebook support for data exploration and analysis.

#### Setup Notebooks

```bash
# Install notebook kernel
poetry run python -m ipykernel install --user --name three_d_ml --display-name "three-d-ml-xps"

# Start Jupyter Lab
poetry run jupyter lab

# Or start Jupyter Notebook
poetry run jupyter notebook
```

#### Notebook Organization

- Notebooks are located in the `notebooks/` directory
- Use the project kernel for accessing your package
- See `notebooks/README.md` for more details and best practices

### Building and Running

```bash
# Build the package
make build

# Run the application
make run
```

## Available Make Commands

Run `make help` to see all available commands.

## Project Structure

```
three-d-ml/
├── three_d_ml/     # Main package
│   ├── __init__.py
│   └── main.py          # Main module
├── tests/               # Test files
│   ├── __init__.py
│   └── test_main.py
├── notebooks/           # Jupyter notebooks
│   ├── README.md        # Notebook documentation
│   └── example_analysis.ipynb
├── .github/             # GitHub Actions workflows
├── pyproject.toml       # Poetry configuration
├── README.md
├── Makefile            # Development commands
├── .pre-commit-config.yaml
└── .gitignore
```
