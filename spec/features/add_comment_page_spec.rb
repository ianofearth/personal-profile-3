require 'rails_helper'

describe "the add comment process" do
  it "add a comment", js: true do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Log In'
    fill_in 'Username', :with => 'ian'
    fill_in 'Password', :with => '1234'
    click_on 'Sign In'
    click_on 'View Posts'
    click_on 'Add Post'
    fill_in 'Title', :with => 'The Meaning of Life'
    fill_in 'Body', :with => "I dunno man, it's tough."
    click_on 'Add Post'
    click_on 'The Meaning of Life'
    click_on 'Add Comment'
    fill_in 'Title', :with => "You're telling me!"
    fill_in 'Body', :with => "All the things are tough!"
    click_on 'Create Comment'
    expect(page).to have_content "You're telling me!"
  end

  describe "the add comment process" do
    it "will error if no comment is entered", js: true do
      user = FactoryGirl.create(:user)
      visit '/'
      click_on 'Log In'
      fill_in 'Username', :with => 'ian'
      fill_in 'Password', :with => '1234'
      click_on 'Sign In'
      click_on 'View Posts'
      click_on 'Add Post'
      fill_in 'Title', :with => 'The Meaning of Life'
      fill_in 'Body', :with => "I dunno man, it's tough."
      click_on 'Add Post'
      click_on 'The Meaning of Life'
      click_on 'Add Comment'
      click_on 'Create Comment'
      expect(page).to have_content "errors"
    end
  end
end
