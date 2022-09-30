require "application_system_test_case"

class MhollandsTest < ApplicationSystemTestCase
  setup do
    @mholland = mhollands(:one)
  end

  test "visiting the index" do
    visit mhollands_url
    assert_selector "h1", text: "Mhollands"
  end

  test "should create mholland" do
    visit mhollands_url
    click_on "New mholland"

    fill_in "Mason holland@tayloredu", with: @mholland.mason_holland@tayloredu
    click_on "Create Mholland"

    assert_text "Mholland was successfully created"
    click_on "Back"
  end

  test "should update Mholland" do
    visit mholland_url(@mholland)
    click_on "Edit this mholland", match: :first

    fill_in "Mason holland@tayloredu", with: @mholland.mason_holland@tayloredu
    click_on "Update Mholland"

    assert_text "Mholland was successfully updated"
    click_on "Back"
  end

  test "should destroy Mholland" do
    visit mholland_url(@mholland)
    click_on "Destroy this mholland", match: :first

    assert_text "Mholland was successfully destroyed"
  end
end
