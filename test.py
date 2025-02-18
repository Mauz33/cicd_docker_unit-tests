import pytest

def add(x, y):
    return x + y


def test_add():
    assert add(5, 14) == 19