# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Dummy User
UserAccount.create(first_name: "test_first_name1", last_name: "test_last_name1", email: "test_email1", user_name: "test1", password: "1234")
UserAccount.create(first_name: "test_first_name2", last_name: "test_last_name2", email: "test_email2", user_name: "test2", password: "1234")
# Populating Weight Type
floz = WeightType.create(type_of_weight: "liquid", measure_type: "fl-oz")
units = WeightType.create(type_of_weight: "solid", measure_type: "unit")
ounces = WeightType.create(type_of_weight: "solid", measure_type: "ounces")
grams = WeightType.create(type_of_weight: "solid", measure_type: "grams")

# Populating Step Listing
Step.create(step_description: "Mix in")
Step.create(step_description: "Add After Mixing")
Step.create(step_description: "Coat Rim with Ingredient")
Step.create(step_description: "Garnish")


# Populating Ingredient Listing
# Vodka
Ingredient.create(ingredient_name: "Grey Goose", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Ciroc", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Strom", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Koskenkorva", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "P.i.n.k Vodka", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Absolwent", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Stolichnaya", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Absolut", weight_type_id: floz.id)
# Rum
Ingredient.create(ingredient_name: "Cavalier", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Cavalier", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Cavalier", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Cavalier", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Cavalier", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Cavalier", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Cavalier", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Cavalier", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Cavalier", weight_type_id: floz.id)

# Gin
list_of_gin = ["Cavalier", "English Harbour", "Havana Club","Rhum Barbancourt","Rum-bar rum","Bacardi"]
list_of_gin.each do |gin|
  Ingredient.create(ingredient_name: gin, weight_type_id: floz.id)
end

#Tequila
list_of_tequila = ["1519 Tequila","Avion tequila","Cabo Wabo","Cruz Tequila","Don Eduardo","Tequila Corralejo"]
list_of_tequila.each do |tequila|  
  Ingredient.create(ingredient_name: tequila, weight_type_id: floz.id)
end

#Bourbon
list_of_bourbon = ["Jack Daniel's","Black Reserve Bourbon Whiskey", "hunderbeast Baby Buffalo Bourbon Whiskey"]
list_of_bourbon.each do |bourbon|  
  Ingredient.create(ingredient_name: bourbon, weight_type_id: floz.id)
end

#Scotch
Ingredient.create(ingredient_name: "Generic Scotch", weight_type_id: floz.id)

#whiskey
Ingredient.create(ingredient_name: "Generic Whiskey", weight_type_id: floz.id)

#brandy
Ingredient.create(ingredient_name: "Generic Brandy", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Triple Sec", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Generic Maraschino Liquer", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Generic Coffee Liquer", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Generic Creme de Cassis", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Generic Creme de Cacao", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Dry Vermouth", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Sweet Vermouth", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Campari", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Angostura Bitters", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Orange Bitters", weight_type_id: floz.id)
Ingredient.create(ingredient_name: "Grenadine", weight_type_id: floz.id)

# list of syrups
list_of_syrups = ["Apple Syrup","Mint Syrup","Orange Syrup","Green Apple Syrup","Blue Berry Syrup","Apple Syurp","Lychee Syrup"]
list_of_syrups.each do |syrup|  
  Ingredient.create(ingredient_name: syrup, weight_type_id: floz.id)
end

# list of fruits
list_of_fruits = ["Lemon","Lime","Orange","Apple","Pear","Purple Grape","Green Grape", "Cherry", "Olive","Cranberry"]
list_of_fruits.each do |fruit|
  Ingredient.create(ingredient_name: fruit, weight_type_id: units.id)
end

Ingredient.create(ingredient_name: "Ice Rock", weight_type_id: units.id)
Ingredient.create(ingredient_name: "Ice cube", weight_type_id: units.id)
Ingredient.create(ingredient_name: "Mint", weight_type_id: units.id)
Ingredient.create(ingredient_name: "Salt", weight_type_id: grams.id)
Ingredient.create(ingredient_name: "Pepper", weight_type_id: grams.id)
Ingredient.create(ingredient_name: "Sugar", weight_type_id: grams.id)
Ingredient.create(ingredient_name: "Umbrella", weight_type_id: units.id)
Ingredient.create(ingredient_name: "Pick", weight_type_id: units.id)

