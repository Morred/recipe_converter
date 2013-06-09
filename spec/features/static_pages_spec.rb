require 'spec_helper'

describe "StaticPages" do

	describe "Home Page" do

		it "should have the h1 'Recipe Converter'" do
			visit root_path
			page.should have_selector('h1', :text => 'Recipe Converter')
		end

		it "should have the base title" do
			visit root_path
			page.should have_title("RecipeConverter")
		end

		it "should not have a custom page title" do
			visit root_path
			page.should_not have_title("| Home")
		end
	end

	describe "Help page" do
		
		it "should have the h1 'Help'" do
			visit help_path
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have the title 'Help'" do
			visit help_path
			page.should have_title("RecipeConverter | Help")
		end
	end

	describe "About page" do

		it "should have the h1 'About Us'" do
			visit about_path
			page.should have_selector('h1', :text => 'About Us')
		end

		it "should have the title 'About Us'" do
			visit about_path
			page.should have_title("RecipeConverter | About Us")
		end
	end

	describe "Contact page" do

		it "should have the h1 'Contact'" do
			visit contact_path
			page.should have_selector('h1', :text => 'Contact')
		end

		it "should have the title 'Contact'" do
			visit contact_path
			page.should have_title("RecipeConverter | Contact")
		end
	end
end
