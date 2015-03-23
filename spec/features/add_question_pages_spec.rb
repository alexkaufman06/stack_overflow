require 'rails_helper'

describe "the add a question process" do
  it "adds a new question" do
    visit root_path
    click_on "Post New Question"
    fill_in "Title", with: "What is a program?"
    fill_in "Date", with: "03/23/1988"
    fill_in "Question", with: "What is a program and what does it do?"
    click_on "Create Question"
    expect(page).to have_content "Question Successfully Added!"
  end

  it "errors if nothing is entered by the user" do
    visit root_path
    click_on "Post New Question"
    fill_in "Title", with: ""
    fill_in "Date", with: ""
    fill_in "Question", with: ""
    click_on "Create Question"
    expect(page).to have_content "There was a problem"
  end
end
