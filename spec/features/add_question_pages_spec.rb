require 'rails_helper'

describe "the add a question process" do
  it "adds a new question", js: true do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    click_on user.email
    click_on "Add Question"
    fill_in "Title", with: "What is a program?"
    save_and_open_page
    fill_in "Date", with: "03/23/1968"
    fill_in "Question", with: "What is a program and what does it do?"
    click_on "Create Question"
    expect(page).to have_content "What is a program?"
  end

  it "errors if nothing is entered by the user" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    click_on user.email
    click_on "Add Question"
    click_on "Create Question"
    expect(page).to have_content "There was a problem"
  end
end
