import unittest
import json
from flask import Blueprint, request
from recipea.app.api.edamam import get_recipe_edamam
from recipea.app.api.recipea_db import insert_recipe, update_recipe, search_recipe


class ApiRoutesTest(unittest.TestCase):

    def test_search_recipe_edamam(self):
        # Setup
        cuisine_type = "Italian"
        health = "Healthy"
        meal_type = "Lunch"
        ingredient = "Tomato"

        # Call the function
        data = get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

        # Assert the results
        self.assertIsNotNone(data)
        self.assertIsInstance(data, list)
        self.assertGreater(len(data), 0)

    def test_insert_recipe_db(self):
        # Setup
        data = {
            "recipe_name": "Nigerian Buns",
            "cuisine_type": "Nigerian",
            "health": "Vegetarian",
            "meal_type": "dessert",
            "cooking_directions": "1. In a medium bowl mix all the dry ingredients, flour baking powder, salt, sugar, grated orange, and nutmeg. 2. Stir in the milk, eggs, vanilla, and coconut flakes and oil; mix well until everything has been fully incorporated. The batter should be smooth, thick and spoon able. 3. In a large, sauce pan pour vegetable oil, until it is at least 3 inches (or about 5 centimeters) high (too little will result in flatter balls), and place on medium heat until oil is 375 degrees. 4. I use my hands to scoop up the batter; you can do the same or use 2 spoons - one to scoop up the batter, and another spoon or spatula to drop it in the oil- in the shape of a ball. Do not overcrowd the pan. Do so in batches. 5. Fry for a few minutes until the bottom side is golden brown. 6. Turn the ball over and fry for a few more minutes until the other side is golden brown. 7. Use a large spoon or something like that to take it out of the oil. I usually place them on napkins right away to soak up some of the excess oil. 8. If desired, you can roll the finished product in table sugar or powdered sugar to make it sweeter.",
            "preparation_time": 15,
            "portions": 20,
            "image_url": "https://upload.wikimedia.org/wikipedia/commons/6/6d/Buns_Recipe.jpg"
        }

        # Call the function
        message, status = insert_recipe(data)

        # Assert the results
        self.assertEqual(message, {"status": "success"})
        self.assertEqual(status, 200)

    def test_update_recipe_db(self):
        # Setup
        data = {
            "recipe_name": "Nigerian Buns",
            "cuisine_type": "Nigerian",
            "health": "Vegetarian",
            "meal_type": "Dessert",
            "instructions": "1. In a medium bowl mix all the dry ingredients, flour baking powder, salt, sugar, grated orange, and nutmeg. 2. Stir in the milk, eggs, vanilla, and coconut flakes and oil; mix well until everything has been fully incorporated. The batter should be smooth, thick and spoon able. 3. In a large, sauce pan pour vegetable oil, until it is at least 3 inches (or about 5 centimeters) high (too little will result in flatter balls), and place on medium heat until oil is 375 degrees. 4. I use my hands to scoop up the batter; you can do the same or use 2 spoons - one to scoop up the batter, and another spoon or spatula to drop it in the oil- in the shape of a ball. Do not overcrowd the pan. Do so in batches. 5. Fry for a few minutes until the bottom side is golden brown. 6. Turn the ball over and fry for a few more minutes until the other side is golden brown. 7. Use a large spoon or something like that to take it out of the oil. I usually place them on napkins right away to soak up some of the excess oil. 8. If desired, you can roll the finished product in table sugar or powdered sugar to make it sweeter.",
            "preparation_time": 15,
            "portions": 21,
            "image_url": "https://upload.wikimedia.org/wikipedia/commons/6/6d/Buns_Recipe.jpg"
        }

        # Call the function
        recipe_id = 16
        message, status = update_recipe(recipe_id, data)

        # Assert the results
        self.assertEqual(message, {"status": "success"})
        self.assertEqual(status, 200)

    def test_search_recipe(self):
        # Setup
        cuisine_type = "Italian"
        health = "Healthy"
        meal_type = "Lunch"
        ingredient = "Tomato"

        # Call the function
        data = search_recipe(cuisine_type, health, meal_type, ingredient)

        # Assert the results
        self.assertIsNotNone(data)
        data_list = list(data)
        self.assertIsNotNone(data_list)
        self.assertIsInstance(data_list, list)



if __name__ == "__main__":
    unittest.main()