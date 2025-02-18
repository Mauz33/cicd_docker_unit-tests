import unittest


def add(x, y):
    return x + y


class TestMath(unittest.TestCase):
    def test_add(self):
        self.assertEqual(add(5, 14), 19)


if __name__ == '__main__':
    unittest.main()