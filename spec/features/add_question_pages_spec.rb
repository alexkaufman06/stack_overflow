require 'rails_helper'

describe "the add a question process" do
  it "adds a new question" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    visit user_path(user)
    click_on "Add Question"
    fill_in "Title", with: "What is a program?"
    fill_in "Date", with: "03/23/1988"
    fill_in "Question", with: "What is a program and what does it do?"
    click_on "Create Question"
    expect(page).to have_content "Question Successfully Added!"
  end

  it "errors if nothing is entered by the user" do
    @user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: "1"
    fill_in "Password", with: "1"
    click_on "Log in"
    visit user_path(@user)
    click_on "Add Question"
    click_on "Create Question"
    expect(page).to have_content "There was a problem"
  end
end
