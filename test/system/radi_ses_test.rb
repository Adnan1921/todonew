require "application_system_test_case"

class RadiSesTest < ApplicationSystemTestCase
  setup do
    @radi_se = radi_ses(:one)
  end

  test "visiting the index" do
    visit radi_ses_url
    assert_selector "h1", text: "Radi Ses"
  end

  test "creating a Radi se" do
    visit radi_ses_url
    click_on "New Radi Se"

    click_on "Create Radi se"

    assert_text "Radi se was successfully created"
    click_on "Back"
  end

  test "updating a Radi se" do
    visit radi_ses_url
    click_on "Edit", match: :first

    click_on "Update Radi se"

    assert_text "Radi se was successfully updated"
    click_on "Back"
  end

  test "destroying a Radi se" do
    visit radi_ses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Radi se was successfully destroyed"
  end
end
