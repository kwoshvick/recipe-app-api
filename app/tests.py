from django.test import TestCase

from app.calc import add , subtract

class CalcTests(TestCase):

    def test_add_numbers(self):
        """Test that two numbers are added together"""
        self.assertEqual(add(4, 5), 9)

    def test_subtract_numbers(self):
        """Test that two numbers can subtract"""
        self.assertEqual(subtract(5, 4), 1)
