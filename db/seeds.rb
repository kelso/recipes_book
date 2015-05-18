# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

recipe_1 = Recipe.new name: 'Pikantné rebierka'
recipe_1.ingredients.build name: 'rebierka bravčové mäsité'
recipe_1.ingredients.build name: 'list bobkový'
recipe_1.ingredients.build name: 'lekvár slivkový'
recipe_1.save

recipe_2 = Recipe.new name: 'Lasagne'
recipe_2.ingredients.build name: 'lasagne plátky'
recipe_2.ingredients.build name: 'mäso hovädzie chudé zadné'
recipe_2.ingredients.build name: 'cibuľa'
recipe_2.ingredients.build name: 'korenie nové mleté'
recipe_2.save

recipe_3 = Recipe.new name: 'Kačacie prsia s gratinovanou bryndzovou prílohou'
recipe_3.ingredients.build name: 'prsia kačacie'
recipe_3.ingredients.build name: 'korenie čierne mleté'
recipe_3.ingredients.build name: 'kapusta hlávková červená'
recipe_3.ingredients.build name: 'olej'
recipe_3.ingredients.build name: 'cibuľa'
recipe_3.save
