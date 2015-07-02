require 'rails_helper'

describe "the edit skill process" do
  it "edits a subject" do
    test_skill = Skill.create({:name => 'random skill', :description => 'random description', :number => 1})
    visit edit_skill_path(test_skill)
    fill_in 'Name', :with => 'nonrandom skill'
    click_on 'Update Skill'
    expect(page).to have_content 'nonrandom skill'
  end

  it "gives error when aany fields are not complete" do
    test_skill = Skill.create({:name => 'random skill', :description => 'random description', :number => 1})
    visit edit_skill_path(test_skill)
    fill_in 'Name', :with => ''
    click_on 'Update Skill'
    expect(page).to have_content 'errors'
  end

end
