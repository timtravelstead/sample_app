require 'spec_helper'

describe PagesController do 

	describe "Get 'home'" do
		it "should be successful" do
			get 'home'
			response.should be_success
		end
	end

	describe "get 'contact'" do
		it "should be successful" do
			get 'contact'
			response.should be_success
		end
	end
end