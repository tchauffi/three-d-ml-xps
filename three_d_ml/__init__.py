"""This project contains experiments about 3D machine learning such as Neural SDF of nerf..."""

__version__ = "0.1.0"
__author__ = "Thibaut CHAUFFIER"
__email__ = "tchauffi@gmail.com"

import warnings
try:
    from .main import main
except ImportError as e:
    main = None
    warnings.warn(f"Could not import 'main' from '.main': {e}", ImportWarning)

__all__ = ["main"]
