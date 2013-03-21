require 'spec_helper'

describe "TestingUsers" do
  it "creating user" do
    user = FactoryGirl.create(:user)
    visit description_path
    click_link "Sign up"
    fill_in "user_email", :with => user.email
    fill_in "user_password", :with => user.password
    fill_in "user_password_confirmation", :with => user.password
    click_button "Sign up"
  end
  it "logging in with user" do
    user = FactoryGirl.create(:user)
    visit description_path
    click_link "Sign in"
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Sign in"
  end
  it "logging out with user" do
    user = FactoryGirl.create(:user)
    visit description_path
    click_link "Sign in"
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Sign in"
    click_link "Logout"
  end
end