require 'rails_helper'

describe 'the add project process' do
  it 'adds a new lesson' do
    test_skill = Skill.create({:name => 'random skill', :description => 'random description', :number => 1})
    visit skill_path(test_skill)
    click_on 'Add project to random skill'
    fill_in 'Name', :with => 'random project'
    fill_in 'Description', :with => 'random project'
    fill_in 'Number', :with => 1
    click_on 'Create Project'
    expect(page).to have_content 'random project'
  end

  it "gives error when fields are not filled correctly" do
    test_skill = Skill.create({:name => 'random skill', :description => 'random description', :number => 1})
    visit new_skill_project_path(test_skill)
    click_on 'Create Project'
    expect(page).to have_content 'errors'
  end
end
