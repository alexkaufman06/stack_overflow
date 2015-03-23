require 'rails_helper'

describe "the edit a question process" do
  it "edits a question" do
    FactoryGirl.create(:question)
    visit root_path
    click_on "Edit"
    fill_in "Title", with: "What is a program?"
    fill_in "Date", with: "03/23/1988"
    fill_in "Question", with: "What is a program and what does it do?"
    click_on "Update Question"
    expect(page).to have_content "Question Successfully Updated!"
  end
end
