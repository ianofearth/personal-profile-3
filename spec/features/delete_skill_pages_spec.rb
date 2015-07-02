require 'rails_helper'

describe 'the delete skill process' do
  it "deletes a skill" do
    test_skill = Skill.create({:name => 'delete this skill', :description => 'random description', :number => 1})
    visit skill_path(test_skill)
    click_on 'Delete'
    expect(page).to have_content 'deleted'
  end

end
