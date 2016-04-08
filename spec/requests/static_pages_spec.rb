require 'spec_helper'

describe "StaticPages" do
  #describe "GET /static_pages" do  #old
  describe "Home page" do # add
    #it "works! (now write some real specs)" do #old
    it "should have the content 'Sample App'" do #add
    	visit '/static_pages/home'  #add
    	expect(page).to have_content('Sample App') #add
    end

    it "should have the title 'Home'" do #add
    	visit '/static_pages/home'  #add
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home ") #add
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path #old
      #response.status.should be(200) #old
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do #add
    	visit '/static_pages/help'  #add
    	expect(page).to have_content("Help") #add
  	end

  	it "should have the title 'Help'" do 
  		visit '/static_pages/help' 
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help ") 
  	end
  end

  describe "About page" do 
  	it "should have the content 'About'" do #add
    	visit '/static_pages/about'  #add
    	expect(page).to have_content("About") #add
  	end

  	it "should have the title 'About Us'" do 
  		visit '/static_pages/about' 
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us ") 
  	end
  end
end
