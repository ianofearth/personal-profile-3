require 'rails_helper'

describe 'the delete skill process' do
  it "deletes a skill" do
    test_skill = Skill.create({:name => 'delete this skill', :description => 'random description', :number => 1})
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Log In'
    fill_in 'Username', :with => 'ian'
    fill_in 'Password', :with => '1234'
    click_on 'Sign In'
    visit user_skill_path(user, test_skill)
    click_on 'Delete'
    expect(page).to have_content 'deleted'
  end

end
