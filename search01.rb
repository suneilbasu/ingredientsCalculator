#search01.rb
require 'csv'
food = CSV.foreach('recipeCards.csv', headers:true) do |row|	
	puts row['RecipeName']
end