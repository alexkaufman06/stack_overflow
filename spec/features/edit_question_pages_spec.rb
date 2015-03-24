require 'rails_helper'

describe "the login and edit a question process" do
  it "logs in and edits a question" do
    @user = FactoryGirl.create(:user)
    @user.questions.create(title: "1", date: "03/23/2015", question: "What?")
    visit root_path
    click_on "Login"
    fill_in "Email", with: "1"
    fill_in "Password", with: "1"
    click_on "Log in"
    visit user_path(@user)
    click_on "Edit"
    fill_in "Title", with: "What is a program?"
    fill_in "Date", with: "03/23/1988"
    fill_in "Question", with: "What is a program and what does it do?"
    click_on "Update Question"
    expect(page).to have_content "Question Successfully Updated!"
  end
end
