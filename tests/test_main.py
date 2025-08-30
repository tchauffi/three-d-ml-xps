"""Tests for three_d_ml."""

import pytest

from three_d_ml import __version__


def test_version():
    """Test that version is accessible."""
    assert __version__ == "0.1.0"


def test_main(capsys):
    """Test main function."""
    from three_d_ml.main import main
    
    main()
    captured = capsys.readouterr()
    assert "Hello from three-d-ml-xps!" in captured.out
