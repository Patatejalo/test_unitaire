import unittest
from exo2.addition import addition

class TestAddition(unittest.TestCase):
    def test_deux_positifs(self):
        self.assertEqual(addition(2,3),5)

    def test_negatif(self):
            self.assertEqual(addition(-1,1),0)