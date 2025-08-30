# Notebooks

This directory contains Jupyter notebooks for exploration, analysis, and documentation of three-d-ml-xps.

## Getting Started

1. Install notebook dependencies:
   ```bash
   poetry add jupyter ipykernel
   ```

2. Register the project kernel:
   ```bash
   poetry run python -m ipykernel install --user --name three_d_ml --display-name "three-d-ml-xps"
   ```

3. Start Jupyter:
   ```bash
   poetry run jupyter notebook
   # or
   poetry run jupyter lab
   ```

## Notebook Organization

- `example_analysis.ipynb` - Example notebook showing basic usage
- Add your own notebooks here for:
  - Data exploration
  - Prototyping
  - Analysis and visualization
  - Documentation and tutorials

## Best Practices

- Keep notebooks focused on specific tasks
- Use descriptive names for notebooks
- Clear outputs before committing (see .gitignore for notebook output handling)
- Add markdown cells to explain your analysis
- Import your package modules to test and use your code

## Dependencies

Common notebook dependencies that you might want to add:

```bash
# Data science stack
poetry add pandas numpy matplotlib seaborn plotly

# Machine learning
poetry add scikit-learn

# Additional Jupyter tools
poetry add jupyterlab-widgets ipywidgets
```
