require 'spec_helper'

describe "conversion process" do
	it "should calculate correctly" do

		visit '/conversion'
		select('2', from: 'Original Number of People')
		select('1', from: 'New Number of People')
		fill_in('Ingredients', with: '500 g pasta')
		click_button('Convert')

		page.should have_content('250.00 g pasta')

	end
end