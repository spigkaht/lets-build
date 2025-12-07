require "application_system_test_case"

class HousesTest < ApplicationSystemTestCase
  setup do
    @house = houses(:one)
  end

  test "visiting the index" do
    visit houses_url
    assert_selector "h1", text: "Houses"
  end

  test "should create house" do
    visit houses_url
    click_on "New house"

    fill_in "Area house", with: @house.area_house
    fill_in "Area total", with: @house.area_total
    fill_in "Bathrooms", with: @house.bathrooms
    fill_in "Bedrooms", with: @house.bedrooms
    fill_in "Builder", with: @house.builder
    fill_in "Length house", with: @house.length_house
    fill_in "Living areas", with: @house.living_areas
    fill_in "Min block width", with: @house.min_block_width
    fill_in "Name", with: @house.name
    fill_in "Price base", with: @house.price_base
    fill_in "Storeys", with: @house.storeys
    fill_in "Study areas", with: @house.study_areas
    fill_in "Width house", with: @house.width_house
    click_on "Create House"

    assert_text "House was successfully created"
    click_on "Back"
  end

  test "should update House" do
    visit house_url(@house)
    click_on "Edit this house", match: :first

    fill_in "Area house", with: @house.area_house
    fill_in "Area total", with: @house.area_total
    fill_in "Bathrooms", with: @house.bathrooms
    fill_in "Bedrooms", with: @house.bedrooms
    fill_in "Builder", with: @house.builder
    fill_in "Length house", with: @house.length_house
    fill_in "Living areas", with: @house.living_areas
    fill_in "Min block width", with: @house.min_block_width
    fill_in "Name", with: @house.name
    fill_in "Price base", with: @house.price_base
    fill_in "Storeys", with: @house.storeys
    fill_in "Study areas", with: @house.study_areas
    fill_in "Width house", with: @house.width_house
    click_on "Update House"

    assert_text "House was successfully updated"
    click_on "Back"
  end

  test "should destroy House" do
    visit house_url(@house)
    accept_confirm { click_on "Destroy this house", match: :first }

    assert_text "House was successfully destroyed"
  end
end
