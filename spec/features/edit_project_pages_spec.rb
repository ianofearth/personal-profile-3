require 'spec_helper'

describe 'the edit project process' do
  it 'edits a project' do
    test_skill = Skill.create({:name => 'random skill', :description => 'random description', :number => 1})
    test_project = Project.create({:name => 'random project', :description => 'random description', :number => 1})
    visit edit_skill_project_path(test_skill, test_project)
    fill_in 'Name', :with => 'edited project'
    click_on 'Update Project'
    expect(page).to have_content 'edited project'
  end

  it 'returns an error if fields are left blank' do
    test_skill = Skill.create({:name => 'random skill', :description => 'random description', :number => 1})
    test_project = Project.create({:name => 'random project', :description => 'random description', :number => 1})
    visit edit_skill_project_path(test_skill, test_project)
    fill_in 'Name', :with => ''
    click_on 'Update Project'
    expect(page).to have_content 'errors'
  end
end
