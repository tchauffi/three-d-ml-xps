# three-d-ml-xps

This project contains experiments about 3D machine learning such as Neural SDF of nerf...

## Installation

This project uses [Poetry](https://python-poetry.org/) for dependency management.

1. Install Poetry if you haven't already:

   ```bash
   curl -sSL https://install.python-poetry.org | python3 -
   ```

2. Install dependencies:

   ```bash
   poetry install
   ```

3. Activate the virtual environment:

   ```bash
   poetry shell
   ```

## Development

### Code Quality

This project uses [Ruff](https://docs.astral.sh/ruff/) for linting and formatting.

- Format code: `poetry run ruff format`
- Lint code: `poetry run ruff check`
- Fix linting issues: `poetry run ruff check --fix`

### Testing

Run tests with:

```bash
poetry run pytest
```

### Pre-commit Hooks

This project uses pre-commit hooks to ensure code quality.

1. Install pre-commit hooks:

   ```bash
   poetry run pre-commit install
   ```

2. Run pre-commit on all files:

   ```bash
   poetry run pre-commit run --all-files
   ```

## Usage

```python
from three_d_ml import main

main()
```

## License

This project is not licensed.
