require 'spec_helper'

describe ConversionController do

	describe "GET index" do
		it "should have index method" do
			get :index
		end	
	end

	describe "POST calculate" do
		it "should assign recipe" do
			post :calculate, :original_number => '2', 
				:new_number => '1', :ingredients => "500 g pasta"

			expect(assigns[:recipe]).to be_a(Recipe)	
		end
	end
end