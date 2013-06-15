class Recipe

	def initialize(original_number, new_number, ingredients)
		conversion_factor = new_number.to_f / original_number.to_f
		@ingredients = ingredients.split("\n").map{|x| x.gsub(/^([\d]+)/){|x| sprintf("%0.2f", x.to_i * conversion_factor)}}
	end

	def ingredients
		@ingredients
	end

end