CREATE DATABASE recipea_app_user_fed_db;

USE recipea_app_user_fed_db;

CREATE TABLE recipes (
    recipe_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    recipe_name VARCHAR(255) NOT NULL,
    preparation_time TIME NULL,
    portions INT NULL,
    meal_type VARCHAR(500) NOT NULL,
    health VARCHAR(500) NULL,
    cuisine_type VARCHAR(500) NOT NULL,
    cooking_directions VARCHAR(4500) NOT NULL,
    image_url VARCHAR(1000) NULL
);

CREATE TABLE ingredients (
    ingredient_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL
);

CREATE TABLE measures (
    measure_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE recipes_ingredients (
    recipe_ingredient_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    recipe_ID INT NOT NULL,
    ingredient_ID INT NOT NULL,
    measure_ID INT NULL,
    quantity DECIMAL(10, 2) NULL,
    FOREIGN KEY (recipe_ID) REFERENCES recipes (recipe_ID),
    FOREIGN KEY (ingredient_ID) REFERENCES ingredients (ingredient_ID),
    FOREIGN KEY (measure_ID) REFERENCES measures (measure_ID)
);

INSERT INTO
    ingredients (name)
VALUES
    ('salt'),
    ('pepper'),
    ('olive oil'),
    ('vegetable oil'),
    ('all-purpose flour'),
    ('granulated sugar'),
    ('eggs'),
    ('milk'),
    ('butter'),
    ('chicken'),
    ('beef'),
    ('fish'),
    ('pasta'),
    ('rice'),
    ('potatoes'),
    ('onions'),
    ('garlic'),
    ('tomatoes'),
    ('carrots'),
    ('celery'),
    ('water'),
    ('tapioca flour'),
    ('freshly grated parmesan cheese'),
    ('beaten eggs'),
    ('thick beef tenderloin'),
    ('extra virgin olive oil'),
    ('Kosher salt'),
    ('ground black pepper'),
    ('yellow mustard'),
    ('mushrooms'),
    ('thin slices of ham'),
    ('puff pastry'),
    ('egg yolk'),
    ('flaky salt'),
    ('unsalted butter'),
    ('bay leaves'),
    ('sour cream'),
    ('fresh dill'),
    ('caramelized onions'),
    ('white cheese'),
    ('plain flour'),
    ('bicarbonate of soda'),
    ('zest of lemon'),
    ('jam'),
    ('glucose'),
    ('cinnamon'),
    ('cloves'),
    ('orange'),
    ('orange peels'),
    ('whole milk'),
    ('fine semolina'),
    ('phyllo dough sheets'),
    ('vanilla powder'),
    ('pistachio'),
    ('breadcrumbs'),
    ('russet potatoes'),
    ('lemon'),
    ('honey'),
    ('shredded cabbage'),
    ('chopped scallions'),
    ('panko breadcrumbs'),
    ('sea salt'),
    ('Vegan Worcestershire sauce'),
    ('mayonnaise'),
    ('sesame seeds'),
    ('pickled ginger'),
    ('nori sheets'),
    ('microgreens'),
    ('almond'),
    ('icing sugar'),
    ('egg whites'),
    ('red food coloring paste'),
    ('yellow food coloring paste'),
    ('chocolate ganache'),
    ('strawberry jam'),
    ('lemon jam'),
    ('boneless pork steak'),
    ('brown mushroom gravy'),
    ('fresh parsley'),
    ('Gruyere'),
    ('Emmentaler'),
    ('dry white wine'),
    ('cornstarch'),
    ('fresh lemon juice'),
    ('kirsch liquor'),
    ('nutmeg'),
    ('pre-cooked cornmeal');

INSERT INTO
    measures (name)
VALUES
    ('teaspoon'),
    ('tablespoon'),
    ('cup'),
    ('ounce'),
    ('pound'),
    ('gallon'),
    ('kilogram'),
    ('gram'),
    ('milliliter'),
    ('liter'),
    ('stick'),
    ('large'),
    ('medium');




INSERT INTO
    recipes (
        recipe_name,
        preparation_time,
        portions,
        meal_type,
        health,
        cuisine_type,
        cooking_directions,
        image_url
    )
VALUES
    (
        'Brazilian Cheese Bread',
        '00:40:00',
        6,
        'Breakfast',
        'Gluten-Free',
        'Brazilian',
        '1. Preheat the oven to 375 degrees F (190 degrees C). 2. Combine olive oil, water, milk, and salt in a large saucepan and place over high heat. 3. Bring to a boil and immediately remove from the heat. 4. Stir in tapioca flour and garlic, stirring until smooth. 5. Set aside to rest for 10 to 15 minutes. 6. Stir cheese and eggs into tapioca mixture until combined; the dough will be chunky, like cottage cheese. 7. Drop dough by 1/4 cup-size balls onto an ungreased baking sheet. 8. Bake in the preheated oven until the tops are lightly browned, 15 to 20 minutes.',
		'https://upload.wikimedia.org/wikipedia/commons/e/e9/P%C3%A3o_de_queijo.jpg'
    ),
    (	
        'One-Pot Pasta',
        '00:20:00',
        4,
        'Main Course',
        'Comfort Food',
        'Italian',
        '1. Bring a large pot of salted water to a boil. Add the pasta and cook according to the package directions. 2. While the pasta is cooking, heat 1 tablespoon of oil in a large skillet over medium heat. Add the vegetables and cook until softened, about 5 minutes. 3. Add the chicken and cook until browned, about 5 minutes. 4. Stir in the sauce and cook until heated through, about 2 minutes. 5. Drain the pasta and add it to the skillet with the sauce. Toss to coat. 6. Serve immediately.',
        'https://i.imgur.com/7890123.jpg'
    ),
    (
        'Tacos al Pastor',
        '00:30:00',
        4,
        'Main Course',
        'Comfort Food',
        'Mexican',
        '1. Heat the oil in a large skillet over medium heat. Add the onions and cook until softened, about 5 minutes. 2. Add the garlic and cook for 1 minute more. 3. Add the pork and cook until browned on all sides. 4. Add the pineapple, tomatoes, and cilantro. Cook for 10 minutes, or until the pork is cooked through. 5. Serve in tortillas with your favorite toppings.',
        'https://i.imgur.com/6789012.jpg'
    ),
    (
        'Chicken Parmesan',
        '00:45:00',
        4,
        'Main Course',
        'Comfort Food',
        'Italian',
        '1. Preheat the oven to 400 degrees F (200 degrees C). 2. Pound the chicken breasts to 1/4-inch thickness. 3. Dredge the chicken in flour, then egg, then breadcrumbs. 4. Heat the oil in a large skillet over medium heat. 5. Cook the chicken for 2-3 minutes per side, or until golden brown. 6. Transfer the chicken to a baking dish. 7. Top with the tomato sauce and mozzarella cheese. 8. Bake for 15-20 minutes, or until the cheese is melted and bubbly. 9. Serve immediately.',
        'https://i.imgur.com/5432167.jpg'
    ),
    (
        'Chocolate Chip Cookies',
        '00:15:00',
        12,
        'Dessert',
        'Comfort Food',
        'American',
        '1. Preheat the oven to 375 degrees F (190 degrees C). 2. Cream together the butter and sugar until light and fluffy. 3. Beat in the eggs one at a time, then stir in the vanilla. 4. In a separate bowl, whisk together the flour, baking soda, and salt. 5. Gradually add the dry ingredients to the wet ingredients, mixing until just combined. 6. Stir in the chocolate chips. 7. Drop by rounded tablespoons onto ungreased baking sheets. 8. Bake for 10-12 minutes, or until golden brown. 9. Let cool on baking sheets for a few minutes before transferring to a wire rack to cool completely.',
        'https://i.imgur.com/8901234.jpg'
    ),
    (
        'Potato Varenyky',
        '01:20:00',
        12,
        'Main Course',
        'Vegetarian',
        'Ukranian',
        '1. Potato Filling: Bring a large pot to a boil, salt with water to taste. Peel the potatoes and cut into quarters. Add to water along with bay leaves and cook uncovered on medium heat until fork tender. About 10-12 minutes. Remove from heat, drain water and remove bay leaves. Add butter and mash until smooth. Add milk and using a spoon whip the potatoes until combined. 2. Make Varenyky: Add milk and butter pieces into a pot and heat until butter melts on low heat. Mix to combine. Let cool for 5 minutes. In a bowl add flour, salt and 1 egg, whisked. Slowly add in the slightly cooled milk and butter mixture. Stir to combine. Once dough is formed, add some flour on your countertop and knead the dough for 2-3 minutes. Set the dough aside and cover to rest for 10 minutes. Once you are ready to make your first batch of vareniki, divide your dough into 3 pieces. Cover the pieces you aren’t using. Roll out the dough thinly on a floured surface to just under 1/8” thickness. Using either glass or a 3 inch cookie cutter, cut out round shapes. Keep the shapes as close as possible, keeping the scraps (add them to the unused dough to reuse). 3. Assemble Varenyky: Add 1/2 Tbsp of potatoes over each round piece of dough, fold over in half and pinch together to seal and make a half moon shape. To ensure a tight seal, crimp the edges a second time with a pinch and twist motion. Place the prepared vareniki on a floured baking sheet to prevent sticking. 4. Cooking Varenyky: Bring a large pot of water to a rolling boil and add kosher salt to taste. Carefully add fresh or frozen vareniki once water has boiled. Cook for about 10-12 minutes, then once the vareniki are floating and water is back to a boil, the dough should be very tender. Carefully remove to a bowl with a slotted spoon. Add butter and gently toss to combine. Add to a bowl, top with sour cream and fresh dill or green onions and enjoy. Or kick it up a notch and cook up some caramelized onions to add as a topping along with sour cream and fresh herbs.',
		'https://upload.wikimedia.org/wikipedia/commons/6/65/Warenyky1.jpg'
    ),
    (	
        'Papanasi',
        '00:55:00',
        4,
        'Dessert',
        'Vegetarian',
        'Romanian',
        '1. Grate or crumble the cheese and add it to a large bowl. Mix in the egg, sugar, lemon zest and bicarbonate of soda. 2. Add the flour and knead until you get a dough that is still very slightly sticky. 3. Shape it into a ball. 4. Let the dough to rest for about 15-20 minutes. 5. Divide the dough into 4 smaller balls. 6. Each ball will then be devided into 2, we will need about ¾ of that dough for the main doughnut and ¼ for the small ball that goes on top. 7. We will then have 4 doughnuts and 4 small balls in total. 8. To make the doughnut, just use your thumbprint to make a hole in the middle of the dough and give it a nice round shape. 9. Heat up a large pan and add the oil. 10. Add one doughnut and one ball and let them fry on each side for about 2 minutes until golden. 11. Remove with a spatula and transfer to a plate lined with kitchen towel to absorbe any excess oil. Repeat with the remaining doughnuts and balls. 12. Serve with sour cream and jam.',
		'https://upload.wikimedia.org/wikipedia/commons/7/7f/Papanasi-romaniancook.jpg'
    ),
    (
        'Galaktobureko',
        '02:50:00',
        12,
        'Dessert',
        'Vegetarian',
        'Greek',
        '1. For the syrup: Place a pot over medium heat, add the sugar, the water, the glucose, the cinnamon, the cloves, the orange peels, and let them come to a boil. Remove the pot from the heat and set the syrup aside to cool. 2. For the cream: Place a pot with water over medium heat, add the oranges and boil them for 1 hour. Make sure that they are constantly covered with plenty of water and, if needed, add more water during boiling. Remove the oranges from the pot and set them aside to cool. Cut the boiled oranges in half, remove the seeds, and juice them well. Beat the oranges in a food processor until they are pureed. Set them aside until needed. Place a pot over medium heat, add the milk, the sugar, and let the milk come to a boil. Add the semolina and whisk well for 4-5 minutes, until the cream thickens. Remove the pot from the heat, add the 50 g of ice-cold butter along with the orange puree, whisk well, and set aside for 5-10 minutes so that the temperature of the cream drops. Add the eggs one by one, the vanilla powder, and whisk until homogenized. 3. To Assemble: Preheat the oven to 160°C (320°F) set to fan. Melt the remaining 220 g butter in the microwave or in a pot. With a pastry brush, butter a 30x35 cm baking pan well. Place the first phyllo sheet in the pan and drizzle it with plenty of butter, making sure that the pastry brush does not touch the phyllo. Follow the same process for the remaining five phyllo sheets and then, press them lightly with your hands. Add the filling on top, spread it well with a spoon, and turn the edges of the phyllo inwards. Drizzle the cream with a little butter. Follow the same process for the rest of the phyllo sheets. Attention! Do not forget to drizzle the phyllo sheets, one by one, with butter. Place the last phyllo sheet carefully on top, flip the edges inwards, press them with the pastry brush, and brush them with butter. This way, you will “seal” the galaktoboureko. With a knife, score the galaktoboureko into 12 pieces, slightly cut them, and pour the rest of the butter over them. Bake in the oven for 1 hour and 30 minutes. Take the galaktoboureko out of the oven and pour the cold syrup over it. Set it aside to cool and absorb the whole syrup. Serve with the orange peels from the syrup and cloves.',
		'https://upload.wikimedia.org/wikipedia/commons/7/7d/Galaktoboureko.jpg'
    ),
    (
        'Baklava',
        '02:35:00',
        20,
        'Dessert',
        'Vegetarian',
        'Turkish',
        '1. For the filling: In a chopper blender add the pistachio, dried breadcrumbs, cinnamon, and cloves, and beat well until all the ingredients are crushed. 2. For the baklava: Preheat the oven to 150°C (300°F) set to fan. Butter a 25x32 cm baking pan. Spread the phyllo sheets on your worktop and cut them according to the pan’s size. Set aside the phyllo pieces that you cut off. Add half of the sheets into the pan, spread the whole filling over them, cover with the remaining sheets, and spread the phyllo pieces you set aside on top. Score the baklava into diagonal pieces. Use a ladle to pour the melted butter gradually over the baklava and spread it well with a pastry brush. Transfer the pan to the oven, at the top rack position, and bake the baklava for 2 hours until golden crispy. 3. For the syrup: Prepare the syrup a few minutes before you take the baklava out of the oven. Place a pot over high heat and allow it to heat up well. Add the sugar, water, lemon, honey, and cinnamon, and bring the mixture to a boil until the sugar dissolves. Once the syrup comes to a boil and the baklava is out of the oven, pour it straight away over the hot baklava. Use a ladle to pour the syrup carefully and gradually in order to keep the baklava intact. Set the baklava aside until it absorbs the whole syrup. Cut it into pieces and serve.',
        'https://upload.wikimedia.org/wikipedia/commons/1/12/2018-04-28_Turkish_baklava_in_Australian_turkish_cafe.jpg'
    ),
    (
        'Okonomiyaki',
        '00:25:00',
        2,
        'Main Course',
        'Vegetarian',
        'Japanese',
        '1. In a large bowl, combine the cabbage, scallions, panko, and salt. Gently mix in the eggs. (Note: the mixture will be very loose and cabbagey, not like a flour pancake batter. If it is very dry, let it sit for 10 minutes). 2. Heat a nonstick skillet over medium heat. Brush the skillet with olive oil and use a ¼ measuring cup to scoop the cabbage mixture into the skillet. (It is ok if it does not seem cohesive, it will bind together as the egg cooks). Flatten gently with a spatula so that the mixture is about 1/2 inch thick. Cook 3 minutes per side, or until browned, turning the heat to low as needed. Repeat with the remaining mixture, wiping out the skillet and brushing more oil, as needed. 3. Drizzle the okonomiyaki with Worcestershire sauce and thin strips of squeezed mayo. Top with sesame seeds, pickled ginger, and nori. Sprinkle with microgreens, if desired. Serve hot.',
		'https://upload.wikimedia.org/wikipedia/commons/a/ae/Okonomiyaki_cooking_5_by_yoppy.jpg'
    ),
    (
        'Macaron',
        '00:50:00',
        30,
        'Dessert',
        'Vegetarian',
        'French',
        '1. For the macaroons: Beat the almonds in a food processor along with the icing sugar until very finely ground. Pass the mixture through a sieve. If any large pieces are left, beat them in the food processor again and then pass them through the sieve. You don’t want any pieces large or small in the mixture. In a mixer’s bowl, add the egg whites and salt. Beat on high speed and add the sugar in 5 batches while beating to make the meringue. Use a spatula to transfer half of the meringue into a separate bowl. To the mixer, add the ground almonds and beat for a few seconds to combine. Add the remaining meringue with a spatula and gently fold so that the meringue doesn’t lose its volume. Divide the mixture into 3 separate bowls. In the first bowl, add the yellow food paste, to the second add the red food paste and leave the third white. Mix the other two bowls with a spoon until the color is completely distributed. Transfer each bowl to a separate pastry bag. Line 2 baking sheets with a sheet of silpat and pipe out the macaroons. Tap them on a counter so that the macaroons even out and set them aside for 1 hour so that a film forms on their surface. Preheat oven to 130* C (266* F) Fan. Bake for 12-13 minutes. Remove from oven and set them aside to cool for 30 minutes. 2. To serve: Place the jellies and ganache into three separate pastry bags. Pipe one flavor on to each macaroon and cover with another piece to make a sandwich! To make the ganache: In a bowl, add 150 g heavy cream, 150 g couverture. Microwave for 1 ½ minutes at 800 Watts. Mix with a spatula until completely combined. Repeat the same process to make all of the macaroons and serve.',
        'https://upload.wikimedia.org/wikipedia/commons/c/cd/Macarons%2C_French_made_mini_cakes.JPG'
    ),
    (
        'Jaegerschnitzel',
        '00:45:00',
        4,
        'Main Course',
        'Comfort Food',
        'German',
        'Pound the pork chops between two sheets of plastic wrap with the flat side of a meat tenderizer until 1/4 inch thick.  Lightly sprinkle both sides with salt and freshly ground black pepper. 2. Place the flour mixture, egg, and breadcrumbs in 3 separate shallow bowls. Dredge the pork chops in the flour, the egg, and the breadcrumbs, coating both sides and all edges at each stage. Be careful not to press the breadcrumbs into the meat. Gently shake off the excess crumbs.  (Note: Do not let the schnitzel sit in the coating or they will not be as crispy once fried - fry immediately.)   Note:  Some regions of Germany make Jaegerschnitzel without the breading.  Simply pound the pork chops, salt and pepper them, fry them and serve them with the gravy. 3. Heat the oil to 330 degrees F (not hotter or the Schnitzel will burn before the meat is done, not lower or the Schnitzel will absorb the oil and be greasy).  Use just enough oil so that the Schnitzels "swim" in it.  Fry the Schnitzel for about 2-3 minutes on both sides until a deep golden brown. Transfer briefly to a plate lined with paper towels. 4. Serve immediately topped with Homemade Brown Mushroom Gravy and garnished with chopped fresh parsley. Avoid completely drenching the Schnitzel with gravy so that much of the Schnitzel remains crispy.  5. Serve with Homemade German Spaetzle, French fries, or Homemade Swabian Potato Salad, and with a fresh leafy green salad or German Cucumber Salad.',
        'https://upload.wikimedia.org/wikipedia/commons/1/10/Jaegerschnitzel-01.jpg'
    ),
    (
        'Cheese Fondue',
        '00:15:00',
        8,
        'Main Course',
        'Vegetarian',
        'Swiss',
        '1. Rub the inside of a cheese fondue pot or medium enameled cast-iron casserole with the garlic clove; discard the garlic. 2. Combine the grated Gruyère and Emmentaler with the wine, cornstarch, and lemon juice in the fondue pot and cook over moderate heat, stirring occasionally, until the cheeses begin to melt, about 5 minutes. 3. Reduce heat to low. Add the kirsch and a generous pinch each of pepper and nutmeg and cook, stirring gently, until creamy and smooth, about 3 minutes; do not overcook the fondue or it will get stringy. Serve at once. 4. Serve at once.',
        'https://upload.wikimedia.org/wikipedia/commons/0/0d/Cheese_fondue-01.jpg'
    ),
    (
        'Arepas de Queso',
        '00:50:00',
        12,
        'Breakfast',
        'Vegetarian',
        'Colombian',
        '1. Combine the cornmeal, warm water, cheese, 1 tbsp butter and salt, mixing thoroughly. Let mixture stand for five minutes. 2. Knead with your hands for about 3 minutes moistening your hands with water as you work. 3. Form 4 small balls with the dough. Place each ball between 2 plastic bags and with a flat pot cover flatten to ½ inch. 4. Add the butter to a nonstick pan over medium heat. Place the arepas in the pan, and cook about 3 minutes on each side, until a crust forms or they are golden brown.',
        'https://upload.wikimedia.org/wikipedia/commons/b/ba/Colombian_Arepas_with_cheese_.jpg'
    ),
     (
        'Beef Wellington',
        '01:45:00',
        4,
        'Main Course',
        'Low-Carb',
        'British',
        '1. Preheat the oven: Allow the oven to preheat to 400°F as you assemble the Wellington. 2. Sear the beef: Season the beef generously with salt and pepper. Heat 2 tablespoons of oil in a large pan on high heat. Sear the beef in the pan on all sides until well browned, about 2 to 3 minutes per side. 3. Brush the beef with mustard: Remove the beef from the pan and let cool. Once cooled, brush the beef on all sides with mustard. 4. Prepare the mushrooms: Chop the mushrooms and put them into a food processor. Pulse until very finely chopped. Heat the sauté pan on medium-high heat. Transfer the mushroom mixture into the pan and cook. Allow the mushrooms to release their moisture for 10 to 15 minutes. When the moisture released by the mushrooms has all boiled away, remove the mushrooms from the pan and set aside to cool. 5. Wrap the beef in mushroom paste and ham: Roll out a large piece of plastic wrap. Lay out the slices of ham on the plastic wrap so that they overlap and are large enough to wrap around and encapsulate the beef. Spread the mushroom mixture over the ham. Place the beef in the middle and roll the mushroom and ham over the beef, using the plastic wrap so that you do this tightly. Wrap up the beef into a tight barrel shape, twisting the ends of the plastic wrap to secure. Refrigerate for 20 minutes. 6. Roll out the puff pastry and wrap the beef: On a lightly floured surface, roll out the puff pastry sheet to a size that will wrap around the beef. Unwrap the beef from the plastic wrap and place in the middle of the pastry dough. Brush the edges of the pastry with the beaten egg yolks. Fold the pastry around the beef, cutting off any excess at the ends. Place on a small plate, seam side down, and brush beaten egg yolks all over the top. Chill for 5 to 10 minutes. 7. Brush with the egg wash and score: Place the pastry-wrapped beef on a baking pan. Brush the exposed surface again with beaten eggs. Score the top of the pastry with a sharp knife, not going all the way through the pastry. Sprinkle the top with coarse salt. 8. Bake in the oven: Bake at 400°F for 25 to 35 minutes. The pastry should be nicely golden when done. To ensure that your roast is medium rare, test with an instant read meat thermometer. Pull out at 125 to 130°F for medium rare. Remove from oven and let rest for 10 minutes before slicing. Slice in 1-inch thick slices. Leftover slices can be stored in the fridge for up to 2 days. Wrap tightly with foil and reheat in a 350°F oven. Once warm, remove the foil and bake for a few minutes more to crisp the pastry. Note that reheated slices will be closer to medium or well-done.',
		'https://upload.wikimedia.org/wikipedia/commons/a/a9/Beef_Wellington_2019.jpg'
    );
    
    

INSERT INTO recipes_ingredients (recipe_ID, ingredient_ID, measure_ID, quantity) VALUES
(1, 3, 3, 1/2),
(1, 21, 3, 1/3),
(1, 8, 3, 1/3),
(1, 1, 1, 1),
(1, 22, 3, 2),
(1, 23, 3, 2/3),
(1, 24, NULL, 2),
(2, 1, 1, 1),
(2, 2, 1, 1),
(2, 3, 1, 1),
(2, 4, 1, 1),
(2, 5, 1, 1/2),
(3, 6, 1, 1),
(3, 7, 1, 1),
(3, 8, 1, 1),
(3, 9, 1, 1),
(3, 10, 1, 1),
(4, 11, 1, 2),
(4, 12, 1, 1),
(4, 13, 1, 1),
(4, 14, 1, 1),
(4, 15, 1, 1/2),
(5, 16, 1, 1/2),
(5, 17, 1, 1),
(5, 18, 1, 1),
(5, 19, 1, 1),
(5, 20, 1, 1/2),
(6, 50, 3, 9/4),
(6, 35, 3, 1),
(6, 5, 3, 4),
(6, 7, NULL, 1),
(6, 27, 1, 1),
(6, 56, NULL, 4),
(6, 36, NULL, 2),
(6, 37, NULL, NULL),
(6, 39, NULL, NULL),
(6, 38, NULL, NULL),
(7, 40, 8, 200),
(7, 7, NULL, 1),
(7, 42, 1, 1/2),
(7, 43, NULL, 1),
(7, 6, 3, 1/2),
(7, 4, 3, 2),
(7, 37, NULL, NULL),
(7, 44, NULL, NULL),
(8, 6, 7, 1.15),
(8, 21, 8, 550),
(8, 45, 8, 130),
(8, 46, 11, 1),
(8, 47, NULL, 14),
(8, 49, NULL, 2),
(8, 48, NULL, 2),
(8, 50, 10, 1),
(8, 51, 8, 130),
(8, 9, 8, 270),
(8, 7, 13, 4),
(8, 53, 8, 1),
(8, 52, 8, 450),
(9, 6, 8, 600),
(9, 21, 8, 400),
(9, 58, 8, 50),
(9, 46, 11, 1),
(9, 47, 1, 1),
(9, 46, 2, 1),
(9, 54, 8, 400),
(9, 55, 8, 50),
(9, 9, 8, 400),
(9, 58, NULL, 1),
(9, 52, 8, 450),
(10, 59, 3, 3),
(10, 60, 3, 5/4),
(10, 61, 3, 1),
(10, 62, 1, 3/4),
(10, 24, NULL, 3),
(10, 26, NULL, NULL),
(10, 63, NULL, NULL),
(10, 64, NULL, NULL),
(10, 65, NULL, NULL),
(10, 66, NULL, NULL),
(10, 67, NULL, 1/2),
(11, 69, 8, 120),
(11, 70, 8, 120),
(11, 71, 8, 100),
(11, 1, NULL, NULL),
(11, 6, 8, 120),
(11, 72, 1, 1/2),
(11, 73, 1, 1/2),
(11, 74, 8, 300),
(11, 75, 8, 200),
(11, 76, 8, 200),
(12, 4, NULL, NULL),
(12, 77, NULL, 4),
(12, 1, 1, 1),
(12, 28, NULL, NULL),
(12, 5, 3, 1/2),
(12, 24, 12, 2),
(12, 55, 3, 3/4),
(12, 78, NULL, NULL),
(12, 79, NULL, NULL),
(13, 17, NULL, 1),
(13, 80, 5, 1),
(13, 81, 5, 1/2),
(13, 82, 3, 1),
(13, 83, 2, 4/3),
(13, 84, 1, 1),
(13, 85, 2, 3/2),
(13, 86, NULL, NULL),
(13, 28, NULL, NULL),
(14, 87, 3, 1),
(14, 21, 3, 1),
(14, 40, 3, 1/3),
(14, 9, 2, 2),
(14, 1, NULL, NULL),
(15, 25, 5, 1),
(15, 27, NULL, NULL),
(15, 28, NULL, NULL),
(15, 26, 2, 2),
(15, 29, 2, 2),
(15, 30, 5, 1),
(15, 33, 12, 2),
(15, 34, NULL, NULL);

-- Recipe data for recipe_ID = 1 (Brazilian cheese bread)
SELECT *
FROM recipes r
WHERE r.recipe_ID = 1;

-- Code was updated as was not showing any data that contained NULL fields #Danielle
SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 1;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 2;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 3;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 4;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 5;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 6;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 7;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 8;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 9;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 10;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 11;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 12;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 13;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 14;

SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
LEFT JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
LEFT JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
LEFT JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 15;

