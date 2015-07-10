require 'rails_helper'

describe "the delete post process" do
  it "deletes a post" do
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
    click_on 'Delete Post'
    expect(page).to have_content 'successfully deleted!'
  end
end
