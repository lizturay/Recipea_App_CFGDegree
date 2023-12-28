import os
import unittest
import requests
from dotenv import load_dotenv
from edamam import get_recipe_edamam

# Load environment variables from .env file
load_dotenv()

# Access the environment variables (on the file .env)
base_url = os.getenv("EDAMAM_BASE_URL")
app_id = os.getenv("EDAMAM_APP_ID")
app_key = os.getenv("EDAMAM_APP_KEY")

"""
IMPORTANT:
PLEASE READ BEFORE PROCEEDING WITH THE TESTS:

This file has two classes as one holds a test that simulates a connection issue that would fail the other tests.
"""

class TestGetRecipeEdamam(unittest.TestCase):

    # Test if with valid parameters a recipe can be retrieved
    def test_get_recipe_edamam_with_valid_parameters(self):
        # Set up the test data
        cuisine_type = "Italian"
        health = "Vegetarian"
        meal_type = "lunch/dinner"
        ingredient = "Rigatoni"

        # Call the function
        recipes = get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

        # Assert that the function returned a list of recipes
        self.assertIsInstance(recipes, list)

        # Assert that the list of recipes is not empty
        self.assertGreater(len(recipes), 0)

        # Assert that each recipe in the list has the expected properties

        for recipe in recipes:
            self.assertEqual(recipe["meal_type"], meal_type)
            self.assertEqual(recipe["cuisine_type"].lower(), cuisine_type.lower())
            self.assertIsNotNone(recipe["ingredients"])

    def test_get_recipe_edamam_with_invalid_parameters(self):
        cuisine_type = ""
        health = ""
        meal_type = ""
        ingredient = ""
        self.assertIsNone(get_recipe_edamam(cuisine_type, health, meal_type, ingredient))

    def test_get_recipe_edamam_with_no_results(self):
        cuisine_type = "Macedonian"
        health = "Vegan"
        meal_type = "breakfast"
        ingredient = "Wasabi"

        recipes = get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

        self.assertIsNone(recipes)

    def test_get_recipe_edamam_with_empty_parameters(self):
        cuisine_type = ""
        health = ""
        meal_type = ""
        ingredient = ""

        # Call the function
        recipes = get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

        self.assertIsNone(recipes)

    def test_get_recipe_edamam_with_nonexistent_ingredient(self):
        cuisine_type = "Italian"
        health = "Vegetarian"
        meal_type = "lunch/dinner"
        ingredient = "XXXXXXXXX"

        recipes = get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

        # Assert that the function returned an empty list
        self.assertIsNone(recipes)

class TestConnectionIssueEdamam(unittest.TestCase):

    def test_get_recipe_edamam_with_connection_error(self):
        cuisine_type = "Italian"
        health = "Vegetarian"
        meal_type = "lunch/dinner"
        ingredient = "Pasta"

        #Simulate a connection error
        requests.get = lambda *args, **kwargs: None

        with self.assertRaises(Exception):
            get_recipe_edamam(cuisine_type, health, meal_type, ingredient)


if __name__ == "__main__":
    unittest.main()
