require "application_system_test_case"

class WodsTest < ApplicationSystemTestCase
  setup do
    @wod = wods(:one)
  end

  test "visiting the index" do
    visit wods_url
    assert_selector "h1", text: "Wods"
  end

  test "creating a Wod" do
    visit wods_url
    click_on "New Wod"

    fill_in "Description", with: @wod.description
    fill_in "Movement 1", with: @wod.movement_1
    fill_in "Movement 2", with: @wod.movement_2
    fill_in "Movement 3", with: @wod.movement_3
    fill_in "Movement 4", with: @wod.movement_4
    fill_in "Movement 5", with: @wod.movement_5
    fill_in "Movement 6", with: @wod.movement_6
    fill_in "Movemtnt 7", with: @wod.movemtnt_7
    fill_in "Name", with: @wod.name
    fill_in "Rep", with: @wod.rep
    fill_in "Score", with: @wod.score
    fill_in "Score set", with: @wod.score_set
    click_on "Create Wod"

    assert_text "Wod was successfully created"
    click_on "Back"
  end

  test "updating a Wod" do
    visit wods_url
    click_on "Edit", match: :first

    fill_in "Description", with: @wod.description
    fill_in "Movement 1", with: @wod.movement_1
    fill_in "Movement 2", with: @wod.movement_2
    fill_in "Movement 3", with: @wod.movement_3
    fill_in "Movement 4", with: @wod.movement_4
    fill_in "Movement 5", with: @wod.movement_5
    fill_in "Movement 6", with: @wod.movement_6
    fill_in "Movemtnt 7", with: @wod.movemtnt_7
    fill_in "Name", with: @wod.name
    fill_in "Rep", with: @wod.rep
    fill_in "Score", with: @wod.score
    fill_in "Score set", with: @wod.score_set
    click_on "Update Wod"

    assert_text "Wod was successfully updated"
    click_on "Back"
  end

  test "destroying a Wod" do
    visit wods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wod was successfully destroyed"
  end
end
