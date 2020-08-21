# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Cleaning database..."
Ingredient.destroy_all
Cocktail.destroy_all
puts "Creating ingredients and cocktails..."
lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")
mojito = Cocktail.create(name: "Mojito")
metro = Cocktail.create(name: "Metropolitan")
old_f = Cocktail.create(name: "Old Fashioned")
x = Dose.create(description:"Safari, Ice Tea, Vodka", cocktail_id: mojito.id, ingredient_id: mint_leaves.id)
y = Dose.create(description:"Vodka, Sprite, Redbull", cocktail_id: mojito.id, ingredient_id: lemon.id)
z = Dose.create(description:"Salt, Safari, IceTea", cocktail_id: mojito.id, ingredient_id: ice.id)
[ lemon, ice, mint_leaves ].each do |ing|
    puts "Created #{ing.name}"
end
[ mojito, metro, old_f ].each do |cock|
    puts "Created #{cock.name}"
end
[ x, y, z ].each do |dose|
    puts "Create #{dose.description}"
end
puts "Finished!"