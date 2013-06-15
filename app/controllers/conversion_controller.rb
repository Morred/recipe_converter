class ConversionController < ApplicationController
	def index

	end

	def calculate
		@recipe = Recipe.new(params[:original_number], params[:new_number], params[:ingredients])
	end
end