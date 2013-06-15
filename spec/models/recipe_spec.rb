require 'spec_helper'

describe Recipe do
	it "takes three arguments" do
		expect{ Recipe.new(2, 1, '500 g pasta') }.to_not raise_error
	end

	describe "#ingredients" do
		it "returns array of ingredients" do
			recipe = Recipe.new(2, 1, '500 g pasta')
			expect( recipe.ingredients ).to have(1).item
		end

		it "converts the amount" do
			recipe = Recipe.new(2, 1, '500 g pasta')
			expect( recipe.ingredients.first ).to eq('250.00 g pasta')
		end
	end
end