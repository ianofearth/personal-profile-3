require 'rails_helper'

describe "the add skill process" do
  it "adds a new skill" do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Log In'
    fill_in 'Username', :with => 'ian'
    fill_in 'Password', :with => '1234'
    click_on 'Sign In'
    click_on "Add a Skill"
    fill_in 'Name', :with => 'random skill'
    fill_in 'Description', :with => 'random skill'
    fill_in 'Number', :with => 1
    click_on 'Create Skill'
    expect(page).to have_content 'random skill'
  end

  it "gives error when no skill is entered" do
    visit new_skill_path
    click_on 'Create Skill'
    expect(page).to have_content 'errors'
  end

end
