import unittest

# import awesome


class TestMethods(unittest.TestCase):
    def test_add(self):
        self.assertEqual(smile(), ":)")

    def smile():
        return ":)"

    def frown():
        return ":("

if __name__ == '__main__':
    unittest.main()
