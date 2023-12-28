

# # Python Console Application
# # Introduction
# print('Welcome to Recipea')
# print('Just like Tinder, but with taste')
# while True:
#     # Display options to the user
#     print("1. Add a recipe")
#     print("2. Search for recipes")
#     print("3. Exit")
#
#     choice = input("Enter your choice (1-3): ")
#
#     if choice == "1":
#         # Logic to add a recipe
#         # Create a dictionary for recipe table with the user input
#         n = ("recipe_name", "preparation_time", "portions, meal_type",
#         "health, cuisine_type", "cooking_directions", "image_url")
#         recipe_dict = {}
#         for key in n:
#             value = input(f"Enter your {key}: ")
#             recipe_dict[key] = value
#


from recipea.app.api.recipea_db import insert_recipe

# Python Console Application
# Introduction
print('Welcome to Recipea')
print('Just like Tinder, but with taste')

while True:
    # Display options to the user
    print("1. Add a recipe")
    print("2. Search for recipes")
    print("3. Exit")

    choice = input("Enter your choice (1-3): ")

    if choice == "1":
        # Logic to add a recipe
        # Create a dictionary for recipe table with the user input
        recipe_dict = {}
        recipe_dict["recipe_name"] = input("Enter the recipe name: ")
        recipe_dict["preparation_time"] = input("Enter the preparation time in minutes: ")
        recipe_dict["portions"] = input("Enter the number of portions: ")
        recipe_dict["meal_type"] = input("Enter the meal type: ")
        recipe_dict["health"] = input("Enter the health information: ")
        recipe_dict["cuisine_type"] = input("Enter the cuisine type: ")
        recipe_dict["cooking_directions"] = input("Enter the cooking directions: ")
        recipe_dict["image_url"] = input("Enter the image URL: ")

        # Create a dictionary for ingredients table with the user input
        ingredients_dict = []
        option = "y"

        print("\nEnter the ingredients that you have in your recipe: ")
        while option != "n":
            if option == "y":
                ingredient_name = input("Enter an ingredient name: ")
                quantity = input("Enter the quantity: ")
                measure = input("Enter the measure (ex: can, kg, jar, etc): ")

                ingredients_dict.append({
                    "name": ingredient_name,
                    "quantity": quantity,
                    "measure": measure
                })

                option = input("\nDo you want to add another ingredient? y/n").lower()
            else:
                print("\nPlease type yes or no (y/n)")

        recipe_dict["ingredients"] = ingredients_dict

        insert_recipe(recipe_dict)

        print("Recipe added successfully!\n")

    elif choice == "2":
        # Logic to search for recipes
        search_term = input("Enter a search term: ")
        # Perform a database query based on the search term and display the results

    elif choice == "3":
        print("Exiting the application...")
        break

    else:
        print("Invalid choice. Please try again.\n")
