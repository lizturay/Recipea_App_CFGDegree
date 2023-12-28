import os
import requests
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# Access the environment variables (on the file .env)
base_url = os.getenv("EDAMAM_BASE_URL")
app_id = os.getenv("EDAMAM_APP_ID")
app_key = os.getenv("EDAMAM_APP_KEY")


def get_recipe_edamam(cuisine_type, health, meal_type, ingredient):
    try:
        # Replace characters not allowed in requests (e.g. white space and forward slash)
        cuisine_type, health, meal_type, ingredient = list(process_params(cuisine_type, health, meal_type, ingredient))

        meal_type = f"&mealType={meal_type}" if meal_type else ""
        health = f"&Health={health}" if health else ""
        cuisine_type = f"&cuisineType={cuisine_type}" if cuisine_type else ""
        ingredient = f"&q={ingredient}" if ingredient else ""

        # Build URL with 'to' parameter for result limit
        url = f"{base_url}?type=public&{ingredient}&{cuisine_type}&{health}&{meal_type}&app_id={app_id}&app_key={app_key}"

        # Make request
        response = requests.get(url)

        # Check response status code
        if response.status_code == 200:
            # Request successful
            results = response.json()

            if not results["hits"]:
                return None

            data = []

            for recipe in results["hits"]:
                ingredients = recipe["recipe"]["ingredients"]
                ingredient_info = []
                for ingredient in ingredients:
                    ingredient_info.append({
                        "name": ingredient["food"],
                        "measure": ingredient["measure"],
                        "quantity": ingredient["quantity"],
                        "category": ingredient["foodCategory"]
                    })

                data.append({
                    "meal_type": recipe["recipe"]["mealType"][0],
                    "health": ", ".join(recipe["recipe"]["healthLabels"]),
                    "cuisine_type": recipe["recipe"]["cuisineType"][0],
                    "ingredients": ingredient_info
                })

            return data

        else:
            # Request failed
            raise Exception(response.status_code)

    except Exception:
        raise


def process_params(*params):
    for param in params:
        yield param.lower().replace("/", "%5f").replace(" ", "%20")
