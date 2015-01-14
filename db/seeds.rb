food_types = %w(Curry Dessert Sides Breakfast)
food_types.each{ |type| FoodType.where(name: type).first_or_create }

food_preferences = %w(Vegetarian Vegan Meat Dairy)
food_preferences.each{ |d| FoodPreference.where(name: d).first_or_create }

cuisines = %w(Italian Mexican Indian Chinese)
cuisines.each{ |d| Cuisine.where(name: d).first_or_create }