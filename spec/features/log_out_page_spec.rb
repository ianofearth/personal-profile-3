require 'rails_helper'

describe "the user log out process" do
  it "logs out a user" do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Log In'
    fill_in 'Username', :with => 'ian'
    fill_in 'Password', :with => '1234'
    click_on 'Sign In'
    visit '/'
    click_on 'Log Out'
    expect(page).to have_content "You've been logged out successfully"
  end
end
