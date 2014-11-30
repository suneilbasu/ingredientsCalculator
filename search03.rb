#search01.rb
def food(dish,sitting)
	require 'csv'
	food = CSV.foreach('recipeCards.csv', headers:true) do |row|	
		if row['RecipeName']== dish
			puts row[2]
			menuCount= row[1].to_i
			portion=row[4].to_i
			singlePortion = portion/menuCount
			puts singlePortion * sitting 
		end
	end
end
food('Con Carne',2)