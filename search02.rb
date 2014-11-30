#search01.rb
require 'csv'
CSV.foreach('recipeCards.csv', :headers => true) do |row|
	Bob.create!(row.to_hash)
end
