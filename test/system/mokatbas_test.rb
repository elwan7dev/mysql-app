require "application_system_test_case"

class MokatbasTest < ApplicationSystemTestCase
  setup do
    @mokatba = mokatbas(:one)
  end

  test "visiting the index" do
    visit mokatbas_url
    assert_selector "h1", text: "Mokatbas"
  end

  test "creating a Mokatba" do
    visit mokatbas_url
    click_on "New Mokatba"

    fill_in "Attachedfile", with: @mokatba.attachedFile
    fill_in "Description", with: @mokatba.description
    fill_in "Title", with: @mokatba.title
    click_on "Create Mokatba"

    assert_text "Mokatba was successfully created"
    click_on "Back"
  end

  test "updating a Mokatba" do
    visit mokatbas_url
    click_on "Edit", match: :first

    fill_in "Attachedfile", with: @mokatba.attachedFile
    fill_in "Description", with: @mokatba.description
    fill_in "Title", with: @mokatba.title
    click_on "Update Mokatba"

    assert_text "Mokatba was successfully updated"
    click_on "Back"
  end

  test "destroying a Mokatba" do
    visit mokatbas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mokatba was successfully destroyed"
  end
end
