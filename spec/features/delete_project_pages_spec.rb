require 'rails_helper'

describe 'the delete project process' do
  it 'deletes a project' do
    test_skill = Skill.create({:name => 'random skill', :description => 'random description', :number => 1})
    test_project = Project.create({:name => 'random project', :description => 'random description', :number => 1})
    visit skill_project_path(test_skill, test_project)
    click_on 'Delete'
    expect(page).to have_content 'deleted'
  end
end
