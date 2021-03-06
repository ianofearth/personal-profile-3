require 'rails_helper'

describe "the user log in process" do
  it "logs in a user" do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Log In'
    fill_in 'Username', :with => 'ian'
    fill_in 'Password', :with => '1234'
    click_on 'Sign In'
    expect(page).to have_content "Welcome ian!"
  end
end
