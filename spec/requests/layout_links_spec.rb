require 'spec_helper'

describe "LayoutLinks" do
  it "should have a Home page at '/'" do
    visit '/'
    page.should have_css('title', :text => "Home")
  end

  it "should have a Contact page at '/contact'" do
    visit '/contact'
    page.should have_css('title', :text => "Contact")
  end

  it "should have an About page at '/about'" do
    visit '/about'
    page.should have_css('title', :text => "About")
  end

  it "should have a Help page at '/help'" do
    visit '/help'
    page.should have_css('title', :text => "Help")
  end

  it "should have a Sign Up page at '/signup'" do
    visit '/signup'
    page.should have_css('title', :text => "Sign Up")
  end
end
