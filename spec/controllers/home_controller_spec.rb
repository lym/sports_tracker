require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

	describe "GET 'legal'" do
		it "should be successful" do
			get 'legal'
			response.should be_success
		end
	end

	describe "GET 'privacy'" do
		it "should be successful" do
			get 'privacy'
			response.should be_success
		end
	end

	describe "GET 'about'" do
		it "should be successful" do
			get 'about'
		end
	end

	describe "GET 'contact'" do
		it "should be successful" do
			get 'contact'
		end
	end

	describe "GET 'coming_soon'" do
		it "should be successful" do
			get 'coming_soon'
		end
	end
end
