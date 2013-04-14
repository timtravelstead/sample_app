require 'spec_helper'

describe PagesController do 
	render_views

	before(:each) do
		@base_title = "Ruby on Rails Tutorial | "
	end


	describe "get 'home'" do
		it "should be successful" do
			get 'home'
			response.should be_success
		end

		it "should have the right title" do
			get 'home'
			response.should have_selector("title", :content => @base_title + "Home")
		end
	end

	describe "get 'contact'" do
		it "should be successful" do
			get 'contact'
			response.should be_success
		end

		it "should have the right title" do
			get 'contact'
			response.should have_selector("title", :content => @base_title + "Contact")
		end
	end

	describe "get 'about'" do
		it "should be sucessful" do
			get 'about'
			response.should be_success
		end

		it "should have the right title" do
			get 'about'
			response.should have_selector("title", :content => @base_title + "About")
		end
	end

	describe "get 'help'" do
		it "should be sucessful" do
			get 'help'
			response.should be_success
		end

		it "should have the right title" do
			get 'help'
			response.should have_selector("title", :content => @base_title + "Help")
		end
	end
end