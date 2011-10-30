require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Mind Blogging"
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      visit '/pages/home'
      page.should have_css("title",
                           :text => @base_title + " | Home")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      visit '/pages/about'
      page.should have_css("title",
                           :text => @base_title + " | About")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      visit '/pages/contact'
      page.should have_css("title",
                           :text => @base_title + " | Contact")
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    it "should have the right title" do
      visit '/pages/help'
      page.should have_css("title",
                           :text => @base_title + " | Help")
    end
  end
end
