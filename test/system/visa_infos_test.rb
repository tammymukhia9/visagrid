require "application_system_test_case"

class VisaInfosTest < ApplicationSystemTestCase
  setup do
    @visa_info = visa_infos(:one)
  end

  test "visiting the index" do
    visit visa_infos_url
    assert_selector "h1", text: "Visa Infos"
  end

  test "creating a Visa info" do
    visit visa_infos_url
    click_on "New Visa Info"

    fill_in "Links", with: @visa_info.links
    fill_in "Visa info", with: @visa_info.visa_info
    click_on "Create Visa info"

    assert_text "Visa info was successfully created"
    click_on "Back"
  end

  test "updating a Visa info" do
    visit visa_infos_url
    click_on "Edit", match: :first

    fill_in "Links", with: @visa_info.links
    fill_in "Visa info", with: @visa_info.visa_info
    click_on "Update Visa info"

    assert_text "Visa info was successfully updated"
    click_on "Back"
  end

  test "destroying a Visa info" do
    visit visa_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visa info was successfully destroyed"
  end
end
