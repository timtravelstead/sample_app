require 'spec_helper'

describe PagesController do 
	render_views

	describe "get 'home'" do
		it "should be successful" do
			get 'home'
			response.should be_success
		end

		it "should have the right title" do
			get 'home'
			response.should have_selector("title", :content => " | Home")
		end
	end

	describe "get 'contact'" do
		it "should be successful" do
			get 'contact'
			response.should be_success
		end

		it "should have the right title" do
			get 'contact'
			response.should have_selector("title", :content => " | Contact")
		end
	end

	describe "get 'about'" do
		it "should be sucessful" do
			get 'about'
			response.should be_success
		end

		it "should have the right title" do
			get 'about'
			response.should have_selector("title", :content => " | About")
		end
	end
end