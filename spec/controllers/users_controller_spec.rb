require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end

    it "should have the right title" do
      visit '/users/new'
      page.should have_css("title", :text => "Sign Up")
    end
  end

end
