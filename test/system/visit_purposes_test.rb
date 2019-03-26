require "application_system_test_case"

class VisitPurposesTest < ApplicationSystemTestCase
  setup do
    @visit_purpose = visit_purposes(:one)
  end

  test "visiting the index" do
    visit visit_purposes_url
    assert_selector "h1", text: "Visit Purposes"
  end

  test "creating a Visit purpose" do
    visit visit_purposes_url
    click_on "New Visit Purpose"

    fill_in "Visit info", with: @visit_purpose.visit_info
    fill_in "Visit name", with: @visit_purpose.visit_name
    click_on "Create Visit purpose"

    assert_text "Visit purpose was successfully created"
    click_on "Back"
  end

  test "updating a Visit purpose" do
    visit visit_purposes_url
    click_on "Edit", match: :first

    fill_in "Visit info", with: @visit_purpose.visit_info
    fill_in "Visit name", with: @visit_purpose.visit_name
    click_on "Update Visit purpose"

    assert_text "Visit purpose was successfully updated"
    click_on "Back"
  end

  test "destroying a Visit purpose" do
    visit visit_purposes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visit purpose was successfully destroyed"
  end
end
