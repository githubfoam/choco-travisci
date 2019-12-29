import unittest

# import awesome
import admin

class TestMethods(unittest.TestCase):
    def test_add(self):
        if not admin.isUserAdmin():
            admin.runAsAdmin()
            self.assertEqual(smile(), ":)")

    def smile():
        return ":)"

    def frown():
        return ":("

if __name__ == '__main__':
    unittest.main()
