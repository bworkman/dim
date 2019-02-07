require "application_system_test_case"

class LoadoutsTest < ApplicationSystemTestCase
  setup do
    @loadout = loadouts(:one)
  end

  test "visiting the index" do
    visit loadouts_url
    assert_selector "h1", text: "Loadouts"
  end

  test "creating a Loadout" do
    visit loadouts_url
    click_on "New Loadout"

    fill_in "Item1", with: @loadout.item1
    fill_in "Item2", with: @loadout.item2
    fill_in "Item3", with: @loadout.item3
    fill_in "Name", with: @loadout.name
    click_on "Create Loadout"

    assert_text "Loadout was successfully created"
    click_on "Back"
  end

  test "updating a Loadout" do
    visit loadouts_url
    click_on "Edit", match: :first

    fill_in "Item1", with: @loadout.item1
    fill_in "Item2", with: @loadout.item2
    fill_in "Item3", with: @loadout.item3
    fill_in "Name", with: @loadout.name
    click_on "Update Loadout"

    assert_text "Loadout was successfully updated"
    click_on "Back"
  end

  test "destroying a Loadout" do
    visit loadouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loadout was successfully destroyed"
  end
end
