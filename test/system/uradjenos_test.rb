require "application_system_test_case"

class UradjenosTest < ApplicationSystemTestCase
  setup do
    @uradjeno = uradjenos(:one)
  end

  test "visiting the index" do
    visit uradjenos_url
    assert_selector "h1", text: "Uradjenos"
  end

  test "creating a Uradjeno" do
    visit uradjenos_url
    click_on "New Uradjeno"

    click_on "Create Uradjeno"

    assert_text "Uradjeno was successfully created"
    click_on "Back"
  end

  test "updating a Uradjeno" do
    visit uradjenos_url
    click_on "Edit", match: :first

    click_on "Update Uradjeno"

    assert_text "Uradjeno was successfully updated"
    click_on "Back"
  end

  test "destroying a Uradjeno" do
    visit uradjenos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Uradjeno was successfully destroyed"
  end
end
