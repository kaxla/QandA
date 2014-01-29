require "test_helper"

feature "showing collaborators" do
  scenario "a question is being shown" do
    # Given an existing question

    # When I go to an existing question
    visit "/"
    click_on "Sign in"
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: "password"
    click_on "show"
    click_button "Sign in"

    # Then I see collaborators
    page.text.must_include "collaborators"
    page.text.must_include users(:one).email
  end
end
