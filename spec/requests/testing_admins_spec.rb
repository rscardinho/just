require 'spec_helper'

describe "TestingAdmins" do
  # it "logging in admin mode" do
  #  p current_url.inspect
  #  admin = FactoryGirl.attributes_for(:admin)
  #  visit admin_root_path
  #  fill_in "Email", :with => admin[:email]
  #  fill_in "Password", :with => admin[:password]
  #  p current_url.inspect
  #  click_button "Login"
  #  p current_url.inspect
  # end
  it "creating description in admin mode" do
    p current_url.inspect
    #visit active_admin_path
    visit admin_root_path
    p current_url.inspect
    admin = FactoryGirl.attributes_for(:admin)
    p current_url.inspect
    fill_in "admin_user_email", :with => admin[:email]
    fill_in "admin_user_password", :with => admin[:password]
    #p fill_in "admin_user_email", :with => admin[:email]
    #p fill_in "admin_user_password", :with => admin[:password]
    click_link_or_button 'Login'
    p (click_link_or_button 'Login').inspect
    p current_url.inspect
  end
  after do 
    visit description_path
    p current_url.inspect
  end
end